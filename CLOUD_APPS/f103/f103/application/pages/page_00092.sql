prompt --application/pages/page_00092
begin
--   Manifest
--     PAGE: 00092
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>103
,p_default_id_offset=>0
,p_default_owner=>'MISO'
);
wwv_flow_api.create_page(
 p_id=>92
,p_user_interface_id=>wwv_flow_api.id(19722833960781940)
,p_name=>'DATE_TIME_DIMENSIONS'
,p_alias=>'DATE-TIME-DIMENSIONS'
,p_step_title=>'DATE_TIME_DIMENSIONS'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'MISO'
,p_last_upd_yyyymmddhh24miss=>'20211029064436'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(21432102191197711)
,p_plug_name=>'HHMMSS_DIM'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(19631333458781863)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select SK_TIME,',
'       HOUR,',
'       MINUTE,',
'       SECOND,',
'       TIME,',
'       PERIOD,',
'       LOAD_DATE',
'  from MISO_TIME_HHMMSS_DIM'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'HHMMSS_DIM'
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
 p_id=>wwv_flow_api.id(21432294328197712)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF:RTF:EMAIL'
,p_owner=>'MISO'
,p_internal_uid=>21432294328197712
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(21432391683197713)
,p_db_column_name=>'SK_TIME'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Sk Time'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(21432476832197714)
,p_db_column_name=>'HOUR'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Hour'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(21432532516197715)
,p_db_column_name=>'MINUTE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Minute'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(21432654031197716)
,p_db_column_name=>'SECOND'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Second'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(21432754969197717)
,p_db_column_name=>'TIME'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Time'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(21432862162197718)
,p_db_column_name=>'PERIOD'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Period'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(21432938111197719)
,p_db_column_name=>'LOAD_DATE'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Load Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(44725838545839344)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'447259'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'SK_TIME:HOUR:MINUTE:SECOND:TIME:PERIOD:LOAD_DATE'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(44095270594773933)
,p_plug_name=>'DATE_TIME_DIMENSIONS'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(19631333458781863)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select TIME_ID,',
'       DAY_NAME,',
'       DAY_NUMBER_IN_WEEK,',
'       DAY_NUMBER_IN_MONTH,',
'       DAY_NUMBER_IN_YEAR,',
'       CALENDAR_WEEK_NUMBER,',
'       WEEK_ENDING_DATE,',
'       CALENDAR_MONTH_NUMBER,',
'       DAYS_IN_CAL_MONTH,',
'       END_OF_CAL_MONTH,',
'       CALENDAR_MONTH_NAME,',
'       DAYS_IN_CAL_QUARTER,',
'       BEG_OF_CAL_QUARTER,',
'       END_OF_CAL_QUARTER,',
'       CALENDAR_QUARTER_NUMBER,',
'       CALENDAR_YEAR,',
'       DAYS_IN_CAL_YEAR,',
'       BEG_OF_CAL_YEAR,',
'       END_OF_CAL_YEAR,',
'       APEX$SYNC_STEP_STATIC_ID,',
'       APEX$ROW_SYNC_TIMESTAMP',
'  from MISO_DATE_DIM'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_page_header=>'DATE_TIME_DIMENSIONS'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(44095315196773933)
,p_name=>'DATE_TIME_DIMENSIONS'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLSX:PDF:RTF'
,p_owner=>'MISO'
,p_internal_uid=>44095315196773933
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(44095705806773941)
,p_db_column_name=>'TIME_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Time Id'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(44096159475773946)
,p_db_column_name=>'DAY_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Day Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(44096568160773946)
,p_db_column_name=>'DAY_NUMBER_IN_WEEK'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Day Number In Week'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(44096982627773946)
,p_db_column_name=>'DAY_NUMBER_IN_MONTH'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Day Number In Month'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(44097301323773947)
,p_db_column_name=>'DAY_NUMBER_IN_YEAR'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Day Number In Year'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(44097737386773947)
,p_db_column_name=>'CALENDAR_WEEK_NUMBER'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Calendar Week Number'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(44098164415773947)
,p_db_column_name=>'WEEK_ENDING_DATE'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Week Ending Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(44098596538773947)
,p_db_column_name=>'CALENDAR_MONTH_NUMBER'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Calendar Month Number'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(44098988833773947)
,p_db_column_name=>'DAYS_IN_CAL_MONTH'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Days In Cal Month'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(44099390842773948)
,p_db_column_name=>'END_OF_CAL_MONTH'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'End Of Cal Month'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(44099776642773948)
,p_db_column_name=>'CALENDAR_MONTH_NAME'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Calendar Month Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(44100105947773948)
,p_db_column_name=>'DAYS_IN_CAL_QUARTER'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Days In Cal Quarter'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(44100514179773948)
,p_db_column_name=>'BEG_OF_CAL_QUARTER'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Beg Of Cal Quarter'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(44100908351773949)
,p_db_column_name=>'END_OF_CAL_QUARTER'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'End Of Cal Quarter'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(44101307445773949)
,p_db_column_name=>'CALENDAR_QUARTER_NUMBER'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Calendar Quarter Number'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(44101769416773949)
,p_db_column_name=>'CALENDAR_YEAR'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Calendar Year'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(44102106834773949)
,p_db_column_name=>'DAYS_IN_CAL_YEAR'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'Days In Cal Year'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(44102555826773949)
,p_db_column_name=>'BEG_OF_CAL_YEAR'
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'Beg Of Cal Year'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(44102913233773950)
,p_db_column_name=>'END_OF_CAL_YEAR'
,p_display_order=>19
,p_column_identifier=>'S'
,p_column_label=>'End Of Cal Year'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(44103380040773950)
,p_db_column_name=>'APEX$SYNC_STEP_STATIC_ID'
,p_display_order=>20
,p_column_identifier=>'T'
,p_column_label=>'Apex$Sync Step Static Id'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(44103791937773950)
,p_db_column_name=>'APEX$ROW_SYNC_TIMESTAMP'
,p_display_order=>21
,p_column_identifier=>'U'
,p_column_label=>'Apex$Row Sync Timestamp'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(44725250450839319)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'447253'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'TIME_ID:DAY_NAME:DAY_NUMBER_IN_WEEK:DAY_NUMBER_IN_MONTH:DAY_NUMBER_IN_YEAR:CALENDAR_WEEK_NUMBER:WEEK_ENDING_DATE:CALENDAR_MONTH_NUMBER:DAYS_IN_CAL_MONTH:END_OF_CAL_MONTH:CALENDAR_MONTH_NAME:DAYS_IN_CAL_QUARTER:BEG_OF_CAL_QUARTER:END_OF_CAL_QUARTER:CA'
||'LENDAR_QUARTER_NUMBER:CALENDAR_YEAR:DAYS_IN_CAL_YEAR:BEG_OF_CAL_YEAR:END_OF_CAL_YEAR:APEX$SYNC_STEP_STATIC_ID:APEX$ROW_SYNC_TIMESTAMP'
);
wwv_flow_api.component_end;
end;
/
