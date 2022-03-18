prompt --application/pages/page_00041
begin
--   Manifest
--     PAGE: 00041
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
 p_id=>41
,p_user_interface_id=>wwv_flow_api.id(14434115216807266717)
,p_name=>'Results Across Polls'
,p_alias=>'RESULTS-ACROSS-POLLS'
,p_step_title=>'Results Across Polls'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(14008957981820441125)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(14021638908096383157)
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_last_upd_yyyymmddhh24miss=>'20200116130020'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(14104593384633860204)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(14690173773848251160)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(17689949455017337264)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(14690191633551251224)
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(14104593707231860207)
,p_plug_name=>'Result Details'
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(14690169852560251151)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select r.id result_id,',
'      p.id poll_id,',
'      p.poll_name,',
'      p.status_id poll_status,',
'      case when p.poll_or_quiz = ''Q''',
'           then apex_lang.message(''QUIZ_INITCAP'')',
'           else apex_lang.message(''POLL_INITCAP'')',
'           end poll_type,',
'      p.row_key poll_row_key,',
'      q.ID question_id,',
'      q.display_sequence question_display_seq,',
'      d.QUESTION,',
'      q.DISPLAY_SEQUENCE,',
'      q.QUESTION_TYPE,',
'      case when p.anonymous_yn = ''Y'' then ''anonymous'' else lower(r.email) end respondent,',
'      (select c.community_name',
'         from eba_qpoll_comm_invites c,',
'              eba_qpoll_invites i',
'        where p.id = c.poll_id',
'          and c.id = i.comm_invite_id',
'          and r.respondent_id = i.respondent_id) community,',
'      r.updated submission_date,',
'      d.answer_01,',
'      d.answer_02,',
'      d.answer_03,',
'      d.answer_04,',
'      d.answer_05,',
'      d.answer_06,',
'      d.answer_07,',
'      d.answer_08,',
'      d.answer_09,',
'      d.answer_10,',
'      d.answer_11,',
'      d.answer_12,',
'      d.answer_01||',
'        decode(d.answer_02,null,null,'', ''||d.answer_02)||',
'        decode(d.answer_03,null,null,'', ''||d.answer_03)||',
'        decode(d.answer_04,null,null,'', ''||d.answer_04)||',
'        decode(d.answer_05,null,null,'', ''||d.answer_05)||',
'        decode(d.answer_06,null,null,'', ''||d.answer_06)||',
'        decode(d.answer_07,null,null,'', ''||d.answer_07)||',
'        decode(d.answer_08,null,null,'', ''||d.answer_08)||',
'        decode(d.answer_09,null,null,'', ''||d.answer_09)||',
'        decode(d.answer_10,null,null,'', ''||d.answer_10)||',
'        decode(d.answer_11,null,null,'', ''||d.answer_11)||',
'        decode(d.answer_12,null,null,'', ''||d.answer_12) answers,',
'      d.answer_correct_yn,',
'      d.score,',
'      case when q.enable_score_yn = ''Y'' and p.enable_score_yn = ''Y'' ',
'           then nvl(p.score_type,''N'')',
'           else ''N'' end score_type,',
'       d.id pk,',
'       case when p.use_sections_yn = ''Y'' then s.title end section',
'  from eba_qpoll_polls p,',
'       eba_qpoll_sections s,',
'       EBA_QPOLL_QUESTIONS q,',
'       EBA_QPOLL_CANNED_ANSWERS a,',
'       EBA_QPOLL_RESULTS r,',
'       EBA_QPOLL_RESULT_DETAILS d',
' where p.id = q.poll_id and',
'       q.section_id = s.id (+) and',
'       q.question_type = a.code(+) and',
'       p.id = r.poll_id and',
'       nvl(r.is_valid_yn,''Y'') = ''Y'' and',
'       r.id = d.result_id and',
'       q.id = d.question_id',
'  and (p.status_id = 4 or p.status_id = 3 or',
'       ( p.status_id = 2 and ',
'         eba_qpoll.get_access_role (',
'             p_app_id   => :APP_ID,',
'             p_username => :APP_USER) in (''CONTRIBUTOR'',''ADMINISTRATOR'') ) )',
'  and (eba_qpoll.get_access_role (',
'             p_app_id   => :APP_ID,',
'             p_username => :APP_USER) != ''NONE''',
'       or ',
'       (p.all_view_results_yn = ''Y'' and exists ',
'        (select 1',
'           from eba_qpoll_comm_invites c,',
'                eba_qpoll_invites i',
'          where c.poll_id = p.id',
'            and c.id = i.comm_invite_id',
'            and upper(respondent_email) = :APP_USER) ) )'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(14104593804433860207)
,p_name=>'Result Details'
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
,p_show_detail_link=>'N'
,p_show_pivot=>'N'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML:EMAIL'
,p_owner=>'SBKENNED'
,p_internal_uid=>1007607326645162780
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14104593986157860213)
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
 p_id=>wwv_flow_api.id(14104594581115860216)
,p_db_column_name=>'POLL_ROW_KEY'
,p_display_order=>2
,p_column_identifier=>'G'
,p_column_label=>'Poll Row Key'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14104594104840860215)
,p_db_column_name=>'POLL_NAME'
,p_display_order=>3
,p_column_identifier=>'B'
,p_column_label=>'Poll Name'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14104594478625860216)
,p_db_column_name=>'POLL_TYPE'
,p_display_order=>7
,p_column_identifier=>'F'
,p_column_label=>'Poll Type'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14104594693141860217)
,p_db_column_name=>'QUESTION_ID'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Question ID'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14104594793672860218)
,p_db_column_name=>'QUESTION_DISPLAY_SEQ'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Question Display Sequence'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14104594878444860218)
,p_db_column_name=>'QUESTION'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Question'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14104594985946860218)
,p_db_column_name=>'QUESTION_TYPE'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Question Type'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_rpt_named_lov=>wwv_flow_api.id(13957552504559171117)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14104597302844880025)
,p_db_column_name=>'RESPONDENT'
,p_display_order=>12
,p_column_identifier=>'AB'
,p_column_label=>'Respondent'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14104595085606860218)
,p_db_column_name=>'ANSWER_01'
,p_display_order=>13
,p_column_identifier=>'L'
,p_column_label=>'Answer 01'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14104595204509860218)
,p_db_column_name=>'ANSWER_02'
,p_display_order=>14
,p_column_identifier=>'M'
,p_column_label=>'Answer 02'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14104595303047860218)
,p_db_column_name=>'ANSWER_03'
,p_display_order=>15
,p_column_identifier=>'N'
,p_column_label=>'Answer 03'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14104595397415860218)
,p_db_column_name=>'ANSWER_04'
,p_display_order=>16
,p_column_identifier=>'O'
,p_column_label=>'Answer 04'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14104595488135860218)
,p_db_column_name=>'ANSWER_05'
,p_display_order=>17
,p_column_identifier=>'P'
,p_column_label=>'Answer 05'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14104595596469860219)
,p_db_column_name=>'ANSWER_06'
,p_display_order=>18
,p_column_identifier=>'Q'
,p_column_label=>'Answer 06'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14104595695985860219)
,p_db_column_name=>'ANSWER_07'
,p_display_order=>19
,p_column_identifier=>'R'
,p_column_label=>'Answer 07'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14104595807059860219)
,p_db_column_name=>'ANSWER_08'
,p_display_order=>20
,p_column_identifier=>'S'
,p_column_label=>'Answer 08'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14104595898282860219)
,p_db_column_name=>'ANSWER_09'
,p_display_order=>21
,p_column_identifier=>'T'
,p_column_label=>'Answer 09'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14104595983868860219)
,p_db_column_name=>'ANSWER_10'
,p_display_order=>22
,p_column_identifier=>'U'
,p_column_label=>'Answer 10'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14104596099802860219)
,p_db_column_name=>'ANSWER_11'
,p_display_order=>23
,p_column_identifier=>'V'
,p_column_label=>'Answer 11'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14104596190543860219)
,p_db_column_name=>'ANSWER_12'
,p_display_order=>24
,p_column_identifier=>'W'
,p_column_label=>'Answer 12'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14104596302063860219)
,p_db_column_name=>'ANSWER_CORRECT_YN'
,p_display_order=>25
,p_column_identifier=>'X'
,p_column_label=>'Answer Correct?'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14104596398130860219)
,p_db_column_name=>'SCORE'
,p_display_order=>26
,p_column_identifier=>'Y'
,p_column_label=>'Score'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14104596504623860219)
,p_db_column_name=>'SCORE_TYPE'
,p_display_order=>27
,p_column_identifier=>'Z'
,p_column_label=>'Score Type'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_rpt_named_lov=>wwv_flow_api.id(14032707904479673080)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14104596586752860219)
,p_db_column_name=>'PK'
,p_display_order=>28
,p_column_identifier=>'AA'
,p_column_label=>'PK'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14104597494218884032)
,p_db_column_name=>'SUBMISSION_DATE'
,p_display_order=>29
,p_column_identifier=>'AC'
,p_column_label=>'Submission Date'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'Y'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14125185398536893325)
,p_db_column_name=>'ANSWERS'
,p_display_order=>30
,p_column_identifier=>'AD'
,p_column_label=>'Answers'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14125186178214963470)
,p_db_column_name=>'DISPLAY_SEQUENCE'
,p_display_order=>31
,p_column_identifier=>'AE'
,p_column_label=>'Display Sequence'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(13127467906973018088)
,p_db_column_name=>'SECTION'
,p_display_order=>32
,p_column_identifier=>'AF'
,p_column_label=>'Section'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(8319099901459882708)
,p_db_column_name=>'COMMUNITY'
,p_display_order=>33
,p_column_identifier=>'AG'
,p_column_label=>'Community'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(307848008993051836)
,p_db_column_name=>'RESULT_ID'
,p_display_order=>43
,p_column_identifier=>'AH'
,p_column_label=>'Result Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(307848689883051843)
,p_db_column_name=>'POLL_STATUS'
,p_display_order=>53
,p_column_identifier=>'AI'
,p_column_label=>'Poll Status'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_api.id(315068070902733020)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(14104596680369867622)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'10076103'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'POLL_NAME:RESPONDENT:SECTION:QUESTION:ANSWERS:RESULT_ID'
,p_sort_column_1=>'POLL_NAME'
,p_sort_direction_1=>'ASC'
,p_sort_column_2=>'RESPONDENT'
,p_sort_direction_2=>'ASC'
,p_sort_column_3=>'QUESTION_DISPLAY_SEQ'
,p_sort_direction_3=>'ASC'
,p_sort_column_4=>'0'
,p_sort_direction_4=>'ASC'
,p_sort_column_5=>'0'
,p_sort_direction_5=>'ASC'
,p_sort_column_6=>'0'
,p_sort_direction_6=>'ASC'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(337512455421271469)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(14104593384633860204)
,p_button_name=>'BACK'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(14690190887630251216)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Back'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:17:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-angle-double-left'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(14125186294996006617)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(14104593707231860207)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--link:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(14690191013111251220)
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&SESSION.::&DEBUG.:RP,&APP_PAGE_ID.,RIR::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_api.component_end;
end;
/
