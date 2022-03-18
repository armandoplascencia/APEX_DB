prompt --application/deployment/install/upgrade_change_status_report_priv_name
begin
--   Manifest
--     INSTALL: UPGRADE-Change status report priv name
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
 p_id=>wwv_flow_api.id(18375158174670643092)
,p_install_id=>wwv_flow_api.id(9012014618759672631)
,p_name=>'Change status report priv name'
,p_sequence=>120
,p_script_type=>'UPGRADE'
,p_condition_type=>'EXISTS'
,p_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'  from eba_proj_status_rpts$',
' where viewable_by = ''Submitter and Project Owners'''))
,p_script_clob=>'update eba_proj_status_rpts$ set viewable_by = ''Submitter and Project Members'' where viewable_by = ''Submitter and Project Owners'';'
);
wwv_flow_api.component_end;
end;
/
