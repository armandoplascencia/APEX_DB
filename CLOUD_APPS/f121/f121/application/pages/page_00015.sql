prompt --application/pages/page_00015
begin
--   Manifest
--     PAGE: 00015
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>121
,p_default_id_offset=>0
,p_default_owner=>'MISO'
);
wwv_flow_api.create_page(
 p_id=>15
,p_user_interface_id=>wwv_flow_api.id(95153343667962421)
,p_name=>'DD_METRIC_PY'
,p_alias=>'DD-METRIC-PY'
,p_step_title=>'DD_METRIC_PY'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'WHITECASTLEPOC'
,p_last_upd_yyyymmddhh24miss=>'20220209101318'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(97089877464554407)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(95063787534962349)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<pre>',
'DD_SYSTEM_METRICS_PY',
'',
'$ cat api_query_data.py',
'from datadog import initialize, api',
'from time import time',
'from json import dump',
'',
'options = {''api_key'': ''7d708b093319ed02d93adbb5bf694889'',',
'           ''app_key'': ''12a419878abd82a6790373d42576544f8d9d3650''}',
'',
'initialize(**options)',
'',
'end = int(time())  # Specify the time period over which you want to fetch the data in seconds',
'#start = end - 3600',
'start = end - 604800',
'query = ''<METRIC>{*}''  # Enter the metric you want, see your list here: https://app.datadoghq.com/metric/summary.',
'                              # Optionally, enter your host to filter the data, see here: https://app.datadoghq.com/infrastructure',
'#results = api.Metric.query(start=start - 3600, end=end, query=query)',
'results = api.Metric.query(start=start - 604800, end=end, query=query)',
'',
'with open("DD_<METRIC>.json", "w") as f:',
'  dump(results, f)',
'  #  This creates a file named output.json in the current folder',
'',
'==========================================',
'',
'</pre>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(97089931587554408)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(95050013540962342)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_query_type=>'TABLE'
,p_query_table=>'DD_SYSTEM_METRICS_PY'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'New'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(97090077298554409)
,p_max_row_count=>'1000000'
,p_allow_save_rpt_public=>'Y'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'TOP_AND_BOTTOM_LEFT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF:RTF:EMAIL'
,p_owner=>'MISO'
,p_internal_uid=>97090077298554409
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(97090176000554410)
,p_db_column_name=>'ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(97090256499554411)
,p_db_column_name=>'DATA_DOG_METRIC'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Data Dog Metric'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(97221617917134589)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'972217'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ID:DATA_DOG_METRIC'
);
wwv_flow_api.component_end;
end;
/
