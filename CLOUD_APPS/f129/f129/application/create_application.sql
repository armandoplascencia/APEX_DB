prompt --application/create_application
begin
--   Manifest
--     FLOW: 129
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>129
,p_default_id_offset=>101668256384016436
,p_default_owner=>'MISO'
);
wwv_flow_api.create_flow(
 p_id=>wwv_flow.g_flow_id
,p_owner=>nvl(wwv_flow_application_install.get_schema,'MISO')
,p_name=>nvl(wwv_flow_application_install.get_application_name,'Sample REST Services')
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'129')
,p_application_group=>wwv_flow_api.id(112985349530728681)
,p_application_group_name=>'21.1 Sample Apps'
,p_page_view_logging=>'YES'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt=>'331CD6399D33CD96A6007D2415FB5EE98A177CF94572CD735F4CCCA4C30BC184'
,p_checksum_salt_last_reset=>'20150102075944'
,p_bookmark_checksum_function=>'SH1'
,p_compatibility_mode=>'19.2'
,p_flow_language=>'en'
,p_flow_language_derived_from=>'0'
,p_date_format=>'YYYY/MM/DD'
,p_direction_right_to_left=>'N'
,p_flow_image_prefix => nvl(wwv_flow_application_install.get_image_prefix,'')
,p_documentation_banner=>wwv_flow_string.join(wwv_flow_t_varchar2(
'1.0.2 -> 1.0.3: Added "SQL Source" show/hide region to "Collection on EMP" page.',
'1.0.3 -> 1.0.4: Changed Authentication scheme to use new "ORA_WWV_PACKAGED_APPLICATIONS" cookie'))
,p_authentication=>'PLUGIN'
,p_authentication_id=>wwv_flow_api.id(10624319252984848471)
,p_application_tab_set=>0
,p_logo_type=>'T'
,p_logo_text=>'&APP_NAME.'
,p_favicons=>'<link rel="shortcut icon" href="#IMAGE_PREFIX#apex_ui/img/favicons/app-sample-restful-services.ico"><link rel="icon" sizes="16x16" href="#IMAGE_PREFIX#apex_ui/img/favicons/app-sample-restful-services-16x16.png"><link rel="icon" sizes="32x32" href="#I'
||'MAGE_PREFIX#apex_ui/img/favicons/app-sample-restful-services-32x32.png"><link rel="apple-touch-icon" sizes="180x180" href="#IMAGE_PREFIX#apex_ui/img/favicons/app-sample-restful-services.png">'
,p_public_user=>'APEX_PUBLIC_USER'
,p_proxy_server=>nvl(wwv_flow_application_install.get_proxy,'')
,p_no_proxy_domains=>nvl(wwv_flow_application_install.get_no_proxy_domains,'')
,p_flow_version=>'2.0.8'
,p_flow_status=>'AVAILABLE_W_EDIT_LINK'
,p_flow_unavailable_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'This application is currently unavailable.',
'http://www-proxy.us.oracle.com:80'))
,p_exact_substitutions_only=>'Y'
,p_deep_linking=>'Y'
,p_runtime_api_usage=>'T'
,p_authorize_public_pages_yn=>'Y'
,p_rejoin_existing_sessions=>'P'
,p_csv_encoding=>'N'
,p_auto_time_zone=>'N'
,p_substitution_string_01=>'APPLICATION_ICON'
,p_substitution_value_01=>'oracle_platform_white.gif'
,p_substitution_string_02=>'APP_NAME'
,p_substitution_value_02=>'Sample REST Services'
,p_last_updated_by=>'MISO'
,p_last_upd_yyyymmddhh24miss=>'20220303060400'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_ui_type_name => null
,p_print_server_type=>'INSTANCE'
);
wwv_flow_api.component_end;
end;
/
