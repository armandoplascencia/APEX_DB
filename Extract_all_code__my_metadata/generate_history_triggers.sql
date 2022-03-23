
create or replace package eba_mpa as 
     
    procedure gen_history_trigger 
    ( 
        p_prefix          in varchar2, 
        p_source_table    in varchar2, 
        p_standard_filter in varchar2 default 'Y' 
    ); 
 
end eba_mpa; 
/

create or replace package body eba_mpa as 
  
    procedure gen_history_trigger ( 
        p_prefix       in varchar2, 
        p_source_table in varchar2, 
        p_standard_filter in varchar2 ) 
    is 
        l_cnt number; 
        l_sql clob; 
        l_table varchar2(30) := upper(substr(p_source_table, instr(p_source_table,'_',5)+1, 30)); 
        l_rk boolean := false; 
        l_pk_col varchar2(30) := 'null'; 
        cursor col_csr is 
            select utc.column_name, utc.data_type, utc.column_id, 
                (   select count(*) 
                    from sys.user_cons_columns ucc, 
                        sys.user_constraints uc 
                    where uc.table_name = utc.table_name 
                        and uc.constraint_type = 'R' 
                        and ucc.constraint_name = uc.constraint_name 
                        and ucc.table_name = uc.table_name 
                        and ucc.column_name = utc.column_name ) foreign_keys 
            from sys.user_tab_cols utc 
            where utc.table_name = upper( p_source_table ) 
                and utc.data_type not in ('BLOB', 'BFILE', 'RAW', 'LONG RAW') 
                and ( p_standard_filter = 'N' 
                    or utc.column_name not in ('CREATED','CREATED_BY','UPDATED','UPDATED_BY', 
                        'ROW_VERSION_NUMBER','ROW_KEY')) 
                and not exists ( 
                    select null 
                    from sys.user_cons_columns ucc, 
                        sys.user_constraints uc 
                    where uc.table_name = utc.table_name 
                        and uc.constraint_type = 'P' 
                        and ucc.constraint_name = uc.constraint_name 
                        and ucc.table_name = uc.table_name 
                        and ucc.column_name = utc.column_name ) 
            order by utc.column_id; 
        col_rec col_csr%ROWTYPE; 
        l_fk_table    varchar2(30) := ''; 
        l_fk_id_col   varchar2(30) := ''; 
        l_fk_disp_col varchar2(30) := ''; 
    begin 
        select count(*) into l_cnt 
        from sys.user_tables t 
        where t.table_name = upper(p_prefix)||'_HISTORY'; 
        if l_cnt = 0 then 
            dbms_output.put_line('History table not found. Creation SQL:' || chr(10)); 
            dbms_output.put_line('create table '||lower(p_prefix)||'_history (' || chr(10) || 
                '    id number,' || chr(10) || 
                '    row_version_number number,' || chr(10) || 
                '    component_id number,' || chr(10) || 
                '    component_rowkey varchar2(30),' || chr(10) || 
                '    table_name varchar2(60) not null enable,' || chr(10) || 
                '    column_name varchar2(60) not null enable,' || chr(10) || 
                '    old_value varchar2(4000),' || chr(10) || 
                '    new_value varchar2(4000),' || chr(10) || 
                '    change_date timestamp (6) with local time zone,' || chr(10) || 
                '    changed_by varchar2(255),' || chr(10) || 
                '    constraint '||lower(p_prefix)||'_history_pk primary key (id) enable' || chr(10) || 
                ')' || chr(10) || 
                '/' || chr(10) || 
                chr(10) || 
                'create index '||lower(p_prefix)||'_history_i1 on '||lower(p_prefix)||'_history (component_id)' || chr(10) || 
                '/' || chr(10) || 
                chr(10) || 
                'create or replace trigger biu_'||lower(p_prefix)||'_history' || chr(10) || 
                '    before insert or update on '||lower(p_prefix)||'_history' || chr(10) || 
                '    for each row' || chr(10) || 
                'begin' || chr(10) || 
                '    if :new.id is null then' || chr(10) || 
                '        :new.id := to_number(sys_guid(),''XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'');' || chr(10) || 
                '    end if;' || chr(10) || 
                '    if inserting then' || chr(10) || 
                '        :new.change_date := localtimestamp;' || chr(10) || 
                '        :new.changed_by := nvl(wwv_flow.g_user,user);' || chr(10) || 
                '        :new.row_version_number := 1;' || chr(10) || 
                '    elsif updating then' || chr(10) || 
                '        :new.row_version_number := :new.row_version_number + 1;' || chr(10) || 
                '    end if;' || chr(10) || 
                'end;' || chr(10) || 
                '/' || chr(10) || 
                'alter trigger biu_'||lower(p_prefix)||'_history enable' || chr(10) || 
                '/'); 
        end if; 
        dbms_output.put_line( chr(10) || 'Before we begin trigger generation, a quick note:' || chr(10) || 
            'This tool takes its best guess for foreign keys, but it is not possible to guarantee accuracy.' || chr(10) || 
            'Please check to make sure displayed columns are correct.' || chr(10) ); 
        dbms_output.put_line('--------------------------------------------------------------------------------' || chr(10) ); 
        l_sql := l_sql || chr(10) || 'create or replace trigger au_'||substr(lower(p_source_table),0,27) || chr(10) || 
            '    after update on '||lower(p_source_table) || chr(10) || 
                '    for each row' || chr(10) || 
                'declare' || chr(10) || 
                '    pragma autonomous_transaction;' || chr(10) || 
                '    ov varchar2(4000) := null;' || chr(10) || 
                '    nv varchar2(4000) := null;' || chr(10) || 
                'begin' || chr(10); 
        select lower(ucc.column_name) into l_pk_col 
        from sys.user_constraints uc, 
            sys.user_cons_columns ucc 
        where uc.table_name = upper( p_source_table ) 
            and uc.constraint_type = 'P' 
            and ucc.table_name = uc.table_name 
            and ucc.constraint_name = uc.constraint_name 
            and ucc.position = 1; 
  
        select count(*) into l_cnt 
        from sys.user_tab_cols tc 
        where tc.table_name = upper(p_source_table) 
            and tc.column_name = 'ROW_KEY'; 
        if l_cnt > 0 then l_rk := true; end if; 
  
        for col_rec in col_csr loop 
            if col_rec.foreign_keys > 0 then 
                -- Generate foreign key lookup code 
                l_sql := l_sql||'    -- '||col_rec.column_name||' (foreign key)'||chr(10); 
                select r.table_name, 
                    (   select ucc2.column_name 
                        from sys.user_cons_columns ucc2, sys.user_constraints uc2 
                        where uc2.table_name = r.table_name 
                            and uc2.constraint_type = 'P' 
                            and ucc2.constraint_name = uc2.constraint_name 
                            and ucc2.table_name = uc2.table_name ), 
                    (   select distinct(first_value(utc.column_name) over (order by utc.column_id)) col 
                        from sys.user_tab_cols utc 
                        where utc.table_name = r.table_name 
                            and utc.data_type in ('CHAR','VARCHAR2','NCHAR','NVARCHAR2')) 
                into l_fk_table, l_fk_id_col, l_fk_disp_col 
                from sys.user_cons_columns ucc, 
                    sys.user_constraints uc, 
                    sys.user_constraints r 
                where uc.table_name = upper( p_source_table ) 
                    and ucc.column_name = col_rec.column_name 
                    and uc.constraint_type = 'R' 
                    and ucc.constraint_name = uc.constraint_name 
                    and ucc.table_name = uc.table_name 
                    and r.owner = uc.r_owner 
                    and r.constraint_name = uc.r_constraint_name; 
  
                l_sql := l_sql || 
                    '    if nvl(:old.'||lower(col_rec.column_name)||',-999) != nvl(:new.'||lower(col_rec.column_name)||',-999)'|| 
                    ' then' || chr(10) || 
                    '        ov := null; nv := null;' || chr(10) || 
                    '        for c1 in (select '||lower(l_fk_disp_col)||' val from '|| 
                    lower(l_fk_table)||' t where t.id = :old.'||lower(col_rec.column_name)||') loop' || chr(10) || 
                    '            ov := c1.val;' || chr(10) || 
                    '        end loop;' || chr(10) || 
                    '        for c1 in (select '||lower(l_fk_disp_col)||' val from '|| 
                    lower(l_fk_table)||' t where t.id = :new.'||lower(col_rec.column_name)||') loop' || chr(10) || 
                    '            nv := c1.val;' || chr(10) || 
                    '        end loop;' || chr(10) || 
                    '        insert into '||lower(p_prefix)||'_history ' || 
                    '(table_name, component_rowkey, component_id, column_name, old_value, new_value) ' || 
                    'values' || chr(10) || 
                    '            ('''||l_table||''', '; 
                if l_rk then 
                    l_sql := l_sql || ':new.row_key, '; 
                else 
                    l_sql := l_sql || 'null, '; 
                end if; 
                l_sql := l_sql || ':new.'||l_pk_col||', '''||upper(col_rec.column_name)||''', ov, nv);' || chr(10) || 
                    '    end if;' || chr(10); 
            elsif col_rec.data_type = 'DATE' or substr(col_rec.data_type,0,9) = 'TIMESTAMP' then 
                -- Generate date code 
                l_sql := l_sql||'    -- '||col_rec.column_name||' (date/timestamp)'||chr(10); 
                l_sql := l_sql || 
                    '    if (:old.'||lower(col_rec.column_name)||' is null '|| 
                    'and :new.'||lower(col_rec.column_name)||' is not null) '|| 
                    'or ' || chr(10) || 
                    '        (:old.'||lower(col_rec.column_name)||' is not null '|| 
                    'and :new.'||lower(col_rec.column_name)||' is null) '|| 
                    'or ' || chr(10) || 
                    '        (:old.'||lower(col_rec.column_name)||' != '|| 
                    ':new.'||lower(col_rec.column_name)||') then ' || chr(10) || 
                    '        insert into '||lower(p_prefix)||'_history ' || 
                    '(table_name, component_rowkey, component_id, column_name, old_value, new_value) values ' || chr(10) || 
                    '            ('''||l_table||''', '; 
                if l_rk then 
                    l_sql := l_sql || ':new.row_key, '; 
                else 
                    l_sql := l_sql || 'null, '; 
                end if; 
                l_sql := l_sql || ':new.'||l_pk_col||', '''||upper(col_rec.column_name)||''', ' || 
                    'to_char(:old.'||lower(col_rec.column_name) || ', ''DD-MON-YYYY HH24:MI:SS''), ' || 
                    'to_char(:new.'||lower(col_rec.column_name) || ', ''DD-MON-YYYY HH24:MI:SS'') ' || 
                    ');' || chr(10) || 
                    '    end if;' || chr(10); 
            else 
                -- Presumably, we're down to numbers and character strings now. 
                l_sql := l_sql||'    -- '||col_rec.column_name||' (default)'||chr(10); 
                l_sql := l_sql || 
                    '    if nvl(:old.'||lower(col_rec.column_name)||', ''0'') != ' || 
                    'nvl(:new.'||lower(col_rec.column_name)||',''0'') then ' || chr(10) || 
                    '        insert into '||lower(p_prefix)||'_history '|| 
                    '(table_name, component_rowkey, component_id, column_name, old_value, new_value) values ' || chr(10) || 
                    '            ('''||l_table||''', '; 
                if l_rk then 
                    l_sql := l_sql || ':new.row_key, '; 
                else 
                    l_sql := l_sql || 'null, '; 
                end if; 
                l_sql := l_sql || ':new.'||l_pk_col||', '''||upper(col_rec.column_name)||''', ' || 
                    'substr(:old.'||lower(col_rec.column_name) || ',0,4000), ' || 
                    'substr(:new.'||lower(col_rec.column_name) || ',0,4000) ' || 
                    '); ' || chr(10) || 
                    '    end if;' || chr(10); 
            end if; 
        end loop; 
        l_sql := l_sql || '    commit;' || chr(10); 
        l_sql := l_sql || 'end au_'||substr(lower(p_source_table),0,27) || ';' || chr(10) || 
            '/' || chr(10) || 'alter trigger au_'||substr(lower(p_source_table),0,27) || 
               ' enable' || chr(10) || '/' || chr(10); 
        dbms_output.put_line( l_sql ); 
    end gen_history_trigger; 
  
end eba_mpa; 
/

select dbms_metadata.get_ddl('TABLE', 'DW_MEDIA_UP_DOWN_FILES') from dual;

begin
    eba_mpa.gen_history_trigger (p_prefix => 'WC_H', p_source_table => 'DW_MEDIA_UP_DOWN_FILES');
end;

====================

create table wc_h_history (
    id number,
    row_version_number number,
    component_id      number,
    component_rowkey  varchar2(30),
    table_name        varchar2(60) not null enable,
    column_name       varchar2(60) not null enable,
    old_value         varchar2(4000),
    new_value         varchar2(4000),
    change_date       timestamp (6) with local time zone,
    changed_by        varchar2(255),
    constraint wc_h_history_pk primary key (id) enable
)
/

create index wc_h_history_i1 on wc_h_history (component_id)
/

create or replace trigger biu_wc_h_history
    before insert or update on wc_h_history
    for each row
begin
    if :new.id is null then
        :new.id := to_number(sys_guid(),'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX');
    end if;
    if inserting then
        :new.change_date := localtimestamp;
        :new.changed_by := nvl(wwv_flow.g_user,user);
        :new.row_version_number := 1;
    elsif updating then
        :new.row_version_number := :new.row_version_number + 1;
    end if;
end;
/
alter trigger biu_wc_h_history enable
/

--Before we begin trigger generation, a quick note:
--This tool takes its best guess for foreign keys, but it is not possible to guarantee accuracy.
--Please check to make sure displayed columns are correct.

--------------------------------------------------------------------------------

create or replace trigger au_dw_media_up_down_files
    after update on dw_media_up_down_files
    for each row
declare
    pragma autonomous_transaction;
    ov varchar2(4000) := null;
    nv varchar2(4000) := null;
begin
    -- FILE_NAME (default)
    if nvl(:old.file_name, '0') != nvl(:new.file_name,'0') then 
        insert into wc_h_history (table_name, component_rowkey, component_id, column_name, old_value, new_value) values 
            ('UP_DOWN_FILES', null, :new.id, 'FILE_NAME', substr(:old.file_name,0,4000), substr(:new.file_name,0,4000) ); 
    end if;
    -- CONTENT_TYPE (default)
    if nvl(:old.content_type, '0') != nvl(:new.content_type,'0') then 
        insert into wc_h_history (table_name, component_rowkey, component_id, column_name, old_value, new_value) values 
            ('UP_DOWN_FILES', null, :new.id, 'CONTENT_TYPE', substr(:old.content_type,0,4000), substr(:new.content_type,0,4000) ); 
    end if;
    -- SOURCE_DESC (default)
    if nvl(:old.source_desc, '0') != nvl(:new.source_desc,'0') then 
        insert into wc_h_history (table_name, component_rowkey, component_id, column_name, old_value, new_value) values 
            ('UP_DOWN_FILES', null, :new.id, 'SOURCE_DESC', substr(:old.source_desc,0,4000), substr(:new.source_desc,0,4000) ); 
    end if;
    -- MIME_TYPE (default)
    if nvl(:old.mime_type, '0') != nvl(:new.mime_type,'0') then 
        insert into wc_h_history (table_name, component_rowkey, component_id, column_name, old_value, new_value) values 
            ('UP_DOWN_FILES', null, :new.id, 'MIME_TYPE', substr(:old.mime_type,0,4000), substr(:new.mime_type,0,4000) ); 
    end if;
    -- UPLOAD_DATE (date/timestamp)
    if (:old.upload_date is null and :new.upload_date is not null) or 
        (:old.upload_date is not null and :new.upload_date is null) or 
        (:old.upload_date != :new.upload_date) then 
        insert into wc_h_history (table_name, component_rowkey, component_id, column_name, old_value, new_value) values 
            ('UP_DOWN_FILES', null, :new.id, 'UPLOAD_DATE', to_char(:old.upload_date, 'DD-MON-YYYY HH24:MI:SS'), to_char(:new.upload_date, 'DD-MON-YYYY HH24:MI:SS') );
    end if;
    -- PROCESS_FLAG (default)
    if nvl(:old.process_flag, '0') != nvl(:new.process_flag,'0') then 
        insert into wc_h_history (table_name, component_rowkey, component_id, column_name, old_value, new_value) values 
            ('UP_DOWN_FILES', null, :new.id, 'PROCESS_FLAG', substr(:old.process_flag,0,4000), substr(:new.process_flag,0,4000) ); 
    end if;
    -- ERROR_DESC (default)
    if nvl(:old.error_desc, '0') != nvl(:new.error_desc,'0') then 
        insert into wc_h_history (table_name, component_rowkey, component_id, column_name, old_value, new_value) values 
            ('UP_DOWN_FILES', null, :new.id, 'ERROR_DESC', substr(:old.error_desc,0,4000), substr(:new.error_desc,0,4000) ); 
    end if;
    commit;
end au_dw_media_up_down_files;
/
alter trigger au_dw_media_up_down_files enable
/




