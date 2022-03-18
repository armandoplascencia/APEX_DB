prompt --application/deployment/install/upgrade_eba_proj_help_package_spec
begin
--   Manifest
--     INSTALL: UPGRADE-eba_proj_help package spec
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
 p_id=>wwv_flow_api.id(1918802047153907868)
,p_install_id=>wwv_flow_api.id(9012014618759672631)
,p_name=>'eba_proj_help package spec'
,p_sequence=>1200
,p_script_type=>'UPGRADE'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'create or replace package eba_proj_help as',
'    function get_project_details_help_text(',
'        p_app_id in number',
'    ) return varchar2;',
'end eba_proj_help;',
'/',
'show errors'))
);
wwv_flow_api.component_end;
end;
/
