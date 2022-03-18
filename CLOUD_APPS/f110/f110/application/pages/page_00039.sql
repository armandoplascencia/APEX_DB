prompt --application/pages/page_00039
begin
--   Manifest
--     PAGE: 00039
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>110
,p_default_id_offset=>101599614921830918
,p_default_owner=>'MISO'
);
wwv_flow_api.create_page(
 p_id=>39
,p_user_interface_id=>wwv_flow_api.id(14434115216807266717)
,p_name=>'About'
,p_alias=>'ABOUT'
,p_step_title=>'About'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(14607213431091162015)
,p_html_page_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<style>',
'div#uOneCol div.helpContainer div.helpSide h1.appNameHeader {margin-top: 8px; font-size: 16px; line-height: 24px;}',
'div.helpContainer div.helpSide ul.vapList {',
'padding-top: 8px;}',
'</style>'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'img.appIcon.live-poll {',
'    background-position: -448px -384px;',
'}'))
,p_step_template=>wwv_flow_api.id(14690156334092251112)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'Use this page to learn more about this application.'
,p_last_updated_by=>'ALLAN'
,p_last_upd_yyyymmddhh24miss=>'20210301100152'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(15143305416989146737)
,p_name=>'&APPLICATION_TITLE.'
,p_template=>wwv_flow_api.id(14690166820479251144)
,p_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_css_classes=>'t-HeroRegion--featured'
,p_icon_css_classes=>'app-live-poll'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-AVPList--rightAligned'
,p_new_grid_row=>false
,p_grid_column_span=>4
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select aa.version app_version,',
'       to_char(aa.pages,''999G999G990'') pages,',
'       ''Oracle'' vendor',
'from apex_applications aa',
'where aa.application_id = :APP_ID'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(14690181106332251182)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(15143305574459146738)
,p_query_column_id=>1
,p_column_alias=>'APP_VERSION'
,p_column_display_sequence=>1
,p_column_heading=>'App version'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(15143305586707146739)
,p_query_column_id=>2
,p_column_alias=>'PAGES'
,p_column_display_sequence=>2
,p_column_heading=>'Pages'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(15143305709237146740)
,p_query_column_id=>3
,p_column_alias=>'VENDOR'
,p_column_display_sequence=>3
,p_column_heading=>'Vendor'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(16516629234722790477)
,p_plug_name=>'Help Container'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(14690171167000251156)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(356234210480239864)
,p_plug_name=>'Getting Started'
,p_parent_plug_id=>wwv_flow_api.id(16516629234722790477)
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(14690161967644251135)
,p_plug_display_sequence=>40
,p_plug_display_point=>'BODY'
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.TRANSLATED_MESSAGE'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'HELP_GETTING_STARTED_1.5'
,p_attribute_12=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(14085625882038855257)
,p_plug_name=>'Getting Started2'
,p_parent_plug_id=>wwv_flow_api.id(16516629234722790477)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(14690161967644251135)
,p_plug_display_sequence=>50
,p_plug_display_point=>'BODY'
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.TRANSLATED_MESSAGE'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'HELP_GETTING_STARTED_2'
,p_attribute_12=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(14085627378060891995)
,p_plug_name=>'Getting Started3'
,p_parent_plug_id=>wwv_flow_api.id(16516629234722790477)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(14690161967644251135)
,p_plug_display_sequence=>60
,p_plug_display_point=>'BODY'
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.TRANSLATED_MESSAGE'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'HELP_GETTING_STARTED_3'
,p_attribute_12=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(14085628381785911956)
,p_plug_name=>'Getting Started TOC'
,p_parent_plug_id=>wwv_flow_api.id(16516629234722790477)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(14690161967644251135)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.TRANSLATED_MESSAGE'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'HELP_GETTING_STARTED_TOC'
,p_attribute_12=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(14085685084823508455)
,p_plug_name=>'Getting Started EMAIL'
,p_parent_plug_id=>wwv_flow_api.id(16516629234722790477)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(14690161967644251135)
,p_plug_display_sequence=>70
,p_plug_display_point=>'BODY'
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.TRANSLATED_MESSAGE'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'HELP_GETTING_STARTED_EMAIL'
,p_attribute_12=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(14085686001624551167)
,p_plug_name=>'Getting Started ACL'
,p_parent_plug_id=>wwv_flow_api.id(16516629234722790477)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(14690161967644251135)
,p_plug_display_sequence=>80
,p_plug_display_point=>'BODY'
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.TRANSLATED_MESSAGE'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'HELP_GETTING_STARTED_ACL'
,p_attribute_12=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(14725333318920568965)
,p_plug_name=>'About this Application'
,p_parent_plug_id=>wwv_flow_api.id(16516629234722790477)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(14690161967644251135)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.TRANSLATED_MESSAGE'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'HELP_ABOUT'
,p_attribute_12=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(14725333714895577289)
,p_plug_name=>'Getting Started'
,p_parent_plug_id=>wwv_flow_api.id(16516629234722790477)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(14690161967644251135)
,p_plug_display_sequence=>30
,p_plug_display_point=>'BODY'
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.TRANSLATED_MESSAGE'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'HELP_GETTING_STARTED'
,p_attribute_12=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(14725333921821579284)
,p_plug_name=>'Features'
,p_parent_plug_id=>wwv_flow_api.id(16516629234722790477)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(14690161967644251135)
,p_plug_display_sequence=>100
,p_plug_display_point=>'BODY'
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.TRANSLATED_MESSAGE'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'HELP_FEATURES'
,p_attribute_12=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(14725334128055581132)
,p_plug_name=>'Support'
,p_parent_plug_id=>wwv_flow_api.id(16516629234722790477)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(14690161967644251135)
,p_plug_display_sequence=>110
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ''https://forums.oracle.com/forums/forum.jspa?forumID=137'' support_link,',
'    ''OTN Forum'' support_text',
'from dual'))
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.TRANSLATED_MESSAGE'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'HELP_SUPPORT'
,p_attribute_02=>'SUPPORT_LINK'
,p_attribute_03=>'SUPPORT_TEXT'
,p_attribute_12=>'N'
);
wwv_flow_api.component_end;
end;
/
