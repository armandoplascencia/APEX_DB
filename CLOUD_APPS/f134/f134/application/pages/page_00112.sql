prompt --application/pages/page_00112
begin
--   Manifest
--     PAGE: 00112
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>134
,p_default_id_offset=>172493832712964115
,p_default_owner=>'MISO'
);
wwv_flow_api.create_page(
 p_id=>112
,p_user_interface_id=>wwv_flow_api.id(5783577205373975152)
,p_name=>'Quarters'
,p_page_mode=>'MODAL'
,p_step_title=>'Quarters'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_api.id(7306165779537991444)
,p_protection_level=>'C'
,p_help_text=>'This page shows all of the quarters available in the application. If you <strong>Regenerate Quarters</strong>, all of your existing quarters will be removed and recreated based on the month you select as being your company''s first quarter start month'
||'. This regeneration process creates quarters in the year of your oldest Milestone or Action Item due date and then goes 30 years into the future. If you''re already 30 years into the future from your oldest Action Item or Milestone due date, click the'
||' <strong>Add Quarter</strong> button to add another quarter.'
,p_last_upd_yyyymmddhh24miss=>'20190905141114'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(10020808390712508290)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(6781117976757890807)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(8972392840601050532)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(6781135716305890867)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NEVER'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(10020808931029508293)
,p_plug_name=>'Quarters'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>wwv_flow_api.id(6781113968619890797)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID,',
'       PERIOD_NAME,',
'       FIRST_DAY,',
'       LAST_DAY,',
'       FISCAL_YEAR,',
'case',
'    when rank() over (order by first_day) = 1',
'    then ''First Date''',
'    when (trunc(first_day) - 1) = lag(trunc(last_day)) over (order by first_day)',
'    then ''No Gap''',
'    else ''Error in data range''',
'  end status',
'  from EBA_PROJ_FY_PERIODS'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(10020809040687508293)
,p_name=>'Fiscal Quarters'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLSX:PDF:RTF'
,p_owner=>'CTAYLOR'
,p_internal_uid=>9845804338598864837
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3478851866528647769)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3478852273728647770)
,p_db_column_name=>'PERIOD_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Period Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3478852631581647770)
,p_db_column_name=>'FIRST_DAY'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'First Day'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'DD-MON-YYYY HH:MI AM TZR'
,p_tz_dependent=>'Y'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3478853032915647777)
,p_db_column_name=>'LAST_DAY'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Last Day'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'DD-MON-YYYY'
,p_tz_dependent=>'Y'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3478853427477647778)
,p_db_column_name=>'FISCAL_YEAR'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Fiscal Year'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3478851501428647766)
,p_db_column_name=>'STATUS'
,p_display_order=>15
,p_column_identifier=>'F'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(10020844166727524240)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'33038490'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PERIOD_NAME:FIRST_DAY:LAST_DAY:STATUS:'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(3464854669125033889)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(6212459901559585507)
,p_button_name=>'ADD_QRTR'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(6781135529450890864)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Quarter'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:151:&SESSION.::&DEBUG.:RP,151::'
,p_button_condition_type=>'NEVER'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(3464853180111033874)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(10020808931029508293)
,p_button_name=>'RESET'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(6781134785393890859)
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&SESSION.::&DEBUG.:RP,&APP_PAGE_ID.,RIR::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(3478854758261647808)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(10020808931029508293)
,p_button_name=>'REGEN_QRTRS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(6781135529450890864)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Regenerate Quarters'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:118:&SESSION.::&DEBUG.:RP,118::'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(3478855122989647817)
,p_name=>'Refresh on Regen'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(3478854758261647808)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(3478855621816647824)
,p_event_id=>wwv_flow_api.id(3478855122989647817)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(10020808931029508293)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(3464854710174033890)
,p_name=>'Refresh on Add'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(3464854669125033889)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(3464854818344033891)
,p_event_id=>wwv_flow_api.id(3464854710174033890)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(10020808931029508293)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(3464855254409033895)
,p_name=>'Refresh IRR on Edit'
,p_event_sequence=>30
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(10020808931029508293)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(3464855365061033896)
,p_event_id=>wwv_flow_api.id(3464855254409033895)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(10020808931029508293)
);
wwv_flow_api.component_end;
end;
/
