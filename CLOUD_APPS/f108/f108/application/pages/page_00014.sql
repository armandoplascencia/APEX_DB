prompt --application/pages/page_00014
begin
--   Manifest
--     PAGE: 00014
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
 p_id=>14
,p_user_interface_id=>wwv_flow_api.id(51387734917880156)
,p_name=>'Cook Times'
,p_alias=>'COOK-TIMES'
,p_step_title=>'Cook Times'
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
,p_last_upd_yyyymmddhh24miss=>'20211229184608'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(51543427009881484)
,p_plug_name=>'Cook Times'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(51296271712880085)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID,',
'       PRODUCT_PAN_FRIED,',
'       FIRST_COOK_MIN_COOK_TIME,',
'       FIRST_COOK_MAX_COOK_TIME,',
'       SECOND_COOK_MIN_COOK_TIME,',
'       SECOND_COOK_MAX_COOK_TIME,',
'       CREATED,',
'       CREATED_BY,',
'       UPDATED,',
'       UPDATED_BY,',
'       COOK_TIME_DONENESS_SECS',
'  from PKI_COOK_TIMES'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_page_header=>'Cook Times'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(51543577276881484)
,p_name=>'Cook Times'
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
,p_detail_link=>'f?p=&APP_ID.:15:&APP_SESSION.:::15:P15_ID:\#ID#\'
,p_detail_link_text=>'<span class="fa fa-edit" aria-hidden="true"></span>'
,p_owner=>'MISO'
,p_internal_uid=>51543577276881484
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(51543910443881485)
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
 p_id=>wwv_flow_api.id(51544379175881485)
,p_db_column_name=>'PRODUCT_PAN_FRIED'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Product Pan Fried'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(51544798110881485)
,p_db_column_name=>'FIRST_COOK_MIN_COOK_TIME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'First Cook Min Cook Time'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(51545513775881486)
,p_db_column_name=>'SECOND_COOK_MIN_COOK_TIME'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Second Cook Min Cook Time'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(51546344459881486)
,p_db_column_name=>'CREATED'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Created'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'Y'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(51546766880881486)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(51547157914881487)
,p_db_column_name=>'UPDATED'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Updated'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'Y'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(51547508704881487)
,p_db_column_name=>'UPDATED_BY'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Updated By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(76846389973378125)
,p_db_column_name=>'FIRST_COOK_MAX_COOK_TIME'
,p_display_order=>20
,p_column_identifier=>'K'
,p_column_label=>'First Cook Max Cook Time'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(76846418356378126)
,p_db_column_name=>'SECOND_COOK_MAX_COOK_TIME'
,p_display_order=>30
,p_column_identifier=>'L'
,p_column_label=>'Second Cook Max Cook Time'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(76846513262378127)
,p_db_column_name=>'COOK_TIME_DONENESS_SECS'
,p_display_order=>40
,p_column_identifier=>'M'
,p_column_label=>'Cook Time Doneness Secs'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(51691845446881797)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'516919'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ID:PRODUCT_PAN_FRIED:FIRST_COOK_MIN_COOK_TIME:SECOND_COOK_MIN_COOK_TIME:FIRST_COOK_MAX_COOK_TIME:SECOND_COOK_MAX_COOK_TIME:COOK_TIME_DONENESS_SECS:CREATED:CREATED_BY:UPDATED:UPDATED_BY:'
,p_sort_column_1=>'PRODUCT_PAN_FRIED'
,p_sort_direction_1=>'ASC'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(51548778096881488)
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
 p_id=>wwv_flow_api.id(51547989315881487)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(51543427009881484)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(51363310809880127)
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:14:&SESSION.::&DEBUG.:RR::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(51550519421881489)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(51543427009881484)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(51363276937880127)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:15:&SESSION.::&DEBUG.:15'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(51549691455881488)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(51543427009881484)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(51550166691881489)
,p_event_id=>wwv_flow_api.id(51549691455881488)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(51543427009881484)
);
wwv_flow_api.component_end;
end;
/
