prompt --application/create_application
begin
--   Manifest
--     FLOW: 134
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>134
,p_default_id_offset=>172493832712964115
,p_default_owner=>'MISO'
);
wwv_flow_api.create_flow(
 p_id=>wwv_flow.g_flow_id
,p_owner=>nvl(wwv_flow_application_install.get_schema,'MISO')
,p_name=>nvl(wwv_flow_application_install.get_application_name,'P-Track')
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'134')
,p_application_group=>wwv_flow_api.id(128803418344176889)
,p_application_group_name=>'19.2 Productivity Apps'
,p_page_view_logging=>'YES'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt=>'510FF3EEF565CAD8910AC29D5AE8861B0F7EF14584CAC7E2AAEB1387C72520E8'
,p_checksum_salt_last_reset=>'20141231094757'
,p_bookmark_checksum_function=>'SH1'
,p_accept_old_checksums=>false
,p_max_session_length_sec=>28800
,p_compatibility_mode=>'5.1'
,p_flow_language=>'en'
,p_flow_language_derived_from=>'FLOW_PRIMARY_LANGUAGE'
,p_allow_feedback_yn=>'Y'
,p_timestamp_format=>'&APP_DATE_TIME_FORMAT.'
,p_direction_right_to_left=>'N'
,p_flow_image_prefix => nvl(wwv_flow_application_install.get_image_prefix,'')
,p_documentation_banner=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Track projects, milestones, action items.  Create project summary reports.',
'1.1.31 -> 1.1.32: Changed Notifications region(s) from plsql to report.',
'1.2.3 -> 1.2.4: Changed time_stamp condition of "Application Page Views" and "Top Users" IR queries',
'1.2.4 -> 1.2.5: Changed Authentication scheme to use new "APEX_PACKAGED_APPLICATIONS" cookie',
'1.2.5 -> 1.2.6: Added confirm modal when enabling ACL',
'1.2.6 -> 1.2.7: Fixed translation issue on "Timeframe (4 weeks)" LOV',
'1.2.9 -> 1.2.10: Fixed issue in upgrade script.',
'2.0.3 -> 2.0.4: Added "Rename Application" page and supporting application items, computations, substitution strings, item and region  changes on login pages, and UI Logo text replacement.',
'2.0.10 -> 2.0.11: Added eba_proj_status_available_v view (and associated deinstall line and upgrade script). Also changed "OPEN PROJECTS" LOV to "AVAILABLE PROJECTS (Hierarchical)" and changed this LOV''s select statement to query the new view',
'2.0.12 -> 2.0.13: Added Notifications to Mobile home page',
'2.0.13 -> 2.0.14: Added Bulk Add Users pages (103 & 104) and Username Format page (71)',
'2.0.16 -> 2.0.17: Added Timezone support',
'2.2.38 -> 2.2.39: Error handling procedure updated to resolve bug 17516350',
'3.0.1 -> 3.0.2: New ACL Controls use translated messages'))
,p_authentication=>'PLUGIN'
,p_authentication_id=>wwv_flow_api.id(8972391822568050527)
,p_application_tab_set=>1
,p_logo_type=>'T'
,p_logo_text=>'&APPLICATION_TITLE.'
,p_favicons=>'<link rel="shortcut icon" href="#IMAGE_PREFIX#apex_ui/img/favicons/app-p-track.ico"> <link rel="icon" sizes="16x16" href="#IMAGE_PREFIX#apex_ui/img/favicons/app-p-track-16x16.png"> <link rel="icon" sizes="32x32" href="#IMAGE_PREFIX#apex_ui/img/favico'
||'ns/app-p-track-32x32.png"> <link rel="apple-touch-icon" sizes="180x180" href="#IMAGE_PREFIX#apex_ui/img/favicons/app-p-track.png">'
,p_public_user=>'APEX_PUBLIC_USER'
,p_proxy_server=>nvl(wwv_flow_application_install.get_proxy,'')
,p_no_proxy_domains=>nvl(wwv_flow_application_install.get_no_proxy_domains,'')
,p_flow_version=>'6.5.5'
,p_flow_status=>'AVAILABLE_W_EDIT_LINK'
,p_flow_unavailable_text=>'This application is currently unavailable at this time.'
,p_exact_substitutions_only=>'Y'
,p_browser_cache=>'N'
,p_browser_frame=>'D'
,p_referrer_policy=>'strict-origin-when-cross-origin'
,p_deep_linking=>'Y'
,p_runtime_api_usage=>'T'
,p_security_scheme=>wwv_flow_api.id(7306165993925991446)
,p_rejoin_existing_sessions=>'P'
,p_csv_encoding=>'N'
,p_auto_time_zone=>'N'
,p_error_handling_function=>'eba_proj_fw.apex_error_handling'
,p_friendly_url=>'N'
,p_substitution_string_01=>'APP_DATE_TIME_FORMAT'
,p_substitution_value_01=>'DD-MON-YYYY HH:MIam'
,p_substitution_string_02=>'GETTING_STARTED_URL'
,p_substitution_value_02=>'#'
,p_substitution_string_03=>'APP_NAME'
,p_substitution_value_03=>'P-Track'
,p_substitution_string_04=>'APP_DATE_FORMAT'
,p_substitution_value_04=>'DD-MON-YYYY'
,p_substitution_string_05=>'APPLICATION_TITLE'
,p_substitution_value_05=>'P-Track'
,p_last_updated_by=>'APLASCENCIA'
,p_last_upd_yyyymmddhh24miss=>'20220303081030'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_files_version=>87
,p_ui_type_name => null
,p_print_server_type=>'INSTANCE'
);
wwv_flow_api.component_end;
end;
/
