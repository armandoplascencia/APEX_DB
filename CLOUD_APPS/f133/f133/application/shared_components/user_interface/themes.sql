prompt --application/shared_components/user_interface/themes
begin
--   Manifest
--     THEME: 133
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>133
,p_default_id_offset=>0
,p_default_owner=>'MISO'
);
wwv_flow_api.create_theme(
 p_id=>wwv_flow_api.id(104869351391699919)
,p_theme_id=>42
,p_theme_name=>'Universal Theme'
,p_theme_internal_name=>'UNIVERSAL_THEME'
,p_ui_type_name=>'DESKTOP'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_reference_id=>4070917134413059350
,p_is_locked=>false
,p_default_page_template=>wwv_flow_api.id(104755839584699828)
,p_default_dialog_template=>wwv_flow_api.id(104763752483699834)
,p_error_template=>wwv_flow_api.id(104758363004699830)
,p_printer_friendly_template=>wwv_flow_api.id(104755839584699828)
,p_breadcrumb_display_point=>'REGION_POSITION_01'
,p_sidebar_display_point=>'REGION_POSITION_02'
,p_login_template=>wwv_flow_api.id(104758363004699830)
,p_default_button_template=>wwv_flow_api.id(104866565688699908)
,p_default_region_template=>wwv_flow_api.id(104801457324699859)
,p_default_chart_template=>wwv_flow_api.id(104801457324699859)
,p_default_form_template=>wwv_flow_api.id(104801457324699859)
,p_default_reportr_template=>wwv_flow_api.id(104801457324699859)
,p_default_tabform_template=>wwv_flow_api.id(104801457324699859)
,p_default_wizard_template=>wwv_flow_api.id(104801457324699859)
,p_default_menur_template=>wwv_flow_api.id(104810806402699867)
,p_default_listr_template=>wwv_flow_api.id(104801457324699859)
,p_default_irr_template=>wwv_flow_api.id(104799534255699858)
,p_default_report_template=>wwv_flow_api.id(104825178856699877)
,p_default_label_template=>wwv_flow_api.id(104864052684699904)
,p_default_menu_template=>wwv_flow_api.id(104867931587699909)
,p_default_calendar_template=>wwv_flow_api.id(104868001707699910)
,p_default_list_template=>wwv_flow_api.id(104847955377699892)
,p_default_nav_list_template=>wwv_flow_api.id(104855108366699897)
,p_default_top_nav_list_temp=>wwv_flow_api.id(104855108366699897)
,p_default_side_nav_list_temp=>wwv_flow_api.id(104858353187699899)
,p_default_nav_list_position=>'SIDE'
,p_default_dialogbtnr_template=>wwv_flow_api.id(104771470355699841)
,p_default_dialogr_template=>wwv_flow_api.id(104770402101699841)
,p_default_option_label=>wwv_flow_api.id(104864052684699904)
,p_default_required_label=>wwv_flow_api.id(104865327959699905)
,p_default_page_transition=>'NONE'
,p_default_popup_transition=>'NONE'
,p_default_navbar_list_template=>wwv_flow_api.id(104850507172699894)
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
