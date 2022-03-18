prompt --application/pages/page_00021
begin
--   Manifest
--     PAGE: 00021
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
 p_id=>21
,p_user_interface_id=>wwv_flow_api.id(57565039144067239)
,p_name=>'Operational Metric'
,p_alias=>'OPERATIONAL-METRIC'
,p_step_title=>'Operational Metric'
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
,p_last_upd_yyyymmddhh24miss=>'20211116062208'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(57768461399070014)
,p_plug_name=>'Operational Metric'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(57473530390067160)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'TABLE'
,p_query_table=>'DW_OPERATIONAL_METRIC'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Operational Metric'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(57768566233070014)
,p_name=>'Operational Metric'
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
,p_detail_link=>'f?p=&APP_ID.:22:&APP_SESSION.:::22:P22_DW_OPERATIONAL_METRIC_ID:\#DW_OPERATIONAL_METRIC_ID#\'
,p_detail_link_text=>'<span class="fa fa-edit" aria-hidden="true"></span>'
,p_owner=>'APLASCENCIA'
,p_internal_uid=>57768566233070014
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(57768999777070015)
,p_db_column_name=>'DW_MISO_PERIODS_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Dw Miso Periods'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_rpt_named_lov=>wwv_flow_api.id(57590131184067539)
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(57769356455070015)
,p_db_column_name=>'DW_MISO_DATE_DIM_ID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Dw Miso Date Dim'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_rpt_named_lov=>wwv_flow_api.id(57590348374067540)
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(57769724579070016)
,p_db_column_name=>'DW_MISO_TIME_HHMMSS_DIM_ID'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Dw Miso Time Hhmmss Dim'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_rpt_named_lov=>wwv_flow_api.id(57590659108067540)
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(57770148245070016)
,p_db_column_name=>'DW_OPERATIONAL_METRIC_ID'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Dw Operational Metric ID'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(57770525699070016)
,p_db_column_name=>'DW_PRODUCT'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Dw Product'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_rpt_named_lov=>wwv_flow_api.id(57590911519067540)
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(57770946415070016)
,p_db_column_name=>'DW_BRAND'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Dw Brand'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_rpt_named_lov=>wwv_flow_api.id(57591250128067540)
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(57771331672070017)
,p_db_column_name=>'DW_LOCATION'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Dw Location'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_rpt_named_lov=>wwv_flow_api.id(57591551201067542)
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(57771709778070017)
,p_db_column_name=>'DW_CUSTOMER'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Dw Customer'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_rpt_named_lov=>wwv_flow_api.id(57591841422067542)
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(57772121074070017)
,p_db_column_name=>'DW_INTERNAL'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Dw Internal'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_rpt_named_lov=>wwv_flow_api.id(57592145991067542)
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(57772583501070017)
,p_db_column_name=>'SALES_AMT'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Sales Amt'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(57772935756070022)
,p_db_column_name=>'SALES_AVG'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Sales Avg'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(57926653910070432)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'579267'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'DW_MISO_PERIODS_ID:DW_MISO_DATE_DIM_ID:DW_MISO_TIME_HHMMSS_DIM_ID:DW_PRODUCT:DW_BRAND:DW_LOCATION:DW_CUSTOMER:DW_INTERNAL:SALES_AMT:SALES_AVG'
,p_sort_column_1=>'DW_MISO_PERIODS_ID'
,p_sort_direction_1=>'ASC'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(57776522333070025)
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
 p_id=>wwv_flow_api.id(57775788821070024)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(57768461399070014)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(57540691389067207)
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:21:&SESSION.::&DEBUG.:RR::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(57778326781070026)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(57768461399070014)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(57540596587067207)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:22:&SESSION.::&DEBUG.:22'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(57777471232070025)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(57768461399070014)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(57777947840070026)
,p_event_id=>wwv_flow_api.id(57777471232070025)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(57768461399070014)
);
wwv_flow_api.component_end;
end;
/
