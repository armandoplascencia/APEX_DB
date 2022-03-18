prompt --application/pages/page_00005
begin
--   Manifest
--     PAGE: 00005
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
 p_id=>5
,p_user_interface_id=>wwv_flow_api.id(57565039144067239)
,p_name=>'Miso Date Dim'
,p_alias=>'MISO-DATE-DIM'
,p_step_title=>'Miso Date Dim'
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
,p_last_updated_by=>'APLASCENCIA'
,p_last_upd_yyyymmddhh24miss=>'20211116062207'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(57617104587067841)
,p_plug_name=>'Miso Date Dim'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(57473530390067160)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'TABLE'
,p_query_table=>'DW_MISO_DATE_DIM'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Miso Date Dim'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(57617290031067841)
,p_name=>'Miso Date Dim'
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
,p_detail_link=>'f?p=&APP_ID.:6:&APP_SESSION.:::6:P6_DW_MISO_DATE_DIM_ID:\#DW_MISO_DATE_DIM_ID#\'
,p_detail_link_text=>'<span class="fa fa-edit" aria-hidden="true"></span>'
,p_owner=>'APLASCENCIA'
,p_internal_uid=>57617290031067841
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(57617630317067842)
,p_db_column_name=>'DW_MISO_DATE_DIM_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Dw Miso Date Dim ID'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(57618020115067842)
,p_db_column_name=>'TIME_ID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Time ID'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'Y'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(57618412473067843)
,p_db_column_name=>'DAY_NAME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Day Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(57618866419067843)
,p_db_column_name=>'DAY_NUMBER_IN_WEEK'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Day Number In Week'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(57619233106067843)
,p_db_column_name=>'DAY_NUMBER_IN_MONTH'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Day Number In Month'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(57619636010067843)
,p_db_column_name=>'DAY_NUMBER_IN_YEAR'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Day Number In Year'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(57620014228067844)
,p_db_column_name=>'CALENDAR_WEEK_NUMBER'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Calendar Week Number'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(57620441114067844)
,p_db_column_name=>'WEEK_ENDING_DATE'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Week Ending Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'Y'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(57620841182067844)
,p_db_column_name=>'CALENDAR_MONTH_NUMBER'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Calendar Month Number'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(57621206083067844)
,p_db_column_name=>'DAYS_IN_CAL_MONTH'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Days In Cal Month'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(57621660633067845)
,p_db_column_name=>'END_OF_CAL_MONTH'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'End of Cal Month'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'Y'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(57622021027067845)
,p_db_column_name=>'CALENDAR_MONTH_NAME'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Calendar Month Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(57622481210067845)
,p_db_column_name=>'DAYS_IN_CAL_QUARTER'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Days In Cal Quarter'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(57622815973067845)
,p_db_column_name=>'BEG_OF_CAL_QUARTER'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Beg of Cal Quarter'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'Y'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(57623222859067846)
,p_db_column_name=>'END_OF_CAL_QUARTER'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'End of Cal Quarter'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'Y'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(57623680536067846)
,p_db_column_name=>'CALENDAR_QUARTER_NUMBER'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Calendar Quarter Number'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(57624048615067846)
,p_db_column_name=>'CALENDAR_YEAR'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'Calendar Year'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(57624443963067846)
,p_db_column_name=>'DAYS_IN_CAL_YEAR'
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'Days In Cal Year'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(57624803607067847)
,p_db_column_name=>'BEG_OF_CAL_YEAR'
,p_display_order=>19
,p_column_identifier=>'S'
,p_column_label=>'Beg of Cal Year'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'Y'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(57625282096067847)
,p_db_column_name=>'END_OF_CAL_YEAR'
,p_display_order=>20
,p_column_identifier=>'T'
,p_column_label=>'End of Cal Year'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'Y'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(57812274000070335)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'578123'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'TIME_ID:DAY_NAME:DAY_NUMBER_IN_WEEK:DAY_NUMBER_IN_MONTH:DAY_NUMBER_IN_YEAR:CALENDAR_WEEK_NUMBER:WEEK_ENDING_DATE:CALENDAR_MONTH_NUMBER:DAYS_IN_CAL_MONTH:END_OF_CAL_MONTH:CALENDAR_MONTH_NAME:DAYS_IN_CAL_QUARTER:BEG_OF_CAL_QUARTER:END_OF_CAL_QUARTER:CA'
||'LENDAR_QUARTER_NUMBER:CALENDAR_YEAR:DAYS_IN_CAL_YEAR:BEG_OF_CAL_YEAR:END_OF_CAL_YEAR'
,p_sort_column_1=>'TIME_ID'
,p_sort_direction_1=>'ASC'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(57626475699067848)
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
 p_id=>wwv_flow_api.id(57625628960067847)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(57617104587067841)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(57540691389067207)
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.:RR::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(57628220641067850)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(57617104587067841)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(57540596587067207)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.:6'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(57627310600067849)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(57617104587067841)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(57627883576067849)
,p_event_id=>wwv_flow_api.id(57627310600067849)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(57617104587067841)
);
wwv_flow_api.component_end;
end;
/
