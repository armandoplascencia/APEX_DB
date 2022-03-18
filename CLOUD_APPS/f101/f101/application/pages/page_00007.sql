prompt --application/pages/page_00007
begin
--   Manifest
--     PAGE: 00007
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
 p_id=>7
,p_user_interface_id=>wwv_flow_api.id(57565039144067239)
,p_name=>'Miso Time Hhmmss Dim'
,p_alias=>'MISO-TIME-HHMMSS-DIM'
,p_step_title=>'Miso Time Hhmmss Dim'
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
 p_id=>wwv_flow_api.id(57651566826068120)
,p_plug_name=>'Miso Time Hhmmss Dim'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(57473530390067160)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'TABLE'
,p_query_table=>'DW_MISO_TIME_HHMMSS_DIM'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Miso Time Hhmmss Dim'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(57651632816068120)
,p_name=>'Miso Time Hhmmss Dim'
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
,p_detail_link=>'f?p=&APP_ID.:8:&APP_SESSION.:::8:P8_DW_MISO_TIME_HHMMSS_DIM_ID:\#DW_MISO_TIME_HHMMSS_DIM_ID#\'
,p_detail_link_text=>'<span class="fa fa-edit" aria-hidden="true"></span>'
,p_owner=>'APLASCENCIA'
,p_internal_uid=>57651632816068120
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(57652074158068121)
,p_db_column_name=>'DW_MISO_TIME_HHMMSS_DIM_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Dw Miso Time Hhmmss Dim ID'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(57652425030068121)
,p_db_column_name=>'SECOND_IN_TIME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Second In Time'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(57652874664068121)
,p_db_column_name=>'HOUR'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Hour'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(57653275727068122)
,p_db_column_name=>'MINUTE'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Minute'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(57653669595068122)
,p_db_column_name=>'SECOND'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Second'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(57654047140068122)
,p_db_column_name=>'TIME'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Time'
,p_column_link=>'f?p=&APP_ID.:21:&SESSION.:::21,RR:IR_DW_MISO_TIME_HHMMSS_DIM_ID:\#TIME#\'
,p_column_linktext=>'#TIME#'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(57654489386068122)
,p_db_column_name=>'PERIOD'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Period'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(57844742040070363)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'578448'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'SECOND_IN_TIME:HOUR:MINUTE:SECOND:TIME:PERIOD'
,p_sort_column_1=>'SECOND_IN_TIME'
,p_sort_direction_1=>'ASC'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(57655661023068123)
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
 p_id=>wwv_flow_api.id(57654820528068123)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(57651566826068120)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(57540691389067207)
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:7:&SESSION.::&DEBUG.:RR::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(57657469225068125)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(57651566826068120)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(57540596587067207)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:8:&SESSION.::&DEBUG.:8'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(57656583740068124)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(57651566826068120)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(57657047120068124)
,p_event_id=>wwv_flow_api.id(57656583740068124)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(57651566826068120)
);
wwv_flow_api.component_end;
end;
/
