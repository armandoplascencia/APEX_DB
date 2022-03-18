prompt --application/deployment/install/install_eba_qpoll_preferences_data
begin
--   Manifest
--     INSTALL: INSTALL-eba_qpoll_preferences data
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>110
,p_default_id_offset=>101599614921830918
,p_default_owner=>'MISO'
);
wwv_flow_api.create_install_script(
 p_id=>wwv_flow_api.id(16485643309083558529)
,p_install_id=>wwv_flow_api.id(16006903818735772086)
,p_name=>'eba_qpoll_preferences data'
,p_sequence=>60
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'insert into eba_qpoll_preferences (id, preference_name, preference_value) values (1, ''ACCESS_CONTROL_ENABLED'', ''N'');',
'insert into eba_qpoll_preferences (id, preference_name, preference_value) values (2, ''ACCESS_CONTROL_SCOPE'', ''ACL_ONLY'');',
'insert into eba_qpoll_preferences (id, preference_name, preference_value) values (3, ''USERNAME_FORMAT'', ''EMAIL'');',
'insert into eba_qpoll_preferences (id, preference_name, preference_value) values (4, ''NOTIFICATION_EMAIL_FROM'', ''N/A'');',
'insert into eba_qpoll_preferences (id, preference_name, preference_value) values (5, ''HOST_URL'', ''http://'' || owa_util.get_cgi_env(''HTTP_HOST'') || owa_util.get_cgi_env(''SCRIPT_NAME'') || ''/'');',
'insert into eba_qpoll_preferences (id, preference_name, preference_value) values (6, ''NOTIFICATION_EMAIL_REPLY_TO'', ''N/A'');',
'insert into eba_qpoll_preferences (id, preference_name, preference_value) values (11, ''APPLICATION_TITLE'', ''Poll'');',
'commit;',
'/',
'show errors'))
);
wwv_flow_api.component_end;
end;
/
