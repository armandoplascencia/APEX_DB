prompt --application/deployment/install/upgrade_create_project_summary_schedule_preference
begin
--   Manifest
--     INSTALL: UPGRADE-create PROJECT_SUMMARY_SCHEDULE preference
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
 p_id=>wwv_flow_api.id(16137236836360407427)
,p_install_id=>wwv_flow_api.id(9012014618759672631)
,p_name=>'create PROJECT_SUMMARY_SCHEDULE preference'
,p_sequence=>880
,p_script_type=>'UPGRADE'
,p_condition_type=>'NOT_EXISTS'
,p_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'  from EBA_PROJ_PREFERENCES',
' where preference_name = ''PROJECT_SUMMARY_SCHEDULE'''))
,p_script_clob=>'insert into EBA_PROJ_PREFERENCES (preference_name, preference_value) values (''PROJECT_SUMMARY_SCHEDULE'', ''QUARTERLY'');'
);
wwv_flow_api.component_end;
end;
/
