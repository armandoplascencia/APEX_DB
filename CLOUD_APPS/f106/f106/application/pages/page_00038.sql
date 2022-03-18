prompt --application/pages/page_00038
begin
--   Manifest
--     PAGE: 00038
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>106
,p_default_id_offset=>0
,p_default_owner=>'MISO'
);
wwv_flow_api.create_page(
 p_id=>38
,p_user_interface_id=>wwv_flow_api.id(48908740043344081)
,p_name=>'ALT_MASTER_RPT'
,p_alias=>'ALT-MASTER-RPT'
,p_step_title=>'ALT_MASTER_RPT'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'MISO'
,p_last_upd_yyyymmddhh24miss=>'20211230020803'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(76993664200120417)
,p_plug_name=>'Filter on Survey_Type'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(48819161814344010)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select * from (',
'select ''(''||cntr||'')''||survey_Type , survey_type from ( select count(*) cntr, survey_Type  from pki_survey group by  survey_Type )',
' union all',
'select ''99'',    ''ALL'' survey_type from dual )',
'',
'',
' '))
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_jet_chart(
 p_id=>wwv_flow_api.id(76993736895120418)
,p_region_id=>wwv_flow_api.id(76993664200120417)
,p_chart_type=>'bar'
,p_height=>'400'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_connect_nulls=>'Y'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_legend_rendered=>'off'
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(76993863843120419)
,p_chart_id=>wwv_flow_api.id(76993736895120418)
,p_seq=>10
,p_name=>'New'
,p_data_source_type=>'TABLE'
,p_query_table=>'PKI_SURVEY'
,p_include_rowid_column=>false
,p_items_label_column_name=>'SURVEY_TYPE'
,p_aggregate_function=>'COUNT'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
,p_link_target=>'f?p=&APP_ID.:38:&SESSION.::&DEBUG.::P38_VALUE_FILTER:&SURVEY_TYPE.'
,p_link_target_type=>'REDIRECT_PAGE'
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(76993987504120420)
,p_chart_id=>wwv_flow_api.id(76993736895120418)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(76994007564120421)
,p_chart_id=>wwv_flow_api.id(76993736895120418)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'none'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(77010126672142304)
,p_plug_name=>'Report 1'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(48817248700344009)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID,',
'       THE_NUMBER,',
'       QUESTION,',
'       RESPONSE,',
'       SURVEY_TYPE,',
'       ACTIVE_QUESTION,',
'       CREATED,',
'       CREATED_BY,',
'       UPDATED,',
'       UPDATED_BY,',
'       PKI_MANDATORY_OPT_COND_ID',
'  from PKI_SURVEY',
'  where  survey_type =  nvl( :P38_VALUE_FILTER, survey_Type) or',
'         (:p38_VALUE_FILTER = ''ALL'')'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_page_header=>'Report 1'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(77010504556142304)
,p_name=>'Report 1'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_save_rpt_public=>'Y'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'TOP_AND_BOTTOM_LEFT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:EMAIL:XLSX:PDF:RTF'
,p_detail_link=>'f?p=&APP_ID.:39:&SESSION.::&DEBUG.:RP:P39_ID:\#ID#\'
,p_detail_link_text=>'<span aria-label="Edit"><span class="fa fa-edit" aria-hidden="true" title="Edit"></span></span>'
,p_owner=>'MISO'
,p_internal_uid=>77010504556142304
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77010642305142305)
,p_db_column_name=>'ID'
,p_display_order=>0
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77011002252142306)
,p_db_column_name=>'THE_NUMBER'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'The Number'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77011432763142306)
,p_db_column_name=>'QUESTION'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Question'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77011803637142307)
,p_db_column_name=>'RESPONSE'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'EXAMPLE (Response) (BLANK FOR EACH USER)'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77012241308142307)
,p_db_column_name=>'SURVEY_TYPE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Survey Type'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77012665405142307)
,p_db_column_name=>'ACTIVE_QUESTION'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Active Question'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77013039871142308)
,p_db_column_name=>'CREATED'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Created'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'Y'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77013416980142308)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77013803288142308)
,p_db_column_name=>'UPDATED'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Updated'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'Y'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77014264061142309)
,p_db_column_name=>'UPDATED_BY'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Updated By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77014613745142309)
,p_db_column_name=>'PKI_MANDATORY_OPT_COND_ID'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Pki Mandatory Opt Cond Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_api.id(77017580974237473)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(77016484726143810)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'770165'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ID:THE_NUMBER:QUESTION:RESPONSE:SURVEY_TYPE:ACTIVE_QUESTION:CREATED:CREATED_BY:UPDATED:UPDATED_BY:PKI_MANDATORY_OPT_COND_ID'
,p_sort_column_1=>'ID'
,p_sort_direction_1=>'ASC'
,p_sort_column_2=>'SURVEY_TYPE'
,p_sort_direction_2=>'ASC'
,p_sort_column_3=>'THE_NUMBER'
,p_sort_direction_3=>'ASC'
,p_sort_column_4=>'0'
,p_sort_direction_4=>'ASC'
,p_sort_column_5=>'0'
,p_sort_direction_5=>'ASC'
,p_sort_column_6=>'0'
,p_sort_direction_6=>'ASC'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(76994207376120423)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(76993664200120417)
,p_button_name=>'New'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(48884399583344068)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Click her to filter on ALL the DATA'
,p_button_position=>'BODY'
,p_button_redirect_url=>'f?p=&APP_ID.:38:&SESSION.::&DEBUG.::P38_VALUE_FILTER:ALL'
,p_grid_new_row=>'Y'
,p_grid_column_span=>2
,p_grid_column=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(77016094488142319)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(77010126672142304)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(48884215312344068)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:39:&SESSION.::&DEBUG.:39'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(76994172042120422)
,p_name=>'P38_VALUE_FILTER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(76993664200120417)
,p_prompt=>'Value Filter'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(48881763257344066)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.component_end;
end;
/
