prompt --application/pages/page_00008
begin
--   Manifest
--     PAGE: 00008
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
 p_id=>8
,p_user_interface_id=>wwv_flow_api.id(63894538847235817)
,p_name=>'gen_cache'
,p_alias=>'GEN-CACHE'
,p_step_title=>'gen_cache'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'APLASCENCIA'
,p_last_upd_yyyymmddhh24miss=>'20211207011455'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(70613562901483104)
,p_plug_name=>'PLSQL_CACHE'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(63803088663235738)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select * from (',
'select * from  v_get_anx_fnxs_meta001 union all',
'select * from  v_get_cache_fnxs_meta001  )',
'order by table_name_of, as_row , sqltext_of desc',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'PLSQL_CACHE'
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
 p_id=>wwv_flow_api.id(69524082531405742)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF:RTF:EMAIL'
,p_owner=>'APLASCENCIA'
,p_internal_uid=>69524082531405742
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69524130500405743)
,p_db_column_name=>'SQLTEXT_OF'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Sqltext Of'
,p_column_html_expression=>'<pre>#SQLTEXT_OF#</PRE>'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69524226226405744)
,p_db_column_name=>'AS_ROW'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'As Row'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69524358192405745)
,p_db_column_name=>'TABLE_NAME_OF'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Table Name Of'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(70618509002646753)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'706186'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'SQLTEXT_OF:AS_ROW:TABLE_NAME_OF'
);
wwv_flow_api.component_end;
end;
/
