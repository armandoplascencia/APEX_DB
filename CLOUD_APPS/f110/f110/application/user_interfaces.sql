prompt --application/user_interfaces
begin
--   Manifest
--     USER INTERFACES: 110
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>110
,p_default_id_offset=>101599614921830918
,p_default_owner=>'MISO'
);
wwv_flow_api.create_user_interface(
 p_id=>wwv_flow_api.id(14434115216807266717)
,p_ui_type_name=>'DESKTOP'
,p_display_name=>'Desktop'
,p_display_seq=>10
,p_use_auto_detect=>false
,p_is_default=>true
,p_theme_id=>42
,p_home_url=>'f?p=&APP_ID.:1:&SESSION.'
,p_theme_style_by_user_pref=>false
,p_navigation_list_position=>'TOP'
,p_navigation_list_template_id=>wwv_flow_api.id(14690188662586251200)
,p_nav_list_template_options=>'#DEFAULT#:js-tabLike'
,p_css_file_urls=>'#IMAGE_PREFIX#pkgapp_ui/css/5.0#MIN#.css'
,p_include_legacy_javascript=>'PRE18:18'
,p_nav_bar_type=>'LIST'
,p_nav_bar_list_id=>wwv_flow_api.id(14035848097356437574)
,p_nav_bar_list_template_id=>wwv_flow_api.id(14690189211776251203)
);
wwv_flow_api.component_end;
end;
/
