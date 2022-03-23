https://postgrest.org/en/v9.0/tutorials/tut1.html
https://postgrest.org/en/v9.0/api.html#http-context


https://dev.to/duffn/creating-a-date-dimension-table-in-postgresql-5gjp

DROP TABLE if exists d_date;

CREATE TABLE d_date
(
  date_dim_id              INT NOT NULL,
  date_actual              DATE NOT NULL,
  epoch                    BIGINT NOT NULL,
  day_suffix               VARCHAR(4) NOT NULL,
  day_name                 VARCHAR(9) NOT NULL,
  day_of_week              INT NOT NULL,
  day_of_month             INT NOT NULL,
  day_of_quarter           INT NOT NULL,
  day_of_year              INT NOT NULL,
  week_of_month            INT NOT NULL,
  week_of_year             INT NOT NULL,
  week_of_year_iso         CHAR(10) NOT NULL,
  month_actual             INT NOT NULL,
  month_name               VARCHAR(9) NOT NULL,
  month_name_abbreviated   CHAR(3) NOT NULL,
  quarter_actual           INT NOT NULL,
  quarter_name             VARCHAR(9) NOT NULL,
  year_actual              INT NOT NULL,
  first_day_of_week        DATE NOT NULL,
  last_day_of_week         DATE NOT NULL,
  first_day_of_month       DATE NOT NULL,
  last_day_of_month        DATE NOT NULL,
  first_day_of_quarter     DATE NOT NULL,
  last_day_of_quarter      DATE NOT NULL,
  first_day_of_year        DATE NOT NULL,
  last_day_of_year         DATE NOT NULL,
  mmyyyy                   CHAR(6) NOT NULL,
  mmddyyyy                 CHAR(10) NOT NULL,
  weekend_indr             BOOLEAN NOT NULL
);

ALTER TABLE public.d_date ADD CONSTRAINT d_date_date_dim_id_pk PRIMARY KEY (date_dim_id);

CREATE INDEX d_date_date_actual_idx
  ON d_date(date_actual);

COMMIT;

INSERT INTO d_date
SELECT TO_CHAR(datum, 'yyyymmdd')::INT AS date_dim_id,
       datum AS date_actual,
       EXTRACT(EPOCH FROM datum) AS epoch,
       TO_CHAR(datum, 'fmDDth') AS day_suffix,
       TO_CHAR(datum, 'TMDay') AS day_name,
       EXTRACT(ISODOW FROM datum) AS day_of_week,
       EXTRACT(DAY FROM datum) AS day_of_month,
       datum - DATE_TRUNC('quarter', datum)::DATE + 1 AS day_of_quarter,
       EXTRACT(DOY FROM datum) AS day_of_year,
       TO_CHAR(datum, 'W')::INT AS week_of_month,
       EXTRACT(WEEK FROM datum) AS week_of_year,
       EXTRACT(ISOYEAR FROM datum) || TO_CHAR(datum, '"-W"IW-') || EXTRACT(ISODOW FROM datum) AS week_of_year_iso,
       EXTRACT(MONTH FROM datum) AS month_actual,
       TO_CHAR(datum, 'TMMonth') AS month_name,
       TO_CHAR(datum, 'Mon') AS month_name_abbreviated,
       EXTRACT(QUARTER FROM datum) AS quarter_actual,
       CASE
           WHEN EXTRACT(QUARTER FROM datum) = 1 THEN 'First'
           WHEN EXTRACT(QUARTER FROM datum) = 2 THEN 'Second'
           WHEN EXTRACT(QUARTER FROM datum) = 3 THEN 'Third'
           WHEN EXTRACT(QUARTER FROM datum) = 4 THEN 'Fourth'
           END AS quarter_name,
       EXTRACT(YEAR FROM datum) AS year_actual,
       datum + (1 - EXTRACT(ISODOW FROM datum))::INT AS first_day_of_week,
       datum + (7 - EXTRACT(ISODOW FROM datum))::INT AS last_day_of_week,
       datum + (1 - EXTRACT(DAY FROM datum))::INT AS first_day_of_month,
       (DATE_TRUNC('MONTH', datum) + INTERVAL '1 MONTH - 1 day')::DATE AS last_day_of_month,
       DATE_TRUNC('quarter', datum)::DATE AS first_day_of_quarter,
       (DATE_TRUNC('quarter', datum) + INTERVAL '3 MONTH - 1 day')::DATE AS last_day_of_quarter,
       TO_DATE(EXTRACT(YEAR FROM datum) || '-01-01', 'YYYY-MM-DD') AS first_day_of_year,
       TO_DATE(EXTRACT(YEAR FROM datum) || '-12-31', 'YYYY-MM-DD') AS last_day_of_year,
       TO_CHAR(datum, 'mmyyyy') AS mmyyyy,
       TO_CHAR(datum, 'mmddyyyy') AS mmddyyyy,
       CASE
           WHEN EXTRACT(ISODOW FROM datum) IN (6, 7) THEN TRUE
           ELSE FALSE
           END AS weekend_indr
FROM (SELECT '1970-01-01'::DATE + SEQUENCE.DAY AS datum
      FROM GENERATE_SERIES(0, 29219) AS SEQUENCE (DAY)
      GROUP BY SEQUENCE.DAY) DQ
ORDER BY 1;

COMMIT;



CREATE EXTENSION pgcrypto; 

CREATE TYPE meta_001.jwt_token AS (
  token text
);

CREATE FUNCTION meta_001.jwt_test() RETURNS meta_001.jwt_token AS $$
  SELECT sign(
    row_to_json(r), 'reallyreallyreallyreallyverysafe'
  ) AS token
  FROM (
    SELECT
      'my_role'::text as role,
      extract(epoch from now())::integer + 300 AS exp
      
  ) r;
$$ LANGUAGE sql;




CREATE FUNCTION meta_001.ddlx_grants_to_role(oid) RETURNS text
    LANGUAGE sql STRICT
    AS $_$
with 
q as (
 select format(E'GRANT %I TO %I%s;\n',
               r1.rolname,
               r2.rolname,
               case
                 when admin_option then ' WITH ADMIN OPTION'
                 else ''
                end)
        as ddl1
   from pg_auth_members m
   join pg_roles r1 on (r1.oid=m.roleid)
   join pg_roles r2 on (r2.oid=m.member)
  where (m.member = $1 or m.roleid = $1)
  order by m.roleid = $1,
           cast(r2.rolname as text), 
           cast(r1.rolname as text)
)
select coalesce(string_agg(ddl1,'')||E'\n','')
  from q
$_$;


CREATE FUNCTION meta_001.ddlx_get_indexes(regclass DEFAULT NULL::regclass, OUT oid oid, OUT namespace text, OUT class text, OUT name text, OUT tablespace text, OUT constraint_name text) RETURNS SETOF record
    LANGUAGE sql
    AS $_$
 SELECT DISTINCT
        i.oid AS oid, 
        n.nspname::text AS namespace, 
        c.relname::text AS class, 
        i.relname::text AS name,
        NULL::text AS tablespace, 
        cc.conname::text AS constraint_name
   FROM pg_index x
   JOIN pg_class c ON c.oid = x.indrelid
   JOIN pg_namespace n ON n.oid = c.relnamespace
   JOIN pg_class i ON i.oid = x.indexrelid
   JOIN pg_depend d ON d.objid = x.indexrelid
   LEFT JOIN pg_constraint cc ON cc.oid = d.refobjid
  WHERE c.relkind in ('r','m','p') AND i.relkind in ('i','I')
    AND ($1 IS NULL OR c.oid = $1)
$_$;

CREATE FUNCTION meta_001.ddlx_get_indexes(regclass DEFAULT NULL::regclass, OUT oid oid, OUT namespace text, OUT class text, OUT name text, OUT tablespace text, OUT constraint_name text) RETURNS SETOF record
    LANGUAGE sql
    AS $_$
 SELECT DISTINCT
        i.oid AS oid, 
        n.nspname::text AS namespace, 
        c.relname::text AS class, 
        i.relname::text AS name,
        NULL::text AS tablespace, 
        cc.conname::text AS constraint_name
   FROM pg_index x
   JOIN pg_class c ON c.oid = x.indrelid
   JOIN pg_namespace n ON n.oid = c.relnamespace
   JOIN pg_class i ON i.oid = x.indexrelid
   JOIN pg_depend d ON d.objid = x.indexrelid
   LEFT JOIN pg_constraint cc ON cc.oid = d.refobjid
  WHERE c.relkind in ('r','m','p') AND i.relkind in ('i','I')
    AND ($1 IS NULL OR c.oid = $1)
$_$;

CREATE FUNCTION meta_001.ddlx_get_constraints(regclass DEFAULT NULL::regclass, OUT namespace name, OUT class_name name, OUT constraint_name name, OUT constraint_type text, OUT constraint_definition text, OUT is_deferrable boolean, OUT initially_deferred boolean, OUT regclass oid, OUT sysid oid) RETURNS SETOF record
    LANGUAGE sql
    AS $_$
 SELECT nc.nspname AS namespace, 
        r.relname AS class_name, 
        c.conname AS constraint_name, 
        case c.contype
            when 'c'::"char" then 'CHECK'::text
            when 'f'::"char" then 'FOREIGN KEY'::text
            when 'p'::"char" then 'PRIMARY KEY'::text
            when 'u'::"char" then 'UNIQUE'::text
            when 't'::"char" then 'TRIGGER'::text
            when 'x'::"char" then 'EXCLUDE'::text
            else c.contype::text
        end,
        pg_get_constraintdef(c.oid,true) AS constraint_definition,
        c.condeferrable AS is_deferrable, 
        c.condeferred  AS initially_deferred, 
        r.oid as regclass, c.oid AS sysid
   FROM pg_constraint c
   JOIN pg_class r ON c.conrelid = r.oid
   JOIN pg_namespace nc ON nc.oid = c.connamespace
   JOIN pg_namespace nr ON nr.oid = r.relnamespace
  WHERE $1 IS NULL OR r.oid=$1
$_$;


 CREATE FUNCTION meta_001.ddlx_create_function(regproc) RETURNS text
     LANGUAGE sql STRICT
     AS $_$ 
  with obj as (select * from meta_001.ddlx_identify($1))
  select
   meta_001.ddlx_banner(sql_identifier,obj.sql_kind,namespace,owner) ||
   case obj.sql_kind
     when 'AGGREGATE' then meta_001.ddlx_create_aggregate($1)
     else trim(trailing E'\n' from pg_get_functiondef($1)) || E';\n'
    end || E'\n' 
     || meta_001.ddlx_comment($1) || E'\n'
    from obj
 $_$;


ALTER FUNCTION meta_001.ddlx_create_function(regproc) OWNER TO "armando";

--
-- Name: ddlx_create_index(regclass); Type: FUNCTION; Schema: meta_001; Owner: IHSLaMltbFn1
--

 CREATE FUNCTION meta_001.ddlx_create_index(regclass) RETURNS text
     LANGUAGE sql STRICT
     AS 
 $_$
  with ii as (
  SELECT CASE d.refclassid
             WHEN 'pg_constraint'::regclass 
             THEN 'ALTER TABLE ' || text(c.oid::regclass) 
                  || ' ADD CONSTRAINT ' || quote_ident(cc.conname) 
                  || ' ' || pg_get_constraintdef(cc.oid)
             ELSE pg_get_indexdef(i.oid)
         END
         AS indexdef 
    FROM pg_index x
    JOIN pg_class c ON c.oid = x.indrelid
    JOIN pg_class i ON i.oid = x.indexrelid
    JOIN pg_depend d ON d.objid = x.indexrelid
    LEFT JOIN pg_constraint cc ON cc.oid = d.refobjid
   WHERE i.oid = $1
     -- AND c.relkind in ('r','m','p') AND i.relkind = 'i'::"char"  
 )
  SELECT indexdef || E';\n'
    FROM ii 
 $_$;
 
CREATE FUNCTION meta_001.ddlx_create_sequence(regclass) RETURNS text
    LANGUAGE sql STRICT
    AS $_$
 with obj as (select * from meta_001.ddlx_identify($1)),
 seq as (
  select sc.oid::regclass,d.refobjid::regclass,a.attname
   from pg_class sc
   left join pg_depend d on d.objid = sc.oid and d.deptype = 'a'
   left join pg_attribute a ON a.attrelid = d.refobjid AND a.attnum = d.refobjsubid
   where relkind='S' and sc.oid = $1
 )
 select 
 'CREATE SEQUENCE '||(obj.oid::regclass::text) || E';\n'
 || meta_001.ddlx_alter_sequence($1)
   from obj;
$_$;


CREATE FUNCTION meta_001.ddlx_create_table(regclass) RETURNS text
    LANGUAGE sql STRICT
    AS $_$
  with obj as (select * from meta_001.ddlx_identify($1))
  select   
    array_to_string(array[
    'CREATE '||
  case relpersistence
    when 'u' then 'UNLOGGED '
    when 't' then 'TEMPORARY '
    else ''
  end
  || obj.sql_kind || ' ' || obj.sql_identifier
  || case when reloftype>0 then ' OF '||cast(reloftype::regtype as text) else '' end
  || case obj.sql_kind when 'TYPE' then ' AS' else '' end 
  ||
--#if 10
--  case
--  when c.relispartition
--  then ' PARTITION OF ' || (SELECT string_agg(i.inhparent::regclass::text,',')
--                             FROM pg_inherits i WHERE i.inhrelid = $1) 
--
--  else
--#end
    case when reloftype>0
    then ''
    else
    ' (' ||coalesce(E'\n' ||
      (SELECT string_agg('    '||definition,E',\n')
         FROM meta_001.ddlx_describe($1) WHERE is_local)||E'\n','') || ')'
    end
--#if 10
--  end
--#end
--#if 10
--  ,
--  case when c.relpartbound is not null
--       then pg_get_expr(c.relpartbound,c.oid,true)
--  end
--#end
  ,
--#if 10
--  case
--  when not c.relispartition
--  then (SELECT 'INHERITS(' || string_agg(i.inhparent::regclass::text,', ') || E')'
--          FROM pg_inherits i WHERE i.inhrelid = $1)
--  end
--#else
  (SELECT 'INHERITS(' || string_agg(i.inhparent::regclass::text,', ') || E')'
     FROM pg_inherits i WHERE i.inhrelid = $1) 
--#end
--#if 10
--  ,
--  CASE 
--  WHEN p.partstrat IS NOT NULL
--  THEN 'PARTITION BY ' || pg_get_partkeydef($1)
--  END
--#end
--------??#unless 12
--------??  ,
--------??  CASE relhasoids WHEN true THEN 'WITH OIDS' END
--------??#end
  ,
    E'SERVER '||quote_ident(fs.srvname)||E' OPTIONS (\n'||
    (select string_agg(
              '    '||quote_ident(option_name)||' '||quote_nullable(option_value), 
              E',\n')
       from pg_options_to_table(ft.ftoptions))||E'\n)'
    

  ],E'\n  ')
  ||
  E';\n'
 FROM pg_class c JOIN obj ON (true)
 LEFT JOIN pg_foreign_table  ft ON (c.oid = ft.ftrelid)
 LEFT JOIN pg_foreign_server fs ON (ft.ftserver = fs.oid)
--#if 10
-- LEFT JOIN pg_partitioned_table p ON p.partrelid = c.oid
--#end
 WHERE c.oid = $1
-- AND relkind in ('r','c')
$_$;



CREATE FUNCTION meta_001.ddlx_create_view(regclass) RETURNS text
    LANGUAGE sql STRICT
    AS $_$
 select 
 'CREATE '||
  case relkind 
    when 'v' THEN 'OR REPLACE VIEW ' 
    when 'm' THEN 'MATERIALIZED VIEW '
  end || (oid::regclass::text) || E' AS\n' ||
  trim(';' from pg_catalog.pg_get_viewdef(oid,true)) ||
--#if 9.3
--  case when relkind='m' and not relispopulated
--       then E'\n  WITH NO DATA'
--       else E''
--  end ||
--#end
  E';\n'
 FROM pg_class t
 WHERE oid = $1
   AND relkind in ('v','m')
$_$;

CREATE FUNCTION meta_001.ddlx_describe(regclass, OUT ord smallint, OUT name name, OUT type text, OUT size integer, OUT not_null boolean, OUT "default" text, OUT ident text, OUT gen text, OUT comment text, OUT primary_key name, OUT is_local boolean, OUT storage text, OUT "collation" text, OUT namespace name, OUT class_name name, OUT sql_identifier text, OUT relid oid, OUT options text[], OUT definition text, OUT sequence regclass) RETURNS SETOF record
    LANGUAGE sql STRICT
    AS $_$
SELECT  a.attnum AS ord,
        a.attname AS name, 
        format_type(t.oid, NULL::integer) AS type,
        CASE
            WHEN (a.atttypmod - 4) > 0 THEN a.atttypmod - 4
            ELSE NULL::integer
        END AS size,
        a.attnotnull AS not_null,
        pg_get_expr(def.adbin,def.adrelid) AS "default",
--#if 10
--	nullif(a.attidentity::text,''),
--#else
	null::text,
--#end
--#if 12
--	nullif(a.attgenerated::text,''),
--#else
	null::text,
--#end
        col_description(c.oid, a.attnum::integer) AS comment,
        con.conname AS primary_key,
        a.attislocal AS is_local,
        case when a.attstorage<>t.typstorage
             then case a.attstorage
	          when 'p' then 'plain'::text
	          when 'e' then 'external'::text
	          when 'm' then 'main'::text
	          when 'x' then 'extended'::text
                  else a.attstorage::text
		  end
        end as storage,
        nullif(col.collcollate::text,'') AS collation,
        s.nspname AS namespace,
        c.relname AS class_name,
        format('%s.%I',text(c.oid::regclass),a.attname) AS sql_identifier,
        c.oid as relid,
--#if 9.2
--        attoptions||attfdwoptions as options,
--#else
        attoptions as options,
--#end
	format('%I %s%s%s%s%s%s',
         a.attname::text,
	 format_type(t.oid, a.atttypmod),
--#if 9.2
--         case
--           when a.attfdwoptions is not null
--           then (
--             select ' OPTIONS ( '||string_agg(
--                quote_ident(option_name)||' '||quote_nullable(option_value), 
--                ', ')||' ) '
--               from pg_options_to_table(a.attfdwoptions))
--         end,
--#else
         null::text,
--#end
         CASE
           WHEN length(col.collcollate) > 0
           THEN ' COLLATE ' || quote_ident(col.collcollate::text)
         END
	 ,
--#if 10	
--	 case when a.attnotnull and attidentity not in ('a','d') then ' NOT NULL' end
--#else
	 case when a.attnotnull THEN ' NOT NULL' end
--#end
	 ,
--#if 10
--	case when attidentity in ('a','d')
--	     then format(' GENERATED %s AS IDENTITY',
--	       case attidentity
--	       when 'a' then 'ALWAYS'
--	       when 'd' then 'BY DEFAULT'
--	       end)
--	     end
--#else
	 null::text
--#end
	,
--#if 12
--	case when a.attgenerated = 's'
--	     then format(' GENERATED ALWAYS AS %s STORED', 
--	     	         pg_get_expr(def.adbin,def.adrelid))
--	end
--#else
         null::text
--#end
	 )
        AS definition,
        pg_get_serial_sequence(c.oid::regclass::text,a.attname)::regclass as sequence	
   FROM pg_class c
   JOIN pg_namespace s ON s.oid = c.relnamespace
   JOIN pg_attribute a ON c.oid = a.attrelid
   LEFT JOIN pg_attrdef def ON c.oid = def.adrelid AND a.attnum = def.adnum
   LEFT JOIN pg_constraint con
        ON con.conrelid = c.oid AND (a.attnum = ANY (con.conkey)) AND con.contype = 'p'
   LEFT JOIN pg_type t ON t.oid = a.atttypid
   LEFT JOIN pg_collation col ON col.oid = a.attcollation
   JOIN pg_namespace tn ON tn.oid = t.typnamespace
   LEFT JOIN pg_depend d ON def.oid = d.objid AND d.deptype='n'
   LEFT JOIN pg_class seq ON seq.oid = d.refobjid AND seq.relkind='S'
  WHERE c.relkind IN ('r','v','c','f','p') AND a.attnum > 0 AND NOT a.attisdropped
    AND has_table_privilege(c.oid, 'select') AND has_schema_privilege(s.oid, 'usage')
    AND c.oid = $1
  ORDER BY s.nspname, c.relname, a.attnum;
$_$;


--- SET statement_timeout = 0;
--- SET lock_timeout = 0;
--- SET idle_in_transaction_session_timeout = 0;
--- SET client_encoding = 'UTF8';
--- SET standard_conforming_strings = on;
--- SELECT pg_catalog.set_config('search_path', '', false);
--- SET check_function_bodies = false;
--- SET xmloption = content;
--- SET client_min_messages = warning;
--- SET row_security = off;

--
-- Name: meta_001; Type: SCHEMA; Schema: -; Owner: IHSLaMltbFn1
--

CREATE SCHEMA meta_001;

ALTER SCHEMA meta_001 OWNER TO "armando";

--
-- Name: aaa_tabledef(oid); Type: FUNCTION; Schema: meta_001; Owner: IHSLaMltbFn1
--

CREATE FUNCTION meta_001.aaa_tabledef(oid) RETURNS text
    LANGUAGE sql STRICT
    AS $_$
/* snatched from https://github.com/filiprem/pg-tools */
WITH attrdef AS (
    SELECT
        n.nspname,
        c.relname,
        pg_catalog.array_to_string(c.reloptions || array(select 'toast.' || x from pg_catalog.unnest(tc.reloptions) x), ', ') as relopts,
        c.relpersistence,
        a.attnum,
        a.attname,
        pg_catalog.format_type(a.atttypid, a.atttypmod) as atttype,
        (SELECT substring(pg_catalog.pg_get_expr(d.adbin, d.adrelid, true) for 128) FROM pg_catalog.pg_attrdef d
            WHERE d.adrelid = a.attrelid AND d.adnum = a.attnum AND a.atthasdef) as attdefault,
        a.attnotnull,
        (SELECT c.collname FROM pg_catalog.pg_collation c, pg_catalog.pg_type t
            WHERE c.oid = a.attcollation AND t.oid = a.atttypid AND a.attcollation <> t.typcollation) as attcollation,
        a.attidentity,
        null attgenerated
    FROM pg_catalog.pg_attribute a
    JOIN pg_catalog.pg_class c ON a.attrelid = c.oid
    JOIN pg_catalog.pg_namespace n ON c.relnamespace = n.oid
    LEFT JOIN pg_catalog.pg_class tc ON (c.reltoastrelid = tc.oid)
    WHERE a.attrelid = $1
        AND a.attnum > 0
        AND NOT a.attisdropped
    ORDER BY a.attnum
),
coldef AS (
    SELECT
        attrdef.nspname,
        attrdef.relname,
        attrdef.relopts,
        attrdef.relpersistence,
        pg_catalog.format(
            '%I %s%s%s%s%s',
            attrdef.attname,
            attrdef.atttype,
            case when attrdef.attcollation is null then '' else pg_catalog.format(' COLLATE %I', attrdef.attcollation) end,
            case when attrdef.attnotnull then ' NOT NULL' else '' end,
            case when attrdef.attdefault is null then ''
                else case when attrdef.attgenerated = 's' then pg_catalog.format(' GENERATED ALWAYS AS (%s) STORED', attrdef.attdefault)
                    when attrdef.attgenerated <> '' then ' GENERATED AS NOT_IMPLEMENTED'
                    else pg_catalog.format(' DEFAULT %s', attrdef.attdefault)
                end
            end,
            case when attrdef.attidentity<>'' then pg_catalog.format(' GENERATED %s AS IDENTITY',
                    case attrdef.attidentity when 'd' then 'BY DEFAULT' when 'a' then 'ALWAYS' else 'NOT_IMPLEMENTED' end)
                else '' end
        ) as col_create_sql
    FROM attrdef
    ORDER BY attrdef.attnum
),
tabdef AS (
    SELECT
        coldef.nspname,
        coldef.relname,
        coldef.relopts,
        coldef.relpersistence,
        string_agg(coldef.col_create_sql, E',\n    ') as cols_create_sql
    FROM coldef
    GROUP BY
        coldef.nspname, coldef.relname, coldef.relopts, coldef.relpersistence
)
SELECT
    format(
        'CREATE%s TABLE %I.%I%s%s%s;',
        case tabdef.relpersistence when 't' then ' TEMP' when 'u' then ' UNLOGGED' else '' end,
        tabdef.nspname,
        tabdef.relname,
        coalesce(
            (SELECT format(E'\n    PARTITION OF %I.%I %s\n', pn.nspname, pc.relname,
                pg_get_expr(c.relpartbound, c.oid))
                FROM pg_class c JOIN pg_inherits i ON c.oid = i.inhrelid
                JOIN pg_class pc ON pc.oid = i.inhparent
                JOIN pg_namespace pn ON pn.oid = pc.relnamespace
                WHERE c.oid = $1),
            format(E' (\n    %s\n)', tabdef.cols_create_sql)
        ),
        case when tabdef.relopts <> '' then format(' WITH (%s)', tabdef.relopts) else '' end,
        coalesce(E'\nPARTITION BY '||pg_get_partkeydef($1), '')
    ) as table_create_sql 
FROM tabdef
$_$;


ALTER FUNCTION meta_001.aaa_tabledef(oid) OWNER TO "armando";

--
-- Name: apply_sql_changes(); Type: FUNCTION; Schema: meta_001; Owner: IHSLaMltbFn1
--

 CREATE FUNCTION meta_001.apply_sql_changes() RETURNS void
     LANGUAGE plpgsql
     AS $$
 DECLARE
     v_state   TEXT;
     v_msg     TEXT;
     v_detail  TEXT;
     v_hint    TEXT;
     v_context TEXT;
     v_seq     int4;
    grants_run record;
    timesthru  int4;
   begin
 update meta_001.winteam_roles_granted set sqltext = replace(sqltext, 'information_schema.information_schema.', 'information_schema.' ) where position (  'information_schema.information_schema.' in sqltext ) > 0; 
 update meta_001.winteam_roles_granted set sqltext = replace(sqltext,         'pg_catalog.pg_catalog.'        , 'pg_catalog.'         ) where position (          'pg_catalog.pg_catalog.'         in sqltext ) > 0; 
 update meta_001.winteam_roles_granted set sqltext = replace(sqltext,           'meta_001.meta_001.'          , 'meta_001.'           ) where position (            'meta_001.meta_001.'           in sqltext ) > 0;
 update meta_001.winteam_roles_granted set sqltext = replace(sqltext,             'public.public.'            , 'public.'             ) where position (              'public.public.'             in sqltext ) > 0;
 update meta_001.winteam_roles_granted set sqltext = replace(sqltext,           'wfma_001.miso.'              , 'miso.'               ) where position (                'miso.miso.'               in sqltext ) > 0;
 update meta_001.winteam_roles_granted set allow_grant = 'N', grant_successful = '~' where position ('information_schema.information_schema.'    in sqltext ) > 0 and allow_grant <> 'N';
    FOR grants_run IN  
       SELECT replace(sqltext,';',' ') sqltext , id  FROM   meta_001.winteam_roles_granted where allow_grant = 'Y' and grant_successful in ('N','?') limit 10000000
    LOOP
       begin
         EXECUTE grants_run.sqltext;
         update  meta_001.winteam_roles_granted set grant_successful = 'Y', grant_built_on = now() , exec_order = nextval('meta_001.winteam_roles_granted_exec_order_seq')
            where id = grants_run.id;
       exception
          when others then 
         get stacked diagnostics
         v_state   = returned_sqlstate,
         v_msg     = message_text,
         v_detail  = pg_exception_detail,
         v_hint    = pg_exception_hint,
         v_context = pg_exception_context;
 
     raise notice E'Got exception: id : % sqlrun : % state  : % message: % detail : % hint   : %  
                  context: %',grants_run.id, grants_run.sqltext, v_state, v_msg, v_detail, v_hint, v_context;
          v_seq =    nextval('meta_001.winteam_roles_granted_exec_order_seq'); 
 
          update  meta_001.winteam_roles_granted 
          set error_msg = v_msg::text||v_context::text
            where id = grants_run.id;
              
          update  meta_001.winteam_roles_granted 
          set grant_successful = '?', 
              grant_built_on = now() , 
              exec_order = nextval('meta_001.winteam_roles_granted_exec_order_seq') , 
              error_msg = v_msg::text||v_context::text
            where id = grants_run.id;
         end;   
    END LOOP;
 END
 $$;


ALTER FUNCTION meta_001.apply_sql_changes() OWNER TO "armando";

--
-- Name: clone_schema(text, text); Type: FUNCTION; Schema: meta_001; Owner: IHSLaMltbFn1
--

 CREATE FUNCTION meta_001.clone_schema(source_schema text, dest_schema text) RETURNS void
     LANGUAGE plpgsql
     AS 
 $$
  DECLARE
  objeto text;
  buffer text; 
 finaltext text;
 BEGIN 
 	--EXECUTE '--CREATE SCHEMA ' || dest_schema ; 
     finaltext  := '-------- starting clone_schema for source=>'||source_schema||'-- for dest=>'||dest_schema;
    
 FOR objeto in SELECT table_name::text FROM information_schema.tables WHERE table_schema = source_schema  
 LOOP 
 
  buffer := dest_schema || '.' || objeto;
 
  finaltext  := finaltext ||chr(10)||'----------------------- starting ---------'||buffer;
  
 -- execute                        '--CREATE TABLE ' || buffer || ' (LIKE ' || source_schema || '.' || objeto || ' INCLUDING CONSTRAINTS INCLUDING INDEXES INCLUDING DEFAULTS)';
  finaltext  := finaltext ||chr(10)||'CREATE TABLE ' || buffer || ' (LIKE ' || source_schema || '.' || objeto || ' INCLUDING CONSTRAINTS INCLUDING INDEXES INCLUDING DEFAULTS)'; 
 
 -- EXECUTE                        '--INSERT INTO ' || buffer || '(SELECT * FROM ' || source_schema || '.' || objeto || ')'; 
  finaltext  := finaltext ||chr(10)||'INSERT INTO ' || buffer || '(SELECT * FROM ' || source_schema || '.' || objeto || ')'; 
 
 END LOOP;
 END;
 $$;

--

ALTER FUNCTION meta_001.clone_schema(source_schema text, dest_schema text) OWNER TO "armando";

--
-- Name: clone_schema1(text, text); Type: FUNCTION; Schema: meta_001; Owner: IHSLaMltbFn1
--

 CREATE FUNCTION meta_001.clone_schema1(source_schema text, dest_schema text) RETURNS text
     LANGUAGE plpgsql
     AS $$
  DECLARE
  objeto   text;
  buffer   text; 
 finaltext text;
 BEGIN 
 	--EXECUTE '--CREATE SCHEMA ' || dest_schema ; 
     finaltext  := '-------- starting clone_schema for source=>'||source_schema::text||'-- for dest=>'||dest_schema::text;
    
 FOR objeto in SELECT table_name::text FROM information_schema.tables WHERE table_schema = source_schema  
 LOOP 
 
  buffer := dest_schema || '.' || objeto;
 
  finaltext  := finaltext ||chr(10)||'----------------------- starting ---------'||buffer;
  
 -- execute                        '--CREATE TABLE ' || buffer || ' (LIKE ' || source_schema || '.' || objeto || ' INCLUDING CONSTRAINTS INCLUDING INDEXES INCLUDING DEFAULTS)';
  finaltext  := finaltext ||chr(10)||'CREATE TABLE ' || buffer || ' (LIKE ' || source_schema || '.' || objeto || ' INCLUDING CONSTRAINTS INCLUDING INDEXES INCLUDING DEFAULTS)'; 
 
 -- EXECUTE                        '--INSERT INTO ' || buffer || '(SELECT * FROM ' || source_schema || '.' || objeto || ')'; 
  finaltext  := finaltext ||chr(10)||'INSERT INTO ' || buffer || '(SELECT * FROM ' || source_schema || '.' || objeto || ')'; 
 
 END LOOP; 
 return finaltext;
 END; 
 $$;


ALTER FUNCTION meta_001.clone_schema1(source_schema text, dest_schema text) OWNER TO "armando";

--
-- Name: ddlx_alter_owner(oid); Type: FUNCTION; Schema: meta_001; Owner: IHSLaMltbFn1
--


CREATE FUNCTION meta_001.ddlx_identify(oid, OUT oid oid, OUT classid regclass, OUT name name, OUT namespace name, OUT owner name, OUT sql_kind text, OUT sql_identifier text, OUT acl aclitem[]) RETURNS record
    LANGUAGE sql STRICT
    AS $_$
  WITH 
  rel_kind(k,v) AS (
         VALUES ('r','TABLE'),
                ('p','TABLE'),
                ('v','VIEW'),
                ('i','INDEX'),
                ('I','INDEX'),
                ('S','SEQUENCE'),
                ('s','SPECIAL'),
                ('m','MATERIALIZED VIEW'),
                ('c','TYPE'),
                ('t','TOAST'),
                ('f','FOREIGN TABLE')
  ),
  typ_type(k,v,v2) AS (
         VALUES ('b','BASE','TYPE'),
                ('c','COMPOSITE','TYPE'),
                ('d','DOMAIN','DOMAIN'),
                ('e','ENUM','TYPE'),
                ('p','PSEUDO','TYPE'),
                ('r','RANGE','TYPE')
  )
  SELECT coalesce(t.oid,c.oid),
         case when t.oid is not null then 'pg_type'::regclass
	 else 'pg_class'::regclass end,
	 c.relname AS name, n.nspname AS namespace,
         pg_get_userbyid(c.relowner) AS owner,
         coalesce(cc.v,c.relkind::text) AS sql_kind,
         cast($1::regclass AS text) AS sql_identifier,
         relacl as acl
    FROM pg_class c JOIN pg_namespace n ON n.oid=c.relnamespace
    LEFT JOIN pg_type t ON t.typrelid=c.oid AND t.typtype='c' AND c.relkind='c'
    LEFT JOIN rel_kind AS cc on cc.k = c.relkind
   WHERE c.oid = $1
   UNION 
  SELECT p.oid,'pg_proc'::regclass,
         p.proname AS name, n.nspname AS namespace, pg_get_userbyid(p.proowner) AS owner,
--#if 11
         case p.prokind
           when 'f' then 'FUNCTION'
           when 'a' then 'AGGREGATE'
           when 'p' then 'PROCEDURE'
           when 'w' then 'WINDOW FUNCTION'
         end 
--#else
--         case
--           when p.proisagg then 'AGGREGATE'
--           else 'FUNCTION' 
--         end 
--#end
         AS sql_kind,
         cast($1::regprocedure AS text) AS sql_identifier,
         proacl as acl
    FROM pg_proc p JOIN pg_namespace n ON n.oid=p.pronamespace
   WHERE p.oid = $1
   UNION 
  SELECT coalesce(c.oid,t.oid),
         case when c.oid is not null then 'pg_class'::regclass
	 else 'pg_type'::regclass end,
         t.typname AS name, n.nspname AS namespace, pg_get_userbyid(t.typowner) AS owner,
         coalesce(cc.v,tt.v2,t.typtype::text) AS sql_kind,
         format_type($1,null) AS sql_identifier,
--#if 9.2
--         typacl as acl
--#else
         null as acl
--#end
    FROM pg_type t JOIN pg_namespace n ON n.oid=t.typnamespace
    LEFT JOIN typ_type AS tt ON tt.k = t.typtype 
    LEFT JOIN pg_class AS c ON c.oid = t.typrelid AND t.typtype='c' AND c.relkind<>'c'
    LEFT JOIN rel_kind AS cc ON cc.k = c.relkind
   WHERE t.oid = $1
   UNION
  SELECT r.oid,'pg_roles'::regclass,
         r.rolname as name, null as namespace, null as owner,
         'ROLE' as sql_kind,
         quote_ident(r.rolname) as sql_identifier,
         null as acl
    FROM pg_roles r
   WHERE r.oid = $1
   UNION
  SELECT r.oid,'pg_rewrite'::regclass,
         r.rulename as name, null as namespace, null as owner,
         'RULE' as sql_kind,
         quote_ident(r.rulename)||' ON '|| 
           cast(c.oid::regclass as text) sql_identifier,
         null as acl
    FROM pg_rewrite r JOIN pg_class c on (c.oid = r.ev_class)
   WHERE r.oid = $1
   UNION
  SELECT n.oid,'pg_namespace'::regclass,
         n.nspname as name, current_database() as namespace, pg_get_userbyid(n.nspowner) AS owner,
         'SCHEMA' as sql_kind,
         quote_ident(n.nspname) as sql_identifier,
         nspacl as acl
    FROM pg_namespace n join pg_roles r on r.oid = n.nspowner
   WHERE n.oid = $1
   UNION
  SELECT con.oid,'pg_constraint'::regclass,
         con.conname as name,
         c.relname as namespace, null as owner, 'CONSTRAINT' as sql_kind,
         quote_ident(con.conname)
         ||coalesce(' ON '||cast(c.oid::regclass as text),'') as sql_identifier,
         null as acl
    FROM pg_constraint con 
    left JOIN pg_class c ON (con.conrelid=c.oid)
    LEFT join (
         values ('f','FOREIGN KEY'),
                ('c','CHECK'),
                ('x','EXCLUDE'),
                ('u','UNIQUE'),
                ('p','PRIMARY KEY'),
                ('t','TRIGGER')
         ) as tt on tt.column1 = con.contype
   WHERE con.oid = $1
   UNION
  SELECT t.oid,'pg_trigger'::regclass,
         t.tgname as name, c.relname as namespace, null as owner,
         'TRIGGER' as sql_kind,
         format('%I ON %s',t.tgname,cast(c.oid::regclass as text)) as sql_identifier,
         null as acl
    FROM pg_trigger t join pg_class c on (t.tgrelid=c.oid)
   WHERE t.oid = $1
   UNION
  SELECT ad.oid,'pg_attrdef'::regclass,
         a.attname as name, c.relname as namespace, null as owner,
         'DEFAULT' as sql_kind,
         format('%s.%I',cast(c.oid::regclass as text),a.attname) as sql_identifier,
         null as acl
    FROM pg_attrdef ad 
    JOIN pg_class c ON (ad.adrelid=c.oid)
    JOIN pg_attribute a ON (c.oid = a.attrelid and a.attnum=ad.adnum)
   WHERE ad.oid = $1
   UNION
  SELECT op.oid,'pg_operator'::regclass,
         op.oprname as name, n.nspname as namespace, pg_get_userbyid(op.oprowner) as owner,
         'OPERATOR' as sql_kind,
         cast(op.oid::regoperator as text) as sql_identifier,
         null as acl
    FROM pg_operator op JOIN pg_namespace n ON n.oid=op.oprnamespace
   WHERE op.oid = $1
   UNION
  SELECT cfg.oid,'pg_ts_config'::regclass,
         cfg.cfgname as name, n.nspname as namespace, pg_get_userbyid(cfg.cfgowner) as owner,
         'TEXT SEARCH CONFIGURATION' as sql_kind,
         cast(cfg.oid::regconfig as text) as sql_identifier,
         null as acl
    FROM pg_ts_config cfg JOIN pg_namespace n ON n.oid=cfg.cfgnamespace
   WHERE cfg.oid = $1
   UNION
  SELECT dict.oid,'pg_ts_dict'::regclass,
         dict.dictname as name, n.nspname as namespace, pg_get_userbyid(dict.dictowner) as owner,
         'TEXT SEARCH DICTIONARY' as sql_kind,
         cast(dict.oid::regdictionary as text) as sql_identifier,
         null as acl
    FROM pg_ts_dict dict JOIN pg_namespace n ON n.oid=dict.dictnamespace
   WHERE dict.oid = $1
   UNION
  SELECT prs.oid,'pg_ts_parser'::regclass,
         prs.prsname as name, n.nspname as namespace, null as owner,
         'TEXT SEARCH PARSER' as sql_kind,
         format('%s%I',
           quote_ident(nullif(n.nspname,current_schema()))||'.',prs.prsname) 
           as sql_identifier,
         null as acl
    FROM pg_ts_parser prs JOIN pg_namespace n ON n.oid=prs.prsnamespace
   WHERE prs.oid = $1
   UNION
  SELECT tmpl.oid,'pg_ts_template'::regclass,
         tmpl.tmplname as name, n.nspname as namespace, null as owner,
         'TEXT SEARCH TEMPLATE' as sql_kind,
         format('%s%I',
           quote_ident(nullif(n.nspname,current_schema()))||'.',tmpl.tmplname) 
           as sql_identifier,
         null as acl
    FROM pg_ts_template tmpl JOIN pg_namespace n ON n.oid=tmpl.tmplnamespace
   WHERE tmpl.oid = $1
--#if 9.3
--   UNION
--  SELECT evt.oid,'pg_event_trigger'::regclass,
--         evt.evtname as name, null as namespace, pg_get_userbyid(evt.evtowner) as owner,
--         'EVENT TRIGGER' as sql_kind,
--         quote_ident(evt.evtname) as sql_identifier,
--         null as acl
--    FROM pg_event_trigger evt
--   WHERE evt.oid = $1
--#end
   UNION
  SELECT fdw.oid,'pg_foreign_data_wrapper'::regclass,
         fdw.fdwname as name, null as namespace, pg_get_userbyid(fdw.fdwowner) as owner,
         'FOREIGN DATA WRAPPER' as sql_kind,
         quote_ident(fdw.fdwname) as sql_identifier,
         fdwacl as acl
    FROM pg_foreign_data_wrapper fdw
   WHERE fdw.oid = $1
   UNION
  SELECT srv.oid,'pg_foreign_server'::regclass,
         srv.srvname as name, null as namespace, pg_get_userbyid(srv.srvowner) as owner,
         'SERVER' as sql_kind,
         quote_ident(srv.srvname) as sql_identifier,
         srvacl as acl
    FROM pg_foreign_server srv
   WHERE srv.oid = $1
   UNION
  SELECT ums.umid,'pg_user_mapping'::regclass,
         null as name, null as namespace, null as owner, 'USER MAPPING' as sql_kind,
         'FOR '||quote_ident(ums.usename)||
         ' SERVER '||quote_ident(ums.srvname) as sql_identifier,
         null as acl
    FROM pg_user_mappings ums
   WHERE ums.umid = $1
   UNION
  SELECT ca.oid,'pg_cast'::regclass,
         null as name, null as namespace, null as owner,
         'CAST' as sql_kind,
         format('(%s AS %s)',
           format_type(ca.castsource,null),format_type(ca.casttarget,null))
           as sql_identifier,
         null as acl
    FROM pg_cast ca
   WHERE ca.oid = $1
   UNION
  SELECT co.oid,'pg_collation'::regclass,
         co.collname as name, n.nspname as namespace, pg_get_userbyid(co.collowner) as owner,
         'COLLATION' as sql_kind,
         format('%s%I',
           quote_ident(nullif(n.nspname,current_schema()))||'.',co.collname) 
           as sql_identifier,
         null as acl
    FROM pg_collation co JOIN pg_namespace n ON n.oid=co.collnamespace
   WHERE co.oid = $1
   UNION
  SELECT co.oid,'pg_conversion'::regclass,
         co.conname as name, n.nspname as namespace, pg_get_userbyid(co.conowner) as owner,
         'CONVERSION' as sql_kind,
         format('%s%I',
           quote_ident(nullif(n.nspname,current_schema()))||'.',co.conname) 
           as sql_identifier,
         null as acl
    FROM pg_conversion co JOIN pg_namespace n ON n.oid=co.connamespace
   WHERE co.oid = $1
   UNION
  SELECT lan.oid,'pg_language'::regclass,
         lan.lanname as name, null as namespace, pg_get_userbyid(lan.lanowner) as owner,
         'LANGUAGE' as sql_kind,
         quote_ident(lan.lanname) as sql_identifier,
         lan.lanacl as acl
    FROM pg_language lan
   WHERE lan.oid = $1
--#if 9.5
--   UNION
--  SELECT pol.oid,'pg_policy'::regclass,
--         pol.polname as name, null as namespace, null as owner,
--         'POLICY' as sql_kind,
--         format('%I ON %s',
--                  polname,
--                  cast(c.oid::regclass as text)) 
--         as sql_identifier,
--         null as acl
--    FROM pg_policy pol JOIN pg_class c on (c.oid=pol.polrelid)
--   WHERE pol.oid = $1
--   UNION
--  SELECT trf.oid,'pg_transform'::regclass,
--         null as name, null as namespace, null as owner,
--         'TRANSFORM' as sql_kind,
--         format('FOR %s LANGUAGE %I',
--                  format_type(trf.trftype,null),
--                  l.lanname) as sql_identifier,
--         null as acl
--    FROM pg_transform trf JOIN pg_language l on (l.oid=trf.trflang)
--   WHERE trf.oid = $1
--   UNION
--  SELECT am.oid,'pg_am'::regclass,
--         am.amname as name, NULL as namespace, NULL as owner,
--         'ACCESS METHOD' as sql_kind,
--         quote_ident(amname) as sql_identifier,
--         null as acl
--    FROM pg_am am
--   WHERE am.oid = $1
--#end
   UNION
  SELECT opf.oid,'pg_opfamily'::regclass,
         opf.opfname as name, n.nspname as namespace, pg_get_userbyid(opf.opfowner) as owner,
         'OPERATOR FAMILY' as sql_kind,
         format('%s%I USING %I',
           quote_ident(nullif(n.nspname,current_schema()))||'.',
           opf.opfname,
           am.amname) 
           as sql_identifier,
         null as acl
    FROM pg_opfamily opf JOIN pg_namespace n ON n.oid=opf.opfnamespace
    JOIN pg_am am on (am.oid=opf.opfmethod)
   WHERE opf.oid = $1
   UNION
  SELECT dat.oid,'pg_database'::regclass,
         dat.datname as name, null as namespace, pg_get_userbyid(dat.datdba) as owner,
         'DATABASE' as sql_kind,
         quote_ident(dat.datname) as sql_identifier,
         dat.datacl as acl
    FROM pg_database dat
   WHERE dat.oid = $1
   UNION
  SELECT spc.oid,'pg_tablespace'::regclass,
         spc.spcname as name, null as namespace, pg_get_userbyid(spc.spcowner) as owner,
         'TABLESPACE' as sql_kind,
         quote_ident(spc.spcname) as sql_identifier,
         spc.spcacl as acl
    FROM pg_tablespace spc
   WHERE spc.oid = $1
   UNION
  SELECT opc.oid,'pg_opclass'::regclass,
         opcname as name, n.nspname as namespace, pg_get_userbyid(opc.opcowner) as owner,
         'OPERATOR CLASS' as sql_kind,
         format('%s%I USING %I',
           quote_ident(nullif(n.nspname,current_schema()))||'.',
           opc.opcname,
           am.amname) 
           as sql_identifier,
         null as acl
    FROM pg_opclass opc JOIN pg_namespace n ON n.oid=opc.opcnamespace
    JOIN pg_am am ON am.oid=opc.opcmethod
   WHERE opc.oid = $1
--#if 9.3
--   UNION
--  SELECT amproc.oid,'pg_amproc'::regclass,
--         'FUNCTION '||amprocnum, null as namespace, null as owner,
--         'AMPROC' as sql_kind,
--         format('FUNCTION %s (%s)',
--	        amprocnum,
--	        array_to_string(array[amproclefttype,amprocrighttype]::regtype[],','))
--         as sql_identifier,
--         null as acl
--    FROM pg_amproc amproc
--   WHERE amproc.oid = $1
--   UNION
--  SELECT amop.oid,'pg_amop'::regclass,
--         'OPERATOR '||amopstrategy, null as namespace, null as owner,
--         'AMOP' as sql_kind,
--         format('OPERATOR %s (%s)',
--	        amopstrategy,
--	        array_to_string(array[amoplefttype,amoprighttype]::regtype[],','))
--         as sql_identifier,
--         null as acl
--    FROM pg_amop amop
--   WHERE amop.oid = $1
--#end
--#if 10
--   UNION
--  SELECT stx.oid,'pg_statistic_ext'::regclass,
--         stx.stxname, n.nspname as namespace, pg_get_userbyid(stx.stxowner) as owner,
--         'STATISTICS' as sql_kind,
--         format('%s%I',quote_ident(nullif(n.nspname,current_schema()))||'.',stx.stxname) 
--         as sql_identifier,
--         null as acl
--    FROM pg_statistic_ext stx join pg_namespace n on (n.oid=stxnamespace)
--   WHERE stx.oid = $1
--   UNION
--  SELECT pub.oid,'pg_publication'::regclass,
--         pub.pubname, NULL as namespace, pg_get_userbyid(pub.pubowner) as owner,
--         'PUBLICATION' as sql_kind,
--         quote_ident(pub.pubname) as sql_identifier,
--         null as acl
--    FROM pg_publication pub
--   WHERE pub.oid = $1
--   UNION
--  SELECT sub.oid,'pg_subscription'::regclass,
--         sub.subname, NULL as namespace, pg_get_userbyid(sub.subowner) as owner,
--         'SUBSCRIPTION' as sql_kind,
--         quote_ident(sub.subname) as sql_identifier,
--         null as acl
--    FROM pg_subscription sub
--   WHERE sub.oid = $1
--#end
$_$;



 CREATE FUNCTION meta_001.ddlx_alter_owner(oid) RETURNS text
     LANGUAGE sql STRICT
     AS $_$
  with obj as (select * from meta_001.ddlx_identify($1))
  select
    case
      when obj.sql_kind = 'INDEX' then ''
      else 'ALTER '||sql_kind||' '||sql_identifier||
           ' OWNER TO '||quote_ident(owner)||E';\n'
    end
   from obj 
 $_$;


ALTER FUNCTION meta_001.ddlx_alter_owner(oid) OWNER TO "armando";

--
-- Name: ddlx_alter_role_auth(oid); Type: FUNCTION; Schema: meta_001; Owner: IHSLaMltbFn1
--

CREATE FUNCTION meta_001.ddlx_alter_role_auth(oid) RETURNS text
    LANGUAGE sql STRICT
    AS $_$ 
 select case when rolpassword is not null
	     then 'ALTER ROLE '|| quote_ident(rolname)||
                  ' ENCRYPTED PASSWORD '||quote_literal(rolpassword)
	end
   from pg_authid where oid = $1
$_$;


ALTER FUNCTION meta_001.ddlx_alter_role_auth(oid) OWNER TO "armando";

--
-- Name: ddlx_alter_sequence(regclass); Type: FUNCTION; Schema: meta_001; Owner: IHSLaMltbFn1
--

 CREATE FUNCTION meta_001.ddlx_alter_sequence(regclass) RETURNS text
     LANGUAGE sql STRICT
     AS $_$
  with obj as (select * from meta_001.ddlx_identify($1))
  select 
     'ALTER SEQUENCE '||(oid::regclass::text) 
  ||E'\n INCREMENT BY '||increment
  ||E'\n MINVALUE '||minimum_value
  ||E'\n MAXVALUE '||maximum_value
  ||E'\n START WITH '||start_value
  ||E'\n '|| case cycle_option when 'YES' then 'CYCLE' else 'NO CYCLE' end
  ||E';\n'
  FROM information_schema.sequences s JOIN obj ON (true)
  WHERE sequence_schema = obj.namespace
    AND sequence_name = obj.name
    AND obj.sql_kind = 'SEQUENCE'
 $_$;


ALTER FUNCTION meta_001.ddlx_alter_sequence(regclass) OWNER TO "armando";

--
-- Name: ddlx_alter_table_defaults(regclass); Type: FUNCTION; Schema: meta_001; Owner: IHSLaMltbFn1
--

 CREATE FUNCTION meta_001.ddlx_alter_table_defaults(regclass) RETURNS text
     LANGUAGE sql STRICT
     AS $_$ 
 with 
 def as ( 
  select 
     coalesce(
       string_agg(
         format('ALTER TABLE %s ALTER %I SET DEFAULT %s;',
                 text($1),name,"default"), 
         E'\n') || E'\n\n', 
     '') as ddl
    from meta_001.ddlx_describe($1)
   where "default" is not null
     and "sequence" is null and gen is null 
 ), 
 seq as (
  select 
     coalesce(
       string_agg(
         format('ALTER SEQUENCE %s OWNED BY %s;',
                 "sequence",sql_identifier), 
         E'\n') || E'\n\n', 
     '') as ddl
    from meta_001.ddlx_describe($1)
   where "sequence" is not null and ident is null 
 ) 
 select def.ddl || seq.ddl
   from def,seq 
 $_$;
 

ALTER FUNCTION meta_001.ddlx_alter_table_defaults(regclass) OWNER TO "armando";

--
-- Name: ddlx_alter_table_storage(regclass); Type: FUNCTION; Schema: meta_001; Owner: IHSLaMltbFn1
--

 CREATE FUNCTION meta_001.ddlx_alter_table_storage(regclass) RETURNS text
      LANGUAGE sql STRICT
      AS $_$
  with 
  obj as (select * from meta_001.ddlx_identify($1)),
  d as (select * from meta_001.ddlx_describe($1)),
  cs as (
    select 
      coalesce(
        string_agg(format(E'ALTER %s %s ALTER %I SET STORAGE %s;',
        			obj.sql_kind,obj.sql_identifier,d.name,
  			storage), E'\n') || E'\n\n', 
      '') as ddl
     from d, obj
    where storage is not null
  ),
  ob as (
   select coalesce(string_agg(a.ddl, E'\n') || E'\n\n', '')
          as ddl
   from (
   select
   (select format(E'ALTER %s %s ALTER %I SET ( %s = %s );',
        		 obj.sql_kind,obj.sql_identifier,att.attname,
  	         option_name, quote_nullable(option_value))
     from pg_options_to_table(att.attoptions)) as ddl
     from pg_attribute att, obj
    where attnum>0 and att.attrelid=$1 and attoptions is not null and not attisdropped
    order by attnum
   ) as a
  ),
  os as (
   select coalesce(string_agg(a2.ddl, E'\n') || E'\n\n', '')
          as ddl
   from (
   select format(E'ALTER %s %s ALTER %I SET STATISTICS %s;',
        		 obj.sql_kind,obj.sql_identifier,att.attname,
  	         attstattarget) as ddl
     from pg_attribute att, obj
    where attnum>0 and att.attrelid=$1 and attstattarget>=0 and not attisdropped
    order by attnum
   ) as a2
  ),
  ts as (
    select case when s.oid is not null then
           format(E'ALTER %s %s SET TABLESPACE %I;\n\n',
                  obj.sql_kind, obj.sql_identifier, s.spcname) 
           else '' end as ddl
      from obj, pg_class c 
      left join pg_tablespace s on (s.oid=c.reltablespace)
     where c.oid = $1
  )
  select cs.ddl || ob.ddl || os.ddl || ts.ddl
    from cs,ob,os,ts
 $_$;


ALTER FUNCTION meta_001.ddlx_alter_table_storage(regclass) OWNER TO "armando";

--
-- Name: ddlx_banner(text, text, text, text, text); Type: FUNCTION; Schema: meta_001; Owner: IHSLaMltbFn1
--

CREATE FUNCTION meta_001.ddlx_banner(name text, kind text, namespace text, owner text, extra text DEFAULT NULL::text) RETURNS text
    LANGUAGE sql
    AS $_$
  SELECT format(E'%s-- Type: %s ; Name: %s; Owner: %s\n\n',
                E'--\n-- ' || $5 || E'\n',
                $2,$1,$4)
$_$;


ALTER FUNCTION meta_001.ddlx_banner(name text, kind text, namespace text, owner text, extra text) OWNER TO "armando";

--
-- Name: ddlx_comment(oid); Type: FUNCTION; Schema: meta_001; Owner: IHSLaMltbFn1
--

 CREATE FUNCTION meta_001.ddlx_comment(oid) RETURNS text
     LANGUAGE sql STRICT
     AS $_$
  with obj as (select * from meta_001.ddlx_identify($1))
  select format(
           E'COMMENT ON %s %s IS %L;\n',
           obj.sql_kind, sql_identifier, 
           case 
             when obj.classid='pg_database'::regclass
             then shobj_description(oid,classid::name)
             when obj.classid='pg_tablespace'::regclass
             then shobj_description(oid,classid::name)
             else obj_description(oid)
           end)
    from obj
 $_$;


ALTER FUNCTION meta_001.ddlx_comment(oid) OWNER TO "armando";

--
-- Name: ddlx_create(oid, text[]); Type: FUNCTION; Schema: meta_001; Owner: IHSLaMltbFn1
--

CREATE FUNCTION meta_001.ddlx_create(oid, text[] DEFAULT '{}'::text[]) RETURNS text
    LANGUAGE sql
    AS $$ select null::text $$;


ALTER FUNCTION meta_001.ddlx_create(oid, text[]) OWNER TO "armando";

--
-- Name: ddlx_create_aggregate(regproc); Type: FUNCTION; Schema: meta_001; Owner: IHSLaMltbFn1
--

 CREATE FUNCTION meta_001.ddlx_create_aggregate(regproc) RETURNS text
      LANGUAGE sql STRICT
      AS 
 $_$ 
    with obj as (select * from meta_001.ddlx_identify($1))
  select 'CREATE AGGREGATE ' || obj.sql_identifier || ' (' || E'\n  ' || 
          array_to_string(array[
            'SFUNC = '  || cast(a.aggtransfn::regproc as text),
            'STYPE = ' || format_type(a.aggtranstype,null),
  --#if 9.4
  --          case when a.aggtransspace>0 then 'SSPACE = '||a.aggtransspace end,
  --#end
            'FINALFUNC = ' || cast(nullif(a.aggfinalfn,0)::regproc as text), 
  --#if 9.4
  --          case when a.aggfinalextra then 'FINALFUNC_EXTRA' end,
  --#if 9.6
  --          'COMBINEFUNC = ' || cast(nullif(a.aggcombinefn,0)::regproc as text), 
  --          'SERIALFUNC = ' || cast(nullif(a.aggserialfn,0)::regproc as text), 
  --          'DESERIALFUNC = ' || cast(nullif(a.aggdeserialfn,0)::regproc as text), 
  --#end
            'INITCOND = ' || quote_literal(a.agginitval), 
  --#if 9.5
  --          'MSFUNC = ' || cast(nullif(a.aggmtransfn,0)::regproc as text), 
  --          'MINVFUNC = ' || cast(nullif(a.aggminvtransfn,0)::regproc as text), 
  --#if 9.6
  --          case when a.aggmtranstype>0 
  --               then 'MSTYPE = '||format_type(a.aggmtranstype,null) end,
  --#if 9.4
  --          case when a.aggmtransspace>0 then 'MSSPACE = '||a.aggmtransspace end,
  --          'MFINALFUNC = ' || cast(nullif(a.aggmfinalfn,0)::regproc as text),
  --          case when a.aggmfinalextra then 'MFINALFUNC_EXTRA' end,
  --          'MINITCOND = ' || quote_literal(a.aggminitval), 
  --#if 9.6
  --          'PARALLEL = ' || case p.proparallel
  --            when 's' then 'SAFE'
  --            when 'r' then 'RESTRICTED'
  --            when 'u' then null -- 'UNSAFE', default
  --            else quote_literal(p.proparallel)
  --          end,
  --#if 9.4
  --          case a.aggkind
  --            when 'h' then 'HYPOTHETICAL'
  --          end,
  --#end
            case when a.aggsortop>0 
                 then 'SORTOP = '||cast(a.aggsortop::regoperator as text) end
            ],E',\n  ')
         || E'\n);\n'
    from pg_aggregate a join obj on (true) join pg_proc p on p.oid = a.aggfnoid
   where a.aggfnoid = $1 
 $_$;


ALTER FUNCTION meta_001.ddlx_create_aggregate(regproc) OWNER TO "armando";

--
-- Name: ddlx_create_class(regclass); Type: FUNCTION; Schema: meta_001; Owner: IHSLaMltbFn1
--




 CREATE FUNCTION meta_001.ddlx_create_class(regclass) RETURNS text
     LANGUAGE sql STRICT
     AS $_$
  with obj as (select * from meta_001.ddlx_identify($1)),
  comments as (
    select 'COMMENT ON COLUMN ' || text($1) || '.' || quote_ident(name) ||
           ' IS ' || quote_nullable(comment) || ';' as cc
      from meta_001.ddlx_describe($1) 
     where comment IS NOT NULL 
  ),
  settings as (
    select 'ALTER ' || obj.sql_kind || ' ' || text($1) || ' SET (' || 
           quote_ident(option_name)||'='||quote_nullable(option_value) ||');' as ss
      from pg_options_to_table((select reloptions from pg_class where oid = $1))
      join obj on (true)
  )
  select meta_001.ddlx_banner(obj.name,obj.sql_kind,obj.namespace,obj.owner) 
   ||
  case 
   when obj.sql_kind in ('VIEW','MATERIALIZED VIEW') then meta_001.ddlx_create_view($1)  
   when obj.sql_kind in ('TABLE','TYPE','FOREIGN TABLE') then meta_001.ddlx_create_table($1)
   when obj.sql_kind in ('SEQUENCE') then meta_001.ddlx_create_sequence($1)
   when obj.sql_kind in ('INDEX') then meta_001.ddlx_create_index($1)
   else '-- UNSUPPORTED CLASS: '||obj.sql_kind
  end 
   || E'\n' ||
   case when obj.sql_kind not in ('TYPE') then meta_001.ddlx_comment($1) else '' end
   ||
   case when obj.sql_kind = ('TABLE') then meta_001.ddlx_alter_owner($1) else '' end
   ||
   coalesce((select string_agg(cc,E'\n')||E'\n' from comments),'')
   ||
   coalesce(E'\n'||(select string_agg(ss,E'\n')||E'\n' from settings),'') 
   || E'\n'
     from obj  
 $_$;
 

ALTER FUNCTION meta_001.ddlx_create_class(regclass) OWNER TO "armando";

--
-- Name: ddlx_create_constraint(oid); Type: FUNCTION; Schema: meta_001; Owner: IHSLaMltbFn1
--

CREATE FUNCTION meta_001.ddlx_create_constraint(oid) RETURNS text
    LANGUAGE sql STRICT
    AS $_$
 select format(
   E'ALTER %s %s ADD CONSTRAINT %I\n  %s;\n',
   case
     when t.oid is not null then 'DOMAIN'
     else 'TABLE'
   end,
   coalesce(cast(t.oid::regtype as text),
            cast(r.oid::regclass as text)),
   c.conname, 
   pg_get_constraintdef(c.oid,true)) 
   from pg_constraint c 
   left join pg_class r on (c.conrelid = r.oid)
   left join pg_type t on (c.contypid = t.oid)
  where c.oid = $1 
$_$;


ALTER FUNCTION meta_001.ddlx_create_constraint(oid) OWNER TO "armando";

--
-- Name: ddlx_create_constraints(regclass); Type: FUNCTION; Schema: meta_001; Owner: IHSLaMltbFn1
--


 CREATE FUNCTION meta_001.ddlx_create_constraints(regclass) RETURNS text
     LANGUAGE sql STRICT
     AS $_$
  with cs as (
   select
    'ALTER TABLE ' || text(regclass(regclass)) ||  
    ' ADD CONSTRAINT ' || quote_ident(constraint_name) || 
    E'\n  ' || constraint_definition as sql
     from meta_001.ddlx_get_constraints($1)
    order by constraint_type desc, sysid
  )
  select coalesce(string_agg(sql,E';\n') || E';\n\n','')
    from cs
 $_$;


ALTER FUNCTION meta_001.ddlx_create_constraints(regclass) OWNER TO "armando";

--
-- Name: ddlx_create_default(oid); Type: FUNCTION; Schema: meta_001; Owner: IHSLaMltbFn1
--

CREATE FUNCTION meta_001.ddlx_create_default(oid) RETURNS text
    LANGUAGE sql STRICT
    AS $_$
  select format(E'ALTER TABLE %s ALTER %I SET DEFAULT %s;\n',
            cast(c.oid::regclass as text),
            a.attname, 
            pg_get_expr(def.adbin,def.adrelid))
    from pg_attrdef def 
    join pg_class c on c.oid = def.adrelid
    join pg_attribute a on c.oid = a.attrelid and a.attnum = def.adnum and not a.attisdropped
   where def.oid = $1
$_$;


ALTER FUNCTION meta_001.ddlx_create_default(oid) OWNER TO "armando";

--
-- Name: ddlx_create_foreign_data_wrapper(oid); Type: FUNCTION; Schema: meta_001; Owner: IHSLaMltbFn1
--

 CREATE FUNCTION meta_001.ddlx_create_foreign_data_wrapper(oid) RETURNS text
     LANGUAGE sql STRICT
     AS $_$ 
  with obj as (select * from pg_foreign_data_wrapper where oid = $1)
  select
     'CREATE FOREIGN DATA WRAPPER ' || quote_ident(obj.fdwname) || E'\n' ||
     case 
     when obj.fdwhandler is not null
     then '  HANDLER ' || cast(obj.fdwhandler as regproc)
     else '  NO HANDLER'
     end || E'\n' ||
     case 
     when obj.fdwvalidator is not null
     then '  VALIDATOR ' || cast(obj.fdwvalidator as regproc)
     else '  NO VALIDATOR'
     end ||
     coalesce(E'\nOPTIONS (\n'||
       (select string_agg(
               '    '||quote_ident(option_name)||' '||quote_nullable(option_value), 
               E',\n')
          from pg_options_to_table(obj.fdwoptions))||E'\n)'
     ,'') || E';\n' 
     || meta_001.ddlx_comment($1)
     || meta_001.ddlx_alter_owner($1) 
     || meta_001.ddlx_grants($1) 
    from obj;
 $_$;
 

ALTER FUNCTION meta_001.ddlx_create_foreign_data_wrapper(oid) OWNER TO "armando";

--
-- Name: ddlx_create_function(regproc); Type: FUNCTION; Schema: meta_001; Owner: IHSLaMltbFn1
--

 CREATE FUNCTION meta_001.ddlx_create_function(regproc) RETURNS text
     LANGUAGE sql STRICT
     AS $_$ 
  with obj as (select * from meta_001.ddlx_identify($1))
  select
   meta_001.ddlx_banner(sql_identifier,obj.sql_kind,namespace,owner) ||
   case obj.sql_kind
     when 'AGGREGATE' then meta_001.ddlx_create_aggregate($1)
     else trim(trailing E'\n' from pg_get_functiondef($1)) || E';\n'
    end || E'\n' 
     || meta_001.ddlx_comment($1) || E'\n'
    from obj
 $_$;


ALTER FUNCTION meta_001.ddlx_create_function(regproc) OWNER TO "armando";

--
-- Name: ddlx_create_index(regclass); Type: FUNCTION; Schema: meta_001; Owner: IHSLaMltbFn1
--



 CREATE FUNCTION meta_001.ddlx_create_index(regclass) RETURNS text
     LANGUAGE sql STRICT
     AS 
 $_$
  with ii as (
  SELECT CASE d.refclassid
             WHEN 'pg_constraint'::regclass 
             THEN 'ALTER TABLE ' || text(c.oid::regclass) 
                  || ' ADD CONSTRAINT ' || quote_ident(cc.conname) 
                  || ' ' || pg_get_constraintdef(cc.oid)
             ELSE pg_get_indexdef(i.oid)
         END
         AS indexdef 
    FROM pg_index x
    JOIN pg_class c ON c.oid = x.indrelid
    JOIN pg_class i ON i.oid = x.indexrelid
    JOIN pg_depend d ON d.objid = x.indexrelid
    LEFT JOIN pg_constraint cc ON cc.oid = d.refobjid
   WHERE i.oid = $1
     -- AND c.relkind in ('r','m','p') AND i.relkind = 'i'::"char"  
 )
  SELECT indexdef || E';\n'
    FROM ii 
 $_$;
 

ALTER FUNCTION meta_001.ddlx_create_index(regclass) OWNER TO "armando";

--
-- Name: ddlx_create_indexes(regclass); Type: FUNCTION; Schema: meta_001; Owner: IHSLaMltbFn1
--


 CREATE FUNCTION meta_001.ddlx_create_indexes(regclass) RETURNS text
     LANGUAGE sql STRICT
     AS $_$
  with
  ii as (select * from meta_001.ddlx_get_indexes($1) order by name),
  a as (
   select coalesce(string_agg(meta_001.ddlx_create_index(oid),'') || E'\n' , E'') as ddl_idx
     from ii where constraint_name is null
  ),
  c as (
   select coalesce(string_agg(format(E'CLUSTER %s USING %I;\n\n',
                                     indrelid::regclass::text,
 				    (select relname from pg_class c2 where c2.oid=i.indexrelid)),
 		  ''),'')
          as ddl_cluster
     from pg_index i
    where i.indrelid = $1 and indisclustered
  )
 --#if 10
 -- ,
 -- b as (
 --  select coalesce(string_agg(ddlx_create(oid),'' order by oid)||E'\n', '') as ddl_stx
 --    from pg_statistic_ext where stxrelid = $1
 -- )
 --select ddl_idx || ddl_cluster || ddl_stx from a,b,c
 --#else
 select ddl_idx || ddl_cluster from a,c
 --#end
 $_$;
 

ALTER FUNCTION meta_001.ddlx_create_indexes(regclass) OWNER TO "armando";

--
-- Name: ddlx_create_role(oid); Type: FUNCTION; Schema: meta_001; Owner: IHSLaMltbFn1
--



CREATE FUNCTION meta_001.ddlx_create_role(oid) RETURNS text
    LANGUAGE sql STRICT
    SET "DateStyle" TO 'iso'
    AS $_$ 
with 
q1 as (
 select format(E'CREATE %s %I;\n',
                case when rolcanlogin then 'USER' else 'GROUP' end,
                rolname) ||
        format(E'ALTER ROLE %I WITH\n  %s;\n\n',rolname,
                array_to_string(array[
   case when rolcanlogin then 'LOGIN' else 'NOLOGIN' end,
   case when rolsuper then 'SUPERUSER' else 'NOSUPERUSER' end,
   case when rolinherit then 'INHERIT' else 'NOINHERIT' end,
   case when rolcreatedb then 'CREATEDB' else 'NOCREATEDB' end,
   case when rolcreaterole then 'CREATEROLE' else 'NOCREATEROLE' end, 
--#if 9.5
--   case when rolbypassrls then 'BYPASSRLS' end,
--#end
   case when rolreplication then 'REPLICATION' else 'NOREPLICATION' end
                ],E'\n  ')) ||
   		array_to_string(array[
   case 
     when description is not null 
     then 'COMMENT ON ROLE '||quote_ident(rolname)||
          ' IS '||quote_literal(description)||E';\n'
   end,
   case when has_table_privilege('pg_catalog.pg_authid'::regclass, 'select')
        then meta_001.ddlx_alter_role_auth(a.oid)||E';\n'
   end,
   case when rolvaliduntil is not null 
        then 'ALTER ROLE '|| quote_ident(rolname)||
             ' VALID UNTIL '||quote_nullable(rolvaliduntil)||E';\n'
   end,
   case when rolconnlimit>=0  
        then 'ALTER ROLE '|| quote_ident(rolname)||
             ' CONNECTION LIMIT '||rolconnlimit||E';\n'
   end
                ],'') ||
   E'\n'
   as ddl
   from pg_roles a
   left join pg_shdescription d on d.objoid=a.oid
  where a.oid = $1
 ),
q2 as (
 select string_agg('ALTER ROLE ' || quote_ident(rolname)
                   ||' SET '||pg_roles.rolconfig[i]||E';\n','')
    as ddl_config
  from pg_roles,
  generate_series(
     (select array_lower(rolconfig,1) from pg_roles where oid=$1),
     (select array_upper(rolconfig,1) from pg_roles where oid=$1)
  ) as generate_series(i)
 where oid = $1
 ) 
select ddl||coalesce(ddl_config||E'\n','')||
--#if 9.5
--   meta_001.ddlx_grants($1::regrole)
--#else
   meta_001.ddlx_grants_to_role($1)
--#end
  from q1,q2; 
$_$;


ALTER FUNCTION meta_001.ddlx_create_role(oid) OWNER TO "armando";

--
-- Name: ddlx_create_rule(oid); Type: FUNCTION; Schema: meta_001; Owner: IHSLaMltbFn1
--

CREATE FUNCTION meta_001.ddlx_create_rule(oid) RETURNS text
    LANGUAGE sql STRICT
    AS $_$
  select case
         when ev_type='1' and r.rulename='_RETURN'
         then meta_001.ddlx_create_class(c.oid)
         else pg_get_ruledef(r.oid)
         end
    from pg_rewrite r join pg_class c on (c.oid=r.ev_class)
   where r.oid = $1
$_$;


ALTER FUNCTION meta_001.ddlx_create_rule(oid) OWNER TO "armando";

--
-- Name: ddlx_create_rules(regclass); Type: FUNCTION; Schema: meta_001; Owner: IHSLaMltbFn1
--



CREATE FUNCTION meta_001.ddlx_create_rules(regclass) RETURNS text
    LANGUAGE sql STRICT
    AS $_$
  select coalesce(string_agg(rule_definition,E'\n')||E'\n\n','')
    from meta_001.ddlx_get_rules()
   where regclass = $1
     and rule_definition is not null
$_$;


ALTER FUNCTION meta_001.ddlx_create_rules(regclass) OWNER TO "armando";

--
-- Name: ddlx_create_sequence(regclass); Type: FUNCTION; Schema: meta_001; Owner: IHSLaMltbFn1
--



ALTER FUNCTION meta_001.ddlx_create_sequence(regclass) OWNER TO "armando";

--
-- Name: ddlx_create_server(oid); Type: FUNCTION; Schema: meta_001; Owner: IHSLaMltbFn1
--

CREATE FUNCTION meta_001.ddlx_create_server(oid) RETURNS text
    LANGUAGE sql STRICT
    AS $_$ 
 with obj as (select * from pg_foreign_server where oid = $1)
 select
    'CREATE SERVER ' || quote_ident(obj.srvname) ||
    coalesce(E'\nTYPE ' || quote_literal(obj.srvtype),'') ||
    coalesce(E'\nVERSION ' || quote_literal(obj.srvversion),'') ||
    E' FOREIGN DATA WRAPPER ' || 
      (select quote_ident(fdwname)
         from pg_foreign_data_wrapper
        where oid = obj.srvfdw) ||
    coalesce(E'\nOPTIONS (\n'||
      (select string_agg(
              '    '||quote_ident(option_name)||' '||quote_nullable(option_value), 
              E',\n')
         from pg_options_to_table(obj.srvoptions))||E'\n)'
    ,'') || E';\n' 
    || meta_001.ddlx_comment($1)
    || meta_001.ddlx_alter_owner($1) 
    || meta_001.ddlx_grants($1) 
   from obj;
$_$;


ALTER FUNCTION meta_001.ddlx_create_server(oid) OWNER TO "armando";

--
-- Name: ddlx_create_table(regclass); Type: FUNCTION; Schema: meta_001; Owner: IHSLaMltbFn1
--


ALTER FUNCTION meta_001.ddlx_create_table(regclass) OWNER TO "armando";

--
-- Name: ddlx_create_trigger(oid); Type: FUNCTION; Schema: meta_001; Owner: IHSLaMltbFn1
--

CREATE FUNCTION meta_001.ddlx_create_trigger(oid) RETURNS text
    LANGUAGE sql STRICT
    AS $_$
 select pg_get_triggerdef($1,true)||
        case when t.tgenabled = 'D' 
             then format(E';\nALTER TABLE %s DISABLE TRIGGER %I',
                         cast(t.tgrelid::regclass as text), t.tgname)
             else ''
        end||E';\n'
   from pg_trigger t
  where oid = $1
$_$;


ALTER FUNCTION meta_001.ddlx_create_trigger(oid) OWNER TO "armando";

--
-- Name: ddlx_create_triggers(regclass); Type: FUNCTION; Schema: meta_001; Owner: IHSLaMltbFn1
--



CREATE FUNCTION meta_001.ddlx_create_triggers(regclass) RETURNS text
    LANGUAGE sql STRICT
    AS $_$
 with tg as (
  select meta_001.ddlx_create_trigger(oid) as sql 
 from meta_001.ddlx_get_triggers($1) where is_constraint is null
 order by trigger_name 
 -- per SQL triggers get called in order created vs name as in PostgreSQL
 )
 select coalesce(string_agg(sql,'')||E'\n','')
   from tg
$_$;


ALTER FUNCTION meta_001.ddlx_create_triggers(regclass) OWNER TO "armando";

--
-- Name: ddlx_create_type_base(regtype); Type: FUNCTION; Schema: meta_001; Owner: IHSLaMltbFn1
--

CREATE FUNCTION meta_001.ddlx_create_type_base(regtype) RETURNS text
    LANGUAGE sql STRICT
    AS $_$
select 'CREATE TYPE ' || format_type($1,null) || ' (' || E'\n  ' ||
       array_to_string(array[ 
         'INPUT = '  || cast(t.typinput::regproc as text),  
         'OUTPUT = ' || cast(t.typoutput::regproc as text),
         'SEND = ' || cast(nullif(t.typsend,0)::regproc as text), 
         'RECEIVE = ' || cast(nullif(t.typreceive,0)::regproc as text),
         'TYPMOD_IN = ' || cast(nullif(t.typmodin,0)::regproc as text),
         'TYPMOD_OUT = ' || cast(nullif(t.typmodout,0)::regproc as text),
         'ANALYZE = ' || cast(nullif(t.typanalyze,0)::regproc as text),
         'INTERNALLENGTH = ' || 
            case when  t.typlen < 0 then 'VARIABLE' else cast(t.typlen as text) end,
         case when t.typbyval then 'PASSEDBYVALUE' end,
         'ALIGNMENT = ' || 
            case t.typalign
            when 'c' then 'char'
            when 's' then 'int2'
            when 'i' then 'int4'
            when 'd' then 'double'
            end, 
         'STORAGE = ' || 
            case t.typstorage
            when 'p' then 'plain'
            when 'e' then 'external'
            when 'm' then 'main'
            when 'x' then 'extended'
            end, 
         'CATEGORY = ' || quote_nullable(t.typcategory),
         case when t.typispreferred then E'PREFERRED = true' end,
         case 
           when t.typdefault is not null 
           then E'DEFAULT = ' || quote_nullable(t.typdefault)
         end,
         case when t.typelem <> 0 then E'ELEMENT = ' || format_type(t.typelem,null) end,
         'DELIMITER = ' || quote_nullable(t.typdelim),
         'COLLATABLE = ' ||  case when t.typcollation <> 0 then 'true' else 'false' end
         ], E',\n  ')
       || E'\n);\n\n'
  from pg_type t
 where oid = $1
$_$;


ALTER FUNCTION meta_001.ddlx_create_type_base(regtype) OWNER TO "armando";

--
-- Name: ddlx_create_type_domain(regtype); Type: FUNCTION; Schema: meta_001; Owner: IHSLaMltbFn1
--

CREATE FUNCTION meta_001.ddlx_create_type_domain(regtype) RETURNS text
    LANGUAGE sql STRICT
    AS $_$
with
cc as (
  select pg_get_constraintdef(oid) as definition
    from pg_constraint con
   where con.contypid = $1
   order by oid
)
select 'CREATE DOMAIN ' || format_type(t.oid,null) 
       || E' AS ' || format_type(t.typbasetype,typtypmod) 
       || coalesce(E'\n  '||(select string_agg(definition,E'\n  ') from cc),'')
       || case
            when length(col.collcollate) > 0 
            then E'\n  COLLATE ' || quote_ident(col.collcollate::text)
            else ''
          end 
       || coalesce(E'\n  DEFAULT ' || t.typdefault, '')
       || E';\n\n'
  from pg_type t
  left join pg_collation col on (col.oid=t.typcollation)
 where t.oid = $1
$_$;


ALTER FUNCTION meta_001.ddlx_create_type_domain(regtype) OWNER TO "armando";

--
-- Name: ddlx_create_type_enum(regtype); Type: FUNCTION; Schema: meta_001; Owner: IHSLaMltbFn1
--

CREATE FUNCTION meta_001.ddlx_create_type_enum(regtype) RETURNS text
    LANGUAGE sql STRICT
    AS $_$
with
ee as (
 select 
   quote_nullable(enumlabel) as label
   from pg_enum
  where enumtypid = $1
  order by enumsortorder
)
select 'CREATE TYPE ' || format_type($1,null) || ' AS ENUM (' || E'\n ' ||
       string_agg(label,E',\n ') || E'\n);\n\n'
  from ee
$_$;


ALTER FUNCTION meta_001.ddlx_create_type_enum(regtype) OWNER TO "armando";

--
-- Name: ddlx_create_type_range(regtype); Type: FUNCTION; Schema: meta_001; Owner: IHSLaMltbFn1
--

CREATE FUNCTION meta_001.ddlx_create_type_range(regtype) RETURNS text
    LANGUAGE sql STRICT
    AS $_$
select 'CREATE TYPE ' || format_type($1,null) || E' AS RANGE (\n  ' ||
        array_to_string(array[
          'SUBTYPE = '  || format_type(r.rngsubtype,null),
          'SUBTYPE_OPCLASS = '  || quote_ident(opc.opcname),
          case
            when length(col.collcollate) > 0 
            then 'COLLATION = ' || quote_ident(col.collcollate::text)
          end,
          'CANONICAL = ' || cast(nullif(r.rngcanonical,0)::regproc as text),
          'SUBTYPE_DIFF = ' || cast(nullif(r.rngsubdiff,0)::regproc as text)
        ],E'\n  ')
       || E'\n);\n\n'
  from pg_range r
  left join pg_opclass opc on (opc.oid=r.rngsubopc)
  left join pg_collation col on (col.oid=r.rngcollation)
 where r.rngtypid = $1
$_$;


ALTER FUNCTION meta_001.ddlx_create_type_range(regtype) OWNER TO "armando";

--
-- Name: ddlx_create_type_shell(regtype); Type: FUNCTION; Schema: meta_001; Owner: IHSLaMltbFn1
--

CREATE FUNCTION meta_001.ddlx_create_type_shell(regtype) RETURNS text
    LANGUAGE sql STRICT
    AS $_$
select 'CREATE TYPE ' || format_type(oid,null) || ';\n'
  from pg_type t
 where oid = $1
$_$;


ALTER FUNCTION meta_001.ddlx_create_type_shell(regtype) OWNER TO "armando";

--
-- Name: ddlx_create_user_mapping(oid); Type: FUNCTION; Schema: meta_001; Owner: IHSLaMltbFn1
--

CREATE FUNCTION meta_001.ddlx_create_user_mapping(oid) RETURNS text
    LANGUAGE sql STRICT
    AS $_$ 
 with obj as (select * from meta_001.ddlx_identify($1))
 select
    'CREATE USER MAPPING ' || obj.sql_identifier ||
    coalesce(E'\nOPTIONS (\n'||
      (select string_agg(
              '    '||quote_ident(option_name)||' '||quote_nullable(option_value), 
              E',\n')
         from pg_options_to_table(um.umoptions))||E'\n)'
    ,'') || E';\n' 
   from obj
   join pg_user_mapping um ON um.oid = obj.oid;
$_$;


ALTER FUNCTION meta_001.ddlx_create_user_mapping(oid) OWNER TO "armando";

--
-- Name: ddlx_create_view(regclass); Type: FUNCTION; Schema: meta_001; Owner: IHSLaMltbFn1
--




ALTER FUNCTION meta_001.ddlx_create_view(regclass) OWNER TO "armando";

--
-- Name: ddlx_describe(regclass); Type: FUNCTION; Schema: meta_001; Owner: IHSLaMltbFn1
--



ALTER FUNCTION meta_001.ddlx_describe(regclass, OUT ord smallint, OUT name name, OUT type text, OUT size integer, OUT not_null boolean, OUT "default" text, OUT ident text, OUT gen text, OUT comment text, OUT primary_key name, OUT is_local boolean, OUT storage text, OUT "collation" text, OUT namespace name, OUT class_name name, OUT sql_identifier text, OUT relid oid, OUT options text[], OUT definition text, OUT sequence regclass) OWNER TO "armando";

--
-- Name: ddlx_drop_constraint(oid); Type: FUNCTION; Schema: meta_001; Owner: IHSLaMltbFn1
--

CREATE FUNCTION meta_001.ddlx_drop_constraint(oid) RETURNS text
    LANGUAGE sql STRICT
    AS $_$
 select format(
   E'ALTER %s %s DROP CONSTRAINT %I;\n',
   case
     when t.oid is not null then 'DOMAIN'
     else 'TABLE'
   end,
   coalesce(cast(t.oid::regtype as text),
            cast(r.oid::regclass as text)),
   c.conname) 
   from pg_constraint c 
   left join pg_class r on (c.conrelid = r.oid)
   left join pg_type t on (c.contypid = t.oid)
  where c.oid = $1 
$_$;


ALTER FUNCTION meta_001.ddlx_drop_constraint(oid) OWNER TO "armando";

--
-- Name: ddlx_drop_default(oid); Type: FUNCTION; Schema: meta_001; Owner: IHSLaMltbFn1
--

CREATE FUNCTION meta_001.ddlx_drop_default(oid) RETURNS text
    LANGUAGE sql STRICT
    AS $_$
  select format(E'ALTER TABLE %s ALTER %I DROP DEFAULT;\n',
            cast(c.oid::regclass as text),
            a.attname)
    from pg_attrdef def 
    join pg_class c on c.oid = def.adrelid
    join pg_attribute a on c.oid = a.attrelid and a.attnum = def.adnum and not a.attisdropped
   where def.oid = $1
$_$;


ALTER FUNCTION meta_001.ddlx_drop_default(oid) OWNER TO "armando";

--
-- Name: ddlx_drop_trigger(oid); Type: FUNCTION; Schema: meta_001; Owner: IHSLaMltbFn1
--

CREATE FUNCTION meta_001.ddlx_drop_trigger(oid) RETURNS text
    LANGUAGE sql STRICT
    AS $_$
 select format(
          E'DROP TRIGGER %I ON %s;\n',
          t.tgname,cast(c.oid::regclass as text))
   from pg_trigger t join pg_class c on (t.tgrelid=c.oid)
  where t.oid = $1 
$_$;


ALTER FUNCTION meta_001.ddlx_drop_trigger(oid) OWNER TO "armando";

--
-- Name: ddlx_get_constraints(regclass); Type: FUNCTION; Schema: meta_001; Owner: IHSLaMltbFn1
--



ALTER FUNCTION meta_001.ddlx_get_constraints(regclass, OUT namespace name, OUT class_name name, OUT constraint_name name, OUT constraint_type text, OUT constraint_definition text, OUT is_deferrable boolean, OUT initially_deferred boolean, OUT regclass oid, OUT sysid oid) OWNER TO "armando";

--
-- Name: ddlx_get_functions(regproc); Type: FUNCTION; Schema: meta_001; Owner: IHSLaMltbFn1
--

CREATE FUNCTION meta_001.ddlx_get_functions(regproc DEFAULT NULL::regproc, OUT sysid oid, OUT namespace name, OUT name name, OUT comment text, OUT owner name, OUT sql_identifier text, OUT language name, OUT attributes text, OUT retset boolean, OUT is_trigger boolean, OUT returns text, OUT arguments text, OUT definition text, OUT security text, OUT is_strict text, OUT argtypes oidvector, OUT cost real, OUT rows real) RETURNS SETOF record
    LANGUAGE sql
    AS $_$
 SELECT p.oid AS sysid, 
        s.nspname AS namespace, 
        p.proname AS name, 
        pg_description.description AS comment, 
        u.rolname AS owner,
        p.oid::regprocedure::text AS sql_identifier, 
        l.lanname AS language, 
        CASE p.provolatile
            WHEN 'i'::"char" THEN 'IMMUTABLE'::text
            WHEN 's'::"char" THEN 'STABLE'::text
            WHEN 'v'::"char" THEN 'VOLATILE'::text
            ELSE NULL::text
        END AS attributes, 
        p.proretset AS retset, 
        p.prorettype = 'trigger'::regtype::oid AS is_trigger, 
        text(p.prorettype::regtype) AS returns, 
        pg_get_function_arguments(p.oid) AS arguments, 
--        oidvectortypes(p.proargtypes) AS argtypes, 
        p.prosrc AS definition, 
        CASE p.prosecdef
            WHEN true THEN 'DEFINER'::text
            ELSE 'INVOKER'::text
        END AS security, 
        case p.proisstrict 
            WHEN true THEN 'STRICT'::text
            ELSE NULL
        END AS is_strict, 
        p.proargtypes AS proargtypes,
        p.procost as cost,
        p.prorows as rows
   FROM pg_proc p
   LEFT JOIN pg_namespace s ON s.oid = p.pronamespace
   LEFT JOIN pg_language l ON l.oid = p.prolang
   LEFT JOIN pg_roles u ON p.proowner = u.oid
   LEFT JOIN pg_description ON p.oid = pg_description.objoid
   WHERE $1 IS NULL OR p.oid = $1
$_$;


ALTER FUNCTION meta_001.ddlx_get_functions(regproc, OUT sysid oid, OUT namespace name, OUT name name, OUT comment text, OUT owner name, OUT sql_identifier text, OUT language name, OUT attributes text, OUT retset boolean, OUT is_trigger boolean, OUT returns text, OUT arguments text, OUT definition text, OUT security text, OUT is_strict text, OUT argtypes oidvector, OUT cost real, OUT rows real) OWNER TO "armando";

--
-- Name: ddlx_get_indexes(regclass); Type: FUNCTION; Schema: meta_001; Owner: IHSLaMltbFn1
--




ALTER FUNCTION meta_001.ddlx_get_indexes(regclass, OUT oid oid, OUT namespace text, OUT class text, OUT name text, OUT tablespace text, OUT constraint_name text) OWNER TO "armando";

--
-- Name: ddlx_get_rules(regclass); Type: FUNCTION; Schema: meta_001; Owner: IHSLaMltbFn1
--

CREATE FUNCTION meta_001.ddlx_get_rules(regclass DEFAULT NULL::regclass, OUT namespace text, OUT class_name text, OUT rule_name text, OUT rule_event text, OUT is_instead boolean, OUT rule_definition text, OUT regclass regclass) RETURNS SETOF record
    LANGUAGE sql
    AS $_$
 SELECT n.nspname::text AS namespace, 
        c.relname::text AS class_name, 
        r.rulename::text AS rule_name, 
        CASE
            WHEN r.ev_type = '1'::"char" THEN 'SELECT'::text
            WHEN r.ev_type = '2'::"char" THEN 'UPDATE'::text
            WHEN r.ev_type = '3'::"char" THEN 'INSERT'::text
            WHEN r.ev_type = '4'::"char" THEN 'DELETE'::text
            ELSE 'UNKNOWN'::text
        END AS rule_event, 
        r.is_instead, 
        pg_get_ruledef(r.oid, true) AS rule_definition, 
        c.oid::regclass AS regclass
   FROM pg_rewrite r
   JOIN pg_class c ON c.oid = r.ev_class
   JOIN pg_namespace n ON n.oid = c.relnamespace
  WHERE ($1 IS NULL OR c.oid=$1)
    AND NOT (r.ev_type = '1'::"char" AND r.rulename = '_RETURN'::name)
  ORDER BY r.oid
  $_$;


ALTER FUNCTION meta_001.ddlx_get_rules(regclass, OUT namespace text, OUT class_name text, OUT rule_name text, OUT rule_event text, OUT is_instead boolean, OUT rule_definition text, OUT regclass regclass) OWNER TO "armando";

--
-- Name: ddlx_get_triggers(regclass); Type: FUNCTION; Schema: meta_001; Owner: IHSLaMltbFn1
--

CREATE FUNCTION meta_001.ddlx_get_triggers(regclass DEFAULT NULL::regclass, OUT oid oid, OUT is_constraint text, OUT trigger_name text, OUT action_order text, OUT event_manipulation text, OUT event_object_sql_identifier text, OUT action_statement text, OUT action_orientation text, OUT trigger_definition text, OUT regclass regclass, OUT regprocedure regprocedure, OUT event_object_schema text, OUT event_object_table text, OUT sql_identifier text) RETURNS SETOF record
    LANGUAGE sql
    AS $_$
 SELECT t.oid,
        CASE t.tgisinternal
            WHEN true THEN 'CONSTRAINT'::text
            ELSE NULL::text
        END AS is_constraint, t.tgname::text AS trigger_name, 
        CASE (t.tgtype::integer & 64) <> 0
            WHEN true THEN 'INSTEAD'::text
            ELSE CASE t.tgtype::integer & 2
              WHEN 2 THEN 'BEFORE'::text
              WHEN 0 THEN 'AFTER'::text
              ELSE NULL::text
            END
        END AS action_order, 
        array_to_string(array[
          case when (t.tgtype::integer &  4) <> 0 then 'INSERT'   end,
          case when (t.tgtype::integer &  8) <> 0 then 'DELETE'   end,
          case when (t.tgtype::integer & 16) <> 0 then 'UPDATE'   end,
          case when (t.tgtype::integer & 32) <> 0 then 'TRUNCATE' end
        ],' OR ') AS event_manipulation,
        c.oid::regclass::text AS event_object_sql_identifier, 
        p.oid::regprocedure::text AS action_statement, 
        CASE t.tgtype::integer & 1
            WHEN 1 THEN 'ROW'::text
            ELSE 'STATEMENT'::text
        END AS action_orientation, 
        pg_get_triggerdef(t.oid,true) as trigger_definition,
        c.oid::regclass AS regclass, 
        p.oid::regprocedure AS regprocedure, 
        s.nspname::text AS event_object_schema,
        c.relname::text AS event_object_table, 
        (quote_ident(t.tgname::text) || ' ON ') || c.oid::regclass::text AS sql_identifier
   FROM pg_trigger t
   LEFT JOIN pg_class c ON c.oid = t.tgrelid
   LEFT JOIN pg_namespace s ON s.oid = c.relnamespace
   LEFT JOIN pg_proc p ON p.oid = t.tgfoid
   LEFT JOIN pg_namespace s1 ON s1.oid = p.pronamespace
   WHERE $1 IS NULL OR c.oid=$1
$_$;


ALTER FUNCTION meta_001.ddlx_get_triggers(regclass, OUT oid oid, OUT is_constraint text, OUT trigger_name text, OUT action_order text, OUT event_manipulation text, OUT event_object_sql_identifier text, OUT action_statement text, OUT action_orientation text, OUT trigger_definition text, OUT regclass regclass, OUT regprocedure regprocedure, OUT event_object_schema text, OUT event_object_table text, OUT sql_identifier text) OWNER TO "armando";

--
-- Name: ddlx_grants(oid); Type: FUNCTION; Schema: meta_001; Owner: IHSLaMltbFn1
--

CREATE FUNCTION meta_001.ddlx_grants(oid) RETURNS text
    LANGUAGE sql
    AS $$ select null::text $$;


ALTER FUNCTION meta_001.ddlx_grants(oid) OWNER TO "armando";

--
-- Name: ddlx_grants_to_role(oid); Type: FUNCTION; Schema: meta_001; Owner: IHSLaMltbFn1
--



ALTER FUNCTION meta_001.ddlx_grants_to_role(oid) OWNER TO "armando";

--
-- Name: ddlx_identify(oid); Type: FUNCTION; Schema: meta_001; Owner: IHSLaMltbFn1
--


ALTER FUNCTION meta_001.ddlx_identify(oid, OUT oid oid, OUT classid regclass, OUT name name, OUT namespace name, OUT owner name, OUT sql_kind text, OUT sql_identifier text, OUT acl aclitem[]) OWNER TO "armando";

--
-- Name: del_count_function(); Type: FUNCTION; Schema: meta_001; Owner: IHSLaMltbFn1
--

CREATE FUNCTION meta_001.del_count_function() RETURNS integer
    LANGUAGE plpgsql
    AS $$  
BEGIN
     RETURN (
             SELECT COUNT(1) from log_001.t_audit where
             table_name in ('aop'       ,'t_employee','t_employee_compliance','t_job_block'          ,'t_job_site',
							't_location','t_post'    ,'t_post_block'         ,'t_post_schedule_item' ,'t_rankedlist',
							't_recommendation' )
             );
END $$;


ALTER FUNCTION meta_001.del_count_function() OWNER TO "armando";

--
-- Name: dependency_tree(oid[]); Type: FUNCTION; Schema: meta_001; Owner: IHSLaMltbFn1
--

CREATE FUNCTION meta_001.dependency_tree(object_ids oid[]) RETURNS TABLE(dependency_tree text)
    LANGUAGE sql SECURITY DEFINER
    AS $$
WITH target AS (
  SELECT objid, dependency_chain
  FROM meta_001.dependency
  JOIN unnest(object_ids) AS target(objid) USING (objid)
)
, list AS (
  SELECT DISTINCT
    format('%*s%s %s', -4*level
          , CASE WHEN report.objid = ANY(object_ids) THEN '*' END
          , object_type, object_identity
    ) AS dependency_tree
  , dependency_sort_chain
  FROM target
  JOIN meta_001.dependency report
    ON report.objid = ANY(target.dependency_chain) -- root-bound chain
    OR target.objid = ANY(report.dependency_chain) -- leaf-bound chain
)
SELECT dependency_tree FROM list
ORDER BY dependency_sort_chain;
$$;


ALTER FUNCTION meta_001.dependency_tree(object_ids oid[]) OWNER TO "armando";

--
-- Name: dependency_tree(text[]); Type: FUNCTION; Schema: meta_001; Owner: IHSLaMltbFn1
--

CREATE FUNCTION meta_001.dependency_tree(object_names text[]) RETURNS TABLE(dependency_tree text)
    LANGUAGE sql SECURITY DEFINER
    AS $$
-- Procedure to report depedency tree by specific relation name(s) (in text array)
WITH target AS (
  SELECT objid, dependency_chain
  FROM meta_001.dependency
  JOIN unnest(object_names) AS target(objname) ON objid = objname::regclass
)
, list AS (
  SELECT DISTINCT
    format('%*s%s %s', -4*level
          , CASE WHEN object_identity = ANY(object_names) THEN '*' END
          , object_type, object_identity
    ) AS dependency_tree
  , dependency_sort_chain
  FROM target
  JOIN meta_001.dependency report
    ON report.objid = ANY(target.dependency_chain) -- root-bound chain
    OR target.objid = ANY(report.dependency_chain) -- leaf-bound chain
)
SELECT dependency_tree FROM list
ORDER BY dependency_sort_chain;
$$;


ALTER FUNCTION meta_001.dependency_tree(object_names text[]) OWNER TO "armando";

--
-- Name: dependency_tree(text); Type: FUNCTION; Schema: meta_001; Owner: IHSLaMltbFn1
--

CREATE FUNCTION meta_001.dependency_tree(search_pattern text) RETURNS TABLE(dependency_tree text)
    LANGUAGE sql SECURITY DEFINER
    AS $$
  -- Procedure to report depedency tree using regexp search pattern (relation-only)
WITH target AS (
  SELECT objid, dependency_chain
  FROM meta_001.dependency
  WHERE object_identity ~ search_pattern
)
, list AS (
  SELECT
    format('%*s%s %s', -4*level
          , CASE WHEN object_identity ~ search_pattern THEN '*' END
          , object_type, object_identity
    ) AS dependency_tree
  , dependency_sort_chain
  FROM target
  JOIN meta_001.dependency report
    ON report.objid = ANY(target.dependency_chain) -- root-bound chain
    OR target.objid = ANY(report.dependency_chain) -- leaf-bound chain
  WHERE length(search_pattern) > 0
  -- Do NOT waste search time on blank/null search_pattern.
  UNION
  -- Query the entire dependencies instead.
  SELECT
    format('%*s%s %s', 4*level, '', object_type, object_identity) AS depedency_tree
  , dependency_sort_chain
  FROM meta_001.dependency
  WHERE length(coalesce(search_pattern,'')) = 0
)
SELECT dependency_tree FROM list
ORDER BY dependency_sort_chain;
$$;


ALTER FUNCTION meta_001.dependency_tree(search_pattern text) OWNER TO "armando";

--
-- Name: deps_restore_dependencies(name, name, jsonb); Type: FUNCTION; Schema: meta_001; Owner: IHSLaMltbFn1
--

CREATE FUNCTION meta_001.deps_restore_dependencies(p_view_schema name, p_view_name name, p_options jsonb DEFAULT '{}'::jsonb) RETURNS void
    LANGUAGE plpgsql
    AS $$
declare
  v_curr record;
  v_verbose bool;
  v_dry bool;
begin
  -- initializing defaults
  p_options = '{
    "dry_run": true,
    "verbose": false
  }'::jsonb || p_options;
  v_verbose = (p_options->'verbose')::bool;
  v_dry = (p_options->'dry_run')::bool;

  if v_verbose then
    set local client_min_messages to 'debug';
  end if;

  raise debug 'Running with options: %', p_options::text;

  for v_curr in (
    select
      ddl_statement
    from
      meta_001.deps_saved_ddl
    where
      src_nsp_name = p_view_schema and
      src_rel_name = p_view_name
    order by
      ddl_order desc
  ) loop

    if not v_dry then
      raise debug 'Executing ddl statement: %', v_curr.ddl_statement;
      execute v_curr.ddl_statement;
    else
      raise debug 'Skipping ddl statement: %', v_curr.ddl_statement;
    end if;

  end loop;

  raise debug 'Flushing ddl statements';
  delete from
    meta_001.deps_saved_ddl
  where
    src_nsp_name = p_view_schema and
    src_rel_name = p_view_name;

  if v_verbose then
    reset client_min_messages;
  end if;
end;
$$;


ALTER FUNCTION meta_001.deps_restore_dependencies(p_view_schema name, p_view_name name, p_options jsonb) OWNER TO "armando";

--
-- Name: deps_save_and_drop_dependencies(name, name, jsonb); Type: FUNCTION; Schema: meta_001; Owner: IHSLaMltbFn1
--

CREATE FUNCTION meta_001.deps_save_and_drop_dependencies(p_src_nsp_name name, p_src_rel_name name, p_options jsonb DEFAULT '{}'::jsonb) RETURNS void
    LANGUAGE plpgsql
    AS $$
declare
  v_curr record;
  v_sequence text = 'deps_sequence_' || md5(random()::text);
  v_verbose bool;
  v_dry bool;
  v_populate bool;
  v_stmt text;
begin

  -- initializing defaults
  p_options = '{
    "dry_run": true,
    "verbose": false,
    "populate_materialized_view": false
  }'::jsonb || p_options;
  v_verbose = (p_options->'verbose')::bool;
  v_dry = (p_options->'dry_run')::bool;
  v_populate = (p_options->'populate_materialized_view')::bool;

  if v_verbose then
    set local client_min_messages to 'debug';
  end if;

  raise debug 'Running with options: %', p_options::text;

  raise debug 'Creating temp sequence: %', v_sequence::text;
  execute format(
    'CREATE TEMPORARY SEQUENCE %I',
    v_sequence
  );


  raise debug 'flush previous ddl';
  delete from
    meta_001.deps_saved_ddl
  where
    src_nsp_name = p_src_nsp_name and
    src_rel_name = p_src_rel_name;

  for v_curr in (
    select
      obj_schema,
      obj_name,
      obj_type
    from (
      with recursive recursive_deps(obj_schema, obj_name, obj_type, depth) as (
        select
          p_src_nsp_name,
          p_src_rel_name,
          null::char,
          0
        union
        select
          dep_schema::name,
          dep_name::name,
          dep_type::char,
          recursive_deps.depth + 1
        from (
          select
            ref_nsp.nspname ref_schema,
            ref_cl.relname ref_name,
            rwr_cl.relkind dep_type,
            rwr_nsp.nspname dep_schema,
            rwr_cl.relname dep_name
          from pg_depend dep
            join pg_class ref_cl
              on dep.refobjid = ref_cl.oid
            join pg_namespace ref_nsp
              on ref_cl.relnamespace = ref_nsp.oid
            join pg_rewrite rwr
              on dep.objid = rwr.oid
            join pg_class rwr_cl
              on rwr.ev_class = rwr_cl.oid
            join pg_namespace rwr_nsp
              on rwr_cl.relnamespace = rwr_nsp.oid
          where
            dep.deptype = 'n' and
            dep.classid = 'pg_rewrite'::regclass
        ) deps
        join recursive_deps
          on deps.ref_schema = recursive_deps.obj_schema and
             deps.ref_name = recursive_deps.obj_name
        where
          deps.ref_schema != deps.dep_schema or
          deps.ref_name != deps.dep_name
      )
      select
        obj_schema,
        obj_name,
        obj_type,
        depth
      from
        recursive_deps
      where
        depth > 0
    ) t
    group by
      obj_schema,
      obj_name,
      obj_type
    order by
      max(depth) desc
  ) loop

    raise debug 'Dumping view: %.% %', v_curr.obj_schema, v_curr.obj_name, v_curr.obj_type;

    raise debug 'Building owners';
    insert into
      meta_001.deps_saved_ddl(src_nsp_name, src_rel_name, dep_nsp_name, dep_rel_name, ddl_order, ddl_statement)
    select distinct
      p_src_nsp_name,
      p_src_rel_name,
      v_curr.obj_schema,
      v_curr.obj_name,
      nextval(v_sequence::regclass),
      format(
        'ALTER %s %I.%I OWNER TO %I',
        case
          when pc.relkind = 'v'
            then 'VIEW'
          when pc.relkind = 'm'
            then 'MATERIALIZED VIEW'
        end,
        v_curr.obj_schema,
        v_curr.obj_name,
        pg_get_userbyid(pc.relowner)
      )
    from
      pg_class pc
        inner join pg_namespace pn
        on pc.relnamespace = pn.oid and
           pn.nspname = v_curr.obj_schema
    where
      pc.relname = v_curr.obj_name;

    raise debug 'Building indexes';
    insert into
      meta_001.deps_saved_ddl(src_nsp_name, src_rel_name, dep_nsp_name, dep_rel_name, ddl_order, ddl_statement)
    select distinct
      p_src_nsp_name,
      p_src_rel_name,
      v_curr.obj_schema,
      v_curr.obj_name,
      nextval(v_sequence::regclass),
      indexdef
    from
      pg_indexes
    where
      schemaname = v_curr.obj_schema and
      tablename = v_curr.obj_name;

    raise debug 'Building rules';
    insert into
      meta_001.deps_saved_ddl(src_nsp_name, src_rel_name, dep_nsp_name, dep_rel_name, ddl_order, ddl_statement)
    select distinct
      p_src_nsp_name,
      p_src_rel_name,
      v_curr.obj_schema,
      v_curr.obj_name,
      nextval(v_sequence::regclass),
      definition
    from
      pg_rules
    where
      schemaname = v_curr.obj_schema and
      tablename = v_curr.obj_name;

    raise debug 'Building view comments';
    insert into
      meta_001.deps_saved_ddl(src_nsp_name, src_rel_name, dep_nsp_name, dep_rel_name, ddl_order, ddl_statement)
    select
      p_src_nsp_name,
      p_src_rel_name,
      v_curr.obj_schema,
      v_curr.obj_name,
      nextval(v_sequence::regclass),
      format(
        'COMMENT ON %s %I.%I IS %L',
        case
          when pc.relkind = 'v'
            then 'VIEW'
          when pc.relkind = 'm'
            then 'MATERIALIZED VIEW'
        end,
        pn.nspname,
        pc.relname,
        pd.description
      )
    from
      pg_class pc
        inner join pg_namespace pn
          on pn.oid = pc.relnamespace and
             pn.nspname = v_curr.obj_schema
        inner join pg_description pd
          on pd.objoid = pc.oid and
             pd.objsubid = 0 and
             pd.description is not null
    where
      pc.relname = v_curr.obj_name;

    raise debug 'Building column comments';
    insert into
      meta_001.deps_saved_ddl(src_nsp_name, src_rel_name, dep_nsp_name, dep_rel_name, ddl_order, ddl_statement)
    select
      p_src_nsp_name,
      p_src_rel_name,
      v_curr.obj_schema,
      v_curr.obj_name,
      nextval(v_sequence::regclass),
      format(
        'COMMENT ON COLUMN %I.%I.%I IS %L',
        pn.nspname,
        pc.relname,
        pa.attname,
        pd.description
      )
    from
      pg_class pc
        inner join pg_namespace pn
          on pn.oid = pc.relnamespace and
             pn.nspname = v_curr.obj_schema
        inner join pg_attribute pa
          on pc.oid = pa.attrelid
        inner join pg_description pd
          on pd.objoid = pc.oid and
             pd.objsubid = pa.attnum and
             pd.description is not null
    where
      pc.relname = v_curr.obj_name;

    if v_curr.obj_type = 'v' then
      raise debug 'Building view privilege grants';
      insert into
        meta_001.deps_saved_ddl(src_nsp_name, src_rel_name, dep_nsp_name, dep_rel_name, ddl_order, ddl_statement)
      select
        p_src_nsp_name,
        p_src_rel_name,
        v_curr.obj_schema,
        v_curr.obj_name,
        nextval(v_sequence::regclass),
        format(
          'GRANT %s ON %I.%I TO %I %s',
          privilege_type,
          table_schema,
          table_name,
          grantee,
          case
            when is_grantable = 'YES' or with_hierarchy = 'YES'
              then format(
                'WITH %s OPTION',
                array_to_string(ARRAY[
                  case when is_grantable = 'YES' then 'GRANT' else '' end
               -- case when with_hierarchy = 'YES' then 'HIERARCHY' else '' end -- for the future, todo ask postgres pro community
                ]::text[], ' ')
              )
            else ''
          end
        )
      from
        information_schema.role_table_grants
      where
        table_schema = v_curr.obj_schema and
        table_name = v_curr.obj_name;
    elseif v_curr.obj_type = 'm' then
      raise debug 'Building material view privilege grants';
      insert into
        meta_001.deps_saved_ddl(src_nsp_name, src_rel_name, dep_nsp_name, dep_rel_name, ddl_order, ddl_statement)
      select
        p_src_nsp_name,
        p_src_rel_name,
        table_schema,
        table_name,
        nextval(v_sequence::regclass),
        format(
          'GRANT %s ON %I.%I to %I %s',
          privilege_type,
          table_schema,
          table_name,
          grantee,
          case
            when is_grantable = 'YES'
              then format(
                'WITH %s OPTION',
                array_to_string(ARRAY[
                  case when is_grantable = 'YES' then 'GRANT' else '' end
                ]::text[], ' ')
              )
            else ''
          end
        )
      from (
        select
          table_schema,
          table_name,
          grantor,
          grantee,
          unnest(ARRAY[
            case when acl ~ 'a|a\*' then 'INSERT' end,
            case when acl ~ 'r|r\*' then 'SELECT' end,
            case when acl ~ 'w|w\*' then 'UPDATE' end,
            case when acl ~ 'd|d\*' then 'DELETE' end,
            case when acl ~ 'D|D\*' then 'TRUNCATE' end,
            case when acl ~ 'x|x\*' then 'REFERENCES' end,
            case when acl ~ 't|t\*' then 'TRIGGER' end
          ]::text[]) as privilege_type,
          unnest(ARRAY[
            case when acl ~ 'a\*' then 'YES' else 'NO' end,
            case when acl ~ 'r\*' then 'YES' else 'NO' end,
            case when acl ~ 'w\*' then 'YES' else 'NO' end,
            case when acl ~ 'd\*' then 'YES' else 'NO' end,
            case when acl ~ 'D\*' then 'YES' else 'NO' end,
            case when acl ~ 'x\*' then 'YES' else 'NO' end,
            case when acl ~ 't\*' then 'YES' else 'NO' end
          ]::text[]) as is_grantable
        from (
          select
            table_schema,
            table_name,
            (regexp_match(acl, '([^=]*)=([^/]+)/(.+)'))[3] as grantor,
            coalesce(nullif((regexp_match(acl, '([^=]*)=([^/]+)/(.+)'))[1], ''), 'public') as grantee,
            (regexp_match(acl, '([^=]*)=([^/]+)/(.+)'))[2] as acl
          from (
            select
              pn.nspname as table_schema,
              pc.relname as table_name,
              unnest(pc.relacl)::text as acl
            from
              pg_class pc
                inner join pg_namespace pn
                  on pn.oid = pc.relnamespace and
                     pn.nspname = v_curr.obj_schema
            where
              pc.relname = v_curr.obj_name
          ) as v1
        ) as v2
      ) as v3
      where
        privilege_type is not null;
    end if;


    if v_curr.obj_type = 'v' then
      raise debug 'Building view column privilege grants';
      insert into
        meta_001.deps_saved_ddl(src_nsp_name, src_rel_name, dep_nsp_name, dep_rel_name, ddl_order, ddl_statement)
      select
        p_src_nsp_name,
        p_src_rel_name,
        v_curr.obj_schema,
        v_curr.obj_name,
        nextval(v_sequence::regclass),
        format(
          'GRANT %s ON %I.%I.%I TO %I %s',
          privilege_type,
          table_schema,
          table_name,
          column_name,
          grantee,
          case
            when is_grantable = 'YES'
              then format(
                'WITH %s OPTION',
                array_to_string(ARRAY[
                  case when is_grantable = 'YES' then 'GRANT' else '' end
                ]::text[], ' ')
              )
            else ''
          end
        )
      from
        information_schema.role_column_grants
      where
        table_schema = v_curr.obj_schema and
        table_name = v_curr.obj_name;
    elseif v_curr.obj_type = 'm' then
      raise debug 'Building material view column privilege grants';
      insert into
        meta_001.deps_saved_ddl(src_nsp_name, src_rel_name, dep_nsp_name, dep_rel_name, ddl_order, ddl_statement)
      select
        p_src_nsp_name,
        p_src_rel_name,
        v_curr.obj_schema,
        v_curr.obj_name,
        nextval(v_sequence::regclass),
        format(
          'GRANT %s ON %I.%I.%I to %I %s',
          privilege_type,
          table_schema,
          table_name,
          column_name,
          grantee,
          case
            when is_grantable = 'YES'
              then format(
                'WITH %s OPTION',
                array_to_string(ARRAY[
                  case when is_grantable = 'YES' then 'GRANT' else '' end
                ]::text[], ' ')
              )
            else ''
          end
        )
      from (
        select
          table_schema,
          table_name,
          column_name,
          grantor,
          grantee,
          unnest(ARRAY[
            case when acl ~ 'a|a\*' then 'INSERT' end,
            case when acl ~ 'r|r\*' then 'SELECT' end,
            case when acl ~ 'w|w\*' then 'UPDATE' end,
            case when acl ~ 'x|x\*' then 'REFERENCES' end
          ]::text[]) as privilege_type,
          unnest(ARRAY[
            case when acl ~ 'a\*' then 'YES' else 'NO' end,
            case when acl ~ 'r\*' then 'YES' else 'NO' end,
            case when acl ~ 'w\*' then 'YES' else 'NO' end,
            case when acl ~ 'x\*' then 'YES' else 'NO' end
          ]::text[]) as is_grantable
        from (
          select
            table_schema,
            table_name,
            column_name,
            (regexp_match(acl, '([^=]*)=([^/]+)/(.+)'))[3] as grantor,
            coalesce(nullif((regexp_match(acl, '([^=]*)=([^/]+)/(.+)'))[1], ''), 'public') as grantee,
            (regexp_match(acl, '([^=]*)=([^/]+)/(.+)'))[2] as acl
          from (
            select
              pn.nspname as table_schema,
              pc.relname as table_name,
              pa.attname as column_name,
              unnest(pa.attacl)::text as acl
            from
              pg_attribute pa
                inner join pg_class pc
                  on pc.oid = pa.attrelid and
                     pc.relname = 'view_material'
                join pg_namespace pn
                  on pn.oid = pc.relnamespace and
                     pn.nspname = v_curr.obj_schema
            where
              pa.attisdropped = false and
              pa.attacl is not null
          ) as v1
        ) as v2
      ) as v3
      where
        privilege_type is not null;
    end if;


    if v_curr.obj_type = 'v' then
      raise debug 'Building view ddl';
      insert into
        meta_001.deps_saved_ddl(src_nsp_name, src_rel_name, dep_nsp_name, dep_rel_name, ddl_order, ddl_statement)
      select
        p_src_nsp_name,
        p_src_rel_name,
        v_curr.obj_schema,
        v_curr.obj_name,
        nextval(v_sequence::regclass),
        format(
          'CREATE VIEW %I.%I %s AS %s',
          v_curr.obj_schema,
          v_curr.obj_name,
          case
            when array_length(pg_class.reloptions::text[], 1) > 0
              then format('WITH ( %s )', array_to_string(pg_class.reloptions, ', '))
            else ''
          end,
          view_definition
        )
      from
        information_schema.views
          join pg_class
            on pg_class.relname = v_curr.obj_name
      where
        table_schema = v_curr.obj_schema and
        table_name = v_curr.obj_name;
    elseif v_curr.obj_type = 'm' then
      raise debug 'Building materialized view ddl';
      insert into
        meta_001.deps_saved_ddl(src_nsp_name, src_rel_name, dep_nsp_name, dep_rel_name, ddl_order, ddl_statement)
      select
        p_src_nsp_name,
        p_src_rel_name,
        v_curr.obj_schema,
        v_curr.obj_name,
        nextval(v_sequence::regclass),
        format(
          'CREATE MATERIALIZED VIEW %I.%I %s %s %s AS %s %s',
          v_curr.obj_schema,
          v_curr.obj_name,
          '', -- format('USING %s', pa.amname), -- for the future, doesn't work in v13.1 todo ask postgres pro community
          case
            when array_length(pg_class.reloptions::text[], 1) > 0
              then format('WITH ( %s )', array_to_string(pg_class.reloptions, ', '))
            else ''
          end,
          case
            when pt.spcname is not null
              then format('TABLESPACE %s', pt.spcname)
            else ''
          end,
          trim(';' from definition),
          case
            when v_populate
              then 'WITH DATA'
            else 'WITH NO DATA'
          end
        )
      from
        pg_matviews
          join pg_class
            on pg_class.relname = v_curr.obj_name
          join pg_am pa
            on pg_class.relam = pa.oid
          left join pg_tablespace pt
            on pg_class.reltablespace = pt.oid
      where
        schemaname = v_curr.obj_schema and
        matviewname = v_curr.obj_name;
    end if;

    v_stmt = format(
      'DROP %s %I.%I',
      case
        when v_curr.obj_type = 'v'
          then 'VIEW'
        when v_curr.obj_type = 'm'
          then 'MATERIALIZED VIEW'
      end,
      v_curr.obj_schema,
      v_curr.obj_name
    );

    if not v_dry then
      raise debug 'Executing drop statement: %', v_stmt;
      execute v_stmt;
    else
      raise debug 'Emulating drop statement: %', v_stmt;
    end if;

  end loop;

  raise debug 'Dropping temp sequence: %', v_sequence;
  execute format(
    'DROP SEQUENCE %I',
    v_sequence
  );

  if v_verbose then
    reset client_min_messages;
  end if;
end;
$$;


ALTER FUNCTION meta_001.deps_save_and_drop_dependencies(p_src_nsp_name name, p_src_rel_name name, p_options jsonb) OWNER TO "armando";

--
-- Name: describe_all_objects(text); Type: FUNCTION; Schema: meta_001; Owner: IHSLaMltbFn1
--

CREATE FUNCTION meta_001.describe_all_objects(something text) RETURNS TABLE(type text, schema text, name text, identity text, comment text)
    LANGUAGE plpgsql STABLE
    AS $_$
declare
  /* Cutoff for system object OIDs; see comments in src/include/access/transam.h */
  MIN_USER_OID constant oid = 16384;
  catalog_class regclass;
begin
  for catalog_class in
    /* Get a list of all catalog tables with an OID */
    select oid::regclass
    from pg_class
    where
      relhasoids and
      pg_class.oid < MIN_USER_OID and
      /* Enum members have no obj_description(); the enum itself is picked up in pg_type */
      pg_class.oid <> 'pg_enum'::regclass
  loop
    return query execute format(
      $SQL$
        /* Get descriptions for all user-created catalog entries */
        select
          info.type,
          info.schema,
          info.name,
          info.identity,
          coalesce(
            obj_description(catalog_table.oid, catalog_table.tableoid::regclass::text),
            shobj_description(catalog_table.oid, catalog_table.tableoid::regclass::text)
          ) as comment
        from
          %s as catalog_table,
          lateral pg_identify_object(catalog_table.tableoid, catalog_table.oid, 0) as info
        where
          catalog_table.oid >= %s
      $SQL$,
      catalog_class,
      MIN_USER_OID
    );
  end loop;

  /* Handle "sub-objects" (i.e. pg_attribute) separately */
  return query
    select 
      info.type,
      info.schema,
      info.name,
      info.identity,
      col_description(attrelid, attnum) as comment
    from
      pg_attribute,
      lateral pg_identify_object('pg_class'::regclass, attrelid, attnum) as info
    where
      attrelid >= MIN_USER_OID and
      attnum >= 0 and
      not attisdropped;
end
$_$;


ALTER FUNCTION meta_001.describe_all_objects(something text) OWNER TO "armando";

--
-- Name: enadis_able_triggers(boolean, character varying); Type: FUNCTION; Schema: meta_001; Owner: IHSLaMltbFn1
--

CREATE FUNCTION meta_001.enadis_able_triggers(a boolean, nsp character varying) RETURNS void
    LANGUAGE plpgsql
    AS $$
declare 
act character varying;
r   record;
begin
    if( a is true ) then
        act = 'disable';
    else
        act = 'enable';
    end if;

    for r in select c.relname from pg_namespace n
        join pg_class c on c.relnamespace = n.oid and c.relhastriggers = true
        where n.nspname = nsp
    loop
        execute format('alter table %I.%I %s trigger all', nsp,r.relname, act); 
    end loop;
end;
$$;


ALTER FUNCTION meta_001.enadis_able_triggers(a boolean, nsp character varying) OWNER TO "armando";

--
-- Name: explain_this(text); Type: FUNCTION; Schema: meta_001; Owner: IHSLaMltbFn1
--

CREATE FUNCTION meta_001.explain_this(l_query text, OUT explain json) RETURNS SETOF json
    LANGUAGE plpgsql STRICT SECURITY DEFINER
    AS $$
BEGIN
  RETURN QUERY EXECUTE 'explain (format json) ' || l_query;
END;
$$;


ALTER FUNCTION meta_001.explain_this(l_query text, OUT explain json) OWNER TO "armando";

--
-- Name: f_dba_db_changes__public__job__lisa_enabled_date(); Type: FUNCTION; Schema: meta_001; Owner: IHSLaMltbFn1
--

CREATE FUNCTION meta_001.f_dba_db_changes__public__job__lisa_enabled_date() RETURNS void
    LANGUAGE plpgsql
    AS $$ 
declare  
 sqltextof     record;
 v_rows_fnd    integer;
begin
    for sqltextof in select a.sqltext , a.job_id 
                     from  meta_001.v_dba_db_changes__public__job__lisa_enabled_date a
                     --where  a.job_id = coalesce(lisa_enabled_date_job_id,a.job_id)
    loop
      -- v_rows_fnd := v_rows_fnd + 1;
       execute    sqltextof.sqltext;
      -- RAISE NOTICE 'Called meta_001.f_dba_db_changes__public__job__lisa_enabled_date(%) for sql=>(%)', sqltextof.job_id, sqltextof.sqltext;
      end loop;
  commit;
END;
$$;


ALTER FUNCTION meta_001.f_dba_db_changes__public__job__lisa_enabled_date() OWNER TO "armando";

--
-- Name: f_dba_db_changes__public__job__lisa_enabled_date(text); Type: FUNCTION; Schema: meta_001; Owner: IHSLaMltbFn1
--

CREATE FUNCTION meta_001.f_dba_db_changes__public__job__lisa_enabled_date(lisa_enabled_date_job_id text) RETURNS void
    LANGUAGE plpgsql
    AS $$ 
declare  
 sqltextof     record;
 v_rows_fnd    integer;
begin
    for sqltextof in select a.sqltext , a.job_id 
                     from  meta_001.v_dba_db_changes__public__job__lisa_enabled_date a
                     where  a.job_id = coalesce(lisa_enabled_date_job_id,a.job_id)
    loop
       v_rows_fnd := v_rows_fnd + 1;
       execute    sqltextof.sqltext;
       RAISE NOTICE 'Called meta_001.f_dba_db_changes__public__job__lisa_enabled_date(%) for sql=>(%)', sqltextof.job_id, sqltextof.sqltext;
    end loop;
END;
$$;


ALTER FUNCTION meta_001.f_dba_db_changes__public__job__lisa_enabled_date(lisa_enabled_date_job_id text) OWNER TO "armando";

--
-- Name: f_dba_ddlx_get_dependants(oid); Type: FUNCTION; Schema: meta_001; Owner: IHSLaMltbFn1
--

CREATE FUNCTION meta_001.f_dba_ddlx_get_dependants(oid, OUT depth integer, OUT classid regclass, OUT objid oid) RETURNS SETOF record
    LANGUAGE sql
    AS $_$
with recursive 
  tree(depth,classid,objid,objsubid,refclassid,refobjid,refobjsubid,deptype,edges) 
as (
select 1,
       case when r.oid is not null then 'pg_class'::regclass 
            else d.classid::regclass 
       end as classid,
       coalesce(r.ev_class,d.objid) as objid,
       d.objsubid, d.refclassid, d.refobjid,d.refobjsubid, d.deptype,
       array[array[d.refobjid::int,d.objid::int]]
  from pg_depend d
  left join pg_rewrite r on 
       (r.oid = d.objid and r.ev_type = '1' and r.rulename = '_RETURN')
 where d.refobjid = $1 and r.ev_class is distinct from d.refobjid
 union all
select depth+1,
       case when r.oid is not null then 'pg_class'::regclass 
            else d.classid::regclass 
       end as classid,
       coalesce(r.ev_class,d.objid) as objid,
       d.objsubid, d.refclassid, d.refobjid, d.refobjsubid, d.deptype,
       t.edges || array[array[d.refobjid::int,d.objid::int]]
  from tree t
  join pg_depend d on (d.refobjid=t.objid) 
  left join pg_rewrite r on 
       (r.oid = d.objid and r.ev_type = '1' and r.rulename = '_RETURN')
 where r.ev_class is distinct from d.refobjid
   and not ( t.edges @> array[array[d.refobjid::int,d.objid::int]] )
),
ddlx_get_dependants_recursive as (
select distinct 
       depth,
       classid,objid,objsubid,
       refclassid,refobjid,refobjsubid,
       deptype
  from tree
),
q as (
  select distinct depth,classid,objid
    from ddlx_get_dependants_recursive
   where deptype = 'n'
)
select depth,classid,objid 
  from q 
 where (objid,depth) in (select objid,max(depth) from q group by objid)
 order by depth,objid
$_$;


ALTER FUNCTION meta_001.f_dba_ddlx_get_dependants(oid, OUT depth integer, OUT classid regclass, OUT objid oid) OWNER TO "armando";

--
-- Name: f_dba_function_args(character varying, character varying); Type: FUNCTION; Schema: meta_001; Owner: IHSLaMltbFn1
--

CREATE FUNCTION meta_001.f_dba_function_args(funcname character varying, schema character varying, OUT pos integer, OUT direction character, OUT argname character varying, OUT datatype character varying) RETURNS SETOF record
    LANGUAGE plpgsql STABLE STRICT
    AS $$DECLARE
  rettype character varying;
  argtypes oidvector;
  allargtypes oid[];
  argmodes "char"[];
  argnames text[];
  mini integer;
  maxi integer;
BEGIN
  /* get object ID of function */
  SELECT INTO rettype, argtypes, allargtypes, argmodes, argnames
         CASE
         WHEN pg_proc.proretset
         THEN 'setof ' || pg_catalog.format_type(pg_proc.prorettype, NULL)
         ELSE pg_catalog.format_type(pg_proc.prorettype, NULL) END,
         pg_proc.proargtypes,
         pg_proc.proallargtypes,
         pg_proc.proargmodes,
         pg_proc.proargnames
    FROM pg_catalog.pg_proc
         JOIN pg_catalog.pg_namespace
         ON (pg_proc.pronamespace = pg_namespace.oid)
   WHERE pg_proc.prorettype <> 'pg_catalog.cstring'::pg_catalog.regtype
     AND (pg_proc.proargtypes[0] IS NULL
      OR pg_proc.proargtypes[0] <> 'pg_catalog.cstring'::pg_catalog.regtype)
     AND NOT pg_proc.proisagg
     AND pg_proc.proname = funcname
     AND pg_namespace.nspname = schema
     AND pg_catalog.pg_function_is_visible(pg_proc.oid);
  
  /* bail out if not found */
  IF NOT FOUND THEN
    RETURN;
  END IF;
  
  /* return a row for the return value */
  pos = 0;
  direction = 'o'::char;
  argname = 'RETURN VALUE';
  datatype = rettype;
  RETURN NEXT;
  
  /* unfortunately allargtypes is NULL if there are no OUT parameters */
  IF allargtypes IS NULL THEN
    mini = array_lower(argtypes, 1); maxi = array_upper(argtypes, 1);
  ELSE
    mini = array_lower(allargtypes, 1); maxi = array_upper(allargtypes, 1);
  END IF;
  IF maxi < mini THEN RETURN; END IF;
  
  /* loop all the arguments */
  FOR i IN mini .. maxi LOOP
    pos = i - mini + 1;
    IF argnames IS NULL THEN
      argname = NULL;
    ELSE
      argname = argnames[pos];
    END IF;
    IF allargtypes IS NULL THEN
      direction = 'i'::char;
      datatype = pg_catalog.format_type(argtypes[i], NULL);
    ELSE
      direction = argmodes[i];
      datatype = pg_catalog.format_type(allargtypes[i], NULL);
    END IF;
    RETURN NEXT;
  END LOOP;
  
  RETURN;
END;$$;


ALTER FUNCTION meta_001.f_dba_function_args(funcname character varying, schema character varying, OUT pos integer, OUT direction character, OUT argname character varying, OUT datatype character varying) OWNER TO "armando";

--
-- Name: f_dba_gen_random_between(integer, integer); Type: FUNCTION; Schema: meta_001; Owner: IHSLaMltbFn1
--

CREATE FUNCTION meta_001.f_dba_gen_random_between(low integer, high integer) RETURNS integer
    LANGUAGE plpgsql STRICT
    AS $$                                                                                                              
BEGIN                                                                                                           
-- select floor(random()* (9999-8888 + 1) + 8888) rand_int_pwd, 'DEV' envof                                          
   RETURN floor(random()* (high-low + 1) + low);                                                                
END;                                                                                                            
$$;


ALTER FUNCTION meta_001.f_dba_gen_random_between(low integer, high integer) OWNER TO "armando";

--
-- Name: f_dba_gen_random_char(integer); Type: FUNCTION; Schema: meta_001; Owner: IHSLaMltbFn1
--

CREATE FUNCTION meta_001.f_dba_gen_random_char(high integer) RETURNS text
    LANGUAGE plpgsql STRICT
    AS $$ 
BEGIN                                                                                                           
   return array_to_string(array(select substr('ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789',((random()*(36-1)+1)::integer),1) from generate_series(1,high)),'');
END;                                                                                                            
$$;


ALTER FUNCTION meta_001.f_dba_gen_random_char(high integer) OWNER TO "armando";

--
-- Name: f_dba_get_table_definition(character varying, character varying); Type: FUNCTION; Schema: meta_001; Owner: IHSLaMltbFn1
--

CREATE FUNCTION meta_001.f_dba_get_table_definition(p_schema_name character varying, p_table_name character varying) RETURNS SETOF text
    LANGUAGE plpgsql
    AS $_$
BEGIN
    RETURN query 
    WITH table_rec AS (
        SELECT
            c.relname, n.nspname, c.oid
        FROM
            pg_catalog.pg_class c
            LEFT JOIN pg_catalog.pg_namespace n ON n.oid = c.relnamespace
        WHERE
            relkind = 'r'
            AND n.nspname = p_schema_name
            AND c.relname LIKE p_table_name
        ORDER BY
            c.relname
    ),
    col_rec AS (
        SELECT
            a.attname AS colname,
            pg_catalog.format_type(a.atttypid, a.atttypmod) AS coltype,
            a.attrelid AS oid,
            ' DEFAULT ' || (
                SELECT
                    pg_catalog.pg_get_expr(d.adbin, d.adrelid)
                FROM
                    pg_catalog.pg_attrdef d
                WHERE
                    d.adrelid = a.attrelid
                    AND d.adnum = a.attnum
                    AND a.atthasdef) AS column_default_value,
            CASE WHEN a.attnotnull = TRUE THEN
                'NOT NULL'
            ELSE
                'NULL'
            END AS column_not_null,
            a.attnum AS attnum
        FROM
            pg_catalog.pg_attribute a
        WHERE
            a.attnum > 0
            AND NOT a.attisdropped
        ORDER BY
            a.attnum
    ),
    con_rec AS (
        SELECT
            conrelid::regclass::text AS relname,
            n.nspname,
            conname,
            pg_get_constraintdef(c.oid) AS condef,
            contype,
            conrelid AS oid
        FROM
            pg_constraint c
            JOIN pg_namespace n ON n.oid = c.connamespace
    ),
    glue AS (
        SELECT
            format( E'-- %1$I.%2$I definition\n\n-- Drop table\n\n-- DROP TABLE IF EXISTS %1$I.%2$I\n\nCREATE TABLE %1$I.%2$I (\n', table_rec.nspname, table_rec.relname) AS top,
            format( E'\n);\n\n\n-- adempiere.wmv_ghgaudit foreign keys\n\n', table_rec.nspname, table_rec.relname) AS bottom,
            oid
        FROM
            table_rec
    ),
    cols AS (
        SELECT
            string_agg(format('    %I %s%s %s', colname, coltype, column_default_value, column_not_null), E',\n') AS lines,
            oid
        FROM
            col_rec
        GROUP BY
            oid
    ),
    constrnt AS (
        SELECT
            string_agg(format('    CONSTRAINT %s %s', con_rec.conname, con_rec.condef), E',\n') AS lines,
            oid
        FROM
            con_rec
        WHERE
            contype <> 'f'
        GROUP BY
            oid
    ),
    frnkey AS (
        SELECT
            string_agg(format('ALTER TABLE %I.%I ADD CONSTRAINT %s %s', nspname, relname, conname, condef), E';\n') AS lines,
            oid
        FROM
            con_rec
        WHERE
            contype = 'f'
        GROUP BY
            oid
    )
    SELECT
        concat(glue.top, cols.lines, E',\n', constrnt.lines, glue.bottom, frnkey.lines, ';')
    FROM
        glue
        JOIN cols ON cols.oid = glue.oid
        LEFT JOIN constrnt ON constrnt.oid = glue.oid
        LEFT JOIN frnkey ON frnkey.oid = glue.oid;
END;
$_$;


ALTER FUNCTION meta_001.f_dba_get_table_definition(p_schema_name character varying, p_table_name character varying) OWNER TO "armando";

--
-- Name: f_dba_get_table_definition_v2(character varying); Type: FUNCTION; Schema: meta_001; Owner: IHSLaMltbFn1
--

CREATE FUNCTION meta_001.f_dba_get_table_definition_v2(p_table_name character varying) RETURNS text
    LANGUAGE plpgsql
    AS $_$
DECLARE
    v_table_ddl   text;
    column_record record;
BEGIN
    FOR column_record IN 
        SELECT 
            b.nspname as schema_name,
            b.relname as table_name,
            a.attname as column_name,
            pg_catalog.format_type(a.atttypid, a.atttypmod) as column_type,
            CASE WHEN 
                (SELECT substring(pg_catalog.pg_get_expr(d.adbin, d.adrelid) for 128)
                 FROM pg_catalog.pg_attrdef d
                 WHERE d.adrelid = a.attrelid AND d.adnum = a.attnum AND a.atthasdef) IS NOT NULL THEN
                'DEFAULT '|| (SELECT substring(pg_catalog.pg_get_expr(d.adbin, d.adrelid) for 128)
                              FROM pg_catalog.pg_attrdef d
                              WHERE d.adrelid = a.attrelid AND d.adnum = a.attnum AND a.atthasdef)
            ELSE
                ''
            END as column_default_value,
            CASE WHEN a.attnotnull = true THEN 
                'NOT NULL'
            ELSE
                'NULL'
            END as column_not_null,
            a.attnum as attnum,
            e.max_attnum as max_attnum
        FROM 
            pg_catalog.pg_attribute a
            INNER JOIN 
             (SELECT c.oid,
                n.nspname,
                c.relname
              FROM pg_catalog.pg_class c
                   LEFT JOIN pg_catalog.pg_namespace n ON n.oid = c.relnamespace
              WHERE c.relname ~ ('^('||p_table_name||')$')
                AND pg_catalog.pg_table_is_visible(c.oid)
              ORDER BY 2, 3) b
            ON a.attrelid = b.oid
            INNER JOIN 
             (SELECT 
                  a.attrelid,
                  max(a.attnum) as max_attnum
              FROM pg_catalog.pg_attribute a
              WHERE a.attnum > 0 
                AND NOT a.attisdropped
              GROUP BY a.attrelid) e
            ON a.attrelid=e.attrelid
        WHERE a.attnum > 0 
          AND NOT a.attisdropped
        ORDER BY a.attnum
    LOOP
        IF column_record.attnum = 1 THEN
            v_table_ddl:='CREATE TABLE '||column_record.schema_name||'.'||column_record.table_name||' (';
        ELSE
            v_table_ddl:=v_table_ddl||',';
        END IF;

        IF column_record.attnum <= column_record.max_attnum THEN
            v_table_ddl:=v_table_ddl||chr(10)||
                     '    '||column_record.column_name||' '||column_record.column_type||' '||column_record.column_default_value||' '||column_record.column_not_null;
        END IF;
    END LOOP;

    v_table_ddl:=v_table_ddl||');';
    RETURN v_table_ddl;
END;
$_$;


ALTER FUNCTION meta_001.f_dba_get_table_definition_v2(p_table_name character varying) OWNER TO "armando";

--
-- Name: f_dba_get_table_definition_v2(character varying, character varying); Type: FUNCTION; Schema: meta_001; Owner: IHSLaMltbFn1
--

CREATE FUNCTION meta_001.f_dba_get_table_definition_v2(p_schema_name character varying, p_table_name character varying) RETURNS text
    LANGUAGE plpgsql
    AS $_$
DECLARE
    v_table_ddl   text;
    column_record record;
BEGIN
    FOR column_record IN 
        SELECT 
            b.nspname    as schema_name,
            b.relname    as table_name,
            a.attname    as column_name,
            pg_catalog.format_type(a.atttypid, a.atttypmod) 
                         as column_type,
            CASE WHEN 
                (SELECT substring(pg_catalog.pg_get_expr(d.adbin, d.adrelid) for 128)
                   FROM pg_catalog.pg_attrdef d
                  WHERE d.adrelid = a.attrelid AND 
                        d.adnum = a.attnum     AND a.atthasdef) IS NOT NULL then 'DEFAULT '|| 
                              (
                              SELECT substring(pg_catalog.pg_get_expr(d.adbin, d.adrelid) for 128)
                              FROM pg_catalog.pg_attrdef d
                              WHERE d.adrelid = a.attrelid AND d.adnum = a.attnum AND a.atthasdef
                              )
            ELSE
                ''
            END          as column_default_value,
            CASE WHEN a.attnotnull = true THEN 
                'NOT NULL'
            ELSE
                'NULL'
            end          as column_not_null,
            a.attnum     as attnum,
            e.max_attnum as max_attnum
        FROM 
            pg_catalog.pg_attribute a
            INNER JOIN 
                   (SELECT c.oid,
                           n.nspname,
                           c.relname
                      FROM      pg_catalog.pg_class c
                      LEFT JOIN pg_catalog.pg_namespace n 
                      ON n.oid = c.relnamespace
             WHERE  --c.relname = p_table_name  and ---~ ('^('||p_table_name ||')$') and
                    --n.nspname = p_schema_name and ---~ ('^('||p_schema_name||')$') and
                   pg_catalog.pg_table_is_visible(c.oid)
              ORDER BY 2, 3
              ) b
            ON a.attrelid = b.oid
            INNER JOIN 
             (
              SELECT 
                  a.attrelid,
                  max(a.attnum) as max_attnum
              FROM pg_catalog.pg_attribute a
              WHERE a.attnum > 0 
                AND NOT a.attisdropped
              GROUP BY a.attrelid
              ) e
            ON a.attrelid=e.attrelid
        where     b.relname = p_table_name  and ---~ ('^('||p_table_name ||')$') and
                  b.nspname = p_schema_name and ---~ ('^('||p_schema_name||')$') and
                  a.attnum > 0 
          AND NOT a.attisdropped
        ORDER BY a.attnum
    LOOP
        IF column_record.attnum = 1 THEN
            v_table_ddl:='CREATE TABLE '||column_record.schema_name||'.'||column_record.table_name||' (';
        ELSE
            v_table_ddl:=v_table_ddl||',';
        END IF;

        IF column_record.attnum <= column_record.max_attnum THEN
            v_table_ddl:=v_table_ddl||chr(10)||
                     '    '||column_record.column_name||' '||column_record.column_type||' '||column_record.column_default_value||' '||column_record.column_not_null;
        END IF;
    END LOOP;

    v_table_ddl:=v_table_ddl||');';
    RETURN v_table_ddl;
END;
$_$;


ALTER FUNCTION meta_001.f_dba_get_table_definition_v2(p_schema_name character varying, p_table_name character varying) OWNER TO "armando";

--
-- Name: f_debug_trigger_template(); Type: FUNCTION; Schema: meta_001; Owner: IHSLaMltbFn1
--

CREATE FUNCTION meta_001.f_debug_trigger_template() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
     DECLARE
     BEGIN
          RAISE NOTICE 'NEW: %'             , NEW;
          RAISE NOTICE 'TG_RELID: %'        , TG_RELID;
          RAISE NOTICE 'TG_TABLE_SCHEMA: %' , TG_TABLE_SCHEMA;
          RAISE NOTICE 'TG_TABLE_NAME: %'   , TG_TABLE_NAME;
          RAISE NOTICE 'TG_RELNAME: %'      , TG_RELNAME;
          RAISE NOTICE 'TG_OP: %'           , TG_OP;
          RAISE NOTICE 'TG_WHEN: %'         , TG_WHEN;
          RAISE NOTICE 'TG_LEVEL: %'        , TG_LEVEL;
          RAISE NOTICE 'TG_NARGS: %'        , TG_NARGS;
          RAISE NOTICE 'TG_ARGV: %'         , TG_ARGV;
          RAISE NOTICE ' TG_ARGV[0]: %'     , TG_ARGV[0];
          RETURN NEW;
     END;
$$;


ALTER FUNCTION meta_001.f_debug_trigger_template() OWNER TO "armando";

--
-- Name: f_getfunctionparameter(oid); Type: FUNCTION; Schema: meta_001; Owner: IHSLaMltbFn1
--

CREATE FUNCTION meta_001.f_getfunctionparameter(functionoid oid) RETURNS text
    LANGUAGE plpgsql
    AS $$
declare
 t_paras text;
 paras   oid[];
 res  text :='(';
begin
select proargtypes into t_paras from pg_proc where oid=functionOid;
if t_paras is null or t_paras='' then
 return '()';
else
 paras:=string_to_array(t_paras,' ');
 for i in  array_lower(paras,1) .. array_upper(paras,1)
 loop
   raise notice 'para is %',paras[i];
   select format_type(paras[i]::oid,NULL) into t_paras;
   res:=res||t_paras||',';
 end loop;
 res:=substring(res from 1 for char_length(res)-1);
 res:=res||')';
 return res;
end if;
end
$$;


ALTER FUNCTION meta_001.f_getfunctionparameter(functionoid oid) OWNER TO "armando";

--
-- Name: get_stat_statements(boolean); Type: FUNCTION; Schema: meta_001; Owner: IHSLaMltbFn1
--
CREATE EXTENSION pg_stat_statements;

CREATE FUNCTION meta_001.get_stat_statements(showtext boolean DEFAULT true) RETURNS SETOF public.pg_stat_statements
    LANGUAGE sql SECURITY DEFINER
    AS $$
  /* pganalyze-collector */ SELECT * FROM public.pg_stat_statements(showtext);
  /* GRANT USAGE on   SCHEMA   meta_dbo                             TO  api_postgrest; */
  /* GRANT EXECUTE on FUNCTION meta_dbo.get_stat_statements(boolean) TO api_postgrest;*/
 $$;


ALTER FUNCTION meta_001.get_stat_statements(showtext boolean) OWNER TO "armando";

--
-- Name: load_dan_tables(); Type: FUNCTION; Schema: meta_001; Owner: IHSLaMltbFn1
--

CREATE FUNCTION meta_001.load_dan_tables() RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
    dyn_sql1 text; 
    dyn_sql2 text; 
    dyn_sql3 text; 
    dyn_sql4 text; 
    dyn_sql5 text; 
    dyn_sql6 text;    
    dyn_sql7 text; 
    dyn_sql8 text;     
BEGIN 
    dyn_sql1 := 'drop   table meta_001.dan_fnxs';   --as select * from    meta_001.v_dba_function_view_table_dependency
    dyn_sql2 := 'drop   table meta_001.dan_views';  ---as select * FROM meta_001.v_dba_aaa_re_view_definitions_sql 
    dyn_sql3 := 'create table meta_001.dan_fnxs  as select *, now() this_run from meta_001.v_dba_function_view_table_dependency';
    dyn_sql4 := 'create table meta_001.dan_views as select *, now() this_run  FROM meta_001.v_dba_aaa_re_view_definitions_sql';
execute dyn_sql1;
--commit;
execute dyn_sql2;
--commit;
execute dyn_sql3;
--commit;
execute dyn_sql4;
--commit;
    dyn_sql5 := 'alter table meta_001.dan_fnxs  add column  id SERIAL PRIMARY KEY;';
    dyn_sql6 := 'alter table meta_001.dan_views add column  id SERIAL PRIMARY KEY;';
execute dyn_sql5;
--commit;
execute dyn_sql6;
--commit;
    dyn_sql7 := 'alter table meta_001.dan_fnxs  add column  explain_output text';
    dyn_sql8 := 'alter table meta_001.dan_views add column  explain_output text';
execute dyn_sql7;
--commit;
execute dyn_sql8;
--commit;
--dyn_sql1 := 'drop table if exists meta_001.dan_views_explain';
--execute dyn_sql1;
--dyn_sql1 := 'create table  meta_001.dan_views_explain as 
--SELECT id, 
--    ARRAY[meta_001.explain_this(query::text)] AS array_fnd
--   FROM  meta_001.dan_views  where query not like '||chr(39)||'%pg_authid%'||chr(39)||';'; 
--execute dyn_sql1;  
--commit;
end;
$$;


ALTER FUNCTION meta_001.load_dan_tables() OWNER TO "armando";

--
-- Name: oftool_fkey_missing_indexes(); Type: FUNCTION; Schema: meta_001; Owner: IHSLaMltbFn1
--

CREATE FUNCTION meta_001.oftool_fkey_missing_indexes() RETURNS TABLE(src_table regclass, fk_columns character varying, table_size character varying, fk_constraint name, dst_table regclass)
    LANGUAGE sql
    AS $$
select
  -- source table having ta foreign key declaration
  tc.conrelid::regclass as src_table,
  
  -- ordered list of foreign key columns
  string_agg(ta.attname, ',' order by tx.n) as fk_columns,
  
  -- source table size
  pg_catalog.pg_size_pretty (
    pg_catalog.pg_relation_size(tc.conrelid)
  ) as table_size,
  
  -- name of the foreign key constraint
  tc.conname as fk_constraint,
  
  -- name of the target or destination table
  tc.confrelid::regclass as dst_table
  
from pg_catalog.pg_constraint tc

-- enumerated key column numbers per foreign key
cross join lateral unnest(tc.conkey) with ordinality as tx(attnum, n)

-- name for each key column
join pg_catalog.pg_attribute ta on ta.attnum = tx.attnum and ta.attrelid = tc.conrelid

where not exists (
  -- is there ta matching index for the constraint?
  select 1 from pg_catalog.pg_index i
  where 
    i.indrelid = tc.conrelid and 
    -- the first index columns must be the same as the key columns, but order doesn't matter
    (i.indkey::smallint[])[0:cardinality(tc.conkey)-1] @> tc.conkey) and 
    tc.contype = 'f'
  group by 
    tc.conrelid, 
    tc.conname, 
    tc.confrelid
  order by 
    pg_catalog.pg_relation_size(tc.conrelid) desc;
$$;


ALTER FUNCTION meta_001.oftool_fkey_missing_indexes() OWNER TO "armando";

--
-- Name: p_dba_load_stat_statements_snapshots_now(); Type: PROCEDURE; Schema: meta_001; Owner: IHSLaMltbFn1
--

CREATE PROCEDURE meta_001.p_dba_load_stat_statements_snapshots_now()
    LANGUAGE plpgsql
    AS $$ 
 declare 
 begin
   INSERT INTO meta_001.stat_statements_snapshots 
   (userid, dbid, queryid, query, calls, total_time, min_time, max_time, mean_time, stddev_time, "rows", 
   shared_blks_hit, shared_blks_read, shared_blks_dirtied, shared_blks_written, local_blks_hit, local_blks_read, local_blks_dirtied, local_blks_written, temp_blks_read, temp_blks_written, 
   blk_read_time, blk_write_time, ts_cr8td, /*explain_sql,*/ nrd, username, dbname, clean_state) 
   ( select 
   userid, dbid, queryid, query, calls, total_time, min_time, max_time, mean_time, stddev_time, "rows", 
   shared_blks_hit, shared_blks_read, shared_blks_dirtied, shared_blks_written, local_blks_hit, local_blks_read, local_blks_dirtied, local_blks_written, temp_blks_read, temp_blks_written, 
   blk_read_time, blk_write_time,  now()  , /*explain_sql,*/ nrd, username, dbname, clean_state
   from meta_001.v_dba_aaa_pg_stats_statements );
   commit;
end; 
$$;


ALTER PROCEDURE meta_001.p_dba_load_stat_statements_snapshots_now() OWNER TO "armando";

--
-- Name: p_dba_load_winteam_roles_granted_template(); Type: PROCEDURE; Schema: meta_001; Owner: IHSLaMltbFn1
--

 CREATE PROCEDURE meta_001.p_dba_load_winteam_roles_granted_template()
     LANGUAGE plpgsql
     AS $$
 declare
 drowcntr int4;
 irowcntr int4;
 begin
 select count(*) into drowcntr from meta_001.winteam_roles_granted;
 delete from                        meta_001.winteam_roles_granted;
 raise notice 'records deleted from meta_001.winteam_roles_granted : %',drowcntr;
 
 insert into meta_001.winteam_roles_granted (allow_grant ,run_order ,typeof ,environment ,database_name ,schema_name ,table_name ,rolename ,"permission" ,sqltext ,grant_built_on ,grant_successful,exec_order)
 (
 select allow_grant,  run_order,     typeof, environment, database_name,  schema_name, table_name,    rolename   , "permission"  ,
        replace(sqltext,'<TOKEN_USER>',user_type) sqltext , now() grant_built_on, 'N' grant_successful, -1 exec_order
  from  meta_001.v_dba_revoke_all_grants_list_new_users,
   (
     select * from 
     (
     select  allow_grant,  run_order,     typeof, environment, database_name,  schema_name, table_name,    rolename   , "permission"  ,
         'grant '||"permission"||' on FUNCTION '||schema_name||'.'||table_name||' to <TOKEN_USER>;' sqltext
     from meta_001.winteam_roles
      where allow_grant = 'Y' and run_order = 8 order by length(table_name) desc 
     ) abcdef 
     union all
     select  allow_grant,  run_order,     typeof, environment, database_name,  schema_name, 
      replace(replace(table_name,'Winteam_active_employee', chr(34)||'Winteam_active_employee'||chr(34)),'_workflow_status_id','"_workflow_status_id"') table_name,  rolename   , "permission"  ,
          'grant '||"permission"||' on '||schema_name||'.'||
      replace(replace(table_name,'Winteam_active_employee', chr(34)||'Winteam_active_employee'||chr(34)),'_workflow_status_id','"_workflow_status_id"') ||' to <TOKEN_USER>;' sqltext
      from meta_001.winteam_roles
      where allow_grant = 'Y' and run_order <> 8
    ) abc
 );

select count(*) into irowcntr from meta_001.winteam_roles_granted;
raise notice 'records inserted from meta_001.winteam_roles_granted : %',irowcntr;
update meta_001.winteam_roles_granted set sqltext = replace(sqltext, 'information_schema.information_schema.', 'information_schema.' ) where position (  'information_schema.information_schema.'  in sqltext ) > 0; 
update meta_001.winteam_roles_granted set sqltext = replace(sqltext, 'pg_catalog.pg_catalog.'                , 'pg_catalog.'         ) where position (  'pg_catalog.pg_catalog.'                  in sqltext ) > 0;
update meta_001.winteam_roles_granted set sqltext = replace(sqltext,  'admin_001.admin_001.'    , 'admin_001.'  ) where position (  'admin_001.admin_001.'    in sqltext ) > 0;
update meta_001.winteam_roles_granted set sqltext = replace(sqltext,'archive_001.archive_001.'  , 'archive_001.') where position ('archive_001.archive_001.'  in sqltext ) > 0;
update meta_001.winteam_roles_granted set sqltext = replace(sqltext,   'core_001.core_001.'     , 'core_001.'   ) where position (   'core_001.core_001.'     in sqltext ) > 0;
update meta_001.winteam_roles_granted set sqltext = replace(sqltext,   'cron_001.cron_001.'     , 'cron_001.'   ) where position (   'cron_001.cron_001.'     in sqltext ) > 0;
update meta_001.winteam_roles_granted set sqltext = replace(sqltext,   'domo_001.domo_001.'     , 'domo_001.'   ) where position (   'domo_001.domo_001.'     in sqltext ) > 0;
update meta_001.winteam_roles_granted set sqltext = replace(sqltext,    'geo_001.geo_001.'      , 'geo_001.'    ) where position (    'geo_001.geo_001.'      in sqltext ) > 0;
update meta_001.winteam_roles_granted set sqltext = replace(sqltext,     'io_001.io_001.'       , 'io_001.'     ) where position (     'io_001.io_001.'       in sqltext ) > 0;
update meta_001.winteam_roles_granted set sqltext = replace(sqltext,    'log_001.log_001.'      , 'log_001.'    ) where position (    'log_001.log_001.'      in sqltext ) > 0;
update meta_001.winteam_roles_granted set sqltext = replace(sqltext,   'meta_001.meta_001.'     , 'meta_001.'   ) where position (   'meta_001.meta_001.'     in sqltext ) > 0;
update meta_001.winteam_roles_granted set sqltext = replace(sqltext,     'public.public.'       , 'public.'     ) where position (     'public.public.'       in sqltext ) > 0; 
update meta_001.winteam_roles_granted set sqltext = replace(sqltext,'redcell_001.redcell_001.'  , 'redcell_001.') where position ('redcell_001.redcell_001.'  in sqltext ) > 0;
update meta_001.winteam_roles_granted set sqltext = replace(sqltext,    'ref_001.ref_001.'      , 'ref_001.'    ) where position (    'ref_001.ref_001.'      in sqltext ) > 0;
update meta_001.winteam_roles_granted set sqltext = replace(sqltext,   'wfma_001.wfma_001.'     , 'wfma_001.'   ) where position (   'wfma_001.wfma_001.'     in sqltext ) > 0;

exception when others then 
 raise notice 'records errored: %',sqlerrm;
end;
$$;


ALTER PROCEDURE meta_001.p_dba_load_winteam_roles_granted_template() OWNER TO "armando";

--
-- Name: p_dba_load_winteam_roles_template(); Type: PROCEDURE; Schema: meta_001; Owner: IHSLaMltbFn1
--

CREATE PROCEDURE meta_001.p_dba_load_winteam_roles_template()
    LANGUAGE plpgsql
    AS $$
declare
drowcntr int4;
irowcntr int4;
begin
select count(*) into drowcntr from meta_001.winteam_roles;
delete from                        meta_001.winteam_roles;
raise notice 'records deleted from meta_001.winteam_roles : %',drowcntr;
insert into  meta_001.winteam_roles ( run_order, typeof, environment, database_name, schema_name, table_name, rolename , "permission"  , created_by )
(
select   8 ords,  'fnx_exec' , 'dev'  , current_database(),      nspname , function_api,'<TOKEN_USER>' , 'execute'                         , current_user  from ( select distinct  home , nspname , function_api , length(function_api) lenof
                                                                                                                                                              from meta_001.v_dba_revoke_all_grants_list_fnx_re  
                                                                                                                                                             order by length(function_api) desc ) xyz                               union all  
select   3 ords,  'tbl_read' , 'dev'  , current_database(),      s_name  , t_name      ,'<TOKEN_USER>' , 'select'                          , current_user  from meta_001.tables                               where s_name not in ('information_schema', 'pg_catalog') union all 
select   4 ords, 'tbl_write' , 'dev'  , current_database(),      s_name  , t_name      ,'<TOKEN_USER>' , 'select, insert, update, delete'  , current_user  from meta_001.tables                               where s_name not in ('information_schema', 'pg_catalog') union all 
select   5 ords, 'view_read' , 'dev'  , current_database(),      s_name  , v_name      ,'<TOKEN_USER>' , 'select'                          , current_user  from meta_001."views"                              WHERE s_name not in ('information_schema', 'pg_catalog') union all
select   6 ords, 'view_write', 'dev'  , current_database(),      s_name  , v_name      ,'<TOKEN_USER>' , 'select, insert, update, delete'  , current_user  from meta_001."views"                              WHERE s_name not in ('information_schema', 'pg_catalog') union all
select   7 ords,  'seq_read' , 'dev'  , current_database(), object_schema, object_name ,'<TOKEN_USER>' , 'select, usage'                   , current_user  from meta_001.v_dba_revoke_all_grants_list_objects where object_Type = 'SEQUENCE' and db_name = 'wfma' 
);
select count(*) into irowcntr from meta_001.winteam_roles;
raise notice 'records inserted from meta_001.winteam_roles : %',irowcntr;
exception when others then 
 raise notice 'records errored: %',sqlerrm;
end;
$$;


ALTER PROCEDURE meta_001.p_dba_load_winteam_roles_template() OWNER TO "armando";

--
-- Name: trg_t_dba_ddl_history_alter(); Type: FUNCTION; Schema: meta_001; Owner: IHSLaMltbFn1
--

CREATE FUNCTION meta_001.trg_t_dba_ddl_history_alter() RETURNS event_trigger
    LANGUAGE plpgsql
    AS $$
DECLARE
  v1          text;
  appl_name   text;
  audit_query TEXT;
  r           RECORD;
  timesthru   integer :=0;
  v_action    text;
  v_event     text := 'ALTER SQL';
/********     pg_event_trigger_ddl_commands()   pg_event_trigger_ddl_commands returns a list of DDL commands executed by each user action, 
              when invoked in a function attached to a ddl_command_end event trigger. If called in any other context, an error is raised. 
              pg_event_trigger_ddl_commands returns one row for each base command executed; some commands that are a single SQL sentence may return more than one row. 
              This function returns the following columns:
* Name	          Type	          Description
* classid	        oid	            OID of catalog the object belongs in
* objid	          oid	            OID of the object itself
* objsubid	      integer	        Sub-object ID (e.g., attribute number for a column)
* command_tag	    text	          Command tag
* object_type	    text	          Type of the object
* schema_name	    text	          Name of the schema the object belongs in, if any; otherwise NULL. No quoting is applied.
* object_identity	text	          Text rendering of the object identity, schema-qualified. Each identifier included in the identity is quoted if necessary.
* in_extension	  bool	          True if the command is part of an extension script
* command	        pg_ddl_command	A complete representation of the command, in internal format. This cannot be output directly, but it can be passed to other functions to obtain different pieces of information about the command.
******/
BEGIN
     select query , application_name into v1, appl_name from pg_stat_activity where pid=pg_backend_pid();
     v_action := upper(TG_TAG);
     raise notice 'v_action: % TAG=>%',v_action, TG_TAG;
     --insert into meta_001.t_dba_ddl_history (command_tag,schema_name,ddl_event) values (v_action, 'v_action',v_event);
     --insert into meta_001.t_dba_ddl_history (command_tag,schema_name,ddl_event) values (TG_TAG  , 'TG_TAG'  ,v_event);
    IF v_action like  ('ALTER %')
    THEN
      for r in select * from pg_event_trigger_ddl_commands()
      loop
        INSERT INTO META_001.T_DBA_ddl_history   (ddl_date, ddl_tag,       object_name,   object_type, ddl_event,
        classid	     ,objid	       ,objsubid	   ,command_tag	 ,schema_name	 ,in_extension	 ,application_name,query ) VALUES
                                    (statement_timestamp(),  tg_tag, r.object_identity, r.object_type,  TG_EVENT,
        r.classid	   ,r.objid	     ,r.objsubid	 ,r.command_tag,r.schema_name,r.in_extension ,appl_name       , v1	);
        timesthru := timesthru + 1;
      end loop;
    end if;
END;
$$;


ALTER FUNCTION meta_001.trg_t_dba_ddl_history_alter() OWNER TO "armando";

--
-- Name: trg_t_dba_ddl_history_create(); Type: FUNCTION; Schema: meta_001; Owner: IHSLaMltbFn1
--

CREATE FUNCTION meta_001.trg_t_dba_ddl_history_create() RETURNS event_trigger
    LANGUAGE plpgsql
    AS $$
DECLARE
  v1          text;
  appl_name   text;  
  audit_query TEXT;
  r           RECORD;
  timesthru   integer :=0;
  v_action    text;
  v_event     text := 'CREATE SQL';
/********     pg_event_trigger_ddl_commands()   pg_event_trigger_ddl_commands returns a list of DDL commands executed by each user action, 
              when invoked in a function attached to a ddl_command_end event trigger. If called in any other context, an error is raised. 
              pg_event_trigger_ddl_commands returns one row for each base command executed; some commands that are a single SQL sentence may return more than one row. 
              This function returns the following columns:
* Name	          Type	          Description
* classid	        oid	            OID of catalog the object belongs in
* objid	          oid	            OID of the object itself
* objsubid	      integer	        Sub-object ID (e.g., attribute number for a column)
* command_tag	    text	          Command tag
* object_type	    text	          Type of the object
* schema_name	    text	          Name of the schema the object belongs in, if any; otherwise NULL. No quoting is applied.
* object_identity	text	          Text rendering of the object identity, schema-qualified. Each identifier included in the identity is quoted if necessary.
* in_extension	  bool	          True if the command is part of an extension script
* command	        pg_ddl_command	A complete representation of the command, in internal format. This cannot be output directly, but it can be passed to other functions to obtain different pieces of information about the command.
******/
 BEGIN
     select query , application_name into v1, appl_name from pg_stat_activity where pid=pg_backend_pid();
     v_action := upper(TG_TAG);
     raise notice 'v_action: % TAG=>%',v_action, TG_TAG;
     --insert into meta_001.t_dba_ddl_history (command_tag,schema_name,ddl_event) values (v_action, 'v_action',v_event);
     --insert into meta_001.t_dba_ddl_history (command_tag,schema_name,ddl_event) values (TG_TAG  , 'TG_TAG'  ,v_event);
  IF v_action  like  ('CREATE %')
  THEN
    for r in select * from pg_event_trigger_ddl_commands()
    loop
        INSERT INTO META_001.T_DBA_ddl_history   (ddl_date, ddl_tag,       object_name,   object_type, ddl_event,
        classid	     ,objid	       ,objsubid	   ,command_tag	 ,schema_name	 ,in_extension	 ,application_name,query ) VALUES
                                    (statement_timestamp(),  tg_tag, r.object_identity, r.object_type,  TG_EVENT,
        r.classid	   ,r.objid	     ,r.objsubid	 ,r.command_tag,r.schema_name,r.in_extension ,appl_name       , v1	);
      timesthru := timesthru + 1;
    end loop;
  end if;
END;
$$;


ALTER FUNCTION meta_001.trg_t_dba_ddl_history_create() OWNER TO "armando";

--
-- Name: trg_t_dba_ddl_history_drop(); Type: FUNCTION; Schema: meta_001; Owner: IHSLaMltbFn1
--

CREATE FUNCTION meta_001.trg_t_dba_ddl_history_drop() RETURNS event_trigger
    LANGUAGE plpgsql
    AS $$
DECLARE
  v1          text;
  appl_name   text; 
  audit_query TEXT;
  r           RECORD;
  timesthru   integer :=0;
  v_action    text;
  v_event     text := 'DROP SQL';
/***********  pg_event_trigger_dropped_objects returns a list of all objects dropped by the command in whose sql_drop event it is called. 
              If called in any other context, pg_event_trigger_dropped_objects raises an error. pg_event_trigger_dropped_objects returns the following columns:
* Name	          Type	   Description
 * classid	        oid	     OID of catalog the object belonged in
 * objid	          oid	     OID of the object itself
 * objsubid	      integer	 Sub-object ID (e.g., attribute number for a column)
* original	      bool	   True if this was one of the root object(s) of the deletion
* normal	        bool	   True if there was a normal dependency relationship in the dependency graph leading to this object
* is_temporary	  bool	   True if this was a temporary object
 * object_type	    text	   Type of the object
 * schema_name	    text	   Name of the schema the object belonged in, if any; otherwise NULL. No quoting is applied.
* object_name(na)	    text	   Name of the object, if the combination of schema and name can be used as a unique identifier for the object; otherwise NULL. No quoting is applied, and name is never schema-qualified.
 * object_identity	text	   Text rendering of the object identity, schema-qualified. Each identifier included in the identity is quoted if necessary.
* address_names(na)	  text[]	 An array that, together with object_type and address_args, can be used by the pg_get_object_address() function to recreate the object address in a remote server containing an identically named object of the same kind
* address_args(na)	  text[]	 Complement for address_names
*/
 BEGIN
     select query , application_name into v1, appl_name from pg_stat_activity where pid=pg_backend_pid();
     v_action := upper(TG_TAG);
     raise notice 'v_action: % TAG=>%',v_action, TG_TAG;
   --  insert into meta_001.t_dba_ddl_history (command_tag,schema_name,ddl_event) values (v_action, 'v_action',v_event);
   --  insert into meta_001.t_dba_ddl_history (command_tag,schema_name,ddl_event) values (TG_TAG  , 'TG_TAG'  ,v_event);
    IF v_action  like  ('DROP %')
  then
    FOR r IN SELECT * FROM pg_event_trigger_dropped_objects() 
     loop
    INSERT INTO META_001.T_DBA_ddl_history   (ddl_date, ddl_tag,       object_name,   object_type, ddl_event,
    classid	   ,objid	   ,objsubid	  ,schema_name	 	,application_name,query     ) VALUES 
                                (statement_timestamp(),  TG_TAG, r.object_identity, r.object_type,  TG_EVENT,
    r.classid	 ,r.objid	 ,r.objsubid	,r.schema_name	,appl_name       , v1		);                                
    timesthru := timesthru + 1;
    end loop;
  END IF;


END;
$$;


ALTER FUNCTION meta_001.trg_t_dba_ddl_history_drop() OWNER TO "armando";

--
-- Name: v_dba_get_explain_this(text); Type: FUNCTION; Schema: meta_001; Owner: IHSLaMltbFn1
--

CREATE FUNCTION meta_001.v_dba_get_explain_this(l_query text, OUT explain json) RETURNS SETOF json
    LANGUAGE plpgsql STRICT SECURITY DEFINER
    AS $$
BEGIN
  RETURN QUERY EXECUTE 'explain (format json) ' || l_query;
END;
$$;


ALTER FUNCTION meta_001.v_dba_get_explain_this(l_query text, OUT explain json) OWNER TO "armando";

--
-- Name: v_get_view_dependency_99(text, text); Type: FUNCTION; Schema: meta_001; Owner: IHSLaMltbFn1
--

CREATE FUNCTION meta_001.v_get_view_dependency_99(schema_name text, view_name text) RETURNS TABLE(schema_name text, view_name text, level integer)
    LANGUAGE sql
    AS $_$
WITH RECURSIVE view_tree(parent_schema, parent_view, child_schema, child_view, level) as
(
  SELECT
  parent.view_schema,
  parent.view_name ,
  parent.table_schema,
  parent.table_name,
  1
  FROM
  information_schema.view_table_usage parent
  WHERE
  parent.view_schema = $1 AND
  parent.view_name = $2
  UNION ALL
  SELECT
  child.view_schema,
  child.view_name,
  child.table_schema,
  child.table_name,
  parent.level + 1
  FROM
  view_tree parent JOIN information_schema.view_table_usage child ON child.table_schema = parent.parent_schema AND child.table_name = parent.parent_view
)
SELECT DISTINCT
  parent_schema,
  parent_view,
  level
FROM
  (SELECT
    parent_schema,
    parent_view,
    max (level) OVER (PARTITION BY parent_schema, parent_view) as max_level,
    level
  FROM   
    view_tree) AS FOO
WHERE level = max_level;
$_$;


ALTER FUNCTION meta_001.v_get_view_dependency_99(schema_name text, view_name text) OWNER TO "armando";

SET default_tablespace = '';

--
-- Name: b4_reindex_05132021; Type: TABLE; Schema: meta_001; Owner: IHSLaMltbFn1
--

CREATE TABLE meta_001.b4_reindex_05132021 (
    database_name name,
    schema_name name,
    table_name name,
    index_name name,
    bloat_pct numeric,
    bloat_mb numeric,
    index_mb numeric,
    table_mb numeric,
    index_scans bigint,
    fix_sql text
);


ALTER TABLE meta_001.b4_reindex_05132021 OWNER TO "armando";

--
-- Name: backup_before_drop_cascade; Type: TABLE; Schema: meta_001; Owner: IHSLaMltbFn1
--

CREATE TABLE meta_001.backup_before_drop_cascade (
    actionfor text,
    dep_name text,
    level integer,
    ref_name text,
    drop_dep_text text,
    ref_type text,
    dep_source_code text
);


ALTER TABLE meta_001.backup_before_drop_cascade OWNER TO "armando";

--
-- Name: meta_column; Type: TABLE; Schema: meta_001; Owner: IHSLaMltbFn1
--

CREATE TABLE meta_001.meta_column (
    meta_column_id integer NOT NULL,
    s_name name NOT NULL,
    t_name name NOT NULL,
    c_name name NOT NULL,
    data_source text,
    sensitive boolean DEFAULT false NOT NULL
);


ALTER TABLE meta_001.meta_column OWNER TO "armando";

--
-- Name: TABLE meta_column; Type: COMMENT; Schema: meta_001; Owner: IHSLaMltbFn1
--

COMMENT ON TABLE meta_001.meta_column IS 'User definable meta-data at the schema + table + column level.';


--
-- Name: COLUMN meta_column.sensitive; Type: COMMENT; Schema: meta_001; Owner: IHSLaMltbFn1
--

COMMENT ON COLUMN meta_001.meta_column.sensitive IS 'Indicates if the column stores sensitive data.';


--
-- Name: columns; Type: VIEW; Schema: meta_001; Owner: IHSLaMltbFn1
--

CREATE VIEW meta_001.columns AS
 WITH abc AS (
         SELECT n.nspname AS s_name,
                CASE c.relkind
                    WHEN 'r'::"char" THEN 'table'::text
                    WHEN 'v'::"char" THEN 'view'::text
                    WHEN 'm'::"char" THEN 'materialized view'::text
                    WHEN 's'::"char" THEN 'special'::text
                    WHEN 'f'::"char" THEN 'foreign table'::text
                    WHEN 'p'::"char" THEN 'table'::text
                    ELSE NULL::text
                END AS type,
            c.relname AS t_name,
            a.attname AS column_name,
            t.typname AS data_type,
            a.attnum AS "position",
            col_description(c.oid, (a.attnum)::integer) AS description,
            mc.data_source,
            mc.sensitive,
                CASE
                    WHEN ((n.nspname <> ALL (ARRAY['pg_catalog'::name, 'information_schema'::name])) AND (n.nspname !~ '^pg_toast'::text)) THEN false
                    ELSE true
                END AS system_object
           FROM ((((pg_attribute a
             JOIN pg_class c ON ((a.attrelid = c.oid)))
             JOIN pg_namespace n ON ((n.oid = c.relnamespace)))
             JOIN pg_type t ON ((a.atttypid = t.oid)))
             LEFT JOIN meta_001.meta_column mc ON (((n.nspname = mc.s_name) AND (c.relname = mc.t_name) AND (a.attname = mc.c_name))))
          WHERE ((a.attnum > 0) AND (c.relkind = ANY (ARRAY['r'::"char", 'p'::"char", 's'::"char", 'v'::"char", 'f'::"char", 'm'::"char"])))
        )
 SELECT abc.s_name,
    abc.type,
    abc.t_name,
    abc.column_name,
    abc.data_type,
    abc."position",
    abc.description,
    abc.data_source,
    abc.sensitive,
    abc.system_object
   FROM abc
  WHERE (abc.system_object = false);


ALTER TABLE meta_001.columns OWNER TO "armando";

--
-- Name: VIEW columns; Type: COMMENT; Schema: meta_001; Owner: IHSLaMltbFn1
--

COMMENT ON VIEW meta_001.columns IS 'Data dictionary view:  Lists columns in tables';


--
-- Name: COLUMN columns.system_object; Type: COMMENT; Schema: meta_001; Owner: IHSLaMltbFn1
--

COMMENT ON COLUMN meta_001.columns.system_object IS 'Allows to easily show/hide system objects.';


--
-- Name: dan_fnxs; Type: TABLE; Schema: meta_001; Owner: IHSLaMltbFn1
--

CREATE TABLE meta_001.dan_fnxs (
    table_schema information_schema.sql_identifier,
    table_name information_schema.sql_identifier,
    table_full_name text,
    table_type information_schema.character_data,
    function_schema_name name,
    function_name name,
    function_args text,
    function_definition text,
    this_run timestamp with time zone,
    id integer NOT NULL,
    explain_output text
);


ALTER TABLE meta_001.dan_fnxs OWNER TO "armando";

--
-- Name: dan_fnxs_id_seq; Type: SEQUENCE; Schema: meta_001; Owner: IHSLaMltbFn1
--

CREATE SEQUENCE meta_001.dan_fnxs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE meta_001.dan_fnxs_id_seq OWNER TO "armando";

--
-- Name: dan_fnxs_id_seq; Type: SEQUENCE OWNED BY; Schema: meta_001; Owner: IHSLaMltbFn1
--

ALTER SEQUENCE meta_001.dan_fnxs_id_seq OWNED BY meta_001.dan_fnxs.id;


--
-- Name: dan_views; Type: TABLE; Schema: meta_001; Owner: IHSLaMltbFn1
--

CREATE TABLE meta_001.dan_views (
    table_schema name,
    table_owner name,
    table_name name,
    row_count bigint,
    column_count bigint,
    comments text,
    query text,
    explain_query text,
    this_run timestamp with time zone,
    id integer NOT NULL,
    explain_output text
);


ALTER TABLE meta_001.dan_views OWNER TO "armando";

--
-- Name: dan_views_explain; Type: TABLE; Schema: meta_001; Owner: IHSLaMltbFn1
--

CREATE TABLE meta_001.dan_views_explain (
    id integer,
    array_fnd text
);


ALTER TABLE meta_001.dan_views_explain OWNER TO "armando";

--
-- Name: dan_views_id_seq; Type: SEQUENCE; Schema: meta_001; Owner: IHSLaMltbFn1
--

CREATE SEQUENCE meta_001.dan_views_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE meta_001.dan_views_id_seq OWNER TO "armando";

--
-- Name: dan_views_id_seq; Type: SEQUENCE OWNED BY; Schema: meta_001; Owner: IHSLaMltbFn1
--

ALTER SEQUENCE meta_001.dan_views_id_seq OWNED BY meta_001.dan_views.id;


--
-- Name: dependency; Type: VIEW; Schema: meta_001; Owner: IHSLaMltbFn1
--

CREATE VIEW meta_001.dependency AS
 WITH RECURSIVE preference AS (
         SELECT 10 AS max_depth,
            16384 AS min_oid,
            '^(londiste|pgq|pg_toast)'::text AS schema_exclusion,
            '^pg_(conversion|language|ts_(dict|template))'::text AS class_exclusion,
            '{"SCHEMA":"00", "TABLE":"01", "TABLE CONSTRAINT":"02", "DEFAULT VALUE":"03",
        "INDEX":"05", "SEQUENCE":"06", "TRIGGER":"07", "FUNCTION":"08",
        "VIEW":"10", "MATERIALIZED VIEW":"11", "FOREIGN TABLE":"12"}'::json AS type_sort_orders
        ), dependency_pair AS (
         SELECT dep.objid,
            array_agg(dep.objsubid ORDER BY dep.objsubid) AS objsubids,
            upper(obj.type) AS object_type,
            COALESCE(obj.schema, "substring"(obj.identity, '(\w+?)\.'::text), ''::text) AS object_schema,
            obj.name AS object_name,
            obj.identity AS object_identity,
            dep.refobjid,
            array_agg(dep.refobjsubid ORDER BY dep.refobjsubid) AS refobjsubids,
            upper(refobj.type) AS refobj_type,
            COALESCE(
                CASE
                    WHEN (refobj.type = 'schema'::text) THEN refobj.identity
                    ELSE refobj.schema
                END, "substring"(refobj.identity, '(\w+?)\.'::text), ''::text) AS refobj_schema,
            refobj.name AS refobj_name,
            refobj.identity AS refobj_identity,
                CASE dep.deptype
                    WHEN 'n'::"char" THEN 'normal'::text
                    WHEN 'a'::"char" THEN 'automatic'::text
                    WHEN 'i'::"char" THEN 'internal'::text
                    WHEN 'e'::"char" THEN 'extension'::text
                    WHEN 'p'::"char" THEN 'pinned'::text
                    ELSE NULL::text
                END AS dependency_type
           FROM pg_depend dep,
            LATERAL pg_identify_object(dep.classid, dep.objid, 0) obj(type, schema, name, identity),
            LATERAL pg_identify_object(dep.refclassid, dep.refobjid, 0) refobj(type, schema, name, identity),
            preference
          WHERE ((dep.deptype = ANY ('{n,a}'::"char"[])) AND (dep.objid >= (preference.min_oid)::oid) AND ((dep.refobjid >= (preference.min_oid)::oid) OR (dep.refobjid = (2200)::oid)) AND (COALESCE(obj.schema, "substring"(obj.identity, '(\w+?)\.'::text), ''::text) !~ preference.schema_exclusion) AND (COALESCE(
                CASE
                    WHEN (refobj.type = 'schema'::text) THEN refobj.identity
                    ELSE refobj.schema
                END, "substring"(refobj.identity, '(\w+?)\.'::text), ''::text) !~ preference.schema_exclusion))
          GROUP BY dep.objid, obj.type, obj.schema, obj.name, obj.identity, dep.refobjid, refobj.type, refobj.schema, refobj.name, refobj.identity, dep.deptype
        ), dependency_hierarchy AS (
         SELECT DISTINCT 0 AS level,
            root.refobjid AS objid,
            root.refobj_type AS object_type,
            root.refobj_identity AS object_identity,
            NULL::text AS dependency_type,
            ARRAY[root.refobjid] AS dependency_chain,
            ARRAY[concat((preference.type_sort_orders ->> root.refobj_type), root.refobj_type, ':', root.refobj_identity)] AS dependency_sort_chain
           FROM dependency_pair root,
            preference
          WHERE ((NOT (EXISTS ( SELECT 'x'::text
                   FROM dependency_pair branch
                  WHERE (branch.objid = root.refobjid)))) AND (root.refobj_schema !~ preference.schema_exclusion))
        UNION ALL
         SELECT (parent.level + 1) AS level,
            child.objid,
            child.object_type,
            child.object_identity,
            child.dependency_type,
            (parent.dependency_chain || child.objid),
            (parent.dependency_sort_chain || concat((preference.type_sort_orders ->> child.object_type), child.object_type, ':', child.object_identity))
           FROM (dependency_pair child
             JOIN dependency_hierarchy parent ON ((parent.objid = child.refobjid))),
            preference
          WHERE ((parent.level < preference.max_depth) AND (child.object_schema !~ preference.schema_exclusion) AND (child.refobj_schema !~ preference.schema_exclusion) AND (NOT (child.objid = ANY (parent.dependency_chain))))
        )
 SELECT dependency_hierarchy.level,
    dependency_hierarchy.objid,
    dependency_hierarchy.object_type,
    dependency_hierarchy.object_identity,
    dependency_hierarchy.dependency_type,
    dependency_hierarchy.dependency_chain,
    dependency_hierarchy.dependency_sort_chain
   FROM dependency_hierarchy
  ORDER BY dependency_hierarchy.dependency_chain;


ALTER TABLE meta_001.dependency OWNER TO "armando";

--
-- Name: dependency1; Type: VIEW; Schema: meta_001; Owner: IHSLaMltbFn1
--

CREATE VIEW meta_001.dependency1 AS
 WITH RECURSIVE preference AS (
         SELECT 10 AS max_depth,
            16384 AS min_oid,
            '^(londiste|pgq|pg_toast)'::text AS schema_exclusion,
            '^pg_(conversion|language|ts_(dict|template))'::text AS class_exclusion,
            '{"SCHEMA":"00", "TABLE":"01", "TABLE CONSTRAINT":"02", "DEFAULT VALUE":"03",                                                                                                                                                                                                              
        "INDEX":"05", "SEQUENCE":"06", "TRIGGER":"07", "FUNCTION":"08",                                                                                                                                                                                                                                
        "VIEW":"10", "MATERIALIZED VIEW":"11", "FOREIGN TABLE":"12"}'::json AS type_sort_orders
        ), dependency_pair AS (
         SELECT dep.objid,
            array_agg(dep.objsubid ORDER BY dep.objsubid) AS objsubids,
            upper(obj.type) AS object_type,
            COALESCE(obj.schema, "substring"(obj.identity, '(\w+?)\.'::text), ''::text) AS object_schema,
            obj.name AS object_name,
            obj.identity AS object_identity,
            dep.refobjid,
            array_agg(dep.refobjsubid ORDER BY dep.refobjsubid) AS refobjsubids,
            upper(refobj.type) AS refobj_type,
            COALESCE(
                CASE
                    WHEN (refobj.type = 'schema'::text) THEN refobj.identity
                    ELSE refobj.schema
                END, "substring"(refobj.identity, '(\w+?)\.'::text), ''::text) AS refobj_schema,
            refobj.name AS refobj_name,
            refobj.identity AS refobj_identity,
                CASE dep.deptype
                    WHEN 'n'::"char" THEN 'normal'::text
                    WHEN 'a'::"char" THEN 'automatic'::text
                    WHEN 'i'::"char" THEN 'internal'::text
                    WHEN 'e'::"char" THEN 'extension'::text
                    WHEN 'p'::"char" THEN 'pinned'::text
                    ELSE NULL::text
                END AS dependency_type
           FROM pg_depend dep,
            LATERAL pg_identify_object(dep.classid, dep.objid, 0) obj(type, schema, name, identity),
            LATERAL pg_identify_object(dep.refclassid, dep.refobjid, 0) refobj(type, schema, name, identity),
            preference
          WHERE ((dep.deptype = ANY ('{n,a}'::"char"[])) AND (dep.objid >= (preference.min_oid)::oid) AND ((dep.refobjid >= (preference.min_oid)::oid) OR (dep.refobjid = (2200)::oid)) AND (COALESCE(obj.schema, "substring"(obj.identity, '(\w+?)\.'::text), ''::text) !~ preference.schema_exclusion) AND (COALESCE(
                CASE
                    WHEN (refobj.type = 'schema'::text) THEN refobj.identity
                    ELSE refobj.schema
                END, "substring"(refobj.identity, '(\w+?)\.'::text), ''::text) !~ preference.schema_exclusion))
          GROUP BY dep.objid, obj.type, obj.schema, obj.name, obj.identity, dep.refobjid, refobj.type, refobj.schema, refobj.name, refobj.identity, dep.deptype
        ), dependency_hierarchy AS (
         SELECT DISTINCT 0 AS level,
            root.refobjid AS objid,
            root.refobj_type AS object_type,
            root.refobj_identity AS object_identity,
            NULL::text AS dependency_type,
            ARRAY[root.refobjid] AS dependency_chain,
            ARRAY[concat((preference.type_sort_orders ->> root.refobj_type), root.refobj_type, ':', root.refobj_identity)] AS dependency_sort_chain
           FROM dependency_pair root,
            preference
          WHERE ((NOT (EXISTS ( SELECT 'x'::text AS text
                   FROM dependency_pair branch
                  WHERE (branch.objid = root.refobjid)))) AND (root.refobj_schema !~ preference.schema_exclusion))
        UNION ALL
         SELECT (parent.level + 1) AS level,
            child.objid,
            child.object_type,
            child.object_identity,
            child.dependency_type,
            (parent.dependency_chain || child.objid),
            (parent.dependency_sort_chain || concat((preference.type_sort_orders ->> child.object_type), child.object_type, ':', child.object_identity))
           FROM (dependency_pair child
             JOIN dependency_hierarchy parent ON ((parent.objid = child.refobjid))),
            preference
          WHERE ((parent.level < preference.max_depth) AND (child.object_schema !~ preference.schema_exclusion) AND (child.refobj_schema !~ preference.schema_exclusion) AND (NOT (child.objid = ANY (parent.dependency_chain))))
        ), cast_str AS (
         SELECT dependency_hierarchy.level,
            dependency_hierarchy.objid,
            dependency_hierarchy.object_type,
            dependency_hierarchy.object_identity,
            dependency_hierarchy.dependency_type,
            (dependency_hierarchy.dependency_chain)::text AS dependency_chain,
            (dependency_hierarchy.dependency_sort_chain)::text AS dependency_sort_chain
           FROM dependency_hierarchy
        )
 SELECT cast_str.level,
    cast_str.objid,
    cast_str.object_type,
    cast_str.object_identity,
    cast_str.dependency_type,
    replace(replace(cast_str.dependency_chain, '{'::text, ''::text), '}'::text, ''::text) AS dependency_chain,
    replace(replace(cast_str.dependency_sort_chain, '{'::text, ''::text), '}'::text, ''::text) AS dependency_sort_chain
   FROM cast_str
  ORDER BY cast_str.dependency_chain;


ALTER TABLE meta_001.dependency1 OWNER TO "armando";

--
-- Name: deps_saved_ddl; Type: TABLE; Schema: meta_001; Owner: IHSLaMltbFn1
--

CREATE TABLE meta_001.deps_saved_ddl (
    src_nsp_name name NOT NULL,
    src_rel_name name NOT NULL,
    dep_nsp_name name NOT NULL,
    dep_rel_name name NOT NULL,
    ddl_order integer NOT NULL,
    ddl_statement text,
    ddl_at timestamp with time zone DEFAULT now()
);


ALTER TABLE meta_001.deps_saved_ddl OWNER TO "armando";

--
-- Name: event; Type: TABLE; Schema: meta_001; Owner: IHSLaMltbFn1
--

CREATE TABLE meta_001.event (
    created_on timestamp with time zone DEFAULT now() NOT NULL,
    user_id bigint NOT NULL,
    data jsonb NOT NULL
)
PARTITION BY RANGE (created_on);


ALTER TABLE meta_001.event OWNER TO "armando";

--
-- Name: event_y2020m05; Type: TABLE; Schema: meta_001; Owner: IHSLaMltbFn1
--

CREATE TABLE meta_001.event_y2020m05 (
    created_on timestamp with time zone DEFAULT now() NOT NULL,
    user_id bigint NOT NULL,
    data jsonb NOT NULL
);
ALTER TABLE ONLY meta_001.event ATTACH PARTITION meta_001.event_y2020m05 FOR VALUES FROM ('2020-05-01 07:00:00+00') TO ('2020-06-01 07:00:00+00');


ALTER TABLE meta_001.event_y2020m05 OWNER TO "armando";

--
-- Name: functions; Type: VIEW; Schema: meta_001; Owner: IHSLaMltbFn1
--

CREATE VIEW meta_001.functions AS
 SELECT n.nspname AS s_name,
    p.proname AS f_name,
    pg_get_function_result(p.oid) AS result_data_types,
    pg_get_function_arguments(p.oid) AS argument_data_types,
    pg_get_userbyid(p.proowner) AS "Owner",
        CASE
            WHEN p.prosecdef THEN 'definer'::text
            ELSE 'invoker'::text
        END AS proc_security,
    array_to_string(p.proacl, ''::text) AS access_privileges,
    l.lanname AS proc_language,
    p.prosrc AS source_code,
    obj_description(p.oid, 'pg_proc'::name) AS description,
        CASE
            WHEN (n.nspname <> ALL (ARRAY['pg_catalog'::name, 'information_schema'::name])) THEN false
            ELSE true
        END AS system_object
   FROM ((pg_proc p
     LEFT JOIN pg_namespace n ON ((n.oid = p.pronamespace)))
     LEFT JOIN pg_language l ON ((l.oid = p.prolang)));


ALTER TABLE meta_001.functions OWNER TO "armando";

--
-- Name: VIEW functions; Type: COMMENT; Schema: meta_001; Owner: IHSLaMltbFn1
--

COMMENT ON VIEW meta_001.functions IS 'Data dictionary view:  Lists functions (procedures)';


--
-- Name: COLUMN functions.system_object; Type: COMMENT; Schema: meta_001; Owner: IHSLaMltbFn1
--

COMMENT ON COLUMN meta_001.functions.system_object IS 'Allows to easily show/hide system objects.';


--
-- Name: log_audit_runs; Type: TABLE; Schema: meta_001; Owner: IHSLaMltbFn1
--

CREATE TABLE meta_001.log_audit_runs (
    id integer NOT NULL,
    action_taken character varying(100),
    timeof timestamp without time zone DEFAULT now(),
    action character varying(100),
    CONSTRAINT log_audit_runs_action_check CHECK (((action)::text = ANY (ARRAY[('STARTTIME'::character varying)::text, ('RUNNING'::character varying)::text, ('ENDED'::character varying)::text])))
);


ALTER TABLE meta_001.log_audit_runs OWNER TO "armando";

--
-- Name: log_audit_runs_id_seq; Type: SEQUENCE; Schema: meta_001; Owner: IHSLaMltbFn1
--

CREATE SEQUENCE meta_001.log_audit_runs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE meta_001.log_audit_runs_id_seq OWNER TO "armando";

--
-- Name: log_audit_runs_id_seq; Type: SEQUENCE OWNED BY; Schema: meta_001; Owner: IHSLaMltbFn1
--

ALTER SEQUENCE meta_001.log_audit_runs_id_seq OWNED BY meta_001.log_audit_runs.id;


--
-- Name: meta_column_meta_column_id_seq; Type: SEQUENCE; Schema: meta_001; Owner: IHSLaMltbFn1
--

CREATE SEQUENCE meta_001.meta_column_meta_column_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE meta_001.meta_column_meta_column_id_seq OWNER TO "armando";

--
-- Name: meta_column_meta_column_id_seq; Type: SEQUENCE OWNED BY; Schema: meta_001; Owner: IHSLaMltbFn1
--

ALTER SEQUENCE meta_001.meta_column_meta_column_id_seq OWNED BY meta_001.meta_column.meta_column_id;


--
-- Name: meta_schema; Type: TABLE; Schema: meta_001; Owner: IHSLaMltbFn1
--

CREATE TABLE meta_001.meta_schema (
    meta_schema_id integer NOT NULL,
    s_name name NOT NULL,
    data_source text,
    sensitive boolean NOT NULL
);


ALTER TABLE meta_001.meta_schema OWNER TO "armando";

--
-- Name: TABLE meta_schema; Type: COMMENT; Schema: meta_001; Owner: IHSLaMltbFn1
--

COMMENT ON TABLE meta_001.meta_schema IS 'User definable meta-data at the schema level.';


--
-- Name: COLUMN meta_schema.s_name; Type: COMMENT; Schema: meta_001; Owner: IHSLaMltbFn1
--

COMMENT ON COLUMN meta_001.meta_schema.s_name IS 'Schema name.';


--
-- Name: meta_schema_meta_schema_id_seq; Type: SEQUENCE; Schema: meta_001; Owner: IHSLaMltbFn1
--

CREATE SEQUENCE meta_001.meta_schema_meta_schema_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE meta_001.meta_schema_meta_schema_id_seq OWNER TO "armando";

--
-- Name: meta_schema_meta_schema_id_seq; Type: SEQUENCE OWNED BY; Schema: meta_001; Owner: IHSLaMltbFn1
--

ALTER SEQUENCE meta_001.meta_schema_meta_schema_id_seq OWNED BY meta_001.meta_schema.meta_schema_id;


--
-- Name: meta_table; Type: TABLE; Schema: meta_001; Owner: IHSLaMltbFn1
--

CREATE TABLE meta_001.meta_table (
    meta_table_id integer NOT NULL,
    s_name name NOT NULL,
    t_name name NOT NULL,
    data_source text,
    sensitive boolean DEFAULT false NOT NULL
);


ALTER TABLE meta_001.meta_table OWNER TO "armando";

--
-- Name: TABLE meta_table; Type: COMMENT; Schema: meta_001; Owner: IHSLaMltbFn1
--

COMMENT ON TABLE meta_001.meta_table IS 'User definable meta-data at the schema + table level.';


--
-- Name: meta_table_meta_table_id_seq; Type: SEQUENCE; Schema: meta_001; Owner: IHSLaMltbFn1
--

CREATE SEQUENCE meta_001.meta_table_meta_table_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE meta_001.meta_table_meta_table_id_seq OWNER TO "armando";

--
-- Name: meta_table_meta_table_id_seq; Type: SEQUENCE OWNED BY; Schema: meta_001; Owner: IHSLaMltbFn1
--

ALTER SEQUENCE meta_001.meta_table_meta_table_id_seq OWNED BY meta_001.meta_table.meta_table_id;


--
-- Name: winteam_roles_granted; Type: TABLE; Schema: meta_001; Owner: IHSLaMltbFn1
--

CREATE TABLE meta_001.winteam_roles_granted (
    id integer NOT NULL,
    allow_grant text,
    run_order integer,
    typeof text,
    environment text,
    database_name text,
    schema_name text,
    table_name text,
    rolename text,
    permission text,
    sqltext text,
    grant_built_on timestamp with time zone,
    grant_successful text,
    exec_order integer,
    error_msg text
);


ALTER TABLE meta_001.winteam_roles_granted OWNER TO "armando";

--
-- Name: p_dba_load_winteam_roles_granted_templ_chk; Type: VIEW; Schema: meta_001; Owner: IHSLaMltbFn1
--

CREATE VIEW meta_001.p_dba_load_winteam_roles_granted_templ_chk AS
 SELECT count(*) AS count,
    '-1'::text AS label1
   FROM meta_001.winteam_roles_granted
  WHERE ("position"(winteam_roles_granted.sqltext, 'information_schema.information_schema.'::text) > 0)
UNION ALL
 SELECT count(*) AS count,
    '-2'::text AS label1
   FROM meta_001.winteam_roles_granted
  WHERE ("position"(winteam_roles_granted.sqltext, 'pg_catalog.pg_catalog.'::text) > 0)
UNION ALL
 SELECT count(*) AS count,
    '1'::text AS label1
   FROM meta_001.winteam_roles_granted
  WHERE ("position"(winteam_roles_granted.sqltext, 'admin_001.admin_001.'::text) > 0)
UNION ALL
 SELECT count(*) AS count,
    '2'::text AS label1
   FROM meta_001.winteam_roles_granted
  WHERE ("position"(winteam_roles_granted.sqltext, 'archive_001.archive_001.'::text) > 0)
UNION ALL
 SELECT count(*) AS count,
    '3'::text AS label1
   FROM meta_001.winteam_roles_granted
  WHERE ("position"(winteam_roles_granted.sqltext, 'core_001.core_001.'::text) > 0)
UNION ALL
 SELECT count(*) AS count,
    '4'::text AS label1
   FROM meta_001.winteam_roles_granted
  WHERE ("position"(winteam_roles_granted.sqltext, 'cron_001.cron_001.'::text) > 0)
UNION ALL
 SELECT count(*) AS count,
    '5'::text AS label1
   FROM meta_001.winteam_roles_granted
  WHERE ("position"(winteam_roles_granted.sqltext, 'domo_001.domo_001.'::text) > 0)
UNION ALL
 SELECT count(*) AS count,
    '6'::text AS label1
   FROM meta_001.winteam_roles_granted
  WHERE ("position"(winteam_roles_granted.sqltext, 'geo_001.geo_001.'::text) > 0)
UNION ALL
 SELECT count(*) AS count,
    '7'::text AS label1
   FROM meta_001.winteam_roles_granted
  WHERE ("position"(winteam_roles_granted.sqltext, 'io_001.io_001.'::text) > 0)
UNION ALL
 SELECT count(*) AS count,
    '8'::text AS label1
   FROM meta_001.winteam_roles_granted
  WHERE ("position"(winteam_roles_granted.sqltext, 'log_001.log_001.'::text) > 0)
UNION ALL
 SELECT count(*) AS count,
    '9'::text AS label1
   FROM meta_001.winteam_roles_granted
  WHERE ("position"(winteam_roles_granted.sqltext, 'meta_001.meta_001.'::text) > 0)
UNION ALL
 SELECT count(*) AS count,
    '10'::text AS label1
   FROM meta_001.winteam_roles_granted
  WHERE ("position"(winteam_roles_granted.sqltext, 'public.public.'::text) > 0)
UNION ALL
 SELECT count(*) AS count,
    '11'::text AS label1
   FROM meta_001.winteam_roles_granted
  WHERE ("position"(winteam_roles_granted.sqltext, 'redcell_001.redcell_001.'::text) > 0)
UNION ALL
 SELECT count(*) AS count,
    '12'::text AS label1
   FROM meta_001.winteam_roles_granted
  WHERE ("position"(winteam_roles_granted.sqltext, 'ref_001.ref_001.'::text) > 0)
UNION ALL
 SELECT count(*) AS count,
    '13'::text AS label1
   FROM meta_001.winteam_roles_granted
  WHERE ("position"(winteam_roles_granted.sqltext, 'wfma_001.wfma_001.'::text) > 0);


ALTER TABLE meta_001.p_dba_load_winteam_roles_granted_templ_chk OWNER TO "armando";

--
-- Name: schemas; Type: VIEW; Schema: meta_001; Owner: IHSLaMltbFn1
--

CREATE VIEW meta_001.schemas AS
 WITH s AS (
         SELECT n.oid,
            n.nspname AS s_name,
            pg_get_userbyid(n.nspowner) AS owner,
            ms.data_source,
            ms.sensitive,
            obj_description(n.oid, 'pg_namespace'::name) AS description,
                CASE
                    WHEN ((n.nspname !~ '^pg_'::text) AND (n.nspname <> ALL (ARRAY['pg_catalog'::name, 'information_schema'::name]))) THEN false
                    ELSE true
                END AS system_object
           FROM (pg_namespace n
             LEFT JOIN meta_001.meta_schema ms ON ((n.nspname = ms.s_name)))
        ), f AS (
         SELECT n.nspname AS s_name,
            count(DISTINCT p.oid) AS function_count
           FROM (pg_proc p
             JOIN pg_namespace n ON ((n.oid = p.pronamespace)))
          GROUP BY n.nspname
        ), v AS (
         SELECT n.nspname AS s_name,
            count(DISTINCT c_1.oid) AS view_count
           FROM (pg_class c_1
             JOIN pg_namespace n ON ((n.oid = c_1.relnamespace)))
          WHERE (c_1.relkind = ANY (ARRAY['v'::"char", 'm'::"char"]))
          GROUP BY n.nspname
        )
 SELECT s.s_name,
    s.owner,
    s.data_source,
    s.sensitive,
    s.description,
    s.system_object,
    COALESCE(count(c.*), (0)::bigint) AS table_count,
    COALESCE(v.view_count, (0)::bigint) AS view_count,
    COALESCE(f.function_count, (0)::bigint) AS function_count,
    pg_size_pretty(sum(pg_table_size((c.oid)::regclass))) AS size_pretty,
    pg_size_pretty(sum(pg_total_relation_size((c.oid)::regclass))) AS size_plus_indexes,
    sum(pg_table_size((c.oid)::regclass)) AS size_bytes
   FROM (((s
     LEFT JOIN pg_class c ON (((s.oid = c.relnamespace) AND (c.relkind = ANY (ARRAY['r'::"char", 'p'::"char"])))))
     LEFT JOIN f ON ((f.s_name = s.s_name)))
     LEFT JOIN v ON ((v.s_name = s.s_name)))
  GROUP BY s.s_name, s.owner, s.data_source, s.sensitive, s.description, s.system_object, v.view_count, f.function_count;


ALTER TABLE meta_001.schemas OWNER TO "armando";

--
-- Name: VIEW schemas; Type: COMMENT; Schema: meta_001; Owner: IHSLaMltbFn1
--

COMMENT ON VIEW meta_001.schemas IS 'Data dictionary view:  Lists schemas';


--
-- Name: COLUMN schemas.system_object; Type: COMMENT; Schema: meta_001; Owner: IHSLaMltbFn1
--

COMMENT ON COLUMN meta_001.schemas.system_object IS 'Allows to easily show/hide system objects.';


--
-- Name: COLUMN schemas.size_pretty; Type: COMMENT; Schema: meta_001; Owner: IHSLaMltbFn1
--

COMMENT ON COLUMN meta_001.schemas.size_pretty IS 'Size (pretty) of data and TOAST.  Does not include indexes. Suitable for display';


--
-- Name: COLUMN schemas.size_plus_indexes; Type: COMMENT; Schema: meta_001; Owner: IHSLaMltbFn1
--

COMMENT ON COLUMN meta_001.schemas.size_plus_indexes IS 'Total size (pretty) of data, TOAST, and indexes.  Suitable for display';


--
-- Name: COLUMN schemas.size_bytes; Type: COMMENT; Schema: meta_001; Owner: IHSLaMltbFn1
--

COMMENT ON COLUMN meta_001.schemas.size_bytes IS 'Size (bytes) of data and TOAST.  Does not include indexes. Suitable for sorting. ';


--
-- Name: sequence_table_map; Type: TABLE; Schema: meta_001; Owner: IHSLaMltbFn1
--

CREATE TABLE meta_001.sequence_table_map (
    id integer NOT NULL,
    schema_name character varying(50) NOT NULL,
    table_name character varying(50) NOT NULL,
    sequence_name character varying(50) DEFAULT '<TABLE_NAME>_SEQ'::character varying,
    pk_col character varying(50) DEFAULT '<TABLE_NAME>_ID'::character varying,
    uk_column character varying(50) DEFAULT 'name'::character varying,
    ttype character varying(100) DEFAULT '<REF>'::character varying,
    ownerof character varying(100),
    appof character varying(100),
    aud_cols character varying(4000) DEFAULT 'operation, stamp ,userid ,id ,name ,description, created_at ,updated_at , metadata'::character varying NOT NULL
);


ALTER TABLE meta_001.sequence_table_map OWNER TO "armando";

--
-- Name: sequence_table_map_id_seq; Type: SEQUENCE; Schema: meta_001; Owner: IHSLaMltbFn1
--

CREATE SEQUENCE meta_001.sequence_table_map_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE meta_001.sequence_table_map_id_seq OWNER TO "armando";

--
-- Name: sequence_table_map_id_seq; Type: SEQUENCE OWNED BY; Schema: meta_001; Owner: IHSLaMltbFn1
--

ALTER SEQUENCE meta_001.sequence_table_map_id_seq OWNED BY meta_001.sequence_table_map.id;


--
-- Name: stat_statements_snapshots; Type: TABLE; Schema: meta_001; Owner: IHSLaMltbFn1
--

CREATE TABLE meta_001.stat_statements_snapshots (
    nrd text,
    username text,
    dbname text,
    clean_state text,
    ts_cr8td timestamp with time zone,
    userid oid,
    dbid oid,
    queryid bigint,
    query text,
    calls bigint,
    total_time double precision,
    min_time double precision,
    max_time double precision,
    mean_time double precision,
    stddev_time double precision,
    rows bigint,
    shared_blks_hit bigint,
    shared_blks_read bigint,
    shared_blks_dirtied bigint,
    shared_blks_written bigint,
    local_blks_hit bigint,
    local_blks_read bigint,
    local_blks_dirtied bigint,
    local_blks_written bigint,
    temp_blks_read bigint,
    temp_blks_written bigint,
    blk_read_time double precision,
    blk_write_time double precision,
    explain_sql jsonb
);


ALTER TABLE meta_001.stat_statements_snapshots OWNER TO "armando";

--
-- Name: t_dba_ddl_history; Type: TABLE; Schema: meta_001; Owner: IHSLaMltbFn1
--

CREATE TABLE meta_001.t_dba_ddl_history (
    id integer NOT NULL,
    ddl_date timestamp with time zone,
    ddl_tag text,
    object_name text,
    object_type text,
    ddl_event text,
    classid oid,
    objid oid,
    objsubid integer,
    command_tag text,
    schema_name text,
    in_extension boolean,
    object_sql text,
    original boolean,
    normal boolean,
    is_temporary boolean,
    address_names text[],
    address_args text[],
    xid bigint DEFAULT txid_current(),
    username text DEFAULT CURRENT_USER,
    datname text DEFAULT current_database(),
    client_addr inet DEFAULT inet_client_addr(),
    client_port integer DEFAULT inet_client_port(),
    table_rewrite_oid oid,
    table_rewrite_reason integer,
    query text,
    application_name text
);


ALTER TABLE meta_001.t_dba_ddl_history OWNER TO "armando";

--
-- Name: t_dba_ddl_history_id_seq; Type: SEQUENCE; Schema: meta_001; Owner: IHSLaMltbFn1
--

CREATE SEQUENCE meta_001.t_dba_ddl_history_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE meta_001.t_dba_ddl_history_id_seq OWNER TO "armando";

--
-- Name: t_dba_ddl_history_id_seq; Type: SEQUENCE OWNED BY; Schema: meta_001; Owner: IHSLaMltbFn1
--

ALTER SEQUENCE meta_001.t_dba_ddl_history_id_seq OWNED BY meta_001.t_dba_ddl_history.id;


--
-- Name: tables; Type: VIEW; Schema: meta_001; Owner: IHSLaMltbFn1
--

CREATE VIEW meta_001.tables AS
 SELECT n.nspname AS s_name,
    c.relname AS t_name,
        CASE
            WHEN (c.relkind = ANY (ARRAY['r'::"char", 'p'::"char"])) THEN 'table'::text
            WHEN (c.relkind = 's'::"char") THEN 'special'::text
            WHEN (c.relkind = 'f'::"char") THEN 'foreign table'::text
            ELSE NULL::text
        END AS type,
    pg_get_userbyid(c.relowner) AS owner,
    pg_size_pretty(pg_table_size((c.oid)::regclass)) AS size_pretty,
    pg_table_size((c.oid)::regclass) AS size_bytes,
    c.reltuples AS rows,
        CASE
            WHEN (c.reltuples > (0)::double precision) THEN ((pg_table_size((c.oid)::regclass))::double precision / c.reltuples)
            ELSE NULL::double precision
        END AS bytes_per_row,
    pg_size_pretty(pg_total_relation_size((c.oid)::regclass)) AS size_plus_indexes,
    obj_description(c.oid, 'pg_class'::name) AS description,
        CASE
            WHEN ((n.nspname !~ '^pg_toast'::text) AND (n.nspname <> ALL (ARRAY['pg_catalog'::name, 'information_schema'::name]))) THEN false
            ELSE true
        END AS system_object,
    mt.data_source,
    mt.sensitive
   FROM ((pg_class c
     LEFT JOIN pg_namespace n ON ((n.oid = c.relnamespace)))
     LEFT JOIN meta_001.meta_table mt ON (((n.nspname = mt.s_name) AND (c.relname = mt.t_name))))
  WHERE (c.relkind = ANY (ARRAY['r'::"char", 'p'::"char", 's'::"char", 'f'::"char"]));


ALTER TABLE meta_001.tables OWNER TO "armando";

--
-- Name: VIEW tables; Type: COMMENT; Schema: meta_001; Owner: IHSLaMltbFn1
--

COMMENT ON VIEW meta_001.tables IS 'Data dictionary view:  Lists tables';


--
-- Name: COLUMN tables.size_pretty; Type: COMMENT; Schema: meta_001; Owner: IHSLaMltbFn1
--

COMMENT ON COLUMN meta_001.tables.size_pretty IS 'Size (pretty) of data and TOAST.  Does not include indexes. Suitable for display';


--
-- Name: COLUMN tables.size_bytes; Type: COMMENT; Schema: meta_001; Owner: IHSLaMltbFn1
--

COMMENT ON COLUMN meta_001.tables.size_bytes IS 'Size (bytes) of data and TOAST.  Does not include indexes. Suitable for sorting. ';


--
-- Name: COLUMN tables.size_plus_indexes; Type: COMMENT; Schema: meta_001; Owner: IHSLaMltbFn1
--

COMMENT ON COLUMN meta_001.tables.size_plus_indexes IS 'Total size (pretty) of data, TOAST, and indexes.  Suitable for display';


--
-- Name: COLUMN tables.system_object; Type: COMMENT; Schema: meta_001; Owner: IHSLaMltbFn1
--

COMMENT ON COLUMN meta_001.tables.system_object IS 'Allows to easily show/hide system objects.';


--
-- Name: tables1; Type: VIEW; Schema: meta_001; Owner: IHSLaMltbFn1
--

CREATE VIEW meta_001.tables1 AS
 SELECT (((n.nspname)::text || '.'::text) || (c.relname)::text) AS full_name,
    n.nspname AS s_name,
    c.relname AS t_name,
        CASE
            WHEN (c.relkind = ANY (ARRAY['r'::"char", 'p'::"char"])) THEN 'table'::text
            WHEN (c.relkind = 's'::"char") THEN 'special'::text
            WHEN (c.relkind = 'f'::"char") THEN 'foreign table'::text
            ELSE NULL::text
        END AS type,
    pg_get_userbyid(c.relowner) AS owner,
    pg_size_pretty(pg_table_size((c.oid)::regclass)) AS size_pretty,
    pg_table_size((c.oid)::regclass) AS size_bytes,
    c.reltuples AS rows,
        CASE
            WHEN (c.reltuples > (0)::double precision) THEN ((pg_table_size((c.oid)::regclass))::double precision / c.reltuples)
            ELSE NULL::double precision
        END AS bytes_per_row,
    pg_size_pretty(pg_total_relation_size((c.oid)::regclass)) AS size_plus_indexes,
    obj_description(c.oid, 'pg_class'::name) AS description,
        CASE
            WHEN ((n.nspname !~ '^pg_toast'::text) AND (n.nspname <> ALL (ARRAY['pg_catalog'::name, 'information_schema'::name]))) THEN false
            ELSE true
        END AS system_object,
    mt.data_source,
    mt.sensitive
   FROM ((pg_class c
     LEFT JOIN pg_namespace n ON ((n.oid = c.relnamespace)))
     LEFT JOIN meta_001.meta_table mt ON (((n.nspname = mt.s_name) AND (c.relname = mt.t_name))))
  WHERE ((c.relkind = ANY (ARRAY['r'::"char", 'p'::"char", 's'::"char", 'f'::"char"])) AND ((n.nspname)::text <> ALL (ARRAY['pg_catalog'::text, 'information_schema'::text])));


ALTER TABLE meta_001.tables1 OWNER TO "armando";

--
-- Name: v_dba_get_fk_insert_order; Type: VIEW; Schema: meta_001; Owner: IHSLaMltbFn1
--

CREATE VIEW meta_001.v_dba_get_fk_insert_order AS
 WITH RECURSIVE fkeys AS (
         SELECT pg_constraint.conrelid AS source,
            pg_constraint.confrelid AS target
           FROM pg_constraint
          WHERE (pg_constraint.contype = 'f'::"char")
        ), tables AS (
        (
                 SELECT pg_class.oid AS table_name,
                    1 AS level,
                    ARRAY[pg_class.oid] AS trail,
                    false AS circular
                   FROM pg_class
                  WHERE ((pg_class.relkind = 'r'::"char") AND (NOT (((pg_class.relnamespace)::regnamespace)::text ~~ ANY (ARRAY['pg_catalog'::text, 'information_schema'::text, 'pg_temp_%'::text]))))
                EXCEPT
                 SELECT fkeys.source,
                    1,
                    ARRAY[fkeys.source] AS "array",
                    false AS bool
                   FROM fkeys
        ) UNION ALL
         SELECT fkeys.source,
            (tables.level + 1),
            (tables.trail || fkeys.source),
            (tables.trail @> ARRAY[fkeys.source])
           FROM (fkeys
             JOIN tables ON ((tables.table_name = fkeys.target)))
          WHERE (cardinality(array_positions(tables.trail, fkeys.source)) < 2)
        ), ordered_tables AS (
         SELECT DISTINCT ON (tables.table_name) tables.table_name,
            tables.level,
            tables.circular
           FROM tables
          ORDER BY tables.table_name, tables.level DESC
        )
 SELECT (ordered_tables.table_name)::regclass AS table_name,
    ordered_tables.level
   FROM ordered_tables
  WHERE (NOT ordered_tables.circular)
  ORDER BY ordered_tables.level, (ordered_tables.table_name)::regclass;


ALTER TABLE meta_001.v_dba_get_fk_insert_order OWNER TO "armando";

--
-- Name: v_dba_aaa_gold_fk_finder; Type: VIEW; Schema: meta_001; Owner: IHSLaMltbFn1
--

CREATE VIEW meta_001.v_dba_aaa_gold_fk_finder AS
 WITH unnested_confkey AS (
         SELECT pg_constraint.oid,
            unnest(pg_constraint.confkey) AS confkey
           FROM pg_constraint
        ), unnested_conkey AS (
         SELECT pg_constraint.oid,
            unnest(pg_constraint.conkey) AS conkey
           FROM pg_constraint
        ), abc AS (
         SELECT c.conname AS constraint_name,
            c.contype AS constraint_type,
            tbl.relname AS constraint_table,
            col.attname AS constraint_column,
            referenced_tbl.relname AS referenced_table,
            referenced_field.attname AS referenced_column,
            pg_get_constraintdef(c.oid) AS definition,
            ((tbl.relnamespace)::regnamespace)::text AS parent_schema,
            ((referenced_tbl.relnamespace)::regnamespace)::text AS fk_schema
           FROM ((((((pg_constraint c
             LEFT JOIN unnested_conkey con ON ((c.oid = con.oid)))
             LEFT JOIN pg_class tbl ON ((tbl.oid = c.conrelid)))
             LEFT JOIN pg_attribute col ON (((col.attrelid = tbl.oid) AND (col.attnum = con.conkey))))
             LEFT JOIN pg_class referenced_tbl ON ((c.confrelid = referenced_tbl.oid)))
             LEFT JOIN unnested_confkey conf ON ((c.oid = conf.oid)))
             LEFT JOIN pg_attribute referenced_field ON (((referenced_field.attrelid = c.confrelid) AND (referenced_field.attnum = conf.confkey))))
          WHERE (c.contype = 'f'::"char")
        ), find_order AS (
         SELECT (
                CASE
                    WHEN ("position"((v_dba_get_fk_insert_order.table_name)::text, '.'::text) = 0) THEN 'public.'::text
                    ELSE ''::text
                END || (v_dba_get_fk_insert_order.table_name)::text) AS full_table_name,
            v_dba_get_fk_insert_order.level
           FROM meta_001.v_dba_get_fk_insert_order
        )
 SELECT abc.constraint_name,
    abc.constraint_type,
    abc.parent_schema,
    abc.constraint_table,
    ( SELECT find_order_1.level
           FROM find_order find_order_1
          WHERE (find_order_1.full_table_name = ((abc.parent_schema || '.'::text) || (abc.constraint_table)::text))) AS parent_insert_order,
    abc.constraint_column,
    abc.fk_schema,
    abc.referenced_table,
    COALESCE(( SELECT find_order_1.level
           FROM find_order find_order_1
          WHERE (find_order_1.full_table_name = ((abc.fk_schema || '.'::text) || (abc.referenced_table)::text))), 99, 100) AS fk_insert_order,
    abc.referenced_column,
    abc.definition,
    (((('select count(1) from '::text || abc.parent_schema) || '.'::text) || (abc.constraint_table)::text) || ';'::text) AS base_sql,
    (((('select count(1) from '::text || abc.fk_schema) || '.'::text) || (abc.referenced_table)::text) || ';'::text) AS ref_sql
   FROM abc,
    find_order
  WHERE ((find_order.full_table_name = ((abc.parent_schema || '.'::text) || (abc.constraint_table)::text)) OR (find_order.full_table_name = ((abc.fk_schema || '.'::text) || (abc.referenced_table)::text)))
  ORDER BY COALESCE(( SELECT find_order_1.level
           FROM find_order find_order_1
          WHERE (find_order_1.full_table_name = ((abc.fk_schema || '.'::text) || (abc.referenced_table)::text))), 99, 100), ( SELECT find_order_1.level
           FROM find_order find_order_1
          WHERE (find_order_1.full_table_name = ((abc.parent_schema || '.'::text) || (abc.constraint_table)::text))), abc.fk_schema, abc.parent_schema;


ALTER TABLE meta_001.v_dba_aaa_gold_fk_finder OWNER TO "armando";

--
-- Name: v_dba_aaa_pg_stats_statements; Type: VIEW; Schema: meta_001; Owner: IHSLaMltbFn1
--

CREATE VIEW meta_001.v_dba_aaa_pg_stats_statements AS
 SELECT '~!~@#'::text AS nrd,
    '                                                         '::text AS username,
    '                                                         '::text AS dbname,
    'uncut'::text AS clean_state,
    now() AS ts_cr8td,
    pg_stat_statements.userid,
    pg_stat_statements.dbid,
    pg_stat_statements.queryid,
    pg_stat_statements.query,
    pg_stat_statements.calls,
    --pg_stat_statements.total_time,
    0 total_time,
    pg_stat_statements.min_time,
    pg_stat_statements.max_time,
    pg_stat_statements.mean_time,
    pg_stat_statements.stddev_time,
    pg_stat_statements.rows,
    pg_stat_statements.shared_blks_hit,
    pg_stat_statements.shared_blks_read,
    pg_stat_statements.shared_blks_dirtied,
    pg_stat_statements.shared_blks_written,
    pg_stat_statements.local_blks_hit,
    pg_stat_statements.local_blks_read,
    pg_stat_statements.local_blks_dirtied,
    pg_stat_statements.local_blks_written,
    pg_stat_statements.temp_blks_read,
    pg_stat_statements.temp_blks_written,
    pg_stat_statements.blk_read_time,
    pg_stat_statements.blk_write_time
   FROM public.pg_stat_statements
  WHERE (length(pg_stat_statements.query) < 32000)
UNION ALL
 SELECT '~!~@#'::text AS nrd,
    '                                                         '::text AS username,
    '                                                         '::text AS dbname,
    'cut'::text AS clean_state,
    now() AS ts_cr8td,
    pg_stat_statements.userid,
    pg_stat_statements.dbid,
    pg_stat_statements.queryid,
    substr(pg_stat_statements.query, 1, 32000) AS query,
    pg_stat_statements.calls,
    --pg_stat_statements.total_time,
    0 total_time,
    pg_stat_statements.min_time,
    pg_stat_statements.max_time,
    pg_stat_statements.mean_time,
    pg_stat_statements.stddev_time,
    pg_stat_statements.rows,
    pg_stat_statements.shared_blks_hit,
    pg_stat_statements.shared_blks_read,
    pg_stat_statements.shared_blks_dirtied,
    pg_stat_statements.shared_blks_written,
    pg_stat_statements.local_blks_hit,
    pg_stat_statements.local_blks_read,
    pg_stat_statements.local_blks_dirtied,
    pg_stat_statements.local_blks_written,
    pg_stat_statements.temp_blks_read,
    pg_stat_statements.temp_blks_written,
    pg_stat_statements.blk_read_time,
    pg_stat_statements.blk_write_time
   FROM public.pg_stat_statements
  WHERE (length(pg_stat_statements.query) > (32000 - 1));


ALTER TABLE meta_001.v_dba_aaa_pg_stats_statements OWNER TO "armando";

--
-- Name: v_dba_aaa_pg_stats_statements_top_3000_1hr_ago; Type: VIEW; Schema: meta_001; Owner: IHSLaMltbFn1
--

CREATE VIEW meta_001.v_dba_aaa_pg_stats_statements_top_3000_1hr_ago AS
 WITH q_snap_data AS (
         SELECT stat_statements_snapshots.ts_cr8td,
            stat_statements_snapshots.queryid,
            max(stat_statements_snapshots.query) AS query,
            sum(stat_statements_snapshots.total_time) AS total_time,
            sum(stat_statements_snapshots.calls) AS calls
           FROM meta_001.stat_statements_snapshots
          WHERE (NOT (stat_statements_snapshots.query ~~ 'insert into stat_statements_snapshots%'::text))
          GROUP BY stat_statements_snapshots.ts_cr8td, stat_statements_snapshots.queryid
        ), q_snap_data_hour AS (
         SELECT date_part('hour'::text, q_snap_data.ts_cr8td) AS ts_cr8td,
            q_snap_data.queryid,
            max(q_snap_data.query) AS query,
            (max(q_snap_data.total_time) - min(q_snap_data.total_time)) AS total_time,
            (max(q_snap_data.calls) - min(q_snap_data.calls)) AS calls
           FROM q_snap_data
          GROUP BY (date_part('hour'::text, q_snap_data.ts_cr8td)), q_snap_data.queryid
        )
 SELECT x.ts_cr8td,
    x.queryid,
    x.query,
    x.total_time,
    x.lag_total_time,
    x.calls,
    (x.total_time - x.lag_total_time) AS total_time_growth
   FROM ( SELECT q_snap_data_hour.ts_cr8td,
            q_snap_data_hour.queryid,
            q_snap_data_hour.query,
            q_snap_data_hour.total_time,
            lag(q_snap_data_hour.total_time) OVER (PARTITION BY q_snap_data_hour.queryid ORDER BY q_snap_data_hour.ts_cr8td) AS lag_total_time,
            q_snap_data_hour.calls
           FROM q_snap_data_hour) x
  WHERE ((x.lag_total_time > (0)::double precision) AND (x.total_time > x.lag_total_time))
  ORDER BY (x.total_time - x.lag_total_time) DESC
 LIMIT 300;


ALTER TABLE meta_001.v_dba_aaa_pg_stats_statements_top_3000_1hr_ago OWNER TO "armando";

--
-- Name: v_dba_aaa_pg_stats_statements_top_3000_plus_ddl; Type: VIEW; Schema: meta_001; Owner: IHSLaMltbFn1
--

CREATE VIEW meta_001.v_dba_aaa_pg_stats_statements_top_3000_plus_ddl AS
 WITH q_snap_data AS (
         SELECT stat_statements_snapshots.ts_cr8td,
            stat_statements_snapshots.queryid,
            max(stat_statements_snapshots.query) AS query,
            sum(stat_statements_snapshots.total_time) AS total_time,
            sum(stat_statements_snapshots.calls) AS calls
           FROM meta_001.stat_statements_snapshots
          WHERE (NOT (stat_statements_snapshots.query ~~ 'insert into stat_statements_snapshots%'::text))
          GROUP BY stat_statements_snapshots.ts_cr8td, stat_statements_snapshots.queryid
        ), q_min_total AS (
         SELECT sum(q_snap_data_1.total_time) AS min
           FROM q_snap_data q_snap_data_1
          GROUP BY q_snap_data_1.ts_cr8td
          ORDER BY q_snap_data_1.ts_cr8td
         LIMIT 1
        ), q_max_total AS (
         SELECT sum(q_snap_data_1.total_time) AS max
           FROM q_snap_data q_snap_data_1
          GROUP BY q_snap_data_1.ts_cr8td
          ORDER BY q_snap_data_1.ts_cr8td DESC
         LIMIT 1
        )
 SELECT q_snap_data.queryid,
    max(q_snap_data.query) AS query,
    (max(q_snap_data.total_time) - min(q_snap_data.total_time)) AS total_time,
    (max(q_snap_data.calls) - min(q_snap_data.calls)) AS calls,
    ((max(q_snap_data.total_time) - min(q_snap_data.total_time)) / ((max(q_snap_data.calls) - min(q_snap_data.calls)))::double precision) AS mean_time,
    ((((100)::numeric * ((max(q_snap_data.total_time) - min(q_snap_data.total_time)))::numeric))::double precision / ( SELECT (q_max_total.max - q_min_total.min)
           FROM q_max_total,
            q_min_total)) AS approx_pct_of_total
   FROM q_snap_data
  GROUP BY q_snap_data.queryid
 HAVING (max(q_snap_data.calls) > min(q_snap_data.calls))
  ORDER BY (max(q_snap_data.total_time) - min(q_snap_data.total_time)) DESC
 LIMIT 3000;


ALTER TABLE meta_001.v_dba_aaa_pg_stats_statements_top_3000_plus_ddl OWNER TO "armando";

--
-- Name: v_dba_aaa_re_index_used_sql; Type: VIEW; Schema: meta_001; Owner: IHSLaMltbFn1
--

CREATE VIEW meta_001.v_dba_aaa_re_index_used_sql AS
 WITH just_cols AS (
         SELECT xxo.nspname AS jc_schema,
            t.relname AS jc_table_name,
            i.relname AS jc_index_name,
            array_to_string(array_agg(a.attname), ', '::text) AS jc_column_names
           FROM pg_class t,
            pg_class i,
            pg_index ix,
            pg_attribute a,
            pg_namespace xxo
          WHERE ((xxo.oid = t.relnamespace) AND (t.oid = ix.indrelid) AND (i.oid = ix.indexrelid) AND (a.attrelid = t.oid) AND (a.attnum = ANY ((ix.indkey)::smallint[])) AND (i.relname !~~ 'pg_%index'::text))
          GROUP BY xxo.nspname, t.relname, i.relname
          ORDER BY xxo.nspname, t.relname, i.relname
        ), comb_ind AS (
         SELECT n.nspname AS ci_schema,
            t.relname AS ci_table,
            c.relname AS ci_index,
            xx.jc_column_names AS ci_ind_columns_list,
            pg_get_indexdef(i.indexrelid) AS ci_def
           FROM just_cols xx,
            (((pg_class c
             JOIN pg_namespace n ON ((n.oid = c.relnamespace)))
             JOIN pg_index i ON ((i.indexrelid = c.oid)))
             JOIN pg_class t ON ((i.indrelid = t.oid)))
          WHERE ((xx.jc_table_name = t.relname) AND (xx.jc_index_name = c.relname) AND (xx.jc_schema = n.nspname) AND (c.relkind = 'i'::"char") AND (n.nspname <> ALL (ARRAY['pg_catalog'::name, 'pg_toast'::name])) AND pg_table_is_visible(c.oid))
          ORDER BY n.nspname, t.relname, c.relname
        ), abc AS (
         SELECT (((n.nspname)::text || '.'::text) || (ct.relname)::text) AS full_tbl_name,
            n.nspname AS schema_name,
            ct.relname AS table_name,
            cii.ci_ind_columns_list,
            i.indisunique,
            pg_get_indexdef(ct.oid) AS index_sql,
            ci.relname AS index_name,
            (i.keys).n AS ordinal_position,
            pg_get_indexdef(ci.oid, (i.keys).n, false) AS column_name,
            pg_get_expr(i.indpred, i.indrelid) AS filter_condition
           FROM comb_ind cii,
            ((((pg_class ct
             JOIN pg_namespace n ON ((ct.relnamespace = n.oid)))
             JOIN ( SELECT i_1.indexrelid,
                    i_1.indrelid,
                    i_1.indoption,
                    i_1.indisunique,
                    i_1.indisclustered,
                    i_1.indpred,
                    i_1.indexprs,
                    information_schema._pg_expandarray(i_1.indkey) AS keys
                   FROM pg_index i_1) i ON ((ct.oid = i.indrelid)))
             JOIN pg_class ci ON ((ci.oid = i.indexrelid)))
             JOIN pg_am am ON ((ci.relam = am.oid)))
          WHERE ((n.nspname <> ALL (ARRAY['information_schema'::name, 'pg_catalog'::name, 'pg_toast'::name])) AND ((cii.ci_schema = n.nspname) AND (cii.ci_table = ct.relname) AND (cii.ci_index = ci.relname)))
          ORDER BY n.nspname, ct.relname, ci.relname, (i.keys).n
        )
 SELECT DISTINCT abc.schema_name,
    abc.table_name,
    abc.full_tbl_name,
    abc.indisunique,
    abc.index_name,
    abc.ordinal_position,
    abc.column_name,
    abc.filter_condition,
    meta_001.aaa_tabledef(((abc.full_tbl_name)::regclass)::oid) AS tbl_sql,
    abc.index_sql,
    abc.ci_ind_columns_list
   FROM abc;


ALTER TABLE meta_001.v_dba_aaa_re_index_used_sql OWNER TO "armando";

--
-- Name: v_dba_aaa_re_view_definitions_sql; Type: VIEW; Schema: meta_001; Owner: IHSLaMltbFn1
--

CREATE VIEW meta_001.v_dba_aaa_re_view_definitions_sql AS
 SELECT n.nspname AS table_schema,
    pg_get_userbyid(c.relowner) AS table_owner,
    c.relname AS table_name,
    s.n_live_tup AS row_count,
    count(a.attname) AS column_count,
    obj_description(c.oid, 'pg_class'::name) AS comments,
        CASE c.relkind
            WHEN 'v'::"char" THEN pg_get_viewdef(c.oid, true)
            ELSE NULL::text
        END AS query,
        CASE c.relkind
            WHEN 'v'::"char" THEN ('explain analyze '::text || pg_get_viewdef(c.oid, true))
            ELSE NULL::text
        END AS explain_query
   FROM (((pg_class c
     LEFT JOIN pg_namespace n ON ((n.oid = c.relnamespace)))
     LEFT JOIN pg_attribute a ON (((c.oid = a.attrelid) AND (a.attnum > 0) AND (NOT a.attisdropped))))
     LEFT JOIN pg_stat_all_tables s ON ((c.oid = s.relid)))
  WHERE ((c.relkind = 'v'::"char") AND (n.nspname <> ALL (ARRAY['information_schema'::name, 'pg_catalog'::name])))
  GROUP BY n.nspname, c.relowner, c.relkind, c.relname, s.n_live_tup, c.oid
  ORDER BY n.nspname, c.relname;


ALTER TABLE meta_001.v_dba_aaa_re_view_definitions_sql OWNER TO "armando";

--
-- Name: v_dba_get_tbl_sch_owner; Type: VIEW; Schema: meta_001; Owner: IHSLaMltbFn1
--

CREATE VIEW meta_001.v_dba_get_tbl_sch_owner AS
 SELECT inet_server_addr() AS ipaddress,
    inet_server_port() AS postgres_port,
    q.tablename,
    s.nspname AS table_schema,
    s.oid AS schema_id,
    u.usename AS schema_owner
   FROM pg_namespace s,
    pg_tables q,
    pg_user u
  WHERE ((q.schemaname = s.nspname) AND (u.usesysid = s.nspowner) AND (s.nspname <> 'information_schema'::name) AND (q.tablename !~~ 'sql%'::text) AND (s.nspname <> 'pg_catalog'::name))
  ORDER BY u.usename, s.nspname;


ALTER TABLE meta_001.v_dba_get_tbl_sch_owner OWNER TO "armando";

--
-- Name: v_dba_get_tbl_ddl; Type: VIEW; Schema: meta_001; Owner: IHSLaMltbFn1
--

CREATE VIEW meta_001.v_dba_get_tbl_ddl AS
 WITH thistbls AS (
         SELECT (((v_dba_get_tbl_sch_owner.table_schema)::text || '.'::text) || (v_dba_get_tbl_sch_owner.tablename)::text) AS thesetables
           FROM meta_001.v_dba_get_tbl_sch_owner
        ), pkey AS (
         SELECT cc.conrelid,
            format(',
    constraint %I primary key(%s)'::text, cc.conname, string_agg((a_1.attname)::text, ', '::text ORDER BY (array_position(cc.conkey, a_1.attnum)))) AS pkey
           FROM ((pg_constraint cc
             JOIN pg_class c_1 ON ((c_1.oid = cc.conrelid)))
             JOIN pg_attribute a_1 ON (((a_1.attrelid = cc.conrelid) AND (a_1.attnum = ANY (cc.conkey)))))
          WHERE (cc.contype = 'p'::"char")
          GROUP BY cc.conrelid, cc.conname
        )
 SELECT format('create %stable %s%I
(
%s%s
);
'::text,
        CASE c.relpersistence
            WHEN 't'::"char" THEN 'temporary '::text
            ELSE ''::text
        END,
        CASE c.relpersistence
            WHEN 't'::"char" THEN ''::text
            ELSE ((n.nspname)::text || '.'::text)
        END, c.relname, string_agg(format('	%I %s%s'::text, a.attname, format_type(a.atttypid, a.atttypmod),
        CASE
            WHEN a.attnotnull THEN ' not null'::text
            ELSE ''::text
        END), ',
'::text ORDER BY a.attnum), ( SELECT pkey.pkey
           FROM pkey
          WHERE (pkey.conrelid = c.oid))) AS sql,
    c.relname,
    n.nspname
   FROM (((pg_class c
     JOIN pg_namespace n ON ((n.oid = c.relnamespace)))
     JOIN pg_attribute a ON (((a.attrelid = c.oid) AND (a.attnum > 0))))
     JOIN pg_type t ON ((a.atttypid = t.oid)))
  WHERE ((((n.nspname)::text || '.'::text) || (c.relname)::text) IN ( SELECT thistbls.thesetables
           FROM thistbls))
  GROUP BY c.oid, c.relname, c.relpersistence, n.nspname
  ORDER BY n.nspname, c.relname;


ALTER TABLE meta_001.v_dba_get_tbl_ddl OWNER TO "armando";

--
-- Name: v_dba_backup_tables__copy; Type: VIEW; Schema: meta_001; Owner: IHSLaMltbFn1
--

CREATE VIEW meta_001.v_dba_backup_tables__copy AS
 WITH wip_dir AS (
         SELECT ' C:\postgresql126\wip_test_cmd_line_backup_restores\'::text AS bnr_loc
        ), abc AS (
         SELECT v_dba_get_tbl_ddl.nspname,
            current_database() AS current_db,
            v_dba_get_tbl_ddl.relname,
            wip_dir.bnr_loc
           FROM meta_001.v_dba_get_tbl_ddl,
            wip_dir
          ORDER BY (current_database()), v_dba_get_tbl_ddl.nspname, v_dba_get_tbl_ddl.relname
        )
 SELECT (((((((((((((((((((('\copy (SELECT * FROM '::text || lpad((((abc.nspname)::text || '.'::text) || (abc.relname)::text), 60)) || ' ) TO '::text) || abc.bnr_loc) || to_char(CURRENT_TIMESTAMP, 'DY'::text)) || date_part('year'::text, CURRENT_TIMESTAMP)) || to_char(date_part('month'::text, CURRENT_TIMESTAMP), 'fm00'::text)) || to_char(date_part('day'::text, CURRENT_TIMESTAMP), 'fm00'::text)) || '\csv\'::text) ||
        CASE
            WHEN (inet_client_addr() = '12.21.38.37'::inet) THEN 'STAGE'::text
            ELSE 'PROD'::text
        END) || '_'::text) || (abc.current_db)::text) || '__'::text) || (abc.nspname)::text) || '__'::text) || (abc.relname)::text) || '.csv WITH (FORMAT csv, HEADER, ENCODING '::text) || chr(39)) || 'UTF8'::text) || chr(39)) || ') '::text) AS sqltext
   FROM abc
  WHERE ((((abc.nspname)::text || '.'::text) || (abc.relname)::text) <> 'log_001.t_audit'::text)
  ORDER BY abc.current_db, abc.nspname, abc.relname;


ALTER TABLE meta_001.v_dba_backup_tables__copy OWNER TO "armando";

--
-- Name: v_dba_backup_tables__copy1; Type: VIEW; Schema: meta_001; Owner: IHSLaMltbFn1
--

CREATE VIEW meta_001.v_dba_backup_tables__copy1 AS
 WITH wip_dir AS (
         SELECT ' /opt/oracle/ora_ext_data/build_dev/'::text AS bnr_loc
        ), abc AS (
         SELECT v_dba_get_tbl_ddl.nspname,
            current_database() AS current_db,
            v_dba_get_tbl_ddl.relname,
            wip_dir.bnr_loc
           FROM meta_001.v_dba_get_tbl_ddl,
            wip_dir
          ORDER BY (current_database()), v_dba_get_tbl_ddl.nspname, v_dba_get_tbl_ddl.relname
        )
 SELECT (((((((((((((((((((('\copy (SELECT * FROM '::text || lpad((((abc.nspname)::text || '.'::text) || (abc.relname)::text), 60)) || ' ) TO '::text) || abc.bnr_loc) || to_char(CURRENT_TIMESTAMP, 'DY'::text)) || date_part('year'::text, CURRENT_TIMESTAMP)) || to_char(date_part('month'::text, CURRENT_TIMESTAMP), 'fm00'::text)) || to_char(date_part('day'::text, CURRENT_TIMESTAMP), 'fm00'::text)) || '/csv/'::text) ||
        CASE
            WHEN (inet_client_addr() = '12.21.38.37'::inet) THEN 'STAGE'::text
            WHEN (inet_client_addr() = '3.86.2.150'::inet) THEN 'DEV'::text
            ELSE 'PROD'::text
        END) || '_'::text) || (abc.current_db)::text) || '__'::text) || (abc.nspname)::text) || '__'::text) || (abc.relname)::text) || '.csv WITH (FORMAT csv, HEADER, ENCODING '::text) || chr(39)) || 'UTF8'::text) || chr(39)) || ') '::text) AS sqltext
   FROM abc
  WHERE ((((abc.nspname)::text || '.'::text) || (abc.relname)::text) <> 'log_001.t_audit'::text)
  ORDER BY abc.current_db, abc.nspname, abc.relname;


ALTER TABLE meta_001.v_dba_backup_tables__copy1 OWNER TO "armando";

--
-- Name: v_dba_backup_tables__restore1; Type: VIEW; Schema: meta_001; Owner: winteam_prod_read_stg
--

CREATE VIEW meta_001.v_dba_backup_tables__restore1 AS
 WITH wip_dir AS (
         SELECT ' /opt/oracle/ora_ext_data/build_dev/'::text AS bnr_loc
        ), abc AS (
         SELECT v_dba_get_tbl_ddl.nspname,
            current_database() AS current_db,
            v_dba_get_tbl_ddl.relname,
            wip_dir.bnr_loc
           FROM meta_001.v_dba_get_tbl_ddl,
            wip_dir
          ORDER BY (current_database()), v_dba_get_tbl_ddl.nspname, v_dba_get_tbl_ddl.relname
        ), xyz AS (
         SELECT (((((((((((((((((((((('copy '::text || lpad((((abc.nspname)::text || '.'::text) || (abc.relname)::text), 60)) || ' FROM '::text) || abc.bnr_loc) || to_char(CURRENT_TIMESTAMP, 'DY'::text)) || date_part('year'::text, CURRENT_TIMESTAMP)) || to_char(date_part('month'::text, CURRENT_TIMESTAMP), 'fm00'::text)) || to_char(date_part('day'::text, CURRENT_TIMESTAMP), 'fm00'::text)) || '/csv/'::text) ||
                CASE
                    WHEN (inet_client_addr() = '12.21.38.37'::inet) THEN 'STAGE'::text
                    WHEN (inet_client_addr() = '3.86.2.150'::inet) THEN 'DEV'::text
                    ELSE 'PROD'::text
                END) || '_'::text) || (abc.current_db)::text) || '__'::text) || (abc.nspname)::text) || '__'::text) || (abc.relname)::text) || '.csv '::text) || chr(39)) || ' HEADER CSV DELIMITER '::text) || chr(39)) || ','::text) || chr(39)) || ';'::text) AS sqltext
           FROM abc
          WHERE ((((abc.nspname)::text || '.'::text) || (abc.relname)::text) <> 'log_001.t_audit'::text)
        )
 SELECT replace(xyz.sqltext, 'TUE20210427/csv/'::text, ''::text) AS sqltext
   FROM xyz;


ALTER TABLE meta_001.v_dba_backup_tables__restore1 OWNER TO winteam_prod_read_stg;

--
-- Name: v_dba_backup_tables__restore_win; Type: VIEW; Schema: meta_001; Owner: IHSLaMltbFn1
--

CREATE VIEW meta_001.v_dba_backup_tables__restore_win AS
 WITH wip_dir AS (
         SELECT 'C:\postgresql126\wfma_stage\07302021\wfma\'::text AS bnr_loc
        ), abc AS (
         SELECT v_dba_get_tbl_ddl.nspname,
            current_database() AS current_db,
            v_dba_get_tbl_ddl.relname,
            wip_dir.bnr_loc
           FROM meta_001.v_dba_get_tbl_ddl,
            wip_dir
          ORDER BY (current_database()), v_dba_get_tbl_ddl.nspname, v_dba_get_tbl_ddl.relname
        ), xyz AS (
         SELECT (((((((((((((((((((((('copy '::text || lpad((((abc.nspname)::text || '.'::text) || (abc.relname)::text), 60)) || ' FROM '::text) || abc.bnr_loc) || ''::text) || ''::text) || ''::text) || ''::text) || ''::text) || 'STAGE'::text) || '_'::text) || (abc.current_db)::text) || '__'::text) || (abc.nspname)::text) || '__'::text) || (abc.relname)::text) || '.csv '::text) || chr(39)) || ' HEADER CSV DELIMITER '::text) || chr(39)) || ','::text) || chr(39)) || ';'::text) AS sqltext
           FROM abc
          WHERE ((((abc.nspname)::text || '.'::text) || (abc.relname)::text) <> 'log_001.t_audit'::text)
        )
 SELECT replace(xyz.sqltext, ''::text, ''::text) AS sqltext
   FROM xyz;


ALTER TABLE meta_001.v_dba_backup_tables__restore_win OWNER TO "armando";

--
-- Name: v_dba_bld_addl_pk_fk_uk_c_meta; Type: VIEW; Schema: meta_001; Owner: IHSLaMltbFn1
--

CREATE VIEW meta_001.v_dba_bld_addl_pk_fk_uk_c_meta AS
 WITH unnested_confkey AS (
         SELECT pg_constraint.oid,
            unnest(pg_constraint.confkey) AS confkey
           FROM pg_constraint
        ), unnested_conkey AS (
         SELECT pg_constraint.oid,
            unnest(pg_constraint.conkey) AS conkey
           FROM pg_constraint
        ), abc AS (
         SELECT c.conname AS constraint_name,
            c.contype AS constraint_type,
            tbl.relname AS constraint_table,
            col.attname AS constraint_column,
            referenced_tbl.relname AS referenced_table,
            referenced_field.attname AS referenced_column,
            pg_get_constraintdef(c.oid) AS definition,
            ((tbl.relnamespace)::regnamespace)::text AS parent_schema,
            ((referenced_tbl.relnamespace)::regnamespace)::text AS fk_schema
           FROM ((((((pg_constraint c
             LEFT JOIN unnested_conkey con ON ((c.oid = con.oid)))
             LEFT JOIN pg_class tbl ON ((tbl.oid = c.conrelid)))
             LEFT JOIN pg_attribute col ON (((col.attrelid = tbl.oid) AND (col.attnum = con.conkey))))
             LEFT JOIN pg_class referenced_tbl ON ((c.confrelid = referenced_tbl.oid)))
             LEFT JOIN unnested_confkey conf ON ((c.oid = conf.oid)))
             LEFT JOIN pg_attribute referenced_field ON (((referenced_field.attrelid = c.confrelid) AND (referenced_field.attnum = conf.confkey))))
        ), find_order AS (
         SELECT (
                CASE
                    WHEN ("position"((v_dba_get_fk_insert_order.table_name)::text, '.'::text) = 0) THEN 'public.'::text
                    ELSE ''::text
                END || (v_dba_get_fk_insert_order.table_name)::text) AS full_table_name,
            v_dba_get_fk_insert_order.level
           FROM meta_001.v_dba_get_fk_insert_order
        )
 SELECT DISTINCT abc.constraint_name,
    abc.constraint_type,
    abc.parent_schema,
    abc.constraint_table,
    ( SELECT find_order_1.level
           FROM find_order find_order_1
          WHERE (find_order_1.full_table_name = ((abc.parent_schema || '.'::text) || (abc.constraint_table)::text))) AS parent_insert_order,
    abc.constraint_column,
    abc.fk_schema,
    abc.referenced_table,
    COALESCE(( SELECT find_order_1.level
           FROM find_order find_order_1
          WHERE (find_order_1.full_table_name = ((abc.fk_schema || '.'::text) || (abc.referenced_table)::text))), 99, 100) AS fk_insert_order,
    abc.referenced_column,
    abc.definition,
    (((('select count(1) from '::text || abc.parent_schema) || '.'::text) || (abc.constraint_table)::text) || ';'::text) AS base_sql,
    (((('select count(1) from '::text || abc.fk_schema) || '.'::text) || (abc.referenced_table)::text) || ';'::text) AS ref_sql
   FROM abc,
    find_order
  WHERE ((find_order.full_table_name = ((abc.parent_schema || '.'::text) || (abc.constraint_table)::text)) OR (find_order.full_table_name = ((abc.fk_schema || '.'::text) || (abc.referenced_table)::text)))
  ORDER BY COALESCE(( SELECT find_order_1.level
           FROM find_order find_order_1
          WHERE (find_order_1.full_table_name = ((abc.fk_schema || '.'::text) || (abc.referenced_table)::text))), 99, 100), ( SELECT find_order_1.level
           FROM find_order find_order_1
          WHERE (find_order_1.full_table_name = ((abc.parent_schema || '.'::text) || (abc.constraint_table)::text))), abc.fk_schema, abc.parent_schema;


ALTER TABLE meta_001.v_dba_bld_addl_pk_fk_uk_c_meta OWNER TO "armando";

--
-- Name: v_dba_bld_assoc_master; Type: VIEW; Schema: meta_001; Owner: IHSLaMltbFn1
--

CREATE VIEW meta_001.v_dba_bld_assoc_master AS
 WITH vls AS (
         SELECT 'io_001'::text AS schemap,
            'io_001'::text AS schemact1,
            'io_001'::text AS schemact2,
            't_hashtag_intent'::text AS assoc_tbl,
            't_hashtag'::text AS fk_tbl1,
            't_hashtag_Col'::text AS fk_tbl1c1,
            't_hashtag_det'::text AS fk_tbl2,
            't_hashtag_det_Col'::text AS fk_tbl2c2,
            'th_1_fld'::text AS t1_fld_1,
            'th_1_dt'::text AS t1_fld_1dt,
            'th_2_fld'::text AS t2_fld_2,
            'th_2_dt'::text AS t2_fld_2dt
        )
 SELECT replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace('
---- We are build a table that will server as a many to many for two entities using view meta_001.v_dba_bld_assoc 
----   1)               FOREIGN KEY( <T1_FLD_1DT>)        REFERENCES <SCHEMA_CT1>.<FK1_PTBL1>  (<FK1_PFLD_1>);
----   2)               FOREIGN KEY( <T2_FLD_2DT>)        REFERENCES <SCHEMA_CT2>.<FK1_PTBL2>  (<FK1_PFLD_2>);
----   3) Uniqueness on   CONSTRAINT <ASSOC_TBL>_assoc_uk UNIQUE (<T1_FLD_1>, <T2_FLD_2>)
------
---    Using view meta_001.v_dba_bld_assoc 
----->         <''||''SCHEMA>      as <SCHEMA>     
----->         <''||''SCHEMA_CT1>  as <SCHEMA_CT1> 
----->         <''||''SCHEMA_CT2>  as <SCHEMA_CT2> 
----->         <''||''ASSOC_TBL>   as <ASSOC_TBL>  
----->         <''||''FK1_PTBL1>   as <FK1_PTBL1>  
----->         <''||''FK2_PTBL2>   as <FK2_PTBL2>  
----->         <''||''FK1_PFLD_1>  as <FK1_PFLD_1> 
----->         <''||''FK2_PFLD_2>  as <FK2_PFLD_2> 
----->         <''||''T1_FLD_1>    as <T1_FLD_1>   
----->         <''||''T1_FLD_1DT>  as <T1_FLD_1DT> 
----->         <''||''T2_FLD_2>    as <T2_FLD_2>   
----->         <''||''T2_FLD_2DT>  as <T2_FLD_2DT> 

DROP TABLE <SCHEMA>.<ASSOC_TBL>_assoc;
commit;

CREATE TABLE <SCHEMA>.<ASSOC_TBL>_assoc (
	id                    varchar         NOT NULL DEFAULT uuid_generate_v4(),
    <T1_FLD_1>            <T1_FLD_1DT>    not null,
    <T2_FLD_2>            <T2_FLD_2DT>    not null,
	created_at            timestamptz     NOT NULL DEFAULT timezone(''utc''::text, now()),
	updated_at            timestamptz     NOT NULL DEFAULT timezone(''utc''::text, now()),
    active_flg            char            NOT NULL default ''Y'' 
	metadata              jsonb               NULL,
	CONSTRAINT <ASSOC_TBL>_assoc_pk            PRIMARY KEY (id),
	CONSTRAINT <ASSOC_TBL>_assoc_uk            UNIQUE (<T1_FLD_1>, <T2_FLD_2>),
    CONSTRAINT fk_<T1_FLD_1>_<FK1_PTBL1>_asc   FOREIGN KEY( <T1_FLD_1DT>)    REFERENCES <SCHEMA_CT1>.<FK1_PTBL1>  (<FK1_PFLD_1>),
    CONSTRAINT fk_<T2_FLD_2>_<FK2_PTBL2>_asc   FOREIGN KEY( <T2_FLD_2DT>)    REFERENCES <SCHEMA_CT2>.<FK2_PTBL2>  (<FK2_PFLD_2>),
    CONSTRAINT chk_active_flg                  check (active_flg in (''Y'',''N'',''?'' ) )
	);
commit;

CREATE INDEX <ASSOC_TBL>_assoc_<T1_FLD_1> ON <SCHEMA>.<ASSOC_TBL>_assoc USING btree (<T1_FLD_1> );
commit;

CREATE INDEX <ASSOC_TBL>_assoc_<T2_FLD_2> ON <SCHEMA>.<ASSOC_TBL>_assoc USING btree (<T2_FLD_2> );
commit;

-- Table Triggers *********** support old audit for now ***************==>>  public.fn_create_audit_entry();
create trigger    tg_create_audit_delete__<ASSOC_TBL>_assoc before
delete
    on
    <SCHEMA>.<ASSOC_TBL>_assoc for each row execute function public.fn_create_audit_entry();

create trigger    tg_create_audit_insert__<ASSOC_TBL>_assoc before
insert
    on
    <SCHEMA>.<ASSOC_TBL>_assoc for each row execute function public.fn_create_audit_entry();

create trigger    tg_create_audit_update__<ASSOC_TBL>_assoc before
update
    on
    <SCHEMA>.<ASSOC_TBL>_assoc for each row execute function public.fn_create_audit_entry();
commit;
'::text, '<SCHEMA>'::text, vls.schemap), '<SCHEMA_CT1>'::text, vls.schemact1), '<SCHEMA_CT2>'::text, vls.schemact2), '<ASSOC_TBL>'::text, vls.assoc_tbl), '<FK1_PTBL1>'::text, vls.fk_tbl1), '<FK2_PTBL2>'::text, vls.fk_tbl2), '<FK1_PFLD_1>'::text, vls.fk_tbl1c1), '<FK2_PFLD_2>'::text, vls.fk_tbl2c2), '<T1_FLD_1>'::text, vls.t1_fld_1), '<T1_FLD_1DT>'::text, vls.t1_fld_1dt), '<T2_FLD_2>'::text, vls.t2_fld_2), '<T2_FLD_2DT>'::text, vls.t2_fld_2dt) AS sqltext,
    vls.schemap,
    '<SCHEMA>'::text AS lbl_schemap,
    vls.schemact1,
    '<SCHEMA_CT1>'::text AS lbl_schemact1,
    vls.schemact2,
    '<SCHEMA_CT2>'::text AS lbl_schemact2,
    vls.assoc_tbl,
    '<ASSOC_TBL>'::text AS lbl_assoc_tbl,
    vls.fk_tbl1,
    '<FK1_PTBL1>'::text AS lbl_fk_tbl1,
    vls.fk_tbl1c1,
    '<FK2_PTBL2>'::text AS lbl_fk_tbl2,
    vls.fk_tbl2,
    '<FK1_PFLD_1>'::text AS lbl_fk_tbl1c1,
    vls.fk_tbl2c2,
    '<FK2_PFLD_2>'::text AS lbl_fk_tbl2c2,
    vls.t1_fld_1,
    '<T1_FLD_1>'::text AS lbl_t1_fld_1,
    vls.t1_fld_1dt,
    '<T1_FLD_1DT>'::text AS lbl_t1_fld_1dt,
    vls.t2_fld_2,
    '<T2_FLD_2>'::text AS lbl_t2_fld_2,
    vls.t2_fld_2dt,
    '<T2_FLD_2DT>'::text AS lbl_t2_fld_2dt
   FROM vls;


ALTER TABLE meta_001.v_dba_bld_assoc_master OWNER TO "armando";

--
-- Name: v_dba_bld_partitions; Type: VIEW; Schema: meta_001; Owner: IHSLaMltbFn1
--

CREATE VIEW meta_001.v_dba_bld_partitions AS
 WITH q_last_part AS (
         SELECT x.part_name,
            x.part_expr,
            ((regexp_match(x.part_expr, ' to \(''(.*)'' \)'::text))[1])::timestamp with time zone AS last_part_end
           FROM ( SELECT format('%I.%I'::text, n.nspname, c.relname) AS part_name,
                    pg_get_expr(c.relpartbound, c.oid) AS part_expr
                   FROM (((pg_class p
                     JOIN pg_inherits i ON ((i.inhparent = p.oid)))
                     JOIN pg_class c ON ((c.oid = i.inhrelid)))
                     JOIN pg_namespace n ON ((n.oid = c.relnamespace)))
                  WHERE ((lower((p.relname)::text) = lower('ALERT_LOG_eventS'::text)) AND (p.relkind = 'p'::"char"))) x
          ORDER BY ((regexp_match(x.part_expr, ' to \(''(.*)'' \)'::text))[1])::timestamp with time zone DESC
         LIMIT 1
        )
 SELECT format('CREATE table if not exists subpartitions.event_y%sm%s partition of event for
values
from
(''%s'') to (''%s'')'::text, date_part('year'::text, q_last_part.last_part_end), lpad((date_part('month'::text, q_last_part.last_part_end))::text, 2, '0'::text), q_last_part.last_part_end, (q_last_part.last_part_end + '1 mon'::interval)) AS sql_to_exec
   FROM q_last_part;


ALTER TABLE meta_001.v_dba_bld_partitions OWNER TO "armando";

--
-- Name: v_dba_bld_ref_tbl_master; Type: VIEW; Schema: meta_001; Owner: IHSLaMltbFn1
--

CREATE VIEW meta_001.v_dba_bld_ref_tbl_master AS
 WITH vls AS (
         SELECT 'io_001'::text AS schemap,
            't_hashtag'::text AS ref_tbl,
            'th_1_fld'::text AS t1_fld_1,
            'th_1_dt'::text AS t1_fld_1dt
        )
 SELECT replace(replace(replace(replace('
---- We are build a table that will server as a reference entities using view meta_001.v_dba_bld_ref_tbl 
----   3) Uniqueness on   CONSTRAINT <ASSOC_TBL>_assoc_uk UNIQUE (<TH_1_FLD>)
------
---    Using view meta_001.v_dba_bld_assoc 

DROP TABLE <SCHEMA>.<REF_TBL>;
commit;

CREATE TABLE <SCHEMA>.<REF_TBL>  (
	id                    varchar         NOT NULL DEFAULT uuid_generate_v4(),
    name                  text            NOT NULL  ,
    description           text                null  , 
    <T1_FLD_1>            <T1_FLD_1DT>    not null,
	created_at            timestamptz     NOT NULL DEFAULT timezone(''utc''::text, now()),
	updated_at            timestamptz     NOT NULL DEFAULT timezone(''utc''::text, now()),
	metadata              jsonb               NULL,
	CONSTRAINT <REF_TBL>_pk            PRIMARY KEY (id),
	CONSTRAINT <REF_TBL>_uk            UNIQUE  (name)
  --  CONSTRAINT fk_<T1_FLD_1>_<FK1_PTBL1>   FOREIGN KEY( <T1_FLD_1DT>)    REFERENCES <SCHEMA_CT1>.<FK1_PTBL1>  (<FK1_PFLD_1>),
  --  CONSTRAINT fk_<T2_FLD_2>_<FK2_PTBL2>   FOREIGN KEY( <T2_FLD_2DT>)    REFERENCES <SCHEMA_CT2>.<FK2_PTBL2>  (<FK2_PFLD_2>),
	);
commit;

CREATE INDEX <REF_TBL>_<T1_FLD_1> ON <SCHEMA>.<REF_TBL> USING btree (<T1_FLD_1> );
commit;

CREATE OR REPLACE FUNCTION  <SCHEMA>.F_<REF_TBL>_NAME_UC () 
  RETURNS trigger AS $$
    BEGIN
        NEW.name = upper(NEW.name);
        RETURN NEW;
    END;
$$ LANGUAGE plpgsql;

-- Table Triggers *********** support old audit for now ***************==>>  public.fn_create_audit_entry();
create trigger    tg_create_audit_delete__<REF_TBL> before
delete
    on
    <SCHEMA>.<REF_TBL> for each row execute function <SCHEMA>.fn_create_audit_entry();

create trigger    tg_create_audit_insert__<REF_TBL> before
insert
    on
    <SCHEMA>.<REF_TBL> for each row execute function <SCHEMA>.fn_create_audit_entry();

create trigger    tg_create_audit_update__<REF_TBL> before
update
    on
    <SCHEMA>.<REF_TBL> for each row execute function <SCHEMA>.fn_create_audit_entry();
commit;
'::text, '<SCHEMA>'::text, vls.schemap), '<REF_TBL>'::text, vls.ref_tbl), '<T1_FLD_1>'::text, vls.t1_fld_1), '<T1_FLD_1DT>'::text, vls.t1_fld_1dt) AS sqltext
   FROM vls;


ALTER TABLE meta_001.v_dba_bld_ref_tbl_master OWNER TO "armando";

--
-- Name: v_dba_build_audit_partition_sql; Type: VIEW; Schema: meta_001; Owner: IHSLaMltbFn1
--

CREATE VIEW meta_001.v_dba_build_audit_partition_sql AS
 SELECT '
-- DROP TABLE <SCHEMA>.t_auditp_<SCHEMA>__<TBLNAME>;
CREATE  TABLE <SCHEMA>.t_auditp_<SCHEMA>__<TBLNAME> (
	audit_id   uuid        NOT NULL DEFAULT uuid_generate_v4(),
	"user"     varchar         NULL,
	table_name varchar         NULL,
	verb       varchar     NOT NULL,
	table_id   varchar         NULL,
	original   jsonb           NULL,
	updated    jsonb           NULL,
	diff       jsonb           NULL,
	created_at timestamptz NOT NULL DEFAULT now(),
	updated_at timestamptz NOT NULL DEFAULT now()
	partition by list (table_name)
);
commit;

--CREATE INDEX <SCHEMA>.t_auditp_table_name_idx   ON <SCHEMA>.t_auditp_<SCHEMA>__<TBLNAME> USING btree (table_name);
--CREATE INDEX <SCHEMA>.t_auditp_table_name_idx_1 ON <SCHEMA>.t_auditp_<SCHEMA>__<TBLNAME> USING btree (table_name, table_id);
  CREATE INDEX <SCHEMA>.t_auditp_created_at_idx   ON <SCHEMA>.t_auditp_<SCHEMA>__<TBLNAME> USING btree (created_at);
  CREATE INDEX <SCHEMA>.t_auditp_user_idx         ON <SCHEMA>.t_auditp_<SCHEMA>__<TBLNAME> USING btree ("user");
-- Permissions

ALTER TABLE        <SCHEMA>.t_auditp_<SCHEMA>__<TBLNAME> OWNER TO suser;

GRANT ALL ON TABLE <SCHEMA>.t_auditp_<SCHEMA>__<TBLNAME>       TO suser;
'::text AS sqltext;


ALTER TABLE meta_001.v_dba_build_audit_partition_sql OWNER TO "armando";

--
-- Name: v_dba_constraints_info; Type: VIEW; Schema: meta_001; Owner: IHSLaMltbFn1
--

CREATE VIEW meta_001.v_dba_constraints_info AS
 SELECT tc.constraint_catalog,
    tc.constraint_schema,
    tc.constraint_name,
    tc.constraint_type,
    tc.table_name,
    kcu.column_name,
    tc.is_deferrable,
    tc.initially_deferred,
    rc.match_option AS match_type,
    rc.update_rule AS on_update,
    rc.delete_rule AS on_delete,
    ccu.table_name AS references_table,
    ccu.column_name AS references_field,
    ' Used to get constraint info out of db'::text AS view_info,
    'VERSION 1.0'::text AS view_version
   FROM (((information_schema.table_constraints tc
     LEFT JOIN information_schema.key_column_usage kcu ON ((((tc.constraint_catalog)::text = (kcu.constraint_catalog)::text) AND ((tc.constraint_schema)::text = (kcu.constraint_schema)::text) AND ((tc.constraint_name)::text = (kcu.constraint_name)::text))))
     LEFT JOIN information_schema.referential_constraints rc ON ((((tc.constraint_catalog)::text = (rc.constraint_catalog)::text) AND ((tc.constraint_schema)::text = (rc.constraint_schema)::text) AND ((tc.constraint_name)::text = (rc.constraint_name)::text))))
     LEFT JOIN information_schema.constraint_column_usage ccu ON ((((rc.unique_constraint_catalog)::text = (ccu.constraint_catalog)::text) AND ((rc.unique_constraint_schema)::text = (ccu.constraint_schema)::text) AND ((rc.unique_constraint_name)::text = (ccu.constraint_name)::text))))
  ORDER BY tc.constraint_catalog, tc.constraint_schema, tc.table_name, tc.constraint_type;


ALTER TABLE meta_001.v_dba_constraints_info OWNER TO "armando";

--
-- Name: v_dba_cr8_ref_table; Type: VIEW; Schema: meta_001; Owner: IHSLaMltbFn1
--

CREATE VIEW meta_001.v_dba_cr8_ref_table AS
 SELECT replace(replace('-- drop table <SCHEMA_NAME>.<TABLE_NAME> cascade;'::text, '<SCHEMA_NAME>'::text, (sequence_table_map.schema_name)::text), '<TABLE_NAME>'::text, (sequence_table_map.table_name)::text) AS droptbl_sql,
    replace(replace(replace(replace((((((('/*   '::text || 'drop table <SCHEMA_NAME>.<TABLE_NAME>      cascade;    */'::text) || chr(10)) || '/*   '::text) || 'drop table <SCHEMA_NAME>.<TABLE_NAME>_AUD  cascade;    */'::text) || chr(10)) || 'CREATE TABLE <SCHEMA_NAME>.<TABLE_NAME> (
    id           varchar                 NOT NULL  DEFAULT public.uuid_generate_v4() ,
    name         text                    NOT NULL  ,
    description  text                              , 
    created_at   TIMESTAMPTZ             NOT NULL  DEFAULT  timezone(''utc''::text, now()) ,     
    updated_at   TIMESTAMPTZ             NOT NULL  DEFAULT  timezone(''utc''::text, now()) ,  
    metadata     JSONB                   ,
    CONSTRAINT   <TABLE_NAME>_PK   PRIMARY KEY (id  ) ,
    CONSTRAINT   <TABLE_NAME>_UK   UNIQUE      (name) 
);

/* CREATE UNIQUE INDEX <TABLE_NAME>_UK ON <SCHEMA_NAME>.<TABLE_NAME> (<UK_COLUMN>) */;

CREATE        INDEX <TABLE_NAME>_created_at_idx ON <SCHEMA_NAME>.<TABLE_NAME> USING btree (created_at);
CREATE        INDEX <TABLE_NAME>_updated_at_idx ON <SCHEMA_NAME>.<TABLE_NAME> USING btree (updated_at);
'::text), '<SCHEMA_NAME>'::text, (sequence_table_map.schema_name)::text), '<TABLE_NAME>'::text, (sequence_table_map.table_name)::text), '<UK_COLUMN>'::text, (sequence_table_map.uk_column)::text), '<TABLE_NAME>'::text, (sequence_table_map.table_name)::text) AS cr8tbl_sql,
    replace(replace('-- Table Triggers *********** support old audit for now ***************==>>  public.fn_create_audit_entry();
create trigger    tg_create_audit_delete__<TABLE_NAME> before
delete
    on
    <SCHEMA_NAME>.<TABLE_NAME> for each row execute function public.fn_create_audit_entry();

create trigger    tg_create_audit_insert__<TABLE_NAME> before
insert
    on
    <SCHEMA_NAME>.<TABLE_NAME> for each row execute function public.fn_create_audit_entry();

create trigger    tg_create_audit_update__<TABLE_NAME> before
update
    on
    <SCHEMA_NAME>.<TABLE_NAME> for each row execute function public.fn_create_audit_entry();
'::text, '<SCHEMA_NAME>'::text, (sequence_table_map.schema_name)::text), '<TABLE_NAME>'::text, (sequence_table_map.table_name)::text) AS cr8trig,
    sequence_table_map.schema_name,
    sequence_table_map.table_name,
    sequence_table_map.ttype,
    sequence_table_map.sequence_name,
    replace((sequence_table_map.pk_col)::text, '<TABLE_NAME>_'::text, ''::text) AS pk_col,
    sequence_table_map.uk_column,
    (50 - length((sequence_table_map.table_name)::text)) AS spaces_50,
    sequence_table_map.ownerof,
    sequence_table_map.appof,
    sequence_table_map.aud_cols
   FROM meta_001.sequence_table_map
  WHERE ((sequence_table_map.ttype)::text = '<REF>'::text);


ALTER TABLE meta_001.v_dba_cr8_ref_table OWNER TO "armando";

--
-- Name: v_dba_cr8_ref_table_audit; Type: VIEW; Schema: meta_001; Owner: IHSLaMltbFn1
--

CREATE VIEW meta_001.v_dba_cr8_ref_table_audit AS
 SELECT replace(replace(replace('
rem -- 1) create table <SCHEMA_NAME>.<TABLE_NAME>_aud from template as show in the create table sql (for new table)
rem -- 2) alter table  <TABLE_NAME>_aud add columns from parent_Table (if the table is existing and large )

CREATE TABLE <SCHEMA_NAME>.<TABLE_NAME>_aud (
    operation         char(1)   NOT NULL,
    stamp             timestamp NOT NULL,
    userid            text      NOT NULL,
	id              varchar         NOT  NULL DEFAULT uuid_generate_v4(),
	name            varchar         NOT  NULL,
	description     varchar              NULL,
	created_at      timestamptz          NULL DEFAULT now(),
	updated_at      timestamptz          NULL DEFAULT now(),
    metadata        jsonb                NULL             
);

rem ************************
rem set to not null once the data conforms, else by default it set to nullable 
rem alter table  <SCHEMA_NAME>.<TABLE_NAME>_AUD modify  operation  NOT NULL;
rem alter table  <SCHEMA_NAME>.<TABLE_NAME>_AUD modify  stamp      NOT NULL;
rem alter table  <SCHEMA_NAME>.<TABLE_NAME>_AUD modify  userid     NOT NULL;
rem ***********************

CREATE OR REPLACE FUNCTION <SCHEMA_NAME>.F_<TABLE_NAME>_audit() RETURNS TRIGGER AS $F_<TABLE_NAME>_audit$
    BEGIN
        --
        -- Create rows in <SCHEMA_NAME>.<TABLE_NAME>_aud to reflect the operations performed on table
        -- making use of the special variable TG_OP to work out the operation.
        --
        IF (TG_OP = ''DELETE'') THEN
            INSERT INTO <SCHEMA_NAME>.<TABLE_NAME>_aud (<AUDIT_COL_ALL>)
                SELECT ''D'', now(), user, o.* FROM old_table o;
        ELSIF (TG_OP = ''UPDATE'') THEN
            INSERT INTO <SCHEMA_NAME>.<TABLE_NAME>_aud (<AUDIT_COL_ALL>)
                SELECT ''U'', now(), user, n.* FROM new_table n;
        ELSIF (TG_OP = ''INSERT'') THEN
            INSERT INTO <SCHEMA_NAME>.<TABLE_NAME>_aud (<AUDIT_COL_ALL>)
                SELECT ''I'', now(), user, n.* FROM new_table n;
        END IF;
        RETURN NULL; -- result is ignored since this is an AFTER trigger
    END;
$F_<TABLE_NAME>_audit$ LANGUAGE plpgsql;

CREATE TRIGGER                    <TABLE_NAME>_aud_ins
    AFTER INSERT ON <SCHEMA_NAME>.<TABLE_NAME>
    REFERENCING NEW TABLE AS new_table
    FOR EACH STATEMENT EXECUTE FUNCTION  <SCHEMA_NAME>.F_<TABLE_NAME>_audit();

CREATE TRIGGER                    <TABLE_NAME>_aud_upd
    AFTER UPDATE ON <SCHEMA_NAME>.<TABLE_NAME>
    REFERENCING OLD TABLE AS old_table NEW TABLE AS new_table
    FOR EACH STATEMENT EXECUTE FUNCTION  <SCHEMA_NAME>.F_<TABLE_NAME>_audit();

CREATE TRIGGER                    <TABLE_NAME>_aud_del
    AFTER DELETE ON <SCHEMA_NAME>.<TABLE_NAME>_aud
    REFERENCING OLD TABLE AS old_table
    FOR EACH STATEMENT EXECUTE FUNCTION  <SCHEMA_NAME>.F_<TABLE_NAME>_audit();

REVOKE ALL ON <TABLE_NAME>_aud  FROM PUBLIC;
GRANT  ALL ON <TABLE_NAME>_aud  TO TBD_manager;
'::text, '<TABLE_NAME>'::text, (sequence_table_map.table_name)::text), '<SCHEMA_NAME>'::text, (sequence_table_map.schema_name)::text), '<AUDIT_COL_ALL>'::text, (sequence_table_map.aud_cols)::text) AS sqltext,
    sequence_table_map.schema_name,
    sequence_table_map.table_name,
    sequence_table_map.ttype
   FROM meta_001.sequence_table_map;


ALTER TABLE meta_001.v_dba_cr8_ref_table_audit OWNER TO "armando";

--
-- Name: v_dba_cr8_ref_table_audit_generic; Type: VIEW; Schema: meta_001; Owner: IHSLaMltbFn1
--

CREATE VIEW meta_001.v_dba_cr8_ref_table_audit_generic AS
 SELECT replace(replace('
CREATE TABLE ap_audit_log (
    username       text,      -- who did the change
    event_time_utc timestamp, -- when the event was recorded
    table_name     text,      -- contains schema-qualified table name
    operation      text,      -- INSERT, UPDATE, DELETE or TRUNCATE
    before_value   json,      -- the OLD tuple value
    after_value    json       -- the NEW tuple value
);

CREATE OR REPLACE FUNCTION ap_audit_trigger() 
  RETURNS trigger AS $$ 
DECLARE 
    old_row json := NULL; 
    new_row json := NULL; 
BEGIN 
    IF TG_OP IN (''UPDATE'',''DELETE'') THEN 
        old_row = row_to_json(OLD); 
    END IF; 
    IF TG_OP IN (''INSERT'',''UPDATE'') THEN 
        new_row = row_to_json(NEW); 
    END IF; 
    INSERT INTO  ap_audit_log( 
        username, 
        event_time_utc, 
        table_name, 
        operation, 
        before_value, 
        after_value 
    ) VALUES ( 
        session_user, 
        current_timestamp AT TIME ZONE ''UTC'', 
        TG_TABLE_SCHEMA ||  ''.'' || TG_TABLE_NAME, 
        TG_OP, 
        old_row, 
        new_row 
    ); 
    RETURN NEW; 
END; 
$$ LANGUAGE plpgsql; 

CREATE TRIGGER trg_ap_audit_log
  AFTER INSERT OR UPDATE OR DELETE 
  ON <TABLE_NAME>
  FOR EACH ROW 
EXECUTE PROCEDURE ap_audit_trigger(); 

CREATE TABLE notify_test (i int);
INSERT INTO  notify_test VALUES (1); 
UPDATE       notify_test SET i = 2; 
DELETE FROM  notify_test; 

SELECT * FROM ap_audit_log;

We are now ready to define our new logging trigger, as shown here:
CREATE TRIGGER audit_log
AFTER INSERT OR UPDATE OR DELETE
ON notify_test FOR EACH ROW
EXECUTE PROCEDURE audit_trigger();

CREATE OR REPLACE FUNCTION usagestamp() RETURNS TRIGGER AS $$
BEGIN
 IF TG_OP = ''INSERT'' THEN
   NEW.created_by = SESSION_USER; NEW.created_at = CURRENT_TIMESTAMP;
 ELSE
   NEW.created_by = OLD.created_by; NEW.created_at = OLD.created_at;
 END IF;

  NEW.last_changed_by = SESSION_USER; 
  NEW.last_changed_at = CURRENT_TIMESTAMP; 
  RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER audit_log
BEFORE INSERT OR UPDATE ON modify_test FOR EACH ROW
EXECUTE PROCEDURE usagestamp();

'::text, '<TABLE_NAME>'::text, (sequence_table_map.table_name)::text), '<SCHEMA_NAME>'::text, (sequence_table_map.sequence_name)::text) AS sqltext
   FROM meta_001.sequence_table_map;


ALTER TABLE meta_001.v_dba_cr8_ref_table_audit_generic OWNER TO "armando";

--
-- Name: v_dba_cr8_ref_table_f_uk_lookup; Type: VIEW; Schema: meta_001; Owner: IHSLaMltbFn1
--

CREATE VIEW meta_001.v_dba_cr8_ref_table_f_uk_lookup AS
 SELECT replace(replace('
CREATE OR REPLACE FUNCTION  <SCHEMA_NAME>.F_<TABLE_NAME>_NAME_UC () 
  RETURNS trigger AS $$
    BEGIN
        NEW.name = upper(NEW.name);
        RETURN NEW;
    END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER                trg_cl_<TABLE_NAME>_name_UC  
BEFORE INSERT OR UPDATE OR DELETE ON <SCHEMA_NAME>.<TABLE_NAME>
    FOR EACH ROW EXECUTE PROCEDURE <SCHEMA_NAME>.F_<TABLE_NAME>_NAME_UC (); 
'::text, '<TABLE_NAME>'::text, (sequence_table_map.table_name)::text), '<SCHEMA_NAME>'::text, (sequence_table_map.schema_name)::text) AS sqltext
   FROM meta_001.sequence_table_map;


ALTER TABLE meta_001.v_dba_cr8_ref_table_f_uk_lookup OWNER TO "armando";

--
-- Name: v_dba_cr8_all; Type: VIEW; Schema: meta_001; Owner: IHSLaMltbFn1
--

CREATE VIEW meta_001.v_dba_cr8_all AS
 WITH abc AS (
         SELECT v_dba_cr8_ref_table.droptbl_sql AS sqltext,
            v_dba_cr8_ref_table.schema_name,
            v_dba_cr8_ref_table.table_name,
            v_dba_cr8_ref_table.ttype
           FROM meta_001.v_dba_cr8_ref_table
        UNION ALL
         SELECT v_dba_cr8_ref_table.cr8tbl_sql AS sqltext,
            v_dba_cr8_ref_table.schema_name,
            v_dba_cr8_ref_table.table_name,
            v_dba_cr8_ref_table.ttype
           FROM meta_001.v_dba_cr8_ref_table
        UNION ALL
         SELECT v_dba_cr8_ref_table.cr8trig AS sqltext,
            v_dba_cr8_ref_table.schema_name,
            v_dba_cr8_ref_table.table_name,
            v_dba_cr8_ref_table.ttype
           FROM meta_001.v_dba_cr8_ref_table
        UNION ALL
         SELECT v_dba_cr8_ref_table_audit.sqltext,
            v_dba_cr8_ref_table_audit.schema_name,
            v_dba_cr8_ref_table_audit.table_name,
            v_dba_cr8_ref_table_audit.ttype
           FROM meta_001.v_dba_cr8_ref_table_audit
        UNION ALL
         SELECT v_dba_cr8_ref_table_audit_generic.sqltext,
            NULL::character varying,
            NULL::character varying,
            NULL::character varying
           FROM meta_001.v_dba_cr8_ref_table_audit_generic
        UNION ALL
         SELECT v_dba_cr8_ref_table_f_uk_lookup.sqltext,
            NULL::character varying,
            NULL::character varying,
            NULL::character varying
           FROM meta_001.v_dba_cr8_ref_table_f_uk_lookup
        )
 SELECT abc.sqltext,
    abc.schema_name,
    abc.table_name,
    abc.ttype
   FROM abc;


ALTER TABLE meta_001.v_dba_cr8_all OWNER TO "armando";

--
-- Name: v_dba_create_curlksh_api_postgrest; Type: VIEW; Schema: meta_001; Owner: IHSLaMltbFn1
--

CREATE VIEW meta_001.v_dba_create_curlksh_api_postgrest AS
 SELECT (((((('#!/bin/ksh'::text || chr(10)) || 'cd /opt/oracle/ora_ext_data '::text) || chr(10)) || 'export PATH=${PATH}:.:${PWD}'::text) || chr(10)) || ' 
 '::text) AS sqltext
UNION ALL
 SELECT ((((((((((((((((((' if [[ "${1}" = '::text || chr(34)) || (pg_views.viewname)::text) || chr(34)) || ' ]]'::text) || chr(10)) || ' then '::text) || chr(10)) || '  curl -o '::text) || rpad(((pg_views.viewname)::text || '.json '::text), 60)) || ' http://127.0.0.1:3000/'::text) || rpad((pg_views.viewname)::text, 60)) || ' 2> '::text) || (pg_views.viewname)::text) || '.stats'::text) || chr(10)) || ' fi'::text) || chr(10)) || '    '::text) AS sqltext
   FROM pg_views
  WHERE ((pg_views.schemaname = 'meta_001'::name) AND (pg_views.viewname <> ALL (ARRAY['v_dba_get_index_size_tune_query'::name, 'v_dba_get_event_trig_drop_sql'::name, 'v_dba_get_missing_index_vw1'::name])));


ALTER TABLE meta_001.v_dba_create_curlksh_api_postgrest OWNER TO "armando";

--
-- Name: v_dba_create_roles_with_pwds; Type: VIEW; Schema: meta_001; Owner: IHSLaMltbFn1
--

CREATE VIEW meta_001.v_dba_create_roles_with_pwds AS
 WITH these_envs AS (
         SELECT 'DEV_'::text AS envof
        UNION ALL
         SELECT 'STAGE_'::text AS envof
        UNION ALL
         SELECT 'PROD_'::text AS envof
        ), gen_pwds AS (
         SELECT 'read_only'::text AS accountof,
            (((('read_only'::text || '_'::text) || meta_001.f_dba_gen_random_between(7000, 9999)) || meta_001.f_dba_gen_random_char(6)) || ''::text) AS pwdof
        UNION ALL
         SELECT 'datasync_service'::text AS accountof,
            (((('datasync-service'::text || '_'::text) || meta_001.f_dba_gen_random_between(7000, 9999)) || meta_001.f_dba_gen_random_char(6)) || ''::text) AS pwdof
        UNION ALL
         SELECT 'redcell_ml'::text AS accountof,
            (((('redcell-ml'::text || '_'::text) || meta_001.f_dba_gen_random_between(7000, 9999)) || meta_001.f_dba_gen_random_char(6)) || ''::text) AS pwdof
        UNION ALL
         SELECT 'sms_service'::text AS accountof,
            (((('sms-service'::text || '_'::text) || meta_001.f_dba_gen_random_between(7000, 9999)) || meta_001.f_dba_gen_random_char(6)) || ''::text) AS pwdof
        UNION ALL
         SELECT 'datahandler_service'::text AS accountof,
            (((('datahandler-service'::text || '_'::text) || meta_001.f_dba_gen_random_between(7000, 9999)) || meta_001.f_dba_gen_random_char(6)) || ''::text) AS pwdof
        UNION ALL
         SELECT 'automation_service'::text AS accountof,
            (((('automation-service'::text || '_'::text) || meta_001.f_dba_gen_random_between(7000, 9999)) || meta_001.f_dba_gen_random_char(6)) || ''::text) AS pwdof
        UNION ALL
         SELECT 'conversation_manager'::text AS accountof,
            (((('conversation-manager'::text || '_'::text) || meta_001.f_dba_gen_random_between(7000, 9999)) || meta_001.f_dba_gen_random_char(6)) || ''::text) AS pwdof
        UNION ALL
         SELECT 'fresh_service'::text AS accountof,
            (((('fresh-service'::text || '_'::text) || meta_001.f_dba_gen_random_between(7000, 9999)) || meta_001.f_dba_gen_random_char(6)) || ''::text) AS pwdof
        UNION ALL
         SELECT 'icims_sync_service'::text AS accountof,
            (((('icims-sync-service'::text || '_'::text) || meta_001.f_dba_gen_random_between(7000, 9999)) || meta_001.f_dba_gen_random_char(6)) || ''::text) AS pwdof
        UNION ALL
         SELECT 'identity_service'::text AS accountof,
            (((('identity-service'::text || '_'::text) || meta_001.f_dba_gen_random_between(7000, 9999)) || meta_001.f_dba_gen_random_char(6)) || ''::text) AS pwdof
        UNION ALL
         SELECT 'lisa_nlp'::text AS accountof,
            (((('lisa-nlp'::text || '_'::text) || meta_001.f_dba_gen_random_between(7000, 9999)) || meta_001.f_dba_gen_random_char(6)) || ''::text) AS pwdof
        UNION ALL
         SELECT 'lisa_service'::text AS accountof,
            (((('lisa-service'::text || '_'::text) || meta_001.f_dba_gen_random_between(7000, 9999)) || meta_001.f_dba_gen_random_char(6)) || ''::text) AS pwdof
        UNION ALL
         SELECT 'lisa_ui'::text AS accountof,
            (((('lisa-ui'::text || '_'::text) || meta_001.f_dba_gen_random_between(7000, 9999)) || meta_001.f_dba_gen_random_char(6)) || ''::text) AS pwdof
        UNION ALL
         SELECT 'mercury_service'::text AS accountof,
            (((('mercury-service'::text || '_'::text) || meta_001.f_dba_gen_random_between(7000, 9999)) || meta_001.f_dba_gen_random_char(6)) || ''::text) AS pwdof
        UNION ALL
         SELECT 'punchout_service'::text AS accountof,
            (((('punchout-service'::text || '_'::text) || meta_001.f_dba_gen_random_between(7000, 9999)) || meta_001.f_dba_gen_random_char(6)) || ''::text) AS pwdof
        UNION ALL
         SELECT 'redcell_service'::text AS accountof,
            (((('redcell-service'::text || '_'::text) || meta_001.f_dba_gen_random_between(7000, 9999)) || meta_001.f_dba_gen_random_char(6)) || ''::text) AS pwdof
        UNION ALL
         SELECT 'steve.accardo@aus.com'::text AS accountof,
            (((('steve.accardo'::text || '_'::text) || meta_001.f_dba_gen_random_between(7000, 9999)) || meta_001.f_dba_gen_random_char(6)) || ''::text) AS pwdof
        UNION ALL
         SELECT 'vance.cagle@aus.com'::text AS accountof,
            (((('vance.cagle'::text || '_'::text) || meta_001.f_dba_gen_random_between(7000, 9999)) || meta_001.f_dba_gen_random_char(6)) || ''::text) AS pwdof
        UNION ALL
         SELECT 'supun.edirisinghe@aus.com'::text AS accountof,
            (((('supun.edirisinghe'::text || '_'::text) || meta_001.f_dba_gen_random_between(7000, 9999)) || meta_001.f_dba_gen_random_char(6)) || ''::text) AS pwdof
        UNION ALL
         SELECT 'matthew.hartley@aus.com'::text AS accountof,
            (((('matthew.hartley'::text || '_'::text) || meta_001.f_dba_gen_random_between(7000, 9999)) || meta_001.f_dba_gen_random_char(6)) || ''::text) AS pwdof
        UNION ALL
         SELECT 'baurjan.jenis@aus.com'::text AS accountof,
            (((('baurjan.jenis'::text || '_'::text) || meta_001.f_dba_gen_random_between(7000, 9999)) || meta_001.f_dba_gen_random_char(6)) || ''::text) AS pwdof
        UNION ALL
         SELECT 'batul.kanawati@aus.com'::text AS accountof,
            (((('batul.kanawati'::text || '_'::text) || meta_001.f_dba_gen_random_between(7000, 9999)) || meta_001.f_dba_gen_random_char(6)) || ''::text) AS pwdof
        UNION ALL
         SELECT 'myensulu.khaval@aus.com'::text AS accountof,
            (((('myensulu.khaval'::text || '_'::text) || meta_001.f_dba_gen_random_between(7000, 9999)) || meta_001.f_dba_gen_random_char(6)) || ''::text) AS pwdof
        UNION ALL
         SELECT 'mo.moustafa@aus.com'::text AS accountof,
            (((('mo.moustafa'::text || '_'::text) || meta_001.f_dba_gen_random_between(7000, 9999)) || meta_001.f_dba_gen_random_char(6)) || ''::text) AS pwdof
        UNION ALL
         SELECT 'praveen.nagabhaira@aus.com'::text AS accountof,
            (((('praveen.nagabhaira'::text || '_'::text) || meta_001.f_dba_gen_random_between(7000, 9999)) || meta_001.f_dba_gen_random_char(6)) || ''::text) AS pwdof
        UNION ALL
         SELECT 'sean.nobles@aus.com'::text AS accountof,
            (((('sean.nobles'::text || '_'::text) || meta_001.f_dba_gen_random_between(7000, 9999)) || meta_001.f_dba_gen_random_char(6)) || ''::text) AS pwdof
        UNION ALL
         SELECT 'armando.plascencia@aus.com'::text AS accountof,
            (((('armando.plascencia'::text || '_'::text) || meta_001.f_dba_gen_random_between(7000, 9999)) || meta_001.f_dba_gen_random_char(6)) || ''::text) AS pwdof
        UNION ALL
         SELECT 'alexander.samborskiy@aus.com'::text AS accountof,
            (((('alexander.samborskiy'::text || '_'::text) || meta_001.f_dba_gen_random_between(7000, 9999)) || meta_001.f_dba_gen_random_char(6)) || ''::text) AS pwdof
        UNION ALL
         SELECT 'rudain.sebai@aus.com'::text AS accountof,
            (((('rudain.sebai'::text || '_'::text) || meta_001.f_dba_gen_random_between(7000, 9999)) || meta_001.f_dba_gen_random_char(6)) || ''::text) AS pwdof
        UNION ALL
         SELECT 'illia.silin@aus.com'::text AS accountof,
            (((('illia.silin'::text || '_'::text) || meta_001.f_dba_gen_random_between(7000, 9999)) || meta_001.f_dba_gen_random_char(6)) || ''::text) AS pwdof
        UNION ALL
         SELECT 'dan.stauffer@aus.com'::text AS accountof,
            (((('dan.stauffer'::text || '_'::text) || meta_001.f_dba_gen_random_between(7000, 9999)) || meta_001.f_dba_gen_random_char(6)) || ''::text) AS pwdof
        UNION ALL
         SELECT 'woo.youn@aus.com'::text AS accountof,
            (((('woo.youn'::text || '_'::text) || meta_001.f_dba_gen_random_between(7000, 9999)) || meta_001.f_dba_gen_random_char(6)) || ''::text) AS pwdof
        UNION ALL
         SELECT 'alex.zlochevsky@aus.com'::text AS accountof,
            (((('alex.zlochevsky'::text || '_'::text) || meta_001.f_dba_gen_random_between(7000, 9999)) || meta_001.f_dba_gen_random_char(6)) || ''::text) AS pwdof
        )
 SELECT this_query.environment_is,
    this_query.account_type,
    this_query.newroleof,
    this_query.pwdof,
    this_query.run_role
   FROM ( SELECT replace(these_envs.envof, '_'::text, ''::text) AS environment_is,
            'Services'::text AS account_type,
            ('rl_'::text || gen_pwds.accountof) AS newroleof,
            ((these_envs.envof || gen_pwds.pwdof) || '_P'::text) AS pwdof,
            ((((((((('CREATE ROLE '::text || 'rl_'::text) || gen_pwds.accountof) || ' WITH NOSUPERUSER NOCREATEDB NOCREATEROLE NOINHERIT LOGIN NOREPLICATION NOBYPASSRLS CONNECTION LIMIT 30 password '::text) || chr(39)) || these_envs.envof) || gen_pwds.pwdof) || '_P'::text) || chr(39)) || ';'::text) AS run_role
           FROM gen_pwds,
            these_envs
          WHERE ("position"(gen_pwds.accountof, '@'::text) = 0)
        UNION ALL
         SELECT replace(these_envs.envof, '_'::text, ''::text) AS environment_is,
            'Developers'::text AS account_type,
            ('rl_'::text || gen_pwds.accountof) AS newroleof,
            ((these_envs.envof || gen_pwds.pwdof) || '_P'::text) AS pwdof,
            ((((((((((('CREATE ROLE '::text || chr(34)) || 'rl_'::text) || gen_pwds.accountof) || chr(34)) || ' WITH NOSUPERUSER NOCREATEDB NOCREATEROLE NOINHERIT LOGIN NOREPLICATION NOBYPASSRLS CONNECTION LIMIT 30 password '::text) || chr(39)) || these_envs.envof) || gen_pwds.pwdof) || '_P'::text) || chr(39)) || ';'::text) AS run_role
           FROM gen_pwds,
            these_envs
          WHERE ("position"(gen_pwds.accountof, '@'::text) > 0)) this_query
  ORDER BY this_query.account_type DESC;


ALTER TABLE meta_001.v_dba_create_roles_with_pwds OWNER TO "armando";

--
-- Name: v_dba_get_functions; Type: VIEW; Schema: meta_001; Owner: IHSLaMltbFn1
--

CREATE VIEW meta_001.v_dba_get_functions AS
 SELECT routines.specific_catalog,
    routines.specific_schema,
    routines.specific_name,
    routines.routine_catalog,
    routines.routine_schema,
    routines.routine_name,
    routines.routine_type,
    routines.module_catalog,
    routines.module_schema,
    routines.module_name,
    routines.udt_catalog,
    routines.udt_schema,
    routines.udt_name,
    routines.data_type,
    routines.character_maximum_length,
    routines.character_octet_length,
    routines.character_set_catalog,
    routines.character_set_schema,
    routines.character_set_name,
    routines.collation_catalog,
    routines.collation_schema,
    routines.collation_name,
    routines.numeric_precision,
    routines.numeric_precision_radix,
    routines.numeric_scale,
    routines.datetime_precision,
    routines.interval_type,
    routines.interval_precision,
    routines.type_udt_catalog,
    routines.type_udt_schema,
    routines.type_udt_name,
    routines.scope_catalog,
    routines.scope_schema,
    routines.scope_name,
    routines.maximum_cardinality,
    routines.dtd_identifier,
    routines.routine_body,
    routines.routine_definition,
    routines.external_name,
    routines.external_language,
    routines.parameter_style,
    routines.is_deterministic,
    routines.sql_data_access,
    routines.is_null_call,
    routines.sql_path,
    routines.schema_level_routine,
    routines.max_dynamic_result_sets,
    routines.is_user_defined_cast,
    routines.is_implicitly_invocable,
    routines.security_type,
    routines.to_sql_specific_catalog,
    routines.to_sql_specific_schema,
    routines.to_sql_specific_name,
    routines.as_locator,
    routines.created,
    routines.last_altered,
    routines.new_savepoint_level,
    routines.is_udt_dependent,
    routines.result_cast_from_data_type,
    routines.result_cast_as_locator,
    routines.result_cast_char_max_length,
    routines.result_cast_char_octet_length,
    routines.result_cast_char_set_catalog,
    routines.result_cast_char_set_schema,
    routines.result_cast_char_set_name,
    routines.result_cast_collation_catalog,
    routines.result_cast_collation_schema,
    routines.result_cast_collation_name,
    routines.result_cast_numeric_precision,
    routines.result_cast_numeric_precision_radix,
    routines.result_cast_numeric_scale,
    routines.result_cast_datetime_precision,
    routines.result_cast_interval_type,
    routines.result_cast_interval_precision,
    routines.result_cast_type_udt_catalog,
    routines.result_cast_type_udt_schema,
    routines.result_cast_type_udt_name,
    routines.result_cast_scope_catalog,
    routines.result_cast_scope_schema,
    routines.result_cast_scope_name,
    routines.result_cast_maximum_cardinality,
    routines.result_cast_dtd_identifier
   FROM information_schema.routines
  WHERE (((routines.specific_schema)::text <> ALL (ARRAY[('pg_catalog'::character varying)::text, ('information_schema'::character varying)::text])) AND ((routines.type_udt_name)::text <> 'trigger'::text));


ALTER TABLE meta_001.v_dba_get_functions OWNER TO "armando";

--
-- Name: v_dba_create_select; Type: VIEW; Schema: meta_001; Owner: IHSLaMltbFn1
--

CREATE VIEW meta_001.v_dba_create_select AS
 SELECT 'VIEW'::text AS object_grant_for,
    1 AS sort_order,
    (('grant usage  on SCHEMA   '::text || lpad(quote_ident((a.schemaname)::text), 20)) || '  to api_postgrest; '::text) AS sqlusage,
    (((('GRANT SELECT ON        '::text || lpad(quote_ident((a.schemaname)::text), 20)) || '.'::text) || rpad(quote_ident((a.viewname)::text), 70)) || ' in SCHEMA META_001 TO api_postgrest;'::text) AS sqlgrants,
    a.schemaname,
    a.viewname AS object_name,
    a.viewowner AS object_owner
   FROM pg_views a
  WHERE ((a.schemaname <> ALL (ARRAY['pg_catalog'::name, 'information_schema'::name])) AND (a.viewname ~~ '%v_dba%'::text))
UNION ALL
 SELECT 'FUNCTION'::text AS object_grant_for,
    2 AS sort_order,
    (('grant usage   on SCHEMA   '::text || lpad(quote_ident((v_dba_get_functions.specific_schema)::text), 70)) || '  to api_postgrest; '::text) AS sqlusage,
    (((('GRANT execute ON        '::text || lpad(quote_ident((v_dba_get_functions.specific_schema)::text), 70)) || '.'::text) || rpad(quote_ident((v_dba_get_functions.routine_name)::text), 90)) || '() TO api_postgrest;'::text) AS sqlgrants,
    v_dba_get_functions.specific_schema AS schemaname,
    v_dba_get_functions.specific_name AS object_name,
    v_dba_get_functions.specific_schema AS object_owner
   FROM meta_001.v_dba_get_functions
  WHERE (((v_dba_get_functions.specific_schema)::text = 'meta_001'::text) AND ((v_dba_get_functions.specific_name)::text !~~ 'gin_%'::text));


ALTER TABLE meta_001.v_dba_create_select OWNER TO "armando";

--
-- Name: v_dba_create_select_api_postgrest; Type: VIEW; Schema: meta_001; Owner: IHSLaMltbFn1
--

CREATE VIEW meta_001.v_dba_create_select_api_postgrest AS
 WITH abc AS (
         SELECT 'api_postgrest'::text AS apiuser
        ), fulllist AS (
         SELECT 'VIEW'::text AS object_grant_for,
            1 AS sort_order,
            (((('grant usage on SCHEMA '::text || lpad(quote_ident((a.schemaname)::text), 50)) || ' to '::text) || abc.apiuser) || '; '::text) AS sqlusage,
            (((((('GRANT SELECT ON        '::text || lpad(quote_ident((a.schemaname)::text), 50)) || '.'::text) || rpad(quote_ident((a.viewname)::text), 70)) || '  TO '::text) || abc.apiuser) || '; '::text) AS sqlgrants,
            a.schemaname,
            a.viewname AS object_name,
            a.viewowner AS object_owner
           FROM pg_views a,
            abc
          WHERE (a.schemaname <> ALL (ARRAY['public'::name, 'pg_catalog'::name, 'information_schema'::name]))
        UNION ALL
         SELECT 'FUNCTION'::text AS object_grant_for,
            2 AS sort_order,
            (((('grant usage on SCHEMA '::text || lpad(quote_ident((v_dba_get_functions.specific_schema)::text), 50)) || ' to '::text) || abc.apiuser) || '; '::text) AS sqlusage,
            (((((('GRANT execute ON        '::text || lpad(quote_ident((v_dba_get_functions.specific_schema)::text), 50)) || '.'::text) || quote_ident((v_dba_get_functions.routine_name)::text)) || '() TO '::text) || abc.apiuser) || '; '::text) AS sqlgrants,
            v_dba_get_functions.specific_schema AS schemaname,
            v_dba_get_functions.specific_name AS object_name,
            v_dba_get_functions.specific_schema AS object_owner
           FROM meta_001.v_dba_get_functions,
            abc
          WHERE (((v_dba_get_functions.specific_schema)::text = 'meta_001'::text) AND ((v_dba_get_functions.specific_name)::text !~~ 'gin_%'::text))
        )
 SELECT 'CREATE ROLE api_postgrest WITH 
	NOSUPERUSER
	NOCREATEDB
	NOCREATEROLE
	NOINHERIT
	LOGIN
	NOREPLICATION
	NOBYPASSRLS;
 grant usage on schema   meta_001 to api_postgrest;'::text AS sqltext
UNION ALL
 SELECT DISTINCT fulllist.sqlusage AS sqltext
   FROM fulllist
  WHERE (fulllist.schemaname = 'meta_001'::name)
UNION ALL
 SELECT DISTINCT fulllist.sqlgrants AS sqltext
   FROM fulllist
  WHERE (fulllist.schemaname = 'meta_001'::name);


ALTER TABLE meta_001.v_dba_create_select_api_postgrest OWNER TO "armando";

--
-- Name: v_dba_create_select_execute_all; Type: VIEW; Schema: meta_001; Owner: IHSLaMltbFn1
--

CREATE VIEW meta_001.v_dba_create_select_execute_all AS
 WITH find_schemas AS (
         SELECT schemata.schema_name
           FROM information_schema.schemata
          WHERE (((schemata.schema_name)::text <> ALL ((ARRAY['pg_catalog'::character varying, 'information_schema'::character varying])::text[])) AND ((schemata.schema_name)::text !~~ 'pg_%'::text))
        )
 SELECT (('GRANT USAGE ON SCHEMA                          '::text || (find_schemas.schema_name)::text) || ' TO readonly;'::text) AS g_usage,
    (('GRANT SELECT ON ALL TABLES IN SCHEMA           '::text || (find_schemas.schema_name)::text) || ' TO readonly;'::text) AS sel_all_sql,
    (('GRANT USAGE, SELECT ON ALL SEQUENCES IN SCHEMA '::text || (find_schemas.schema_name)::text) || ' TO readonly;'::text) AS sel_seq_sql,
    (('GRANT EXECUTE ON ALL FUNCTIONS IN SCHEMA       '::text || (find_schemas.schema_name)::text) || ' TO readonly;'::text) AS exec_all_sql
   FROM find_schemas;


ALTER TABLE meta_001.v_dba_create_select_execute_all OWNER TO "armando";

--
-- Name: v_dba_dan_fnxs; Type: VIEW; Schema: meta_001; Owner: IHSLaMltbFn1
--

CREATE VIEW meta_001.v_dba_dan_fnxs AS
 SELECT dan_fnxs.table_schema,
    dan_fnxs.table_name,
    dan_fnxs.table_full_name,
    dan_fnxs.table_type,
    dan_fnxs.function_schema_name,
    dan_fnxs.function_name,
    dan_fnxs.function_args,
    dan_fnxs.function_definition,
    to_char(dan_fnxs.this_run, 'yyyy/mm/dd'::text) AS this_run,
    dan_fnxs.id,
    dan_fnxs.explain_output
   FROM meta_001.dan_fnxs;


ALTER TABLE meta_001.v_dba_dan_fnxs OWNER TO "armando";

--
-- Name: v_dba_dan_table_explain; Type: VIEW; Schema: meta_001; Owner: IHSLaMltbFn1
--

CREATE VIEW meta_001.v_dba_dan_table_explain AS
 SELECT (((('
drop table if exists meta_001.dan_views_explain;
commit;

create table  meta_001.dan_views_explain (id int, array_fnd text);
commit;

insert into   meta_001.dan_views_explain (id, array_fnd) (
SELECT id, 
    ARRAY[meta_001.explain_this(query::text)]::text AS array_fnd
   FROM  meta_001.dan_views 
   where query not like '::text || chr(39)) || '%pg_authid%'::text) || chr(39)) || '
  );
commit;

 with abc as (select id, array_fnd from meta_001.dan_views_explain )
 update meta_001.dan_views 
 set explain_output = abc.array_fnd
 from abc
 where  meta_001.dan_views.id = abc.id;
commit;

select * from meta_001.dan_views;
'::text) AS sqltext;


ALTER TABLE meta_001.v_dba_dan_table_explain OWNER TO "armando";

--
-- Name: v_dba_dan_views; Type: VIEW; Schema: meta_001; Owner: IHSLaMltbFn1
--

CREATE VIEW meta_001.v_dba_dan_views AS
 WITH abc AS (
         SELECT dan_views.table_schema,
            dan_views.table_owner,
            dan_views.table_name,
            dan_views.row_count,
            dan_views.column_count,
            dan_views.comments,
            rtrim(substr(dan_views.query, 1, 4000)) AS query_1,
            rtrim(substr(dan_views.query, 4001, 4000)) AS query_2,
            rtrim(substr(dan_views.query, 8001, 4000)) AS query_3,
            to_char(dan_views.this_run, 'yyyy/mm/dd'::text) AS this_run,
            dan_views.id,
            rtrim(substr(dan_views.explain_output, 1, 4000)) AS explain_output_1,
            rtrim(substr(dan_views.explain_output, 4001, 4000)) AS explain_output_2,
            rtrim(substr(dan_views.explain_output, 8001, 4000)) AS explain_output_3,
            dan_views.ctid AS this_pk
           FROM meta_001.dan_views
        )
 SELECT abc.table_schema,
    abc.table_owner,
    abc.table_name,
    abc.row_count,
    abc.column_count,
    abc.comments,
    abc.query_1,
    abc.query_2,
    abc.query_3,
    abc.this_run,
    abc.id,
    abc.explain_output_1,
    abc.explain_output_2,
    abc.explain_output_3,
    abc.this_pk,
    length(abc.query_1) AS len_q1,
    length(abc.query_2) AS len_q2,
    length(abc.query_3) AS len_q3,
    length(abc.explain_output_1) AS len_eo1,
    length(abc.explain_output_2) AS len_eo2,
    length(abc.explain_output_3) AS len_eo3
   FROM abc;


ALTER TABLE meta_001.v_dba_dan_views OWNER TO "armando";

--
-- Name: v_dba_view_table_dependency_with_cols; Type: VIEW; Schema: meta_001; Owner: IHSLaMltbFn1
--

CREATE VIEW meta_001.v_dba_view_table_dependency_with_cols AS
 SELECT dependent_ns.nspname AS dependent_schema,
    dependent_view.relname AS dependent_view,
    source_ns.nspname AS source_schema,
    source_table.relname AS source_table,
    pg_attribute.attname AS column_name
   FROM ((((((pg_depend
     JOIN pg_rewrite ON ((pg_depend.objid = pg_rewrite.oid)))
     JOIN pg_class dependent_view ON ((pg_rewrite.ev_class = dependent_view.oid)))
     JOIN pg_class source_table ON ((pg_depend.refobjid = source_table.oid)))
     JOIN pg_attribute ON (((pg_depend.refobjid = pg_attribute.attrelid) AND (pg_depend.refobjsubid = pg_attribute.attnum))))
     JOIN pg_namespace dependent_ns ON ((dependent_ns.oid = dependent_view.relnamespace)))
     JOIN pg_namespace source_ns ON ((source_ns.oid = source_table.relnamespace)))
  WHERE (pg_attribute.attnum > 0)
  ORDER BY dependent_ns.nspname, dependent_view.relname;


ALTER TABLE meta_001.v_dba_view_table_dependency_with_cols OWNER TO "armando";

--
-- Name: v_dba_dan_views_by_chr10; Type: VIEW; Schema: meta_001; Owner: IHSLaMltbFn1
--

CREATE VIEW meta_001.v_dba_dan_views_by_chr10 AS
 WITH inspect_tbls AS (
         SELECT x.dependent_schema,
            x.dependent_view,
            x.source_schema,
            x.source_table,
            x.column_name
           FROM meta_001.v_dba_view_table_dependency_with_cols x
        ), get_source AS (
         SELECT DISTINCT v_dba_dan_views.table_schema,
            v_dba_dan_views.table_name,
            ((((v_dba_dan_views.query_1 || chr(10)) || v_dba_dan_views.query_2) || chr(10)) || v_dba_dan_views.query_3) AS query,
            v_dba_dan_views.this_run,
            v_dba_dan_views.this_pk
           FROM meta_001.v_dba_dan_views,
            inspect_tbls
          WHERE (v_dba_dan_views.table_name = inspect_tbls.dependent_view)
        ), get_pieces AS (
         SELECT row_number() OVER () AS i,
            unnest(string_to_array(get_source.query, chr(10))) AS source_code,
            get_source.table_schema,
            get_source.table_name,
            get_source.this_pk
           FROM get_source
        )
 SELECT get_pieces.i,
    get_pieces.source_code,
    get_pieces.table_schema,
    get_pieces.table_name,
    get_pieces.this_pk,
    row_number() OVER (PARTITION BY get_pieces.i) AS rownum
   FROM get_pieces
  ORDER BY get_pieces.table_schema, get_pieces.table_name, get_pieces.i;


ALTER TABLE meta_001.v_dba_dan_views_by_chr10 OWNER TO "armando";

--
-- Name: v_dba_dan_views_by_chr10_1; Type: VIEW; Schema: meta_001; Owner: IHSLaMltbFn1
--
fuck

create sequence v_dba_dan_views_seq;

CREATE VIEW meta_001.v_dba_dan_views_by_chr10_1 AS
 WITH reset_seq AS (
         SELECT NULL::text
        ), inspect_tbls AS (
         SELECT x.dependent_schema,
            x.dependent_view,
            x.source_schema,
            x.source_table,
            x.column_name
           FROM meta_001.v_dba_view_table_dependency_with_cols x
        ), get_source AS (
         SELECT DISTINCT v_dba_dan_views.table_schema,
            v_dba_dan_views.table_name,
            ((((v_dba_dan_views.query_1 || chr(10)) || v_dba_dan_views.query_2) || chr(10)) || v_dba_dan_views.query_3) AS query,
            v_dba_dan_views.this_run,
            v_dba_dan_views.this_pk
           FROM meta_001.v_dba_dan_views,
            inspect_tbls
          WHERE (v_dba_dan_views.table_name = inspect_tbls.dependent_view)
        ), get_pieces AS (
         SELECT row_number() OVER () AS i,
            nextval('public.v_dba_dan_views_seq'::regclass) AS rownumof,
            unnest(string_to_array(get_source.query, chr(10))) AS source_code,
            get_source.table_schema,
            get_source.table_name,
            get_source.this_pk
           FROM get_source
        )
 SELECT NULL::bigint AS i,
    setval('public.v_dba_dan_views_seq'::regclass, (1)::bigint) AS rownumof,
    NULL::text AS source_code,
    NULL::name AS table_schema,
    NULL::name AS table_name,
    NULL::tid AS this_pk
UNION ALL
 SELECT get_pieces.i,
    get_pieces.rownumof,
    get_pieces.source_code,
    get_pieces.table_schema,
    get_pieces.table_name,
    get_pieces.this_pk
   FROM get_pieces
  ORDER BY 4, 5, 1, 2;


ALTER TABLE meta_001.v_dba_dan_views_by_chr10_1 OWNER TO "armando";

--
-- Name: v_dba_dashboard_col_dependencies_agg; Type: VIEW; Schema: meta_001; Owner: IHSLaMltbFn1
--

CREATE VIEW meta_001.v_dba_dashboard_col_dependencies_agg AS
 WITH abc AS (
         SELECT info.type,
            info.schema,
            info.name,
            info.identity,
            col_description(pg_attribute.attrelid, (pg_attribute.attnum)::integer) AS comment
           FROM pg_attribute,
            LATERAL pg_identify_object(('pg_class'::regclass)::oid, pg_attribute.attrelid, (pg_attribute.attnum)::integer) info(type, schema, name, identity)
          WHERE ((info.schema <> 'pg_toast'::text) AND (pg_attribute.attrelid >= (16384)::oid) AND (pg_attribute.attnum >= 0) AND (NOT pg_attribute.attisdropped))
        )
 SELECT count(1) AS count,
    abc.type,
    abc.schema
   FROM abc
  GROUP BY abc.type, abc.schema
  ORDER BY abc.schema, abc.type;


ALTER TABLE meta_001.v_dba_dashboard_col_dependencies_agg OWNER TO "armando";

--
-- Name: v_dba_dashboard_col_dependencies_det; Type: VIEW; Schema: meta_001; Owner: IHSLaMltbFn1
--

CREATE VIEW meta_001.v_dba_dashboard_col_dependencies_det AS
 WITH abc AS (
         SELECT pg_attribute.attrelid,
            pg_attribute.attname,
            pg_attribute.atttypid,
            info.type AS type1,
            info.schema AS schema1,
            info.name AS name1,
            info.identity AS identity1,
            col_description(pg_attribute.attrelid, (pg_attribute.attnum)::integer) AS comment1,
            '------------'::text AS newinvestigate
           FROM pg_attribute,
            LATERAL pg_identify_object(('pg_class'::regclass)::oid, pg_attribute.attrelid, (pg_attribute.attnum)::integer) info(type, schema, name, identity)
          WHERE ((info.schema <> 'pg_toast'::text) AND (pg_attribute.attrelid >= (16384)::oid) AND (pg_attribute.attnum >= 0) AND (NOT pg_attribute.attisdropped))
        )
 SELECT abc.attrelid,
    abc.attname,
    abc.atttypid,
    abc.type1,
    abc.schema1,
    abc.name1,
    abc.identity1,
    abc.comment1,
    abc.newinvestigate
   FROM abc
  ORDER BY abc.schema1, abc.type1;


ALTER TABLE meta_001.v_dba_dashboard_col_dependencies_det OWNER TO "armando";

--
-- Name: v_dba_dashboard_dependencies_det_story; Type: VIEW; Schema: meta_001; Owner: IHSLaMltbFn1
--

CREATE VIEW meta_001.v_dba_dashboard_dependencies_det_story AS
 WITH abc AS (
         SELECT (((n.nspname)::text || '.'::text) || (c.relname)::text) AS fullname,
            n.nspname AS schema_name,
            c.relname AS rel_name,
            (c.relkind)::text AS rel_kind,
            pg_get_userbyid(c.relowner) AS owner_name
           FROM (pg_class c
             JOIN pg_namespace n ON ((n.oid = c.relnamespace)))
        UNION ALL
         SELECT (((n.nspname)::text || '.'::text) || (p.proname)::text) AS fullname,
            n.nspname AS schema_name,
            p.proname,
            'PRO'::text AS text,
            pg_get_userbyid(p.proowner) AS pg_get_userbyid
           FROM (pg_proc p
             JOIN pg_namespace n ON ((n.oid = p.pronamespace)))
        ), get_fnx_returns AS (
         SELECT
                CASE abc.rel_kind
                    WHEN 'r'::text THEN 'ordinary_table'::text
                    WHEN 'v'::text THEN 'view'::text
                    WHEN 'i'::text THEN 'index'::text
                    WHEN 'S'::text THEN 'sequence'::text
                    WHEN 's'::text THEN 'special'::text
                    WHEN 'PRO'::text THEN 'procedure'::text
                    WHEN 'm'::text THEN 'materialized_view'::text
                    WHEN 't'::text THEN 'TOAST table'::text
                    WHEN 'c'::text THEN 'composite type'::text
                    WHEN 'f'::text THEN 'foreign table'::text
                    WHEN 'p'::text THEN 'partitioned table'::text
                    WHEN 'I'::text THEN 'partitioned index'::text
                    ELSE NULL::text
                END AS rel_kind_text,
            ( SELECT array_to_string(ARRAY( SELECT meta_001.dependency_tree(abc.fullname) AS dependency_tree), chr(10)) AS array_to_string) AS dep_story,
            abc.fullname,
            abc.schema_name,
            abc.rel_name,
            abc.rel_kind,
            abc.owner_name
           FROM abc
          WHERE (abc.schema_name <> ALL (ARRAY['pg_toast'::name, 'pg_catalog'::name, 'information_schema'::name]))
        )
 SELECT get_fnx_returns.rel_kind_text,
    get_fnx_returns.dep_story,
    get_fnx_returns.fullname,
    get_fnx_returns.schema_name,
    get_fnx_returns.rel_name,
    get_fnx_returns.rel_kind,
    get_fnx_returns.owner_name
   FROM get_fnx_returns
  ORDER BY get_fnx_returns.rel_kind_text, get_fnx_returns.schema_name, get_fnx_returns.rel_name;


ALTER TABLE meta_001.v_dba_dashboard_dependencies_det_story OWNER TO "armando";

--
-- Name: v_dba_dashboard_object_cnts; Type: VIEW; Schema: meta_001; Owner: winteam_prod_read_stg
--

CREATE VIEW meta_001.v_dba_dashboard_object_cnts AS
 SELECT n.nspname AS schema_name,
        CASE c.relkind
            WHEN 'r'::"char" THEN 't'::"char"
            WHEN 'v'::"char" THEN 'v'::"char"
            WHEN 'i'::"char" THEN 'i'::"char"
            WHEN 'S'::"char" THEN 's'::"char"
            WHEN 's'::"char" THEN 's'::"char"
            ELSE c.relkind
        END AS object_type,
    count(1) AS object_count
   FROM (pg_class c
     LEFT JOIN pg_namespace n ON ((n.oid = c.relnamespace)))
  WHERE (n.nspname <> ALL (ARRAY['information_schema'::name, 'pg_catalog'::name]))
  GROUP BY n.nspname,
        CASE c.relkind
            WHEN 'r'::"char" THEN 't'::"char"
            WHEN 'v'::"char" THEN 'v'::"char"
            WHEN 'i'::"char" THEN 'i'::"char"
            WHEN 'S'::"char" THEN 's'::"char"
            WHEN 's'::"char" THEN 's'::"char"
            ELSE c.relkind
        END
  ORDER BY n.nspname,
        CASE c.relkind
            WHEN 'r'::"char" THEN 't'::"char"
            WHEN 'v'::"char" THEN 'v'::"char"
            WHEN 'i'::"char" THEN 'i'::"char"
            WHEN 'S'::"char" THEN 's'::"char"
            WHEN 's'::"char" THEN 's'::"char"
            ELSE c.relkind
        END;


ALTER TABLE meta_001.v_dba_dashboard_object_cnts OWNER TO winteam_prod_read_stg;

--
-- Name: v_dba_db_changes__public__job__lisa_enabled_date; Type: VIEW; Schema: meta_001; Owner: IHSLaMltbFn1
--

CREATE VIEW meta_001.v_dba_db_changes__public__job__lisa_enabled_date AS
 WITH abc AS (
         SELECT curemployeeworkflowlookup.job_id,
            min(date(curemployeeworkflowlookup.created_on)) AS min_date_lisa,
            max(date(curemployeeworkflowlookup.updated_at)) AS max_date_lisa,
            count(1) AS cnt_lisa
           FROM public.curemployeeworkflowlookup
          WHERE (((curemployeeworkflowlookup.ticket_id)::text <> '-1'::text) AND ((curemployeeworkflowlookup.job_id)::text IN ( SELECT job.job_id
                   FROM public.job
                  WHERE (job.lisa_enabled_date IS NULL))))
          GROUP BY curemployeeworkflowlookup.job_id
        ), get_sql AS (
         SELECT 'alter table public.job add  lisa_enabled_date date null;'::text AS ddl_sql,
            ((((((((((('update public.job set lisa_enabled_date = to_date('::text || chr(39)) || abc.min_date_lisa) || chr(39)) || ','::text) || chr(39)) || 'yyyy-mm-dd'::text) || chr(39)) || ') '::text) || ' where job_id = '::text) || lpad(((chr(39) || (abc.job_id)::text) || chr(39)), 15)) || ' and lisa_enabled_date is null;'::text) AS sqltext,
            abc.job_id
           FROM abc
        )
 SELECT get_sql.ddl_sql,
    get_sql.sqltext,
    get_sql.job_id
   FROM get_sql;


ALTER TABLE meta_001.v_dba_db_changes__public__job__lisa_enabled_date OWNER TO "armando";

--
-- Name: v_dba_db_changes__public__job__lisa_enabled_date_cewflu_tix_upd; Type: VIEW; Schema: meta_001; Owner: IHSLaMltbFn1
--

CREATE VIEW meta_001.v_dba_db_changes__public__job__lisa_enabled_date_cewflu_tix_upd AS
 WITH abc AS (
         SELECT j2.location_id AS job__location_id,
            min(date(c2.created_on)) AS cewflu_lisa_enabled_branch_date
           FROM (public.curemployeeworkflowlookup c2
             JOIN public.job j2 ON (((c2.job_id)::text = (j2.job_id)::text)))
          WHERE ((c2.ticket_id)::text <> '-1'::text)
          GROUP BY j2.location_id
        ), public_job_upd AS (
         SELECT ((((((((((('update public.job set lisa_enabled_date = to_date('::text || chr(39)) || abc.cewflu_lisa_enabled_branch_date) || chr(39)) || ','::text) || chr(39)) || 'yyyy-mm-dd'::text) || chr(39)) || ') '::text) || ' where location_id = '::text) || lpad(((chr(39) || (abc.job__location_id)::text) || chr(39)), 15)) || ' and lisa_enabled_date is null;'::text) AS sqltext,
            x.name,
            x.created_on,
            x.is_lunch_paid,
            x.are_lunch_available,
            x.job_guid,
            x.job_description,
            x.location_id,
            x.company_number,
            x.type_id,
            x.supervisor_id,
            x.job_payroll_tax_state_id,
            x.hours_category_id,
            x.json_data,
            x.job_id,
            x.job_address1,
            x.job_address2,
            x.job_city,
            x.job_zip,
            x.job_state,
            x.lisa_enabled,
            x.aop_id,
            x.schedule_strategy,
            x.lisa_enabled_date
           FROM public.job x,
            abc
          WHERE ((abc.job__location_id = x.location_id) AND (x.lisa_enabled_date IS NULL))
        )
 SELECT public_job_upd.sqltext,
    public_job_upd.name,
    public_job_upd.created_on,
    public_job_upd.is_lunch_paid,
    public_job_upd.are_lunch_available,
    public_job_upd.job_guid,
    public_job_upd.job_description,
    public_job_upd.location_id,
    public_job_upd.company_number,
    public_job_upd.type_id,
    public_job_upd.supervisor_id,
    public_job_upd.job_payroll_tax_state_id,
    public_job_upd.hours_category_id,
    public_job_upd.json_data,
    public_job_upd.job_id,
    public_job_upd.job_address1,
    public_job_upd.job_address2,
    public_job_upd.job_city,
    public_job_upd.job_zip,
    public_job_upd.job_state,
    public_job_upd.lisa_enabled,
    public_job_upd.aop_id,
    public_job_upd.schedule_strategy,
    public_job_upd.lisa_enabled_date
   FROM public_job_upd;


ALTER TABLE meta_001.v_dba_db_changes__public__job__lisa_enabled_date_cewflu_tix_upd OWNER TO "armando";

--
-- Name: v_dba_ddl_history; Type: VIEW; Schema: meta_001; Owner: IHSLaMltbFn1
--

CREATE VIEW meta_001.v_dba_ddl_history AS
 SELECT t_dba_ddl_history.id,
    t_dba_ddl_history.ddl_date,
    t_dba_ddl_history.ddl_tag,
    t_dba_ddl_history.object_name,
    t_dba_ddl_history.object_type,
    t_dba_ddl_history.ddl_event,
    t_dba_ddl_history.classid,
    t_dba_ddl_history.objid,
    t_dba_ddl_history.objsubid,
    t_dba_ddl_history.command_tag,
    t_dba_ddl_history.schema_name,
    t_dba_ddl_history.in_extension,
    t_dba_ddl_history.object_sql,
    t_dba_ddl_history.original,
    t_dba_ddl_history.normal,
    t_dba_ddl_history.is_temporary,
    t_dba_ddl_history.address_names,
    t_dba_ddl_history.address_args,
    t_dba_ddl_history.xid,
    t_dba_ddl_history.username,
    t_dba_ddl_history.datname,
    t_dba_ddl_history.client_addr,
    t_dba_ddl_history.client_port,
    t_dba_ddl_history.table_rewrite_oid,
    t_dba_ddl_history.table_rewrite_reason,
    t_dba_ddl_history.query,
    t_dba_ddl_history.application_name
   FROM meta_001.t_dba_ddl_history
  WHERE (t_dba_ddl_history.schema_name <> ALL (ARRAY['pg_temp'::text, 'pg_toast'::text]));


ALTER TABLE meta_001.v_dba_ddl_history OWNER TO "armando";

--
-- Name: v_dba_drop_show_all_indexes_location_id; Type: VIEW; Schema: meta_001; Owner: IHSLaMltbFn1
--

CREATE VIEW meta_001.v_dba_drop_show_all_indexes_location_id AS
 WITH abc AS (
         SELECT 'tables with location_id indexed'::text AS reason_text,
            s.schemaname,
            s.relname AS table_name,
            s.indexrelname AS index_name,
            i.indisunique,
            s.idx_scan AS index_scans,
            i.indexrelid,
            pg_get_indexdef(i.indexrelid) AS index_sql,
            "position"(pg_get_indexdef(i.indexrelid), 'location_id'::text) AS if_gtr_0_fnd
           FROM pg_stat_user_indexes s,
            pg_index i
          WHERE ((i.indexrelid = s.indexrelid) AND (s.schemaname <> ALL (ARRAY['pg_catalog'::name, 'information_schema'::name])) AND ("position"(pg_get_indexdef(i.indexrelid), 'location_id'::text) > 0))
        )
 SELECT abc.reason_text,
    abc.schemaname,
    abc.table_name,
    abc.index_name,
    abc.indisunique,
    abc.index_scans,
    abc.indexrelid,
    abc.index_sql,
    abc.if_gtr_0_fnd
   FROM abc;


ALTER TABLE meta_001.v_dba_drop_show_all_indexes_location_id OWNER TO "armando";

--
-- Name: v_dba_drop_unused_indexes_location_id; Type: VIEW; Schema: meta_001; Owner: IHSLaMltbFn1
--

CREATE VIEW meta_001.v_dba_drop_unused_indexes_location_id AS
 WITH psut AS (
         SELECT pg_stat_user_tables.relid,
            pg_stat_user_tables.seq_scan,
            pg_stat_user_tables.n_live_tup,
            (((COALESCE(pg_stat_user_tables.n_tup_ins, (0)::bigint) + COALESCE(pg_stat_user_tables.n_tup_upd, (0)::bigint)) - COALESCE(pg_stat_user_tables.n_tup_hot_upd, (0)::bigint)) + COALESCE(pg_stat_user_tables.n_tup_del, (0)::bigint)) AS write_activity
           FROM pg_stat_user_tables
        ), fndnw AS (
         SELECT pg_stat_user_indexes.indexrelid,
            pg_get_indexdef(pg_stat_user_indexes.indexrelid) AS index_sql,
            "position"(pg_get_indexdef(pg_stat_user_indexes.indexrelid), 'location_id'::text) AS in_pos,
            (((pg_stat_user_indexes.schemaname)::text || '.'::text) || (pg_stat_user_indexes.relname)::text) AS tablemane,
            pg_stat_user_indexes.indexrelname,
            pg_stat_user_indexes.idx_scan,
            psut.write_activity,
            psut.seq_scan,
            psut.n_live_tup,
            pg_size_pretty(pg_relation_size((pg_index.indexrelid)::regclass)) AS size,
            ((pg_stat_user_indexes.idx_scan)::double precision / ((psut.write_activity + 1))::double precision) AS pct_used
           FROM ((pg_stat_user_indexes
             JOIN pg_index ON ((pg_stat_user_indexes.indexrelid = pg_index.indexrelid)))
             JOIN psut ON ((pg_stat_user_indexes.relid = psut.relid)))
          WHERE ((pg_index.indisunique IS FALSE) AND (((pg_stat_user_indexes.idx_scan)::double precision / ((psut.write_activity + 1))::double precision) < (0.01)::double precision) AND (psut.write_activity >
                CASE
                    WHEN pg_is_in_recovery() THEN '-1'::integer
                    ELSE 10000
                END))
          ORDER BY psut.write_activity DESC, (((pg_stat_user_indexes.schemaname)::text || '.'::text) || (pg_stat_user_indexes.relname)::text), pg_stat_user_indexes.indexrelname
        )
 SELECT 'IDX used less than 1% of the time!'::text AS explain_drop,
    fndnw.indexrelid,
    fndnw.index_sql,
    fndnw.in_pos,
    fndnw.tablemane,
    fndnw.indexrelname,
    fndnw.idx_scan,
    fndnw.write_activity,
    fndnw.seq_scan,
    fndnw.n_live_tup,
    fndnw.size,
    fndnw.pct_used
   FROM fndnw
  WHERE (fndnw.in_pos > 0);


ALTER TABLE meta_001.v_dba_drop_unused_indexes_location_id OWNER TO "armando";

--
-- Name: v_dba_dup_object_names; Type: VIEW; Schema: meta_001; Owner: IHSLaMltbFn1
--

CREATE VIEW meta_001.v_dba_dup_object_names AS
 WITH abc AS (
         SELECT nsp.nspname AS schemaname,
            cls.relname AS objectname,
            (((nsp.nspname)::text || '.'::text) || (cls.relname)::text) AS full_name,
            rol.rolname AS objectowner,
                CASE cls.relkind
                    WHEN 'r'::"char" THEN 'TABLE'::text
                    WHEN 'm'::"char" THEN 'MATERIALIZED_VIEW'::text
                    WHEN 'i'::"char" THEN 'INDEX'::text
                    WHEN 'S'::"char" THEN 'SEQUENCE'::text
                    WHEN 'v'::"char" THEN 'VIEW'::text
                    WHEN 'c'::"char" THEN 'TYPE'::text
                    ELSE (cls.relkind)::text
                END AS objecttype
           FROM ((pg_class cls
             JOIN pg_roles rol ON ((rol.oid = cls.relowner)))
             JOIN pg_namespace nsp ON ((nsp.oid = cls.relnamespace)))
          WHERE ((nsp.nspname <> ALL (ARRAY['information_schema'::name, 'pg_catalog'::name])) AND (nsp.nspname !~~ 'pg_toast%'::text) AND (rol.rolname <> 'postgres'::name))
          ORDER BY nsp.nspname, cls.relname
        ), finddups AS (
         SELECT zzx.objectname AS fd_objectname,
            zzx.dupsfndifany AS fd_dup_if_exists,
            ((length(replace(zzx.dupsfndifany, ' , '::text, '~'::text)) - length(replace(zzx.dupsfndifany, ' , '::text, ''::text))) + 1) AS fd_occurs
           FROM ( SELECT qq.objectname,
                    qq.dupsfndifany
                   FROM ( SELECT abc_1.objectname,
                            string_agg(abc_1.full_name, ' , '::text ORDER BY abc_1.schemaname) AS dupsfndifany
                           FROM abc abc_1
                          GROUP BY abc_1.objectname
                          ORDER BY abc_1.objectname) qq) zzx
        )
 SELECT qqaz.fd_objectname,
    qqaz.fd_dup_if_exists,
    qqaz.fd_occurs,
    abc.schemaname,
    abc.objectname,
    abc.full_name,
    abc.objectowner,
    abc.objecttype
   FROM finddups qqaz,
    abc
  WHERE (abc.objectname = qqaz.fd_objectname)
  ORDER BY qqaz.fd_occurs DESC, qqaz.fd_objectname, qqaz.fd_dup_if_exists;


ALTER TABLE meta_001.v_dba_dup_object_names OWNER TO "armando";

--
-- Name: v_dba_find_existing_roles; Type: VIEW; Schema: meta_001; Owner: IHSLaMltbFn1
--

CREATE VIEW meta_001.v_dba_find_existing_roles AS
 SELECT CURRENT_USER AS usr,
    inet_server_addr() AS host,
    inet_server_port() AS port,
    current_database() AS current_db,
    r.rolname,
    ARRAY( SELECT b.rolname
           FROM (pg_auth_members m
             JOIN pg_roles b ON ((m.roleid = b.oid)))
          WHERE (m.member = r.oid)) AS memberof
   FROM pg_roles r
  WHERE (r.rolname <> ALL (ARRAY['pg_signal_backend'::name, 'rds_iam'::name, 'rds_replication'::name, 'rds_superuser'::name, 'rdsadmin'::name, 'rdsrepladmin'::name]))
  ORDER BY r.rolname;


ALTER TABLE meta_001.v_dba_find_existing_roles OWNER TO "armando";

--
-- Name: v_dba_get_cols; Type: VIEW; Schema: meta_001; Owner: IHSLaMltbFn1
--

CREATE VIEW meta_001.v_dba_get_cols AS
 SELECT columns.table_catalog,
    columns.table_schema,
    columns.table_name,
    columns.column_name,
    concat((columns.table_catalog)::text, '.', (columns.table_schema)::text, '.', (columns.table_name)::text, '.', (columns.column_name)::text, '.', (columns.data_type)::text, '.', (columns.character_maximum_length)::text, '.', (columns.column_default)::text) AS full_name,
    columns.ordinal_position,
    columns.data_type,
    columns.column_default,
    columns.is_nullable,
    columns.character_maximum_length,
    columns.numeric_precision,
    columns.is_self_referencing,
    columns.is_identity
   FROM information_schema.columns
  WHERE ((columns.table_schema)::text <> ALL (ARRAY[('pg_catalog'::character varying)::text, ('information_schema'::character varying)::text]))
  ORDER BY columns.column_name, columns.data_type, columns.table_schema, columns.table_name, columns.ordinal_position;


ALTER TABLE meta_001.v_dba_get_cols OWNER TO "armando";

--
-- Name: v_dba_fix_timestamps; Type: VIEW; Schema: meta_001; Owner: IHSLaMltbFn1
--

CREATE VIEW meta_001.v_dba_fix_timestamps AS
 WITH abc AS (
         SELECT x.table_catalog,
            x.table_schema,
            x.table_name,
            x.column_name,
            x.full_name,
            x.ordinal_position,
            x.data_type,
            x.column_default,
            x.is_nullable,
            x.character_maximum_length,
            x.numeric_precision,
            x.is_self_referencing,
            x.is_identity
           FROM meta_001.v_dba_get_cols x
          WHERE ((((x.data_type)::text ~~ 'timestamp%time zone'::text) AND ((x.column_default)::text !~~ (((('timezone('::text || chr(39)) || 'utc'::text) || chr(39)) || '::text, now())'::text))) OR (((x.data_type)::text ~~ 'timestamp%time zone'::text) AND (x.column_default IS NULL)))
          ORDER BY x.column_default
        ), act_on_cr_up AS (
         SELECT (((((((((((((((((((((((((('rem in DB=>'::text || lpad((abc.table_catalog)::text, 10)) || ' in SCHEMA=>'::text) || lpad((abc.table_schema)::text, 20)) || ' in TBL=>'::text) || lpad((abc.table_name)::text, 50)) || ' in dtype='::text) || (abc.data_type)::text) || ' in col=>'::text) || (abc.column_name)::text) || ' prior def=>'::text) || chr(44)) || (abc.column_default)::text) || chr(44)) || chr(10)) || 'alter table '::text) || lpad((abc.table_schema)::text, 20)) || '.'::text) || rpad((abc.table_name)::text, 50)) || ' alter column '::text) || (abc.column_name)::text) || ' set default timezone('::text) || chr(39)) || 'utc'::text) || chr(39)) || '::text, now());'::text) || chr(10)) AS sqltext,
            abc.column_name
           FROM abc
          WHERE ((abc.column_name)::text = ANY ((ARRAY['created_on'::character varying, 'updated_at'::character varying])::text[]))
          ORDER BY abc.table_catalog, abc.table_schema, abc.table_name
        ), act_on_other AS (
         SELECT (((((((((((((((((((((((((('rem in DB=>'::text || lpad((abc.table_catalog)::text, 10)) || ' in SCHEMA=>'::text) || lpad((abc.table_schema)::text, 20)) || ' in TBL=>'::text) || rpad((abc.table_name)::text, 50)) || ' in dtype='::text) || (abc.data_type)::text) || ' in col=>'::text) || (abc.column_name)::text) || ' prior def=>'::text) || chr(44)) || (abc.column_default)::text) || chr(44)) || chr(10)) || 'alter table '::text) || lpad((abc.table_schema)::text, 20)) || '.'::text) || rpad((abc.table_name)::text, 50)) || ' alter column '::text) || (abc.column_name)::text) || ' set default timezone('::text) || chr(39)) || 'utc'::text) || chr(39)) || '::text, now());'::text) || chr(10)) AS sqltext,
            abc.column_name
           FROM abc
          WHERE ((abc.column_name)::text <> ALL ((ARRAY['created_on'::character varying, 'updated_at'::character varying])::text[]))
          ORDER BY abc.table_catalog, abc.table_schema, abc.table_name
        )
 SELECT 'CR_UP'::text AS typeof,
    act_on_cr_up.sqltext,
    act_on_cr_up.column_name
   FROM act_on_cr_up
  WHERE (act_on_cr_up.sqltext IS NOT NULL)
UNION ALL
 SELECT 'OTHER'::text AS typeof,
    act_on_other.sqltext,
    act_on_other.column_name
   FROM act_on_other
  WHERE (act_on_other.sqltext IS NOT NULL);


ALTER TABLE meta_001.v_dba_fix_timestamps OWNER TO "armando";

--
-- Name: v_dba_fix_winteam_function_procedure_overrides_sql; Type: VIEW; Schema: meta_001; Owner: IHSLaMltbFn1
--

CREATE VIEW meta_001.v_dba_fix_winteam_function_procedure_overrides_sql AS
 WITH abc AS (
         SELECT n.nspname AS schema_name,
            p.proname AS specific_name,
            l.lanname AS language,
                CASE
                    WHEN (l.lanname = 'internal'::name) THEN p.prosrc
                    ELSE pg_get_functiondef(p.oid)
                END AS definition,
            pg_get_function_arguments(p.oid) AS arguments
           FROM (((pg_proc p
             LEFT JOIN pg_namespace n ON ((p.pronamespace = n.oid)))
             LEFT JOIN pg_language l ON ((p.prolang = l.oid)))
             LEFT JOIN pg_type t ON ((t.oid = p.prorettype)))
          WHERE ((n.nspname <> ALL (ARRAY['pg_catalog'::name, 'information_schema'::name])) AND (p.prokind = 'p'::"char"))
          ORDER BY n.nspname, p.proname
        )
 SELECT (((((((('update meta_001.winteam_roles_granted set sqltext = replace(sqltext, ''grant execute on FUNCTION '', ''grant execute on PROCEDURE '' ) where position (  '::text || chr(39)) || (abc.schema_name)::text) || '.'::text) || (abc.specific_name)::text) || chr(39)) || ' in sqltext ) > 0; '::text) || chr(10)) || 'commit;'::text)
   FROM abc;


ALTER TABLE meta_001.v_dba_fix_winteam_function_procedure_overrides_sql OWNER TO "armando";

--
-- Name: v_dba_function_view_table_dependency; Type: VIEW; Schema: meta_001; Owner: IHSLaMltbFn1
--

CREATE VIEW meta_001.v_dba_function_view_table_dependency AS
 SELECT t.table_schema,
    t.table_name,
    t.table_full_name,
    t.table_type,
    f.function_schema_name,
    f.function_name,
    f.function_args,
    f.function_definition
   FROM (( SELECT tables.table_schema,
            tables.table_name,
            (((tables.table_schema)::text || '.'::text) || (tables.table_name)::text) AS table_full_name,
            tables.table_type
           FROM information_schema.tables
          WHERE ((tables.table_schema)::text <> ALL ((ARRAY['information_schema'::character varying, 'pg_catalog'::character varying])::text[]))) t
     JOIN ( SELECT n.nspname AS function_schema_name,
            p.proname AS function_name,
            pg_get_function_arguments(p.oid) AS function_args,
            pg_get_functiondef(p.oid) AS function_definition
           FROM (pg_proc p
             JOIN pg_namespace n ON ((n.oid = p.pronamespace)))
          WHERE (n.nspname <> ALL (ARRAY['information_schema'::name, 'pg_catalog'::name]))) f ON (("position"(f.function_definition, (t.table_name)::text) > 0)))
  ORDER BY t.table_schema, t.table_type, t.table_name, f.function_schema_name, f.function_name;


ALTER TABLE meta_001.v_dba_function_view_table_dependency OWNER TO "armando";

--
-- Name: v_dba_get_alt_tbl_size_bloat; Type: VIEW; Schema: meta_001; Owner: IHSLaMltbFn1
--

CREATE VIEW meta_001.v_dba_get_alt_tbl_size_bloat AS
 SELECT current_database() AS current_database,
    s3.schemaname,
    s3.tblname,
    (s3.bs * (s3.tblpages)::numeric) AS real_size,
    (((s3.tblpages)::double precision - s3.est_tblpages) * (s3.bs)::double precision) AS extra_size,
        CASE
            WHEN (((s3.tblpages)::double precision - s3.est_tblpages) > (0)::double precision) THEN (((100)::double precision * ((s3.tblpages)::double precision - s3.est_tblpages)) / (s3.tblpages)::double precision)
            ELSE (0)::double precision
        END AS extra_ratio,
    s3.fillfactor,
        CASE
            WHEN (((s3.tblpages)::double precision - s3.est_tblpages_ff) > (0)::double precision) THEN (((s3.tblpages)::double precision - s3.est_tblpages_ff) * (s3.bs)::double precision)
            ELSE (0)::double precision
        END AS bloat_size,
        CASE
            WHEN (((s3.tblpages)::double precision - s3.est_tblpages_ff) > (0)::double precision) THEN (((100)::double precision * ((s3.tblpages)::double precision - s3.est_tblpages_ff)) / (s3.tblpages)::double precision)
            ELSE (0)::double precision
        END AS bloat_ratio,
    s3.is_na
   FROM ( SELECT (ceil((s2.reltuples / (((s2.bs - (s2.page_hdr)::numeric))::double precision / s2.tpl_size))) + ceil((s2.toasttuples / (4)::double precision))) AS est_tblpages,
            (ceil((s2.reltuples / ((((s2.bs - (s2.page_hdr)::numeric) * (s2.fillfactor)::numeric))::double precision / (s2.tpl_size * (100)::double precision)))) + ceil((s2.toasttuples / (4)::double precision))) AS est_tblpages_ff,
            s2.tblpages,
            s2.fillfactor,
            s2.bs,
            s2.tblid,
            s2.schemaname,
            s2.tblname,
            s2.heappages,
            s2.toastpages,
            s2.is_na
           FROM ( SELECT ((((((4 + s.tpl_hdr_size))::double precision + s.tpl_data_size) + ((2 * s.ma))::double precision) - (
                        CASE
                            WHEN ((s.tpl_hdr_size % (s.ma)::bigint) = 0) THEN (s.ma)::bigint
                            ELSE (s.tpl_hdr_size % (s.ma)::bigint)
                        END)::double precision) - (
                        CASE
                            WHEN (((ceil(s.tpl_data_size))::integer % s.ma) = 0) THEN s.ma
                            ELSE ((ceil(s.tpl_data_size))::integer % s.ma)
                        END)::double precision) AS tpl_size,
                    (s.bs - (s.page_hdr)::numeric) AS size_per_block,
                    (s.heappages + s.toastpages) AS tblpages,
                    s.heappages,
                    s.toastpages,
                    s.reltuples,
                    s.toasttuples,
                    s.bs,
                    s.page_hdr,
                    s.tblid,
                    s.schemaname,
                    s.tblname,
                    s.fillfactor,
                    s.is_na
                   FROM ( SELECT tbl.oid AS tblid,
                            ns.nspname AS schemaname,
                            tbl.relname AS tblname,
                            tbl.reltuples,
                            tbl.relpages AS heappages,
                            COALESCE(toast.relpages, 0) AS toastpages,
                            COALESCE(toast.reltuples, (0)::real) AS toasttuples,
                            COALESCE((("substring"(array_to_string(tbl.reloptions, ' '::text), 'fillfactor=([0-9]+)'::text))::smallint)::integer, 100) AS fillfactor,
                            (current_setting('block_size'::text))::numeric AS bs,
                                CASE
                                    WHEN ((version() ~ 'mingw32'::text) OR (version() ~ '64-bit|x86_64|ppc64|ia64|amd64'::text)) THEN 8
                                    ELSE 4
                                END AS ma,
                            24 AS page_hdr,
                            ((23 +
                                CASE
                                    WHEN (max(COALESCE(s_1.null_frac, (0)::real)) > (0)::double precision) THEN ((7 + count(s_1.attname)) / 8)
                                    ELSE (0)::bigint
                                END) +
                                CASE
                                    WHEN bool_or(((att.attname = 'oid'::name) AND (att.attnum < 0))) THEN 4
                                    ELSE 0
                                END) AS tpl_hdr_size,
                            sum((((1)::double precision - COALESCE(s_1.null_frac, (0)::real)) * (COALESCE(s_1.avg_width, 0))::double precision)) AS tpl_data_size,
                            (bool_or((att.atttypid = ('name'::regtype)::oid)) OR (sum(
                                CASE
                                    WHEN (att.attnum > 0) THEN 1
                                    ELSE 0
                                END) <> count(s_1.attname))) AS is_na
                           FROM ((((pg_attribute att
                             JOIN pg_class tbl ON ((att.attrelid = tbl.oid)))
                             JOIN pg_namespace ns ON ((ns.oid = tbl.relnamespace)))
                             LEFT JOIN pg_stats s_1 ON (((s_1.schemaname = ns.nspname) AND (s_1.tablename = tbl.relname) AND (s_1.inherited = false) AND (s_1.attname = att.attname))))
                             LEFT JOIN pg_class toast ON ((tbl.reltoastrelid = toast.oid)))
                          WHERE ((NOT att.attisdropped) AND (tbl.relkind = ANY (ARRAY['r'::"char", 'm'::"char"])))
                          GROUP BY tbl.oid, ns.nspname, tbl.relname, tbl.reltuples, tbl.relpages, COALESCE(toast.relpages, 0), COALESCE(toast.reltuples, (0)::real), COALESCE((("substring"(array_to_string(tbl.reloptions, ' '::text), 'fillfactor=([0-9]+)'::text))::smallint)::integer, 100), (current_setting('block_size'::text))::numeric,
                                CASE
                                    WHEN ((version() ~ 'mingw32'::text) OR (version() ~ '64-bit|x86_64|ppc64|ia64|amd64'::text)) THEN 8
                                    ELSE 4
                                END
                          ORDER BY ns.nspname, tbl.relname) s) s2) s3
  ORDER BY s3.schemaname, s3.tblname;


ALTER TABLE meta_001.v_dba_get_alt_tbl_size_bloat OWNER TO "armando";

--
-- Name: v_dba_get_bloat_info; Type: VIEW; Schema: meta_001; Owner: IHSLaMltbFn1
--

CREATE VIEW meta_001.v_dba_get_bloat_info AS
 SELECT current_database() AS current_database,
    sml.schemaname,
    sml.tablename,
    round((
        CASE
            WHEN (sml.otta = (0)::double precision) THEN (0.0)::double precision
            ELSE ((sml.relpages)::double precision / sml.otta)
        END)::numeric, 1) AS tbloat,
        CASE
            WHEN ((sml.relpages)::double precision < sml.otta) THEN (0)::numeric
            ELSE (sml.bs * ((((sml.relpages)::double precision - sml.otta))::bigint)::numeric)
        END AS wastedbytes,
    sml.iname,
    round((
        CASE
            WHEN ((sml.iotta = (0)::double precision) OR (sml.ipages = 0)) THEN (0.0)::double precision
            ELSE ((sml.ipages)::double precision / sml.iotta)
        END)::numeric, 1) AS ibloat,
        CASE
            WHEN ((sml.ipages)::double precision < sml.iotta) THEN (0)::double precision
            ELSE ((sml.bs)::double precision * ((sml.ipages)::double precision - sml.iotta))
        END AS wastedibytes
   FROM ( SELECT rs.schemaname,
            rs.tablename,
            cc.reltuples,
            cc.relpages,
            rs.bs,
            ceil(((cc.reltuples * (((((rs.datahdr + (rs.ma)::numeric) -
                CASE
                    WHEN ((rs.datahdr % (rs.ma)::numeric) = (0)::numeric) THEN (rs.ma)::numeric
                    ELSE (rs.datahdr % (rs.ma)::numeric)
                END))::double precision + rs.nullhdr2) + (4)::double precision)) / ((rs.bs)::double precision - (20)::double precision))) AS otta,
            COALESCE(c2.relname, '?'::name) AS iname,
            COALESCE(c2.reltuples, (0)::real) AS ituples,
            COALESCE(c2.relpages, 0) AS ipages,
            COALESCE(ceil(((c2.reltuples * ((rs.datahdr - (12)::numeric))::double precision) / ((rs.bs)::double precision - (20)::double precision))), (0)::double precision) AS iotta
           FROM ((((( SELECT foo.ma,
                    foo.bs,
                    foo.schemaname,
                    foo.tablename,
                    ((foo.datawidth + (((foo.hdr + foo.ma) -
                        CASE
                            WHEN ((foo.hdr % foo.ma) = 0) THEN foo.ma
                            ELSE (foo.hdr % foo.ma)
                        END))::double precision))::numeric AS datahdr,
                    (foo.maxfracsum * (((foo.nullhdr + foo.ma) -
                        CASE
                            WHEN ((foo.nullhdr % (foo.ma)::bigint) = 0) THEN (foo.ma)::bigint
                            ELSE (foo.nullhdr % (foo.ma)::bigint)
                        END))::double precision) AS nullhdr2
                   FROM ( SELECT s.schemaname,
                            s.tablename,
                            constants.hdr,
                            constants.ma,
                            constants.bs,
                            sum((((1)::double precision - s.null_frac) * (s.avg_width)::double precision)) AS datawidth,
                            max(s.null_frac) AS maxfracsum,
                            (constants.hdr + ( SELECT (1 + (count(*) / 8))
                                   FROM pg_stats s2
                                  WHERE ((s2.null_frac <> (0)::double precision) AND (s2.schemaname = s.schemaname) AND (s2.tablename = s.tablename)))) AS nullhdr
                           FROM pg_stats s,
                            ( SELECT ( SELECT (current_setting('block_size'::text))::numeric AS current_setting) AS bs,
CASE
 WHEN ("substring"(foo_1.v, 12, 3) = ANY (ARRAY['8.0'::text, '8.1'::text, '8.2'::text])) THEN 27
 ELSE 23
END AS hdr,
CASE
 WHEN (foo_1.v ~ 'mingw32'::text) THEN 8
 ELSE 4
END AS ma
                                   FROM ( SELECT version() AS v) foo_1) constants
                          GROUP BY s.schemaname, s.tablename, constants.hdr, constants.ma, constants.bs) foo) rs
             JOIN pg_class cc ON ((cc.relname = rs.tablename)))
             JOIN pg_namespace nn ON (((cc.relnamespace = nn.oid) AND (nn.nspname = rs.schemaname) AND (nn.nspname <> 'information_schema'::name))))
             LEFT JOIN pg_index i ON ((i.indrelid = cc.oid)))
             LEFT JOIN pg_class c2 ON ((c2.oid = i.indexrelid)))) sml
  ORDER BY
        CASE
            WHEN ((sml.relpages)::double precision < sml.otta) THEN (0)::numeric
            ELSE (sml.bs * ((((sml.relpages)::double precision - sml.otta))::bigint)::numeric)
        END DESC;


ALTER TABLE meta_001.v_dba_get_bloat_info OWNER TO "armando";

--
-- Name: v_dba_get_comments; Type: VIEW; Schema: meta_001; Owner: IHSLaMltbFn1
--

CREATE VIEW meta_001.v_dba_get_comments AS
 SELECT d.nspname AS schema_name,
    obj_description(d.oid) AS schema_comment,
    c.relname AS table_name,
    obj_description(c.oid) AS table_comment,
    a.attnum AS ordinal_position,
    a.attname AS column_name,
    t.typname AS data_type,
    a.attlen AS character_maximum_length,
    col_description(c.oid, (a.attnum)::integer) AS field_comment,
    a.atttypmod AS modifier,
    a.attnotnull AS "notnull",
    a.atthasdef AS hasdefault,
        CASE
            WHEN ((obj_description(d.oid) IS NOT NULL) OR (obj_description(c.oid) IS NOT NULL)) THEN 'COMMENTED'::text
            ELSE 'COMMENT_MISSING'::text
        END AS comment_status
   FROM (((pg_class c
     LEFT JOIN pg_attribute a ON ((a.attrelid = c.oid)))
     LEFT JOIN pg_type t ON ((a.atttypid = t.oid)))
     LEFT JOIN pg_namespace d ON ((d.oid = c.relnamespace)))
  WHERE ((a.attnum > 0) AND (d.nspname <> ALL (ARRAY['pg_catalog'::name, 'information_schema'::name, 'pg_toast'::name])))
  ORDER BY d.nspname, c.relname, a.attnum;


ALTER TABLE meta_001.v_dba_get_comments OWNER TO "armando";

--
-- Name: v_dba_get_const_info_all; Type: VIEW; Schema: meta_001; Owner: IHSLaMltbFn1
--

CREATE VIEW meta_001.v_dba_get_const_info_all AS
 SELECT DISTINCT rc.constraint_catalog,
    rc.constraint_schema,
    pc.oid,
    pc.conname AS constraint_name,
    pc.contype AS constraint_type,
    ab.table_name,
    rc.unique_constraint_schema AS r_owner,
    rc.unique_constraint_name AS r_constraint_name,
    ab.index_owner,
    ab.indexname
   FROM ((pg_constraint pc
     JOIN ( SELECT a.relnamespace,
            a.tableid,
            a.table_name,
            b.relnamespace,
            b.indexid,
            b.indexname,
            b.index_owner
           FROM ( SELECT pg_class.relnamespace,
                    pg_class.oid AS tableid,
                    pg_class.relname AS table_name
                   FROM pg_class
                  WHERE (pg_class.relkind = 'r'::"char")) a,
            ( SELECT pg_class.relnamespace,
                    pg_class.oid AS indexid,
                    pg_class.relname AS indexname,
                    schemata.schema_owner AS index_owner
                   FROM information_schema.schemata,
                    pg_class
                  WHERE (pg_class.relkind = 'i'::"char")) b) ab(relnamespace, tableid, table_name, relnamespace_1, indexid, indexname, index_owner) ON (((pc.conrelid = ab.tableid) AND (pc.conindid = ab.indexid))))
     LEFT JOIN information_schema.referential_constraints rc ON (((rc.constraint_name)::name = pc.conname)))
  ORDER BY pc.contype, ab.table_name;


ALTER TABLE meta_001.v_dba_get_const_info_all OWNER TO "armando";

--
-- Name: v_dba_get_db_act_by_table_hot_rate; Type: VIEW; Schema: meta_001; Owner: IHSLaMltbFn1
--

CREATE VIEW meta_001.v_dba_get_db_act_by_table_hot_rate AS
 SELECT (((pg_stat_all_tables.schemaname)::text || '.'::text) || (pg_stat_all_tables.relname)::text) AS full_name,
    pg_size_pretty(pg_relation_size((pg_stat_all_tables.relid)::regclass)) AS pg_size_pretty,
    COALESCE(t.spcname, ( SELECT pg_tablespace.spcname
           FROM pg_tablespace
          WHERE (pg_tablespace.oid = ( SELECT pg_database.dattablespace
                   FROM pg_database
                  WHERE (pg_database.datname = current_database()))))) AS tblsp,
    pg_stat_all_tables.seq_scan,
    pg_stat_all_tables.idx_scan,
    pg_stat_all_tables.n_tup_ins,
    pg_stat_all_tables.n_tup_upd,
    pg_stat_all_tables.n_tup_del,
    (((COALESCE(pg_stat_all_tables.n_tup_ins, (0)::bigint) + (2 * COALESCE(pg_stat_all_tables.n_tup_upd, (0)::bigint))) - COALESCE(pg_stat_all_tables.n_tup_hot_upd, (0)::bigint)) + COALESCE(pg_stat_all_tables.n_tup_del, (0)::bigint)) AS total,
    ((((COALESCE(pg_stat_all_tables.n_tup_hot_upd, (0)::bigint))::double precision * (100)::double precision) / (
        CASE
            WHEN (pg_stat_all_tables.n_tup_upd > 0) THEN pg_stat_all_tables.n_tup_upd
            ELSE (1)::bigint
        END)::double precision))::numeric(10,2) AS hot_rate,
    ( SELECT r.v[1] AS v
           FROM regexp_matches((c.reloptions)::text, 'fillfactor=(\d+)'::text) r(v)
         LIMIT 1) AS fillfactor
   FROM ((pg_stat_all_tables
     JOIN pg_class c ON ((c.oid = pg_stat_all_tables.relid)))
     LEFT JOIN pg_tablespace t ON ((t.oid = c.reltablespace)))
  WHERE ((((COALESCE(pg_stat_all_tables.n_tup_ins, (0)::bigint) + COALESCE(pg_stat_all_tables.n_tup_upd, (0)::bigint)) + COALESCE(pg_stat_all_tables.n_tup_del, (0)::bigint)) > 0) AND (pg_stat_all_tables.schemaname <> ALL (ARRAY['pg_catalog'::name, 'pg_global'::name])))
  ORDER BY (((COALESCE(pg_stat_all_tables.n_tup_ins, (0)::bigint) + (2 * COALESCE(pg_stat_all_tables.n_tup_upd, (0)::bigint))) - COALESCE(pg_stat_all_tables.n_tup_hot_upd, (0)::bigint)) + COALESCE(pg_stat_all_tables.n_tup_del, (0)::bigint)) DESC;


ALTER TABLE meta_001.v_dba_get_db_act_by_table_hot_rate OWNER TO "armando";

--
-- Name: v_dba_get_db_stats_freq_iud; Type: VIEW; Schema: meta_001; Owner: IHSLaMltbFn1
--

CREATE VIEW meta_001.v_dba_get_db_stats_freq_iud AS
 SELECT t.schemaname,
    t.relname,
    c.reloptions,
    t.n_tup_upd,
    t.n_tup_hot_upd,
        CASE
            WHEN (t.n_tup_upd > 0) THEN ((((t.n_tup_hot_upd)::numeric / (t.n_tup_upd)::numeric) * 100.0))::numeric(5,2)
            ELSE NULL::numeric
        END AS hot_ratio
   FROM (pg_stat_all_tables t
     JOIN (pg_class c
     JOIN pg_namespace n ON ((c.relnamespace = n.oid))) ON (((n.nspname = t.schemaname) AND (c.relname = t.relname))))
  WHERE (t.schemaname <> ALL (ARRAY['pg_toast'::name, 'pg_catalog'::name, 'information_schema'::name]))
  ORDER BY t.schemaname,
        CASE
            WHEN (t.n_tup_upd > 0) THEN ((((t.n_tup_hot_upd)::numeric / (t.n_tup_upd)::numeric) * 100.0))::numeric(5,2)
            ELSE NULL::numeric
        END DESC;


ALTER TABLE meta_001.v_dba_get_db_stats_freq_iud OWNER TO "armando";

--
-- Name: v_dba_get_dependency_tree_list_migrations; Type: VIEW; Schema: meta_001; Owner: IHSLaMltbFn1
--

CREATE VIEW meta_001.v_dba_get_dependency_tree_list_migrations AS
 WITH abc AS (
         SELECT 'v_employee_hours'::text AS objname,
            'redcell_001.v_employee_hours'::text AS fullname,
            dependency_tree.dependency_tree
           FROM meta_001.dependency_tree('redcell_001.v_employee_hours'::text) dependency_tree(dependency_tree)
        UNION ALL
         SELECT 'v_jobs'::text AS objname,
            'redcell_001.v_jobs'::text AS fullname,
            dependency_tree.dependency_tree
           FROM meta_001.dependency_tree('redcell_001.v_jobs'::text) dependency_tree(dependency_tree)
        UNION ALL
         SELECT 'v_next_offer'::text AS objname,
            'redcell_001.v_next_offer'::text AS fullname,
            dependency_tree.dependency_tree
           FROM meta_001.dependency_tree('redcell_001.v_next_offer'::text) dependency_tree(dependency_tree)
        UNION ALL
         SELECT 't_offer'::text AS objname,
            'redcell_001.t_offer'::text AS fullname,
            dependency_tree.dependency_tree
           FROM meta_001.dependency_tree('redcell_001.t_offer'::text) dependency_tree(dependency_tree)
        UNION ALL
         SELECT 't_winteam_job_post'::text AS objname,
            'redcell_001.t_winteam_job_post'::text AS fullname,
            dependency_tree.dependency_tree
           FROM meta_001.dependency_tree('redcell_001.t_winteam_job_post'::text) dependency_tree(dependency_tree)
        UNION ALL
         SELECT 'v_purplecell'::text AS objname,
            'redcell_001.v_purplecell'::text AS fullname,
            dependency_tree.dependency_tree
           FROM meta_001.dependency_tree('redcell_001.v_purplecell'::text) dependency_tree(dependency_tree)
        UNION ALL
         SELECT 't_purplecell'::text AS objname,
            'redcell_001.t_purplecell'::text AS fullname,
            dependency_tree.dependency_tree
           FROM meta_001.dependency_tree('redcell_001.t_purplecell'::text) dependency_tree(dependency_tree)
        UNION ALL
         SELECT 'v_purple_options'::text AS objname,
            'redcell_001.v_purple_options'::text AS fullname,
            dependency_tree.dependency_tree
           FROM meta_001.dependency_tree('redcell_001.v_purple_options'::text) dependency_tree(dependency_tree)
        UNION ALL
         SELECT 'v_winteam_schedule'::text AS objname,
            'redcell_001.v_winteam_schedule'::text AS fullname,
            dependency_tree.dependency_tree
           FROM meta_001.dependency_tree('redcell_001.v_winteam_schedule'::text) dependency_tree(dependency_tree)
        UNION ALL
         SELECT 't_employee_lock'::text AS objname,
            'core_001.t_employee_lock'::text AS fullname,
            dependency_tree.dependency_tree
           FROM meta_001.dependency_tree('core_001.t_employee_lock'::text) dependency_tree(dependency_tree)
        UNION ALL
         SELECT 't_job_settings'::text AS objname,
            'core_001.t_job_settings'::text AS fullname,
            dependency_tree.dependency_tree
           FROM meta_001.dependency_tree('core_001.t_job_settings'::text) dependency_tree(dependency_tree)
        UNION ALL
         SELECT 'v_employee_lock'::text AS objname,
            'core_001.v_employee_lock'::text AS fullname,
            dependency_tree.dependency_tree
           FROM meta_001.dependency_tree('core_001.v_employee_lock'::text) dependency_tree(dependency_tree)
        UNION ALL
         SELECT 'v_employee'::text AS objname,
            'core_001.v_employee'::text AS fullname,
            dependency_tree.dependency_tree
           FROM meta_001.dependency_tree('core_001.v_employee'::text) dependency_tree(dependency_tree)
        UNION ALL
         SELECT 't_location'::text AS objname,
            'core_001.t_location'::text AS fullname,
            dependency_tree.dependency_tree
           FROM meta_001.dependency_tree('core_001.t_location'::text) dependency_tree(dependency_tree)
        UNION ALL
         SELECT 'v_management'::text AS objname,
            'core_001.v_management'::text AS fullname,
            dependency_tree.dependency_tree
           FROM meta_001.dependency_tree('core_001.v_management'::text) dependency_tree(dependency_tree)
        UNION ALL
         SELECT 't_post_settings'::text AS objname,
            'core_001.t_post_settings'::text AS fullname,
            dependency_tree.dependency_tree
           FROM meta_001.dependency_tree('core_001.t_post_settings'::text) dependency_tree(dependency_tree)
        UNION ALL
         SELECT 't_schedule_strategy'::text AS objname,
            'core_001.t_schedule_strategy'::text AS fullname,
            dependency_tree.dependency_tree
           FROM meta_001.dependency_tree('core_001.t_schedule_strategy'::text) dependency_tree(dependency_tree)
        UNION ALL
         SELECT 't_job_timezones'::text AS objname,
            'core_001.t_job_timezones'::text AS fullname,
            dependency_tree.dependency_tree
           FROM meta_001.dependency_tree('core_001.t_job_timezones'::text) dependency_tree(dependency_tree)
        UNION ALL
         SELECT 't_job_metadata'::text AS objname,
            'core_001.t_job_metadata'::text AS fullname,
            dependency_tree.dependency_tree
           FROM meta_001.dependency_tree('core_001.t_job_metadata'::text) dependency_tree(dependency_tree)
        UNION ALL
         SELECT 'v_job_address_hash_check'::text AS objname,
            'core_001.v_job_address_hash_check'::text AS fullname,
            dependency_tree.dependency_tree
           FROM meta_001.dependency_tree('core_001.v_job_address_hash_check'::text) dependency_tree(dependency_tree)
        UNION ALL
         SELECT 'v_job_metadata'::text AS objname,
            'core_001.v_job_metadata'::text AS fullname,
            dependency_tree.dependency_tree
           FROM meta_001.dependency_tree('core_001.v_job_metadata'::text) dependency_tree(dependency_tree)
        UNION ALL
         SELECT 'v_purple_options'::text AS objname,
            'core_001.v_purple_options'::text AS fullname,
            dependency_tree.dependency_tree
           FROM meta_001.dependency_tree('core_001.v_purple_options'::text) dependency_tree(dependency_tree)
        UNION ALL
         SELECT 'v_employee'::text AS objname,
            'core_001.v_employee'::text AS fullname,
            dependency_tree.dependency_tree
           FROM meta_001.dependency_tree('core_001.v_employee'::text) dependency_tree(dependency_tree)
        UNION ALL
         SELECT 't_feature_config'::text AS objname,
            'admin_001.t_feature_config'::text AS fullname,
            dependency_tree.dependency_tree
           FROM meta_001.dependency_tree('admin_001.t_feature_config'::text) dependency_tree(dependency_tree)
        UNION ALL
         SELECT 't_job_log'::text AS objname,
            'log_001.t_job_log'::text AS fullname,
            dependency_tree.dependency_tree
           FROM meta_001.dependency_tree('log_001.t_job_log'::text) dependency_tree(dependency_tree)
        UNION ALL
         SELECT 'v_week'::text AS objname,
            'ref_001.v_week'::text AS fullname,
            dependency_tree.dependency_tree
           FROM meta_001.dependency_tree('ref_001.v_week'::text) dependency_tree(dependency_tree)
        )
 SELECT abc.objname,
    abc.fullname,
    substr(abc.fullname, ("position"(abc.fullname, '.'::text) + 1), 999) AS dotpos,
    (abc.dependency_tree || '  '::text) AS dependency_tree
   FROM abc;


ALTER TABLE meta_001.v_dba_get_dependency_tree_list_migrations OWNER TO "armando";

--
-- Name: v_dba_get_pg_depend_info; Type: VIEW; Schema: meta_001; Owner: IHSLaMltbFn1
--

CREATE VIEW meta_001.v_dba_get_pg_depend_info AS
 WITH abc AS (
         SELECT (pg_depend.classid)::regclass AS pg_class_oid_sc_dependent_obj_in,
                CASE pg_depend.classid
                    WHEN 'pg_class'::regclass THEN ((pg_depend.objid)::regclass)::text
                    WHEN 'pg_type'::regclass THEN ((pg_depend.objid)::regtype)::text
                    WHEN 'pg_proc'::regclass THEN ((pg_depend.objid)::regprocedure)::text
                    ELSE (pg_depend.objid)::text
                END AS oid_sc_dependent_obj_in,
            pg_depend.objsubid AS for_tbl_col_num_else_0,
            (pg_depend.refclassid)::regclass AS pg_class_referenced_object_in,
                CASE pg_depend.refclassid
                    WHEN 'pg_class'::regclass THEN ((pg_depend.refobjid)::regclass)::text
                    WHEN 'pg_type'::regclass THEN ((pg_depend.refobjid)::regtype)::text
                    WHEN 'pg_proc'::regclass THEN ((pg_depend.refobjid)::regprocedure)::text
                    ELSE (pg_depend.refobjid)::text
                END AS referenced_object,
            pg_depend.refobjsubid AS reffed_for_tbl_col_num_else_0,
                CASE pg_depend.deptype
                    WHEN 'x'::"char" THEN 'dependency_extension_auto'::text
                    WHEN 'e'::"char" THEN 'dependency_extension'::text
                    WHEN 'p'::"char" THEN 'pinned'::text
                    WHEN 'i'::"char" THEN 'internal'::text
                    WHEN 'I'::"char" THEN 'internal_auto'::text
                    WHEN 'a'::"char" THEN 'automatic'::text
                    WHEN 'n'::"char" THEN 'normal-can be dropped without cascade,Referenced needs cascade'::text
                    ELSE NULL::text
                END AS dependency_type_desc,
            pg_describe_object(((pg_depend.classid)::regclass)::oid, ((pg_depend.objid)::regclass)::oid, pg_depend.objsubid) AS desc_object
           FROM pg_depend
          WHERE ((pg_depend.objid >= (16384)::oid) OR (pg_depend.refobjid >= (16384)::oid))
        )
 SELECT abc.pg_class_oid_sc_dependent_obj_in,
    abc.oid_sc_dependent_obj_in,
    abc.for_tbl_col_num_else_0,
    abc.pg_class_referenced_object_in,
    abc.referenced_object,
    abc.reffed_for_tbl_col_num_else_0,
    abc.dependency_type_desc,
    abc.desc_object
   FROM abc;


ALTER TABLE meta_001.v_dba_get_pg_depend_info OWNER TO "armando";

--
-- Name: v_dba_get_dependency_tree_list_migrations_fullname; Type: VIEW; Schema: meta_001; Owner: IHSLaMltbFn1
--

CREATE VIEW meta_001.v_dba_get_dependency_tree_list_migrations_fullname AS
 WITH abc AS (
         SELECT 'by_objname'::text AS wherefnd,
            a.pg_class_oid_sc_dependent_obj_in,
            a.oid_sc_dependent_obj_in,
            a.for_tbl_col_num_else_0,
            a.pg_class_referenced_object_in,
            a.referenced_object,
            a.reffed_for_tbl_col_num_else_0,
            a.dependency_type_desc,
            b.objname,
            b.fullname,
            b.dotpos,
            b.dependency_tree
           FROM meta_001.v_dba_get_pg_depend_info a,
            meta_001.v_dba_get_dependency_tree_list_migrations b
          WHERE (("position"(a.oid_sc_dependent_obj_in, b.objname) > 0) OR ("position"(a.referenced_object, b.objname) > 0))
        UNION ALL
         SELECT 'by_fullname'::text AS wherefnd,
            a.pg_class_oid_sc_dependent_obj_in,
            a.oid_sc_dependent_obj_in,
            a.for_tbl_col_num_else_0,
            a.pg_class_referenced_object_in,
            a.referenced_object,
            a.reffed_for_tbl_col_num_else_0,
            a.dependency_type_desc,
            b.objname,
            b.fullname,
            b.dotpos,
            b.dependency_tree
           FROM meta_001.v_dba_get_pg_depend_info a,
            meta_001.v_dba_get_dependency_tree_list_migrations b
          WHERE (("position"(a.oid_sc_dependent_obj_in, b.fullname) > 0) OR ("position"(a.referenced_object, b.fullname) > 0))
        )
 SELECT abc.wherefnd,
    abc.pg_class_oid_sc_dependent_obj_in,
    abc.oid_sc_dependent_obj_in,
    abc.for_tbl_col_num_else_0,
    abc.pg_class_referenced_object_in,
    abc.referenced_object,
    abc.reffed_for_tbl_col_num_else_0,
    abc.dependency_type_desc,
    abc.objname,
    abc.fullname,
    abc.dotpos,
    abc.dependency_tree
   FROM abc
  WHERE (abc.wherefnd = 'by_fullname'::text)
  ORDER BY abc.oid_sc_dependent_obj_in, abc.referenced_object;


ALTER TABLE meta_001.v_dba_get_dependency_tree_list_migrations_fullname OWNER TO "armando";

--
-- Name: v_dba_get_dependency_tree_list_migrations_re; Type: VIEW; Schema: meta_001; Owner: IHSLaMltbFn1
--

CREATE VIEW meta_001.v_dba_get_dependency_tree_list_migrations_re AS
 WITH searchfor AS (
         SELECT 'redcell_001.v_employee_hours'::text AS mstr_item
        ), abc AS (
         SELECT DISTINCT a.oid_sc_dependent_obj_in AS dep_obj_of
           FROM meta_001.v_dba_get_pg_depend_info a,
            searchfor searchfor_1
          WHERE ((a.oid_sc_dependent_obj_in = searchfor_1.mstr_item) OR (a.referenced_object = searchfor_1.mstr_item))
        UNION ALL
         SELECT DISTINCT a.referenced_object AS dep_obj_of
           FROM meta_001.v_dba_get_pg_depend_info a,
            searchfor searchfor_1
          WHERE ((a.oid_sc_dependent_obj_in = searchfor_1.mstr_item) OR (a.referenced_object = searchfor_1.mstr_item))
        )
 SELECT DISTINCT x.dep_obj_of,
    x.oid_sc_dependent_obj_in,
    x.typeof,
    searchfor.mstr_item,
        CASE
            WHEN ("position"(x.oid_sc_dependent_obj_in, '.v_'::text) > 0) THEN meta_001.ddlx_create_view((replace(replace(x.oid_sc_dependent_obj_in, '()'::text, ''::text), '[]'::text, ''::text))::regclass)
            WHEN ("position"(x.oid_sc_dependent_obj_in, '.mv_'::text) > 0) THEN meta_001.ddlx_create_view((replace(replace(x.oid_sc_dependent_obj_in, '()'::text, ''::text), '[]'::text, ''::text))::regclass)
            WHEN ("position"(x.oid_sc_dependent_obj_in, '.t_'::text) > 0) THEN meta_001.ddlx_create_table((replace(replace(x.oid_sc_dependent_obj_in, '()'::text, ''::text), '[]'::text, ''::text))::regclass)
            ELSE 'no view '::text
        END AS is_view
   FROM ( SELECT DISTINCT abc.dep_obj_of,
            b.oid_sc_dependent_obj_in,
            'oid'::text AS typeof
           FROM meta_001.v_dba_get_pg_depend_info b,
            abc
          WHERE ((b.oid_sc_dependent_obj_in = abc.dep_obj_of) OR (b.referenced_object = abc.dep_obj_of))
        UNION ALL
         SELECT DISTINCT abc.dep_obj_of,
            b.referenced_object,
            'ref'::text AS typeof
           FROM meta_001.v_dba_get_pg_depend_info b,
            abc
          WHERE ((b.oid_sc_dependent_obj_in = abc.dep_obj_of) OR (b.referenced_object = abc.dep_obj_of))) x,
    searchfor
  WHERE ((x.dep_obj_of ~~ '%.%'::text) OR (x.oid_sc_dependent_obj_in ~~ '%.%'::text))
  ORDER BY x.dep_obj_of, x.oid_sc_dependent_obj_in;


ALTER TABLE meta_001.v_dba_get_dependency_tree_list_migrations_re OWNER TO "armando";

--
-- Name: v_dba_get_dependency_tree_list_migrations_v1; Type: VIEW; Schema: meta_001; Owner: IHSLaMltbFn1
--

CREATE VIEW meta_001.v_dba_get_dependency_tree_list_migrations_v1 AS
 WITH abc AS (
         SELECT 1 AS dep_ord,
            'Y'::text AS direct,
            'N'::text AS move_new,
            't_offer'::text AS objname,
            'redcell_001.t_offer'::text AS fullname,
            dependency_tree.dependency_tree
           FROM meta_001.dependency_tree('redcell_001.t_offer'::text) dependency_tree(dependency_tree)
        UNION ALL
         SELECT 2 AS dep_ord,
            'Y'::text AS direct,
            'N'::text AS move_new,
            't_winteam_job_post'::text AS objname,
            'redcell_001.t_winteam_job_post'::text AS fullname,
            dependency_tree.dependency_tree
           FROM meta_001.dependency_tree('redcell_001.t_winteam_job_post'::text) dependency_tree(dependency_tree)
        UNION ALL
         SELECT 3 AS dep_ord,
            'Y'::text AS direct,
            'N'::text AS move_new,
            't_purplecell'::text AS objname,
            'redcell_001.t_purplecell'::text AS fullname,
            dependency_tree.dependency_tree
           FROM meta_001.dependency_tree('redcell_001.t_purplecell'::text) dependency_tree(dependency_tree)
        UNION ALL
         SELECT 3.1 AS dep_ord,
            'Y'::text AS direct,
            'N'::text AS move_new,
            't_purplecell_status_lookup'::text AS objname,
            'redcell_001.t_purplecell_status_lookup'::text AS fullname,
            dependency_tree.dependency_tree
           FROM meta_001.dependency_tree('redcell_001.t_purplecell_status_lookup'::text) dependency_tree(dependency_tree)
        UNION ALL
         SELECT 3.2 AS dep_ord,
            'Y'::text AS direct,
            'N'::text AS move_new,
            't_schedule_strategy'::text AS objname,
            'redcell_001.t_schedule_strategy'::text AS fullname,
            dependency_tree.dependency_tree
           FROM meta_001.dependency_tree('redcell_001.t_schedule_strategy'::text) dependency_tree(dependency_tree)
        UNION ALL
         SELECT 4.1 AS dep_ord,
            'Y'::text AS direct,
            'Y'::text AS move_new,
            'mv_employee_hours'::text AS objname,
            'redcell_001.mv_employee_hours'::text AS fullname,
            dependency_tree.dependency_tree
           FROM meta_001.dependency_tree('redcell_001.mv_employee_hours'::text) dependency_tree(dependency_tree)
        UNION ALL
         SELECT 4 AS dep_ord,
            'Y'::text AS direct,
            'Y'::text AS move_new,
            'v_employee_hours'::text AS objname,
            'redcell_001.v_employee_hours'::text AS fullname,
            dependency_tree.dependency_tree
           FROM meta_001.dependency_tree('redcell_001.v_employee_hours'::text) dependency_tree(dependency_tree)
        UNION ALL
         SELECT 5 AS dep_ord,
            'Y'::text AS direct,
            'N'::text AS move_new,
            'v_jobs'::text AS objname,
            'redcell_001.v_jobs'::text AS fullname,
            dependency_tree.dependency_tree
           FROM meta_001.dependency_tree('redcell_001.v_jobs'::text) dependency_tree(dependency_tree)
        UNION ALL
         SELECT 6 AS dep_ord,
            'Y'::text AS direct,
            'N'::text AS move_new,
            'v_next_offer'::text AS objname,
            'redcell_001.v_next_offer'::text AS fullname,
            dependency_tree.dependency_tree
           FROM meta_001.dependency_tree('redcell_001.v_next_offer'::text) dependency_tree(dependency_tree)
        UNION ALL
         SELECT 7 AS dep_ord,
            'Y'::text AS direct,
            'N'::text AS move_new,
            'v_purplecell'::text AS objname,
            'redcell_001.v_purplecell'::text AS fullname,
            dependency_tree.dependency_tree
           FROM meta_001.dependency_tree('redcell_001.v_purplecell'::text) dependency_tree(dependency_tree)
        UNION ALL
         SELECT 8 AS dep_ord,
            'Y'::text AS direct,
            'N'::text AS move_new,
            'v_purple_options'::text AS objname,
            'redcell_001.v_purple_options'::text AS fullname,
            dependency_tree.dependency_tree
           FROM meta_001.dependency_tree('redcell_001.v_purple_options'::text) dependency_tree(dependency_tree)
        UNION ALL
         SELECT 9 AS dep_ord,
            'Y'::text AS direct,
            'N'::text AS move_new,
            'v_winteam_schedule'::text AS objname,
            'redcell_001.v_winteam_schedule'::text AS fullname,
            dependency_tree.dependency_tree
           FROM meta_001.dependency_tree('redcell_001.v_winteam_schedule'::text) dependency_tree(dependency_tree)
        UNION ALL
         SELECT 9.1 AS dep_ord,
            'Y'::text AS direct,
            'Y'::text AS move_new,
            'v_offers_today'::text AS objname,
            'redcell_001.v_offers_today'::text AS fullname,
            dependency_tree.dependency_tree
           FROM meta_001.dependency_tree('redcell_001.v_offers_today'::text) dependency_tree(dependency_tree)
        UNION ALL
         SELECT 10 AS dep_ord,
            'Y'::text AS direct,
            'N'::text AS move_new,
            't_employee_lock'::text AS objname,
            'core_001.t_employee_lock'::text AS fullname,
            dependency_tree.dependency_tree
           FROM meta_001.dependency_tree('core_001.t_employee_lock'::text) dependency_tree(dependency_tree)
        UNION ALL
         SELECT 11 AS dep_ord,
            'Y'::text AS direct,
            'N'::text AS move_new,
            't_job_settings'::text AS objname,
            'core_001.t_job_settings'::text AS fullname,
            dependency_tree.dependency_tree
           FROM meta_001.dependency_tree('core_001.t_job_settings'::text) dependency_tree(dependency_tree)
        UNION ALL
         SELECT 12 AS dep_ord,
            'Y'::text AS direct,
            'N'::text AS move_new,
            't_location'::text AS objname,
            'core_001.t_location'::text AS fullname,
            dependency_tree.dependency_tree
           FROM meta_001.dependency_tree('core_001.t_location'::text) dependency_tree(dependency_tree)
        UNION ALL
         SELECT 13 AS dep_ord,
            'Y'::text AS direct,
            'N'::text AS move_new,
            't_post_settings'::text AS objname,
            'core_001.t_post_settings'::text AS fullname,
            dependency_tree.dependency_tree
           FROM meta_001.dependency_tree('core_001.t_post_settings'::text) dependency_tree(dependency_tree)
        UNION ALL
         SELECT 14 AS dep_ord,
            'Y'::text AS direct,
            'N'::text AS move_new,
            't_schedule_strategy'::text AS objname,
            'core_001.t_schedule_strategy'::text AS fullname,
            dependency_tree.dependency_tree
           FROM meta_001.dependency_tree('core_001.t_schedule_strategy'::text) dependency_tree(dependency_tree)
        UNION ALL
         SELECT 15 AS dep_ord,
            'Y'::text AS direct,
            'Y'::text AS move_new,
            't_job_timezones'::text AS objname,
            'core_001.t_job_timezones'::text AS fullname,
            dependency_tree.dependency_tree
           FROM meta_001.dependency_tree('core_001.t_job_timezones'::text) dependency_tree(dependency_tree)
        UNION ALL
         SELECT 16 AS dep_ord,
            'Y'::text AS direct,
            'Y'::text AS move_new,
            't_job_metadata'::text AS objname,
            'core_001.t_job_metadata'::text AS fullname,
            dependency_tree.dependency_tree
           FROM meta_001.dependency_tree('core_001.t_job_metadata'::text) dependency_tree(dependency_tree)
        UNION ALL
         SELECT 17 AS dep_ord,
            'Y'::text AS direct,
            'N'::text AS move_new,
            'v_employee_lock'::text AS objname,
            'core_001.v_employee_lock'::text AS fullname,
            dependency_tree.dependency_tree
           FROM meta_001.dependency_tree('core_001.v_employee_lock'::text) dependency_tree(dependency_tree)
        UNION ALL
         SELECT 18 AS dep_ord,
            'Y'::text AS direct,
            'N'::text AS move_new,
            'v_employee'::text AS objname,
            'core_001.v_employee'::text AS fullname,
            dependency_tree.dependency_tree
           FROM meta_001.dependency_tree('core_001.v_employee'::text) dependency_tree(dependency_tree)
        UNION ALL
         SELECT 19 AS dep_ord,
            'Y'::text AS direct,
            'N'::text AS move_new,
            'v_management'::text AS objname,
            'core_001.v_management'::text AS fullname,
            dependency_tree.dependency_tree
           FROM meta_001.dependency_tree('core_001.v_management'::text) dependency_tree(dependency_tree)
        UNION ALL
         SELECT 20 AS dep_ord,
            'Y'::text AS direct,
            'Y'::text AS move_new,
            'v_job_address_hash_check'::text AS objname,
            'core_001.v_job_address_hash_check'::text AS fullname,
            dependency_tree.dependency_tree
           FROM meta_001.dependency_tree('core_001.v_job_address_hash_check'::text) dependency_tree(dependency_tree)
        UNION ALL
         SELECT 21 AS dep_ord,
            'Y'::text AS direct,
            'Y'::text AS move_new,
            'v_job_metadata'::text AS objname,
            'core_001.v_job_metadata'::text AS fullname,
            dependency_tree.dependency_tree
           FROM meta_001.dependency_tree('core_001.v_job_metadata'::text) dependency_tree(dependency_tree)
        UNION ALL
         SELECT 22 AS dep_ord,
            'Y'::text AS direct,
            'Y'::text AS move_new,
            'v_purple_options'::text AS objname,
            'core_001.v_purple_options'::text AS fullname,
            dependency_tree.dependency_tree
           FROM meta_001.dependency_tree('core_001.v_purple_options'::text) dependency_tree(dependency_tree)
        UNION ALL
         SELECT 23 AS dep_ord,
            'Y'::text AS direct,
            'Y'::text AS move_new,
            'v_employee'::text AS objname,
            'core_001.v_employee'::text AS fullname,
            dependency_tree.dependency_tree
           FROM meta_001.dependency_tree('core_001.v_employee'::text) dependency_tree(dependency_tree)
        UNION ALL
         SELECT 24 AS dep_ord,
            'Y'::text AS direct,
            'Y'::text AS move_new,
            't_feature_config'::text AS objname,
            'admin_001.t_feature_config'::text AS fullname,
            dependency_tree.dependency_tree
           FROM meta_001.dependency_tree('admin_001.t_feature_config'::text) dependency_tree(dependency_tree)
        UNION ALL
         SELECT 25 AS dep_ord,
            'Y'::text AS direct,
            'Y'::text AS move_new,
            't_job_log'::text AS objname,
            'log_001.t_job_log'::text AS fullname,
            dependency_tree.dependency_tree
           FROM meta_001.dependency_tree('log_001.t_job_log'::text) dependency_tree(dependency_tree)
        UNION ALL
         SELECT 26 AS dep_ord,
            'Y'::text AS direct,
            'Y'::text AS move_new,
            'v_week'::text AS objname,
            'ref_001.v_week'::text AS fullname,
            dependency_tree.dependency_tree
           FROM meta_001.dependency_tree('ref_001.v_week'::text) dependency_tree(dependency_tree)
        )
 SELECT abc.direct,
    abc.dep_ord,
    abc.move_new,
    abc.objname,
    abc.fullname,
    substr(abc.fullname, ("position"(abc.fullname, '.'::text) + 1), 999) AS dotpos,
    (abc.dependency_tree || '  '::text) AS dependency_tree
   FROM abc;


ALTER TABLE meta_001.v_dba_get_dependency_tree_list_migrations_v1 OWNER TO "armando";

--
-- Name: views; Type: VIEW; Schema: meta_001; Owner: IHSLaMltbFn1
--

CREATE VIEW meta_001.views AS
 SELECT n.nspname AS s_name,
    c.relname AS v_name,
        CASE c.relkind
            WHEN 'v'::"char" THEN 'view'::text
            WHEN 'm'::"char" THEN 'materialized view'::text
            ELSE NULL::text
        END AS view_type,
    pg_get_userbyid(c.relowner) AS owner,
    c.reltuples AS rows,
    pg_size_pretty(pg_table_size((c.oid)::regclass)) AS size_pretty,
    pg_table_size((c.oid)::regclass) AS size_bytes,
    obj_description(c.oid, 'pg_class'::name) AS description,
        CASE
            WHEN ((n.nspname !~ '^pg_toast'::text) AND (n.nspname <> ALL (ARRAY['pg_catalog'::name, 'information_schema'::name]))) THEN false
            ELSE true
        END AS system_object
   FROM (pg_class c
     LEFT JOIN pg_namespace n ON ((n.oid = c.relnamespace)))
  WHERE ((c.relkind = ANY (ARRAY['v'::"char", 'm'::"char"])) AND (n.nspname !~ '^pg_toast'::text));


ALTER TABLE meta_001.views OWNER TO "armando";

--
-- Name: VIEW views; Type: COMMENT; Schema: meta_001; Owner: IHSLaMltbFn1
--

COMMENT ON VIEW meta_001.views IS 'Data dictionary view:  Lists views and materialized views';


--
-- Name: COLUMN views.system_object; Type: COMMENT; Schema: meta_001; Owner: IHSLaMltbFn1
--

COMMENT ON COLUMN meta_001.views.system_object IS 'Allows to easily show/hide system objects.';


--
-- Name: v_dba_get_dependency_tree_list_migrations_v1_dep; Type: VIEW; Schema: meta_001; Owner: IHSLaMltbFn1
--

CREATE VIEW meta_001.v_dba_get_dependency_tree_list_migrations_v1_dep AS
 WITH abc AS (
         SELECT 'STAGE'::text AS env,
            tables.s_name,
            current_database() AS current_db,
            tables.type AS typeof,
            (tables.t_name)::text AS objname
           FROM meta_001.tables
          WHERE (tables.system_object = false)
        UNION ALL
         SELECT 'STAGE'::text AS env,
            views.s_name,
            current_database() AS current_db,
            views.view_type AS typeof,
            (views.v_name)::text AS objname
           FROM meta_001.views
          WHERE (views.system_object = false)
        )
 SELECT abc.env,
    abc.s_name,
    abc.current_db,
    abc.typeof,
    abc.objname
   FROM abc
  WHERE (abc.objname ~~ '%mv%'::text)
  ORDER BY abc.objname;


ALTER TABLE meta_001.v_dba_get_dependency_tree_list_migrations_v1_dep OWNER TO "armando";

--
-- Name: v_dba_get_dependency_tree_list_migrations_v1_det; Type: VIEW; Schema: meta_001; Owner: IHSLaMltbFn1
--

CREATE VIEW meta_001.v_dba_get_dependency_tree_list_migrations_v1_det AS
 WITH abc AS (
         SELECT 'prod'::text AS env,
            tables.s_name,
            current_database() AS current_db,
            tables.type AS typeof,
            (tables.t_name)::text AS objname
           FROM meta_001.tables
          WHERE (tables.system_object = false)
        UNION ALL
         SELECT 'prod'::text AS env,
            views.s_name,
            current_database() AS current_db,
            views.view_type AS typeof,
            (views.v_name)::text AS objname
           FROM meta_001.views
          WHERE (views.system_object = false)
        )
 SELECT abc.env,
    abc.s_name,
    abc.current_db,
    abc.typeof,
    abc.objname
   FROM abc
  WHERE ((abc.objname ~~ '%t_feature_config%'::text) OR (abc.objname ~~ '%t_employee_lock%'::text) OR (abc.objname ~~ '%t_job_metadata%'::text) OR (abc.objname ~~ '%t_job_settings%'::text) OR (abc.objname ~~ '%t_location%'::text) OR (abc.objname ~~ '%t_post_settings%'::text) OR (abc.objname ~~ '%t_schedule_strategy%'::text) OR (abc.objname ~~ '%v_employee%'::text) OR (abc.objname ~~ '%v_employee_lock%'::text) OR (abc.objname ~~ '%v_job_address_hash_check%'::text) OR (abc.objname ~~ '%v_job_metadata%'::text) OR (abc.objname ~~ '%v_management%'::text) OR (abc.objname ~~ '%t_job_log%'::text) OR (abc.objname ~~ '%mv_employee_hours%'::text) OR (abc.objname ~~ '%t_offer%'::text) OR (abc.objname ~~ '%t_purplecell%'::text) OR (abc.objname ~~ '%t_winteam_job_post%'::text) OR (abc.objname ~~ '%v_employee_hours%'::text) OR (abc.objname ~~ '%v_jobs%'::text) OR (abc.objname ~~ '%v_next_offer%'::text) OR (abc.objname ~~ '%v_offers_today%'::text) OR (abc.objname ~~ '%v_purple_options%'::text) OR (abc.objname ~~ '%v_purplecell%'::text) OR (abc.objname ~~ '%v_winteam_schedule%'::text) OR (abc.objname ~~ '%v_week%'::text))
  ORDER BY abc.s_name, abc.objname;


ALTER TABLE meta_001.v_dba_get_dependency_tree_list_migrations_v1_det OWNER TO "armando";

--
-- Name: v_dba_get_dependency_tree_list_migrations_v1_summ; Type: VIEW; Schema: meta_001; Owner: IHSLaMltbFn1
--

CREATE VIEW meta_001.v_dba_get_dependency_tree_list_migrations_v1_summ AS
 SELECT v_dba_get_dependency_tree_list_migrations_v1.fullname,
    v_dba_get_dependency_tree_list_migrations_v1.dependency_tree
   FROM meta_001.v_dba_get_dependency_tree_list_migrations_v1
  WHERE ("position"(((' '::text || v_dba_get_dependency_tree_list_migrations_v1.dependency_tree) || ' '::text), ((' '::text || v_dba_get_dependency_tree_list_migrations_v1.fullname) || ' '::text)) = 0)
  ORDER BY v_dba_get_dependency_tree_list_migrations_v1.fullname;


ALTER TABLE meta_001.v_dba_get_dependency_tree_list_migrations_v1_summ OWNER TO "armando";

--
-- Name: v_dba_get_event_trig_drop_sql; Type: VIEW; Schema: meta_001; Owner: IHSLaMltbFn1
--

CREATE VIEW meta_001.v_dba_get_event_trig_drop_sql AS
 WITH abc AS (
         SELECT ((((((((('-- /* fires on =>'::text || (z.evtevent)::text) || ' name=>'::text) || (z.evtname)::text) || ' owner=>'::text) || z.evtowner) || '('::text) || (q.rolname)::text) || ') function=>'::text) || (x.proname)::text) AS info_of,
            (((('drop event trigger '::text || lpad((q.rolname)::text, 40)) || '.'::text) || (z.evtname)::text) || ';'::text) AS drop_sql,
            ((((('create event trigger meta_001.'::text || rpad((z.evtname)::text, 40)) || ' on '::text) || rpad((z.evtevent)::text, 30)) || ' execute procedure '::text) || rpad((('meta_001.'::text || (x.proname)::text) || '();'::text), 60)) AS cr8_sql
           FROM pg_event_trigger z,
            pg_authid q,
            pg_proc x
          WHERE ((z.evtowner = q.oid) AND (z.evtfoid = x.oid))
        )
 SELECT abc.info_of,
    abc.drop_sql,
    abc.cr8_sql
   FROM abc;


ALTER TABLE meta_001.v_dba_get_event_trig_drop_sql OWNER TO "armando";

--
-- Name: v_dba_get_extract_views_via_pg_dump; Type: VIEW; Schema: meta_001; Owner: IHSLaMltbFn1
--

CREATE VIEW meta_001.v_dba_get_extract_views_via_pg_dump AS
 SELECT '/usr/pgsql-13/bin/pg_dump --host=${PROD_HOST} --port=${PROD_PORT} --username=${PROD_WFMA_USERNAME} --dbname=wfma --schema-only '::text AS baseof,
    ((('-t '::text || quote_ident((pg_namespace.nspname)::text)) || '.'::text) || quote_ident((pg_class.relname)::text)) AS sqltext,
    'view'::text AS typeof,
    ' > ${WHICH_ENV}"_wfma_"${ij}"_CR8_VIEWS_SQL.sql_cr8 '::text AS create_view_output
   FROM (pg_class
     JOIN pg_namespace ON ((pg_namespace.oid = pg_class.relnamespace)))
  WHERE ((pg_class.relkind = ANY (ARRAY['v'::"char", 'm'::"char"])) AND (NOT ((pg_namespace.nspname ~ '^pg_'::text) OR (pg_namespace.nspname = 'information_schema'::name))));


ALTER TABLE meta_001.v_dba_get_extract_views_via_pg_dump OWNER TO "armando";

--
-- Name: v_dba_get_fk_pk_const; Type: VIEW; Schema: meta_001; Owner: IHSLaMltbFn1
--

CREATE VIEW meta_001.v_dba_get_fk_pk_const AS
 SELECT ss2.connamespace,
    ss2.conname,
    ss2.conrelid AS "table",
    pgc.relname AS tabname,
    a.attname AS columns,
    ss2.confrelid AS "foreign table",
    pgf.relname AS ftabname,
    af.attname AS fcolumn
   FROM pg_attribute af,
    pg_attribute a,
    pg_class pgc,
    pg_class pgf,
    ( SELECT ss.connamespace,
            ss.conname,
            ss.conrelid,
            ss.confrelid,
            ss.conkey[ss.i] AS conkey,
            ss.confkey[ss.i] AS confkey
           FROM ( SELECT pg_constraint.connamespace,
                    pg_constraint.conname,
                    pg_constraint.conrelid,
                    pg_constraint.confrelid,
                    pg_constraint.conkey,
                    pg_constraint.confkey,
                    generate_series(1, array_upper(pg_constraint.conkey, 1)) AS i
                   FROM pg_constraint
                  WHERE (pg_constraint.contype = 'f'::"char")) ss) ss2
  WHERE ((af.attnum = ss2.confkey) AND (af.attrelid = ss2.confrelid) AND (a.attnum = ss2.conkey) AND (a.attrelid = ss2.conrelid) AND (pgf.relfilenode = ss2.confrelid) AND (pgc.relfilenode = ss2.conrelid))
  ORDER BY ss2.connamespace, pgf.relname, af.attname, pgc.relname, a.attname;


ALTER TABLE meta_001.v_dba_get_fk_pk_const OWNER TO "armando";

--
-- Name: v_dba_get_fnxs_calling_fnxs; Type: VIEW; Schema: meta_001; Owner: IHSLaMltbFn1
--

CREATE VIEW meta_001.v_dba_get_fnxs_calling_fnxs AS
 WITH routine_names AS (
         SELECT DISTINCT n.nspname,
            lower((q.proname)::text) AS name,
            q.oid,
            t.typname
           FROM pg_proc q,
            pg_namespace n,
            pg_type t
          WHERE ((t.oid = q.prorettype) AND (q.pronamespace = n.oid) AND (n.nspname <> ALL (ARRAY['information_schema'::name, 'pg_catalog'::name])))
        ), xyz AS (
         SELECT routine_names.nspname,
            routine_names.name AS code_in_question,
            array_remove(ARRAY( SELECT unnest(string_to_array(regexp_replace(regexp_replace(lower(pg_get_functiondef((to_regproc(routine_names.name))::oid)), '--.*?\n'::text, ''::text, 'g'::text), '\W+'::text, ' '::text, 'g'::text), ' '::text)) AS unnest
                INTERSECT
                 SELECT routine_names_1.name
                   FROM routine_names routine_names_1
          ORDER BY 1), routine_names.name) AS calls_these_dependencies,
            routine_names.typname,
            routine_names.oid
           FROM routine_names
        ), full_list AS (
         SELECT xyz.nspname,
            xyz.code_in_question,
            (xyz.calls_these_dependencies)::text AS calls_these_dependencies,
            xyz.typname,
            pg_get_functiondef(xyz.oid) AS this_code
           FROM xyz
          ORDER BY xyz.nspname, xyz.code_in_question, (xyz.calls_these_dependencies)::text
        ), get_next AS (
         SELECT n.nspname AS schema_name,
            p.proname AS specific_name,
                CASE p.prokind
                    WHEN 'f'::"char" THEN 'FUNCTION'::text
                    WHEN 'p'::"char" THEN 'PROCEDURE'::text
                    WHEN 'a'::"char" THEN 'AGGREGATE'::text
                    WHEN 'w'::"char" THEN 'WINDOW'::text
                    ELSE NULL::text
                END AS kind,
            l.lanname AS language,
            pg_get_function_arguments(p.oid) AS arguments,
            t.typname AS return_type
           FROM (((pg_proc p
             LEFT JOIN pg_namespace n ON ((p.pronamespace = n.oid)))
             LEFT JOIN pg_language l ON ((p.prolang = l.oid)))
             LEFT JOIN pg_type t ON ((t.oid = p.prorettype)))
          WHERE (n.nspname <> ALL (ARRAY['pg_catalog'::name, 'information_schema'::name]))
          ORDER BY n.nspname, p.proname
        )
 SELECT x.schema_name,
    x.specific_name,
    x.kind,
    x.language,
    x.arguments,
    x.return_type,
    y.calls_these_dependencies,
    y.this_code
   FROM get_next x,
    full_list y
  WHERE ((x.schema_name = y.nspname) AND ((x.specific_name)::text = y.code_in_question));


ALTER TABLE meta_001.v_dba_get_fnxs_calling_fnxs OWNER TO "armando";

--
-- Name: v_dba_get_fnxs_calling_fnxs2; Type: VIEW; Schema: meta_001; Owner: IHSLaMltbFn1
--

CREATE VIEW meta_001.v_dba_get_fnxs_calling_fnxs2 AS
 WITH routine_names AS (
         SELECT DISTINCT n.nspname,
            lower((q.proname)::text) AS name,
            q.oid,
            t.typname
           FROM pg_proc q,
            pg_namespace n,
            pg_type t
          WHERE ((t.oid = q.prorettype) AND (q.pronamespace = n.oid) AND (n.nspname <> ALL (ARRAY['information_schema'::name, 'pg_catalog'::name])))
        ), xyz AS (
         SELECT routine_names.nspname,
            routine_names.name AS code_in_question,
            array_remove(ARRAY( SELECT unnest(string_to_array(regexp_replace(regexp_replace(lower(pg_get_functiondef((to_regproc(routine_names.name))::oid)), '--.*?\n'::text, ''::text, 'g'::text), '\W+'::text, ' '::text, 'g'::text), ' '::text)) AS unnest
                INTERSECT
                 SELECT routine_names_1.name
                   FROM routine_names routine_names_1
          ORDER BY 1), routine_names.name) AS calls_these_dependencies,
            routine_names.typname,
            routine_names.oid
           FROM routine_names
        ), full_list AS (
         SELECT xyz.nspname,
            xyz.code_in_question,
            (xyz.calls_these_dependencies)::text AS calls_these_dependencies,
            xyz.typname,
            pg_get_functiondef(xyz.oid) AS this_code
           FROM xyz
          ORDER BY xyz.nspname, xyz.code_in_question, (xyz.calls_these_dependencies)::text
        ), get_next AS (
         SELECT n.nspname AS schema_name,
            p.proname AS specific_name,
                CASE p.prokind
                    WHEN 'f'::"char" THEN 'FUNCTION'::text
                    WHEN 'p'::"char" THEN 'PROCEDURE'::text
                    WHEN 'a'::"char" THEN 'AGGREGATE'::text
                    WHEN 'w'::"char" THEN 'WINDOW'::text
                    ELSE NULL::text
                END AS kind,
            l.lanname AS language,
            pg_get_function_arguments(p.oid) AS arguments,
            t.typname AS return_type
           FROM (((pg_proc p
             LEFT JOIN pg_namespace n ON ((p.pronamespace = n.oid)))
             LEFT JOIN pg_language l ON ((p.prolang = l.oid)))
             LEFT JOIN pg_type t ON ((t.oid = p.prorettype)))
          WHERE (n.nspname <> ALL (ARRAY['pg_catalog'::name, 'information_schema'::name]))
          ORDER BY n.nspname, p.proname
        )
 SELECT x.schema_name,
    x.specific_name,
    x.kind,
    x.language,
    x.arguments,
    x.return_type,
    y.calls_these_dependencies,
    y.this_code
   FROM get_next x,
    full_list y
  WHERE ((x.schema_name = y.nspname) AND ((x.specific_name)::text = y.code_in_question));


ALTER TABLE meta_001.v_dba_get_fnxs_calling_fnxs2 OWNER TO "armando";

--
-- Name: v_dba_get_idx_health_by_size; Type: VIEW; Schema: meta_001; Owner: IHSLaMltbFn1
--

CREATE VIEW meta_001.v_dba_get_idx_health_by_size AS
 WITH fk_actions(code, action) AS (
         VALUES ('a'::text,'error'::text), ('r'::text,'restrict'::text), ('c'::text,'cascade'::text), ('n'::text,'set null'::text), ('d'::text,'set default'::text)
        ), fk_list AS (
         SELECT pg_constraint.oid AS fkoid,
            pg_constraint.conrelid,
            pg_constraint.confrelid AS parentid,
            pg_constraint.conname,
            pg_class.relname,
            pg_namespace.nspname,
            fk_actions_update.action AS update_action,
            fk_actions_delete.action AS delete_action,
            pg_constraint.conkey AS key_cols
           FROM ((((pg_constraint
             JOIN pg_class ON ((pg_constraint.conrelid = pg_class.oid)))
             JOIN pg_namespace ON ((pg_class.relnamespace = pg_namespace.oid)))
             JOIN fk_actions fk_actions_update ON (((pg_constraint.confupdtype)::text = fk_actions_update.code)))
             JOIN fk_actions fk_actions_delete ON (((pg_constraint.confdeltype)::text = fk_actions_delete.code)))
          WHERE (pg_constraint.contype = 'f'::"char")
        ), fk_attributes AS (
         SELECT fk_list.fkoid,
            fk_list.conrelid,
            pg_attribute.attname,
            pg_attribute.attnum
           FROM (fk_list
             JOIN pg_attribute ON (((fk_list.conrelid = pg_attribute.attrelid) AND (pg_attribute.attnum = ANY (fk_list.key_cols)))))
          ORDER BY fk_list.fkoid, pg_attribute.attnum
        ), fk_cols_list AS (
         SELECT fk_attributes.fkoid,
            array_agg(fk_attributes.attname) AS cols_list
           FROM fk_attributes
          GROUP BY fk_attributes.fkoid
        ), index_list AS (
         SELECT pg_index.indexrelid AS indexid,
            pg_class.relname AS indexname,
            pg_index.indrelid,
            pg_index.indkey,
            (pg_index.indpred IS NOT NULL) AS has_predicate,
            pg_get_indexdef(pg_index.indexrelid) AS indexdef
           FROM (pg_index
             JOIN pg_class ON ((pg_index.indexrelid = pg_class.oid)))
          WHERE pg_index.indisvalid
        ), fk_index_match AS (
         SELECT fk_list.fkoid,
            fk_list.conrelid,
            fk_list.parentid,
            fk_list.conname,
            fk_list.relname,
            fk_list.nspname,
            fk_list.update_action,
            fk_list.delete_action,
            fk_list.key_cols,
            index_list.indexid,
            index_list.indexname,
            (index_list.indkey)::integer[] AS indexatts,
            index_list.has_predicate,
            index_list.indexdef,
            array_length(fk_list.key_cols, 1) AS fk_colcount,
            array_length(index_list.indkey, 1) AS index_colcount,
            round(((pg_relation_size((fk_list.conrelid)::regclass))::numeric / (((1024)::double precision ^ (2)::double precision))::numeric)) AS table_mb,
            fk_cols_list.cols_list
           FROM ((fk_list
             JOIN fk_cols_list USING (fkoid))
             LEFT JOIN index_list ON (((fk_list.conrelid = index_list.indrelid) AND (((index_list.indkey)::smallint[])[0:(array_length(fk_list.key_cols, 1) - 1)] @> fk_list.key_cols))))
        ), fk_perfect_match AS (
         SELECT fk_index_match.fkoid
           FROM fk_index_match
          WHERE (((fk_index_match.index_colcount - 1) <= fk_index_match.fk_colcount) AND (NOT fk_index_match.has_predicate) AND (fk_index_match.indexdef ~~ '%USING btree%'::text))
        ), fk_index_check AS (
         SELECT 'no index'::text AS issue,
            fk_index_match.fkoid,
            fk_index_match.conrelid,
            fk_index_match.parentid,
            fk_index_match.conname,
            fk_index_match.relname,
            fk_index_match.nspname,
            fk_index_match.update_action,
            fk_index_match.delete_action,
            fk_index_match.key_cols,
            fk_index_match.indexid,
            fk_index_match.indexname,
            fk_index_match.indexatts,
            fk_index_match.has_predicate,
            fk_index_match.indexdef,
            fk_index_match.fk_colcount,
            fk_index_match.index_colcount,
            fk_index_match.table_mb,
            fk_index_match.cols_list,
            1 AS issue_sort
           FROM fk_index_match
          WHERE (fk_index_match.indexid IS NULL)
        UNION ALL
         SELECT 'questionable index'::text AS issue,
            fk_index_match.fkoid,
            fk_index_match.conrelid,
            fk_index_match.parentid,
            fk_index_match.conname,
            fk_index_match.relname,
            fk_index_match.nspname,
            fk_index_match.update_action,
            fk_index_match.delete_action,
            fk_index_match.key_cols,
            fk_index_match.indexid,
            fk_index_match.indexname,
            fk_index_match.indexatts,
            fk_index_match.has_predicate,
            fk_index_match.indexdef,
            fk_index_match.fk_colcount,
            fk_index_match.index_colcount,
            fk_index_match.table_mb,
            fk_index_match.cols_list,
            2
           FROM fk_index_match
          WHERE ((fk_index_match.indexid IS NOT NULL) AND (NOT (fk_index_match.fkoid IN ( SELECT fk_perfect_match.fkoid
                   FROM fk_perfect_match))))
        ), parent_table_stats AS (
         SELECT fk_list.fkoid,
            tabstats.relname AS parent_name,
            (((tabstats.n_tup_ins + tabstats.n_tup_upd) + tabstats.n_tup_del) + tabstats.n_tup_hot_upd) AS parent_writes,
            round(((pg_relation_size((fk_list.parentid)::regclass))::numeric / (((1024)::double precision ^ (2)::double precision))::numeric)) AS parent_mb
           FROM (pg_stat_user_tables tabstats
             JOIN fk_list ON ((tabstats.relid = fk_list.parentid)))
        ), fk_table_stats AS (
         SELECT fk_list.fkoid,
            (((tabstats.n_tup_ins + tabstats.n_tup_upd) + tabstats.n_tup_del) + tabstats.n_tup_hot_upd) AS writes,
            tabstats.seq_scan AS table_scans
           FROM (pg_stat_user_tables tabstats
             JOIN fk_list ON ((tabstats.relid = fk_list.conrelid)))
        )
 SELECT fk_index_check.nspname AS schema_name,
    fk_index_check.relname AS table_name,
    fk_index_check.conname AS fk_name,
    fk_index_check.issue,
    fk_index_check.table_mb,
    fk_table_stats.writes,
    fk_table_stats.table_scans,
    parent_table_stats.parent_name,
    parent_table_stats.parent_mb,
    parent_table_stats.parent_writes,
    fk_index_check.cols_list,
    fk_index_check.indexdef
   FROM ((fk_index_check
     JOIN parent_table_stats USING (fkoid))
     JOIN fk_table_stats USING (fkoid))
  WHERE ((fk_index_check.table_mb > (0)::numeric) AND ((fk_table_stats.writes > 0) OR (parent_table_stats.parent_writes > 0) OR (parent_table_stats.parent_mb > (0)::numeric)))
  ORDER BY fk_index_check.issue_sort, fk_index_check.table_mb DESC, fk_index_check.relname, fk_index_check.conname;


ALTER TABLE meta_001.v_dba_get_idx_health_by_size OWNER TO "armando";

--
-- Name: v_dba_get_index_bloat_reindex_concurrently; Type: VIEW; Schema: meta_001; Owner: IHSLaMltbFn1
--

CREATE VIEW meta_001.v_dba_get_index_bloat_reindex_concurrently AS
 WITH btree_index_atts AS (
         SELECT pg_namespace.nspname,
            indexclass.relname AS index_name,
            indexclass.reltuples,
            indexclass.relpages,
            pg_index.indrelid,
            pg_index.indexrelid,
            indexclass.relam,
            tableclass.relname AS tablename,
            (regexp_split_to_table((pg_index.indkey)::text, ' '::text))::smallint AS attnum,
            pg_index.indexrelid AS index_oid
           FROM ((((pg_index
             JOIN pg_class indexclass ON ((pg_index.indexrelid = indexclass.oid)))
             JOIN pg_class tableclass ON ((pg_index.indrelid = tableclass.oid)))
             JOIN pg_namespace ON ((pg_namespace.oid = indexclass.relnamespace)))
             JOIN pg_am ON ((indexclass.relam = pg_am.oid)))
          WHERE ((pg_am.amname = 'btree'::name) AND (indexclass.relpages > 0) AND (pg_namespace.nspname <> ALL (ARRAY['pg_catalog'::name, 'information_schema'::name])))
        ), index_item_sizes AS (
         SELECT ind_atts.nspname,
            ind_atts.index_name,
            ind_atts.reltuples,
            ind_atts.relpages,
            ind_atts.relam,
            ind_atts.indrelid AS table_oid,
            ind_atts.index_oid,
            (current_setting('block_size'::text))::numeric AS bs,
            8 AS maxalign,
            24 AS pagehdr,
                CASE
                    WHEN (max(COALESCE(pg_stats.null_frac, (0)::real)) = (0)::double precision) THEN 2
                    ELSE 6
                END AS index_tuple_hdr,
            sum((((1)::double precision - COALESCE(pg_stats.null_frac, (0)::real)) * (COALESCE(pg_stats.avg_width, 1024))::double precision)) AS nulldatawidth
           FROM ((pg_attribute
             JOIN btree_index_atts ind_atts ON (((pg_attribute.attrelid = ind_atts.indexrelid) AND (pg_attribute.attnum = ind_atts.attnum))))
             JOIN pg_stats ON (((pg_stats.schemaname = ind_atts.nspname) AND (((pg_stats.tablename = ind_atts.tablename) AND ((pg_stats.attname)::text = pg_get_indexdef(pg_attribute.attrelid, (pg_attribute.attnum)::integer, true))) OR ((pg_stats.tablename = ind_atts.index_name) AND (pg_stats.attname = pg_attribute.attname))))))
          WHERE (pg_attribute.attnum > 0)
          GROUP BY ind_atts.nspname, ind_atts.index_name, ind_atts.reltuples, ind_atts.relpages, ind_atts.relam, ind_atts.indrelid, ind_atts.index_oid, (current_setting('block_size'::text))::numeric, 8::integer
        ), index_aligned_est AS (
         SELECT index_item_sizes.maxalign,
            index_item_sizes.bs,
            index_item_sizes.nspname,
            index_item_sizes.index_name,
            index_item_sizes.reltuples,
            index_item_sizes.relpages,
            index_item_sizes.relam,
            index_item_sizes.table_oid,
            index_item_sizes.index_oid,
            COALESCE(ceil((((index_item_sizes.reltuples * ((((((((6 + index_item_sizes.maxalign) -
                CASE
                    WHEN ((index_item_sizes.index_tuple_hdr % index_item_sizes.maxalign) = 0) THEN index_item_sizes.maxalign
                    ELSE (index_item_sizes.index_tuple_hdr % index_item_sizes.maxalign)
                END))::double precision + index_item_sizes.nulldatawidth) + (index_item_sizes.maxalign)::double precision) - (
                CASE
                    WHEN (((index_item_sizes.nulldatawidth)::integer % index_item_sizes.maxalign) = 0) THEN index_item_sizes.maxalign
                    ELSE ((index_item_sizes.nulldatawidth)::integer % index_item_sizes.maxalign)
                END)::double precision))::numeric)::double precision) / ((index_item_sizes.bs - (index_item_sizes.pagehdr)::numeric))::double precision) + (1)::double precision)), (0)::double precision) AS expected
           FROM index_item_sizes
        ), raw_bloat AS (
         SELECT current_database() AS dbname,
            index_aligned_est.nspname,
            pg_class.relname AS table_name,
            index_aligned_est.index_name,
            (index_aligned_est.bs * ((index_aligned_est.relpages)::bigint)::numeric) AS totalbytes,
            index_aligned_est.expected,
                CASE
                    WHEN ((index_aligned_est.relpages)::double precision <= index_aligned_est.expected) THEN (0)::numeric
                    ELSE (index_aligned_est.bs * ((((index_aligned_est.relpages)::double precision - index_aligned_est.expected))::bigint)::numeric)
                END AS wastedbytes,
                CASE
                    WHEN ((index_aligned_est.relpages)::double precision <= index_aligned_est.expected) THEN (0)::numeric
                    ELSE (((index_aligned_est.bs * ((((index_aligned_est.relpages)::double precision - index_aligned_est.expected))::bigint)::numeric) * (100)::numeric) / (index_aligned_est.bs * ((index_aligned_est.relpages)::bigint)::numeric))
                END AS realbloat,
            pg_relation_size((index_aligned_est.table_oid)::regclass) AS table_bytes,
            stat.idx_scan AS index_scans
           FROM ((index_aligned_est
             JOIN pg_class ON ((pg_class.oid = index_aligned_est.table_oid)))
             JOIN pg_stat_user_indexes stat ON ((index_aligned_est.index_oid = stat.indexrelid)))
        ), format_bloat AS (
         SELECT raw_bloat.dbname AS database_name,
            raw_bloat.nspname AS schema_name,
            raw_bloat.table_name,
            raw_bloat.index_name,
            round(raw_bloat.realbloat) AS bloat_pct,
            round((raw_bloat.wastedbytes / (((1024)::double precision ^ (2)::double precision))::numeric)) AS bloat_mb,
            round((raw_bloat.totalbytes / (((1024)::double precision ^ (2)::double precision))::numeric), 3) AS index_mb,
            round(((raw_bloat.table_bytes)::numeric / (((1024)::double precision ^ (2)::double precision))::numeric), 3) AS table_mb,
            raw_bloat.index_scans
           FROM raw_bloat
        )
 SELECT format_bloat.database_name,
    format_bloat.schema_name,
    format_bloat.table_name,
    format_bloat.index_name,
    format_bloat.bloat_pct,
    format_bloat.bloat_mb,
    format_bloat.index_mb,
    format_bloat.table_mb,
    format_bloat.index_scans,
    (((((('reindex index '::text || (format_bloat.schema_name)::text) || '.'::text) || (format_bloat.index_name)::text) || ';'::text) || chr(10)) || 'commit;'::text) AS fix_sql
   FROM format_bloat
  WHERE ((format_bloat.bloat_pct > (20)::numeric) OR (format_bloat.bloat_mb > (10)::numeric))
  ORDER BY format_bloat.bloat_mb DESC;


ALTER TABLE meta_001.v_dba_get_index_bloat_reindex_concurrently OWNER TO "armando";

--
-- Name: v_dba_get_index_bloat_reindex_concurrently_cant_no_stats; Type: VIEW; Schema: meta_001; Owner: IHSLaMltbFn1
--

CREATE VIEW meta_001.v_dba_get_index_bloat_reindex_concurrently_cant_no_stats AS
 SELECT columns.table_schema,
    columns.table_name,
    (pg_class.relpages = 0) AS is_empty,
    ((psut.relname IS NULL) OR ((psut.last_analyze IS NULL) AND (psut.last_autoanalyze IS NULL))) AS never_analyzed,
    array_agg((columns.column_name)::text) AS no_stats_columns,
    (((((('analyze verbose  '::text || (columns.table_schema)::text) || '.'::text) || (columns.table_name)::text) || ';'::text) || chr(10)) || 'commit;'::text) AS fix_sql_v,
    (((((('analyze          '::text || (columns.table_schema)::text) || '.'::text) || (columns.table_name)::text) || ';'::text) || chr(10)) || 'commit;'::text) AS fix_sql
   FROM ((((information_schema.columns
     JOIN pg_class ON ((((columns.table_name)::name = pg_class.relname) AND (pg_class.relkind = 'r'::"char"))))
     JOIN pg_namespace ON (((pg_class.relnamespace = pg_namespace.oid) AND (pg_namespace.nspname = (columns.table_schema)::name))))
     LEFT JOIN pg_stats ON ((((columns.table_schema)::name = pg_stats.schemaname) AND ((columns.table_name)::name = pg_stats.tablename) AND ((columns.column_name)::name = pg_stats.attname))))
     LEFT JOIN pg_stat_user_tables psut ON ((((columns.table_schema)::name = psut.schemaname) AND ((columns.table_name)::name = psut.relname))))
  WHERE ((pg_stats.attname IS NULL) AND ((columns.table_schema)::text <> ALL ((ARRAY['pg_catalog'::character varying, 'information_schema'::character varying])::text[])))
  GROUP BY columns.table_schema, columns.table_name, pg_class.relpages, psut.relname, psut.last_analyze, psut.last_autoanalyze;


ALTER TABLE meta_001.v_dba_get_index_bloat_reindex_concurrently_cant_no_stats OWNER TO "armando";

--
-- Name: v_dba_get_index_info; Type: VIEW; Schema: meta_001; Owner: IHSLaMltbFn1
--

CREATE VIEW meta_001.v_dba_get_index_info AS
 SELECT a.relnamespace,
    a.index_name,
    b.attname,
    b.attnum,
    a.indisunique,
    a.indisprimary
   FROM ( SELECT b_1.relnamespace,
            a_1.indrelid,
            a_1.indisunique,
            a_1.indisprimary,
            c.relname AS index_name,
            unnest(a_1.indkey) AS index_num
           FROM pg_index a_1,
            pg_class b_1,
            pg_class c
          WHERE ((b_1.oid = a_1.indrelid) AND (a_1.indexrelid = c.oid))) a,
    pg_attribute b
  WHERE ((a.indrelid = b.attrelid) AND (a.index_num = b.attnum))
  ORDER BY a.index_name, a.index_num;


ALTER TABLE meta_001.v_dba_get_index_info OWNER TO "armando";

--
-- Name: v_dba_get_index_size_tune_query; Type: VIEW; Schema: meta_001; Owner: IHSLaMltbFn1
--

CREATE VIEW meta_001.v_dba_get_index_size_tune_query AS
 SELECT t.schemaname,
    t.tablename,
    foo.indexname,
    c.reltuples AS num_rows,
    pg_size_pretty(pg_relation_size((((quote_ident((t.schemaname)::text) || '.'::text) || quote_ident((t.tablename)::text)))::regclass)) AS table_size,
    pg_size_pretty(pg_relation_size((((quote_ident((t.schemaname)::text) || '.'::text) || quote_ident((foo.indexrelname)::text)))::regclass)) AS index_size,
        CASE
            WHEN foo.indisunique THEN 'Y'::text
            ELSE 'N'::text
        END AS "unique",
    foo.number_of_scans,
    foo.tuples_read,
    foo.tuples_fetched
   FROM ((pg_tables t
     LEFT JOIN pg_class c ON ((t.tablename = c.relname)))
     LEFT JOIN ( SELECT c_1.relname AS ctablename,
            ipg.relname AS indexname,
            x.indnatts AS number_of_columns,
            psai.idx_scan AS number_of_scans,
            psai.idx_tup_read AS tuples_read,
            psai.idx_tup_fetch AS tuples_fetched,
            psai.indexrelname,
            x.indisunique,
            psai.schemaname
           FROM (((pg_index x
             JOIN pg_class c_1 ON ((c_1.oid = x.indrelid)))
             JOIN pg_class ipg ON ((ipg.oid = x.indexrelid)))
             JOIN pg_stat_all_indexes psai ON ((x.indexrelid = psai.indexrelid)))) foo ON (((t.tablename = foo.ctablename) AND (t.schemaname = foo.schemaname))))
  WHERE (t.schemaname <> ALL (ARRAY['pg_catalog'::name, 'information_schema'::name]))
  ORDER BY t.schemaname, t.tablename;


ALTER TABLE meta_001.v_dba_get_index_size_tune_query OWNER TO "armando";

--
-- Name: v_dba_get_index_summary; Type: VIEW; Schema: meta_001; Owner: IHSLaMltbFn1
--

CREATE VIEW meta_001.v_dba_get_index_summary AS
 SELECT pg_namespace.nspname,
    pg_class.relname,
    pg_size_pretty((pg_class.reltuples)::bigint) AS rows_in_bytes,
    pg_class.reltuples AS num_rows,
    count(foo.indexname) AS number_of_indexes,
        CASE
            WHEN (x.is_unique = 1) THEN 'Y'::text
            ELSE 'N'::text
        END AS "unique",
    sum(
        CASE
            WHEN (foo.number_of_columns = 1) THEN 1
            ELSE 0
        END) AS single_column,
    sum(
        CASE
            WHEN (foo.number_of_columns IS NULL) THEN 0
            WHEN (foo.number_of_columns = 1) THEN 0
            ELSE 1
        END) AS multi_column
   FROM (((pg_namespace
     LEFT JOIN pg_class ON ((pg_namespace.oid = pg_class.relnamespace)))
     LEFT JOIN ( SELECT pg_index.indrelid,
            max((pg_index.indisunique)::integer) AS is_unique
           FROM pg_index
          GROUP BY pg_index.indrelid) x ON ((pg_class.oid = x.indrelid)))
     LEFT JOIN ( SELECT c.relname AS ctablename,
            ipg.relname AS indexname,
            x_1.indnatts AS number_of_columns
           FROM ((pg_index x_1
             JOIN pg_class c ON ((c.oid = x_1.indrelid)))
             JOIN pg_class ipg ON ((ipg.oid = x_1.indexrelid)))) foo ON ((pg_class.relname = foo.ctablename)))
  WHERE ((pg_namespace.nspname = 'public'::name) AND (pg_class.relkind = 'r'::"char"))
  GROUP BY pg_class.relname, pg_class.reltuples, x.is_unique, pg_namespace.nspname
  ORDER BY pg_class.relname;


ALTER TABLE meta_001.v_dba_get_index_summary OWNER TO "armando";

--
-- Name: v_dba_show_active_connections; Type: VIEW; Schema: meta_001; Owner: IHSLaMltbFn1
--

CREATE VIEW meta_001.v_dba_show_active_connections AS
 WITH abc AS (
         SELECT 'not idle'::text AS activity_now,
                CASE
                    WHEN (pg_stat_activity.pid = pg_backend_pid()) THEN 'my_session'::text
                    ELSE NULL::text
                END AS whose_session,
            pg_stat_activity.pid,
            pg_stat_activity.datname,
            pg_stat_activity.usename,
            pg_stat_activity.state,
            pg_stat_activity.application_name,
            pg_stat_activity.client_hostname,
            pg_stat_activity.client_port,
            pg_stat_activity.backend_start,
            pg_stat_activity.query_start,
            pg_stat_activity.query
           FROM pg_stat_activity
          WHERE ((pg_stat_activity.state <> 'idle'::text) OR (pg_stat_activity.state IS NULL))
        UNION ALL
         SELECT 'idle'::text AS activity_now,
                CASE
                    WHEN (pg_stat_activity.pid = pg_backend_pid()) THEN 'my_session'::text
                    ELSE NULL::text
                END AS whose_session,
            pg_stat_activity.pid,
            pg_stat_activity.datname,
            pg_stat_activity.usename,
            pg_stat_activity.state,
            pg_stat_activity.application_name,
            pg_stat_activity.client_hostname,
            pg_stat_activity.client_port,
            pg_stat_activity.backend_start,
            pg_stat_activity.query_start,
            pg_stat_activity.query
           FROM pg_stat_activity
          WHERE (pg_stat_activity.state = 'idle'::text)
        )
 SELECT abc.activity_now,
    abc.whose_session,
    abc.pid,
    abc.datname,
    abc.usename,
    abc.state,
    abc.application_name,
    abc.client_hostname,
    abc.client_port,
    abc.backend_start,
    abc.query_start,
    abc.query
   FROM abc;


ALTER TABLE meta_001.v_dba_show_active_connections OWNER TO "armando";

--
-- Name: v_dba_get_lock_info_by_table; Type: VIEW; Schema: meta_001; Owner: IHSLaMltbFn1
--

CREATE VIEW meta_001.v_dba_get_lock_info_by_table AS
 WITH abc AS (
         SELECT a.activity_now,
            a.whose_session,
            a.pid,
            a.datname,
            a.usename,
            a.state,
            a.application_name,
            a.client_hostname,
            a.client_port,
            a.backend_start,
            a.query_start,
            a.query
           FROM meta_001.v_dba_show_active_connections a
          WHERE (a.activity_now = 'not idle'::text)
        ), xyz AS (
         SELECT abc.pid,
            t.relname,
            abc.usename,
            abc.state,
            l.mode,
            l.granted,
            l.fastpath,
            abc.application_name,
            abc.client_hostname,
            abc.backend_start,
            abc.query_start,
            abc.query
           FROM pg_class t,
            pg_locks l,
            abc
          WHERE ((abc.pid = l.pid) AND (l.relation = t.oid) AND (t.relkind = 'r'::"char"))
          ORDER BY abc.pid, t.relname
        )
 SELECT 'SELECT'::text AS sql_type_key,
    xyz.pid,
    xyz.relname,
    xyz.usename,
    xyz.state,
    xyz.mode,
    xyz.granted,
    xyz.fastpath,
    xyz.application_name,
    xyz.client_hostname,
    xyz.backend_start,
    xyz.query_start,
    xyz.query
   FROM xyz
  WHERE ((xyz.query ~~ 'select%'::text) OR (xyz.query ~~ 'SELECT%'::text))
UNION ALL
 SELECT 'INSERT'::text AS sql_type_key,
    xyz.pid,
    xyz.relname,
    xyz.usename,
    xyz.state,
    xyz.mode,
    xyz.granted,
    xyz.fastpath,
    xyz.application_name,
    xyz.client_hostname,
    xyz.backend_start,
    xyz.query_start,
    xyz.query
   FROM xyz
  WHERE ((xyz.query ~~ 'insert%'::text) OR (xyz.query ~~ 'INSERT%'::text))
UNION ALL
 SELECT 'UPDATE'::text AS sql_type_key,
    xyz.pid,
    xyz.relname,
    xyz.usename,
    xyz.state,
    xyz.mode,
    xyz.granted,
    xyz.fastpath,
    xyz.application_name,
    xyz.client_hostname,
    xyz.backend_start,
    xyz.query_start,
    xyz.query
   FROM xyz
  WHERE ((xyz.query ~~ 'update%'::text) OR (xyz.query ~~ 'UPDATE%'::text))
UNION ALL
 SELECT 'DELETE'::text AS sql_type_key,
    xyz.pid,
    xyz.relname,
    xyz.usename,
    xyz.state,
    xyz.mode,
    xyz.granted,
    xyz.fastpath,
    xyz.application_name,
    xyz.client_hostname,
    xyz.backend_start,
    xyz.query_start,
    xyz.query
   FROM xyz
  WHERE ((xyz.query ~~ 'delete%'::text) OR (xyz.query ~~ 'DELETE%'::text))
UNION ALL
 SELECT 'OTHER'::text AS sql_type_key,
    xyz.pid,
    xyz.relname,
    xyz.usename,
    xyz.state,
    xyz.mode,
    xyz.granted,
    xyz.fastpath,
    xyz.application_name,
    xyz.client_hostname,
    xyz.backend_start,
    xyz.query_start,
    xyz.query
   FROM xyz
  WHERE ((xyz.query !~~ 'select%'::text) AND (xyz.query !~~ 'SELECT%'::text) AND (xyz.query !~~ 'insert%'::text) AND (xyz.query !~~ 'INSERT%'::text) AND (xyz.query !~~ 'update%'::text) AND (xyz.query !~~ 'UPDATE%'::text) AND (xyz.query !~~ 'delete%'::text) AND (xyz.query !~~ 'DELETE%'::text));


ALTER TABLE meta_001.v_dba_get_lock_info_by_table OWNER TO "armando";

--
-- Name: v_dba_get_migrated_table_cnts; Type: VIEW; Schema: meta_001; Owner: winteam_prod_read_stg
--

CREATE VIEW meta_001.v_dba_get_migrated_table_cnts AS
 WITH abc AS (
         SELECT current_database() AS current_db,
            n.nspname AS s_name,
            c.relname AS t_name,
                CASE
                    WHEN (c.relkind = ANY (ARRAY['r'::"char", 'p'::"char"])) THEN 'table'::text
                    WHEN (c.relkind = 's'::"char") THEN 'special'::text
                    WHEN (c.relkind = 'f'::"char") THEN 'foreign table'::text
                    ELSE NULL::text
                END AS type,
            pg_get_userbyid(c.relowner) AS owner,
            pg_size_pretty(pg_table_size((c.oid)::regclass)) AS size_pretty,
            pg_table_size((c.oid)::regclass) AS size_bytes,
            c.reltuples AS rows,
                CASE
                    WHEN (c.reltuples > (0)::double precision) THEN ((pg_table_size((c.oid)::regclass))::double precision / c.reltuples)
                    ELSE NULL::double precision
                END AS bytes_per_row,
            pg_size_pretty(pg_total_relation_size((c.oid)::regclass)) AS size_plus_indexes,
            obj_description(c.oid, 'pg_class'::name) AS description,
                CASE
                    WHEN ((n.nspname !~ '^pg_toast'::text) AND (n.nspname <> ALL (ARRAY['pg_catalog'::name, 'information_schema'::name]))) THEN false
                    ELSE true
                END AS system_object,
            mt.data_source,
            mt.sensitive
           FROM ((pg_class c
             LEFT JOIN pg_namespace n ON ((n.oid = c.relnamespace)))
             LEFT JOIN meta_001.meta_table mt ON (((n.nspname = mt.s_name) AND (c.relname = mt.t_name))))
          WHERE (c.relkind = ANY (ARRAY['r'::"char", 'p'::"char", 's'::"char", 'f'::"char"]))
        )
 SELECT abc.current_db,
    abc.s_name,
    abc.t_name,
    abc.type,
    abc.owner,
    abc.size_pretty,
    abc.size_bytes,
    abc.rows,
    abc.bytes_per_row,
    abc.size_plus_indexes,
    abc.description,
    abc.system_object,
    abc.data_source,
    abc.sensitive
   FROM abc
  WHERE (abc.system_object = false);


ALTER TABLE meta_001.v_dba_get_migrated_table_cnts OWNER TO winteam_prod_read_stg;

--
-- Name: v_dba_get_missing_index_vw1; Type: VIEW; Schema: meta_001; Owner: IHSLaMltbFn1
--

CREATE VIEW meta_001.v_dba_get_missing_index_vw1 AS
 SELECT x1.table_in_trouble,
    pg_relation_size((x1.table_in_trouble)::regclass) AS sz_n_byts,
    x1.seq_scan,
    x1.idx_scan,
        CASE
            WHEN (pg_relation_size((x1.table_in_trouble)::regclass) > 500000000) THEN 'Exceeds 500 megs, too large to count in a view. For a count, count individually'::text
            ELSE (count(x1.table_in_trouble))::text
        END AS tbl_rec_count,
    x1.priority
   FROM ( SELECT (((pg_stat_all_tables.schemaname)::text || '.'::text) || (pg_stat_all_tables.relname)::text) AS table_in_trouble,
            pg_stat_all_tables.seq_scan,
            pg_stat_all_tables.idx_scan,
                CASE
                    WHEN ((pg_stat_all_tables.seq_scan - pg_stat_all_tables.idx_scan) < 50) THEN 'Minor Problem'::text
                    WHEN (((pg_stat_all_tables.seq_scan - pg_stat_all_tables.idx_scan) >= 50) AND ((pg_stat_all_tables.seq_scan - pg_stat_all_tables.idx_scan) < 250)) THEN 'Major Problem'::text
                    WHEN ((pg_stat_all_tables.seq_scan - pg_stat_all_tables.idx_scan) >= 250) THEN 'Extreme Problem'::text
                    ELSE NULL::text
                END AS priority
           FROM pg_stat_all_tables
          WHERE ((pg_stat_all_tables.seq_scan > pg_stat_all_tables.idx_scan) AND (pg_stat_all_tables.schemaname <> ALL (ARRAY['pg_catalog'::name, 'pg_toast'::name, 'information_schema'::name])) AND (pg_stat_all_tables.seq_scan > 10))) x1
  GROUP BY x1.table_in_trouble, x1.seq_scan, x1.idx_scan, x1.priority
  ORDER BY x1.priority DESC, x1.seq_scan;


ALTER TABLE meta_001.v_dba_get_missing_index_vw1 OWNER TO "armando";

--
-- Name: v_dba_get_missing_indexes_fk_c_r; Type: VIEW; Schema: meta_001; Owner: IHSLaMltbFn1
--

~~ CREATE VIEW meta_001.v_dba_get_missing_indexes_fk_c_r AS
~~  SELECT (c.conrelid)::regclass AS "table",
~~     string_agg((a.attname)::text, ','::text ORDER BY x.n) AS columns,
~~     pg_size_pretty(pg_relation_size((c.conrelid)::regclass)) AS size,
~~     c.conname AS "constraint",
~~     c.consrc AS cons_sql_that_exists,
~~     (c.confrelid)::regclass AS referenced_table,
~~     c.contype
~~    FROM ((pg_constraint c
~~      CROSS JOIN LATERAL unnest(c.conkey) WITH ORDINALITY x(attnum, n))
~~      JOIN pg_attribute a ON (((a.attnum = x.attnum) AND (a.attrelid = c.conrelid))))
~~   WHERE (NOT (EXISTS ( SELECT 1
~~            FROM pg_index i
~~           WHERE ((i.indrelid = c.conrelid) AND (((i.indkey)::smallint[])[0:(cardinality(c.conkey) - 1)] @> c.conkey)))))
~~   GROUP BY c.conrelid, c.conname, c.confrelid, c.consrc, c.contype
~~   ORDER BY (pg_relation_size((c.conrelid)::regclass)) DESC;


ALTER TABLE meta_001.v_dba_get_missing_indexes_fk_c_r OWNER TO "armando";

--
-- Name: v_dba_get_missing_unindexed_location_id; Type: VIEW; Schema: meta_001; Owner: IHSLaMltbFn1
--

CREATE VIEW meta_001.v_dba_get_missing_unindexed_location_id AS
 WITH abc AS (
         SELECT x.table_catalog,
            x.table_schema,
            x.table_name,
            x.column_name,
            x.ordinal_position,
            x.data_type,
            x.column_default,
            x.is_nullable,
            x.character_maximum_length,
            x.numeric_precision,
            x.is_self_referencing,
            x.is_identity
           FROM meta_001.v_dba_get_cols x
          WHERE (((x.column_name)::text = 'location_id'::text) AND (NOT ((((x.table_schema)::text || '.'::text) || (x.table_name)::text) IN ( SELECT (((v_dba_drop_show_all_indexes_location_id.schemaname)::text || '.'::text) || (v_dba_drop_show_all_indexes_location_id.table_name)::text)
                   FROM meta_001.v_dba_drop_show_all_indexes_location_id))) AND ((((x.table_schema)::text || '.'::text) || (x.table_name)::text) IN ( SELECT (((tables.s_name)::text || '.'::text) || (tables.t_name)::text)
                   FROM meta_001.tables)))
        )
 SELECT abc.table_catalog,
    abc.table_schema,
    abc.table_name,
    (((((((((rpad((((((('create index concurrently I_'::text || (abc.table_schema)::text) || '_'::text) || (abc.table_name)::text) || '_'::text) || (abc.column_name)::text) || '_idx_LI on '::text), 100, ' '::text) || rpad((((abc.table_schema)::text || '.'::text) || (abc.table_name)::text), 80, ' '::text)) || ' using btree ('::text) || (abc.column_name)::text) || ');'::text) || chr(10)) || 'commit;'::text) || chr(10)) || 'select now();'::text) || chr(10)) AS idx_sql
   FROM abc
  ORDER BY abc.table_name, abc.table_schema, abc.table_catalog;


ALTER TABLE meta_001.v_dba_get_missing_unindexed_location_id OWNER TO "armando";

--
-- Name: v_dba_get_mv_recursive_script_re___________________123; Type: VIEW; Schema: meta_001; Owner: IHSLaMltbFn1
--

CREATE VIEW meta_001.v_dba_get_mv_recursive_script_re___________________123 AS
 WITH RECURSIVE dep_recursive AS (
         SELECT 0 AS level,
            src0.object_name AS dep_name,
            ''::text AS dep_table,
            ''::text AS dep_type,
            ''::text AS ref_name,
            ''::text AS ref_type
           FROM ( WITH srcdata AS (
                         SELECT ((c.oid)::regclass)::text AS object_name,
                            c.relkind AS object_kind,
                            ns.nspname AS object_schema
                           FROM (pg_class c
                             JOIN pg_namespace ns ON ((c.relnamespace = ns.oid)))
                          WHERE (c.relkind = ANY (ARRAY['v'::"char", 'm'::"char", 'r'::"char", 'f'::"char"]))
                        )
                 SELECT srcdata.object_name
                   FROM srcdata
                  WHERE (srcdata.object_schema <> ALL (ARRAY['pg_catalog'::name, 'information_schema'::name]))) src0
        UNION ALL
         SELECT (dep_recursive.level + 1) AS level,
            depedencies.dep_name,
            depedencies.dep_table,
            depedencies.dep_type,
            depedencies.ref_name,
            depedencies.ref_type
           FROM (( WITH classtype AS (
                         SELECT pg_class.oid,
                                CASE pg_class.relkind
                                    WHEN 'r'::"char" THEN 'TABLE'::text
                                    WHEN 'i'::"char" THEN 'INDEX'::text
                                    WHEN 'S'::"char" THEN 'SEQUENCE'::text
                                    WHEN 'v'::"char" THEN 'VIEW'::text
                                    WHEN 'c'::"char" THEN 'TYPE'::text
                                    WHEN 't'::"char" THEN 'TABLE'::text
                                    WHEN 'm'::"char" THEN 'MATERIALIZED VIEW'::text
                                    ELSE NULL::text
                                END AS type
                           FROM pg_class
                        )
                 SELECT DISTINCT
                        CASE pg_depend.classid
                            WHEN 'pg_class'::regclass THEN ((pg_depend.objid)::regclass)::text
                            WHEN 'pg_type'::regclass THEN ((pg_depend.objid)::regtype)::text
                            WHEN 'pg_proc'::regclass THEN ((pg_depend.objid)::regprocedure)::text
                            WHEN 'pg_constraint'::regclass THEN (( SELECT pg_constraint.conname
                               FROM pg_constraint
                              WHERE (pg_constraint.oid = pg_depend.objid)))::text
                            WHEN 'pg_attrdef'::regclass THEN 'default'::text
                            WHEN 'pg_rewrite'::regclass THEN ( SELECT ((pg_rewrite.ev_class)::regclass)::text AS ev_class
                               FROM pg_rewrite
                              WHERE (pg_rewrite.oid = pg_depend.objid))
                            WHEN 'pg_trigger'::regclass THEN (( SELECT pg_trigger.tgname
                               FROM pg_trigger
                              WHERE (pg_trigger.oid = pg_depend.objid)))::text
                            ELSE (pg_depend.objid)::text
                        END AS dep_name,
                        CASE pg_depend.classid
                            WHEN 'pg_constraint'::regclass THEN ( SELECT ((pg_constraint.conrelid)::regclass)::text AS conrelid
                               FROM pg_constraint
                              WHERE (pg_constraint.oid = pg_depend.objid))
                            WHEN 'pg_attrdef'::regclass THEN ( SELECT ((pg_attrdef.adrelid)::regclass)::text AS adrelid
                               FROM pg_attrdef
                              WHERE (pg_attrdef.oid = pg_depend.objid))
                            WHEN 'pg_trigger'::regclass THEN ( SELECT ((pg_trigger.tgrelid)::regclass)::text AS tgrelid
                               FROM pg_trigger
                              WHERE (pg_trigger.oid = pg_depend.objid))
                            ELSE ''::text
                        END AS dep_table,
                        CASE pg_depend.classid
                            WHEN 'pg_class'::regclass THEN ( SELECT classtype.type
                               FROM classtype
                              WHERE (classtype.oid = pg_depend.objid))
                            WHEN 'pg_type'::regclass THEN 'TYPE'::text
                            WHEN 'pg_proc'::regclass THEN 'FUNCTION'::text
                            WHEN 'pg_constraint'::regclass THEN 'TABLE CONSTRAINT'::text
                            WHEN 'pg_attrdef'::regclass THEN 'TABLE DEFAULT'::text
                            WHEN 'pg_rewrite'::regclass THEN ( SELECT classtype.type
                               FROM classtype
                              WHERE (classtype.oid = ( SELECT pg_rewrite.ev_class
                                       FROM pg_rewrite
                                      WHERE (pg_rewrite.oid = pg_depend.objid))))
                            WHEN 'pg_trigger'::regclass THEN 'TRIGGER'::text
                            ELSE (pg_depend.objid)::text
                        END AS dep_type,
                        CASE pg_depend.refclassid
                            WHEN 'pg_class'::regclass THEN ((pg_depend.refobjid)::regclass)::text
                            WHEN 'pg_type'::regclass THEN ((pg_depend.refobjid)::regtype)::text
                            WHEN 'pg_proc'::regclass THEN ((pg_depend.refobjid)::regprocedure)::text
                            ELSE (pg_depend.refobjid)::text
                        END AS ref_name,
                        CASE pg_depend.refclassid
                            WHEN 'pg_class'::regclass THEN ( SELECT classtype.type
                               FROM classtype
                              WHERE (classtype.oid = pg_depend.refobjid))
                            WHEN 'pg_type'::regclass THEN 'TYPE'::text
                            WHEN 'pg_proc'::regclass THEN 'FUNCTION'::text
                            ELSE (pg_depend.refobjid)::text
                        END AS ref_type,
                        CASE pg_depend.deptype
                            WHEN 'n'::"char" THEN 'normal'::text
                            WHEN 'a'::"char" THEN 'automatic'::text
                            WHEN 'i'::"char" THEN 'internal'::text
                            WHEN 'e'::"char" THEN 'extension'::text
                            WHEN 'p'::"char" THEN 'pinned'::text
                            ELSE NULL::text
                        END AS "dependency type"
                   FROM pg_depend
                  WHERE ((pg_depend.deptype = 'n'::"char") AND (pg_depend.refclassid <> ALL (ARRAY[(2615)::oid, (2612)::oid])))) depedencies
             JOIN dep_recursive ON ((depedencies.ref_name ~~ dep_recursive.dep_name)))
          WHERE ((depedencies.ref_name <> depedencies.dep_name) AND (depedencies.ref_name <> depedencies.dep_table))
        )
 SELECT max(d.level) AS level,
    d.dep_name,
        CASE
            WHEN (min(d.dep_type) = 'VIEW'::text) THEN ((((('create or replace '::text || min(d.dep_type)) || ' '::text) || d.dep_name) || ' as '::text) || ( SELECT v.definition
               FROM pg_views v
              WHERE ((((v.schemaname)::text || '.'::text) || (v.viewname)::text) = d.dep_name)))
            WHEN (min(d.dep_type) = 'MATERIALIZED VIEW'::text) THEN ((((('create '::text || min(d.dep_type)) || ' '::text) || d.dep_name) || ' as '::text) || ( SELECT v.definition
               FROM pg_matviews v
              WHERE ((((v.schemaname)::text || '.'::text) || (v.matviewname)::text) = d.dep_name)))
            ELSE NULL::text
        END AS dep_source_code,
    (((('DROP '::text || min(d.dep_type)) || ' IF EXISTS '::text) || d.dep_name) || ';'::text) AS drop_dep_text,
    min(d.ref_name) AS ref_name,
    min(d.ref_type) AS ref_type
   FROM dep_recursive d
  WHERE (d.level > 0)
  GROUP BY d.dep_name;


ALTER TABLE meta_001.v_dba_get_mv_recursive_script_re___________________123 OWNER TO "armando";

--
-- Name: v_dba_get_mv_recursive_script_re___________________123_fix; Type: VIEW; Schema: meta_001; Owner: IHSLaMltbFn1
--

CREATE VIEW meta_001.v_dba_get_mv_recursive_script_re___________________123_fix AS
 SELECT 'CONSTRAINT_NULL'::text AS actionfor,
    a.dep_name,
    a.level,
    a.ref_name,
    a.drop_dep_text,
    a.ref_type,
    ((('meta_001.ddlx_create_constraints('::text || '????.'::text) || a.dep_name) || '  )'::text) AS dep_source_code
   FROM meta_001.v_dba_get_mv_recursive_script_re___________________123 a
  WHERE (("position"(a.drop_dep_text, 'DROP TABLE CONSTRAINT IF EXISTS'::text) > 0) AND (a.dep_source_code IS NULL))
UNION ALL
 SELECT 'VIEW_NULL'::text AS actionfor,
    a.dep_name,
    a.level,
    a.ref_name,
    a.drop_dep_text,
    a.ref_type,
    meta_001.ddlx_create_view((('public.'::text || a.dep_name))::regclass) AS dep_source_code
   FROM meta_001.v_dba_get_mv_recursive_script_re___________________123 a
  WHERE (("position"(a.drop_dep_text, 'DROP VIEW IF EXISTS'::text) > 0) AND (a.dep_source_code IS NULL))
UNION ALL
 SELECT 'VIEW_NOTNULL'::text AS actionfor,
    aa.dep_name,
    aa.level,
    aa.ref_name,
    aa.drop_dep_text,
    aa.ref_type,
    aa.dep_source_code
   FROM meta_001.v_dba_get_mv_recursive_script_re___________________123 aa
  WHERE (("position"(aa.drop_dep_text, 'DROP VIEW IF EXISTS'::text) > 0) AND (aa.dep_source_code IS NOT NULL))
UNION ALL
 SELECT 'OTHER_ANY'::text AS actionfor,
    aa.dep_name,
    aa.level,
    aa.ref_name,
    aa.drop_dep_text,
    aa.ref_type,
    aa.dep_source_code
   FROM meta_001.v_dba_get_mv_recursive_script_re___________________123 aa
  WHERE ("position"(aa.drop_dep_text, 'DROP VIEW IF EXISTS'::text) < 1);


ALTER TABLE meta_001.v_dba_get_mv_recursive_script_re___________________123_fix OWNER TO "armando";

--
-- Name: v_dba_get_pg_stat_statements_by_cpu; Type: VIEW; Schema: meta_001; Owner: IHSLaMltbFn1
--

CREATE VIEW meta_001.v_dba_get_pg_stat_statements_by_cpu AS
 WITH abc AS (
         SELECT "substring"(pg_stat_statements.query, 1, 500) AS short_query,
            round((pg_stat_statements.total_time)::numeric, 2) AS total_time,
            pg_stat_statements.calls,
            round((pg_stat_statements.mean_time)::numeric, 2) AS mean,
            round(((((100)::double precision * pg_stat_statements.total_time) / (sum((pg_stat_statements.total_time)::numeric) OVER ())::double precision))::numeric, 2) AS percentage_cpu
           FROM public.pg_stat_statements
          ORDER BY (round((pg_stat_statements.total_time)::numeric, 2)) DESC
         LIMIT 500
        ), by_tt AS (
         SELECT b.by_total_time,
            b.short_query,
            b.total_time,
            b.calls,
            b.mean,
            b.percentage_cpu
           FROM ( SELECT row_number() OVER () AS by_total_time,
                    abc.short_query,
                    abc.total_time,
                    abc.calls,
                    abc.mean,
                    abc.percentage_cpu
                   FROM abc) b
        ), by_calls AS (
         SELECT row_number() OVER (ORDER BY byc.calls DESC) AS by_calls,
            byc.by_total_time,
            byc.short_query,
            byc.total_time,
            byc.calls,
            byc.mean,
            byc.percentage_cpu
           FROM by_tt byc
          ORDER BY byc.calls DESC
        ), xyz AS (
         SELECT row_number() OVER (ORDER BY byc1.mean DESC) AS by_mean,
            byc1.by_calls,
            byc1.by_total_time,
            byc1.short_query,
            byc1.total_time,
            byc1.calls,
            byc1.mean,
            byc1.percentage_cpu
           FROM by_calls byc1
          ORDER BY byc1.mean DESC
        )
 SELECT xyz.by_mean,
    xyz.by_calls,
    xyz.by_total_time,
    xyz.short_query,
    xyz.total_time,
    xyz.calls,
    xyz.mean,
    xyz.percentage_cpu,
        CASE
            WHEN ((xyz.mean < (30)::numeric) AND (xyz.by_calls < 30) AND (xyz.by_total_time < 30)) THEN '<30'::text
            WHEN ((xyz.mean < (60)::numeric) AND (xyz.by_calls < 60) AND (xyz.by_total_time < 60)) THEN '<60'::text
            WHEN ((xyz.mean < (90)::numeric) AND (xyz.by_calls < 90) AND (xyz.by_total_time < 90)) THEN '<90'::text
            WHEN ((xyz.mean < (120)::numeric) AND (xyz.by_calls < 120) AND (xyz.by_total_time < 120)) THEN '<120'::text
            WHEN ((xyz.mean < (150)::numeric) AND (xyz.by_calls < 150) AND (xyz.by_total_time < 150)) THEN '<150'::text
            WHEN ((xyz.mean < (180)::numeric) AND (xyz.by_calls < 180) AND (xyz.by_total_time < 180)) THEN '<180'::text
            WHEN ((xyz.mean < (210)::numeric) AND (xyz.by_calls < 210) AND (xyz.by_total_time < 210)) THEN '<210'::text
            WHEN ((xyz.mean < (240)::numeric) AND (xyz.by_calls < 240) AND (xyz.by_total_time < 240)) THEN '<240'::text
            WHEN ((xyz.mean < (270)::numeric) AND (xyz.by_calls < 270) AND (xyz.by_total_time < 270)) THEN '<270'::text
            WHEN ((xyz.mean < (300)::numeric) AND (xyz.by_calls < 300) AND (xyz.by_total_time < 300)) THEN '<300'::text
            ELSE 'NULL'::text
        END AS ratingof,
        CASE
            WHEN ((xyz.mean < (30)::numeric) AND (xyz.by_calls < 30) AND (xyz.by_total_time < 30)) THEN 10
            WHEN ((xyz.mean < (60)::numeric) AND (xyz.by_calls < 60) AND (xyz.by_total_time < 60)) THEN 9
            WHEN ((xyz.mean < (90)::numeric) AND (xyz.by_calls < 90) AND (xyz.by_total_time < 90)) THEN 8
            WHEN ((xyz.mean < (120)::numeric) AND (xyz.by_calls < 120) AND (xyz.by_total_time < 120)) THEN 7
            WHEN ((xyz.mean < (150)::numeric) AND (xyz.by_calls < 150) AND (xyz.by_total_time < 150)) THEN 6
            WHEN ((xyz.mean < (180)::numeric) AND (xyz.by_calls < 180) AND (xyz.by_total_time < 180)) THEN 5
            WHEN ((xyz.mean < (210)::numeric) AND (xyz.by_calls < 210) AND (xyz.by_total_time < 210)) THEN 4
            WHEN ((xyz.mean < (240)::numeric) AND (xyz.by_calls < 240) AND (xyz.by_total_time < 240)) THEN 3
            WHEN ((xyz.mean < (270)::numeric) AND (xyz.by_calls < 270) AND (xyz.by_total_time < 270)) THEN 2
            WHEN ((xyz.mean < (300)::numeric) AND (xyz.by_calls < 300) AND (xyz.by_total_time < 300)) THEN 1
            ELSE 0
        END AS by_ratingof,
    "position"(xyz.short_query, 'location_id'::text) AS found_location_id,
    "position"(xyz.short_query, 'winteam_schedule'::text) AS found_winteam_schedule
   FROM xyz
  ORDER BY xyz.mean DESC;


ALTER TABLE meta_001.v_dba_get_pg_stat_statements_by_cpu OWNER TO "armando";

--
-- Name: v_dba_get_pg_stat_statements_by_size_sql; Type: VIEW; Schema: meta_001; Owner: IHSLaMltbFn1
--

CREATE VIEW meta_001.v_dba_get_pg_stat_statements_by_size_sql AS
 WITH abc AS (
         SELECT count(1) AS abc_cntr,
            max(length(pg_stat_statements.query)) AS less_32k,
            pg_stat_statements.userid,
            pg_stat_statements.dbid
           FROM public.pg_stat_statements
          WHERE (length(pg_stat_statements.query) < 32000)
          GROUP BY pg_stat_statements.userid, pg_stat_statements.dbid
        ), xyz AS (
         SELECT count(1) AS xyz_cntr,
            max(length(pg_stat_statements.query)) AS gtr_32k,
            pg_stat_statements.userid,
            pg_stat_statements.dbid
           FROM public.pg_stat_statements
          WHERE (length(pg_stat_statements.query) >= 32000)
          GROUP BY pg_stat_statements.userid, pg_stat_statements.dbid
        )
 SELECT abc.abc_cntr,
    abc.less_32k,
    abc.userid AS a_user,
    abc.dbid AS a_dbid,
    xyz.xyz_cntr,
    xyz.gtr_32k,
    xyz.userid AS x_user,
    xyz.dbid AS x_dbid
   FROM (abc
     FULL JOIN xyz ON (((abc.userid = xyz.userid) AND (abc.dbid = xyz.dbid))));


ALTER TABLE meta_001.v_dba_get_pg_stat_statements_by_size_sql OWNER TO "armando";

--
-- Name: v_dba_get_privs_system_level; Type: VIEW; Schema: meta_001; Owner: IHSLaMltbFn1
--

CREATE VIEW meta_001.v_dba_get_privs_system_level AS
 WITH x AS (
         SELECT pg_user.usesysid AS oid,
            'user'::text AS origin,
            pg_user.usename AS thisusertolookat,
            pg_user.useconfig AS config_info,
            pg_user.usesuper AS issuper,
            NULL::boolean AS isinherit,
            NULL::boolean AS rolcreaterole,
            pg_user.usecreatedb AS iscreatedb,
            NULL::boolean AS iscanlogin,
            pg_user.userepl AS isrepl
           FROM pg_user
        UNION ALL
         SELECT pg_roles.oid,
            'role'::text AS origin,
            pg_roles.rolname AS thisusertolookat,
            pg_roles.rolconfig AS config_info,
            pg_roles.rolsuper AS issuper,
            pg_roles.rolinherit AS isinherit,
            pg_roles.rolcreaterole,
            pg_roles.rolcreatedb AS iscreatedb,
            pg_roles.rolcanlogin AS iscanlogin,
            pg_roles.rolreplication AS isrepl
           FROM pg_roles
        ), abc AS (
         SELECT x.oid,
            x.issuper,
            x.isinherit,
            x.rolcreaterole,
            x.iscreatedb,
            x.iscanlogin,
            x.isrepl,
            x.thisusertolookat,
            x.origin,
            x.config_info,
            c.datname,
            ARRAY( SELECT foo.privs
                   FROM unnest(ARRAY[
                        CASE
                            WHEN has_database_privilege(x.thisusertolookat, c.oid, 'CONNECT'::text) THEN 'CONNECT'::text
                            ELSE NULL::text
                        END,
                        CASE
                            WHEN has_database_privilege(x.thisusertolookat, c.oid, 'CREATE'::text) THEN 'CREATE'::text
                            ELSE NULL::text
                        END,
                        CASE
                            WHEN has_database_privilege(x.thisusertolookat, c.oid, 'TEMPORARY'::text) THEN 'TEMPORARY'::text
                            ELSE NULL::text
                        END,
                        CASE
                            WHEN has_database_privilege(x.thisusertolookat, c.oid, 'TEMP'::text) THEN 'CONNECT'::text
                            ELSE NULL::text
                        END]) foo(privs)
                  WHERE (foo.privs IS NOT NULL)) AS privsout
           FROM pg_database c,
            x
          WHERE (has_database_privilege(x.thisusertolookat, c.oid, 'CONNECT,CREATE,TEMPORARY,TEMP'::text) AND (c.datname <> 'template0'::name))
        )
 SELECT DISTINCT abc.oid,
    abc.issuper,
    abc.isinherit,
    abc.rolcreaterole,
    abc.iscreatedb,
    abc.iscanlogin,
    abc.isrepl,
    abc.thisusertolookat,
    abc.origin,
    abc.config_info,
    abc.datname,
    abc.privsout
   FROM abc;


ALTER TABLE meta_001.v_dba_get_privs_system_level OWNER TO "armando";

--
-- Name: v_dba_get_triggers; Type: VIEW; Schema: meta_001; Owner: IHSLaMltbFn1
--

CREATE VIEW meta_001.v_dba_get_triggers AS
 SELECT triggers.trigger_catalog,
    triggers.trigger_schema,
    triggers.trigger_name,
    triggers.event_manipulation,
    triggers.event_object_catalog,
    triggers.event_object_schema,
    triggers.event_object_table,
    triggers.action_order,
    triggers.action_condition,
    triggers.action_statement,
    triggers.action_orientation,
    triggers.action_timing,
    triggers.action_reference_old_table,
    triggers.action_reference_new_table,
    triggers.action_reference_old_row,
    triggers.action_reference_new_row,
    triggers.created
   FROM information_schema.triggers
  WHERE ((triggers.trigger_schema)::text <> ALL (ARRAY[('pg_catalog'::character varying)::text, ('information_schema'::character varying)::text]))
  ORDER BY triggers.trigger_catalog, triggers.trigger_schema, triggers.event_object_table;


ALTER TABLE meta_001.v_dba_get_triggers OWNER TO "armando";

--
-- Name: v_dba_get_unused_idx_pg_stat_reset; Type: VIEW; Schema: meta_001; Owner: IHSLaMltbFn1
--

CREATE VIEW meta_001.v_dba_get_unused_idx_pg_stat_reset AS
 SELECT s.schemaname,
    s.relname AS tablename,
    s.indexrelname AS indexname,
    pg_relation_size((s.indexrelid)::regclass) AS index_size
   FROM (pg_stat_user_indexes s
     JOIN pg_index i ON ((s.indexrelid = i.indexrelid)))
  WHERE ((s.idx_scan = 0) AND (0 <> ALL ((i.indkey)::smallint[])) AND (NOT i.indisunique) AND (NOT (EXISTS ( SELECT 1
           FROM pg_constraint c
          WHERE (c.conindid = s.indexrelid)))))
  ORDER BY (pg_relation_size((s.indexrelid)::regclass)) DESC;


ALTER TABLE meta_001.v_dba_get_unused_idx_pg_stat_reset OWNER TO "armando";

--
-- Name: v_dba_get_wip_resource_locks_1; Type: VIEW; Schema: meta_001; Owner: IHSLaMltbFn1
--

CREATE VIEW meta_001.v_dba_get_wip_resource_locks_1 AS
 WITH mylocks AS (
         SELECT pg_locks.locktype,
            pg_locks.database,
            pg_locks.relation,
            pg_locks.page,
            pg_locks.tuple,
            pg_locks.virtualxid,
            pg_locks.transactionid,
            pg_locks.classid,
            pg_locks.objid,
            pg_locks.objsubid,
            pg_locks.virtualtransaction,
            pg_locks.pid,
            pg_locks.mode,
            pg_locks.granted,
            pg_locks.fastpath
           FROM pg_locks
          WHERE (pg_locks.locktype = ANY (ARRAY['transactionid'::text, 'virtualxid'::text]))
        ), table_locks AS (
         SELECT mylocks.pid,
            ((mylocks.relation)::regclass)::text AS lockobj,
                CASE
                    WHEN ((mylocks.page IS NOT NULL) AND (mylocks.tuple IS NOT NULL)) THEN ((((mylocks.mode || ' on '::text) || (mylocks.page)::text) || ':'::text) || (mylocks.tuple)::text)
                    ELSE mylocks.mode
                END AS lock_mode,
            mylocks.locktype
           FROM (mylocks
             JOIN pg_database ON ((mylocks.database = pg_database.oid)))
          WHERE ((mylocks.relation IS NOT NULL) AND (pg_database.datname = current_database()))
          ORDER BY ((mylocks.relation)::regclass)::text
        ), locked_list AS (
         SELECT table_locks.pid,
            array_agg(table_locks.lockobj) AS lock_relations,
            array_agg(table_locks.lock_mode) AS lock_modes,
            array_agg(table_locks.locktype) AS lock_types
           FROM table_locks
          GROUP BY table_locks.pid
        ), txn_locks AS (
         SELECT mylocks.pid,
            (mylocks.transactionid)::text AS lxid,
            mylocks.granted
           FROM mylocks
          WHERE (mylocks.locktype = 'transactionid'::text)
        UNION ALL
         SELECT mylocks.pid,
            mylocks.virtualxid AS lxid,
            mylocks.granted
           FROM mylocks
          WHERE (mylocks.locktype = 'virtualxid'::text)
        ), txn_granted AS (
         SELECT txn_locks.pid,
            txn_locks.lxid
           FROM txn_locks
          WHERE txn_locks.granted
        ), txn_waiting AS (
         SELECT txn_locks.pid,
            txn_locks.lxid
           FROM txn_locks
          WHERE (NOT txn_locks.granted)
        )
 SELECT now() AS lock_ts,
    current_database() AS dbname,
    txn_waiting.pid AS waiting_pid,
    txn_waiting.lxid AS wait_xid,
    txn_granted.pid AS locked_pid,
    waiting_proc.application_name AS waiting_app,
    waiting_proc.client_addr AS waiting_addr,
    waiting_proc.xact_start AS waiting_xact_start,
    waiting_proc.query_start AS waiting_query_start,
    waiting_proc.state_change AS waiting_start,
    waiting_proc.query AS waiting_query,
    locked_proc.application_name AS locked_app,
    locked_proc.client_addr AS locked_addr,
    locked_proc.xact_start AS locked_xact_start,
    locked_proc.query_start AS locked_query_start,
    locked_proc.state AS locked_state,
    locked_proc.state_change AS locked_state_start,
    locked_proc.query AS locked_last_query,
    waiting_locks.lock_relations AS waiting_relations,
    waiting_locks.lock_modes AS waiting_modes,
    waiting_locks.lock_types AS waiting_lock_types,
    locked_locks.lock_relations AS locked_relations,
    locked_locks.lock_modes AS locked_modes,
    locked_locks.lock_types AS locked_lock_types
   FROM (((((txn_waiting
     JOIN pg_stat_activity waiting_proc ON ((txn_waiting.pid = waiting_proc.pid)))
     LEFT JOIN txn_granted ON ((txn_waiting.lxid = txn_granted.lxid)))
     LEFT JOIN pg_stat_activity locked_proc ON ((txn_granted.pid = locked_proc.pid)))
     LEFT JOIN locked_list waiting_locks ON ((txn_waiting.pid = waiting_locks.pid)))
     LEFT JOIN locked_list locked_locks ON ((txn_granted.pid = locked_locks.pid)));


ALTER TABLE meta_001.v_dba_get_wip_resource_locks_1 OWNER TO "armando";

--
-- Name: v_dba_get_wip_tbl_locks_1; Type: VIEW; Schema: meta_001; Owner: IHSLaMltbFn1
--

CREATE VIEW meta_001.v_dba_get_wip_tbl_locks_1 AS
 WITH table_locks AS (
         SELECT pg_locks.pid,
            (pg_locks.relation)::integer AS relation,
            ((pg_locks.relation)::regclass)::text AS locked_relation,
            pg_locks.mode,
            ((pg_locks.page || ':'::text) || pg_locks.tuple) AS locked_tuple,
            pg_locks.locktype,
            COALESCE((pg_locks.transactionid)::text, pg_locks.virtualxid) AS lxid,
            pg_locks.granted
           FROM (pg_locks
             JOIN pg_database ON ((pg_locks.database = pg_database.oid)))
          WHERE ((pg_locks.relation IS NOT NULL) AND (pg_database.datname = current_database()) AND (pg_locks.locktype = ANY (ARRAY['relation'::text, 'extend'::text, 'page'::text, 'tuple'::text])))
        ), lock_granted AS (
         SELECT table_locks.pid,
            table_locks.relation,
            table_locks.locked_relation,
            table_locks.mode,
            table_locks.locked_tuple,
            table_locks.locktype,
            table_locks.lxid,
            table_locks.granted
           FROM table_locks
          WHERE table_locks.granted
        ), lock_waiting AS (
         SELECT table_locks.pid,
            table_locks.relation,
            table_locks.locked_relation,
            table_locks.mode,
            table_locks.locked_tuple,
            table_locks.locktype,
            table_locks.lxid,
            table_locks.granted
           FROM table_locks
          WHERE (NOT table_locks.granted)
        )
 SELECT now() AS lock_ts,
    current_database() AS dbname,
    lock_waiting.pid AS waiting_pid,
    lock_waiting.lxid AS wait_xid,
    lock_granted.pid AS locked_pid,
    lock_granted.lxid AS locked_xid,
    lock_granted.locked_relation,
    lock_waiting.locktype AS waiting_type,
    lock_waiting.mode AS waiting_mode,
    lock_waiting.locked_tuple AS tuple_waiting,
    lock_granted.locktype AS locked_type,
    lock_granted.mode AS lock_mode,
    lock_granted.locked_tuple AS tuple_locked,
    waiting_proc.application_name AS waiting_app,
    waiting_proc.client_addr AS waiting_addr,
    waiting_proc.xact_start AS waiting_xact_start,
    waiting_proc.query_start AS waiting_query_start,
    waiting_proc.state_change AS waiting_start,
    waiting_proc.query AS waiting_query,
    locked_proc.application_name AS locked_app,
    locked_proc.client_addr AS locked_addr,
    locked_proc.xact_start AS locked_xact_start,
    locked_proc.query_start AS locked_query_start,
    locked_proc.state AS locked_state,
    locked_proc.state_change AS locked_state_start,
    locked_proc.query AS locked_last_query
   FROM (((lock_waiting
     JOIN pg_stat_activity waiting_proc ON ((lock_waiting.pid = waiting_proc.pid)))
     LEFT JOIN lock_granted ON ((lock_waiting.relation = lock_granted.relation)))
     LEFT JOIN pg_stat_activity locked_proc ON ((lock_granted.pid = locked_proc.pid)))
  ORDER BY lock_granted.pid, lock_granted.locked_relation;


ALTER TABLE meta_001.v_dba_get_wip_tbl_locks_1 OWNER TO "armando";

--
-- Name: v_dba_grant_connect_schema_rl_root; Type: VIEW; Schema: meta_001; Owner: IHSLaMltbFn1
--

CREATE VIEW meta_001.v_dba_grant_connect_schema_rl_root AS
 SELECT DISTINCT (('--REVOKE ALL  ON database '::text || (sch.s_name)::text) || ' FROM PUBLIC; '::text) AS revoke_once_only,
    (((('GRANT connect ON database '::text || (sch.s_name)::text) || ' TO '::text) || users2.userof) || ';'::text) AS grants_all,
    sch.s_name AS dbname_of,
    users2.userof
   FROM ( SELECT pg_database.datname AS s_name
           FROM pg_database
          WHERE (pg_database.datistemplate = false)) sch,
    ( SELECT v_dba_create_roles_with_pwds.newroleof AS userof
           FROM meta_001.v_dba_create_roles_with_pwds
          WHERE ("position"(v_dba_create_roles_with_pwds.newroleof, '.'::text) = 0)
        UNION ALL
         SELECT ((chr(34) || v_dba_create_roles_with_pwds.newroleof) || chr(34)) AS userof
           FROM meta_001.v_dba_create_roles_with_pwds
          WHERE ("position"(v_dba_create_roles_with_pwds.newroleof, '.'::text) > 0)) users2
  WHERE (sch.s_name = 'wfma'::name)
  ORDER BY sch.s_name, users2.userof;


ALTER TABLE meta_001.v_dba_grant_connect_schema_rl_root OWNER TO "armando";

--
-- Name: v_dba_grant_connect_schema_rl_root_all; Type: VIEW; Schema: meta_001; Owner: IHSLaMltbFn1
--

CREATE VIEW meta_001.v_dba_grant_connect_schema_rl_root_all AS
 SELECT DISTINCT (('--REVOKE ALL  ON database '::text || (sch.s_name)::text) || ' FROM PUBLIC; '::text) AS revoke_once_only,
    (((('GRANT connect ON database '::text || (sch.s_name)::text) || ' TO '::text) || users2.userof) || ';'::text) AS grants_all,
    sch.s_name AS dbname_of,
    users2.userof
   FROM ( SELECT pg_database.datname AS s_name
           FROM pg_database
          WHERE (pg_database.datistemplate = false)) sch,
    ( SELECT v_dba_create_roles_with_pwds.newroleof AS userof
           FROM meta_001.v_dba_create_roles_with_pwds
          WHERE ("position"(v_dba_create_roles_with_pwds.newroleof, '.'::text) = 0)
        UNION ALL
         SELECT ((chr(34) || v_dba_create_roles_with_pwds.newroleof) || chr(34)) AS userof
           FROM meta_001.v_dba_create_roles_with_pwds
          WHERE ("position"(v_dba_create_roles_with_pwds.newroleof, '.'::text) > 0)) users2
  ORDER BY sch.s_name, users2.userof;


ALTER TABLE meta_001.v_dba_grant_connect_schema_rl_root_all OWNER TO "armando";

--
-- Name: v_dba_grant_usage_schema_rl_root; Type: VIEW; Schema: meta_001; Owner: IHSLaMltbFn1
--

CREATE VIEW meta_001.v_dba_grant_usage_schema_rl_root AS
 SELECT DISTINCT (('--REVOKE ALL  ON SCHEMA '::text || (sch.s_name)::text) || ' FROM PUBLIC; '::text) AS revoke_once_only,
    (((('GRANT  USAGE   ON SCHEMA '::text || (sch.s_name)::text) || ' TO '::text) || users2.userof) || ';'::text) AS grants_all,
    sch.s_name AS schema_of,
    users2.userof
   FROM meta_001.schemas sch,
    ( SELECT v_dba_create_roles_with_pwds.newroleof AS userof
           FROM meta_001.v_dba_create_roles_with_pwds
          WHERE ("position"(v_dba_create_roles_with_pwds.newroleof, '.'::text) = 0)
        UNION ALL
         SELECT ((chr(34) || v_dba_create_roles_with_pwds.newroleof) || chr(34)) AS userof
           FROM meta_001.v_dba_create_roles_with_pwds
          WHERE ("position"(v_dba_create_roles_with_pwds.newroleof, '.'::text) > 0)) users2
  WHERE (sch.system_object = false)
  ORDER BY sch.s_name, users2.userof;


ALTER TABLE meta_001.v_dba_grant_usage_schema_rl_root OWNER TO "armando";

--
-- Name: v_dba_grant_connect_usages__rl_root; Type: VIEW; Schema: meta_001; Owner: IHSLaMltbFn1
--

CREATE VIEW meta_001.v_dba_grant_connect_usages__rl_root AS
 WITH grant_connect AS (
         SELECT DISTINCT v_dba_grant_connect_schema_rl_root.grants_all,
            1 AS run_order
           FROM meta_001.v_dba_grant_connect_schema_rl_root
        ), grant_usage AS (
         SELECT DISTINCT xyz.grants_all_qts,
            2 AS run_order
           FROM ( SELECT DISTINCT replace(v_dba_grant_usage_schema_rl_root.grants_all, v_dba_grant_usage_schema_rl_root.userof, v_dba_grant_usage_schema_rl_root.userof) AS grants_all_qts,
                    v_dba_grant_usage_schema_rl_root.schema_of,
                    v_dba_grant_usage_schema_rl_root.userof
                   FROM meta_001.v_dba_grant_usage_schema_rl_root
                  ORDER BY v_dba_grant_usage_schema_rl_root.schema_of, v_dba_grant_usage_schema_rl_root.userof) xyz
        )
 SELECT xxx.sqltext,
    xxx.run_order
   FROM ( SELECT grant_usage.grants_all_qts AS sqltext,
            grant_usage.run_order
           FROM grant_usage
        UNION ALL
         SELECT grant_connect.grants_all AS sqltext,
            grant_connect.run_order
           FROM grant_connect) xxx
  ORDER BY xxx.run_order;


ALTER TABLE meta_001.v_dba_grant_connect_usages__rl_root OWNER TO "armando";

--
-- Name: v_dba_kill_idle_sleep_15_sessions; Type: VIEW; Schema: meta_001; Owner: IHSLaMltbFn1
--

CREATE VIEW meta_001.v_dba_kill_idle_sleep_15_sessions AS
 SELECT b.query,
    (('select pg_terminate_backend('::text || b.pid) || ');'::text) AS kill_sql,
    pg_terminate_backend(b.pid) AS issue_kill,
        CASE
            WHEN ((now() - b.query_start) > '00:30:00'::interval) THEN '>30'::text
            WHEN ((now() - b.query_start) > '00:20:00'::interval) THEN '20'::text
            WHEN ((now() - b.query_start) > '00:15:00'::interval) THEN '15'::text
            WHEN ((now() - b.query_start) > '00:10:00'::interval) THEN '10'::text
            WHEN ((now() - b.query_start) > '00:05:00'::interval) THEN '5'::text
            ELSE NULL::text
        END AS session_duration,
    b.state_change,
    b.state,
    (b.state_change <= (now() - '00:15:00'::interval)) AS gtr15
   FROM pg_stat_activity b
  WHERE ((b.query !~~* '%pg_stat_activity%'::text) AND (b.state = 'idle'::text) AND (b.pid <> pg_backend_pid()) AND ((now() - b.query_start) > '00:15:00'::interval) AND ((b.state_change <= (now() - '00:15:00'::interval)) = true))
  ORDER BY b.query DESC;


ALTER TABLE meta_001.v_dba_kill_idle_sleep_15_sessions OWNER TO "armando";

--
-- Name: v_dba_kill_idle_sleep_5_sessions; Type: VIEW; Schema: meta_001; Owner: IHSLaMltbFn1
--

CREATE VIEW meta_001.v_dba_kill_idle_sleep_5_sessions AS
 SELECT b.query,
    (('select pg_terminate_backend('::text || b.pid) || ');'::text) AS kill_sql,
    pg_terminate_backend(b.pid) AS issue_kill,
        CASE
            WHEN ((now() - b.query_start) > '00:30:00'::interval) THEN '>30'::text
            WHEN ((now() - b.query_start) > '00:20:00'::interval) THEN '20'::text
            WHEN ((now() - b.query_start) > '00:15:00'::interval) THEN '15'::text
            WHEN ((now() - b.query_start) > '00:10:00'::interval) THEN '10'::text
            WHEN ((now() - b.query_start) > '00:05:00'::interval) THEN '5'::text
            ELSE NULL::text
        END AS session_duration,
    b.state_change,
    b.state,
    (b.state_change <= (now() - '00:05:00'::interval)) AS gtr5
   FROM pg_stat_activity b
  WHERE ((b.query !~~* '%pg_stat_activity%'::text) AND (b.state = 'idle'::text) AND (b.pid <> pg_backend_pid()) AND ((now() - b.query_start) > '00:05:00'::interval) AND ((b.state_change <= (now() - '00:05:00'::interval)) = true))
  ORDER BY b.query DESC;


ALTER TABLE meta_001.v_dba_kill_idle_sleep_5_sessions OWNER TO "armando";

--
-- Name: v_dba_views; Type: VIEW; Schema: meta_001; Owner: IHSLaMltbFn1
--

CREATE VIEW meta_001.v_dba_views AS
 SELECT views.table_catalog,
    views.table_schema,
    views.table_name,
    views.view_definition,
    views.check_option,
    views.is_updatable,
    views.is_insertable_into,
    views.is_trigger_updatable,
    views.is_trigger_deletable,
    views.is_trigger_insertable_into
   FROM information_schema.views
  WHERE (((views.table_catalog)::text = 'wfma'::text) AND ((views.table_schema)::text <> ALL (ARRAY[('pg_catalog'::character varying)::text, ('information_schema'::character varying)::text])))
  ORDER BY views.table_name, views.table_catalog, views.table_schema;


ALTER TABLE meta_001.v_dba_views OWNER TO "armando";

--
-- Name: v_dba_maint_views; Type: VIEW; Schema: meta_001; Owner: IHSLaMltbFn1
--

CREATE VIEW meta_001.v_dba_maint_views AS
 WITH notinabc AS (
         SELECT DISTINCT (((v_dba_views.table_schema)::text || '.'::text) || (v_dba_views.table_name)::text) AS full_view_name,
            v_dba_views.table_schema,
            v_dba_views.table_name
           FROM meta_001.v_dba_views
          WHERE ((v_dba_views.table_schema)::text <> 'meta_001'::text)
          ORDER BY v_dba_views.table_name, v_dba_views.table_schema
        ), abc AS (
         SELECT DISTINCT v_dba_views.table_name AS view_name
           FROM meta_001.v_dba_views
          WHERE ((v_dba_views.table_schema)::text = 'meta_001'::text)
        ), getall AS (
         SELECT (('ALTER           view meta_001.'::text || (abc.view_name)::text) || ' OWNER TO "xNgjdHF5ZeOd";'::text) AS view_owner_to,
            (('GRANT ALL    ON view meta_001.'::text || (abc.view_name)::text) || '       TO "xNgjdHF5ZeOd";'::text) AS grant_all_to,
            (('GRANT SELECT ON view meta_001.'::text || (abc.view_name)::text) || '       TO "m2s3gyejjwk;'::text) AS grant_select_to,
            abc.view_name
           FROM abc
        )
 SELECT getall.view_owner_to AS sqltext,
    'view'::text AS status,
    getall.view_name
   FROM getall
UNION ALL
 SELECT getall.grant_all_to AS sqltext,
    'grantall'::text AS status,
    getall.view_name
   FROM getall
UNION ALL
 SELECT getall.grant_select_to AS sqltext,
    'grantsel'::text AS status,
    getall.view_name
   FROM getall
UNION ALL
 SELECT (('drop view '::text || notinabc.full_view_name) || ';'::text) AS sqltext,
    'drop'::text AS status,
    notinabc.table_name AS view_name
   FROM notinabc;


ALTER TABLE meta_001.v_dba_maint_views OWNER TO "armando";

--
-- Name: v_dba_migration_reload_copy_order; Type: VIEW; Schema: meta_001; Owner: IHSLaMltbFn1
--

CREATE VIEW meta_001.v_dba_migration_reload_copy_order AS
 WITH tbl_cnts AS (
         SELECT DISTINCT 0 AS parent_insert_order,
            t.table_schema,
            t.table_name,
            (((xpath('/row/cnt/text()'::text, t.xml_count))[1])::text)::integer AS row_count,
            0 AS fk_insert_order,
            t.explain_it
           FROM ( SELECT tables.table_name,
                    tables.table_schema,
                    query_to_xml(format('select count(*) as cnt from %I.%I'::text, tables.table_schema, tables.table_name), false, true, ''::text) AS xml_count,
                    'get_row_cnts'::text AS explain_it
                   FROM information_schema.tables
                  WHERE (((tables.table_schema)::text !~~ 'pg%'::text) AND ((tables.table_schema)::text !~~ 'information_%'::text) AND ((tables.table_type)::text = 'BASE TABLE'::text))) t
          ORDER BY t.table_schema, t.table_name
        ), fks_in AS (
         SELECT DISTINCT v_dba_aaa_gold_fk_finder.parent_insert_order,
            v_dba_aaa_gold_fk_finder.parent_schema,
            v_dba_aaa_gold_fk_finder.constraint_table,
            '-1'::integer,
            v_dba_aaa_gold_fk_finder.fk_insert_order,
            (((((v_dba_aaa_gold_fk_finder.constraint_name)::text || '__'::text) || (v_dba_aaa_gold_fk_finder.constraint_column)::text) || '__'::text) || v_dba_aaa_gold_fk_finder.definition) AS explain_it
           FROM meta_001.v_dba_aaa_gold_fk_finder
        )
 SELECT xyz.parent_insert_order,
    xyz.table_schema,
    xyz.table_name,
    xyz.row_count,
    xyz.fk_insert_order,
    xyz.explain_it,
        CASE
            WHEN (xyz.fk_insert_order = 0) THEN 'ANY TIME'::text
            ELSE substr(substr(xyz.explain_it, ("position"(xyz.explain_it, 'REFERENCES '::text) + 11), 999), 1, ("position"(substr(xyz.explain_it, ("position"(xyz.explain_it, 'REFERENCES '::text) + 11), 999), '('::text) - 1))
        END AS depends_on_tbl
   FROM ( SELECT tbl_cnts.parent_insert_order,
            tbl_cnts.table_schema,
            tbl_cnts.table_name,
            tbl_cnts.row_count,
            tbl_cnts.fk_insert_order,
            tbl_cnts.explain_it
           FROM tbl_cnts
        UNION ALL
         SELECT fks_in.parent_insert_order,
            fks_in.parent_schema,
            fks_in.constraint_table,
            fks_in."?column?",
            fks_in.fk_insert_order,
            fks_in.explain_it
           FROM fks_in
  ORDER BY 5, 1, 2, 3) xyz;


ALTER TABLE meta_001.v_dba_migration_reload_copy_order OWNER TO "armando";

--
-- Name: v_dba_newdev_migration_deps; Type: VIEW; Schema: meta_001; Owner: IHSLaMltbFn1
--

CREATE VIEW meta_001.v_dba_newdev_migration_deps AS
 WITH abc AS (
         SELECT views.s_name,
            views.v_name AS objofname,
            (((views.s_name)::text || '.'::text) || (views.v_name)::text) AS full_name_of
           FROM meta_001.views
          WHERE (views.s_name <> ALL (ARRAY['pg_catalog'::name, 'information_schema'::name]))
        ), xyz AS (
         SELECT functions.s_name,
            functions.f_name AS objofname,
            (((functions.s_name)::text || '.'::text) || (functions.f_name)::text) AS full_name_of
           FROM meta_001.functions
          WHERE (functions.s_name <> ALL (ARRAY['pg_catalog'::name, 'information_schema'::name]))
        ), tab AS (
         SELECT tables.s_name,
            tables.t_name AS objofname,
            (((tables.s_name)::text || '.'::text) || (tables.t_name)::text) AS full_name_of
           FROM meta_001.tables
          WHERE (tables.s_name <> ALL (ARRAY['pg_catalog'::name, 'information_schema'::name]))
        )
 SELECT qwerty.typeofobj,
    qwerty.objname,
    qwerty.full_name_of,
    replace(qwerty.xxz, 'RULE "_RETURN" '::text, 'VIEW '::text) AS xxz
   FROM ( SELECT DISTINCT 'views'::text AS typeofobj,
            abc.objofname AS objname,
            abc.full_name_of,
            dependency_tree.dependency_tree AS xxz
           FROM abc,
            LATERAL meta_001.dependency_tree(abc.full_name_of) dependency_tree(dependency_tree)
        UNION ALL
         SELECT DISTINCT 'function'::text AS typeofobj,
            xyz.objofname AS objname,
            xyz.full_name_of,
            dependency_tree.dependency_tree AS xxz
           FROM xyz,
            LATERAL meta_001.dependency_tree(xyz.full_name_of) dependency_tree(dependency_tree)
        UNION ALL
         SELECT DISTINCT 'table'::text AS typeofobj,
            tab.objofname AS objname,
            tab.full_name_of,
            dependency_tree.dependency_tree AS xxz
           FROM tab,
            LATERAL meta_001.dependency_tree(tab.full_name_of) dependency_tree(dependency_tree)) qwerty
  ORDER BY qwerty.full_name_of, (replace(qwerty.xxz, 'RULE "_RETURN" '::text, 'VIEW '::text));


ALTER TABLE meta_001.v_dba_newdev_migration_deps OWNER TO "armando";

--
-- Name: v_dba_newdev_migration_table__restore1; Type: VIEW; Schema: meta_001; Owner: IHSLaMltbFn1
--

CREATE VIEW meta_001.v_dba_newdev_migration_table__restore1 AS
 WITH wip_dir AS (
         SELECT (chr(39) || '/opt/oracle/ora_ext_data/build_dev/'::text) AS bnr_loc
        ), abc AS (
         SELECT v_dba_get_tbl_ddl.nspname,
            current_database() AS current_db,
            v_dba_get_tbl_ddl.relname,
            wip_dir.bnr_loc
           FROM meta_001.v_dba_get_tbl_ddl,
            wip_dir
          ORDER BY (current_database()), v_dba_get_tbl_ddl.nspname, v_dba_get_tbl_ddl.relname
        ), xyz AS (
         SELECT ((((((((((((((((((((((((('copy '::text || lpad((((abc.nspname)::text || '.'::text) || (abc.relname)::text), 60)) || ' FROM '::text) || abc.bnr_loc) || (abc.nspname)::text) || '.'::text) || (abc.relname)::text) || '_loaded_cnts'::text) ||
                CASE
                    WHEN (inet_client_addr() = '12.21.38.37'::inet) THEN 'STAGE'::text
                    WHEN (inet_client_addr() = '3.86.2.150'::inet) THEN 'DEV'::text
                    ELSE 'UNKNOWN'::text
                END) || '_'::text) || (abc.current_db)::text) || '__'::text) || (abc.nspname)::text) || '__'::text) || (abc.relname)::text) || '.csv'::text) || chr(39)) || ' with (format csv,header true, delimiter '::text) || chr(39)) || ','::text) || chr(39)) || ');" > '::text) || (abc.nspname)::text) || '.'::text) || (abc.relname)::text) || '__insert_results.log '::text) AS sqltext,
            abc.nspname,
            abc.current_db,
            abc.relname
           FROM abc
          WHERE ((((abc.nspname)::text || '.'::text) || (abc.relname)::text) <> 'log_001.t_audit'::text)
        )
 SELECT zzaa.sqltext,
    zzaa.nspname,
    zzaa.current_db,
    zzaa.relname,
    zzaa.orderby
   FROM ( SELECT '#! we need to use the postgres account with superuser to load this data into --dbname=wfma
  export WHICH_ENV=DEV
  export DEV_WFMA_URL=jdbc:postgresql://aus0devpostgres.c3znzejcnw82.us-east-1.rds.amazonaws.com:5432/wfma
  export DEV_WFMA_USERNAME=xpTwj05YAVoE
  export DEV_WFMA_USER_PASSWORD=<not provided>
  export DEV_DB=wfma
  export DEV_DB2=identity
  export DEV_PORT=5432
  export DEV_HOST=aus0devpostgres.c3znzejcnw82.us-east-1.rds.amazonaws.com
  export PGPASSWORD=${DEV_WFMA_USER_PASSWORD}
  #! 
   echo "/usr/pgsql-13/bin/psql --host=${DEV_HOST}  --username=${DEV_WFMA_USERNAME} --dbname=${DEV_DB} --port=${DEV_PORT} -w "
         /usr/pgsql-13/bin/psql --host=${DEV_HOST}  --username=${DEV_WFMA_USERNAME} --dbname=${DEV_DB} --port=${DEV_PORT} -w <<EOF'::text AS sqltext,
            ' '::name AS nspname,
            ' '::name AS current_db,
            ' '::name AS relname,
            1 AS orderby
        UNION ALL
         SELECT ('/usr/pgsql-13/bin/psql --host=${DEV_HOST}  --username=${DEV_WFMA_USERNAME} --dbname=${DEV_DB} --port=${DEV_PORT} -c "\'::text || xyz.sqltext) AS sqltext,
            xyz.nspname,
            xyz.current_db,
            xyz.relname,
            2 AS orderby
           FROM xyz
        UNION ALL
         SELECT 'EOF'::text AS sqltext,
            ' '::name AS nspname,
            ' '::name AS current_db,
            ' '::name AS relname,
            3 AS orderby) zzaa
  ORDER BY zzaa.orderby;


ALTER TABLE meta_001.v_dba_newdev_migration_table__restore1 OWNER TO "armando";

--
-- Name: v_dba_newdev_migration_table__restore2; Type: VIEW; Schema: meta_001; Owner: IHSLaMltbFn1
--

CREATE VIEW meta_001.v_dba_newdev_migration_table__restore2 AS
 WITH wip_dir AS (
         SELECT (chr(39) || '/opt/oracle/ora_ext_data/build_dev/'::text) AS bnr_loc
        ), abc AS (
         SELECT v_dba_get_tbl_ddl.nspname,
            current_database() AS current_db,
            v_dba_get_tbl_ddl.relname,
            wip_dir.bnr_loc
           FROM meta_001.v_dba_get_tbl_ddl,
            wip_dir
          ORDER BY (current_database()), v_dba_get_tbl_ddl.nspname, v_dba_get_tbl_ddl.relname
        ), xyz AS (
         SELECT (((((((((((((((((((((((((('copy '::text || lpad((((abc.nspname)::text || '.'::text) || (abc.relname)::text), 60)) || ' FROM '::text) || abc.bnr_loc) || to_char(CURRENT_TIMESTAMP, 'DY'::text)) || date_part('year'::text, CURRENT_TIMESTAMP)) || to_char(date_part('month'::text, CURRENT_TIMESTAMP), 'fm00'::text)) || to_char(date_part('day'::text, CURRENT_TIMESTAMP), 'fm00'::text)) || '_'::text) || 'STG'::text) || '_'::text) || (abc.current_db)::text) || '__'::text) || (abc.nspname)::text) || '__'::text) || (abc.relname)::text) || '.csv'::text) || chr(39)) || ' with (format csv,header true, delimiter '::text) || chr(39)) || ','::text) || chr(39)) || ');" > '::text) || (abc.nspname)::text) || '.'::text) || (abc.relname)::text) || '__insert_results.log '::text) AS sqltext,
            abc.nspname,
            abc.current_db,
            abc.relname
           FROM abc
          WHERE ((((abc.nspname)::text || '.'::text) || (abc.relname)::text) <> 'log_001.t_audit'::text)
        )
 SELECT zzaa.sqltext,
    zzaa.nspname,
    zzaa.current_db,
    zzaa.relname,
    zzaa.orderby
   FROM ( SELECT '#! we need to use the postgres account with superuser to load this data into --dbname=wfma
  export WHICH_ENV=DEV
  export DEV_WFMA_URL=jdbc:postgresql://aus0devpostgres.c3znzejcnw82.us-east-1.rds.amazonaws.com:5432/wfma
  export DEV_WFMA_USERNAME=xpTwj05YAVoE
  export DEV_WFMA_USER_PASSWORD=<not provided>
  export DEV_DB=wfma
  export DEV_DB2=identity
  export DEV_PORT=5432
  export DEV_HOST=aus0devpostgres.c3znzejcnw82.us-east-1.rds.amazonaws.com
  export PGPASSWORD=${DEV_WFMA_USER_PASSWORD}
  #! 
   echo "/usr/pgsql-13/bin/psql --host=${DEV_HOST}  --username=${DEV_WFMA_USERNAME} --dbname=${DEV_DB} --port=${DEV_PORT} -w "
         /usr/pgsql-13/bin/psql --host=${DEV_HOST}  --username=${DEV_WFMA_USERNAME} --dbname=${DEV_DB} --port=${DEV_PORT} -w <<EOF'::text AS sqltext,
            ' '::name AS nspname,
            ' '::name AS current_db,
            ' '::name AS relname,
            1 AS orderby
        UNION ALL
         SELECT ('/usr/pgsql-13/bin/psql --host=${DEV_HOST}  --username=${DEV_WFMA_USERNAME} --dbname=${DEV_DB} --port=${DEV_PORT} -c "\'::text || xyz.sqltext) AS sqltext,
            xyz.nspname,
            xyz.current_db,
            xyz.relname,
            2 AS orderby
           FROM xyz
        UNION ALL
         SELECT 'EOF'::text AS sqltext,
            ' '::name AS nspname,
            ' '::name AS current_db,
            ' '::name AS relname,
            3 AS orderby) zzaa
  ORDER BY zzaa.orderby;


ALTER TABLE meta_001.v_dba_newdev_migration_table__restore2 OWNER TO "armando";

--
-- Name: v_dba_newdev_migration_table_stg_copy; Type: VIEW; Schema: meta_001; Owner: IHSLaMltbFn1
--

CREATE VIEW meta_001.v_dba_newdev_migration_table_stg_copy AS
 WITH wip_dir AS (
         SELECT ' /opt/oracle/ora_ext_data/build_dev/'::text AS bnr_loc
        ), abc AS (
         SELECT v_dba_get_tbl_ddl.nspname,
            current_database() AS current_db,
            v_dba_get_tbl_ddl.relname,
            wip_dir.bnr_loc
           FROM meta_001.v_dba_get_tbl_ddl,
            wip_dir
          ORDER BY (current_database()), v_dba_get_tbl_ddl.nspname, v_dba_get_tbl_ddl.relname
        )
 SELECT xxxhz.sqltext,
    xxxhz.nspname,
    xxxhz.current_db,
    xxxhz.relname,
    xxxhz.orderof
   FROM ( SELECT (((((((((((((((((((('\copy (SELECT * FROM '::text || lpad((((abc.nspname)::text || '.'::text) || (abc.relname)::text), 60)) || ' ) TO '::text) || abc.bnr_loc) || to_char(CURRENT_TIMESTAMP, 'DY'::text)) || date_part('year'::text, CURRENT_TIMESTAMP)) || to_char(date_part('month'::text, CURRENT_TIMESTAMP), 'fm00'::text)) || to_char(date_part('day'::text, CURRENT_TIMESTAMP), 'fm00'::text)) || '_'::text) || 'STG'::text) || '_'::text) || (abc.current_db)::text) || '__'::text) || (abc.nspname)::text) || '__'::text) || (abc.relname)::text) || '.csv WITH (FORMAT csv, HEADER, ENCODING '::text) || chr(39)) || 'UTF8'::text) || chr(39)) || ') '::text) AS sqltext,
            abc.nspname,
            abc.current_db,
            abc.relname,
            2 AS orderof
           FROM abc
          WHERE (1 = 1)
        UNION ALL
         SELECT '#! we need to use the postgres account with dbuser to extract this data 
  export WHICH_ENV=STAGE
  export STAGE_WFMA_URL=jdbc:postgresql://aus0stage0postgres.c3znzejcnw82.us-east-1.rds.amazonaws.com:5432/wfma
  export STAGE_WFMA_USERNAME=IHSLaMltbFn1
  export STAGE_WFMA_USER_PASSWORD=<not provided>
  export STAGE_DB=wfma
  export STAGE_DB2=identity
  export STAGE_PORT=5432
  export STAGE_HOST=aus0stage0postgres.c3znzejcnw82.us-east-1.rds.amazonaws.com
  export PGPASSWORD=${STAGE_WFMA_USER_PASSWORD} 
  #! 
  /usr/pgsql-13/bin/psql --host=${WHICH_ENV}_HOST --username=${WHICH_ENV}_WFMA_USERNAME --dbname=${WHICH_ENV}_DB --port=${WHICH_ENV}_PORT -w <<EOF'::text AS sqltext,
            ' '::name AS nspname,
            ' '::name AS current_db,
            ' '::name AS relname,
            1 AS orderof
        UNION ALL
         SELECT (('exit;'::text || chr(10)) || 'EOF'::text) AS sqltext,
            ' '::name AS nspname,
            ' '::name AS current_db,
            ' '::name AS relname,
            3 AS orderof) xxxhz
  ORDER BY xxxhz.orderof;


ALTER TABLE meta_001.v_dba_newdev_migration_table_stg_copy OWNER TO "armando";

--
-- Name: v_dba_objects_pg_stats_statements_instr; Type: VIEW; Schema: meta_001; Owner: IHSLaMltbFn1
--

CREATE VIEW meta_001.v_dba_objects_pg_stats_statements_instr AS
 SELECT current_database() AS current_db,
    functions.s_name,
    functions.f_name AS obj_name,
    'Functions'::text AS typeof
   FROM meta_001.functions
  WHERE (functions.s_name <> ALL (ARRAY['pg_catalog'::name, 'information_schema'::name]))
UNION ALL
 SELECT current_database() AS current_db,
    schemas.s_name,
    schemas.s_name AS obj_name,
    'Schemas'::text AS typeof
   FROM meta_001.schemas
  WHERE ((schemas.s_name !~~ 'pg_%'::text) AND (schemas.s_name <> ALL (ARRAY['pg_catalog'::name, 'information_schema'::name])))
UNION ALL
 SELECT current_database() AS current_db,
    tables.s_name,
    tables.t_name AS obj_name,
    'Tables'::text AS typeof
   FROM meta_001.tables
  WHERE ((tables.s_name !~~ 'pg_%'::text) AND (tables.s_name <> ALL (ARRAY['pg_catalog'::name, 'information_schema'::name])))
UNION ALL
 SELECT current_database() AS current_db,
    views.s_name,
    views.v_name AS obj_name,
    'Views'::text AS typeof
   FROM meta_001.views
  WHERE ((views.s_name !~~ 'pg_%'::text) AND (views.s_name <> ALL (ARRAY['pg_catalog'::name, 'information_schema'::name])));


ALTER TABLE meta_001.v_dba_objects_pg_stats_statements_instr OWNER TO "armando";

--
-- Name: v_dba_re_bld_fnx_lance_ret_keys; Type: VIEW; Schema: meta_001; Owner: IHSLaMltbFn1
--

CREATE VIEW meta_001.v_dba_re_bld_fnx_lance_ret_keys AS
 WITH abc AS (
         SELECT v_dba_get_cols.table_schema AS s_name,
            v_dba_get_cols.table_name AS t_name,
            v_dba_get_cols.column_name,
            v_dba_get_cols.data_type,
            v_dba_get_cols.character_maximum_length,
            v_dba_get_cols.ordinal_position
           FROM meta_001.v_dba_get_cols
          ORDER BY v_dba_get_cols.table_schema, v_dba_get_cols.table_name, v_dba_get_cols.ordinal_position
        ), dump_data_p AS (
         SELECT abc.data_type AS abc_data_type,
            abc.ordinal_position AS abc_position,
            v.constraint_type,
            v.parent_schema,
            v.constraint_table,
            v.parent_insert_order,
            v.constraint_column,
            v.fk_schema,
            v.referenced_table,
            v.fk_insert_order,
            v.referenced_column,
            v.definition,
            v.base_sql,
            v.ref_sql
           FROM meta_001.v_dba_bld_addl_pk_fk_uk_c_meta v,
            abc
          WHERE ((v.constraint_type = 'p'::"char") AND (v.parent_schema = (abc.s_name)::text) AND (v.constraint_table = (abc.t_name)::name) AND (v.constraint_column = (abc.column_name)::name))
          ORDER BY v.parent_schema, v.constraint_table, v.constraint_column
        ), dump_data_u AS (
         SELECT abc.data_type AS abc_data_type,
            abc.ordinal_position AS abc_position,
            v.constraint_type,
            v.parent_schema,
            v.constraint_table,
            v.parent_insert_order,
            v.constraint_column,
            v.fk_schema,
            v.referenced_table,
            v.fk_insert_order,
            v.referenced_column,
            v.definition,
            v.base_sql,
            v.ref_sql
           FROM meta_001.v_dba_bld_addl_pk_fk_uk_c_meta v,
            abc
          WHERE ((v.constraint_type = 'u'::"char") AND (v.parent_schema = (abc.s_name)::text) AND (v.constraint_table = (abc.t_name)::name) AND (v.constraint_column = (abc.column_name)::name))
          ORDER BY v.parent_schema, v.constraint_table, v.constraint_column
        )
 SELECT dump_data_p.abc_data_type,
    dump_data_p.abc_position,
    dump_data_p.constraint_type,
    dump_data_p.parent_schema,
    dump_data_p.constraint_table,
    dump_data_p.parent_insert_order,
    dump_data_p.constraint_column,
    dump_data_p.fk_schema,
    dump_data_p.referenced_table,
    dump_data_p.fk_insert_order,
    dump_data_p.referenced_column,
    dump_data_p.definition,
    dump_data_p.base_sql,
    dump_data_p.ref_sql,
    replace(replace(replace(replace(replace('CREATE FUNCTION get_<table_name> ( v_unique_key text)
 RETURNS TABLE ( <constraint_column> <abc_data_type1> ,  <constraint_column2> <abc_data_type2> , <constraint_column3> <abc_data_type3> ) 
AS $$
BEGIN
  RETURN QUERY
    SELECT <constraint_column>
    FROM   <parent_schema>.<constraint_table>
    WHERE  v_unique_key = <uniqueness_of_table> 
    limit 1;
END;
$$ LANGUAGE plpgsql;'::text, '<table_name>'::text, (dump_data_p.constraint_table)::text), '<constraint_column1>'::text, (dump_data_p.constraint_column)::text), '<abc_data_type1>'::text, (dump_data_p.abc_data_type)::text), '<parent_schema>'::text, dump_data_p.parent_schema), '<constraint_table>'::text, (dump_data_p.constraint_table)::text) AS gen_function
   FROM dump_data_p;


ALTER TABLE meta_001.v_dba_re_bld_fnx_lance_ret_keys OWNER TO "armando";

--
-- Name: v_dba_re_dependency_all_text; Type: VIEW; Schema: meta_001; Owner: IHSLaMltbFn1
--

CREATE VIEW meta_001.v_dba_re_dependency_all_text AS
 WITH abc AS (
         SELECT nsp.nspname AS schema_name,
            tbl.relname AS table_name,
            tbl.oid AS table_oid,
            replace(split_part((meta_001.f_dba_ddlx_get_dependants(tbl.oid))::text, ','::text, 3), ')'::text, ''::text) AS f_dba_ddlx_get_dependants_oid
           FROM (pg_namespace nsp
             JOIN pg_class tbl ON ((nsp.oid = tbl.relnamespace)))
          WHERE (nsp.nspname <> ALL (ARRAY['pg_toast'::name, 'information_schema'::name, 'pg_catalog'::name]))
          ORDER BY nsp.nspname, tbl.relname
        ), find_dep AS (
         SELECT abc.schema_name,
            abc.table_name,
            abc.table_oid,
            abc.f_dba_ddlx_get_dependants_oid,
            pg_describe_object(pg_depend_1.classid, pg_depend_1.objid, pg_depend_1.objsubid) AS desc_oid
           FROM abc,
            pg_depend pg_depend_1
          WHERE ((pg_depend_1.objid)::text = abc.f_dba_ddlx_get_dependants_oid)
        )
 SELECT DISTINCT find_dep.schema_name,
    find_dep.table_name,
    find_dep.table_oid,
    pg_describe_object(pg_depend.classid, pg_depend.objid, pg_depend.objsubid) AS desc_parent_oid,
    find_dep.f_dba_ddlx_get_dependants_oid,
    find_dep.desc_oid,
    pg_depend.deptype
   FROM find_dep,
    pg_depend
  WHERE ((pg_depend.objid)::text = (find_dep.table_oid)::text);


ALTER TABLE meta_001.v_dba_re_dependency_all_text OWNER TO "armando";

--
-- Name: v_dba_re_dependency_all_text_by_column; Type: VIEW; Schema: meta_001; Owner: IHSLaMltbFn1
--

CREATE VIEW meta_001.v_dba_re_dependency_all_text_by_column AS
 SELECT DISTINCT x.dependent_schema,
    x.dependent_view,
    x.source_schema,
    x.source_table,
    x.column_name,
    y.schema_name,
    y.table_name,
    y.table_oid,
    y.desc_parent_oid,
    y.f_dba_ddlx_get_dependants_oid,
    y.desc_oid,
    y.deptype
   FROM meta_001.v_dba_view_table_dependency_with_cols x,
    meta_001.v_dba_re_dependency_all_text y
  WHERE ((y.schema_name = x.dependent_schema) AND (y.table_name = x.dependent_view))
  ORDER BY x.dependent_schema, x.dependent_view, x.source_table, y.table_name;


ALTER TABLE meta_001.v_dba_re_dependency_all_text_by_column OWNER TO "armando";

--
-- Name: v_dba_re_gen_grants_schema_create_bug3; Type: VIEW; Schema: meta_001; Owner: IHSLaMltbFn1
--

CREATE VIEW meta_001.v_dba_re_gen_grants_schema_create_bug3 AS
 WITH grant_schemas AS (
         SELECT pg_namespace.nspname,
            (('grant create on schema '::text || (pg_namespace.nspname)::text) || ' to <TOKEN_USER>;'::text) AS sqltext
           FROM pg_namespace
          WHERE ((pg_namespace.nspname !~~ 'pg_%'::text) AND (pg_namespace.nspname <> 'information_schema'::name))
        ), find_user_grant_types_to AS (
         SELECT v_dba_create_roles_with_pwds.newroleof AS userof
           FROM meta_001.v_dba_create_roles_with_pwds
          WHERE ("position"(v_dba_create_roles_with_pwds.newroleof, '.'::text) = 0)
        UNION ALL
         SELECT ((chr(34) || v_dba_create_roles_with_pwds.newroleof) || chr(34)) AS userof
           FROM meta_001.v_dba_create_roles_with_pwds
          WHERE ("position"(v_dba_create_roles_with_pwds.newroleof, '.'::text) > 0)
        )
 SELECT grant_schemas.nspname,
    find_user_grant_types_to.userof,
    replace(grant_schemas.sqltext, '<TOKEN_USER>'::text, find_user_grant_types_to.userof) AS sqltext
   FROM grant_schemas,
    find_user_grant_types_to
  WHERE (find_user_grant_types_to.userof <> 'rl_read_only'::text);


ALTER TABLE meta_001.v_dba_re_gen_grants_schema_create_bug3 OWNER TO "armando";

--
-- Name: v_dba_revoke_all_grants_list_objects; Type: VIEW; Schema: meta_001; Owner: IHSLaMltbFn1
--

CREATE VIEW meta_001.v_dba_revoke_all_grants_list_objects AS
 WITH abc AS (
         SELECT current_database() AS db_name,
            nsp.nspname AS object_schema,
            cls.relname AS object_name,
            rol.rolname AS owner,
                CASE cls.relkind
                    WHEN 'r'::"char" THEN 'TABLE'::text
                    WHEN 'm'::"char" THEN 'MATERIALIZED_VIEW'::text
                    WHEN 'i'::"char" THEN 'INDEX'::text
                    WHEN 'S'::"char" THEN 'SEQUENCE'::text
                    WHEN 'v'::"char" THEN 'VIEW'::text
                    WHEN 'c'::"char" THEN 'TYPE'::text
                    WHEN 's'::"char" THEN 'SPECIAL'::text
                    ELSE (cls.relkind)::text
                END AS object_type,
            nsp.oid AS schema_oid
           FROM ((pg_class cls
             JOIN pg_roles rol ON ((rol.oid = cls.relowner)))
             JOIN pg_namespace nsp ON ((nsp.oid = cls.relnamespace)))
          WHERE (nsp.nspname <> ALL (ARRAY['information_schema'::name, 'pg_catalog'::name, 'pg_temp_1'::name, 'pg_toast'::name, 'pg_toast_temp_1'::name]))
          ORDER BY
                CASE cls.relkind
                    WHEN 'r'::"char" THEN 'TABLE'::text
                    WHEN 'm'::"char" THEN 'MATERIALIZED_VIEW'::text
                    WHEN 'i'::"char" THEN 'INDEX'::text
                    WHEN 'S'::"char" THEN 'SEQUENCE'::text
                    WHEN 'v'::"char" THEN 'VIEW'::text
                    WHEN 'c'::"char" THEN 'TYPE'::text
                    WHEN 's'::"char" THEN 'SPECIAL'::text
                    ELSE (cls.relkind)::text
                END, nsp.nspname, rol.rolname, cls.relname
        )
 SELECT abc.db_name,
    abc.object_schema,
    abc.object_name,
    abc.owner,
    abc.object_type,
    abc.schema_oid
   FROM abc
  ORDER BY abc.object_type, abc.object_schema, abc.owner, abc.object_name;


ALTER TABLE meta_001.v_dba_revoke_all_grants_list_objects OWNER TO "armando";

--
-- Name: v_dba_which_env_host; Type: VIEW; Schema: meta_001; Owner: IHSLaMltbFn1
--

CREATE VIEW meta_001.v_dba_which_env_host AS
 SELECT
        CASE
            WHEN (inet_server_addr() = '10.172.12.74'::inet) THEN 'stg'::text
            WHEN (inet_server_addr() = '10.173.15.194'::inet) THEN 'prod'::text
            WHEN (inet_server_addr() = '10.200.1.31'::inet) THEN 'dev'::text
            ELSE '?'::text
        END AS hostname_abbrev,
        CASE
            WHEN (inet_server_addr() = '10.172.12.74'::inet) THEN 'aus0stage0postgres.c3znzejcnw82.us-east-1.rds.amazonaws.com'::text
            WHEN (inet_server_addr() = '10.173.15.194'::inet) THEN 'aus0beta0postgres.c3znzejcnw82.us-east-1.rds.amazonaws.com'::text
            WHEN (inet_server_addr() = '10.200.1.31'::inet) THEN 'aus0devpostgres.c3znzejcnw82.us-east-1.rds.amazonaws.com'::text
            ELSE '?'::text
        END AS hostname;


ALTER TABLE meta_001.v_dba_which_env_host OWNER TO "armando";

--
-- Name: v_dba_re_gen_grants_user_trunc_ref_trg_bug2; Type: VIEW; Schema: meta_001; Owner: IHSLaMltbFn1
--

CREATE VIEW meta_001.v_dba_re_gen_grants_user_trunc_ref_trg_bug2 AS
 WITH find_types AS (
         SELECT v_dba_revoke_all_grants_list_objects.object_schema AS schema_of,
            v_dba_revoke_all_grants_list_objects.object_name AS typname
           FROM meta_001.v_dba_revoke_all_grants_list_objects
          WHERE ((v_dba_revoke_all_grants_list_objects.object_type = 'TABLE'::text) AND (v_dba_revoke_all_grants_list_objects.db_name = 'wfma'::name))
        ), find_user_grant_types_to AS (
         SELECT v_dba_create_roles_with_pwds.newroleof AS userof
           FROM meta_001.v_dba_create_roles_with_pwds
          WHERE ("position"(v_dba_create_roles_with_pwds.newroleof, '.'::text) = 0)
        UNION ALL
         SELECT ((chr(34) || v_dba_create_roles_with_pwds.newroleof) || chr(34)) AS userof
           FROM meta_001.v_dba_create_roles_with_pwds
          WHERE ("position"(v_dba_create_roles_with_pwds.newroleof, '.'::text) > 0)
        ), find_env AS (
         SELECT v_dba_which_env_host.hostname_abbrev
           FROM meta_001.v_dba_which_env_host
        )
 SELECT DISTINCT replace((((('grant truncate, references, trigger on table '::text || (find_types.schema_of)::text) || '.'::text) || (find_types.typname)::text) || ' to <TOKEN_USER>;'::text), '<TOKEN_USER>'::text, find_user_grant_types_to.userof) AS sqltext,
    find_user_grant_types_to.userof,
    find_env.hostname_abbrev
   FROM find_types,
    find_user_grant_types_to,
    find_env;


ALTER TABLE meta_001.v_dba_re_gen_grants_user_trunc_ref_trg_bug2 OWNER TO "armando";

--
-- Name: v_dba_re_type_definition; Type: VIEW; Schema: meta_001; Owner: IHSLaMltbFn1
--

CREATE VIEW meta_001.v_dba_re_type_definition AS
 WITH abc AS (
         SELECT t.oid AS pg_type_oid,
            n.nspname AS schema_of,
            t.typname,
            string_agg((e.enumlabel)::text, ((((chr(39) || chr(10)) || '     '::text) || ','::text) || chr(39)) ORDER BY e.enumsortorder) AS enum_labels
           FROM ((pg_type t
             JOIN pg_namespace n ON ((n.oid = t.typnamespace)))
             JOIN pg_enum e ON ((t.oid = e.enumtypid)))
          GROUP BY n.nspname, t.typname, n.oid, t.oid
        ), xyz AS (
         SELECT abc.pg_type_oid,
            abc.schema_of,
            abc.typname,
            abc.enum_labels,
            1 AS sourceof,
            ((((((((((((((('drop type '::text || (abc.schema_of)::text) || '.'::text) || (abc.typname)::text) || ';'::text) || chr(10)) || 'CREATE TYPE '::text) || (abc.schema_of)::text) || '.'::text) || format_type(abc.pg_type_oid, NULL::integer)) || ' AS ENUM ('::text) || chr(39)) || abc.enum_labels) || chr(39)) || ');'::text) || chr(10)) AS cr8_sql
           FROM abc
        UNION ALL
         SELECT pg_type.oid,
            NULL::name,
            pg_type.typname,
            pg_enum.enumlabel,
            2 AS sourceof,
            NULL::text
           FROM (pg_type
             JOIN pg_enum ON ((pg_enum.enumtypid = pg_type.oid)))
  ORDER BY 1, 5, 3, 4
        )
 SELECT xyz.pg_type_oid,
    xyz.schema_of,
    xyz.typname,
    xyz.enum_labels,
    xyz.sourceof,
    xyz.cr8_sql,
    NULL::text AS dependson
   FROM xyz
UNION ALL
 SELECT commit.pg_type_oid,
    commit.schema_of,
    commit.typname,
    commit.enum_labels,
    3 AS sourceof,
    NULL::text AS cr8_sql,
    NULL::text AS dependson
   FROM xyz commit;


ALTER TABLE meta_001.v_dba_re_type_definition OWNER TO "armando";

--
-- Name: v_dba_re_gen_grants_user_types_bug; Type: VIEW; Schema: meta_001; Owner: IHSLaMltbFn1
--

CREATE VIEW meta_001.v_dba_re_gen_grants_user_types_bug AS
 WITH find_types AS (
         SELECT v_dba_re_type_definition.schema_of,
            v_dba_re_type_definition.typname
           FROM meta_001.v_dba_re_type_definition
          WHERE (v_dba_re_type_definition.sourceof = 1)
        ), find_user_grant_types_to AS (
         SELECT v_dba_create_roles_with_pwds.newroleof AS userof
           FROM meta_001.v_dba_create_roles_with_pwds
          WHERE ("position"(v_dba_create_roles_with_pwds.newroleof, '.'::text) = 0)
        UNION ALL
         SELECT ((chr(34) || v_dba_create_roles_with_pwds.newroleof) || chr(34)) AS userof
           FROM meta_001.v_dba_create_roles_with_pwds
          WHERE ("position"(v_dba_create_roles_with_pwds.newroleof, '.'::text) > 0)
        ), find_env AS (
         SELECT v_dba_which_env_host.hostname_abbrev
           FROM meta_001.v_dba_which_env_host
        )
 SELECT DISTINCT replace((((('grant usage on type '::text || (find_types.schema_of)::text) || '.'::text) || (find_types.typname)::text) || ' to <TOKEN_USER>;'::text), '<TOKEN_USER>'::text, find_user_grant_types_to.userof) AS sqltext,
    find_user_grant_types_to.userof,
    find_env.hostname_abbrev
   FROM find_types,
    find_user_grant_types_to,
    find_env;


ALTER TABLE meta_001.v_dba_re_gen_grants_user_types_bug OWNER TO "armando";

--
-- Name: v_dba_re_type_definition_deps; Type: VIEW; Schema: meta_001; Owner: IHSLaMltbFn1
--

CREATE VIEW meta_001.v_dba_re_type_definition_deps AS
 WITH get_deps AS (
         SELECT replace(split_part((meta_001.f_dba_ddlx_get_dependants(v_dba_re_type_definition.pg_type_oid))::text, ','::text, 3), ')'::text, ''::text) AS f_dba_ddlx_get_dependants_out,
            v_dba_re_type_definition.pg_type_oid,
            (v_dba_re_type_definition.pg_type_oid)::text AS objid_text,
            v_dba_re_type_definition.schema_of,
            v_dba_re_type_definition.typname
           FROM meta_001.v_dba_re_type_definition
          WHERE (v_dba_re_type_definition.sourceof = 1)
        )
 SELECT DISTINCT pg_describe_object(pg_depend.classid, pg_depend.objid, pg_depend.objsubid) AS pg_describe_object_of,
    pg_depend.classid,
    pg_depend.objid,
    pg_depend.objsubid,
    get_deps.pg_type_oid,
    get_deps.schema_of,
    get_deps.typname
   FROM pg_depend,
    get_deps
  WHERE ((pg_depend.objid)::text = get_deps.f_dba_ddlx_get_dependants_out)
  ORDER BY get_deps.schema_of, get_deps.typname, (pg_describe_object(pg_depend.classid, pg_depend.objid, pg_depend.objsubid));


ALTER TABLE meta_001.v_dba_re_type_definition_deps OWNER TO "armando";

--
-- Name: v_dba_revoke_all_grants_ch_owner; Type: VIEW; Schema: meta_001; Owner: IHSLaMltbFn1
--

CREATE VIEW meta_001.v_dba_revoke_all_grants_ch_owner AS
 SELECT (((('alter view '::text || (pg_views.schemaname)::text) || '.'::text) || quote_ident((pg_views.viewname)::text)) || ' OWNER TO "<NEW_OWNER>";'::text) AS sqltext,
    pg_views.schemaname,
    pg_views.viewname,
    pg_views.viewowner,
    (current_database())::text AS curr_db
   FROM pg_views
  WHERE (((current_database())::text = 'wfma'::text) AND (pg_views.viewowner <> 'rdsadmin'::name));


ALTER TABLE meta_001.v_dba_revoke_all_grants_ch_owner OWNER TO "armando";

--
-- Name: v_dba_revoke_all_grants_except_rl_root; Type: VIEW; Schema: meta_001; Owner: IHSLaMltbFn1
--

CREATE VIEW meta_001.v_dba_revoke_all_grants_except_rl_root AS
 WITH abc AS (
         SELECT current_database() AS db_name,
            role_table_grants.grantee AS "user",
            role_table_grants.table_schema,
            concat(role_table_grants.table_schema, '.', role_table_grants.table_name) AS tableof,
                CASE
                    WHEN (count(role_table_grants.privilege_type) = 7) THEN 'ALL'::text
                    ELSE array_to_string(array_agg(role_table_grants.privilege_type), ', '::text)
                END AS grants
           FROM information_schema.role_table_grants
          WHERE ((((role_table_grants.grantee)::text !~~ 'rl_%'::text) OR ((role_table_grants.grantee)::text !~~ '%xpTwj05YAVoE%'::text)) AND ((current_database())::text = 'wfma'::text))
          GROUP BY (current_database()), role_table_grants.table_name, role_table_grants.table_schema, role_table_grants.grantee
        )
 SELECT DISTINCT abc.db_name,
    'everyone except rl_ '::text AS revoke_scope,
    (((('revoke all on schema '::text || (abc.table_schema)::text) || ' from '::text) || (USER)::text) || ';'::text) AS revoke_schema_sql,
    NULL::text AS revoke_table_sql
   FROM abc
UNION ALL
 SELECT DISTINCT abc.db_name,
    'everyone except rl_ '::text AS revoke_scope,
    NULL::text AS revoke_schema_sql,
    (((('revoke all privileges on '::text || abc.tableof) || ' from '::text) || (USER)::text) || ';'::text) AS revoke_table_sql
   FROM abc;


ALTER TABLE meta_001.v_dba_revoke_all_grants_except_rl_root OWNER TO "armando";

--
-- Name: v_dba_revoke_all_grants_list_fnx_re; Type: VIEW; Schema: meta_001; Owner: IHSLaMltbFn1
--

CREATE VIEW meta_001.v_dba_revoke_all_grants_list_fnx_re AS
 WITH found_users AS (
         SELECT v_dba_create_roles_with_pwds.newroleof AS userof
           FROM meta_001.v_dba_create_roles_with_pwds
          WHERE ("position"(v_dba_create_roles_with_pwds.newroleof, '.'::text) = 0)
        UNION ALL
         SELECT ((chr(34) || v_dba_create_roles_with_pwds.newroleof) || chr(34)) AS userof
           FROM meta_001.v_dba_create_roles_with_pwds
          WHERE ("position"(v_dba_create_roles_with_pwds.newroleof, '.'::text) > 0)
        ), schemaid AS (
         SELECT current_database() AS current_db,
            s.nspname AS table_schema,
            s.oid AS schema_id,
            u.usename AS schema_owner
           FROM (pg_namespace s
             JOIN pg_user u ON ((u.usesysid = s.nspowner)))
        ), xyz AS (
         SELECT ((((('grant execute on FUNCTION '::text || (n.nspname)::text) || '.'::text) || (p.proname)::text) || meta_001.f_getfunctionparameter(p.oid)) || ' to <TOKEN_USER>; '::text) AS grant_sql,
            ((((n.nspname)::text || '.'::text) || (p.proname)::text) || meta_001.f_getfunctionparameter(p.oid)) AS function_api,
            n.nspname,
            p.proname,
            meta_001.f_getfunctionparameter(p.oid) AS params_of,
            n.nspowner,
            ( SELECT pg_database.datname
                   FROM pg_database
                  WHERE (pg_database.datdba = n.nspowner)
                 LIMIT 1) AS owner_text
           FROM schemaid,
            (pg_proc p
             JOIN pg_namespace n ON ((n.oid = p.pronamespace)))
          WHERE (n.nspname <> 'pg_catalog'::name)
        )
 SELECT DISTINCT found_users.userof AS home,
    replace(xyz.grant_sql, '<TOKEN_USER>'::text, found_users.userof) AS grant_sql,
    xyz.function_api,
    xyz.nspname,
    xyz.proname,
    xyz.params_of,
    xyz.nspowner,
    xyz.owner_text
   FROM xyz,
    found_users
  ORDER BY found_users.userof, xyz.nspname, xyz.proname, xyz.function_api;


ALTER TABLE meta_001.v_dba_revoke_all_grants_list_fnx_re OWNER TO "armando";

--
-- Name: v_dba_revoke_all_grants_list_new_users; Type: VIEW; Schema: meta_001; Owner: IHSLaMltbFn1
--

CREATE VIEW meta_001.v_dba_revoke_all_grants_list_new_users AS
 WITH found_users AS (
         SELECT 'rl_read_only'::text AS user_type,
            'read'::text AS account_type
        UNION ALL
         SELECT v_dba_create_roles_with_pwds.newroleof AS user_type,
            'write'::text AS account_type
           FROM meta_001.v_dba_create_roles_with_pwds
          WHERE ("position"(v_dba_create_roles_with_pwds.newroleof, '.'::text) = 0)
        UNION ALL
         SELECT ((chr(34) || v_dba_create_roles_with_pwds.newroleof) || chr(34)) AS user_type,
            'write'::text AS account_type
           FROM meta_001.v_dba_create_roles_with_pwds
          WHERE ("position"(v_dba_create_roles_with_pwds.newroleof, '.'::text) > 0)
        )
 SELECT found_users.user_type,
    found_users.account_type
   FROM found_users;


ALTER TABLE meta_001.v_dba_revoke_all_grants_list_new_users OWNER TO "armando";

--
-- Name: v_dba_revoke_all_grants_list_obj_summary; Type: VIEW; Schema: meta_001; Owner: IHSLaMltbFn1
--

CREATE VIEW meta_001.v_dba_revoke_all_grants_list_obj_summary AS
 SELECT count(*) AS count,
    v_dba_revoke_all_grants_list_objects.db_name,
    v_dba_revoke_all_grants_list_objects.object_schema,
    v_dba_revoke_all_grants_list_objects.object_type
   FROM meta_001.v_dba_revoke_all_grants_list_objects
  GROUP BY v_dba_revoke_all_grants_list_objects.db_name, v_dba_revoke_all_grants_list_objects.object_schema, v_dba_revoke_all_grants_list_objects.object_type
  ORDER BY v_dba_revoke_all_grants_list_objects.db_name, v_dba_revoke_all_grants_list_objects.object_schema, v_dba_revoke_all_grants_list_objects.object_type;


ALTER TABLE meta_001.v_dba_revoke_all_grants_list_obj_summary OWNER TO "armando";

--
-- Name: v_dba_revoke_all_grants_list_seqs_g; Type: VIEW; Schema: meta_001; Owner: IHSLaMltbFn1
--

CREATE VIEW meta_001.v_dba_revoke_all_grants_list_seqs_g AS
 WITH abc AS (
         SELECT (((('grant usage, select on sequence '::text || (v_dba_revoke_all_grants_list_objects.object_schema)::text) || '.'::text) || (v_dba_revoke_all_grants_list_objects.object_name)::text) || ' to <USER_TOKEN>;'::text) AS sqltext,
            v_dba_revoke_all_grants_list_objects.db_name,
            v_dba_revoke_all_grants_list_objects.object_schema,
            v_dba_revoke_all_grants_list_objects.object_name,
            v_dba_revoke_all_grants_list_objects.owner
           FROM meta_001.v_dba_revoke_all_grants_list_objects
          WHERE (v_dba_revoke_all_grants_list_objects.object_type = 'SEQUENCE'::text)
        ), found_users AS (
         SELECT v_dba_create_roles_with_pwds.newroleof AS userof
           FROM meta_001.v_dba_create_roles_with_pwds
          WHERE ("position"(v_dba_create_roles_with_pwds.newroleof, '.'::text) = 0)
        UNION ALL
         SELECT ((chr(34) || v_dba_create_roles_with_pwds.newroleof) || chr(34)) AS userof
           FROM meta_001.v_dba_create_roles_with_pwds
          WHERE ("position"(v_dba_create_roles_with_pwds.newroleof, '.'::text) > 0)
        )
 SELECT replace(abc.sqltext, '<USER_TOKEN>'::text, found_users.userof) AS sqltext,
    abc.db_name,
    abc.object_schema,
    abc.object_name,
    abc.owner
   FROM abc,
    found_users;


ALTER TABLE meta_001.v_dba_revoke_all_grants_list_seqs_g OWNER TO "armando";

--
-- Name: v_dba_show_2_week_db_changes_stage; Type: VIEW; Schema: meta_001; Owner: IHSLaMltbFn1
--

CREATE VIEW meta_001.v_dba_show_2_week_db_changes_stage AS
 SELECT age(v.ddl_date) AS age_of,
    v.id,
    v.ddl_date,
    v.ddl_tag,
    v.object_name,
    v.object_type,
    v.ddl_event,
    v.classid,
    v.objid,
    v.objsubid,
    v.command_tag,
    v.schema_name,
    v.in_extension,
    v.object_sql,
    v.original,
    v.normal,
    v.is_temporary,
    v.address_names,
    v.address_args,
    v.xid,
    v.username,
    v.datname,
    v.client_addr,
    v.client_port,
    v.table_rewrite_oid,
    v.table_rewrite_reason,
    v.query,
    v.application_name
   FROM meta_001.t_dba_ddl_history v
  WHERE ((v.ddl_date > (CURRENT_TIMESTAMP - '14 days'::interval)) AND (v.object_name !~~ 'pg_temp.%'::text))
  ORDER BY v.object_name, v.object_type, v.ddl_date;


ALTER TABLE meta_001.v_dba_show_2_week_db_changes_stage OWNER TO "armando";

--
-- Name: v_dba_show_active_connections_summ; Type: VIEW; Schema: meta_001; Owner: IHSLaMltbFn1
--

CREATE VIEW meta_001.v_dba_show_active_connections_summ AS
 WITH abc AS (
         SELECT count(1) AS cntr,
            pg_stat_activity.usename AS username,
            pg_stat_activity.datname AS database_name,
            pg_stat_activity.client_addr AS client_address,
            pg_stat_activity.application_name,
            pg_stat_activity.state
           FROM pg_stat_activity
          GROUP BY pg_stat_activity.usename, pg_stat_activity.datname, pg_stat_activity.client_addr, pg_stat_activity.application_name, pg_stat_activity.state
          ORDER BY pg_stat_activity.state, (count(1)), pg_stat_activity.datname, pg_stat_activity.client_addr, pg_stat_activity.application_name
        ), show_summ AS (
         SELECT 'CURRENT ACTIVE'::text AS statusof,
            abc.cntr,
            abc.username,
            abc.database_name,
            abc.client_address,
            abc.application_name,
            abc.state
           FROM abc
          WHERE (abc.state = 'active'::text)
        UNION ALL
         SELECT 'ZZZZZZZZZZZZZZZZZZZZZZZZZ  IDLE  ZZZZZZZZZZZZZZZZZZZ'::text AS statusof,
            abc.cntr,
            abc.username,
            abc.database_name,
            abc.client_address,
            abc.application_name,
            abc.state
           FROM abc
          WHERE (abc.state = 'idle'::text)
        UNION ALL
         SELECT 'unknown'::text AS statusof,
            abc.cntr,
            abc.username,
            abc.database_name,
            abc.client_address,
            abc.application_name,
            abc.state
           FROM abc
          WHERE (abc.state <> ALL (ARRAY['active'::text, 'idle'::text]))
        )
 SELECT show_summ.statusof,
    show_summ.cntr,
    show_summ.username,
    show_summ.database_name,
    show_summ.client_address,
    show_summ.application_name,
    show_summ.state
   FROM show_summ;


ALTER TABLE meta_001.v_dba_show_active_connections_summ OWNER TO "armando";

--
-- Name: v_dba_util_get_table_ddl; Type: VIEW; Schema: meta_001; Owner: IHSLaMltbFn1
--

CREATE VIEW meta_001.v_dba_util_get_table_ddl AS
 SELECT v_dba_get_tbl_sch_owner.table_schema,
    v_dba_get_tbl_sch_owner.tablename,
    meta_001.f_dba_get_table_definition(((v_dba_get_tbl_sch_owner.table_schema)::text)::character varying, ((v_dba_get_tbl_sch_owner.tablename)::text)::character varying) AS foundddl,
    (((((('pg_dump -t '::text || chr(39)) || (v_dba_get_tbl_sch_owner.table_schema)::text) || '.'::text) || (v_dba_get_tbl_sch_owner.tablename)::text) || chr(39)) || ' --schema-only wfma --'::text) AS run_on_cmd_line
   FROM meta_001.v_dba_get_tbl_sch_owner;


ALTER TABLE meta_001.v_dba_util_get_table_ddl OWNER TO "armando";

--
-- Name: v_dba_show_tables_diff_compare_src; Type: VIEW; Schema: meta_001; Owner: IHSLaMltbFn1
--

CREATE VIEW meta_001.v_dba_show_tables_diff_compare_src AS
 SELECT 'STAGE'::text AS location,
    x.table_schema,
    x.tablename,
    x.foundddl
   FROM meta_001.v_dba_util_get_table_ddl x
  ORDER BY x.table_schema, x.tablename;


ALTER TABLE meta_001.v_dba_show_tables_diff_compare_src OWNER TO "armando";

--
-- Name: v_dba_view_table_dependency; Type: VIEW; Schema: meta_001; Owner: IHSLaMltbFn1
--

CREATE VIEW meta_001.v_dba_view_table_dependency AS
 WITH RECURSIVE view_deps AS (
         SELECT DISTINCT dependent_ns.nspname AS dependent_schema,
            dependent_view.relname AS dependent_view,
            source_ns.nspname AS source_schema,
            source_table.relname AS source_table
           FROM ((((((pg_depend
             JOIN pg_rewrite ON ((pg_depend.objid = pg_rewrite.oid)))
             JOIN pg_class dependent_view ON ((pg_rewrite.ev_class = dependent_view.oid)))
             JOIN pg_class source_table ON ((pg_depend.refobjid = source_table.oid)))
             JOIN pg_namespace dependent_ns ON ((dependent_ns.oid = dependent_view.relnamespace)))
             JOIN pg_namespace source_ns ON ((source_ns.oid = source_table.relnamespace)))
             JOIN pg_attribute ON (((pg_depend.refobjid = pg_attribute.attrelid) AND (pg_depend.refobjsubid = pg_attribute.attnum))))
          WHERE (NOT ((dependent_ns.nspname = source_ns.nspname) AND (dependent_view.relname = source_table.relname)))
        UNION
         SELECT DISTINCT dependent_ns.nspname AS dependent_schema,
            dependent_view.relname AS dependent_view,
            source_ns.nspname AS source_schema,
            source_table.relname AS source_table
           FROM ((((((pg_depend
             JOIN pg_rewrite ON ((pg_depend.objid = pg_rewrite.oid)))
             JOIN pg_class dependent_view ON ((pg_rewrite.ev_class = dependent_view.oid)))
             JOIN pg_class source_table ON ((pg_depend.refobjid = source_table.oid)))
             JOIN pg_namespace dependent_ns ON ((dependent_ns.oid = dependent_view.relnamespace)))
             JOIN pg_namespace source_ns ON ((source_ns.oid = source_table.relnamespace)))
             JOIN view_deps vd ON (((vd.dependent_schema = source_ns.nspname) AND (vd.dependent_view = source_table.relname) AND (NOT ((dependent_ns.nspname = vd.dependent_schema) AND (dependent_view.relname = vd.dependent_view))))))
        )
 SELECT view_deps.dependent_schema,
    view_deps.dependent_view,
    view_deps.source_schema,
    view_deps.source_table
   FROM view_deps
  WHERE ((view_deps.dependent_schema <> ALL (ARRAY['pg_catalog'::name, 'information_schema'::name])) AND (view_deps.source_schema <> ALL (ARRAY['pg_catalog'::name, 'information_schema'::name])) AND (view_deps.dependent_view !~~ 'pg_%'::text) AND (view_deps.source_table !~~ 'pg_%'::text))
  ORDER BY view_deps.source_schema, view_deps.source_table;


ALTER TABLE meta_001.v_dba_view_table_dependency OWNER TO "armando";

--
-- Name: v_dba_who_where; Type: VIEW; Schema: meta_001; Owner: IHSLaMltbFn1
--

CREATE VIEW meta_001.v_dba_who_where AS
 SELECT current_database() AS current_database_of,
    "current_schema"() AS current_schema_of,
    CURRENT_USER AS current_user_of,
    replace((inet_client_addr())::text, '12.21.38.37'::text, 'aus0Stage_STAGE'::text) AS current_server_of,
    '
current_database_of|current_schema_of|current_user_of|current_server_of |
-------------------|-----------------|---------------|------------------|
wfma               |meta_001         |IHSLaMltbFn1   |aus0Stage_STAGE/32|'::text AS sample_output,
    'Version 1.0'::text AS version_info;


ALTER TABLE meta_001.v_dba_who_where OWNER TO "armando";

--
-- Name: v_sequence_table_map; Type: VIEW; Schema: meta_001; Owner: IHSLaMltbFn1
--

CREATE VIEW meta_001.v_sequence_table_map AS
 SELECT sequence_table_map.id,
    sequence_table_map.schema_name,
    sequence_table_map.table_name,
    sequence_table_map.sequence_name,
    sequence_table_map.pk_col,
    sequence_table_map.uk_column,
    sequence_table_map.ttype,
    sequence_table_map.ownerof,
    sequence_table_map.appof,
    sequence_table_map.aud_cols
   FROM meta_001.sequence_table_map;


ALTER TABLE meta_001.v_sequence_table_map OWNER TO "armando";

--
-- Name: winteam_roles; Type: TABLE; Schema: meta_001; Owner: IHSLaMltbFn1
--

CREATE TABLE meta_001.winteam_roles (
    run_order integer,
    typeof text,
    environment text,
    database_name text,
    schema_name text,
    table_name text,
    rolename text,
    permission text,
    created_by name,
    updated_on timestamp with time zone,
    allow_grant text DEFAULT 'Y'::text
);


ALTER TABLE meta_001.winteam_roles OWNER TO "armando";

--
-- Name: winteam_roles_granted_exec_order_seq; Type: SEQUENCE; Schema: meta_001; Owner: IHSLaMltbFn1
--

CREATE SEQUENCE meta_001.winteam_roles_granted_exec_order_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE meta_001.winteam_roles_granted_exec_order_seq OWNER TO "armando";

--
-- Name: winteam_roles_granted_id_seq; Type: SEQUENCE; Schema: meta_001; Owner: IHSLaMltbFn1
--

CREATE SEQUENCE meta_001.winteam_roles_granted_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE meta_001.winteam_roles_granted_id_seq OWNER TO "armando";

--
-- Name: winteam_roles_granted_id_seq; Type: SEQUENCE OWNED BY; Schema: meta_001; Owner: IHSLaMltbFn1
--

ALTER SEQUENCE meta_001.winteam_roles_granted_id_seq OWNED BY meta_001.winteam_roles_granted.id;


--
-- Name: dan_fnxs id; Type: DEFAULT; Schema: meta_001; Owner: IHSLaMltbFn1
--

ALTER TABLE ONLY meta_001.dan_fnxs ALTER COLUMN id SET DEFAULT nextval('meta_001.dan_fnxs_id_seq'::regclass);


--
-- Name: dan_views id; Type: DEFAULT; Schema: meta_001; Owner: IHSLaMltbFn1
--

ALTER TABLE ONLY meta_001.dan_views ALTER COLUMN id SET DEFAULT nextval('meta_001.dan_views_id_seq'::regclass);


--
-- Name: log_audit_runs id; Type: DEFAULT; Schema: meta_001; Owner: IHSLaMltbFn1
--

ALTER TABLE ONLY meta_001.log_audit_runs ALTER COLUMN id SET DEFAULT nextval('meta_001.log_audit_runs_id_seq'::regclass);


--
-- Name: meta_column meta_column_id; Type: DEFAULT; Schema: meta_001; Owner: IHSLaMltbFn1
--

ALTER TABLE ONLY meta_001.meta_column ALTER COLUMN meta_column_id SET DEFAULT nextval('meta_001.meta_column_meta_column_id_seq'::regclass);


--
-- Name: meta_schema meta_schema_id; Type: DEFAULT; Schema: meta_001; Owner: IHSLaMltbFn1
--

ALTER TABLE ONLY meta_001.meta_schema ALTER COLUMN meta_schema_id SET DEFAULT nextval('meta_001.meta_schema_meta_schema_id_seq'::regclass);


--
-- Name: meta_table meta_table_id; Type: DEFAULT; Schema: meta_001; Owner: IHSLaMltbFn1
--

ALTER TABLE ONLY meta_001.meta_table ALTER COLUMN meta_table_id SET DEFAULT nextval('meta_001.meta_table_meta_table_id_seq'::regclass);


--
-- Name: sequence_table_map id; Type: DEFAULT; Schema: meta_001; Owner: IHSLaMltbFn1
--

ALTER TABLE ONLY meta_001.sequence_table_map ALTER COLUMN id SET DEFAULT nextval('meta_001.sequence_table_map_id_seq'::regclass);


--
-- Name: t_dba_ddl_history id; Type: DEFAULT; Schema: meta_001; Owner: IHSLaMltbFn1
--

ALTER TABLE ONLY meta_001.t_dba_ddl_history ALTER COLUMN id SET DEFAULT nextval('meta_001.t_dba_ddl_history_id_seq'::regclass);


--
-- Name: winteam_roles_granted id; Type: DEFAULT; Schema: meta_001; Owner: IHSLaMltbFn1
--

ALTER TABLE ONLY meta_001.winteam_roles_granted ALTER COLUMN id SET DEFAULT nextval('meta_001.winteam_roles_granted_id_seq'::regclass);


--
-- Name: dan_fnxs dan_fnxs_pkey; Type: CONSTRAINT; Schema: meta_001; Owner: IHSLaMltbFn1
--

ALTER TABLE ONLY meta_001.dan_fnxs
    ADD CONSTRAINT dan_fnxs_pkey PRIMARY KEY (id);


--
-- Name: dan_views dan_views_pkey; Type: CONSTRAINT; Schema: meta_001; Owner: IHSLaMltbFn1
--

ALTER TABLE ONLY meta_001.dan_views
    ADD CONSTRAINT dan_views_pkey PRIMARY KEY (id);


--
-- Name: deps_saved_ddl deps_saved_ddl_pk; Type: CONSTRAINT; Schema: meta_001; Owner: IHSLaMltbFn1
--

ALTER TABLE ONLY meta_001.deps_saved_ddl
    ADD CONSTRAINT deps_saved_ddl_pk PRIMARY KEY (src_nsp_name, src_rel_name, dep_nsp_name, dep_rel_name, ddl_order);


--
-- Name: log_audit_runs log_audit_runs_pkey; Type: CONSTRAINT; Schema: meta_001; Owner: IHSLaMltbFn1
--

ALTER TABLE ONLY meta_001.log_audit_runs
    ADD CONSTRAINT log_audit_runs_pkey PRIMARY KEY (id);


--
-- Name: meta_column pk_dd_meta_column_id; Type: CONSTRAINT; Schema: meta_001; Owner: IHSLaMltbFn1
--

ALTER TABLE ONLY meta_001.meta_column
    ADD CONSTRAINT pk_dd_meta_column_id PRIMARY KEY (meta_column_id);


--
-- Name: meta_schema pk_dd_meta_schema_id; Type: CONSTRAINT; Schema: meta_001; Owner: IHSLaMltbFn1
--

ALTER TABLE ONLY meta_001.meta_schema
    ADD CONSTRAINT pk_dd_meta_schema_id PRIMARY KEY (meta_schema_id);


--
-- Name: meta_table pk_dd_meta_table_id; Type: CONSTRAINT; Schema: meta_001; Owner: IHSLaMltbFn1
--

ALTER TABLE ONLY meta_001.meta_table
    ADD CONSTRAINT pk_dd_meta_table_id PRIMARY KEY (meta_table_id);


--
-- Name: sequence_table_map sequence_table_map_pkey; Type: CONSTRAINT; Schema: meta_001; Owner: IHSLaMltbFn1
--

ALTER TABLE ONLY meta_001.sequence_table_map
    ADD CONSTRAINT sequence_table_map_pkey PRIMARY KEY (id);


--
-- Name: t_dba_ddl_history t_dba_ddl_history_pkey; Type: CONSTRAINT; Schema: meta_001; Owner: IHSLaMltbFn1
--

ALTER TABLE ONLY meta_001.t_dba_ddl_history
    ADD CONSTRAINT t_dba_ddl_history_pkey PRIMARY KEY (id);


--
-- Name: meta_column uq_dd_meta_column_schema_table_column; Type: CONSTRAINT; Schema: meta_001; Owner: IHSLaMltbFn1
--

ALTER TABLE ONLY meta_001.meta_column
    ADD CONSTRAINT uq_dd_meta_column_schema_table_column UNIQUE (s_name, t_name, c_name);


--
-- Name: meta_schema uq_dd_meta_schema_name; Type: CONSTRAINT; Schema: meta_001; Owner: IHSLaMltbFn1
--

ALTER TABLE ONLY meta_001.meta_schema
    ADD CONSTRAINT uq_dd_meta_schema_name UNIQUE (s_name);


--
-- Name: meta_table uq_dd_meta_table_schema_table; Type: CONSTRAINT; Schema: meta_001; Owner: IHSLaMltbFn1
--

ALTER TABLE ONLY meta_001.meta_table
    ADD CONSTRAINT uq_dd_meta_table_schema_table UNIQUE (s_name, t_name);


--
-- Name: winteam_roles_granted winteam_roles_granted_pkey; Type: CONSTRAINT; Schema: meta_001; Owner: IHSLaMltbFn1
--

ALTER TABLE ONLY meta_001.winteam_roles_granted
    ADD CONSTRAINT winteam_roles_granted_pkey PRIMARY KEY (id);


--
-- Name: event_created_on_idx; Type: INDEX; Schema: meta_001; Owner: IHSLaMltbFn1
--

CREATE INDEX event_created_on_idx ON ONLY meta_001.event USING brin (created_on);


--
-- Name: event_user_id_idx; Type: INDEX; Schema: meta_001; Owner: IHSLaMltbFn1
--

CREATE INDEX event_user_id_idx ON ONLY meta_001.event USING gin (user_id);


--
-- Name: event_y2020m05_created_on_idx; Type: INDEX; Schema: meta_001; Owner: IHSLaMltbFn1
--

CREATE INDEX event_y2020m05_created_on_idx ON meta_001.event_y2020m05 USING brin (created_on);


--
-- Name: event_y2020m05_user_id_idx; Type: INDEX; Schema: meta_001; Owner: IHSLaMltbFn1
--

CREATE INDEX event_y2020m05_user_id_idx ON meta_001.event_y2020m05 USING gin (user_id);


--
-- Name: grant_success_idx; Type: INDEX; Schema: meta_001; Owner: IHSLaMltbFn1
--

CREATE INDEX grant_success_idx ON meta_001.winteam_roles_granted USING btree (allow_grant, grant_successful);


--
-- Name: event_y2020m05_created_on_idx; Type: INDEX ATTACH; Schema: meta_001; Owner: IHSLaMltbFn1
--

ALTER INDEX meta_001.event_created_on_idx ATTACH PARTITION meta_001.event_y2020m05_created_on_idx;


--
-- Name: event_y2020m05_user_id_idx; Type: INDEX ATTACH; Schema: meta_001; Owner: IHSLaMltbFn1
--

ALTER INDEX meta_001.event_user_id_idx ATTACH PARTITION meta_001.event_y2020m05_user_id_idx;


--
-- Name: DATABASE wfma; Type: ACL; Schema: -; Owner: IHSLaMltbFn1
--

