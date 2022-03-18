prompt --application/deployment/install/upgrade_add_formatted_update_to_eba_proj_status_updates
begin
--   Manifest
--     INSTALL: UPGRADE-Add Formatted Update to eba_proj_status_updates
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>134
,p_default_id_offset=>172493832712964115
,p_default_owner=>'MISO'
);
wwv_flow_api.create_install_script(
 p_id=>wwv_flow_api.id(4016896692313508627)
,p_install_id=>wwv_flow_api.id(9012014618759672631)
,p_name=>'Add Formatted Update to eba_proj_status_updates'
,p_sequence=>750
,p_script_type=>'UPGRADE'
,p_condition_type=>'NOT_EXISTS'
,p_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'  from user_tab_cols',
' where table_name = ''EBA_PROJ_STATUS_UPDATES$''',
'   and column_name = ''FORMATTED_UPDATE'''))
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'alter table eba_proj_status_updates$ add ( formatted_update clob );',
'/',
'',
''))
);
wwv_flow_api.component_end;
end;
/
