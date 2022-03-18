prompt --application/pages/page_00060
begin
--   Manifest
--     PAGE: 00060
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
 p_id=>60
,p_user_interface_id=>wwv_flow_api.id(19722833960781940)
,p_name=>'The Order'
,p_alias=>'THE-ORDER'
,p_step_title=>'The Order'
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
,p_last_upd_yyyymmddhh24miss=>'20211022215112'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(20395708469793584)
,p_plug_name=>'The Order'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(19631333458781863)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'TABLE'
,p_query_table=>'THE_ORDER'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'The Order'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(20395818552793584)
,p_name=>'The Order'
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
,p_detail_link=>'f?p=&APP_ID.:61:&APP_SESSION.:::61:P61_ID:\#ID#\'
,p_detail_link_text=>'<span class="fa fa-edit" aria-hidden="true"></span>'
,p_owner=>'MISO'
,p_internal_uid=>20395818552793584
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(20396212842793585)
,p_db_column_name=>'RESTAURANT_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Restaurant'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_rpt_named_lov=>wwv_flow_api.id(20215255646790092)
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(20396627986793585)
,p_db_column_name=>'ORDER_STATUS_ID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Order Status'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_rpt_named_lov=>wwv_flow_api.id(20337827080792447)
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(20397056439793585)
,p_db_column_name=>'REGISTER_ID'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Register'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_rpt_named_lov=>wwv_flow_api.id(20401749638793588)
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(20397455755793586)
,p_db_column_name=>'ID'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'ID'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(20397889440793586)
,p_db_column_name=>'ORDER_PLACED_BY'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Order Placed By'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_rpt_named_lov=>wwv_flow_api.id(20402614475793589)
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(20398202083793586)
,p_db_column_name=>'ORDER_QUANTITY_FOOD'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Order Quantity Food'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(20398689543793586)
,p_db_column_name=>'ORDER_QUANTITY_DRINKS'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Order Quantity Drinks'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(20399094922793587)
,p_db_column_name=>'ORDER_PLACED'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Order Placed'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'Y'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(20399464303793587)
,p_db_column_name=>'ORDER_COMPLETED'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Order Completed'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'Y'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(20399857543793587)
,p_db_column_name=>'CREATED'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Created'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'Y'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(20400202610793587)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(20400644718793588)
,p_db_column_name=>'UPDATED'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Updated'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'Y'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(20401008279793588)
,p_db_column_name=>'UPDATED_BY'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Updated By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(21199737280798860)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'211998'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'RESTAURANT_ID:ORDER_STATUS_ID:REGISTER_ID:ORDER_PLACED_BY:ORDER_QUANTITY_FOOD:ORDER_QUANTITY_DRINKS:ORDER_PLACED:ORDER_COMPLETED'
,p_sort_column_1=>'RESTAURANT_ID'
,p_sort_direction_1=>'ASC'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(20404065983793590)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(19642651061781868)
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(19575663121781818)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(19699706531781911)
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(20403289095793590)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(20395708469793584)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(19698451839781910)
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:60:&SESSION.::&DEBUG.:RR::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(20405825920793591)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(20395708469793584)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(19698310021781910)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:61:&SESSION.::&DEBUG.:61'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(20404941854793591)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(20395708469793584)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(20405405790793591)
,p_event_id=>wwv_flow_api.id(20404941854793591)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(20395708469793584)
);
wwv_flow_api.component_end;
end;
/
