prompt --application/user_interfaces
begin
--   Manifest
--     USER INTERFACES: 129
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>129
,p_default_id_offset=>101668256384016436
,p_default_owner=>'MISO'
);
wwv_flow_api.create_user_interface(
 p_id=>wwv_flow_api.id(3038757958926989645)
,p_ui_type_name=>'DESKTOP'
,p_display_name=>'DESKTOP'
,p_display_seq=>10
,p_use_auto_detect=>false
,p_is_default=>true
,p_theme_id=>42
,p_home_url=>'f?p=&APP_ID.:1:&SESSION.'
,p_login_url=>'f?p=&APP_ID.:LOGIN:&SESSION.'
,p_theme_style_by_user_pref=>false
,p_navigation_list_id=>wwv_flow_api.id(3692293320012422315)
,p_navigation_list_position=>'SIDE'
,p_navigation_list_template_id=>wwv_flow_api.id(3692248404166414835)
,p_nav_list_template_options=>'#DEFAULT#:t-TreeNav--styleA'
,p_css_file_urls=>'#IMAGE_PREFIX#pkgapp_ui/css/5.0#MIN#.css'
,p_nav_bar_type=>'LIST'
,p_nav_bar_list_id=>wwv_flow_api.id(3692332603061469483)
,p_nav_bar_list_template_id=>wwv_flow_api.id(3692248256919414833)
);
wwv_flow_api.component_end;
end;
/
