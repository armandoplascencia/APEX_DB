D:\AAP_LAPTOP_2017\tellydbo\tellydbo_frameworks
--select * from dba_sys_privs where grantee = 'MISO';

grant create database link        to MISO;
grant create sequence             to MISO;
grant DEBUG ANY PROCEDURE         to MISO;
grant create public synonym       to MISO;
grant administer database trigger to MISO;
grant create trigger              to MISO;
grant select any table            to MISO;
grant create table                to MISO;
grant DEBUG CONNECT SESSION       to MISO;
grant create procedure            to MISO;
grant drop public synonym         to MISO;

--select * from dba_role_privs where grantee = 'MISO';
grant connect                     to MISO;
grant select_catalog_role         to MISO; 
grant execute_catalog_role        to MISO; 
grant delete_catalog_role         to MISO; 
grant create view                 to MISO;

grant select on SYS.user_history$ to MISO;
grant select on SYS.user$         to MISO;

with abc as (select * from dba_tab_privs where grantee = 'MISO' and owner = 'SYS')
select 'grant '||privilege||' on '||owner||'.'||table_name||' to MISO;' from abc;
grant ADMINISTER SQL MANAGEMENT OBJECT to MISO;                
grant EXECUTE   on SYS.DBMS_METADATA          to MISO;       
grant EXECUTE   on SYS.DBMS_MONITOR           to MISO;        
grant EXECUTE   on SYS.DBMS_SYSTEM            to MISO;       
grant execute   on dbms_metadata              to MISO;
grant execute   on DBMS_SCHED_EXPORT_CALLOUTS to MISO;
grant execute   on DBMS_SCHED_job_export      to MISO;
grant execute   on dbms_debug_jdwp            to MISO;
grant execute   on dbms_sys_error             to MISO;
grant execute   on dbms_metadata              to MISO;
grant execute on DBMS_FEATURE_PARTITION_SYSTEM to MISO;
grant execute on DBMS_FEATURE_SFENCRYPT_SYS to MISO;
grant execute on DBMS_METADATA to MISO;
grant execute on DBMS_METADATA_DIFF to MISO;
grant execute on DBMS_CDC_SYS_IPUBLISH to MISO;
grant execute on DBMS_DEBUG_JDWP_CUSTOM to MISO;
grant execute on DBMS_DEBUG_VC2COLL to MISO;
grant execute on DBMS_DEFER_INTERNAL_SYS to MISO;
grant execute on DBMS_FEATURE_SFCOMPRESS_SYS to MISO;
grant execute on DBMS_AQADM_SYSCALLS to MISO;
grant execute on DBMS_DEBUG to MISO;
grant execute on DBMS_DEFER_SYS_PART1 to MISO;
grant execute on DBMS_FEATURE_SECUREFILES_SYS to MISO;
grant execute on DBMS_AQ_SYS_EXP_ACTIONS to MISO;
grant execute on DBMS_AQ_SYS_IMP_INTERNAL to MISO;
grant execute on DBMS_DEBUG_JDWP to MISO;
grant execute on DBMS_DEFER_SYS to MISO;
grant execute on DBMS_METADATA_BUILD to MISO;
grant execute on DBMS_SYS_ERROR to MISO;
grant execute on DBMS_SYS_SQL to MISO;
grant execute on DBMS_FEATURE_SFDEDUP_SYS to MISO;
grant execute on DBMS_METADATA_DPBUILD to MISO;
grant execute on DBMS_SYSTEM to MISO;
grant execute on DBMS_TRANSACTION_INTERNAL_SYS to MISO;
grant execute on DBMSZEXP_SYSPKGGRNT to MISO;
grant execute on DBMS_AQADM_SYS to MISO;
grant execute on DBMS_AQ_SYS_EXP_INTERNAL to MISO;
grant execute on DBMS_HS_PARALLEL_METADATA to MISO;
grant execute on DBMS_METADATA_INT to MISO;
grant execute on DBMS_METADATA_UTIL to MISO;
grant execute on DBMS_REGISTRY_SYS to MISO;
grant execute on sys.DBMSZEXP_SYSPKGGRNT to MISO;
grant execute on sys.DBMSZEXP_SYSPKGGRNT to MISO;
grant execute on sys.DBMS_AQ_EXP_CMT_TIME_TABLES to MISO;
grant execute on sys.DBMS_AQ_EXP_CMT_TIME_TABLES to MISO;
grant execute on sys.DBMS_AQ_EXP_DEQUEUELOG_TABLES to MISO;
grant execute on sys.DBMS_AQ_EXP_DEQUEUELOG_TABLES to MISO;
grant execute on sys.DBMS_AQ_EXP_HISTORY_TABLES to MISO;
grant execute on sys.DBMS_AQ_EXP_HISTORY_TABLES to MISO;
grant execute on sys.DBMS_AQ_EXP_INDEX_TABLES to MISO;
grant execute on sys.DBMS_AQ_EXP_INDEX_TABLES to MISO;
grant execute on sys.DBMS_AQ_EXP_QUEUES to MISO;
grant execute on sys.DBMS_AQ_EXP_QUEUES to MISO;
grant execute on sys.DBMS_AQ_EXP_QUEUE_TABLES to MISO;
grant execute on sys.DBMS_AQ_EXP_QUEUE_TABLES to MISO;
grant execute on sys.DBMS_AQ_EXP_SIGNATURE_TABLES to MISO;
grant execute on sys.DBMS_AQ_EXP_SIGNATURE_TABLES to MISO;
grant execute on sys.DBMS_AQ_EXP_SUBSCRIBER_TABLES to MISO;
grant execute on sys.DBMS_AQ_EXP_SUBSCRIBER_TABLES to MISO;
grant execute on sys.DBMS_AQ_EXP_TIMEMGR_TABLES to MISO;
grant execute on sys.DBMS_AQ_EXP_TIMEMGR_TABLES to MISO;
grant execute on sys.DBMS_AQ_EXP_ZECURITY to MISO;
grant execute on sys.DBMS_AQ_EXP_ZECURITY to MISO;
grant execute on sys.DBMS_AQ_SYS_EXP_ACTIONS to MISO;
grant execute on sys.DBMS_AQ_SYS_EXP_ACTIONS to MISO;
grant execute on sys.DBMS_AQ_SYS_EXP_INTERNAL to MISO;
grant execute on sys.DBMS_AQ_SYS_EXP_INTERNAL to MISO;
grant execute on sys.DBMS_AUTO_TASK_EXPORT to MISO;
grant execute on sys.DBMS_AUTO_TASK_EXPORT to MISO;
grant execute on sys.DBMS_AW_EXP to MISO;
grant execute on sys.DBMS_AW_EXP to MISO;
grant execute on sys.DBMS_CDC_EXPDP to MISO;
grant execute on sys.DBMS_CDC_EXPDP to MISO;
grant execute on sys.DBMS_CDC_EXPVDP to MISO;
grant execute on sys.DBMS_CDC_EXPVDP to MISO;
grant execute on sys.DBMS_CUBE_EXP to MISO;
grant execute on sys.DBMS_CUBE_EXP to MISO;
grant execute on sys.DBMS_DM_EXP_INTERNAL to MISO;
grant execute on sys.DBMS_DM_EXP_INTERNAL to MISO;
grant execute on sys.DBMS_DM_MODEL_EXP to MISO;
grant execute on sys.DBMS_DM_MODEL_EXP to MISO;
grant execute on sys.DBMS_EXPORT_EXTENSION to MISO;
grant execute on sys.DBMS_EXPORT_EXTENSION to MISO;
grant execute on sys.DBMS_FILE_GROUP_EXP to MISO;
grant execute on sys.DBMS_FILE_GROUP_EXP to MISO;
grant execute on sys.DBMS_FILE_GROUP_EXP_INTERNAL to MISO;
grant execute on sys.DBMS_FILE_GROUP_EXP_INTERNAL to MISO;
grant execute on sys.DBMS_JVM_EXP_PERMS to MISO;
grant execute on sys.DBMS_JVM_EXP_PERMS to MISO;
grant execute on sys.DBMS_LOGREP_EXP to MISO;
grant execute on sys.DBMS_LOGREP_EXP to MISO;
grant execute on sys.DBMS_REFRESH_EXP_LWM to MISO;
grant execute on sys.DBMS_REFRESH_EXP_LWM to MISO;
grant execute on sys.DBMS_REFRESH_EXP_SITES to MISO;
grant execute on sys.DBMS_REFRESH_EXP_SITES to MISO;
grant execute on sys.DBMS_REPCAT_EXP to MISO;
grant execute on sys.DBMS_REPCAT_EXP to MISO;
grant execute on sys.DBMS_REPCAT_RGT_EXP to MISO;
grant execute on sys.DBMS_REPCAT_RGT_EXP to MISO;
grant execute on sys.DBMS_RMGR_GROUP_EXPORT to MISO;
grant execute on sys.DBMS_RMGR_GROUP_EXPORT to MISO;
grant execute on sys.DBMS_RMGR_PACT_EXPORT to MISO;
grant execute on sys.DBMS_RMGR_PACT_EXPORT to MISO;
grant execute on sys.DBMS_RMGR_PLAN_EXPORT to MISO;
grant execute on sys.DBMS_RMGR_PLAN_EXPORT to MISO;
grant execute on sys.DBMS_RULE_EXP_EC_INTERNAL to MISO;
grant execute on sys.DBMS_RULE_EXP_EC_INTERNAL to MISO;
grant execute on sys.DBMS_RULE_EXP_EV_CTXS to MISO;
grant execute on sys.DBMS_RULE_EXP_EV_CTXS to MISO;
grant execute on sys.DBMS_RULE_EXP_RL_INTERNAL to MISO;
grant execute on sys.DBMS_RULE_EXP_RL_INTERNAL to MISO;
grant execute on sys.DBMS_RULE_EXP_RS_INTERNAL to MISO;
grant execute on sys.DBMS_RULE_EXP_RS_INTERNAL to MISO;
grant execute on sys.DBMS_RULE_EXP_RULES to MISO;
grant execute on sys.DBMS_RULE_EXP_RULES to MISO;
grant execute on sys.DBMS_RULE_EXP_RULE_SETS to MISO;
grant execute on sys.DBMS_RULE_EXP_RULE_SETS to MISO;
grant execute on sys.DBMS_RULE_EXP_UTL to MISO;
grant execute on sys.DBMS_RULE_EXP_UTL to MISO;
grant execute on sys.DBMS_RULE_EXP_UTLI to MISO;
grant execute on sys.DBMS_RULE_EXP_UTLI to MISO;
grant execute on sys.DBMS_SCHED_ATTRIBUTE_EXPORT to MISO;
grant execute on sys.DBMS_SCHED_ATTRIBUTE_EXPORT to MISO;
grant execute on sys.DBMS_SCHED_CHAIN_EXPORT to MISO;
grant execute on sys.DBMS_SCHED_CHAIN_EXPORT to MISO;
grant execute on sys.DBMS_SCHED_CLASS_EXPORT to MISO;
grant execute on sys.DBMS_SCHED_CLASS_EXPORT to MISO;
grant execute on sys.DBMS_SCHED_CREDENTIAL_EXPORT to MISO;
grant execute on sys.DBMS_SCHED_CREDENTIAL_EXPORT to MISO;
grant execute on sys.DBMS_SCHED_EXPORT_CALLOUTS to MISO;
grant execute on sys.DBMS_SCHED_EXPORT_CALLOUTS to MISO;
grant execute on sys.DBMS_SCHED_FILE_WATCHER_EXPORT to MISO;
grant execute on sys.DBMS_SCHED_FILE_WATCHER_EXPORT to MISO;
grant execute on sys.DBMS_SCHED_JOB_EXPORT to MISO;
grant execute on sys.DBMS_SCHED_JOB_EXPORT to MISO;
grant execute on sys.DBMS_SCHED_MAIN_EXPORT to MISO;
grant execute on sys.DBMS_SCHED_MAIN_EXPORT to MISO;
grant execute on sys.DBMS_SCHED_PROGRAM_EXPORT to MISO;
grant execute on sys.DBMS_SCHED_PROGRAM_EXPORT to MISO;
grant execute on sys.DBMS_SCHED_SCHEDULE_EXPORT to MISO;
grant execute on sys.DBMS_SCHED_SCHEDULE_EXPORT to MISO;
grant execute on sys.DBMS_SCHED_WINDOW_EXPORT to MISO;
grant execute on sys.DBMS_SCHED_WINDOW_EXPORT to MISO;
grant execute on sys.DBMS_SCHED_WINGRP_EXPORT to MISO;
grant execute on sys.DBMS_SCHED_WINGRP_EXPORT to MISO;
grant execute on sys.DBMS_SERVER_ALERT_EXPORT to MISO;
grant execute on sys.DBMS_SERVER_ALERT_EXPORT to MISO;
grant execute on sys.DBMS_SUM_RWEQ_EXPORT to MISO;
grant execute on sys.DBMS_SUM_RWEQ_EXPORT to MISO;
grant execute on sys.DBMS_SUM_RWEQ_EXPORT_INTERNAL to MISO;
grant execute on sys.DBMS_SUM_RWEQ_EXPORT_INTERNAL to MISO;  
                                              
grant SELECT    on SYS.DBA_ROLE_PRIVS         to MISO;       
grant SELECT    on SYS.DBA_TS_QUOTAS          to MISO;        
grant SELECT    on SYS.DBA_USERS              to MISO;            
grant SELECT    on SYS.V_$SGASTAT             to MISO;           
grant SELECT    on SYS.V_$SESSION             to MISO;           
grant SELECT    on SYS.V_$INSTANCE            to MISO;          
grant SELECT    on SYS.DBA_SYS_PRIVS          to MISO;        
grant SELECT    on SYS.DBA_TAB_PRIVS          to MISO;        
grant SELECT    on SYS.DBA_OBJECTS            to MISO;          
grant SELECT    on SYS.DBA_PROFILES           to MISO;         
grant SELECT    on SYS.DBA_TABLES             to MISO;           
grant SELECT    on SYS.DBA_SEGMENTS           to MISO;         
grant SELECT    on SYS.DBA_DATA_FILES         to MISO;       
grant SELECT    on SYS.DBA_TAB_SUBPARTITIONS  to MISO;
grant SELECT    on SYS.V_$DATABASE            to MISO;          
grant SELECT    on SYS.DBA_TAB_PARTITIONS     to MISO;   


=========
select object_name from dba_objects where object_name like '%META%' and owner = 'MISO';

=========

create sequence  MISO.my_metadata_user_seq;

rem drop   table MISO.my_metadata_user;

create table MISO.my_metadata_user (
my_metadata_user_id                                NUMBER(15) primary key ,
ORIGINAL_MD                                        clob,
MD                                                 CLOB,
MD_HTML                                            CLOB,
MDSIZE                                             NUMBER,
OWNER                                              VARCHAR2(30),
ONAME                                              VARCHAR2(100),
OTYPE                                              VARCHAR2(100),
FIRST_200                                          VARCHAR2(200),
TOKEN1                                             VARCHAR2(100),
TOKEN2                                             VARCHAR2(100),
TOKEN3                                             VARCHAR2(100),
TOKEN4                                             VARCHAR2(100),
TOKEN5                                             VARCHAR2(100),
TOKEN6                                             VARCHAR2(100),
TOKEN7                                             VARCHAR2(100),
TOKEN8                                             VARCHAR2(100),
TOKEN9                                             VARCHAR2(100),
TOKEN10                                            VARCHAR2(100),
CREATED_DATE                                       DATE,
DONE_FLAG                                          VARCHAR2(1),
instance_name                                      VARCHAR2(100 BYTE)
 )
/

CREATE OR REPLACE TRIGGER MISO.MY_METADATA_USER_TRG
 BEFORE  INSERT ON        MISO.MY_METADATA_USER
REFERENCING NEW AS NEW OLD AS OLD
 FOR EACH ROW
DECLARE
V_SEQ_OF       NUMBER := 0;
BEGIN
----------------------------------------
 IF (NVL(:NEW.MY_METADATA_USER_ID, 0) < 1 ) --IF RECID IS NULL GO THROUGHT THIS TEST !!
  THEN
     BEGIN
            SELECT MISO.MY_METADATA_USER_SEQ.NEXTVAL INTO V_SEQ_OF FROM DUAL;
            :NEW.MY_METADATA_USER_ID := V_SEQ_OF;
      EXCEPTION WHEN OTHERS THEN
            :NEW.MY_METADATA_USER_ID := 0;
            --- SETTING TO 0 WILL CAUSE FAILURE TO BE RAISED SO PERFORM ERROR HANDLING AFTER THE FACT!!
    END;
  END IF;
EXCEPTION WHEN OTHERS THEN
 :NEW.MY_METADATA_USER_ID := 0;
END;
/

REM drop sequence   MISO.my_metadata_seq;             
rem DROP   TABLE    MISO.my_metadata;

create sequence MISO.my_metadata_seq;

CREATE TABLE    MISO.my_metadata (
               my_metadata_id number (15),
               original_md    CLOB ,
               md             CLOB ,
               md_html        CLOB ,               
               mdsize         number,
               owner          varchar2(30),
               oname          varchar2(30),
               otype          varchar2(30),
               first_200      varchar2(200),
               token1         varchar2(100),
               token2         varchar2(100),
               token3         varchar2(100),
               token4         varchar2(100),
               token5         varchar2(100),
               token6         varchar2(100),
               token7         varchar2(100),
               token8         varchar2(100),
               token9         varchar2(100),
               token10        varchar2(100),
               created_date   date default sysdate,
               done_flag      varchar2(1) default 'N'               
               );

rem  insert into sequence_table_map (table_name, sequence_name) values ('MY_METADATA','MY_METADATA_SEQ');

create index MISO.my_metadata_owner_idx on MISO.my_metadata (owner);
create index MISO.my_metadata_otype_idx on MISO.my_metadata (otype);
create index MISO.my_metadata_dflag_idx on MISO.my_metadata (done_flag);
alter table                                   MISO.my_metadata add constraint my_metadata_pk primary key  (my_metadata_id);

rem drop trigger MISO.MY_METADATA_TRG;

CREATE OR REPLACE TRIGGER MISO.MY_METADATA_TRG
 BEFORE  INSERT ON        MISO.MY_METADATA
REFERENCING NEW AS NEW OLD AS OLD
 FOR EACH ROW
DECLARE
V_SEQ_OF       NUMBER := 0;
BEGIN
----------------------------------------
 IF (NVL(:NEW.MY_METADATA_ID, 0) < 1 ) --IF RECID IS NULL GO THROUGHT THIS TEST !!
  THEN
     BEGIN
            SELECT MISO.MY_METADATA_SEQ.NEXTVAL INTO V_SEQ_OF FROM DUAL;
            :NEW.MY_METADATA_ID := V_SEQ_OF;
      EXCEPTION WHEN OTHERS THEN
            :NEW.MY_METADATA_ID := 0;
            --- SETTING TO 0 WILL CAUSE FAILURE TO BE RAISED SO PERFORM ERROR HANDLING AFTER THE FACT!!
    END;
  END IF;
EXCEPTION WHEN OTHERS THEN
 :NEW.MY_METADATA_ID := 0;
END;
/

 desc  MISO.clobReplace
 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
create or replace FUNCTION MISO.clobReplace
( p_clob          IN CLOB,
  p_what          IN VARCHAR2,
  p_with          IN VARCHAR2 ) RETURN CLOB IS
  c_whatLen       CONSTANT PLS_INTEGER := LENGTH(p_what);
  c_withLen       CONSTANT PLS_INTEGER := LENGTH(p_with);
  l_return        CLOB;
  l_segment       CLOB;
  l_pos           PLS_INTEGER := 1-c_withLen;
  l_offset        PLS_INTEGER := 1;
BEGIN
  IF p_what IS NOT NULL THEN
    WHILE l_offset < DBMS_LOB.GETLENGTH(p_clob) LOOP
      l_segment := DBMS_LOB.SUBSTR(p_clob,32767,l_offset);
      LOOP
        l_pos := DBMS_LOB.INSTR(l_segment,p_what,l_pos+c_withLen);
        EXIT WHEN (NVL(l_pos,0) = 0) OR (l_pos = 32767-c_withLen);
        l_segment := TO_CLOB( DBMS_LOB.SUBSTR(l_segment,l_pos-1)
                            ||p_with
                            ||DBMS_LOB.SUBSTR(l_segment,32767-c_whatLen-l_pos-c_whatLen+1,l_pos+c_whatLen));
      END LOOP;
      l_return := l_return||l_segment;
      l_offset := l_offset + 32767 - c_whatLen;
    END LOOP;
  END IF;
  RETURN(l_return);
END;
/
 
---create or replace view MISO.possible_hardcoded_searches (sqltext, oldsql, newsql) as 
---with abc as (
---         select chr(39)||' '||'MAS'        ||'.'||chr(39) oldsql, chr(39)||'^'||'MAS'        ||'#'||chr(39) newsql from dual union all
---         select chr(39)||' '||'FAM'        ||'.'||chr(39) oldsql, chr(39)||'^'||'FAM'        ||'#'||chr(39) newsql from dual union all
---         select chr(39)||' '||'BIN'        ||'.'||chr(39) oldsql, chr(39)||'^'||'BIN'        ||'#'||chr(39) newsql from dual union all
---         select chr(39)||' '||'IM'         ||'.'||chr(39) oldsql, chr(39)||'^'||'IM'         ||'#'||chr(39) newsql from dual union all
---         select chr(39)||' '||'PERCEPTION3'||'.'||chr(39) oldsql, chr(39)||'^'||'PERCEPTION3'||'#'||chr(39) newsql from dual union all
---         select chr(39)||' '||'SECURITY'   ||'.'||chr(39) oldsql, chr(39)||'^'||'SECURITY'   ||'#'||chr(39) newsql from dual union all
---         select chr(39)||' '||'WEBDBA1'    ||'.'||chr(39) oldsql, chr(39)||'^'||'WEBDBA1'    ||'#'||chr(39) newsql from dual union all
---         select chr(39)||' '||'FSH'        ||'.'||chr(39) oldsql, chr(39)||'^'||'FSH'        ||'#'||chr(39) newsql from dual 
---union all
---         select chr(39)||' '||'mas'        ||'.'||chr(39) oldsql, chr(39)||'^'||'mas'        ||'#'||chr(39) newsql from dual union all
---         select chr(39)||' '||'fam'        ||'.'||chr(39) oldsql, chr(39)||'^'||'fam'        ||'#'||chr(39) newsql from dual union all
---         select chr(39)||' '||'bin'        ||'.'||chr(39) oldsql, chr(39)||'^'||'bin'        ||'#'||chr(39) newsql from dual union all
---         select chr(39)||' '||'im'         ||'.'||chr(39) oldsql, chr(39)||'^'||'im'         ||'#'||chr(39) newsql from dual union all
---         select chr(39)||' '||'perception3'||'.'||chr(39) oldsql, chr(39)||'^'||'perception3'||'#'||chr(39) newsql from dual union all
---         select chr(39)||' '||'security'   ||'.'||chr(39) oldsql, chr(39)||'^'||'security'   ||'#'||chr(39) newsql from dual union all
---         select chr(39)||' '||'webdba1'    ||'.'||chr(39) oldsql, chr(39)||'^'||'webdba1'    ||'#'||chr(39) newsql from dual union all
---         select chr(39)||' '||'fsh'        ||'.'||chr(39) oldsql, chr(39)||'^'||'fsh'        ||'#'||chr(39) newsql from dual 
---         )
--- select 'update MISO.my_metadata set md_html = clobreplace(md,'||oldsql||','||newsql||');' sqltext, oldsql, newsql
---  from abc;
---

 drop index   MISO.my_context_index_MY_META force;
 
 CREATE INDEX MISO.my_context_index_MY_META on MISO.my_metadata(md_html) indextype is ctxsys.context 
  parameters(' sync (on commit) FILTER CTXSYS.NULL_FILTER SECTION GROUP CTXSYS.HTML_SECTION_GROUP ')
 /
  
--  drop   table MISO.V_MD_HTML;
--  create table MISO.V_MD_HTML (query_id number primary key, document clob);
--  
--  desc MISO.mark_code_with_html_tab
--  
--  create or replace procedure MISO.mark_code_with_html_tab (v_query_id in number, v_keywords in varchar2) 
--  as  
--    l_keywords varchar2(400) := 
--    '^MAS# OR '||
--    '^FAM# OR '||
--    '^BIN# OR '||
--    '^IM# OR '||
--    '^PERCEPTION3# OR '||
--    '^SECURITY# OR '||
--    '^WEBDBA1# OR '||
--    '^fsh# OR '||
--    '^mas# OR '||
--    '^fam# OR '||
--    '^bin# OR '||
--    '^im# OR '||
--    '^perception3# OR '||
--    '^security# OR '||
--    '^webdba1# OR '||
--    '^fsh#';
--    l_query_id  NUMBER := 20680;
--  BEGIN
--  	if (v_keywords is null)
--  	then
--  	  null;
--  	else
--  	  l_keywords := v_keywords;
--  	end if;
--  	
--  	if (v_query_id is null)
--  	then
--  	  null;
--  	else
--  	  l_query_id := v_query_id;
--  	end if;
--  	
--    -- htp.p('<html><title>HTML version with highlighted terms</title>');
--    -- htp.p('<body bgcolor="#ffffff">');
--    -- htp.p('<b>HTML version with highlighted terms</b>');
--    FOR cur_rec IN (SELECT SCORE(1) score, my_metadata_id, md, md_html
--                    FROM   MISO.my_metadata
--                    WHERE  CONTAINS(md, l_keywords, 1) > 0
--                     and   my_metadata_id = l_query_id
--                    ORDER BY SCORE(1) DESC)
--    LOOP
--      dbms_output.put_line('id='||to_char(cur_rec.my_metadata_id)||' searched=>'||l_keywords||'<=');
--       ctx_doc.markup(
--        index_name=> 'MY_CONTEXT_INDEX_MY_META', /*VARCHAR2,                         */ 
--        textkey=>cur_rec.my_metadata_id        , /*VARCHAR2,                         */
--        text_query=>l_keywords                 , /*VARCHAR2,                         */
--        restab=>'V_MD_HTML'                    , /*VARCHAR2,                         */
--        query_id=>cur_rec.my_metadata_id       , /*NUMBER    DEFAULT 0,              */
--        plaintext=>FALSE                       , /*BOOLEAN   DEFAULT FALSE,          */
--        tagset=>'HTML_NAVIGATE'                , /*VARCHAR2  DEFAULT 'TEXT_DEFAULT', */
--        starttag=> '<i><font color=red>'       , /*VARCHAR2  DEFAULT NULL,           */
--        endtag=>   '</font></i>'               , /*VARCHAR2  DEFAULT NULL,           */
--        prevtag=>  NULL                        , /*VARCHAR2  DEFAULT NULL,           */
--        nexttag=>  NULL                          /*VARCHAR2  DEFAULT NULL);          */
--         );
--    end loop;
--  exception when others then raise;  
--  end;
--  /
--   

create sequence               MISO.my_dbms_output_seq;

create GLOBAL TEMPORARY TABLE MISO.my_dbms_output_tbl 
 (
  pk_id      number primary key, 
  text_out   varchar2(4000), 
  group_name varchar2(100) 
  ) 
    ON COMMIT preserve ROWS;
    
create table make_perm_my_dbms_output_tbl as select * from MISO.my_dbms_output_tbl;
   

create or replace trigger MISO.trg_pk_my_dbms_output_tbl
before insert on MISO.my_dbms_output_tbl
for each row
begin
     select my_dbms_output_seq.nextval into :new.pk_id from dual;
end;
/   

CREATE OR REPLACE PROCEDURE MISO.my_dbms_output (p_str IN VARCHAR2, v_groupname in varchar2)
  IS
   l_str     varchar2(32676)  := p_str;
   l_instr   NUMBER;
   v_hold_cur varchar2(4000) := '';
v_code          number := 0;          ---->:= SQLCODE;
v_errm          varchar2(4000) := ''; ---->:= SUBSTR(SQLERRM, 1 , 64);
v_handleof_loc   varchar2(400)  := 'MISO.my_dbms_output';   ---->'procedure print_clob';
 PRAGMA AUTONOMOUS_TRANSACTION;   
BEGIN
   LOOP
      EXIT WHEN l_str IS NULL;
      l_instr := INSTR(TRANSLATE(SUBSTR(l_str,1,250),chr(10)||chr(32),chr(44)||chr(44)),chr(44),-1);
      IF l_instr = 0 OR LENGTH(l_str) <= 250 THEN
         l_instr := 250;
      END IF;
      v_hold_cur := SUBSTR(l_str,1,l_instr);

      insert into MISO.my_dbms_output_tbl (text_out, group_name) values (v_hold_cur, v_groupname);
      l_str := SUBSTR(l_str,l_instr+1);
   END LOOP;
 commit;  
exception when others then
          v_code := SQLCODE;
         v_errm := SUBSTR(SQLERRM, 1 , 4000);
         DBMS_OUTPUT.PUT_LINE('WHO=>'||v_handleof_loc||' Error_code=>' || v_code || ' Error_msg=>' || v_errm);
         insert into MISO.my_dbms_output_tbl (text_out, group_name) values ('WHO=>'||v_handleof_loc||' Error_code=>' || v_code || ' Error_msg=>' || v_errm , v_groupname);
END;
/
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


desc MISO.get_schema_md4 

--------------------------------------------------------
--  DDL for Procedure GET_SCHEMA_MD4
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "MISO"."GET_SCHEMA_MD4" (v_schema_extract in varchar2, v_options_false in varchar2)
authid current_user
 as
 -- Define local variables.
---loop every 300 rows send output.
gbl_loop_warn_aap_temp number := 0;
    loop_warn_aap_temp number := 0;
h               NUMBER; -- handle returned by OPEN
th              NUMBER; -- handle returned by ADD_TRANSFORM
doc             CLOB; -- metadata is returned in a CLOB
v_doc           CLOB; -- metadata is returned in a CLOB
v_wip_clob      clob;
pk_i            number;
timesthru       number := 0;
v_first_200     varchar2(400);
hold_first_200  number;
holdsizeof      number;
v_token1        MISO.my_metadata.token1%type;
v_token2        MISO.my_metadata.token2%type;
v_token3        MISO.my_metadata.token3%type;
v_token4        MISO.my_metadata.token4%type;
v_token5        MISO.my_metadata.token5%type;
v_token6        MISO.my_metadata.token6%type;
v_token7        MISO.my_metadata.token7%type;
v_token8        MISO.my_metadata.token8%type;
v_token9        MISO.my_metadata.token9%type;
v_token10       MISO.my_metadata.token10%type;
ignoreit        varchar2(100)  := 'sys.dbms_logrep_imp.instantiate_schema';
v_code          number := 0;          ---->:= SQLCODE;
v_errm          varchar2(4000) := ''; ---->:= SUBSTR(SQLERRM, 1 , 64);
v_handleof_loc   varchar2(400)  := ''; ---->'procedure print_clob';
v_handleof_main  varchar2(400)  := 'MAIN'; ---->'procedure print_clob';
/*************************************/
--exception when others then
--         v_code := SQLCODE;
--         v_errm := SUBSTR(SQLERRM, 1 , 4000);
--         DBMS_OUTPUT.PUT_LINE('WHO=>'||v_handleof_loc||' Error_code=>' || v_code || ' Error_msg=>' || v_errm);
--

 PROCEDURE my_dbms_output (v_groupname in varchar2, p_str IN VARCHAR2 )
  IS
   l_str     varchar2(32676)  := p_str;
   l_instr   NUMBER;
   v_hold_cur varchar2(4000) := '';
v_code          number := 0;          ---->:= SQLCODE;
v_errm          varchar2(4000) := ''; ---->:= SUBSTR(SQLERRM, 1 , 64);
v_handleof_loc   varchar2(400)  := 'MISO.my_dbms_output';   ---->'procedure print_clob';
 PRAGMA AUTONOMOUS_TRANSACTION;
BEGIN
loop_warn_aap_temp :=  loop_warn_aap_temp + 1;

if (	loop_warn_aap_temp > 101 or  instr(p_str,'META') > 0 ) 
then
  gbl_loop_warn_aap_temp := gbl_loop_warn_aap_temp + loop_warn_aap_temp;
      loop_warn_aap_temp := 0;

 begin
  insert into make_perm_my_dbms_output_tbl (pk_id, text_out, group_name) (select * from MISO.my_dbms_output_tbl);
  commit;
  delete from  MISO.my_dbms_output_tbl;
  commit;
  dbms_output.put_line('GBCNTR='||to_char(gbl_loop_warn_aap_temp )||' moved rows into make_perm_my_dbms_output_tbl ');
 exception when others
  then null;
 end;


end if;

   LOOP
      EXIT WHEN l_str IS NULL;
      l_instr := INSTR(TRANSLATE(SUBSTR(l_str,1,250),chr(10)||chr(32),chr(44)||chr(44)),chr(44),-1);
      IF l_instr = 0 OR LENGTH(l_str) <= 250 THEN
         l_instr := 250;
      END IF;
      v_hold_cur := SUBSTR(l_str,1,l_instr);

      insert into MISO.my_dbms_output_tbl (text_out, group_name) values (v_hold_cur, v_groupname);
      l_str := SUBSTR(l_str,l_instr+1);
   END LOOP;
 commit;
exception when others then
          v_code := SQLCODE;
         v_errm := SUBSTR(SQLERRM, 1 , 4000);
         ---DBMS_OUTPUT.PUT_LINE('WHO=>'||v_handleof_loc||' Error_code=>' || v_code || ' Error_msg=>' || v_errm);
         insert into MISO.my_dbms_output_tbl (text_out, group_name) values ('WHO=>'||v_handleof_loc||' Error_code=>' || v_code || ' Error_msg=>' || v_errm , v_groupname);
END;
--------------------------------------------------------------------------------

procedure print_clob( p_clob in clob )
as
     l_offset number default 1;
     stop_at         number := 132;
  newtimesthru number := 5;
begin
v_handleof_loc := 'procedure print_clob';
   loop
  newtimesthru := newtimesthru -1;
     exit when l_offset > dbms_lob.getlength(p_clob) or
          newtimesthru = 0;
     my_dbms_output('GET_SCHEMA_MD4', dbms_lob.substr( p_clob, stop_at, l_offset ) );
     l_offset := l_offset + stop_at;
   end loop;
exception when others then
         v_code := SQLCODE;
         v_errm := SUBSTR(SQLERRM, 1 , 4000);
         my_dbms_output('GET_SCHEMA_MD4','META WHO=>'||v_handleof_loc||' Error_code=>' || v_code || ' Error_msg=>' || v_errm);
end;
/*************************************/
FUNCTION clobReplace
( p_clob          IN CLOB,
  p_what          IN VARCHAR2,
  p_with          IN VARCHAR2 ) RETURN CLOB IS
  c_whatLen       CONSTANT PLS_INTEGER := LENGTH(p_what);
  c_withLen       CONSTANT PLS_INTEGER := LENGTH(p_with);
  l_return        CLOB;
  l_segment       CLOB;
  l_pos           PLS_INTEGER := 1-c_withLen;
  l_offset        PLS_INTEGER := 1;
BEGIN
v_handleof_loc := 'FUNCTION clobReplace';
  IF p_what IS NOT NULL THEN
    WHILE l_offset < DBMS_LOB.GETLENGTH(p_clob) LOOP
      l_segment := DBMS_LOB.SUBSTR(p_clob,32767,l_offset);
      LOOP
        l_pos := DBMS_LOB.INSTR(l_segment,p_what,l_pos+c_withLen);
        EXIT WHEN (NVL(l_pos,0) = 0) OR (l_pos = 32767-c_withLen);
        l_segment := TO_CLOB( DBMS_LOB.SUBSTR(l_segment,l_pos-1)
                            ||p_with
                            ||DBMS_LOB.SUBSTR(l_segment,32767-c_whatLen-l_pos-c_whatLen+1,l_pos+c_whatLen));
      END LOOP;
      l_return := l_return||l_segment;
      l_offset := l_offset + 32767 - c_whatLen;
    END LOOP;
  END IF;
  RETURN(l_return);
exception when others then
         v_code := SQLCODE;
         v_errm := SUBSTR(SQLERRM, 1 , 4000);
         my_dbms_output('GET_SCHEMA_MD4','META WHO=>'||v_handleof_loc||' Error_code=>' || v_code || ' Error_msg=>' || v_errm);
END;
/************************************/
function get_token (
    the_list  varchar2,
    the_index number,
    delim     varchar2
)
    return varchar2
is
    start_pos number;
    end_pos   number;
    v_delim   varchar2(10);
begin
v_handleof_loc := 'function get_token';
      if (delim is null)
       then v_delim := ' ';
       else v_delim := delim;
      end if;

    if the_index = 1 then
        start_pos := 1;
    elsif the_index < 0 then
        start_pos := instr(the_list, v_delim, -1, abs(the_index)) + 1;
    else
        start_pos := instr(the_list, v_delim, 1, the_index - 1);
        if start_pos = 0 then
            return null;
        else
            start_pos := start_pos + length(v_delim);
        end if;
    end if;
    if the_index < 0 then
        end_pos := instr(the_list, v_delim, start_pos+1, 1);
    else
        end_pos := instr(the_list, v_delim, start_pos, 1);
    end if;
    if end_pos = 0 then
        return substr(the_list, start_pos);
    else
        return substr(the_list, start_pos, end_pos - start_pos);
    end if;
exception when others then
         v_code := SQLCODE;
         v_errm := SUBSTR(SQLERRM, 1 , 4000);
         my_dbms_output('GET_SCHEMA_MD4','META WHO=>'||v_handleof_loc||' Error_code=>' || v_code || ' Error_msg=>' || v_errm);
end get_token;
/*****************************/
procedure delete_from_my_metadata
as
begin
v_handleof_loc := 'procedure MISO.delete_from_my_metadata';
     delete from MISO.my_metadata where otype in ('REMOVE','TRASH','PLSQL OPT','STATS') and
      owner = v_schema_extract and done_flag = 'N';
commit;
exception when others then
         v_code := SQLCODE;
         v_errm := SUBSTR(SQLERRM, 1 , 4000);
         my_dbms_output('GET_SCHEMA_MD4','META WHO=>'||v_handleof_loc||' Error_code=>' || v_code || ' Error_msg=>' || v_errm);
    raise;
end;
/*******************************************************/
PROCEDURE CLEANUP_MY_METADATA
as
begin
v_handleof_loc := 'PROCEDURE MISO.CLEANUP_MY_METADATA';
update MISO.my_metadata set mdsize = dbms_lob.getlength(md);
update MISO.my_metadata set otype='REMOVE'         where mdsize = 5;
update MISO.my_metadata set otype='GTTABLE'        where  first_200 like '%CREATE%GLOBAL%TEMPORARY%TABLE%';
update MISO.my_metadata set otype='CR8UNIQUEINDEX' where  first_200 like '%CREATE%UNIQUE%INDEX%';
update MISO.my_metadata set otype='ALTUNIQUEINDEX' where  first_200 like '%ALTER%TABLE% ADD UNIQUE %';
update MISO.my_metadata set otype='ALTUNIQUEINDEX' where  first_200 like '%ALTER%TABLE% ADD CONSTRAINT% UNIQUE %';
update MISO.my_metadata set otype='ALTCHECKCONST' where  first_200 like '%ALTER%TABLE% ADD CONSTRAINT% CHECK %';

update MISO.my_metadata set otype='INDEX'       where  first_200 like '%CREATE%INDEX%';
update MISO.my_metadata set otype='TABLE'       where  first_200 like '%CREATE%TABLE%';
update MISO.my_metadata set otype='TRASH'       where  first_200 like '%sys.dbms_logrep_imp.instantiate_schema(schema_name=>SYS_CONTEXT%';
update MISO.my_metadata set otype='SEQUENCE'    where  first_200 like '%CREATE%SEQUENCE%';
update MISO.my_metadata set otype='SYNONYM'     where  first_200 like '%CREATE%OR%REPLACE%SYNONYM%';
update MISO.my_metadata set otype='LINK'        where  first_200 like '%CREATE%DATABASE%LINK%';
update MISO.my_metadata set otype='GRANT SIUD'  where  first_200 like '%GRANT %SELECT%ON%' or
                                                           first_200 like '%GRANT %INSERT%ON%' or
                                                           first_200 like '%GRANT %UPDATE%ON%' or
                                                           first_200 like '%GRANT %DELETE%ON%' or
                                                           first_200 like '%REVOKE %FROM%' or
                                                           first_200 like '%GRANT %EXECUTE%';

update MISO.my_metadata set otype='GRANT INDEX ON'  where  first_200 like '%GRANT INDEX ON%';
update MISO.my_metadata set otype='GRANT REFERENCES ON'  where  first_200 like '%GRANT REFERENCES ON%';
update MISO.my_metadata set otype='GRANT ALTER ON'  where  first_200 like '%GRANT ALTER ON%';

update MISO.my_metadata set otype='CREATE_PK'   where  first_200 like '%ALTER%TABLE%'    and
                                                           first_200 like '%ADD%CONSTRAINT%' and
                                                           first_200 like '%PRIMARY KEY%';
update MISO.my_metadata set otype='CREATE_FK'   where  first_200 like '%ALTER%TABLE%'    and
                                                           first_200 like '%FOREIGN%KEY%';

update MISO.my_metadata set otype='CREATE_MVLOG' where first_200 like '%CREATE MATERIALIZED VIEW LOG';

update MISO.my_metadata set otype='CREATE_MV'    where first_200 like '%CREATE MATERIALIZED VIEW%' and
                                                           first_200 not like '% LOG %';

update MISO.my_metadata set otype='CREATE_PK'   where  first_200 like '%ALTER%TABLE%'    and
                                                           first_200 like '%ADD%PRIMARY%KEY%';

update MISO.my_metadata set otype='CREATE_PK'   where  first_200 like '%ALTER TABLE%'    and
                                                           first_200 like '%ADD CONSTRAINT%' and
                                                           first_200 like '% FOREIGN KEY%'   and
                                                           first_200 like '% REFERENCES %';
update MISO.my_metadata set otype='CREATE CHECK' where first_200 like '%ALTER TABLE%'    and
                                                           first_200 like '%ADD CHECK%';

update MISO.my_metadata set otype='COMMENT'  where     first_200 like '%COMMENT ON%' or
                                                           first_200 like '%COMMENT ON TABLE%' or
                                                           first_200 like '%MMENT ON MATERIALIZED VIEW%';


update MISO.my_metadata set otype='FUNCTION'  where    first_200 like '%CREATE OR REPLACE FUNCTION%';
update MISO.my_metadata set otype='PROCEDURE' where    first_200 like '%CREATE OR REPLACE PROCEDURE%';
update MISO.my_metadata set otype='PACKAGE'   where    first_200 like '%CREATE OR REPLACE PACKAGE%';
update MISO.my_metadata set otype='TYPE'      where    first_200 like '%CREATE OR REPLACE TYPE%';
update MISO.my_metadata set otype='PLSQL OPT' where    first_200 like '%ALTER PROCEDURE%'    and
                                                           first_200 like '%COMPILE%';
update MISO.my_metadata set otype='PLSQL OPT' where    first_200 like '%ALTER FUNCTION%'    and
                                                           first_200 like '%COMPILE%';
update MISO.my_metadata set otype='PLSQL OPT' where    first_200 like '%ALTER PACKAGE%'    and
                                                           first_200 like '%COMPILE%';
update MISO.my_metadata set otype='PLSQL OPT' where    first_200 like '%ALTER TYPE%'    and
                                                           first_200 like '%COMPILE%';

update MISO.my_metadata set otype='VIEW' where         first_200 like '%CREATE OR REPLACE FORCE VIEW%';
update MISO.my_metadata set otype='TRIGGER' where      first_200 like '%CREATE OR REPLACE TRIGGER%';

update MISO.my_metadata set otype='DBMS_JOBS' where dbms_lob.instr(md,'BEGIN SYS.DBMS_JOB.SUBMIT',1,1)> 0;
update MISO.my_metadata set otype='STATS'     where dbms_lob.instr(md,'DBMS_STATS.IMPORT_INDEX_STATS',1,1)> 0 or
                                                        dbms_lob.instr(md,'DBMS_STATS.IMPORT_TABLE_STATS',1,1)> 0 or
                                                        dbms_lob.instr(md,' ANALYZE TABLE ',1,1)> 0;

-------------------- test it -----------------
update my_metadata set otype = 'TABLE' where otype = 'SEQUENCE' and token1 = 'CREATE' and token2 = 'TABLE';

update my_metadata set otype = 'INDEX' where otype = 'SEQUENCE' and token1 = 'CREATE' and (   (token2 = 'UNIQUE' and token3 = 'INDEX')
                                                                                           or (token2 = 'INDEX') );

update my_metadata set otype = 'INDEX' where otype = 'TABLE' and token1 = 'CREATE' and (   (token2 = 'UNIQUE' and token3 = 'INDEX')
                                                                                        or (token2 = 'INDEX') );

update my_metadata set otype = 'UINDEX' where otype = 'INDEX' and token1 = 'CREATE' and    (token2 = 'UNIQUE' and token3 = 'INDEX');

update my_metadata set otype = 'FUNCTION'      where otype = 'TYPE'      and token4 = 'FUNCTION';
update my_metadata set otype = 'PACKAGE_BODY'  where otype = 'PACKAGE'   and token5 = 'BODY';
update my_metadata set otype = 'CREATE_FK'     where otype = 'CREATE_PK' and token7 = 'FOREIGN';

-------------------- test it -----------------

commit;
exception when others then
         v_code := SQLCODE;
         v_errm := SUBSTR(SQLERRM, 1 , 4000);
         my_dbms_output('GET_SCHEMA_MD4','META WHO=>'||v_handleof_loc||' Error_code=>' || v_code || ' Error_msg=>' || v_errm);
raise;
end;
/*****************************/
BEGIN
v_handleof_loc := v_handleof_main;
   dbms_output.enable(1000000);

   -- Specify the object type.
   ---DATABASE_EXPORT 	all metadata objects in a database 	H 	Corresponds to a full database export
   --h := DBMS_METADATA.OPEN('DATABASE_EXPORT');
   h := DBMS_METADATA.OPEN('SCHEMA_EXPORT');
   my_dbms_output('GET_SCHEMA_MD4','META DBMS_METADATA.OPEN');

   -- Use filters to specify the schema.
   DBMS_METADATA.SET_FILTER(h,'SCHEMA', v_schema_extract);
   -- Request that the metadata be transformed into creation DDL.
   my_dbms_output('GET_SCHEMA_MD4','META DBMS_METADATA.SET_FILTER='||v_schema_extract);

   th := DBMS_METADATA.ADD_TRANSFORM(h,'DDL');
   -- Fetch the objects.
   my_dbms_output('GET_SCHEMA_MD4','META DBMS_METADATA.ADD_TRANSFORM=DDL');

   dbms_metadata.set_transform_param(dbms_metadata.session_transform,'PRETTY'               ,TRUE);  /* format the output with indentation and line feeds.*/
   dbms_metadata.set_transform_param(dbms_metadata.session_transform,'SQLTERMINATOR'        ,TRUE);  /* append a SQL terminator (; or /) to each DDL statement. */
   dbms_metadata.set_transform_param(dbms_metadata.session_transform,'CONSTRAINTS'          ,TRUE);  /* show all non-referential table constraints. */
   dbms_metadata.set_transform_param(dbms_metadata.session_transform,'REF_CONSTRAINTS'      ,TRUE);  /* show all fk table constraints. */
   dbms_metadata.set_transform_param(dbms_metadata.session_transform,'CONSTRAINTS_AS_ALTER' ,TRUE);  /* show all fk table constraints. */
   dbms_metadata.set_transform_param(DBMS_METADATA.SESSION_TRANSFORM,'FORCE'                ,TRUE);  /* used view force keyword */
   my_dbms_output('GET_SCHEMA_MD4','META session_transform=PRETTY,SQLTERMINATOR,CONSTRAINTS,REF_CONSTRAINTS,CONSTRAINTS_AS_ALTER,FORCE =TRUE');

   if (instr(v_options_false,  '~SEGMENT_ATTRIBUTES~',1,1) > 0 ) then
      dbms_metadata.set_transform_param(dbms_metadata.session_transform,'SEGMENT_ATTRIBUTES'   ,TRUE);
      /* If TRUE, emit segment attributes (physical attributes, storage attributes, tablespace, logging).*/
      my_dbms_output('GET_SCHEMA_MD4','META dbms_metadata.session_transform,SEGMENT_ATTRIBUTES   ,FALSE');
   end if;

   if (instr(v_options_false,             '~STORAGE~',1,1) > 0 ) then
      dbms_metadata.set_transform_param(dbms_metadata.session_transform,'STORAGE'              ,FALSE); /* emit storage clause. */
      my_dbms_output('GET_SCHEMA_MD4','META dbms_metadata.session_transform,STORAGE   ,FALSE');
   end if;

   if (instr(v_options_false,          '~TABLESPACE~',1,1) > 0 ) then
      dbms_metadata.set_transform_param(dbms_metadata.session_transform,'TABLESPACE'           ,FALSE); /* */
      my_dbms_output('GET_SCHEMA_MD4','META dbms_metadata.session_transform,TABLESPACE   ,FALSE');
   end if;

LOOP
   begin /* wrap loop*/
       timesthru := timesthru + 1;
       IF mod(timesthru, 500) = 0 THEN    -- notify every 500 records
          my_dbms_output('GET_SCHEMA_MD4','500 recs @'||to_char(sysdate,'yyyy/mm/dd hh24:mi:ss'));
       END IF;
       --BEFORE => AAP doc      := DBMS_METADATA.FETCH_CLOB(h);

      begin /* wrap loop 2 */
       doc      := DBMS_METADATA.FETCH_CLOB(h);
      exception when others then
               v_code := SQLCODE;
               v_errm := SUBSTR(SQLERRM, 1 , 4000);
         my_dbms_output('GET_SCHEMA_MD4','META WHO=>'||v_handleof_loc||' Error_code=>' || v_code || ' Error_msg=>' || v_errm);

       -- my_dbms_output('GET_SCHEMA_MD4','META INSIDE FIRST FETCH_CLOB EXCEPTION');
       print_clob(doc);
       doc      := DBMS_METADATA.FETCH_CLOB(h);
      end;

       holdsizeof := dbms_lob.getlength(doc);
       v_doc    := doc; -->dbms_lob.trim( both ' ' from doc);
       v_first_200    := REGEXP_REPLACE(
                             replace(replace( ltrim(rtrim(
                                               dbms_lob.substr(v_doc,200,1)
                                              )),chr(10),' '),chr(9),' ')
                         ,'  *',' ');
       v_first_200    := REGEXP_REPLACE(v_first_200,'  *',' ');
       --select REGEXP_REPLACE(' a  b   c    d    f','  *',' ') from dual;
       hold_first_200 := instr(  translate( upper(v_first_200) ,'ABCDEFGHIJKLMNOPQRSTUVWXYZ','~') , '~' ,1 ,1);
       --v_first_200    := ltrim(rtrim(dbms_lob.substr(v_doc,200,hold_first_200)));
       v_first_200    := substr(v_first_200,hold_first_200,200);

       v_token1  := get_token(v_first_200,1 ,' ' );
       v_token2  := get_token(v_first_200,2 ,' ' );
       v_token3  := get_token(v_first_200,3 ,' ' );
       v_token4  := get_token(v_first_200,4 ,' ' );
       v_token5  := get_token(v_first_200,5 ,' ' );
       v_token6  := get_token(v_first_200,6 ,' ' );
       v_token7  := get_token(v_first_200,7 ,' ' );
       v_token8  := get_token(v_first_200,8 ,' ' );
       v_token9  := get_token(v_first_200,9 ,' ' );
       v_token10 := get_token(v_first_200,10,' ' );

       -- When there are no more objects to be retrieved, FETCH_CLOB returns NULL.
       EXIT WHEN doc IS NULL;
       -- Store the metadata in the table.

       INSERT INTO MISO.my_metadata ( original_md, md, owner ) VALUES
         (doc,
          doc,
          v_schema_extract ) returning  my_metadata_id into pk_i;

       update MISO.my_metadata set first_200 = v_first_200,
                               token1  = v_token1 ,
                               token2  = v_token2 ,
                               token3  = v_token3 ,
                               token4  = v_token4 ,
                               token5  = v_token5 ,
                               token6  = v_token6 ,
                               token7  = v_token7 ,
                               token8  = v_token8 ,
                               token9  = v_token9 ,
                               token10 = v_token10
       where my_metadata_id = pk_i;

       COMMIT;
         dbms_lob.freetemporary(  doc     );
  --       dbms_lob.freetemporary(v_doc     );
  --       dbms_lob.freetemporary(v_wip_clob);
   exception when others then
               v_code := SQLCODE;
               v_errm := SUBSTR(SQLERRM, 1 , 4000);
         my_dbms_output('GET_SCHEMA_MD4','META WHO=>'||v_handleof_loc||' Error_code=>' || v_code || ' Error_msg=>' || v_errm);

        my_dbms_output('GET_SCHEMA_MD4','META INSIDE SECOND FETCH_CLOB EXCEPTION');
      print_clob(doc);
   end;

END LOOP;
-- Release resources.
 DBMS_METADATA.CLOSE(h);
my_dbms_output('GET_SCHEMA_MD4','META dbms_metadata.close');
 CLEANUP_MY_METADATA;
my_dbms_output('GET_SCHEMA_MD4','META CLEANUP_MY_METADATA');
 commit;

my_dbms_output('GET_SCHEMA_MD4','META start commenting storage for user '||v_schema_extract||' '||to_char(sysdate,'yyyy/mm/dd hh24:mi:ss'));
 for ij in (select my_metadata_id, md , otype from MISO.my_metadata where --->otype like  '%TABLE%' and
            owner = v_schema_extract and done_flag = 'N' order by otype)
 loop
     v_wip_clob := ij.md;
     v_wip_clob := clobreplace(v_wip_clob,'STORAGE(INITIAL'     ,' /* STORAGE ( INITIAL'     );
     v_wip_clob := clobreplace(v_wip_clob,'BUFFER_POOL DEFAULT)','BUFFER_POOL DEFAULT ) */ ');
     v_wip_clob := clobreplace(v_wip_clob,'CELL_FLASH_CACHE DEFAULT)','CELL_FLASH_CACHE DEFAULT) */ ');
     update MISO.my_metadata zz
        set md = v_wip_clob
         where zz.my_metadata_id = ij.my_metadata_id;
 end loop;
 commit;

delete_from_my_metadata;

update  MISO.my_metadata  set done_flag='Y' where owner = v_schema_extract;
update  my_metadata set mdsize = dbms_lob.getlength(md);

my_dbms_output('GET_SCHEMA_MD4',' ended commenting storage for user '||v_schema_extract||' '||to_char(sysdate,'yyyy/mm/dd hh24:mi:ss'));
exception when others then raise;
END;

/

++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


set long 20000 longchunksize 20000 pagesize 0 linesize 1000 feedback off verify off trimspool on
column ddl format a4000;

declare
        no_grant exception;
        pragma exception_init( no_grant, -31608 );
begin
        :x := dbms_metadata.get_granted_ddl( 'SYSTEM_GRANT', 'A' );
exception
        when no_grant then :x := '-- no system grants';
end;
/
 
 desc MISO.push_profiles_verify_props2
 
   












CREATE OR REPLACE PROCEDURE push_profiles_verify_props2 (v_schema_name in varchar2, v_output in out varchar2)
    AUTHID CURRENT_USER
as
v_error_hold_out varchar2(4000) := '';
rowscount       number := 0;
rowsdel         number := 0;
h               NUMBER; -- handle returned by OPEN
th              NUMBER; -- handle returned by ADD_TRANSFORM
doc             CLOB; -- metadata is returned in a CLOB
v_doc           CLOB; -- metadata is returned in a CLOB
v_wip_clob      clob;
pk_i            number;
timesthru       number := 0;
v_first_200     varchar2(400);
hold_first_200  number;
holdsizeof      number;
v_token1        MISO.my_metadata.token1%type;
v_token2        MISO.my_metadata.token2%type;
v_token3        MISO.my_metadata.token3%type;
v_token4        MISO.my_metadata.token4%type;
v_token5        MISO.my_metadata.token5%type;
v_token6        MISO.my_metadata.token6%type;
v_token7        MISO.my_metadata.token7%type;
v_token8        MISO.my_metadata.token8%type;
v_token9        MISO.my_metadata.token9%type;
v_token10       MISO.my_metadata.token10%type;
ignoreit        varchar2(100)  := 'sys.dbms_logrep_imp.instantiate_schema';
v_handleof_main  varchar2(400)  := 'MAIN'; ---->'procedure print_clob';
---------
v_instance_name varchar2(100) := '';
v_handleof_loc  varchar2(400) := 'MISO.push_profiles_verify_props';
v_code          number := 0;          ---->:= SQLCODE;
v_errm          varchar2(4000) := ''; ---->:= SUBSTR(SQLERRM, 1 , 64);
-----------
     no_grant exception;
     pragma exception_init( no_grant, -31608 );
tmp_clob clob := '';
 timesthruit  number;
 vv_sizeof    number;
 vv_user      varchar2(4000);
 vv_kindofext varchar2(4000);
 vv_clob_ddl  clob;
-----------++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
procedure insert_my_meta_user (v_sizeof in number, v_user in varchar2,  v_kindofext in varchar2, v_clob_ddl in clob )
as
tmp_clob clob := '';
begin
 dbms_output.put_line('process kind='||v_kindofext);
 dbms_lob.createtemporary( tmp_clob, TRUE );
 insert into MISO.my_metadata_user (created_date, instance_name   , MDSIZE   , OWNER  , ONAME       ,  original_md ) values
                                      (sysdate     ,  v_instance_name, v_sizeof , v_user , v_kindofext ,  v_clob_ddl );
 commit;
exception
        when no_grant then
         v_code := SQLCODE;
         v_errm := SUBSTR(SQLERRM, 1 , 4000);
         tmp_clob := to_clob(v_errm||chr(10)||'ERROR_SOURCE=>'||chr(10));
         dbms_lob.append(tmp_clob,v_clob_ddl);
         begin
         insert into MISO.my_metadata_user ( created_date, instance_name   , MDSIZE   , OWNER  , ONAME       ,  original_md ) values
                                              ( sysdate,      v_instance_name, v_sizeof , v_user , v_kindofext ,  tmp_clob );
         commit;
         exception when others then raise;
         end;

       when others then
         v_code := SQLCODE;
         v_errm := SUBSTR(SQLERRM, 1 , 4000);
         tmp_clob := to_clob(v_errm||chr(10)||'ERROR_SOURCE=>'||chr(10));
         dbms_lob.append(tmp_clob,v_clob_ddl);
--         DBMS_OUTPUT.PUT_LINE('WHO=>insert_my_meta_user  Error_code=>' || v_code || ' Error_msg=>' || v_errm);
         begin
         insert into MISO.my_metadata_user (created_date, instance_name   , MDSIZE   , OWNER  , ONAME       ,  original_md ) values
                                              (sysdate,      v_instance_name ,v_sizeof , v_user , v_kindofext ,  tmp_clob );
         commit;
         exception when others then raise;
         end;
end;
-----------++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
procedure set_transform_props
 as
begin
   dbms_metadata.set_transform_param (dbms_metadata.session_transform, 'SQLTERMINATOR', true);
   dbms_metadata.set_transform_param (dbms_metadata.session_transform, 'PRETTY', true);
exception         when no_grant then
         v_code := SQLCODE;
         v_errm := SUBSTR(SQLERRM, 1 , 4000);
         null;
          when others then
         v_code := SQLCODE;
         v_errm := SUBSTR(SQLERRM, 1 , 4000);
         DBMS_OUTPUT.PUT_LINE('WHO=>set_transform_props  Error_code=>' || v_code || ' Error_msg=>' || v_errm);
end;
-----------++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
-----------++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
------------------------------------------------------start main -------------------------------------------------
-----------++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
-----------++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

begin
 dbms_lob.createtemporary( tmp_clob, TRUE );
 --select instance_name into v_instance_name from v$instance;
   select name into v_instance_name from v$database;
     set_transform_props;
   ---------
   begin
   select count(*) into rowscount from MISO.my_metadata_user where owner = v_schema_name and instance_name = v_instance_name;
  dbms_output.put_line('Rows found that will be deleted for owner='||v_schema_name||' db_name='||v_instance_name||'=>'||to_char(rowscount));
   exception when others then null;
   end;
   ---------
   begin
    delete from MISO.my_metadata_user where owner = ltrim(rtrim(upper(v_schema_name))) and instance_name =  ltrim(rtrim(upper(v_instance_name)));
    rowsdel := sql%rowcount;
    commit;
    dbms_output.put_line('Rows deleted for owner='||v_schema_name||' db_name='||v_instance_name||'=>'||to_char(rowsdel));
   exception when others then raise;
   end;
   ---------

-----------++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
v_error_hold_out := v_error_hold_out||'Starting Tablespace_quotas'||chr(10);

begin
for jkl in (
select  --distinct
        'TABLESPACE_QUOTA'               kindofext ,
        dbms_lob.getlength(   dbms_metadata.get_granted_ddl('TABLESPACE_QUOTA', tq.username)) sizeof,
        dbms_metadata.get_granted_ddl('TABLESPACE_QUOTA', tq.username) AS ddl
from   dba_ts_quotas tq
where  tq.username = v_schema_name
order by  tq.username
)
loop
 timesthruit := timesthruit + 1;
 vv_sizeof    := jkl.sizeof;
 vv_user      := v_schema_name;
 vv_kindofext := jkl.kindofext;
 vv_clob_ddl  := jkl.ddl;
    begin
     insert_my_meta_user (v_sizeof=> vv_sizeof, v_user=>vv_user,  v_kindofext=>vv_kindofext , v_clob_ddl=>vv_clob_ddl );
    exception when others then
         v_code := SQLCODE;
         v_errm := SUBSTR(SQLERRM, 1 , 4000);
         v_error_hold_out := v_error_hold_out||substr(v_errm,1,100)||chr(10);
         DBMS_OUTPUT.PUT_LINE('AFTER INSERT_MY_META_USER==>WHO=>TABLESPACE_QUOTA  Error_code=>' || v_code || ' Error_msg=>' || v_errm);
    end;
end loop;
commit;
exception        when others then
         v_code := SQLCODE;
         v_errm := SUBSTR(SQLERRM, 1 , 4000);
         DBMS_OUTPUT.PUT_LINE('WHO=>TABLESPACE_QUOTA  Error_code=>' || v_code || ' Error_msg=>' || v_errm);
         v_error_hold_out := v_error_hold_out||substr(v_errm,1,100)||chr(10);
end;
------------------------
v_error_hold_out := v_error_hold_out||'Starting USER'||chr(10);
begin
for jkl in (
select ---distinct
        'USER'                           kindofext ,
        dbms_lob.getlength(   dbms_metadata.get_ddl('USER', u.username))                      sizeof,
         dbms_metadata.get_ddl('USER', u.username)                      AS ddl
from   dba_users u
where  u.username = v_schema_name
order by u.username
)
loop
 timesthruit := timesthruit + 1;
 vv_sizeof    := jkl.sizeof;
 vv_user      := v_schema_name;
 vv_kindofext := jkl.kindofext;
 vv_clob_ddl  := jkl.ddl;
     begin
     insert_my_meta_user (v_sizeof=> vv_sizeof, v_user=>vv_user,  v_kindofext=>vv_kindofext , v_clob_ddl=>vv_clob_ddl );
     exception when others then
         v_code := SQLCODE;
         v_errm := SUBSTR(SQLERRM, 1 , 4000);
         v_error_hold_out := v_error_hold_out||substr(v_errm,1,100)||chr(10);
         DBMS_OUTPUT.PUT_LINE('AFTER INSERT_MY_META_USER==>WHO=>USER  Error_code=>' || v_code || ' Error_msg=>' || v_errm);
    end;
---     insert_my_meta_user (v_sizeof=> jkl.sizeof, v_user=>v_schema_name,  v_kindofext=>jkl.kindofext , v_clob_ddl=>jkl.ddl );
end loop;
commit;

exception when others then
         v_code := SQLCODE;
         v_errm := SUBSTR(SQLERRM, 1 , 4000);
         DBMS_OUTPUT.PUT_LINE('WHO=>USER Error_code=>' || v_code || ' Error_msg=>' || v_errm);
         v_error_hold_out := v_error_hold_out||substr(v_errm,1,100)||chr(10);
end;
------------------------
v_error_hold_out := v_error_hold_out||'Starting ROLE_GRANT'||chr(10);

begin
for jkl in (
select --distinct
       'ROLE_GRANT'                     kindofext ,dbms_lob.getlength(   dbms_metadata.get_granted_ddl('ROLE_GRANT', rp.grantee) )       sizeof, dbms_metadata.get_granted_ddl('ROLE_GRANT', rp.grantee)        AS ddl
from   dba_role_privs rp
where  rp.grantee = v_schema_name and rownum < 2
 order by  rp.grantee
)
loop
 timesthruit := timesthruit + 1;
 vv_sizeof    := jkl.sizeof;
 vv_user      := v_schema_name;
 vv_kindofext := jkl.kindofext;
 vv_clob_ddl  := jkl.ddl;
     begin
     insert_my_meta_user (v_sizeof=> vv_sizeof, v_user=>vv_user,  v_kindofext=>vv_kindofext , v_clob_ddl=>vv_clob_ddl );
     exception when others then
         v_code := SQLCODE;
         v_errm := SUBSTR(SQLERRM, 1 , 4000);
                  v_error_hold_out := v_error_hold_out||substr(v_errm,1,100)||chr(10);
         DBMS_OUTPUT.PUT_LINE('AFTER INSERT_MY_META_USER==>WHO=>ROLE_GRANT  Error_code=>' || v_code || ' Error_msg=>' || v_errm);
    end;
--     insert_my_meta_user (v_sizeof=> jkl.sizeof, v_user=>v_schema_name,  v_kindofext=>jkl.kindofext , v_clob_ddl=>jkl.ddl );
end loop;
commit;

exception  when others then
         v_code := SQLCODE;
         v_errm := SUBSTR(SQLERRM, 1 , 4000);
         DBMS_OUTPUT.PUT_LINE('WHO=>USER Error_code=>' || v_code || ' Error_msg=>' || v_errm);
                  v_error_hold_out := v_error_hold_out||substr(v_errm,1,100)||chr(10);
end;
------------------------
v_error_hold_out := v_error_hold_out||'Starting system_grant'||chr(10);

begin
for jkl in (
select --distinct
        'SYSTEM_GRANT'                   kindofext ,dbms_lob.getlength(   dbms_metadata.get_granted_ddl('SYSTEM_GRANT', sp.grantee))      sizeof, dbms_metadata.get_granted_ddl('SYSTEM_GRANT', sp.grantee)      AS ddl
from   dba_sys_privs sp
where  sp.grantee = v_schema_name  and rownum < 2
)
loop
 timesthruit := timesthruit + 1;
 vv_sizeof    := jkl.sizeof;
 vv_user      := v_schema_name;
 vv_kindofext := jkl.kindofext;
 vv_clob_ddl  := jkl.ddl;
     begin
     insert_my_meta_user (v_sizeof=> vv_sizeof, v_user=>vv_user,  v_kindofext=>vv_kindofext , v_clob_ddl=>vv_clob_ddl );
     exception when others then
         v_code := SQLCODE;
         v_errm := SUBSTR(SQLERRM, 1 , 4000);
                           v_error_hold_out := v_error_hold_out||substr(v_errm,1,100)||chr(10);
         DBMS_OUTPUT.PUT_LINE('AFTER INSERT_MY_META_USER==>WHO=>SYSTEM_GRANT  Error_code=>' || v_code || ' Error_msg=>' || v_errm);
    end;


--     insert_my_meta_user (v_sizeof=> jkl.sizeof, v_user=>v_schema_name,  v_kindofext=>jkl.kindofext , v_clob_ddl=>jkl.ddl );
end loop;
commit;

exception   when others then
         v_code := SQLCODE;
         v_errm := SUBSTR(SQLERRM, 1 , 4000);
         DBMS_OUTPUT.PUT_LINE('WHO=>USER Error_code=>' || v_code || ' Error_msg=>' || v_errm);
                           v_error_hold_out := v_error_hold_out||substr(v_errm,1,100)||chr(10);
end;
------------------------
v_error_hold_out := v_error_hold_out||'Starting object_grant'||chr(10);
begin
for jkl in (
select --distinct
       'OBJECT_GRANT'                   kindofext ,dbms_lob.getlength(   dbms_metadata.get_granted_ddl('OBJECT_GRANT', tp.grantee))      sizeof, dbms_metadata.get_granted_ddl('OBJECT_GRANT', tp.grantee)           AS ddl
from   dba_tab_privs tp
where  tp.grantee = v_schema_name and rownum < 2
)
loop
 timesthruit := timesthruit + 1;
 vv_sizeof    := jkl.sizeof;
 vv_user      := v_schema_name;
 vv_kindofext := jkl.kindofext;
 vv_clob_ddl  := jkl.ddl;
    begin
     insert_my_meta_user (v_sizeof=> vv_sizeof, v_user=>vv_user,  v_kindofext=>vv_kindofext , v_clob_ddl=>vv_clob_ddl );
     exception when others then
         v_code := SQLCODE;
         v_errm := SUBSTR(SQLERRM, 1 , 4000);
                                    v_error_hold_out := v_error_hold_out||substr(v_errm,1,100)||chr(10);
         DBMS_OUTPUT.PUT_LINE('AFTER INSERT_MY_META_USER==>WHO=>OBJECT_GRANT  Error_code=>' || v_code || ' Error_msg=>' || v_errm);
    end;

--     insert_my_meta_user (v_sizeof=> jkl.sizeof, v_user=>v_schema_name,  v_kindofext=>jkl.kindofext , v_clob_ddl=>jkl.ddl );
end loop;
commit;

exception when others then
         v_code := SQLCODE;
         v_errm := SUBSTR(SQLERRM, 1 , 4000);
         DBMS_OUTPUT.PUT_LINE('WHO=>USER Error_code=>' || v_code || ' Error_msg=>' || v_errm);
                                    v_error_hold_out := v_error_hold_out||substr(v_errm,1,100)||chr(10);
end;
------------------------
v_error_hold_out := v_error_hold_out||'Starting default_role'||chr(10);
begin
for jkl in (
select --distinct
       'DEFAULT_ROLE=>'||rp.default_role    kindofext ,dbms_lob.getlength(   dbms_metadata.get_granted_ddl('DEFAULT_ROLE', rp.grantee))      sizeof, dbms_metadata.get_granted_ddl('DEFAULT_ROLE', rp.grantee) AS ddl
from   dba_role_privs rp
where  rp.grantee = v_schema_name
and    rp.default_role = 'YES' and rownum < 2
)
loop
 timesthruit := timesthruit + 1;
 vv_sizeof    := jkl.sizeof;
 vv_user      := v_schema_name;
 vv_kindofext := jkl.kindofext;
 vv_clob_ddl  := jkl.ddl;
     begin
     insert_my_meta_user (v_sizeof=> vv_sizeof, v_user=>vv_user,  v_kindofext=>vv_kindofext , v_clob_ddl=>vv_clob_ddl );
     exception when others then
         v_code := SQLCODE;
         v_errm := SUBSTR(SQLERRM, 1 , 4000);
                                             v_error_hold_out := v_error_hold_out||substr(v_errm,1,100)||chr(10);
         DBMS_OUTPUT.PUT_LINE('AFTER INSERT_MY_META_USER==>WHO=>DEFAULT_ROLE  Error_code=>' || v_code || ' Error_msg=>' || v_errm);
    end;


--     insert_my_meta_user (v_sizeof=> jkl.sizeof, v_user=>v_schema_name,  v_kindofext=>jkl.kindofext , v_clob_ddl=>jkl.ddl );
end loop;
commit;

exception   when others then
         v_code := SQLCODE;
         v_errm := SUBSTR(SQLERRM, 1 , 4000);
         DBMS_OUTPUT.PUT_LINE('WHO=>USER Error_code=>' || v_code || ' Error_msg=>' || v_errm);
                                             v_error_hold_out := v_error_hold_out||substr(v_errm,1,100)||chr(10);
end;
------------------------
------------------------
v_error_hold_out := v_error_hold_out||'Starting non_default_role'||chr(10);
begin
for jkl in (
select --distinct
       'NON_DEFAULT_ROLE=>'||rp.default_role    kindofext ,dbms_lob.getlength(   dbms_metadata.get_granted_ddl('DEFAULT_ROLE', rp.grantee))      sizeof, dbms_metadata.get_granted_ddl('DEFAULT_ROLE', rp.grantee) AS ddl
from   dba_role_privs rp
where  rp.grantee = v_schema_name
and    rp.default_role <> 'YES' and rownum < 2
)
loop
 timesthruit := timesthruit + 1;
 vv_sizeof    := jkl.sizeof;
 vv_user      := v_schema_name;
 vv_kindofext := jkl.kindofext;
 vv_clob_ddl  := jkl.ddl;
     begin
     insert_my_meta_user (v_sizeof=> vv_sizeof, v_user=>vv_user,  v_kindofext=>vv_kindofext , v_clob_ddl=>vv_clob_ddl );
     exception when others then
         v_code := SQLCODE;
         v_errm := SUBSTR(SQLERRM, 1 , 4000);
                                             v_error_hold_out := v_error_hold_out||substr(v_errm,1,100)||chr(10);
         DBMS_OUTPUT.PUT_LINE('AFTER INSERT_MY_META_USER==>WHO=>NON_DEFAULT_ROLE  Error_code=>' || v_code || ' Error_msg=>' || v_errm);
    end;


--     insert_my_meta_user (v_sizeof=> jkl.sizeof, v_user=>v_schema_name,  v_kindofext=>jkl.kindofext , v_clob_ddl=>jkl.ddl );
end loop;
commit;

exception   when others then
         v_code := SQLCODE;
         v_errm := SUBSTR(SQLERRM, 1 , 4000);
         DBMS_OUTPUT.PUT_LINE('WHO=>USER Error_code=>' || v_code || ' Error_msg=>' || v_errm);
                                             v_error_hold_out := v_error_hold_out||substr(v_errm,1,100)||chr(10);
end;
------------------------

/********
v_error_hold_out := v_error_hold_out||'Starting object_grant'||chr(10);
begin
for jkl in (
select --distinct
       'OBJECT_GRANT'                   kindofext ,dbms_lob.getlength(   dbms_metadata.get_granted_ddl('OBJECT_GRANT', tp.grantee))      sizeof, dbms_metadata.get_granted_ddl('OBJECT_GRANT', tp.grantee)           AS ddl
from   dba_tab_privs tp
where  tp.grantee = v_schema_name and rownum < 2
)
loop
 timesthruit := timesthruit + 1;
 vv_sizeof    := jkl.sizeof;
 vv_user      := v_schema_name;
 vv_kindofext := jkl.kindofext;
 vv_clob_ddl  := jkl.ddl;
     begin
     insert_my_meta_user (v_sizeof=> vv_sizeof, v_user=>vv_user,  v_kindofext=>vv_kindofext , v_clob_ddl=>vv_clob_ddl );
     exception when others then
         v_code := SQLCODE;
         v_errm := SUBSTR(SQLERRM, 1 , 4000);
                 v_error_hold_out := v_error_hold_out||substr(v_errm,1,100)||chr(10);
         DBMS_OUTPUT.PUT_LINE('AFTER INSERT_MY_META_USER==>WHO=>OBJECT_GRANT  Error_code=>' || v_code || ' Error_msg=>' || v_errm);
     end;


--     insert_my_meta_user (v_sizeof=> jkl.sizeof, v_user=>v_schema_name,  v_kindofext=>jkl.kindofext , v_clob_ddl=>jkl.ddl );
end loop;
commit;
exception  when others then
         v_code := SQLCODE;
         v_errm := SUBSTR(SQLERRM, 1 , 4000);
         DBMS_OUTPUT.PUT_LINE('WHO=>USER Error_code=>' || v_code || ' Error_msg=>' || v_errm);
                v_error_hold_out := v_error_hold_out||substr(v_errm,1,100)||chr(10);
end;
************/

------------------------
v_error_hold_out := v_error_hold_out||'Starting NON_DEFAULT_USER_PROFILE'||chr(10);
begin
for jkl in (
select --distinct
      'NON_DEFAULT_USER_PROFILE'       kindofext ,dbms_lob.getlength(   dbms_metadata.get_ddl('PROFILE', u.profile))                        sizeof, dbms_metadata.get_ddl('PROFILE', u.profile) AS ddl
from   dba_users u
where  u.username = v_schema_name
and    u.profile <> 'DEFAULT'
)
loop
 timesthruit := timesthruit + 1;
 vv_sizeof    := jkl.sizeof;
 vv_user      := v_schema_name;
 vv_kindofext := jkl.kindofext;
 vv_clob_ddl  := jkl.ddl;
    begin
     insert_my_meta_user (v_sizeof=> vv_sizeof, v_user=>vv_user,  v_kindofext=>vv_kindofext , v_clob_ddl=>vv_clob_ddl );
     exception when others then
         v_code := SQLCODE;
         v_errm := SUBSTR(SQLERRM, 1 , 4000);
                 v_error_hold_out := v_error_hold_out||substr(v_errm,1,100)||chr(10);
         DBMS_OUTPUT.PUT_LINE('AFTER INSERT_MY_META_USER==>WHO=>NON_DEFAULT_USER_PROFILE  Error_code=>' || v_code || ' Error_msg=>' || v_errm);
    end;

---     insert_my_meta_user (v_sizeof=> jkl.sizeof, v_user=>v_schema_name,  v_kindofext=>jkl.kindofext , v_clob_ddl=>jkl.ddl );
end loop;
commit;

exception      when others then
         v_code := SQLCODE;
         v_errm := SUBSTR(SQLERRM, 1 , 4000);
         DBMS_OUTPUT.PUT_LINE('WHO=>NON_DEFAULT_USER_PROFILE Error_code=>' || v_code || ' Error_msg=>' || v_errm);
                 v_error_hold_out := v_error_hold_out||substr(v_errm,1,100)||chr(10);
end;
------------------------
v_error_hold_out := v_error_hold_out||'Starting DEFAULT_USER_PROFILE'||chr(10);
begin
for jkl in (
select --distinct
       'DEFAULT_USER_PROFILE'           kindofext ,dbms_lob.getlength( dbms_metadata.get_ddl('PROFILE', u.profile))  sizeof,  
        dbms_metadata.get_ddl('PROFILE', u.profile) AS ddl
from   dba_users u
where  u.username = v_schema_name
and    u.profile = 'DEFAULT'
)
loop
 timesthruit := timesthruit + 1;
 vv_sizeof    := jkl.sizeof;
 vv_user      := v_schema_name;
 vv_kindofext := jkl.kindofext;
 vv_clob_ddl  := jkl.ddl;
     begin
     insert_my_meta_user (v_sizeof=> vv_sizeof, v_user=>vv_user,  v_kindofext=>vv_kindofext , v_clob_ddl=>vv_clob_ddl );
     exception when others then
         v_code := SQLCODE;
         v_errm := SUBSTR(SQLERRM, 1 , 4000);
                          v_error_hold_out := v_error_hold_out||substr(v_errm,1,100)||chr(10);
         DBMS_OUTPUT.PUT_LINE('AFTER INSERT_MY_META_USER==>WHO=>DEFAULT_USER_PROFILE  Error_code=>' || v_code || ' Error_msg=>' || v_errm);
    end;

--     insert_my_meta_user (v_sizeof=> jkl.sizeof, v_user=>v_schema_name,  v_kindofext=>jkl.kindofext , v_clob_ddl=>jkl.ddl );
end loop;
commit;

exception     when others then
         v_code := SQLCODE;
         v_errm := SUBSTR(SQLERRM, 1 , 4000);
         DBMS_OUTPUT.PUT_LINE('WHO=>USER Error_code=>' || v_code || ' Error_msg=>' || v_errm);
                          v_error_hold_out := v_error_hold_out||substr(v_errm,1,100)||chr(10);
end;
------------------------
------------------------
/*********
v_error_hold_out := v_error_hold_out||'Starting NON_DEFAULT_USER_PROFILE'||chr(10);
begin
for jkl in (
select --distinct
       'NON_DEFAULT_USER_PROFILE'           kindofext ,dbms_lob.getlength( dbms_metadata.get_ddl('PROFILE', u.profile))  sizeof,  
        dbms_metadata.get_ddl('PROFILE', u.profile) AS ddl
from   dba_users u
where  u.username = v_schema_name
and    u.profile <> 'DEFAULT'
)
loop
 timesthruit := timesthruit + 1;
 vv_sizeof    := jkl.sizeof;
 vv_user      := v_schema_name;
 vv_kindofext := jkl.kindofext;
 vv_clob_ddl  := jkl.ddl;
     begin
     insert_my_meta_user (v_sizeof=> vv_sizeof, v_user=>vv_user,  v_kindofext=>vv_kindofext , v_clob_ddl=>vv_clob_ddl );
     exception when others then
         v_code := SQLCODE;
         v_errm := SUBSTR(SQLERRM, 1 , 4000);
                          v_error_hold_out := v_error_hold_out||substr(v_errm,1,100)||chr(10);
         DBMS_OUTPUT.PUT_LINE('AFTER INSERT_MY_META_USER==>WHO=>NON_DEFAULT_USER_PROFILE  Error_code=>' || v_code || ' Error_msg=>' || v_errm);
    end;

--     insert_my_meta_user (v_sizeof=> jkl.sizeof, v_user=>v_schema_name,  v_kindofext=>jkl.kindofext , v_clob_ddl=>jkl.ddl );
end loop;
commit;

exception     when others then
         v_code := SQLCODE;
         v_errm := SUBSTR(SQLERRM, 1 , 4000);
         DBMS_OUTPUT.PUT_LINE('WHO=>USER Error_code=>' || v_code || ' Error_msg=>' || v_errm);
                          v_error_hold_out := v_error_hold_out||substr(v_errm,1,100)||chr(10);
end;
************/


--FAILED_LOGIN_ATTEMPTS       Maximum times the user is allowed in fail login before locking the user account * 10
--PASSWORD_LIFE_TIME          Number of days the password is valid before expiry * 108 days
--PASSWORD_REUSE_TIME         Number of day after the user can use the already used password * UNLIMITED
--PASSWORD_REUSE_MAX          Number of times the user can use the already used password * UNLIMITED
--PASSWORD_LOCK_TIME          Number of days the user account remains locked after failed login * 1 day
--PASSWORD_GRACE_TIME         Number of grace days for user to change password * 7 days
--PASSWORD_VERIFY_FUNCTION    PL/SQL that can be used fro password verification * NO DEFAULT SETTING
--SEC_CASE_SENSITIVE_LOGON    To control the case sensitivity in passwords * TRUE

 timesthruit := timesthruit + 1;

--  If NULL is specified (the default), no password verification is performed.
--This is implemented by use of a password verification function.  A DBA can write such a function or can use the default function named VERIFY_FUNCTION.
--The function that is used for password complexity verification is specified with the profile parameter, PASSWORD_VERIFY_FUNCTION.
--If NULL is specified (the default), no password verification is performed.
---+++
-- minimum length is 4 characters
-- password should not be = username
-- at least one alphabetic + one number + special character.
-- prev password must differ from current by 3 letters.
--
--When a DBA connected as the user SYS executes the utlpwdmg.sql script
-- (located at $ORACLE_HOME/rdbms/admin/utlpwdmg.sql) , the Oracle Server creates the VERIFY_FUNCTION .
--The script also executes the ALTER PROFILE command given below ¿ the command modifies the DEFAULT profile.
--
--SQL> Connect SYS as SYSDBA
--SQL> start $ORACLE_HOME/rdbms/admin/utlpwdmg.sql
-- https://mikesmithers.wordpress.com/2013/09/12/mama-mia-oracle-database-password-complexity-and-seventies-euro-pop/#more-2234

--+++++++++start
--+++with xyzl in (
--+++select distinct
--+++        c.username,
--+++        c.account_status,
--+++        a.owner,
--+++        a.object_name,
--+++        a.object_type,
--+++        b.profile,
--+++        decode(b.limit,'VERIFY_FUNCTION',b.limit,nvl(b.limit,'NULL')) limit,
--+++        b.resource_name,
--+++        b.resource_type
--+++   from dba_objects  a,
--+++        dba_profiles b,
--+++        dba_users    c
--+++  where b.resource_name like '%PASSWORD_VERIFY_FUNCTION%' and
--+++        --b.limit = 'VERIFY_FUNCTION'   and
--+++        a.object_type = 'FUNCTION'    and
--+++        b.resource_type = 'PASSWORD'  and
--+++        c.profile = b.profile and
--+++        c.username = 'TKXAPP'
--+++    )
--+++++++++end

/************
for xyz1 in  (
 select  distinct 'PROFILES_VERIFY_FNX~'||object_name           kindofext ,
          dbms_metadata.GET_DDL('FUNCTION',abc.object_name) verify_object_code,
          object_name,
          dbms_lob.getlength(  dbms_metadata.GET_DDL('FUNCTION',abc.object_name))  sizeof
from  (
 select distinct
        a.owner,
        a.object_name,
        a.object_type,
        --b.profile,
        b.limit
   from dba_objects a,
        dba_profiles b
  where b.resource_name like '%PASSWORD_VERIFY_FUNCTION%' and
        a.object_name = b.limit   and
        object_type = 'FUNCTION'  and
      a.owner = v_schema_name
     )  abc
)
*****************/


/*select   'PROFILES_VERIFY_FNX~'||object_name           kindofext ,
                               dbms_metadata.GET_DDL('FUNCTION',abc.object_name, abc.owner) verify_object_code,
          abc.object_name,
          abc.owner,
          abc.limit,
          dbms_lob.getlength(  dbms_metadata.GET_DDL('FUNCTION',abc.object_name, abc.owner))  sizeof
from  (
 select distinct
        a.owner,
        a.object_name,
        a.object_type,
        b.profile,
        b.resource_name,
        b.resource_type,
        b.limit
   from dba_objects a,
        dba_profiles b
  where b.resource_name like '%PASSWORD_VERIFY_FUNCTION%' and
        a.object_name = b.limit   and
        a.object_type = 'FUNCTION'
     )  abc 
*********/

for xyzl in (
select   'PROFILES_VERIFY_FNX~'||object_name||'~'||abc.profile           kindofext ,
                               dbms_metadata.GET_DDL('FUNCTION',abc.object_name, abc.owner) verify_object_code,
          abc.object_name,
          abc.owner,
          abc.limit,
          dbms_lob.getlength(  dbms_metadata.GET_DDL('FUNCTION',abc.object_name, abc.owner))  sizeof,
          dba_users.username
from  (
 select distinct
        a.owner,
        a.object_name,
        a.object_type,
        b.profile,
        b.resource_name,
        b.resource_type,
        b.limit
   from dba_objects a,
        dba_profiles b
  where b.resource_name like '%PASSWORD_VERIFY_FUNCTION%' and
        a.object_name = b.limit   and
        a.object_type = 'FUNCTION'
     )  abc , dba_users
     where dba_users.profile = abc.profile and
           dba_users.username = v_schema_name
)
loop

 timesthruit := timesthruit + 1;

     vv_sizeof    := xyzl.sizeof;
     vv_user      := v_schema_name;
     vv_kindofext := xyzl.kindofext;
     vv_clob_ddl  := xyzl.verify_object_code;

 if (xyzl.sizeof between    1 and 4000)
 then
 dbms_output.put_line('outputof '||dbms_lob.substr(xyzl.verify_object_code,4000,1) );
 end if;

 if (xyzl.sizeof between 4001 and 8000)
 then
 dbms_output.put_line('outputof '||dbms_lob.substr(xyzl.verify_object_code,4000,   1) );
 dbms_output.put_line('outputof '||dbms_lob.substr(xyzl.verify_object_code,8000,4001) );
 end if;

 if (xyzl.sizeof between 8001 and 12000)
 then
 dbms_output.put_line('outputof '||dbms_lob.substr(xyzl.verify_object_code, 4000,    1) );
 dbms_output.put_line('outputof '||dbms_lob.substr(xyzl.verify_object_code, 8000, 4001) );
 dbms_output.put_line('outputof '||dbms_lob.substr(xyzl.verify_object_code,12000, 8001) );
 end if;

 if (xyzl.sizeof between 12001 and 16000)
 then
 dbms_output.put_line('outputof '||dbms_lob.substr(xyzl.verify_object_code, 4000,     1) );
 dbms_output.put_line('outputof '||dbms_lob.substr(xyzl.verify_object_code, 8000,  4001) );
 dbms_output.put_line('outputof '||dbms_lob.substr(xyzl.verify_object_code,12000,  8001) );
 dbms_output.put_line('outputof '||dbms_lob.substr(xyzl.verify_object_code,16000, 12001) );
 end if;

     begin
         insert_my_meta_user (v_sizeof=> vv_sizeof, v_user=>vv_user,  v_kindofext=>vv_kindofext , v_clob_ddl=>vv_clob_ddl );
         exception when others then
         v_code := SQLCODE;
         v_errm := SUBSTR(SQLERRM, 1 , 4000);
         v_error_hold_out := v_error_hold_out||'Starting DEFAULT_USER_PROFILE'||chr(10);
         DBMS_OUTPUT.PUT_LINE('AFTER INSERT_MY_META_USER==>WHO=>DEFAULT_USER_PROFILE  Error_code=>' || v_code || ' Error_msg=>' || v_errm);
    end;

end loop;
commit;


-------------------------------------------------------------------------

-------------------------------------------------------------------------

v_output :=     v_error_hold_out ;

exception
    when others then raise;
         v_code := SQLCODE;
         v_errm := SUBSTR(SQLERRM, 1 , 4000);
         tmp_clob := to_clob(v_errm||chr(10)||'ERROR_SOURCE=>'||chr(10));
         v_error_hold_out := v_error_hold_out||'Starting DEFAULT_USER_PROFILE'||chr(10);
         v_output :=     v_error_hold_out ;

       ---------
         begin
         insert into MISO.my_metadata_user ( created_date, instance_name   ,MDSIZE   , OWNER         , ONAME   ,  original_md ) values
                                              ( sysdate,      v_instance_name ,0        , v_schema_name , 'ERROR' ,  tmp_clob    );
         commit;
         exception when others then
                  v_output :=     v_error_hold_out ;
             raise;
         end;
       ---------
end;
/

++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


grant select on                         MISO.my_metadata_seq to public;
grant select, insert, update, delete on MISO.my_metadata     to public;

REM *******************************************************************
REM SQL> desc MISO.get_schema_md4
REM PROCEDURE MISO.get_schema_md4
REM  Argument Name                  Type                    In/Out Default?
REM  ------------------------------ ----------------------- ------ --------
REM  V_SCHEMA_EXTRACT               VARCHAR2                IN
REM  V_OPTIONS_FALSE                VARCHAR2                IN
REM *******************************************************************

desc MISO.re_upg_known_oracle_acts

CREATE OR REPLACE  VIEW re_upg_known_oracle_acts (   username )
AS
 select 'APEX_040200'           from dual union all          
 select 'APEX_LISTENER'         from dual union all        
 select 'APEX_030200'           from dual union all          
 select 'APEX_PUBLIC_USER'      from dual union all     
 select 'APEX_REST_PUBLIC_USER' from dual union all
 select 'ANONYMOUS'          from dual union all
 select 'SYSTEM'             from dual union all
 select 'CTXSYS'             from dual union all
 select 'DBSNMP'             from dual union all
 SELECT 'DIP'                FROM DUAL UNION ALL
 select 'DMSYS'              from dual union all
 select 'EXFSYS'             from dual union all
 select 'HR'                 from dual union all
 select 'MDSYS'              from dual union all
 select 'ODM'                from dual union all
 select 'ODM_MTR'            from dual union all
 select 'OE'                 from dual union all
 select 'OLAPSYS'            from dual union all
 select 'ORDPLUGINS'         from dual union all
 select 'ORDSYS'             from dual union all
 select 'OUTLN'              from dual union all
 select 'PERFSTAT'           from dual union all
 select 'PM'                 from dual union all
 select 'QS'                 from dual union all
 select 'QS_ADM'             from dual union all
 select 'QS_CB'              from dual union all
 select 'QS_CBADM'           from dual union all
 select 'QS_CS'              from dual union all
 select 'QS_ES'              from dual union all
 select 'QS_OS'              from dual union all
 select 'QS_WS'              from dual union all
 select 'SCOTT'              from dual union all
 select 'SH'                 from dual union all
 select 'SI_INFORMTN_SCHEMA' from dual union all
 select 'SYS'                from dual union all
 select 'SYSMAN'             from dual union all
 select 'SYSTEM'             from dual union all
 SELECT 'TSMSYS'             FROM DUAL UNION ALL
 select 'WKPROXY'            from dual union all
 select 'WKSYS'              from dual union all
 select 'WMSYS'              from dual union all
 select 'XDB'                from dual
/

desc MISO.drive_rename_app

 create or replace view MISO.drive_rename_app1
  as
   with abc as (select distinct owner, otype  from MISO.my_metadata
                 where ---owner in ('SMSDBO','SELLOUTDBO') and
                       ( otype is not null and otype <> 'SYNONYM')  and
                     otype in ( 'PLACE HOLDER IGNORE '
                 ,'ALTCHECKCONST'
                 ,'CREATE_PK'
                 ,'CREATE_FK'
                 ,'FUNCTION'
                 ,'GRANT SIUD'
                 ,'PACKAGE'
                 ,'PACKAGE_BODY'
                 ,'PROCEDURE'
                 ,'UINDEX'
                 ,'INDEX'
                 ,'SEQUENCE'
                 ,'TABLE'
                 ,'TRIGGER'
                 ,'TYPE'
                 ,'VIEW' )
                 order by owner, otype
               ),
    fromusr as (select 'MISO.'     userofnow from dual),
      tousr as (select 'NEWMISO.'   toofnow from dual)
 select * from
 (SELECT a.rowid as rowidof, a.md, a.mdsize,
        a.owner, a.oname, a.otype, a.first_200, a.token1, a.token2,
        a.token3, a.token4, a.token5, a.token6, a.token7, a.token8,
        a.token9, a.token10,
         decode(otype,'SEQUENCE',replace( replace(token3,'"',''),        fromusr.userofnow,''),
                      'TABLE'   ,replace( replace(token3,'"',''),        fromusr.userofnow,''),
                      'TRIGGER' ,ltrim(rtrim(upper( substr(
                                       replace(replace(replace(first_200,fromusr.userofnow,''),' FOR EACH ROW ',' REFERENCES '),' REFERENCING ',' REFERENCES '),
                                 instr(replace(replace(replace(first_200,fromusr.userofnow,''),' FOR EACH ROW ',' REFERENCES '),' REFERENCING ',' REFERENCES '),' ON ')+4,
                            (    instr(replace(replace(replace(first_200,fromusr.userofnow,''),' FOR EACH ROW ',' REFERENCES '),' REFERENCING ',' REFERENCES '),' REFERENCES ')
                              - (instr(replace(replace(replace(first_200,fromusr.userofnow,''),' FOR EACH ROW ',' REFERENCES '),' REFERENCING ',' REFERENCES '),' ON ')+4)
                            ) )))),
                      'UINDEX', replace( replace(token6,'"',''),         fromusr.userofnow,''),
                      'INDEX' , replace( replace(token5,'"',''),         fromusr.userofnow,''),
                      'TYPE'  , replace( replace(token5,'"',''),         fromusr.userofnow,''),
                      'VIEW'  , replace( replace(token6,'"',''),         fromusr.userofnow,''),
               'ALTCHECKCONST', replace( replace(token3,'"',''),         fromusr.userofnow,''),
                   'CREATE_PK', replace( replace(token3,'"',''),         fromusr.userofnow,''),
                   'CREATE_FK', replace( replace(token7,'"',''),         fromusr.userofnow,''),
                   'FUNCTION' , replace( replace(token5,'"',''),         fromusr.userofnow,''),
                 'GRANT SIUD' , replace( replace(token4,'"',''),         fromusr.userofnow,''),
                    'PACKAGE' , replace( replace(token5,'"',''),         fromusr.userofnow,''),
               'PACKAGE_BODY' , replace( replace(token6,'"',''),         fromusr.userofnow,''),
                  'PROCEDURE' , replace( replace(token5,'"',''),         fromusr.userofnow,''),
                    otype)
         Object_name
   FROM MISO.my_metadata a , fromusr  
        where a.owner||a.otype in (select owner||otype from abc where owner = 'MISO')
    union all
  SELECT a.rowid as rowidof, a.md, a.mdsize,
        a.owner, a.oname, a.otype, a.first_200, a.token1, a.token2,
        a.token3, a.token4, a.token5, a.token6, a.token7, a.token8,
        a.token9, a.token10,
         decode(otype,'SEQUENCE',replace( replace(token3,'"',''),tousr.toofnow,''),
                      'TABLE'   ,replace( replace(token3,'"',''),tousr.toofnow,''),  'TRIGGER' ,ltrim(rtrim(upper( substr(
                               replace(replace(replace(first_200,tousr.toofnow,''),' FOR EACH ROW ',' REFERENCES '),' REFERENCING ',' REFERENCES '),
                         instr(replace(replace(replace(first_200,tousr.toofnow,''),' FOR EACH ROW ',' REFERENCES '),' REFERENCING ',' REFERENCES '),' ON ')+4,
                    (    instr(replace(replace(replace(first_200,tousr.toofnow,''),' FOR EACH ROW ',' REFERENCES '),' REFERENCING ',' REFERENCES '),' REFERENCES ')
                      - (instr(replace(replace(replace(first_200,tousr.toofnow,''),' FOR EACH ROW ',' REFERENCES '),' REFERENCING ',' REFERENCES '),' ON ')+4)) )))),
                       'UINDEX', replace( replace(token6,'"',''),tousr.toofnow,''),
                       'INDEX' , replace( replace(token5,'"',''),tousr.toofnow,''),
                       'TYPE'  , replace( replace(token5,'"',''),tousr.toofnow,''),
                       'VIEW'  , replace( replace(token6,'"',''),tousr.toofnow,''),
                'ALTCHECKCONST', replace( replace(token3,'"',''),tousr.toofnow,''),
                    'CREATE_PK', replace( replace(token3,'"',''),tousr.toofnow,''),
                    'CREATE_FK', replace( replace(token7,'"',''),tousr.toofnow,''),
                    'FUNCTION' , replace( replace(token5,'"',''),tousr.toofnow,''),
                  'GRANT SIUD' , replace( replace(token4,'"',''),tousr.toofnow,''),
                     'PACKAGE' , replace( replace(token5,'"',''),tousr.toofnow,''),
                'PACKAGE_BODY' , replace( replace(token6,'"',''),tousr.toofnow,''),
                   'PROCEDURE' , replace( replace(token5,'"',''),tousr.toofnow,''),
                    otype)
         Object_name
   FROM MISO.my_metadata a  , tousr
       where a.owner||a.otype in (select owner||otype from abc where owner = 'SELLOUTDBO')
   )
   order by owner,
    decode(otype,
     'SEQUENCE'      ,1
    ,'TABLE'         ,2
    ,'TRIGGER'       ,3
    ,'UINDEX'        ,4
    ,'INDEX'         ,5
    ,'TYPE'          ,6
    ,'VIEW'          ,7
    ,'ALTCHECKCONST' ,8
    ,'CREATE_PK'     ,9
    ,'CREATE_FK'     ,9.5
    ,'FUNCTION'      ,10
    ,'GRANT SIUD'    ,11
    ,'PACKAGE'       ,12
    ,'PACKAGE_BODY'  ,13
    ,'PROCEDURE'     ,14
    ,15);
 
 set long 3200000;

fuck============

set serveroutput on echo on verify on feedback on termout on pagesize 60 line 6000 trimspool on timing on;
exec dbms_output.enable(9999999999);

select 'exec MISO.get_schema_md4('||chr(39)||username||chr(39)||','||chr(39)||'~SEGMENT_ATTRIBUTES~~STORAGE~~TABLESPACE~'||chr(39)||');' from dba_users 
 where ---username in     (select distinct owner from dba_objects) and
          username not in (select username from  MISO.re_upg_known_oracle_acts )  ----and username like 'TKX%'
      and username in (select distinct owner from dba_objects) 
       order by username;

 set echo on verify on feedback on pagesize 10000 line 3000 trimspool on serveroutput on timing on;
exec dbms_output.enable(9999999999);


exec MISO.get_schema_md4('ADMIN','~SEGMENT_ATTRIBUTES~~STORAGE~~TABLESPACE~');
exec MISO.get_schema_md4('APEX_210100','~SEGMENT_ATTRIBUTES~~STORAGE~~TABLESPACE~');
exec MISO.get_schema_md4('AQDEMOADMIN','~SEGMENT_ATTRIBUTES~~STORAGE~~TABLESPACE~');
exec MISO.get_schema_md4('MISO','~SEGMENT_ATTRIBUTES~~STORAGE~~TABLESPACE~');
exec MISO.get_schema_md4('SSB','~SEGMENT_ATTRIBUTES~~STORAGE~~TABLESPACE~');

select count(*), owner, otype from MISO.my_metadata --where owner in ('SMSDBO','SMSAPP')  
group by owner, otype order by owner, otype
/

REM IGNORE FOR NOW ==> select count(*), owner, otype from MISO.my_metadata where owner in ('SMSDBO','SMSAPP')  group by owner, otype
REM IGNORE FOR NOW ==> set pagesize 0 line 3000 trimspool on;
REM IGNORE FOR NOW ==> set long 3200000;
REM IGNORE FOR NOW ==> spool MISO.sql_out
REM IGNORE FOR NOW ==> col md format a32000 wrap;
REM IGNORE FOR NOW ==> select md from MISO.my_metadata 
REM IGNORE FOR NOW ==> where --owner  like 'TKX%' 
REM IGNORE FOR NOW ==>    otype in ( 'TABLE','TRIGGER','VIEW','CREATE_PK','UNIQUEINDEX','INDEX','SEQUENCE','GRANT SIUD')
REM IGNORE FOR NOW ==> order by decode(otype,'TABLE',1,'TRIGGER',2,'VIEW',3,'CREATE_PK',4,'UNIQUEINDEX',5,'INDEX',6,'SEQUENCE',7,'GRANT SIUD',8,9);
REM IGNORE FOR NOW ==> spool off;
REM IGNORE FOR NOW ==> 
REM IGNORE FOR NOW ==> 
REM IGNORE FOR NOW ==> set long 10000000
REM IGNORE FOR NOW ==> set pagesize 0
REM IGNORE FOR NOW ==> set trimspool on
REM IGNORE FOR NOW ==> set linesize 2000
REM IGNORE FOR NOW ==> execute dbms_metadata.set_transform_param (DBMS_METADATA.SESSION_TRANSFORM,'SQLTERMINATOR',TRUE);
REM IGNORE FOR NOW ==> column x format a200 WORD_WRAPPED
REM IGNORE FOR NOW ==> 
REM IGNORE FOR NOW ==> -->skip--> with abc as (  select 'exec MISO.get_schema_md4('||chr(39)||username||chr(39)||','||chr(39)||'~SEGMENT_ATTRIBUTES~~STORAGE~~TABLESPACE~'||chr(39)||');' from dba_users 
REM IGNORE FOR NOW ==> -->skip-->  where ---username in     (select distinct owner from dba_objects) and
REM IGNORE FOR NOW ==> -->skip-->        username not in (select username from  MISO.re_upg_known_oracle_acts ) 
REM IGNORE FOR NOW ==> -->skip-->        --and username like 'TKX%'
REM IGNORE FOR NOW ==> -->skip-->        order by username;
REM IGNORE FOR NOW ==> 
REM IGNORE FOR NOW ==> select dbms_metadata.get_ddl ('USER', username) x
REM IGNORE FOR NOW ==> from dba_users
REM IGNORE FOR NOW ==> where username in ('&&USERNAME') union all 
REM IGNORE FOR NOW ==> select dbms_metadata.get_granted_ddl ('DEFAULT_ROLE', grantee) x
REM IGNORE FOR NOW ==> from (select distinct grantee
REM IGNORE FOR NOW ==> from dba_role_privs
REM IGNORE FOR NOW ==> where default_role = 'YES'
REM IGNORE FOR NOW ==> intersect
REM IGNORE FOR NOW ==> select username
REM IGNORE FOR NOW ==> from dba_users
REM IGNORE FOR NOW ==> where username in ('&&USERNAME'));
REM IGNORE FOR NOW ==> 
REM IGNORE FOR NOW ==> select dbms_metadata.get_granted_ddl ('ROLE_GRANT', grantee) x
REM IGNORE FOR NOW ==> from (select distinct grantee
REM IGNORE FOR NOW ==> from dba_role_privs
REM IGNORE FOR NOW ==> intersect
REM IGNORE FOR NOW ==> select username
REM IGNORE FOR NOW ==> from dba_users
REM IGNORE FOR NOW ==> where username in ('&&USERNAME'));
REM IGNORE FOR NOW ==> 
REM IGNORE FOR NOW ==> select dbms_metadata.get_granted_ddl ('SYSTEM_GRANT', grantee) x
REM IGNORE FOR NOW ==> from (select distinct grantee
REM IGNORE FOR NOW ==> from dba_sys_privs
REM IGNORE FOR NOW ==> intersect
REM IGNORE FOR NOW ==> select username
REM IGNORE FOR NOW ==> from dba_users
REM IGNORE FOR NOW ==> where username in ('&&USERNAME'));
REM IGNORE FOR NOW ==> 
REM IGNORE FOR NOW ==> select dbms_metadata.get_granted_ddl ('OBJECT_GRANT', grantee, 'COMPATIBLE','ORACLE','DDL',100000) x
REM IGNORE FOR NOW ==> from (select distinct grantee
REM IGNORE FOR NOW ==> from dba_tab_privs
REM IGNORE FOR NOW ==> intersect
REM IGNORE FOR NOW ==> select username
REM IGNORE FOR NOW ==> from dba_users
REM IGNORE FOR NOW ==> where username in ('&&USERNAME'));
REM IGNORE FOR NOW ==> 

++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


create or replace view MISO.soxaud_prof_past_pwds 
as 
SELECT user$.NAME, 
       user$.PASSWORD curr_password, 
       user$.ptime, 
       user_history$.password hist_password,
       user_history$.password_date
FROM   SYS.user_history$, 
       SYS.user$
WHERE  sys.user_history$.user# = sys.user$.user# 
order by 1,3 asc;

grant select on dba_profiles to MISO;
grant select on dba_users    to MISO;


create or replace view MISO.soxaud_prof_params as
with abc as (select     profile, resource_name,resource_type, limit 
               from     dba_profiles 
               order by profile, resource_type, resource_name),
     xyz as (select profile, username, user_id,password, account_status,lock_date,expiry_date,
                    default_tablespace, temporary_tablespace, created,initial_rsrc_consumer_group,password_versions, authentication_type 
               from dba_users)
select decode(resource_name||limit,'PASSWORD_VERIFY_FUNCTIONNULL','NO_VERIFY',null ) watch_key,
       (select name from v$database) dbname, to_char(sysdate,'yyyy/mm/dd hh24:mi:ss') sysdateof, xyz.profile,  xyz.username,  xyz.user_id, xyz.password,  xyz.account_status, xyz.lock_date, xyz.expiry_date,
                     xyz.default_tablespace,  xyz.temporary_tablespace,  xyz.created, xyz.initial_rsrc_consumer_group, xyz.password_versions,  xyz.authentication_type 
        , abc.resource_name,  abc.resource_type,  abc.limit
    from abc, xyz
    where abc.profile = xyz.profile 
       --and resource_name = 'PASSWORD_VERIFY_FUNCTION'
    order by profile, username;
 

 create or replace view MISO.soxaud_prof_fnx_extract as 
  with abc as (
  select distinct
        a.owner,
        a.object_name,
        a.object_type,
        b.profile,
        b.resource_name,
        b.limit
   from dba_objects a,
        dba_profiles b
  where b.resource_name like '%PASSWORD_VERIFY_FUNCTION%' and
        a.object_name = b.limit   and
        a.object_type = 'FUNCTION'  and
        b.limit = 'VERIFY_FUNCTION'
  ),
    xyz1 as  (
 select  distinct abc.resource_name||'~'||abc.limit||'~'||abc.owner||'~'||abc.object_name||'~'||abc.object_type||'~'||abc.profile           kindofext ,
          abc.resource_name,
          abc.limit,
          abc.owner,
          abc.object_name,
          abc.object_type,
          abc.profile  ,
          to_char(dbms_lob.substr(dbms_metadata.GET_DDL('FUNCTION',abc.object_name, abc.owner),4000,    1))   code_1_4k,
          to_char(dbms_lob.substr(dbms_metadata.GET_DDL('FUNCTION',abc.object_name, abc.owner),4000, 4001))   code_4_8k,
          to_char(dbms_lob.substr(dbms_metadata.GET_DDL('FUNCTION',abc.object_name, abc.owner),4000, 8001))  code_8_12k,
          to_char(dbms_lob.substr(dbms_metadata.GET_DDL('FUNCTION',abc.object_name, abc.owner),4000,12001)) code_12_16k,
          to_char(dbms_lob.substr(dbms_metadata.GET_DDL('FUNCTION',abc.object_name, abc.owner),4000,16001)) code_16_20k,
          to_char(dbms_lob.substr(dbms_metadata.GET_DDL('FUNCTION',abc.object_name, abc.owner),4000,20001)) code_20_24k,
          to_char(dbms_lob.substr(dbms_metadata.GET_DDL('FUNCTION',abc.object_name, abc.owner),4000,24001)) code_24_28k,
          length(to_char(dbms_lob.substr(dbms_metadata.GET_DDL('FUNCTION',abc.object_name, abc.owner),4000,    1)))   len_code_1_4k,
          length(to_char(dbms_lob.substr(dbms_metadata.GET_DDL('FUNCTION',abc.object_name, abc.owner),4000, 4001)))   len_code_4_8k,
          length(to_char(dbms_lob.substr(dbms_metadata.GET_DDL('FUNCTION',abc.object_name, abc.owner),4000, 8001)))  len_code_8_12k,
          length(to_char(dbms_lob.substr(dbms_metadata.GET_DDL('FUNCTION',abc.object_name, abc.owner),4000,12001))) len_code_12_16k,
          length(to_char(dbms_lob.substr(dbms_metadata.GET_DDL('FUNCTION',abc.object_name, abc.owner),4000,16001))) len_code_16_20k,
          length(to_char(dbms_lob.substr(dbms_metadata.GET_DDL('FUNCTION',abc.object_name, abc.owner),4000,20001))) len_code_20_24k,
          length(to_char(dbms_lob.substr(dbms_metadata.GET_DDL('FUNCTION',abc.object_name, abc.owner),4000,24001))) len_code_24_28k         
from    abc
)     select  (select name from v$database) dbname,
              to_char(sysdate,'yyyy/mm/dd hh24:mi:ss') sysdateof,
 kindofext ,
 resource_name,
 limit,
 owner,
 object_name,
 object_type,
 profile  ,
   code_1_4k,
   code_4_8k,
  code_8_12k,
 code_12_16k,
 code_16_20k,
 code_20_24k,
 code_24_28k,
    len_code_1_4k,
    len_code_4_8k,
   len_code_8_12k,
  len_code_12_16k,
  len_code_16_20k,
  len_code_20_24k,
  len_code_24_28k             
        from xyz1;      

REM SOX ==>         
REM SOX ==> --------plascencia
REM SOX ==> rem create table tmp_del_1 as select * from  MISO.soxaud_prof_params;   
REM SOX ==> rem create table tmp_del_2 as select * from  MISO.soxaud_prof_fnx_extract;  
REM SOX ==> 
REM SOX ==> CREATE TABLE MST_soxaud_prof_fnx_extract
REM SOX ==>    (
REM SOX ==>     dbname                         VARCHAR2(400    BYTE),
REM SOX ==>     sysdateof                      VARCHAR2(400  BYTE),
REM SOX ==>     kindofext                      VARCHAR2(400  BYTE),
REM SOX ==>     resource_name                  VARCHAR2(400  BYTE) NOT NULL,
REM SOX ==>     limit                          VARCHAR2(400  BYTE),
REM SOX ==>     owner                          VARCHAR2(400  BYTE),
REM SOX ==>     object_name                    VARCHAR2(400  BYTE),
REM SOX ==>     object_type                    VARCHAR2(400  BYTE),
REM SOX ==>     profile                        VARCHAR2(400  BYTE) NOT NULL,
REM SOX ==>     code_1_4k                      VARCHAR2(4000 BYTE),
REM SOX ==>     code_4_8k                      VARCHAR2(4000 BYTE),
REM SOX ==>     code_8_12k                     VARCHAR2(4000 BYTE),
REM SOX ==>     code_12_16k                    VARCHAR2(4000 BYTE),
REM SOX ==>     code_16_20k                    VARCHAR2(4000 BYTE),
REM SOX ==>     code_20_24k                    VARCHAR2(4000 BYTE),
REM SOX ==>     code_24_28k                    VARCHAR2(4000 BYTE),
REM SOX ==>     len_code_1_4k                  NUMBER,
REM SOX ==>     len_code_4_8k                  NUMBER,
REM SOX ==>     len_code_8_12k                 NUMBER,
REM SOX ==>     len_code_12_16k                NUMBER,
REM SOX ==>     len_code_16_20k                NUMBER,
REM SOX ==>     len_code_20_24k                NUMBER,
REM SOX ==>     len_code_24_28k                NUMBER
REM SOX ==>     )
REM SOX ==> /    
REM SOX ==> 
REM SOX ==> create or replace procedure move_soxaud_prof_fnx_ext 
REM SOX ==> as 
REM SOX ==> v_Rows_ins number := 0;
REM SOX ==> begin
REM SOX ==> for ijk in (
REM SOX ==>             select DBNAME
REM SOX ==>                ,SYSDATEOF
REM SOX ==>                ,KINDOFEXT
REM SOX ==>                ,RESOURCE_NAME
REM SOX ==>                ,LIMIT
REM SOX ==>                ,OWNER
REM SOX ==>                ,OBJECT_NAME
REM SOX ==>                ,OBJECT_TYPE
REM SOX ==>                ,PROFILE
REM SOX ==>                ,CODE_1_4K
REM SOX ==>                ,CODE_4_8K
REM SOX ==>                ,CODE_8_12K
REM SOX ==>                ,CODE_12_16K
REM SOX ==>                ,CODE_16_20K
REM SOX ==>                ,CODE_20_24K
REM SOX ==>                ,CODE_24_28K
REM SOX ==>                ,LEN_CODE_1_4K
REM SOX ==>                ,LEN_CODE_4_8K
REM SOX ==>                ,LEN_CODE_8_12K
REM SOX ==>                ,LEN_CODE_12_16K
REM SOX ==>                ,LEN_CODE_16_20K
REM SOX ==>                ,LEN_CODE_20_24K
REM SOX ==>                ,LEN_CODE_24_28K
REM SOX ==>                from soxaud_prof_fnx_extract
REM SOX ==> )
REM SOX ==> loop
REM SOX ==> insert into MST_soxaud_prof_fnx_extract@APEX_SOX_PWD_DBL_STATS_UPDATE  ( 
REM SOX ==>     DBNAME
REM SOX ==>    ,SYSDATEOF
REM SOX ==>    ,KINDOFEXT
REM SOX ==>    ,RESOURCE_NAME
REM SOX ==>    ,LIMIT
REM SOX ==>    ,OWNER
REM SOX ==>    ,OBJECT_NAME
REM SOX ==>    ,OBJECT_TYPE
REM SOX ==>    ,PROFILE
REM SOX ==>    ,CODE_1_4K
REM SOX ==>    ,CODE_4_8K
REM SOX ==>    ,CODE_8_12K
REM SOX ==>    ,CODE_12_16K
REM SOX ==>    ,CODE_16_20K
REM SOX ==>    ,CODE_20_24K
REM SOX ==>    ,CODE_24_28K
REM SOX ==>    ,LEN_CODE_1_4K
REM SOX ==>    ,LEN_CODE_4_8K
REM SOX ==>    ,LEN_CODE_8_12K
REM SOX ==>    ,LEN_CODE_12_16K
REM SOX ==>    ,LEN_CODE_16_20K
REM SOX ==>    ,LEN_CODE_20_24K
REM SOX ==>    ,LEN_CODE_24_28K ) values (
REM SOX ==>     ijk.DBNAME
REM SOX ==>    ,ijk.SYSDATEOF
REM SOX ==>    ,ijk.KINDOFEXT
REM SOX ==>    ,ijk.RESOURCE_NAME
REM SOX ==>    ,ijk.LIMIT
REM SOX ==>    ,ijk.OWNER
REM SOX ==>    ,ijk.OBJECT_NAME
REM SOX ==>    ,ijk.OBJECT_TYPE
REM SOX ==>    ,ijk.PROFILE
REM SOX ==>    ,ijk.CODE_1_4K
REM SOX ==>    ,ijk.CODE_4_8K
REM SOX ==>    ,ijk.CODE_8_12K
REM SOX ==>    ,ijk.CODE_12_16K
REM SOX ==>    ,ijk.CODE_16_20K
REM SOX ==>    ,ijk.CODE_20_24K
REM SOX ==>    ,ijk.CODE_24_28K
REM SOX ==>    ,ijk.LEN_CODE_1_4K
REM SOX ==>    ,ijk.LEN_CODE_4_8K
REM SOX ==>    ,ijk.LEN_CODE_8_12K
REM SOX ==>    ,ijk.LEN_CODE_12_16K
REM SOX ==>    ,ijk.LEN_CODE_16_20K
REM SOX ==>    ,ijk.LEN_CODE_20_24K
REM SOX ==>    ,ijk.LEN_CODE_24_28K );
REM SOX ==>    v_Rows_ins := v_Rows_ins + 1;
REM SOX ==> end loop;
REM SOX ==> commit;
REM SOX ==> dbms_output.put_line('inserted ='||to_char(v_rows_ins));
REM SOX ==> exception when others then raise;
REM SOX ==> end;
REM SOX ==> /
REM SOX ==> 	
REM SOX ==>    
REM SOX ==>   
REM SOX ==> 
REM SOX ==> CREATE TABLE mst_soxaud_prof_params
REM SOX ==>     (
REM SOX ==>     watch_key                     VARCHAR2(400 BYTE),
REM SOX ==>     dbname                         VARCHAR2(400  BYTE),
REM SOX ==>     sysdateof                      VARCHAR2(400 BYTE),
REM SOX ==>     profile                        VARCHAR2(400 BYTE) NOT NULL,
REM SOX ==>     username                       VARCHAR2(400 BYTE) NOT NULL,
REM SOX ==>     user_id                        NUMBER NOT NULL,
REM SOX ==>     password                       VARCHAR2(400 BYTE),
REM SOX ==>     account_status                 VARCHAR2(400 BYTE) NOT NULL,
REM SOX ==>     lock_date                      DATE,
REM SOX ==>     expiry_date                    DATE,
REM SOX ==>     default_tablespace             VARCHAR2(400 BYTE) NOT NULL,
REM SOX ==>     temporary_tablespace           VARCHAR2(400 BYTE) NOT NULL,
REM SOX ==>     created                        DATE NOT NULL,
REM SOX ==>     initial_rsrc_consumer_group    VARCHAR2(400  BYTE),
REM SOX ==>     password_versions              VARCHAR2(400  BYTE),
REM SOX ==>     authentication_type            VARCHAR2(400  BYTE),
REM SOX ==>     resource_name                  VARCHAR2(400  BYTE) NOT NULL,
REM SOX ==>     resource_type                  VARCHAR2(400  BYTE),
REM SOX ==>     limit                          VARCHAR2(400  BYTE)
REM SOX ==>     )
REM SOX ==> / 
REM SOX ==> 
REM SOX ==> drop   table move_soxaud_prof_parms_tmp;
REM SOX ==> 
REM SOX ==> create table move_soxaud_prof_parms_tmp as select * from soxaud_prof_params;
REM SOX ==> 
REM SOX ==> create or replace procedure move_soxaud_prof_prms 
REM SOX ==> as
REM SOX ==> v_Rows_ins number := 0;
REM SOX ==> begin
REM SOX ==> for ijk in (
REM SOX ==>  select 
REM SOX ==>  WATCH_KEY                                                                    
REM SOX ==>  ,DBNAME                                                                      
REM SOX ==>  ,SYSDATEOF                                                                   
REM SOX ==>  ,PROFILE                                                                     
REM SOX ==>  ,USERNAME                                                                    
REM SOX ==>  ,USER_ID                                                                     
REM SOX ==>  ,PASSWORD                                                                    
REM SOX ==>  ,ACCOUNT_STATUS                                                              
REM SOX ==>  ,LOCK_DATE                                                                   
REM SOX ==>  ,EXPIRY_DATE                                                                 
REM SOX ==>  ,DEFAULT_TABLESPACE                                                          
REM SOX ==>  ,TEMPORARY_TABLESPACE                                                        
REM SOX ==>  ,CREATED                                                                     
REM SOX ==>  ,INITIAL_RSRC_CONSUMER_GROUP                                                 
REM SOX ==>  ,PASSWORD_VERSIONS                                                           
REM SOX ==>  ,AUTHENTICATION_TYPE                                                         
REM SOX ==>  ,RESOURCE_NAME                                                               
REM SOX ==>  ,RESOURCE_TYPE                                                               
REM SOX ==>  ,LIMIT  from       move_soxaud_prof_parms_tmp)
REM SOX ==>  loop
REM SOX ==>  insert into MST_SOXAUD_PROF_PARAMS@APEX_SOX_PWD_DBL_STATS_UPDATE (
REM SOX ==>   WATCH_KEY                                                                    
REM SOX ==>  ,DBNAME                                                                      
REM SOX ==>  ,SYSDATEOF                                                                   
REM SOX ==>  ,PROFILE                                                                     
REM SOX ==>  ,USERNAME                                                                    
REM SOX ==>  ,USER_ID                                                                     
REM SOX ==>  ,PASSWORD                                                                    
REM SOX ==>  ,ACCOUNT_STATUS                                                              
REM SOX ==>  ,LOCK_DATE                                                                   
REM SOX ==>  ,EXPIRY_DATE                                                                 
REM SOX ==>  ,DEFAULT_TABLESPACE                                                          
REM SOX ==>  ,TEMPORARY_TABLESPACE                                                        
REM SOX ==>  ,CREATED                                                                     
REM SOX ==>  ,INITIAL_RSRC_CONSUMER_GROUP                                                 
REM SOX ==>  ,PASSWORD_VERSIONS                                                           
REM SOX ==>  ,AUTHENTICATION_TYPE                                                         
REM SOX ==>  ,RESOURCE_NAME                                                               
REM SOX ==>  ,RESOURCE_TYPE                                                               
REM SOX ==>  ,LIMIT) values (
REM SOX ==>   ijk.WATCH_KEY                                                                    
REM SOX ==>  ,ijk.DBNAME                                                                      
REM SOX ==>  ,ijk.SYSDATEOF                                                                   
REM SOX ==>  ,ijk.PROFILE                                                                     
REM SOX ==>  ,ijk.USERNAME                                                                    
REM SOX ==>  ,ijk.USER_ID                                                                     
REM SOX ==>  ,ijk.PASSWORD                                                                    
REM SOX ==>  ,ijk.ACCOUNT_STATUS                                                              
REM SOX ==>  ,ijk.LOCK_DATE                                                                   
REM SOX ==>  ,ijk.EXPIRY_DATE                                                                 
REM SOX ==>  ,ijk.DEFAULT_TABLESPACE                                                          
REM SOX ==>  ,ijk.TEMPORARY_TABLESPACE                                                        
REM SOX ==>  ,ijk.CREATED                                                                     
REM SOX ==>  ,ijk.INITIAL_RSRC_CONSUMER_GROUP                                                 
REM SOX ==>  ,ijk.PASSWORD_VERSIONS                                                           
REM SOX ==>  ,ijk.AUTHENTICATION_TYPE                                                         
REM SOX ==>  ,ijk.RESOURCE_NAME                                                               
REM SOX ==>  ,ijk.RESOURCE_TYPE                                                               
REM SOX ==>  ,ijk.LIMIT);
REM SOX ==> end loop;
REM SOX ==> commit;
REM SOX ==> dbms_output.put_line('inserted ='||to_char(v_rows_ins));
REM SOX ==> exception when others then raise;                       
REM SOX ==> end;                                                     
REM SOX ==> /                                                       
REM SOX ==> 
REM SOX ==> 
REM SOX ==>               
REM SOX ==> ------------------------------------
REM SOX ==> --create database link APEX_SOX_PWD_DBL_STATS_UPDATE
REM SOX ==> -- connect to soxpwddbo identified by epfy44yq using 
REM SOX ==> --'(DESCRIPTION=(ADDRESS_LIST=(ADDRESS=(PROTOCOL=TCP)(HOST=USHAPWP00109.nbcuni.ge.com)(PORT=1521)))(CONNECT_DATA=(SERVICE_NAME=Apex.nbcuni.ge.com)))'
REM SOX ==> --/
REM SOX ==> --select instance_name from v$instance@APEX_SOX_PWD_DBL_STATS_UPDATE;
REM SOX ==> ------------------------------------
REM SOX ==> 
REM SOX ==> create sequence sox_def_pwd_debug_events_seq;
REM SOX ==> 
REM SOX ==>    create table sox_def_pwd_debug_events (
REM SOX ==>                 sox_def_pwd_debug_events_id number primary key,
REM SOX ==>    message_to_log                     varchar2(4000), 
REM SOX ==>    database_name                      varchar2(100), 
REM SOX ==>    username_of                        varchar2(100), 
REM SOX ==>    insert_dt                          date           default sysdate
REM SOX ==>    );
REM SOX ==> 
REM SOX ==> 
REM SOX ==>  CREATE OR REPLACE TRIGGER TRG_b4_soxdefpwd_de
REM SOX ==>  BEFORE INSERT ON sox_def_pwd_debug_events
REM SOX ==>   FOR EACH ROW
REM SOX ==>   BEGIN
REM SOX ==>   IF ( :new.SOX_DEF_PWD_DEBUG_EVENTS_ID IS NULL )
REM SOX ==>    THEN
REM SOX ==>      SELECT SOX_DEF_PWD_DEBUG_EVENTS_seq.nextval INTO :new.SOX_DEF_PWD_DEBUG_EVENTS_ID FROM DUAL;
REM SOX ==>    END IF;
REM SOX ==>  END;
REM SOX ==>  /
REM SOX ==>  
REM SOX ==> 
REM SOX ==> create or replace procedure p_to_132 (P_pretty in boolean, p_size in number, p_string in varchar2)
REM SOX ==> is
REM SOX ==>       V_SOURCE_PROC varchar2(100) := 'p';
REM SOX ==>       when_null_default_size   number := 80;
REM SOX ==>       when_notnull_max_size    number := 250;
REM SOX ==>       l_cut                    number default p_size;
REM SOX ==>       l_string                 long   default p_string;
REM SOX ==>       l_str_len                number := 0;
REM SOX ==>       pos_last_space           number := 0;
REM SOX ==>    begin
REM SOX ==>       if (l_cut is null)
REM SOX ==>       then
REM SOX ==>          l_cut := when_null_default_size;
REM SOX ==>       end if;
REM SOX ==> 
REM SOX ==>       if (l_cut > when_notnull_max_size)
REM SOX ==>       then
REM SOX ==>          l_cut := when_notnull_max_size;
REM SOX ==>       end if;
REM SOX ==> 
REM SOX ==>       loop
REM SOX ==>          exit when l_string is null;
REM SOX ==>           l_str_len := length(l_string);
REM SOX ==> 
REM SOX ==>          if (P_pretty  = true and
REM SOX ==>              l_cut     =  when_null_default_size and
REM SOX ==>              l_str_len > when_null_default_size  )
REM SOX ==>          then
REM SOX ==>           ------- we are outputting to the screen so make it pretty.
REM SOX ==>           pos_last_space := instr(l_string,' ',-1);
REM SOX ==>           dbms_output.put_line(substr (l_string, 1, pos_last_space));
REM SOX ==>            l_string := substr(l_string, pos_last_space + 1);
REM SOX ==>          else
REM SOX ==>            dbms_output.put_line(substr (l_string, 1, l_cut));
REM SOX ==>            l_string := substr(l_string, l_cut + 1);
REM SOX ==>          end if;
REM SOX ==>       end loop;
REM SOX ==> end;
REM SOX ==> ---------------------------------------------------
REM SOX ==> 
REM SOX ==> create or replace procedure my_dbmsoutput (g_action in varchar2, sourcein in varchar2, v_db_name in varchar2, v_username in varchar2)
REM SOX ==> as
REM SOX ==>   -- msglevel can we W=warning, I=Informational, E=error must be displayed!
REM SOX ==>   V_SOURCE_PROC        varchar2(100) := 'my_dbmsoutput';
REM SOX ==>   pragma                 AUTONOMOUS_TRANSACTION;
REM SOX ==> begin
REM SOX ==> 
REM SOX ==>   if (G_ACTION = 'SCREEN')
REM SOX ==>   then
REM SOX ==>          p_to_132 (true, 80, sourcein||'~'||v_db_name||'~'||v_username);
REM SOX ==>          
REM SOX ==>   else
REM SOX ==>         begin
REM SOX ==>         	--insert into sox_def_pwd_debug_events ( message_to_log, database_name, username_of) values
REM SOX ==>                 insert into sox_def_pwd_debug_events@APEX_SOX_PWD_DBL_STATS_UPDATE ( message_to_log, database_name, username_of) values                
REM SOX ==>                  ( sourcein, v_db_name, v_username);
REM SOX ==>         exception when others
REM SOX ==>           then raise;
REM SOX ==>         end;
REM SOX ==>   end if;
REM SOX ==> 
REM SOX ==>    commit; -- covered by PRAGMA  AUTONOMOUS_TRANSACTION;
REM SOX ==> exception when others then
REM SOX ==>    commit; -- covered by PRAGMA  AUTONOMOUS_TRANSACTION;
REM SOX ==> end;
REM SOX ==> /
REM SOX ==> 
REM SOX ==> create or replace PROCEDURE default_pass_check
REM SOX ==>   IS
REM SOX ==>     CURSOR c_dba_users IS
REM SOX ==>       SELECT username, password, account_status FROM dba_users;
REM SOX ==> 
REM SOX ==>     v_userpass_exists  	NUMBER;
REM SOX ==>     v_default_user     	VARCHAR2(30);
REM SOX ==>     v_default_password	VARCHAR2(30);
REM SOX ==>     v_security_level	  NUMBER;
REM SOX ==>     v_tel_defaults	    NUMBER		:= 0;
REM SOX ==>     v_commentary	      VARCHAR2(200);
REM SOX ==> 
REM SOX ==>     v_database_name     varchar2(100);
REM SOX ==>     v_timestamp         varchar2(100);    
REM SOX ==> 
REM SOX ==>     v_rpt_clob          clob;
REM SOX ==>   BEGIN
REM SOX ==>       begin
REM SOX ==>        select name, to_char(sysdate,'yyyy/mm/dd hh24:mi:ss') into v_database_name, v_timestamp
REM SOX ==>          from v$database where rownum < 2;
REM SOX ==>       exception when others then
REM SOX ==>        v_database_name := 'NO_PRIVS';
REM SOX ==>       end;
REM SOX ==>     
REM SOX ==>     my_dbmsoutput (g_action=>'TABLE',sourcein=>'Oracle accounts with default passwords',v_db_name=>v_database_name||'~'||v_timestamp, v_username=>'MAIN');
REM SOX ==>     
REM SOX ==>     FOR r_dba_users IN c_dba_users
REM SOX ==>    LOOP 
REM SOX ==>     <<userpass_loop>>
REM SOX ==>     
REM SOX ==>       SELECT count(*)  INTO v_userpass_exists 
REM SOX ==>       FROM   DB_DEFAULT_PASSWORD_HASHES@APEX_SOX_PWD_DBL_STATS_UPDATE
REM SOX ==>       WHERE   username_of=r_dba_users.username
REM SOX ==>       AND   password_hash=r_dba_users.password;
REM SOX ==>       
REM SOX ==>       IF (v_userpass_exists = 1) 
REM SOX ==>       THEN
REM SOX ==>         v_tel_defaults := v_tel_defaults + 1;
REM SOX ==> 
REM SOX ==>         SELECT username_of, prior_password_of, security_level, account_desc
REM SOX ==> 	        INTO v_default_user, v_default_password, v_security_level, v_commentary
REM SOX ==> 	        FROM DB_DEFAULT_PASSWORD_HASHES@APEX_SOX_PWD_DBL_STATS_UPDATE
REM SOX ==> 	       WHERE   tech_stack = 'Oracle'
REM SOX ==> 	         and    username_of   = r_dba_users.username
REM SOX ==> 	         AND    password_hash = r_dba_users.password;
REM SOX ==> 	
REM SOX ==>         my_dbmsoutput (g_action=>'TABLE',sourcein=>r_dba_users.username||'<=Oracle default password=>'||v_default_password||' status=>'||r_dba_users.account_status,v_db_name=>v_database_name||'~'||v_timestamp, v_username=>'FAILURE');
REM SOX ==> 
REM SOX ==>         --dbms_output.put_line('WARNING! The password of '||r_dba_users.username||' is a default '||'password. It is well known to hackers '||chr(10)||v_commentary||CHR(10));        
REM SOX ==>       END IF;
REM SOX ==> 
REM SOX ==>    END LOOP userpass_loop;
REM SOX ==>     
REM SOX ==>     IF v_tel_defaults = 0 THEN
REM SOX ==>      my_dbmsoutput (g_action=>'TABLE',sourcein=>'No default passwords have been detected.',v_db_name=>v_database_name||'~'||v_timestamp, v_username=>'MAIN');
REM SOX ==>     END IF;
REM SOX ==>   
REM SOX ==>   END default_pass_check;
REM SOX ==> /  
REM SOX ==> 
REM SOX ==> select distinct 'REM => not in below view DRIVE_RENAME_APP ', owner, otype  from my_metadata
REM SOX ==>                 where owner in ('SMSDBO','SELLOUTDBO') and otype is not null  and otype not in ( 'PLACE HOLDER IGNORE '
REM SOX ==>                 ,'ALTCHECKCONST' ,'CREATE_PK'    ,'CREATE_FK'   ,'FUNCTION'   ,'GRANT SIUD'
REM SOX ==>                 ,'PACKAGE'       ,'PACKAGE_BODY' ,'PROCEDURE'   ,'UINDEX'     ,'INDEX'
REM SOX ==>                 ,'SEQUENCE'      ,'TABLE'        ,'TRIGGER'     ,'TYPE'       ,'VIEW' ,'SYNONYM')
REM SOX ==>                 order by owner, otype;
REM SOX ==> 