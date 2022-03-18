prompt --application/pages/page_00036
begin
--   Manifest
--     PAGE: 00036
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>104
,p_default_id_offset=>0
,p_default_owner=>'MISO'
);
wwv_flow_api.create_page(
 p_id=>36
,p_user_interface_id=>wwv_flow_api.id(41820330279533220)
,p_name=>'Interface File'
,p_alias=>'INTERFACE-FILE'
,p_step_title=>'Interface File'
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
,p_last_upd_yyyymmddhh24miss=>'20211023192049'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(42229913587535127)
,p_plug_name=>'Interface File'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(41728811817533115)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'TABLE'
,p_query_table=>'WB_INTERFACE_FILE'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Interface File'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(42230022780535127)
,p_name=>'Interface File'
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
,p_detail_link=>'f?p=&APP_ID.:37:&APP_SESSION.:::37:P37_ID:\#ID#\'
,p_detail_link_text=>'<span class="fa fa-edit" aria-hidden="true"></span>'
,p_owner=>'MISO'
,p_internal_uid=>42230022780535127
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(42230498069535128)
,p_db_column_name=>'ROW_VERSION'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Row Version'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(42230875164535128)
,p_db_column_name=>'ID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'ID'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(42231206477535129)
,p_db_column_name=>'NAME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(42231631647535129)
,p_db_column_name=>'PDF_FILE_CONTENT_FILENAME'
,p_display_order=>5
,p_column_identifier=>'D'
,p_column_label=>'Pdf File Content Filename'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(42232094259535129)
,p_db_column_name=>'PDF_FILE_CONTENT_MIMETYPE'
,p_display_order=>6
,p_column_identifier=>'E'
,p_column_label=>'Pdf File Content Mimetype'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(42232436037535130)
,p_db_column_name=>'PDF_FILE_CONTENT_CHARSET'
,p_display_order=>7
,p_column_identifier=>'F'
,p_column_label=>'Pdf File Content Charset'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(42232811377535130)
,p_db_column_name=>'PDF_FILE_CONTENT_LASTUPD'
,p_display_order=>8
,p_column_identifier=>'G'
,p_column_label=>'Pdf File Content Lastupd'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'Y'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(42233272823535130)
,p_db_column_name=>'VERSION_SPEC'
,p_display_order=>9
,p_column_identifier=>'H'
,p_column_label=>'Version Spec'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(42233624104535130)
,p_db_column_name=>'DETAILS_FROM'
,p_display_order=>10
,p_column_identifier=>'I'
,p_column_label=>'Details From'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_rpt_named_lov=>wwv_flow_api.id(42209680320535034)
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(42234011833535131)
,p_db_column_name=>'REVIEW_START_DT'
,p_display_order=>11
,p_column_identifier=>'J'
,p_column_label=>'Review Start Dt'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'Y'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(42234459889535131)
,p_db_column_name=>'REVIEW_END_DT'
,p_display_order=>12
,p_column_identifier=>'K'
,p_column_label=>'Review End Dt'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'Y'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(42234898490535131)
,p_db_column_name=>'DOC_STATUS'
,p_display_order=>13
,p_column_identifier=>'L'
,p_column_label=>'Doc Status'
,p_column_link=>'f?p=&APP_ID.:42:&SESSION.:::42,RR:IR_FILES:\#NAME#\'
,p_column_linktext=>'#DOC_STATUS#'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(42235279817535131)
,p_db_column_name=>'CREATED'
,p_display_order=>14
,p_column_identifier=>'M'
,p_column_label=>'Created'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'Y'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(42235604131535132)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>15
,p_column_identifier=>'N'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(42236071092535132)
,p_db_column_name=>'UPDATED'
,p_display_order=>16
,p_column_identifier=>'O'
,p_column_label=>'Updated'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'Y'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(42236467338535132)
,p_db_column_name=>'UPDATED_BY'
,p_display_order=>17
,p_column_identifier=>'P'
,p_column_label=>'Updated By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(42836675640536630)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'428367'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'NAME:VERSION_SPEC:DETAILS_FROM:REVIEW_START_DT:REVIEW_END_DT:DOC_STATUS'
,p_sort_column_1=>'NAME'
,p_sort_direction_1=>'ASC'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(42237986769535133)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(41740182461533121)
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(41673262749533053)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(41797207542533180)
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(42237140542535133)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(42229913587535127)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(41795929600533178)
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:36:&SESSION.::&DEBUG.:RR::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(42239734494535135)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(42229913587535127)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(41795848395533178)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:37:&SESSION.::&DEBUG.:37'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(42238827190535134)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(42229913587535127)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(42239390197535134)
,p_event_id=>wwv_flow_api.id(42238827190535134)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(42229913587535127)
);
wwv_flow_api.component_end;
end;
/
