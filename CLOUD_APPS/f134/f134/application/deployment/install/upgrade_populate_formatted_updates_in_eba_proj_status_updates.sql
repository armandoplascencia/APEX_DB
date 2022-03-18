prompt --application/deployment/install/upgrade_populate_formatted_updates_in_eba_proj_status_updates
begin
--   Manifest
--     INSTALL: UPGRADE-Populate Formatted Updates in eba_proj_status_updates
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
 p_id=>wwv_flow_api.id(4017148532362514085)
,p_install_id=>wwv_flow_api.id(9012014618759672631)
,p_name=>'Populate Formatted Updates in eba_proj_status_updates'
,p_sequence=>1250
,p_script_type=>'UPGRADE'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'alter package EBA_PROJ_FW compile body',
'/',
'',
'alter trigger bi_eba_proj_status_updates disable;',
'',
'update eba_proj_status_updates$',
'set formatted_update = eba_proj_fw.save_formatted_status_update( status_update )',
'where formatted_update is null;',
'',
'commit;',
'',
'alter trigger bi_eba_proj_status_updates enable;'))
);
wwv_flow_api.component_end;
end;
/
