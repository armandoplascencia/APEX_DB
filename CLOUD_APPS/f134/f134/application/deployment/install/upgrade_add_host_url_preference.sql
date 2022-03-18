prompt --application/deployment/install/upgrade_add_host_url_preference
begin
--   Manifest
--     INSTALL: UPGRADE-Add HOST_URL Preference
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
 p_id=>wwv_flow_api.id(17615698636531223316)
,p_install_id=>wwv_flow_api.id(9012014618759672631)
,p_name=>'Add HOST_URL Preference'
,p_sequence=>1090
,p_script_type=>'UPGRADE'
,p_condition_type=>'EXPRESSION'
,p_condition=>'eba_proj_fw.get_preference_value(''HOST_URL'') = ''Preference does not exist'''
,p_condition2=>'PLSQL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    eba_proj_fw.set_preference_value(',
'        p_preference_name => ''HOST_URL'',',
'        p_preference_value => nvl( wwv_flow_utilities.host_url(''SCRIPT''),',
'                                   nvl( wwv_flow_utilities.get_protocol(), ''http'' )',
'                                       ||''://''|| owa_util.get_cgi_env( ''HTTP_HOST'' )',
'                                       || owa_util.get_cgi_env( ''SCRIPT_NAME'' ) )',
'    );',
'    commit;',
'end;'))
);
wwv_flow_api.component_end;
end;
/
