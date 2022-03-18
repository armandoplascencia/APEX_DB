prompt --application/user_interfaces
begin
--   Manifest
--     USER INTERFACES: 111
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>111
,p_default_id_offset=>77418401682728923
,p_default_owner=>'MISO'
);
wwv_flow_api.create_user_interface(
 p_id=>wwv_flow_api.id(88335304271078742)
,p_ui_type_name=>'DESKTOP'
,p_display_name=>'Desktop'
,p_display_seq=>10
,p_use_auto_detect=>false
,p_is_default=>true
,p_theme_id=>42
,p_home_url=>'f?p=&APP_ID.:9:&SESSION.'
,p_login_url=>'f?p=&APP_ID.:LOGIN:&APP_SESSION.::&DEBUG.:::'
,p_theme_style_by_user_pref=>false
,p_built_with_love=>false
,p_global_page_id=>0
,p_navigation_list_position=>'TOP'
,p_navigation_list_template_id=>wwv_flow_api.id(88307290118078702)
,p_nav_list_template_options=>'#DEFAULT#:js-tabLike'
,p_css_file_urls=>'#APP_IMAGES#app-icon.css?version=#APP_VERSION#'
,p_nav_bar_type=>'NAVBAR'
,p_nav_bar_template_options=>'#DEFAULT#'
);
wwv_flow_api.component_end;
end;
/
