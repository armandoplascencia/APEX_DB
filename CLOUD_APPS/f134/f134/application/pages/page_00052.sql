prompt --application/pages/page_00052
begin
--   Manifest
--     PAGE: 00052
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>134
,p_default_id_offset=>172493832712964115
,p_default_owner=>'MISO'
);
wwv_flow_api.create_page(
 p_id=>52
,p_user_interface_id=>wwv_flow_api.id(5783577205373975152)
,p_name=>'Help'
,p_alias=>'HELP'
,p_step_title=>'Help'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(5956247896891655364)
,p_step_template=>wwv_flow_api.id(6781074610982890727)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'All application help text can be accessed from this page. The links in the "Documentation" region give a much more in-depth explanation of the application''s features and functionality.'
,p_last_upd_yyyymmddhh24miss=>'20190828112509'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(6096036185383577745)
,p_plug_name=>'Help Content Container'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(6781115417665890803)
,p_plug_display_sequence=>10
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(6074529184958166615)
,p_plug_name=>'About this Application'
,p_parent_plug_id=>wwv_flow_api.id(6096036185383577745)
,p_escape_on_http_output=>'Y'
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_plug_source=>'select :CAT_TITLE_LC as category from dual'
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.TRANSLATED_MESSAGE'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'HELP_ABOUT'
,p_attribute_02=>'CATEGORY'
,p_attribute_12=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(6074529699741176732)
,p_plug_name=>'Features'
,p_parent_plug_id=>wwv_flow_api.id(6096036185383577745)
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_display_sequence=>50
,p_plug_display_point=>'BODY'
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.TRANSLATED_MESSAGE'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'HELP_FEATURES'
,p_attribute_12=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(6074530086019182200)
,p_plug_name=>'Support'
,p_parent_plug_id=>wwv_flow_api.id(6096036185383577745)
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_display_sequence=>60
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
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(12505845874437353056)
,p_plug_name=>'Documentation'
,p_parent_plug_id=>wwv_flow_api.id(6096036185383577745)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(6781115417665890803)
,p_plug_display_sequence=>40
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<h2>Documentation</h2>',
'<ol>',
'    <li><a href="f?p=&APP_ID.:173:&APP_SESSION.:">Managing Projects</a></li>',
'    <li><a href="f?p=&APP_ID.:198:&APP_SESSION.:">Access Control</a></li>',
'    <li><a href="f?p=&APP_ID.:174:&APP_SESSION.:">Emails</a></li>',
'    <li><a href="f?p=&APP_ID.:178:&APP_SESSION.:">Reporting</a></li>',
'    <li><a href="f?p=&APP_ID.:179:&APP_SESSION.:">Application Administration</a></li>',
'</ol>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(7350673445005108413)
,p_name=>'&APPLICATION_TITLE.'
,p_template=>wwv_flow_api.id(6781110778030890789)
,p_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_icon_css_classes=>'app-p-track'
,p_region_template_options=>'#DEFAULT#:t-HeroRegion--featured t-HeroRegion--centered:t-Form--stretchInputs'
,p_component_template_options=>'#DEFAULT#:t-AVPList--fixedLabelSmall:t-AVPList--rightAligned:t-Report--hideNoPagination'
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
,p_query_row_template=>wwv_flow_api.id(6781124130846890827)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(7350673515836108414)
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
 p_id=>wwv_flow_api.id(7350673614445108415)
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
 p_id=>wwv_flow_api.id(7350673777419108416)
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
 p_id=>wwv_flow_api.id(7882069283189166731)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(6781117976757890807)
,p_plug_display_sequence=>70
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(8972392840601050532)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(6781135716305890867)
,p_plug_display_condition_type=>'NEVER'
);
wwv_flow_api.component_end;
end;
/
