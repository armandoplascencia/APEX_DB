prompt --application/deployment/install/install_eba_qpoll_sections_table
begin
--   Manifest
--     INSTALL: INSTALL-eba_qpoll_sections table
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
 p_id=>wwv_flow_api.id(13126275718879050170)
,p_install_id=>wwv_flow_api.id(16006903818735772086)
,p_name=>'eba_qpoll_sections table'
,p_sequence=>135
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'CREATE TABLE EBA_QPOLL_SECTIONS',
'   (',
'    ID                    NUMBER not null constraint EBA_QPOLL_SECTIONS_PK primary key, ',
'    POLL_ID               NUMBER not null constraint EBA_QPOLL_SEC_FK',
'                          references EBA_QPOLL_POLLS(id)',
'                          on delete cascade,',
'    ROW_VERSION_NUMBER    NUMBER not null, ',
'    --',
'    display_sequence      number,',
'    title                 VARCHAR2(255) not null, ',
'    section_text          varchar2(4000), ',
'    --',
'    image_filename        VARCHAR2(4000),         ',
'    image_mimetype        VARCHAR2(512),',
'    image_charset         VARCHAR2(512),',
'    image_blob            BLOB,',
'    image_last_updated    DATE,',
'    image_width           number,',
'    image_height          number,',
'    --',
'    CREATED_BY            VARCHAR2(255), ',
'    CREATED               TIMESTAMP WITH TIME ZONE, ',
'    UPDATED_BY            VARCHAR2(255), ',
'    UPDATED               TIMESTAMP WITH TIME ZONE',
'   )  ;',
'',
'',
'create index EBA_QPOLL_SECTIONS_i1 on EBA_QPOLL_SECTIONS(POLL_ID);',
'',
'',
'CREATE OR REPLACE TRIGGER EBA_QPOLL_SECTIONS_BIU',
'   before insert or update on EBA_QPOLL_SECTIONS',
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
'   if inserting or updating then',
'       :new.updated := current_timestamp;',
'       :new.updated_by := nvl(wwv_flow.g_user,user);',
'   end if; ',
'end;',
'/',
'ALTER TRIGGER EBA_QPOLL_SECTIONS_BIU ENABLE;',
''))
);
wwv_flow_api.component_end;
end;
/
