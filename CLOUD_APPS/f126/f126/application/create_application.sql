prompt --application/create_application
begin
--   Manifest
--     FLOW: 126
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>126
,p_default_id_offset=>101651461840938715
,p_default_owner=>'MISO'
);
wwv_flow_api.create_flow(
 p_id=>wwv_flow.g_flow_id
,p_owner=>nvl(wwv_flow_application_install.get_schema,'MISO')
,p_name=>nvl(wwv_flow_application_install.get_application_name,'Team Calendar')
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'TEAM_CALENDAR')
,p_application_group=>wwv_flow_api.id(264221706656352346)
,p_application_group_name=>'21.1 Starter Apps'
,p_page_view_logging=>'YES'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt=>'5B2D6F565DCE34D2E8DD61762BB679E56885E97745966A2BB3D087F949AE58A2'
,p_checksum_salt_last_reset=>'20150102071546'
,p_bookmark_checksum_function=>'SH1'
,p_max_session_length_sec=>28800
,p_max_session_idle_sec=>28800
,p_compatibility_mode=>'19.2'
,p_flow_language=>'en'
,p_flow_language_derived_from=>'FLOW_PRIMARY_LANGUAGE'
,p_date_format=>'&APP_DATE_FORMAT.'
,p_timestamp_format=>'&APP_TIMESTAMP_FORMAT.'
,p_direction_right_to_left=>'N'
,p_flow_image_prefix => nvl(wwv_flow_application_install.get_image_prefix,'')
,p_documentation_banner=>wwv_flow_string.join(wwv_flow_t_varchar2(
'1.0.26 -> 1.0.27: Changed Notifications region(s) from plsql to report.',
'    Changed navigation region to APEX list.',
'1.0.27 -> 1.0.28: Changed Authentication scheme to use new "APEX_PACKAGED_APPLICATIONS" cookie',
'1.0.28 -> 1.0.29: Added confirm modal when enabling ACL',
'1.0.30 -> 1.0.31: Added "Rename Application" page and supporting application items, computations, substitution strings, item and region  changes on login pages, and UI Logo text replacement.',
'1.0.31 -> 1.0.32: Added Notifications to Mobile home page (400)',
'1.0.32 -> 1.0.33: Added "Bulk Add Users" functionality',
'1.0.34 -> 1.0.35: Error handling procedure updated to account for bug 17516350',
'1.0.35 -> 1.0.36: Implemented redesigned administrative ACL controls'))
,p_authentication=>'PLUGIN'
,p_authentication_id=>wwv_flow_api.id(9022022217934333449)
,p_application_tab_set=>0
,p_logo_type=>'T'
,p_logo_text=>'&APPLICATION_TITLE.'
,p_favicons=>'<link rel="shortcut icon" href="#IMAGE_PREFIX#apex_ui/img/favicons/app-group-calendar.ico"><link rel="icon" sizes="16x16" href="#IMAGE_PREFIX#apex_ui/img/favicons/app-group-calendar-16x16.png"><link rel="icon" sizes="32x32" href="#IMAGE_PREFIX#apex_u'
||'i/img/favicons/app-group-calendar-32x32.png"><link rel="apple-touch-icon" sizes="180x180" href="#IMAGE_PREFIX#apex_ui/img/favicons/app-group-calendar.png">'
,p_public_user=>'APEX_PUBLIC_USER'
,p_proxy_server=>nvl(wwv_flow_application_install.get_proxy,'')
,p_no_proxy_domains=>nvl(wwv_flow_application_install.get_no_proxy_domains,'')
,p_flow_version=>'2.2.7'
,p_flow_status=>'AVAILABLE_W_EDIT_LINK'
,p_flow_unavailable_text=>'This application is currently unavailable at this time.'
,p_exact_substitutions_only=>'Y'
,p_browser_cache=>'N'
,p_browser_frame=>'D'
,p_deep_linking=>'Y'
,p_runtime_api_usage=>'T'
,p_security_scheme=>wwv_flow_api.id(3336588651205114584)
,p_rejoin_existing_sessions=>'P'
,p_csv_encoding=>'Y'
,p_auto_time_zone=>'N'
,p_error_handling_function=>'eba_ca_fw.apex_error_handling'
,p_substitution_string_01=>'APP_DATE_FORMAT'
,p_substitution_value_01=>'DD-Mon-RRRR'
,p_substitution_string_02=>'APP_TIME_FORMAT'
,p_substitution_value_02=>'HH:MIam'
,p_substitution_string_03=>'APP_TIMESTAMP_FORMAT'
,p_substitution_value_03=>'DSFM HH24:MI:SS'
,p_substitution_string_04=>'APP_DATETIME_FORMAT'
,p_substitution_value_04=>'DD-Mon-RRRR HH:MIam'
,p_substitution_string_05=>'APP_NAME'
,p_substitution_value_05=>'Team Calendar'
,p_last_updated_by=>'ALLAN'
,p_last_upd_yyyymmddhh24miss=>'20210507094832'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_files_version=>6
,p_ui_type_name => null
,p_print_server_type=>'INSTANCE'
);
wwv_flow_api.component_end;
end;
/
