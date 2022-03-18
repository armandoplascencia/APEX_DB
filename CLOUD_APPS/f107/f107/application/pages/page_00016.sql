prompt --application/pages/page_00016
begin
--   Manifest
--     PAGE: 00016
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
 p_id=>16
,p_user_interface_id=>wwv_flow_api.id(63894538847235817)
,p_name=>'seed'
,p_alias=>'SEED'
,p_step_title=>'seed'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'MISO'
,p_last_upd_yyyymmddhh24miss=>'20211213081344'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(73200784061499926)
,p_plug_name=>'Report 1'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(63803088663235738)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT --''/* ''||to_number(CNTR)+1||'' <===COLUMNS FOUND */''||CHR(10)||',
'       replace(SQL_INSERT,'', )'','',NULL)'') sqlas,',
'       to_number(cntr)+1 cntrof,',
'       table_name ,',
'       dbms_metadata.get_ddl (''table'',table_name ) show_ddl_desc',
' FROM  AUTO_SEED_ALL_ROWS ',
'      where table_name not in (select table_name from user_Tables where (table_name like ''%_H''  or',
'                                                              table_name like ''OLD%'' or',
'                                                              table_name like ''%B_ERRORS'' ) ',
'                                                      or      table_name  in ',
'                    (''DEBUG_EVENTS'',            ''SERVERERROR_LOG'',        ''T1099_1299_20131210_D4262'', ''T6_742_20131025_D4262'',',
'                     ''T743_1098_20131125_D4261'',''SEQUENCE_TABLE_MAP'',             ''SCHEMA_MIGRATIONS'',    ''ORA_RESERVED_WORDS'',',
'                     ''MY_METADATUM'',            ''HOLD_USER_RE_ROLES'',        ''APP_OBJECT_AUDIT_XLATE'',''APPLICATION_OBJECT_AUDIT'')',
'                  ) and table_name not in (select view_name from user_views)',
' ORDER BY instr(sql_insert,chr(39)||''DEFAULT '',1) desc ,',
' CNTR ASC;'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Report 1'
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
 p_id=>wwv_flow_api.id(73203237248617801)
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
,p_internal_uid=>73203237248617801
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(73203432492617803)
,p_db_column_name=>'CNTROF'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Cntrof'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(73203502152617804)
,p_db_column_name=>'TABLE_NAME'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Table Name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(73203343547617802)
,p_db_column_name=>'SQLAS'
,p_display_order=>40
,p_column_identifier=>'A'
,p_column_label=>'Sqlas'
,p_column_html_expression=>'<PRE>#SQLAS#</PRE>'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(73203623779617805)
,p_db_column_name=>'SHOW_DDL_DESC'
,p_display_order=>50
,p_column_identifier=>'D'
,p_column_label=>'Show Ddl Desc'
,p_allow_sorting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'CLOB'
,p_rpt_show_filter_lov=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(73210712226620904)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'732108'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'SQLAS:CNTROF:TABLE_NAME:SHOW_DDL_DESC'
);
wwv_flow_api.component_end;
end;
/
