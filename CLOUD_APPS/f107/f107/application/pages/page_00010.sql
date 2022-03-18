prompt --application/pages/page_00010
begin
--   Manifest
--     PAGE: 00010
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>107
,p_default_id_offset=>0
,p_default_owner=>'MISO'
);
wwv_flow_api.create_page(
 p_id=>10
,p_user_interface_id=>wwv_flow_api.id(63894538847235817)
,p_name=>'GEN_FUNCTIONS'
,p_alias=>'GEN-FUNCTIONS'
,p_step_title=>'GEN_FUNCTIONS'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'APLASCENCIA'
,p_last_upd_yyyymmddhh24miss=>'20211119100935'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(64381988656815788)
,p_plug_name=>'GEN_FUNCTIONS'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(63803088663235738)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct * from (',
'select 2 orderof , to_Char(index_sql) scriptsof, table_name,  index_name from show_me_function_bodies_lu ',
' union all',
'select 1 orderof,  to_char(sqltext)  scriptsof,  table_name, null index_name  from BLD_FNXS ',
') order by table_name, orderof',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_page_header=>'GEN_FUNCTIONS'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(64382093892815788)
,p_name=>'GEN_FUNCTIONS'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLSX:PDF:RTF'
,p_owner=>'APLASCENCIA'
,p_internal_uid=>64382093892815788
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(64382867166815793)
,p_db_column_name=>'TABLE_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Table Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(64388359922266907)
,p_db_column_name=>'ORDEROF'
,p_display_order=>12
,p_column_identifier=>'C'
,p_column_label=>'Orderof'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(64388528197266909)
,p_db_column_name=>'INDEX_NAME'
,p_display_order=>32
,p_column_identifier=>'E'
,p_column_label=>'Index Name'
,p_column_html_expression=>'<PRE>#INDEX_NAME#</PRE>'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(64388649770266910)
,p_db_column_name=>'SCRIPTSOF'
,p_display_order=>42
,p_column_identifier=>'F'
,p_column_label=>'Scriptsof'
,p_column_html_expression=>'<PRE>#SCRIPTSOF#</PRE>'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(64383492914820458)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'643835'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'TABLE_NAME:ORDEROF:INDEX_NAME:SCRIPTSOF'
);
wwv_flow_api.component_end;
end;
/
