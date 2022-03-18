prompt --application/shared_components/user_interface/themes
begin
--   Manifest
--     THEME: 106
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>106
,p_default_id_offset=>0
,p_default_owner=>'MISO'
);
wwv_flow_api.create_theme(
 p_id=>wwv_flow_api.id(48887000186344070)
,p_theme_id=>42
,p_theme_name=>'Universal Theme'
,p_theme_internal_name=>'UNIVERSAL_THEME'
,p_ui_type_name=>'DESKTOP'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_reference_id=>4070917134413059350
,p_is_locked=>false
,p_default_page_template=>wwv_flow_api.id(48780442905343991)
,p_default_dialog_template=>wwv_flow_api.id(48776181004343988)
,p_error_template=>wwv_flow_api.id(48768254833343984)
,p_printer_friendly_template=>wwv_flow_api.id(48780442905343991)
,p_breadcrumb_display_point=>'REGION_POSITION_01'
,p_sidebar_display_point=>'REGION_POSITION_02'
,p_login_template=>wwv_flow_api.id(48768254833343984)
,p_default_button_template=>wwv_flow_api.id(48884215312344068)
,p_default_region_template=>wwv_flow_api.id(48819161814344010)
,p_default_chart_template=>wwv_flow_api.id(48819161814344010)
,p_default_form_template=>wwv_flow_api.id(48819161814344010)
,p_default_reportr_template=>wwv_flow_api.id(48819161814344010)
,p_default_tabform_template=>wwv_flow_api.id(48819161814344010)
,p_default_wizard_template=>wwv_flow_api.id(48819161814344010)
,p_default_menur_template=>wwv_flow_api.id(48828579444344015)
,p_default_listr_template=>wwv_flow_api.id(48819161814344010)
,p_default_irr_template=>wwv_flow_api.id(48817248700344009)
,p_default_report_template=>wwv_flow_api.id(48842843551344036)
,p_default_label_template=>wwv_flow_api.id(48881763257344066)
,p_default_menu_template=>wwv_flow_api.id(48885668992344068)
,p_default_calendar_template=>wwv_flow_api.id(48885757321344068)
,p_default_list_template=>wwv_flow_api.id(48865613100344056)
,p_default_nav_list_template=>wwv_flow_api.id(48872866534344060)
,p_default_top_nav_list_temp=>wwv_flow_api.id(48872866534344060)
,p_default_side_nav_list_temp=>wwv_flow_api.id(48876020819344061)
,p_default_nav_list_position=>'SIDE'
,p_default_dialogbtnr_template=>wwv_flow_api.id(48789134386343995)
,p_default_dialogr_template=>wwv_flow_api.id(48788151331343995)
,p_default_option_label=>wwv_flow_api.id(48881763257344066)
,p_default_required_label=>wwv_flow_api.id(48883036783344066)
,p_default_page_transition=>'NONE'
,p_default_popup_transition=>'NONE'
,p_default_navbar_list_template=>wwv_flow_api.id(48868251649344058)
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(42),'#IMAGE_PREFIX#themes/theme_42/21.1/')
,p_files_version=>64
,p_icon_library=>'FONTAPEX'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.stickyWidget#MIN#.js?v=#APEX_VERSION#',
'#THEME_IMAGES#js/theme42#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>'#THEME_IMAGES#css/Core#MIN#.css?v=#APEX_VERSION#'
);
wwv_flow_api.component_end;
end;
/
