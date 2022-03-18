prompt --application/create_application
begin
--   Manifest
--     FLOW: 103
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>103
,p_default_id_offset=>0
,p_default_owner=>'MISO'
);
wwv_flow_api.create_flow(
 p_id=>wwv_flow.g_flow_id
,p_owner=>nvl(wwv_flow_application_install.get_schema,'MISO')
,p_name=>nvl(wwv_flow_application_install.get_application_name,'Liz_Demo_Miso')
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'LIZ-DEMO-MISO')
,p_page_view_logging=>'YES'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt=>'F8D7B6E73A48CFDF30A5E43468D6C5F4DD69C2E4EF9B463DEC071CEAD74C002A'
,p_bookmark_checksum_function=>'MD5'
,p_compatibility_mode=>'19.2'
,p_flow_language=>'en'
,p_flow_language_derived_from=>'FLOW_PRIMARY_LANGUAGE'
,p_allow_feedback_yn=>'Y'
,p_date_format=>'DS'
,p_timestamp_format=>'DS'
,p_timestamp_tz_format=>'DS'
,p_direction_right_to_left=>'N'
,p_flow_image_prefix => nvl(wwv_flow_application_install.get_image_prefix,'')
,p_documentation_banner=>'Application created from create application wizard 2021.10.22.'
,p_authentication=>'PLUGIN'
,p_authentication_id=>wwv_flow_api.id(19575321706781817)
,p_application_tab_set=>1
,p_logo_type=>'T'
,p_logo_text=>'Liz_Demo_Miso'
,p_app_builder_icon_name=>'app-icon.svg'
,p_proxy_server=>nvl(wwv_flow_application_install.get_proxy,'')
,p_no_proxy_domains=>nvl(wwv_flow_application_install.get_no_proxy_domains,'')
,p_flow_version=>'Release 1.0'
,p_flow_status=>'AVAILABLE_W_EDIT_LINK'
,p_exact_substitutions_only=>'Y'
,p_browser_cache=>'N'
,p_browser_frame=>'D'
,p_rejoin_existing_sessions=>'N'
,p_csv_encoding=>'Y'
,p_auto_time_zone=>'N'
,p_substitution_string_01=>'APP_NAME'
,p_substitution_value_01=>'Liz_Demo_Miso'
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20211211001252'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_files_version=>4
,p_ui_type_name => null
,p_print_server_type=>'NATIVE'
);
wwv_flow_api.component_end;
end;
/
