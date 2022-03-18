prompt --application/deployment/install/install_eba_qpoll_access_requests_table
begin
--   Manifest
--     INSTALL: INSTALL-eba_qpoll_access_requests table
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
 p_id=>wwv_flow_api.id(14002883801672999002)
,p_install_id=>wwv_flow_api.id(16006903818735772086)
,p_name=>'eba_qpoll_access_requests table'
,p_sequence=>350
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'CREATE TABLE  EBA_QPOLL_ACCESS_REQUESTS ',
'   (',
'    ID                    NUMBER NOT NULL ENABLE, ',
'    ROW_VERSION_NUMBER    NUMBER not null, ',
'    USERNAME              VARCHAR2(255), ',
'    EMAIL_ADDRESS         VARCHAR2(255) NOT NULL ENABLE, ',
'    JUSTIFICATION         VARCHAR2(4000) NOT NULL ENABLE, ',
'    CREATED_TRUNC         DATE NOT NULL ENABLE, ',
'    STATUS                VARCHAR2(255) NOT NULL ENABLE, ',
'    ACTIONED_BY           VARCHAR2(255), ',
'    ACTIONED_REASON       VARCHAR2(4000), ',
'    CREATED               TIMESTAMP (6) WITH TIME ZONE NOT NULL ENABLE, ',
'    CREATED_BY            VARCHAR2(255) NOT NULL ENABLE, ',
'    UPDATED               TIMESTAMP (6) WITH TIME ZONE NOT NULL ENABLE, ',
'    UPDATED_BY            VARCHAR2(255) NOT NULL ENABLE, ',
'     CONSTRAINT EBA_QPOLL_ACCESS_REQ_CC1 CHECK (status in (''pending'',''approved'',''declined'')) ENABLE, ',
'     CONSTRAINT EBA_QPOLL_ACCESS_REQ_PK PRIMARY KEY (ID) USING INDEX  ENABLE',
'   )',
'/',
'',
'CREATE INDEX  EBA_QPOLL_ACCESS_REQ_I1 ON  EBA_QPOLL_ACCESS_REQUESTS (STATUS)',
'/',
'',
'CREATE OR REPLACE  TRIGGER  EBA_QPOLL_ACCESS_REQ_BIU ',
'   before insert or update on ',
'   EBA_QPOLL_ACCESS_REQUESTS ',
'   for each row',
'begin',
'   if :new.id is null then',
'      :new.id := to_number(sys_guid(),''XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'');',
'   end if;',
'   :new.email_address := lower(:new.email_address);',
'   if inserting then',
'      :new.created    := current_timestamp;',
'      :new.created_by := lower(nvl(v(''APP_USER''),user));',
'      :new.created_trunc := trunc(current_timestamp);',
'   end if;',
'   :new.row_version_number := nvl(:old.row_version_number,0) + 1;',
'',
'   :new.updated     := current_timestamp;',
'   :new.updated_by  := lower(nvl(v(''APP_USER''),user));',
'',
'   if updating and :old.status != :new.status then',
'      :new.actioned_by := lower(nvl(v(''APP_USER''),user));',
'   end if;',
'end;',
'/',
'',
'ALTER TRIGGER  EBA_QPOLL_ACCESS_REQ_BIU ENABLE;'))
);
wwv_flow_api.component_end;
end;
/
