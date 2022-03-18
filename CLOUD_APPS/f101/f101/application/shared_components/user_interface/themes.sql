prompt --application/shared_components/user_interface/themes
begin
--   Manifest
--     THEME: 101
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>101
,p_default_id_offset=>0
,p_default_owner=>'MISO'
);
wwv_flow_api.create_theme(
 p_id=>wwv_flow_api.id(57543321229067220)
,p_theme_id=>42
,p_theme_name=>'Universal Theme'
,p_theme_internal_name=>'UNIVERSAL_THEME'
,p_ui_type_name=>'DESKTOP'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_reference_id=>4070917134413059350
,p_is_locked=>false
,p_default_page_template=>wwv_flow_api.id(57436784929067135)
,p_default_dialog_template=>wwv_flow_api.id(57432418025067133)
,p_error_template=>wwv_flow_api.id(57424582312067127)
,p_printer_friendly_template=>wwv_flow_api.id(57436784929067135)
,p_breadcrumb_display_point=>'REGION_POSITION_01'
,p_sidebar_display_point=>'REGION_POSITION_02'
,p_login_template=>wwv_flow_api.id(57424582312067127)
,p_default_button_template=>wwv_flow_api.id(57540596587067207)
,p_default_region_template=>wwv_flow_api.id(57475490015067161)
,p_default_chart_template=>wwv_flow_api.id(57475490015067161)
,p_default_form_template=>wwv_flow_api.id(57475490015067161)
,p_default_reportr_template=>wwv_flow_api.id(57475490015067161)
,p_default_tabform_template=>wwv_flow_api.id(57475490015067161)
,p_default_wizard_template=>wwv_flow_api.id(57475490015067161)
,p_default_menur_template=>wwv_flow_api.id(57484866017067166)
,p_default_listr_template=>wwv_flow_api.id(57475490015067161)
,p_default_irr_template=>wwv_flow_api.id(57473530390067160)
,p_default_report_template=>wwv_flow_api.id(57499177086067176)
,p_default_label_template=>wwv_flow_api.id(57538081234067203)
,p_default_menu_template=>wwv_flow_api.id(57541954952067208)
,p_default_calendar_template=>wwv_flow_api.id(57542077925067209)
,p_default_list_template=>wwv_flow_api.id(57524723981067193)
,p_default_nav_list_template=>wwv_flow_api.id(57529153184067196)
,p_default_top_nav_list_temp=>wwv_flow_api.id(57529153184067196)
,p_default_side_nav_list_temp=>wwv_flow_api.id(57532365212067198)
,p_default_nav_list_position=>'SIDE'
,p_default_dialogbtnr_template=>wwv_flow_api.id(57445435435067144)
,p_default_dialogr_template=>wwv_flow_api.id(57444466967067143)
,p_default_option_label=>wwv_flow_api.id(57538081234067203)
,p_default_required_label=>wwv_flow_api.id(57539304768067204)
,p_default_page_transition=>'NONE'
,p_default_popup_transition=>'NONE'
,p_default_navbar_list_template=>wwv_flow_api.id(57522935580067192)
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
