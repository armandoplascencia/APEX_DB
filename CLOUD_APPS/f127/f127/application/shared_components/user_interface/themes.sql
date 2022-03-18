prompt --application/shared_components/user_interface/themes
begin
--   Manifest
--     THEME: 127
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>127
,p_default_id_offset=>99999615750817235
,p_default_owner=>'MISO'
);
wwv_flow_api.create_theme(
 p_id=>wwv_flow_api.id(108707038784896469)
,p_theme_id=>26
,p_theme_name=>'Productivity Applications'
,p_theme_internal_name=>'PRODUCTIVITY_APPLICATIONS'
,p_ui_type_name=>'DESKTOP'
,p_navigation_type=>'T'
,p_nav_bar_type=>'NAVBAR'
,p_is_locked=>false
,p_default_page_template=>wwv_flow_api.id(108697220078896452)
,p_error_template=>wwv_flow_api.id(108696747317896451)
,p_printer_friendly_template=>wwv_flow_api.id(108697729132896453)
,p_breadcrumb_display_point=>'REGION_POSITION_01'
,p_sidebar_display_point=>'REGION_POSITION_02'
,p_login_template=>wwv_flow_api.id(108696346060896449)
,p_default_button_template=>wwv_flow_api.id(108705435539896463)
,p_default_region_template=>wwv_flow_api.id(108700737247896457)
,p_default_chart_template=>wwv_flow_api.id(108699117151896457)
,p_default_form_template=>wwv_flow_api.id(108699425023896457)
,p_default_reportr_template=>wwv_flow_api.id(108700737247896457)
,p_default_tabform_template=>wwv_flow_api.id(108700737247896457)
,p_default_wizard_template=>wwv_flow_api.id(108701535142896458)
,p_default_menur_template=>wwv_flow_api.id(108698717312896456)
,p_default_listr_template=>wwv_flow_api.id(108699036304896457)
,p_default_irr_template=>wwv_flow_api.id(108699848063896457)
,p_default_report_template=>wwv_flow_api.id(108702419525896459)
,p_default_label_template=>wwv_flow_api.id(108705019521896462)
,p_default_menu_template=>wwv_flow_api.id(108706445326896464)
,p_default_calendar_template=>wwv_flow_api.id(108706620068896465)
,p_default_list_template=>wwv_flow_api.id(108704539875896461)
,p_default_option_label=>wwv_flow_api.id(108705132309896463)
,p_default_required_label=>wwv_flow_api.id(108705320124896463)
,p_default_page_transition=>'NONE'
,p_default_popup_transition=>'NONE'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(26),'')
,p_css_file_urls=>'#IMAGE_PREFIX#legacy_ui/css/5.0#MIN#.css?v=#APEX_VERSION#'
);
wwv_flow_api.component_end;
end;
/
