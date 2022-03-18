prompt --application/pages/page_00012
begin
--   Manifest
--     PAGE: 00012
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>113
,p_default_id_offset=>0
,p_default_owner=>'MISO'
);
wwv_flow_api.create_page(
 p_id=>12
,p_user_interface_id=>wwv_flow_api.id(84535025238269688)
,p_name=>'Employee'
,p_alias=>'EMPLOYEE'
,p_step_title=>'Employee'
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
,p_last_upd_yyyymmddhh24miss=>'20220119021834'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(84630154053271359)
,p_plug_name=>'Employee'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(84443518565269611)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'TABLE'
,p_query_table=>'ND2_EMPLOYEE'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Employee'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(84630204874271359)
,p_name=>'Employee'
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
,p_detail_link=>'f?p=&APP_ID.:13:&APP_SESSION.:::13:P13_ID:\#ID#\'
,p_detail_link_text=>'<span class="fa fa-edit" aria-hidden="true"></span>'
,p_owner=>'MISO'
,p_internal_uid=>84630204874271359
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(84630660322271360)
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
 p_id=>wwv_flow_api.id(84631095339271361)
,p_db_column_name=>'LAST_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Last Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(84631495392271361)
,p_db_column_name=>'FIRST_NAME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'First Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(84631839504271362)
,p_db_column_name=>'FULL_NAME'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Full Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(84632291663271362)
,p_db_column_name=>'MANAGER_ID'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Manager ID'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(84632677027271362)
,p_db_column_name=>'WORK_EMAIL'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Work Email'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(84633085089271362)
,p_db_column_name=>'ORG_LEVEL'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Org Level'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(84633496528271363)
,p_db_column_name=>'PHONE'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Phone'
,p_column_link=>'f?p=&APP_ID.:14:&SESSION.:::14,RR:IR_ND2_EMPLOYEE_ID:\#LAST_NAME#\'
,p_column_linktext=>'#PHONE#'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(84633827712271363)
,p_db_column_name=>'TITLE_ID'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Title'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_rpt_named_lov=>wwv_flow_api.id(84637842339271366)
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(84634289531271363)
,p_db_column_name=>'DEPARTMENT_ID'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Department'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_rpt_named_lov=>wwv_flow_api.id(84636692591271365)
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(84634614350271363)
,p_db_column_name=>'FULL_NAME_CMA'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Full Name Cma'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(84635051972271364)
,p_db_column_name=>'IS_MANAGER'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Is Manager'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(84635452926271364)
,p_db_column_name=>'START_DATE'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Start Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(84635865964271364)
,p_db_column_name=>'END_DATE'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'End Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(84636227832271364)
,p_db_column_name=>'LOCATION_ID'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Location'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_rpt_named_lov=>wwv_flow_api.id(84637219411271365)
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(84968962024277406)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'849690'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'LAST_NAME:FIRST_NAME:FULL_NAME:WORK_EMAIL:ORG_LEVEL:PHONE:TITLE_ID:DEPARTMENT_ID:FULL_NAME_CMA:IS_MANAGER:START_DATE:END_DATE:LOCATION_ID'
,p_sort_column_1=>'LAST_NAME'
,p_sort_direction_1=>'ASC'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(84639252049271367)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(84454847276269616)
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(84387847216269554)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(84511920075269656)
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(84638496442271366)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(84630154053271359)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(84510608203269655)
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:12:&SESSION.::&DEBUG.:RR::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(84641091992271368)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(84630154053271359)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(84510573985269655)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:13:&SESSION.::&DEBUG.:13'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(84640114424271367)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(84630154053271359)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(84640691791271368)
,p_event_id=>wwv_flow_api.id(84640114424271367)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(84630154053271359)
);
wwv_flow_api.component_end;
end;
/
