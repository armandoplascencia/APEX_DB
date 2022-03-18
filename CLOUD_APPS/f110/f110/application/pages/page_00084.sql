prompt --application/pages/page_00084
begin
--   Manifest
--     PAGE: 00084
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>110
,p_default_id_offset=>101599614921830918
,p_default_owner=>'MISO'
);
wwv_flow_api.create_page(
 p_id=>84
,p_user_interface_id=>wwv_flow_api.id(14434115216807266717)
,p_name=>'All Respondents'
,p_alias=>'ALL-RESPONDENTS'
,p_page_mode=>'MODAL'
,p_step_title=>'All Respondents'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(14008957981820441125)
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_api.id(250464227793234829)
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_last_upd_yyyymmddhh24miss=>'20200116130020'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(14125189905250407783)
,p_plug_name=>'Poll Responses'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(14690169852560251151)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    p.ID poll_id,',
'    (select count(*) ',
'       from eba_qpoll_questions q',
'      where p.id = q.poll_id',
'        and q.publish_yn = ''Y'') nbr_questions,',
'    p.POLL_NAME,',
'    p.POLL_DETAILS,',
'    p.status_id poll_status,',
'    p.authentication_req_yn,',
'    p.invite_only_yn,',
'    p.ANONYMOUS_YN,',
'    p.can_update_answers_yn,',
'    case when p.score_type in (''C'',''A'') and p.enable_score_yn = ''Y'' then apex_lang.message(''SCORE_''||p.score_type) end score_type,',
'    p.ALL_VIEW_RESULTS_YN,',
'    p.START_TIME,',
'    p.STOP_TIME,',
'    r.id result_id, ',
'    lower(r.email) respondent, ',
'    round(r.grade,1) || case when r.grade is not null then '' %'' end grade, ',
'    r.score,',
'    r.created, ',
'    r.updated,',
'    r.preactive_yn',
'from EBA_QPOLL_POLLS p,',
'     EBA_QPOLL_RESULTS r',
'where p.id = r.poll_id',
'  and nvl(r.is_valid_yn,''Y'') = ''Y'''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(14125189993527407783)
,p_name=>'Poll Responses'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_pivot=>'N'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML:EMAIL'
,p_detail_link=>'f?p=&APP_ID.:73:&SESSION.::&DEBUG.:73:LPOLL_ID,P73_RESULT_ID:#POLL_ID#,#RESULT_ID#'
,p_detail_link_text=>'View Response'
,p_detail_link_attr=>'class="t-Button t-Button--small t-Button--hot t-Button--simple t-Button--stretch"'
,p_allow_exclude_null_values=>'N'
,p_allow_hide_extra_columns=>'N'
,p_icon_view_columns_per_row=>1
,p_owner=>'SBKENNED'
,p_internal_uid=>1028203515738710356
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14125190178320407825)
,p_db_column_name=>'POLL_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Selected Poll'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14125190507230407831)
,p_db_column_name=>'POLL_NAME'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Poll Name'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14125190604806407831)
,p_db_column_name=>'POLL_DETAILS'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Poll Details'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14125190778262407831)
,p_db_column_name=>'AUTHENTICATION_REQ_YN'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Login Required?'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14125190908893407831)
,p_db_column_name=>'INVITE_ONLY_YN'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Invite Only?'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14125190981531407831)
,p_db_column_name=>'ANONYMOUS_YN'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Anonymize'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14125191099164407831)
,p_db_column_name=>'CAN_UPDATE_ANSWERS_YN'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Can Update Answers?'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14125191185012407832)
,p_db_column_name=>'SCORE_TYPE'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Score Type'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14125191295739407832)
,p_db_column_name=>'ALL_VIEW_RESULTS_YN'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Invitees View Results?'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14125191388029407832)
,p_db_column_name=>'START_TIME'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Start Time'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'Y'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14125191505760407832)
,p_db_column_name=>'STOP_TIME'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Stop Time'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'Y'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14125191692951407832)
,p_db_column_name=>'RESULT_ID'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Selected Result'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14125191784991407832)
,p_db_column_name=>'RESPONDENT'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'Respondent'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14125191902984407832)
,p_db_column_name=>'GRADE'
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'Grade'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14125192003700407832)
,p_db_column_name=>'SCORE'
,p_display_order=>19
,p_column_identifier=>'S'
,p_column_label=>'Score'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14125192093671407833)
,p_db_column_name=>'CREATED'
,p_display_order=>20
,p_column_identifier=>'T'
,p_column_label=>'Response Submitted'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'Y'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14125192209923407833)
,p_db_column_name=>'UPDATED'
,p_display_order=>21
,p_column_identifier=>'U'
,p_column_label=>'Submission Updated'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'Y'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14125192293372407833)
,p_db_column_name=>'PREACTIVE_YN'
,p_display_order=>22
,p_column_identifier=>'V'
,p_column_label=>'Taken Preactive?'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14125193384277462071)
,p_db_column_name=>'NBR_QUESTIONS'
,p_display_order=>23
,p_column_identifier=>'W'
,p_column_label=>'Nbr Questions'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(307848785019051844)
,p_db_column_name=>'POLL_STATUS'
,p_display_order=>33
,p_column_identifier=>'X'
,p_column_label=>'Poll Status'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_api.id(315068070902733020)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(14125192409157408050)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'10282060'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'RESPONDENT:POLL_NAME:CREATED'
,p_sort_column_1=>'RESPONDENT'
,p_sort_direction_1=>'ASC'
,p_sort_column_2=>'POLL_NAME'
,p_sort_direction_2=>'ASC'
,p_sort_column_3=>'0'
,p_sort_direction_3=>'ASC'
,p_sort_column_4=>'0'
,p_sort_direction_4=>'ASC'
,p_sort_column_5=>'0'
,p_sort_direction_5=>'ASC'
,p_sort_column_6=>'0'
,p_sort_direction_6=>'ASC'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(15049008855003042662)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(14125189905250407783)
,p_button_name=>'FLOW_RESET_BUTTON'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--link:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(14690191013111251220)
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&SESSION.::&DEBUG.:&APP_PAGE_ID.,RIR::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(14125197100413031996)
,p_computation_sequence=>10
,p_computation_item=>'LAST_VIEW'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'84'
);
wwv_flow_api.component_end;
end;
/
