prompt --application/deployment/install/upgrade_remove_help_table
begin
--   Manifest
--     INSTALL: UPGRADE-Remove Help Table
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
 p_id=>wwv_flow_api.id(1530692352771110109)
,p_install_id=>wwv_flow_api.id(7488934904666529534)
,p_name=>'Remove Help Table'
,p_sequence=>30
,p_script_type=>'UPGRADE'
,p_condition_type=>'EXISTS'
,p_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select table_name',
'from user_tables',
'where table_name = ''EBA_CA_HELP_PAGE'''))
,p_script_clob=>'drop table eba_ca_help_page;'
);
wwv_flow_api.component_end;
end;
/
