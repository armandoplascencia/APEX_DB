prompt --application/pages/page_00011
begin
--   Manifest
--     PAGE: 00011
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>111
,p_default_id_offset=>77418401682728923
,p_default_owner=>'MISO'
);
wwv_flow_api.create_page(
 p_id=>11
,p_user_interface_id=>wwv_flow_api.id(88335304271078742)
,p_name=>'Report on Docs'
,p_alias=>'REPORT-ON-DOCS'
,p_step_title=>'Report on Docs'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'GOPALMALLYA'
,p_last_upd_yyyymmddhh24miss=>'20210130013759'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(103922020989810585)
,p_name=>'Report 1'
,p_template=>wwv_flow_api.id(88250109972078651)
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'TABLE'
,p_query_table=>'CSV2TABLE_DOCS'
,p_include_rowid_column=>false
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(88279044052078674)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
,p_csv_output=>'Y'
,p_csv_output_link_text=>'Download'
,p_prn_output=>'N'
,p_prn_format=>'PDF'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(103922477933810592)
,p_query_column_id=>1
,p_column_alias=>'DOC_ID'
,p_column_display_sequence=>10
,p_column_heading=>'Doc Id'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.::P10_DOC_ID:#DOC_ID#'
,p_column_linktext=>'#DOC_ID#'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(103922827881810593)
,p_query_column_id=>2
,p_column_alias=>'CONTENT'
,p_column_display_sequence=>20
,p_column_heading=>'Content'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_display_as=>'RICH_TEXT'
,p_attribute_01=>'MARKDOWN'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.component_end;
end;
/
