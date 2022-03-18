prompt --application/deployment/install/install_eba_qpoll_resp_communities_table
begin
--   Manifest
--     INSTALL: INSTALL-eba_qpoll_resp_communities table
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
 p_id=>wwv_flow_api.id(13956751295417332816)
,p_install_id=>wwv_flow_api.id(16006903818735772086)
,p_name=>'eba_qpoll_resp_communities table'
,p_sequence=>150
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'CREATE TABLE EBA_QPOLL_RESP_COMMUNITIES',
'   (',
'    ID                    NUMBER constraint EBA_QPOLL_RESP_COMM_PK primary key, ',
'    ROW_VERSION_NUMBER    NUMBER not null, ',
'    --',
'    name                  varchar2(4000) not null,',
'    publish_yn            varchar2(1),',
'    --',
'    CREATED_BY            VARCHAR2(255), ',
'    CREATED               TIMESTAMP WITH TIME ZONE, ',
'    UPDATED_BY            VARCHAR2(255), ',
'    UPDATED               TIMESTAMP WITH TIME ZONE',
'   )  ;',
'',
'',
'create unique index EBA_QPOLL_RESP_COMM_UK on EBA_QPOLL_RESP_COMMUNITIES(name);',
'',
'',
'CREATE OR REPLACE TRIGGER EBA_QPOLL_RESP_COMM_BIU',
'   before insert or update on EBA_QPOLL_RESP_COMMUNITIES',
'   for each row',
'begin',
'   if :new.ID is null then',
'      :new.id := to_number(sys_guid(),''XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'');',
'   end if;',
'   if :new.publish_yn is null then',
'      :new.publish_yn := ''Y'';',
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
'   if inserting or updating then',
'       :new.updated := current_timestamp;',
'       :new.updated_by := nvl(wwv_flow.g_user,user);',
'   end if;',
'end;',
'/',
'',
'ALTER TRIGGER EBA_QPOLL_RESP_COMM_BIU ENABLE;',
''))
);
wwv_flow_api.component_end;
end;
/
