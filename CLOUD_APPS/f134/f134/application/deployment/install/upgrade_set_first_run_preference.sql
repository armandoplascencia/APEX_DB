prompt --application/deployment/install/upgrade_set_first_run_preference
begin
--   Manifest
--     INSTALL: UPGRADE-Set First Run Preference
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
 p_id=>wwv_flow_api.id(1335023173743746230)
,p_install_id=>wwv_flow_api.id(9012014618759672631)
,p_name=>'Set First Run Preference'
,p_sequence=>1190
,p_script_type=>'UPGRADE'
,p_condition_type=>'NOT_EXISTS'
,p_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'  from eba_proj_preferences',
' where preference_name = ''FIRST_RUN'';'))
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'alter package EBA_PROJ_FW compile body',
'/',
'',
'begin',
'    eba_proj_fw.set_preference_value( p_preference_name => ''FIRST_RUN'', p_preference_value => ''NO'' );',
'end;',
'/'))
);
wwv_flow_api.component_end;
end;
/
