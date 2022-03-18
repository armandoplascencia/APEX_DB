prompt --application/deployment/install/upgrade_set_first_run_preference
begin
--   Manifest
--     INSTALL: UPGRADE-Set First Run Preference
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
 p_id=>wwv_flow_api.id(1249929233637787218)
,p_install_id=>wwv_flow_api.id(7488934904666529534)
,p_name=>'Set First Run Preference'
,p_sequence=>60
,p_script_type=>'UPGRADE'
,p_condition_type=>'NOT_EXISTS'
,p_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'  from eba_ca_preferences',
' where preference_name = ''FIRST_RUN'';'))
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    eba_ca_fw.set_preference_value( p_preference_name => ''FIRST_RUN'', p_preference_value => ''NO'' );',
'end;'))
);
wwv_flow_api.component_end;
end;
/
