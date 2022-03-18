prompt --application/pages/page_00008
begin
--   Manifest
--     PAGE: 00008
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>108
,p_default_id_offset=>0
,p_default_owner=>'MISO'
);
wwv_flow_api.create_page(
 p_id=>8
,p_user_interface_id=>wwv_flow_api.id(51387734917880156)
,p_name=>'Fryer'
,p_alias=>'FRYER'
,p_step_title=>'Fryer'
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
,p_last_upd_yyyymmddhh24miss=>'20211229190822'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(51467914764880868)
,p_plug_name=>'Fryer'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(51296271712880085)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID,',
'       FRY_POT_VAT_1,',
'       FRY_POT_VAT_2,',
'       FRY_POT_VAT_3,',
'       FRY_POT_VAT_4,',
'       FRY_POT_VAT_5,',
'       FRY_POT_VAT_6,',
'       PRIORITIZE_REMOVING_ORDER,',
'       FRY_POT_VAT_1_NOTES,',
'       FRY_POT_VAT_2_NOTES,',
'       FRY_POT_VAT_3_NOTES,',
'       FRY_POT_VAT_4_NOTES,',
'       FRY_POT_VAT_5_NOTES,',
'       FRY_POT_VAT_6_NOTES,',
'       PRIORITIZE_REMOVING_NOTES,',
'       CREATED,',
'       CREATED_BY,',
'       UPDATED,',
'       UPDATED_BY',
'  from PKI_FRYER'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_page_header=>'Fryer'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(51468042171880868)
,p_name=>'Fryer'
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
,p_detail_link=>'f?p=&APP_ID.:9:&APP_SESSION.:::9:P9_ID:\#ID#\'
,p_detail_link_text=>'<span class="fa fa-edit" aria-hidden="true"></span>'
,p_owner=>'MISO'
,p_internal_uid=>51468042171880868
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(51468462801880869)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'ID'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(51468804984880869)
,p_db_column_name=>'FRY_POT_VAT_1'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Fry Pot Vat 1'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(51469224780880869)
,p_db_column_name=>'FRY_POT_VAT_2'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Fry Pot Vat 2'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(51469666522880869)
,p_db_column_name=>'FRY_POT_VAT_3'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Fry Pot Vat 3'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(51470058668880870)
,p_db_column_name=>'FRY_POT_VAT_4'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Fry Pot Vat 4'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(51470476769880870)
,p_db_column_name=>'FRY_POT_VAT_5'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Fry Pot Vat 5'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(51470855139880870)
,p_db_column_name=>'FRY_POT_VAT_6'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Fry Pot Vat 6'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(51471298297880870)
,p_db_column_name=>'PRIORITIZE_REMOVING_ORDER'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Prioritize Removing Order'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(51471671123880871)
,p_db_column_name=>'FRY_POT_VAT_1_NOTES'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Fry Pot Vat 1 Notes'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(51472051904880871)
,p_db_column_name=>'FRY_POT_VAT_2_NOTES'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Fry Pot Vat 2 Notes'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(51472434702880871)
,p_db_column_name=>'FRY_POT_VAT_3_NOTES'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Fry Pot Vat 3 Notes'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(51472889531880871)
,p_db_column_name=>'FRY_POT_VAT_4_NOTES'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Fry Pot Vat 4 Notes'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(51473281723880872)
,p_db_column_name=>'FRY_POT_VAT_5_NOTES'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Fry Pot Vat 5 Notes'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(51473614227880872)
,p_db_column_name=>'FRY_POT_VAT_6_NOTES'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Fry Pot Vat 6 Notes'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(51474080310880872)
,p_db_column_name=>'PRIORITIZE_REMOVING_NOTES'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Prioritize Removing Notes'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(51474477544880872)
,p_db_column_name=>'CREATED'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Created'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'Y'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(51474849624880873)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(51475227735880873)
,p_db_column_name=>'UPDATED'
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'Updated'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'Y'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(51475656282880873)
,p_db_column_name=>'UPDATED_BY'
,p_display_order=>19
,p_column_identifier=>'S'
,p_column_label=>'Updated By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(51615386733881741)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'516154'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ID:FRY_POT_VAT_1:FRY_POT_VAT_2:FRY_POT_VAT_3:FRY_POT_VAT_4:FRY_POT_VAT_5:FRY_POT_VAT_6:PRIORITIZE_REMOVING_ORDER:FRY_POT_VAT_1_NOTES:FRY_POT_VAT_2_NOTES:FRY_POT_VAT_3_NOTES:FRY_POT_VAT_4_NOTES:FRY_POT_VAT_5_NOTES:FRY_POT_VAT_6_NOTES:PRIORITIZE_REMOVI'
||'NG_NOTES:CREATED:CREATED_BY:UPDATED:UPDATED_BY:'
,p_sort_column_1=>'FRY_POT_VAT_1'
,p_sort_direction_1=>'ASC'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(51476847536880874)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(51307546198880090)
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(51240551279880042)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(51364660915880128)
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(51476096606880873)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(51467914764880868)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(51363310809880127)
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:8:&SESSION.::&DEBUG.:RR::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(51478692958880875)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(51467914764880868)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(51363276937880127)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:9:&SESSION.::&DEBUG.:9'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(51477768012880875)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(51467914764880868)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(51478225364880875)
,p_event_id=>wwv_flow_api.id(51477768012880875)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(51467914764880868)
);
wwv_flow_api.component_end;
end;
/
