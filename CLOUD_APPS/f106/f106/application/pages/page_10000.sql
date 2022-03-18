prompt --application/pages/page_10000
begin
--   Manifest
--     PAGE: 10000
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>106
,p_default_id_offset=>0
,p_default_owner=>'MISO'
);
wwv_flow_api.create_page(
 p_id=>10000
,p_user_interface_id=>wwv_flow_api.id(48908740043344081)
,p_name=>'Administration'
,p_alias=>'ADMIN'
,p_step_title=>'Administration'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_api.id(48913204412344107)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(48912323402344101)
,p_protection_level=>'C'
,p_deep_linking=>'N'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>The administration page allows application owners (Administrators) to configure the application and maintain common data used across the application.',
'By selecting one of the available settings, administrators can potentially change how the application is displayed and/or features available to the end users.</p>',
'<p>Access to this page should be limited to Administrators only.</p>'))
,p_last_updated_by=>'MISO'
,p_last_upd_yyyymmddhh24miss=>'20211104011641'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(49379651502349545)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(48828579444344015)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(48761501111343979)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(48885668992344068)
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(49385022229349549)
,p_plug_name=>'Column 1'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(48788337630343995)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(49385490611349549)
,p_plug_name=>'Configuration'
,p_parent_plug_id=>wwv_flow_api.id(49385022229349549)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:u-colors'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(48819161814344010)
,p_plug_display_sequence=>40
,p_plug_display_point=>'BODY'
,p_list_id=>wwv_flow_api.id(49380269531349546)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(48870028139344058)
,p_plug_query_num_rows=>15
,p_required_patch=>wwv_flow_api.id(48910650910344086)
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(49385836943349550)
,p_plug_name=>'User Interface'
,p_parent_plug_id=>wwv_flow_api.id(49385022229349549)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:u-colors'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(48819161814344010)
,p_plug_display_sequence=>50
,p_plug_display_point=>'BODY'
,p_list_id=>wwv_flow_api.id(49380981883349546)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(48870028139344058)
,p_plug_query_num_rows=>15
,p_required_patch=>wwv_flow_api.id(48911003402344086)
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(49386223322349550)
,p_plug_name=>'Activity Reports'
,p_parent_plug_id=>wwv_flow_api.id(49385022229349549)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:u-colors'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(48819161814344010)
,p_plug_display_sequence=>60
,p_plug_display_point=>'BODY'
,p_list_id=>wwv_flow_api.id(49381619480349547)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(48870028139344058)
,p_plug_query_num_rows=>15
,p_required_patch=>wwv_flow_api.id(48910361558344086)
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(49386631653349550)
,p_plug_name=>'Column 2'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(48788337630343995)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(49387052597349550)
,p_plug_name=>'Feedback'
,p_parent_plug_id=>wwv_flow_api.id(49386631653349550)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(48819161814344010)
,p_plug_display_sequence=>70
,p_plug_display_point=>'BODY'
,p_plug_query_num_rows=>15
,p_required_patch=>wwv_flow_api.id(48910453613344086)
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(49387469787349551)
,p_name=>'Report'
,p_parent_plug_id=>wwv_flow_api.id(49387052597349550)
,p_template=>wwv_flow_api.id(48819161814344010)
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--stacked:t-Region--scrollBody:t-Region--noPadding'
,p_component_template_options=>'#DEFAULT#:t-AVPList--rightAligned'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select l.display_value feedback_status, ',
'(select count(*) from apex_team_feedback f where f.application_id = :APP_ID and f.feedback_status = l.return_value) feedback_count ',
'from apex_application_lov_entries l',
'where l.application_id = :APP_ID',
'and l.list_of_values_name = ''FEEDBACK_STATUS''',
'order by 2 desc, 1'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(48854230408344051)
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'no data found'
,p_query_row_count_max=>500
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(49388119360349555)
,p_query_column_id=>1
,p_column_alias=>'FEEDBACK_STATUS'
,p_column_display_sequence=>1
,p_column_heading=>'Feedback Status'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(49388504438349555)
,p_query_column_id=>2
,p_column_alias=>'FEEDBACK_COUNT'
,p_column_display_sequence=>2
,p_column_heading=>'Feedback Count'
,p_column_format=>'999G999G999G999G999G999G990'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(49390351890349954)
,p_plug_name=>'Feedback'
,p_parent_plug_id=>wwv_flow_api.id(49387052597349550)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:u-colors'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(48788151331343995)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_list_id=>wwv_flow_api.id(49384372904349548)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(48870028139344058)
,p_plug_query_num_rows=>15
);
wwv_flow_api.component_end;
end;
/
