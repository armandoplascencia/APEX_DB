prompt --application/deployment/install/upgrade_update_event_types
begin
--   Manifest
--     INSTALL: UPGRADE-Update event types
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
 p_id=>wwv_flow_api.id(1713303744689853323)
,p_install_id=>wwv_flow_api.id(7488934904666529534)
,p_name=>'Update event types'
,p_sequence=>70
,p_script_type=>'UPGRADE'
,p_condition_type=>'NOT_EXISTS'
,p_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select column_name',
'from user_tab_columns',
'where table_name = ''EBA_CA_EVENT_TYPES''',
'    and column_name = ''INTERNAL_YN'''))
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'alter table eba_ca_event_types',
'  add (INTERNAL_YN VARCHAR2(1));',
''))
);
wwv_flow_api.component_end;
end;
/
