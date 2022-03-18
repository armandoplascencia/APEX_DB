prompt --application/deployment/install/install_eba_qpoll_respondents_table
begin
--   Manifest
--     INSTALL: INSTALL-eba_qpoll_respondents table
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>110
,p_default_id_offset=>101599614921830918
,p_default_owner=>'MISO'
);
wwv_flow_api.create_install_script(
 p_id=>wwv_flow_api.id(13957561105364379550)
,p_install_id=>wwv_flow_api.id(16006903818735772086)
,p_name=>'eba_qpoll_respondents table'
,p_sequence=>160
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'CREATE TABLE EBA_QPOLL_RESPONDENTS',
'   (',
'    ID                    NUMBER constraint EBA_QPOLL_RESPONDENTS_PK primary key, ',
'    ROW_VERSION_NUMBER    NUMBER not null, ',
'    --',
'    name                  varchar2(4000)  null,',
'    email                 varchar2(4000) not null,',
'    company               varchar2(255),',
'    title                 varchar2(255),',
'    --',
'    CREATED_BY            VARCHAR2(255), ',
'    CREATED               TIMESTAMP WITH TIME ZONE, ',
'    UPDATED_BY            VARCHAR2(255), ',
'    UPDATED               TIMESTAMP WITH TIME ZONE',
'   )  ;',
'',
'',
'create unique index EBA_QPOLL_RESPONDENTS_UK on EBA_QPOLL_RESPONDENTS( email );',
'',
'CREATE OR REPLACE TRIGGER EBA_QPOLL_RESPONDENTS_BIU',
'   before insert or update on EBA_QPOLL_RESPONDENTS',
'   for each row',
'begin',
'   if :new.ID is null then',
'      :new.id := to_number(sys_guid(),''XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'');',
'   end if;',
'   if inserting then',
'       :new.created := current_timestamp;',
'       :new.created_by := nvl(wwv_flow.g_user,user);',
'       :new.updated := current_timestamp;',
'       :new.updated_by := nvl(wwv_flow.g_user,user);',
'       :new.row_version_number := 1;',
'   elsif updating then',
'       :new.row_version_number := nvl(:old.row_version_number,1) + 1;',
'   end if;',
'   :new.email := lower(:new.email);',
'   if inserting or updating then',
'       :new.updated := current_timestamp;',
'       :new.updated_by := nvl(wwv_flow.g_user,user);',
'   end if;',
'end;',
'/',
'',
'ALTER TRIGGER EBA_QPOLL_RESPONDENTS_BIU ENABLE;',
''))
);
wwv_flow_api.component_end;
end;
/
