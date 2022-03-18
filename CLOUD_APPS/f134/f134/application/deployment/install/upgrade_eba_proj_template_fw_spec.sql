prompt --application/deployment/install/upgrade_eba_proj_template_fw_spec
begin
--   Manifest
--     INSTALL: UPGRADE-eba_proj_template_fw spec
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
 p_id=>wwv_flow_api.id(13658928344689656143)
,p_install_id=>wwv_flow_api.id(9012014618759672631)
,p_name=>'eba_proj_template_fw spec'
,p_sequence=>480
,p_script_type=>'UPGRADE'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'create or replace package eba_proj_template_fw as',
'',
'    -- Recursive function to figure out when a template milestone starts',
'    function start_offset( p_milestone_id in number ) return number;',
'',
'end eba_proj_template_fw;'))
);
wwv_flow_api.component_end;
end;
/
