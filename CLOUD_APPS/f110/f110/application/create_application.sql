prompt --application/create_application
begin
--   Manifest
--     FLOW: 110
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>110
,p_default_id_offset=>101599614921830918
,p_default_owner=>'MISO'
);
wwv_flow_api.create_flow(
 p_id=>wwv_flow.g_flow_id
,p_owner=>nvl(wwv_flow_application_install.get_schema,'MISO')
,p_name=>nvl(wwv_flow_application_install.get_application_name,'Poll')
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'POLL')
,p_application_group=>wwv_flow_api.id(264221706656352346)
,p_application_group_name=>'21.1 Starter Apps'
,p_page_view_logging=>'YES'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt=>'038323995C34F9AEECE2C3DC4546A4F081300F5570A92C87F9AE7F79007091B9'
,p_checksum_salt_last_reset=>'20150102074337'
,p_bookmark_checksum_function=>'SH1'
,p_max_session_length_sec=>28800
,p_compatibility_mode=>'19.2'
,p_flow_language=>'en'
,p_flow_language_derived_from=>'0'
,p_direction_right_to_left=>'N'
,p_flow_image_prefix => nvl(wwv_flow_application_install.get_image_prefix,'')
,p_documentation_banner=>'1.0.2 -> 1.0.3: Error handling procedure updated to resolve bug 17516350'
,p_authentication=>'PLUGIN'
,p_authentication_id=>wwv_flow_api.id(8149485649317246621)
,p_application_tab_set=>0
,p_logo_type=>'T'
,p_logo_text=>'&APPLICATION_TITLE.'
,p_favicons=>'<link rel="shortcut icon" href="#IMAGE_PREFIX#apex_ui/img/favicons/app-live-poll.ico"><link rel="icon" sizes="16x16" href="#IMAGE_PREFIX#apex_ui/img/favicons/app-live-poll-16x16.png"><link rel="icon" sizes="32x32" href="#IMAGE_PREFIX#apex_ui/img/favi'
||'cons/app-live-poll-32x32.png"><link rel="apple-touch-icon" sizes="180x180" href="#IMAGE_PREFIX#apex_ui/img/favicons/app-live-poll.png">'
,p_public_user=>'APEX_PUBLIC_USER'
,p_proxy_server=>nvl(wwv_flow_application_install.get_proxy,'')
,p_no_proxy_domains=>nvl(wwv_flow_application_install.get_no_proxy_domains,'')
,p_flow_version=>'1.0.9'
,p_flow_status=>'AVAILABLE_W_EDIT_LINK'
,p_flow_unavailable_text=>'This application is currently unavailable at this time.'
,p_exact_substitutions_only=>'Y'
,p_browser_cache=>'N'
,p_browser_frame=>'D'
,p_deep_linking=>'Y'
,p_runtime_api_usage=>'T:W'
,p_security_scheme=>wwv_flow_api.id(16485644720875760829)
,p_rejoin_existing_sessions=>'P'
,p_csv_encoding=>'Y'
,p_auto_time_zone=>'N'
,p_error_handling_function=>'eba_qpoll_fw.apex_error_handling'
,p_substitution_string_01=>'GETTING_STARTED_URL'
,p_substitution_value_01=>'http://www.oracle.com/technetwork/developer-tools/apex/index.html'
,p_substitution_string_02=>'APP_NAME'
,p_substitution_value_02=>'Polls'
,p_last_updated_by=>'MISO'
,p_last_upd_yyyymmddhh24miss=>'20220301214104'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_files_version=>21
,p_ui_type_name => null
,p_print_server_type=>'INSTANCE'
);
wwv_flow_api.component_end;
end;
/
