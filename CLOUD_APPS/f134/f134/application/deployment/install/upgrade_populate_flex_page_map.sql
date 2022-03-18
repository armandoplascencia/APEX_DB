prompt --application/deployment/install/upgrade_populate_flex_page_map
begin
--   Manifest
--     INSTALL: UPGRADE-Populate flex page map
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
 p_id=>wwv_flow_api.id(6243875701716764312)
,p_install_id=>wwv_flow_api.id(9012014618759672631)
,p_name=>'Populate flex page map'
,p_sequence=>1070
,p_script_type=>'UPGRADE'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    eba_proj_flex_fw.populate_page_map_table();',
'end;',
'/',
''))
);
wwv_flow_api.component_end;
end;
/
