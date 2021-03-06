prompt --application/pages/page_00004
begin
--   Manifest
--     PAGE: 00004
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>133
,p_default_id_offset=>0
,p_default_owner=>'MISO'
);
wwv_flow_api.create_page(
 p_id=>4
,p_user_interface_id=>wwv_flow_api.id(104891014803699938)
,p_name=>'my_metadata_users'
,p_alias=>'MY-METADATA-USERS'
,p_step_title=>'my_metadata_users'
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
,p_last_upd_yyyymmddhh24miss=>'20220303072147'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(104943093933700335)
,p_plug_name=>'My Metadata User'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(104799534255699858)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'TABLE'
,p_query_table=>'MY_METADATA_USER'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'my_metadata_users'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(104943122480700335)
,p_name=>'my_metadata_users'
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
,p_detail_link=>'f?p=&APP_ID.:5:&APP_SESSION.:::5:P5_MY_METADATA_USER_ID:\#MY_METADATA_USER_ID#\'
,p_detail_link_text=>'<span class="fa fa-edit" aria-hidden="true"></span>'
,p_owner=>'MISO'
,p_internal_uid=>104943122480700335
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(104943525027700337)
,p_db_column_name=>'MY_METADATA_USER_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'My Metadata User ID'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(104943939287700337)
,p_db_column_name=>'ORIGINAL_MD'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Original Md'
,p_allow_sorting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_rpt_show_filter_lov=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(104944336784700338)
,p_db_column_name=>'MD'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Md'
,p_allow_sorting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_rpt_show_filter_lov=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(104944779103700338)
,p_db_column_name=>'MD_HTML'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Md Html'
,p_allow_sorting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_rpt_show_filter_lov=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(104945187699700338)
,p_db_column_name=>'MDSIZE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Mdsize'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(104945559788700338)
,p_db_column_name=>'OWNER'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Owner'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(104945979585700339)
,p_db_column_name=>'ONAME'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Oname'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(104946329535700339)
,p_db_column_name=>'OTYPE'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Otype'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(104946745244700339)
,p_db_column_name=>'FIRST_200'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'First 200'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(104947152941700339)
,p_db_column_name=>'TOKEN1'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Token1'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(104947519501700340)
,p_db_column_name=>'TOKEN2'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Token2'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(104947983677700340)
,p_db_column_name=>'TOKEN3'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Token3'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(104948327630700341)
,p_db_column_name=>'TOKEN4'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Token4'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(104948792765700341)
,p_db_column_name=>'TOKEN5'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Token5'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(104949185744700342)
,p_db_column_name=>'TOKEN6'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Token6'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(104949495080700342)
,p_db_column_name=>'TOKEN7'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Token7'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(104949855054700342)
,p_db_column_name=>'TOKEN8'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'Token8'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(104950264074700342)
,p_db_column_name=>'TOKEN9'
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'Token9'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(104950663953700343)
,p_db_column_name=>'TOKEN10'
,p_display_order=>19
,p_column_identifier=>'S'
,p_column_label=>'Token10'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(104951092878700343)
,p_db_column_name=>'CREATED_DATE'
,p_display_order=>20
,p_column_identifier=>'T'
,p_column_label=>'Created Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(104951411284700343)
,p_db_column_name=>'DONE_FLAG'
,p_display_order=>21
,p_column_identifier=>'U'
,p_column_label=>'Done Flag'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(104951871678700343)
,p_db_column_name=>'INSTANCE_NAME'
,p_display_order=>22
,p_column_identifier=>'V'
,p_column_label=>'Instance Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(105004349026700576)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1050044'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ORIGINAL_MD:MD:MD_HTML:MDSIZE:OWNER:ONAME:OTYPE:FIRST_200:TOKEN1:TOKEN2:TOKEN3:TOKEN4:TOKEN5:TOKEN6:TOKEN7:TOKEN8:TOKEN9:TOKEN10:CREATED_DATE:DONE_FLAG:INSTANCE_NAME'
,p_sort_column_1=>'MDSIZE'
,p_sort_direction_1=>'ASC'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(104953071259700346)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(104810806402699867)
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(104743811566699805)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(104867931587699909)
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(104952237182700344)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(104943093933700335)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(104866606920699908)
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.:RR::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(104954891903700348)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(104943093933700335)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(104866565688699908)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.:5'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(104953907379700347)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(104943093933700335)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(104954463296700348)
,p_event_id=>wwv_flow_api.id(104953907379700347)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(104943093933700335)
);
wwv_flow_api.component_end;
end;
/
