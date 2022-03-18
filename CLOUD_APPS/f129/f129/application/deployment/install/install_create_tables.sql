prompt --application/deployment/install/install_create_tables
begin
--   Manifest
--     INSTALL: INSTALL-Create Tables
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>129
,p_default_id_offset=>101668256384016436
,p_default_owner=>'MISO'
);
wwv_flow_api.create_install_script(
 p_id=>wwv_flow_api.id(264251169499126617)
,p_install_id=>wwv_flow_api.id(261631896215104599)
,p_name=>'Create Tables'
,p_sequence=>10
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'create table "EBA_RESTDEMO_SAMPLE_EMP" (',
'    EMPNO     NUMBER,',
'    ENAME     VARCHAR2(4000),',
'    JOB       VARCHAR2(4000),',
'    MGR       NUMBER,',
'    HIREDATE  DATE,',
'    SAL       NUMBER,',
'    DEPTNO    NUMBER,',
'    RN        NUMBER',
');',
'',
'create table eba_restdemo_sample_github(',
'    name          varchar2(255),',
'    language      varchar2(50),',
'    description   varchar2(4000),',
'    updated_on    timestamp,',
'    created_on    timestamp,',
'    issues_cnt    number ',
');',
'',
'create table eba_restdemo_sample_urls(',
'    name         varchar2(255) not null primary key,',
'    url          varchar2(500) not null,',
'    https_host   varchar2(500),',
'    last_status  varchar2(500));',
'    ',
'insert into eba_restdemo_sample_urls ( name, url ) values (''Github API'', ''https://api.github.com'');',
'',
'create table eba_restdemo_sample_lang (',
'    name  varchar2(50) not null primary key,',
'    created_by varchar2(50) not null );',
'    ',
'    ',
'insert into eba_restdemo_sample_lang values (''Java'', ''James Gosling'');',
'insert into eba_restdemo_sample_lang values (''PLSQL'', ''Oracle Corporation'');',
'insert into eba_restdemo_sample_lang values (''Ruby'', ''Yukihiro Matsumoto'' );',
'insert into eba_restdemo_sample_lang values (''Python'', ''Guido van Rossum'');',
unistr('insert into eba_restdemo_sample_lang values (''CSS'', ''H\00E5kon Wium Lie'');'),
'insert into eba_restdemo_sample_lang values (''C#'', ''Microsoft Corporation'' );',
'insert into eba_restdemo_sample_lang values (''Go'', ''Google'');',
'insert into eba_restdemo_sample_lang values (''Shell'', ''N/A'');',
'insert into eba_restdemo_sample_lang values (''SQLPL'', ''N/A'');',
''))
);
wwv_flow_api.component_end;
end;
/
