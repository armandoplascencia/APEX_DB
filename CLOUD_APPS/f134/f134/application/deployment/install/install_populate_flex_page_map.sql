prompt --application/deployment/install/install_populate_flex_page_map
begin
--   Manifest
--     INSTALL: INSTALL-Populate flex page map
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
 p_id=>wwv_flow_api.id(6243874302603733500)
,p_install_id=>wwv_flow_api.id(9012014618759672631)
,p_name=>'Populate flex page map'
,p_sequence=>710
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    eba_proj_flex_fw.populate_page_map_table();',
'    -- Make sure we''re starting with a clean slate.',
'    eba_proj_flex_fw.reset_flex_registry();',
'end;',
''))
);
wwv_flow_api.component_end;
end;
/
