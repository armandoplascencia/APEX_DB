prompt --application/pages/page_00003
begin
--   Manifest
--     PAGE: 00003
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>101
,p_default_id_offset=>0
,p_default_owner=>'MISO'
);
wwv_flow_api.create_page(
 p_id=>3
,p_user_interface_id=>wwv_flow_api.id(57565039144067239)
,p_name=>'Miso Periods'
,p_alias=>'MISO-PERIODS'
,p_step_title=>'Miso Periods'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>To find data enter a search term into the search dialog, or click on the column headings to limit the records returned.</p>',
'',
'<p>You can perform numerous functions by clicking the <strong>Actions</strong> button. This includes selecting the columns that are displayed / hidden and their display sequence, plus numerous data and format functions.  You can also define additiona'
||'l views of the data using the chart, group by, and pivot options.</p>',
'',
'<p>If you want to save your customizations select report, or click download to unload the data. Enter you email address and time frame under subscription to be sent the data on a regular basis.<p>',
'',
'<p>For additional information click Help at the bottom of the Actions menu.</p> ',
'',
'<p>Click the <strong>Reset</strong> button to reset the interactive report back to the default settings.</p>'))
,p_last_updated_by=>'MISO'
,p_last_upd_yyyymmddhh24miss=>'20211116062632'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(57598794249067554)
,p_plug_name=>'Miso Periods'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(57473530390067160)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'TABLE'
,p_query_table=>'DW_MISO_PERIODS'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Miso Periods'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(57598836166067554)
,p_name=>'Miso Periods'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_save_rpt_public=>'Y'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:EMAIL:XLSX:PDF:RTF'
,p_detail_link=>'f?p=&APP_ID.:4:&APP_SESSION.:::4:P4_DW_MISO_PERIOD_ID:\#DW_MISO_PERIOD_ID#\'
,p_detail_link_text=>'<span class="fa fa-edit" aria-hidden="true"></span>'
,p_owner=>'APLASCENCIA'
,p_internal_uid=>57598836166067554
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(57599286794067556)
,p_db_column_name=>'DW_MISO_PERIOD_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Dw Miso Period ID'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(57599664657067558)
,p_db_column_name=>'LEVEL_0_ALL'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Level 0 All'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(57600045718067558)
,p_db_column_name=>'LEVEL_1_YEAR'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Level 1 Year'
,p_column_link=>'f?p=&APP_ID.:21:&SESSION.:::21,RR:IR_DW_MISO_PERIODS_ID:\#LEVEL_0_ALL#\'
,p_column_linktext=>'#LEVEL_1_YEAR#'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(57600458382067558)
,p_db_column_name=>'LEVEL_2_QUARTERLY'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Level 2 Quarterly'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(57600873344067558)
,p_db_column_name=>'LEVEL_3_MONTHLY'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Level 3 Monthly'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(57601229884067559)
,p_db_column_name=>'LEVEL_4_DAILY'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Level 4 Daily'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(57601615521067559)
,p_db_column_name=>'LEVEL_5_HOURLY'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Level 5 Hourly'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(57602038191067559)
,p_db_column_name=>'LEVEL_6_15_MIN_INCR'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Level 6 15 Min Incr'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(57797801485070310)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'577979'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'LEVEL_1_YEAR:LEVEL_2_QUARTERLY:LEVEL_3_MONTHLY:LEVEL_4_DAILY:LEVEL_5_HOURLY:LEVEL_6_15_MIN_INCR:LEVEL_0_ALL:'
,p_sort_column_1=>'LEVEL_0_ALL'
,p_sort_direction_1=>'ASC'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(57603279556067561)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(57484866017067166)
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(57417822523067107)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(57541954952067208)
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(57602445777067560)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(57598794249067554)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(57540691389067207)
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.:RR::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(57605065161067565)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(57598794249067554)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(57540596587067207)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.:4'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(57604188509067562)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(57598794249067554)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(57604693808067564)
,p_event_id=>wwv_flow_api.id(57604188509067562)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(57598794249067554)
);
wwv_flow_api.component_end;
end;
/
