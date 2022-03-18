prompt --application/deployment/install/install_history
begin
--   Manifest
--     INSTALL: INSTALL-history
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>126
,p_default_id_offset=>101651461840938715
,p_default_owner=>'MISO'
);
wwv_flow_api.create_install_script(
 p_id=>wwv_flow_api.id(3337813656076923469)
,p_install_id=>wwv_flow_api.id(7488934904666529534)
,p_name=>'history'
,p_sequence=>203
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'CREATE TABLE eba_ca_history ',
'   (   ',
'    ID                  NUMBER constraint eba_ca_history_pk primary key, ',
'    ROW_VERSION_NUMBER  NUMBER, ',
'    COMPONENT_ID        NUMBER, ',
'    COMPONENT_ROWKEY    VARCHAR2(30 BYTE),',
'    TABLE_NAME          VARCHAR2(60 BYTE) not null,',
'    COLUMN_NAME         VARCHAR2(60 BYTE) not null, ',
'    OLD_VALUE           VARCHAR2(4000 BYTE), ',
'    NEW_VALUE           VARCHAR2(4000 BYTE), ',
'    CHANGE_DATE         TIMESTAMP WITH TIME ZONE, ',
'    CHANGED_BY          VARCHAR2(255 BYTE)',
'   )  ;',
'',
'create index eba_ca_history_i1 on eba_ca_history(component_id);',
'',
'CREATE OR REPLACE TRIGGER biu_eba_ca_history ',
'   before insert or update on eba_ca_history',
'   for each row',
'begin',
'   if :new.ID is null then',
'     select to_number(sys_guid(),''XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'') into :new.id from dual;',
'   end if;',
'   if inserting then',
'       :new.change_date := current_timestamp;',
'       :new.changed_by := nvl(wwv_flow.g_user,user);',
'       :new.row_version_number := 1;',
'   elsif updating then',
'       :new.row_version_number := :new.row_version_number + 1;',
'   end if;',
'end;',
'/',
'ALTER TRIGGER biu_eba_ca_history ENABLE;'))
);
wwv_flow_api.component_end;
end;
/
