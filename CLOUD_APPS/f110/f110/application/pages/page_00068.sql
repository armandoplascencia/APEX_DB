prompt --application/pages/page_00068
begin
--   Manifest
--     PAGE: 00068
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
 p_id=>68
,p_user_interface_id=>wwv_flow_api.id(14434115216807266717)
,p_name=>'&POLL_NAME.'
,p_alias=>'POLL-NAME'
,p_page_mode=>'MODAL'
,p_step_title=>'&POLL_NAME.'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(14008957981820441125)
,p_css_file_urls=>'#IMAGE_PREFIX#plugins/com.oracle.apex.html5_bar_chart/1.0/com_oracle_apex_html5_bar_chart.css'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.permalink { margin: 10px; text-align: center;}',
'.permalink a {color: #606060; font: 11px/12px Arial, sans-serif;}',
'',
'',
'',
'.lp-Question-title {',
'  font-size: 20px;',
'  line-height: 36px;',
'  display: block;',
'  color: #202020;',
'  margin-bottom: 8px;',
'  font-weight: bold;',
'}',
'',
'.lp-Question {',
'  display: block;',
'  padding: 12px;',
'  border: 1px solid #D0D0D0;',
'  background-color: #FFFFFF;',
'  border-radius: 2px;',
'  margin-bottom: 16px;',
'  overflow: hidden;',
'  -webkit-transition: background-color .2s;',
'  transition: background-color .2s;',
'}',
'.lp-Question:hover {',
'  background-color: #F8F8F8;',
'}',
'.lp-Question * {',
'  -webkit-box-sizing: border-box;',
'  -moz-box-sizing: border-box;',
'  box-sizing: border-box;',
'}',
'.lp-Question-questionText {',
'  font-size: 16px;',
'  font-weight: bold;',
'  line-height: 20px;',
'  color: #202020;',
'  margin-bottom: 8px;',
'}',
'.lp-Question-inputRadio,',
'.lp-Question-inputCheckbox {',
'  display: block;',
'  margin-bottom: 4px;',
'  margin-left: 16px;',
'}',
'.lp-Question-inputCheckbox {',
'  width: 30%;',
'  float: left;',
'}',
'.lp-Question-inputRadio input,',
'.lp-Question-inputCheckbox input {',
'  display: inline-block;',
'  margin: 4px 0;',
'  padding: 0;',
'  vertical-align: top;',
'}',
'.lp-Question-inputTextarea textarea {',
'  border: 1px solid #C0C0C0;',
'  border-radius: 2px;',
'  box-shadow: 0 1px 2px rgba(0,0,0,.1) inset;',
'  font-size: 14px;',
'  line-height: 20px;',
'  width: 100%;',
'  padding: 8px;',
'}',
'.lp-Question input[type=radio]:checked + .lp-Question-label,',
'.lp-Question input[type=checkbox]:checked + .lp-Question-label  {',
'  font-weight: bold;',
'  border-color: #A0BADA;',
'  background-color: #DBEBFF;',
'  margin-left: 8px;',
'  padding: 4px 8px;',
'  color: #202020;',
'}',
'.lp-Question-label {',
'  display: inline-block;',
'  font-size: 14px;',
'  line-height: 1;',
'  vertical-align: top;',
'  margin: 0 4px;',
'  border: 1px solid transparent;',
'  padding: 4px 4px;',
'  border-radius: 2px;',
'  color: #404040;',
'}',
'.a-TextResponse li {',
'    margin: 0 0 0 24px;',
'    font-size: 14px;',
'    line-height: 20px;',
'    color: #404040;',
'}',
'',
'',
'/* Project Status */',
'.proj-status-label {',
'  display: inline-block;',
'}',
'.proj-status-color {',
'    display: inline-block;',
'    width: 20px;',
'    height: 20px;',
'    vertical-align: top;',
'    border-radius: 100%;',
'    margin-right: 8px;',
'    box-shadow: 0 0 0 1px rgba(0,0,0,.1) inset;',
'}',
'',
'body div.cbc table.cbc th span.cbc_label {',
'max-width: 100%; ',
'}',
'',
'',
'/* Make page more responsive */',
'',
'@media only screen and (max-width: 640px) {',
'section.uRegionFrame>div.uFrameContent {',
'  display: block;',
'}',
'#uOneCol div.uFrameContent > div.uFrameSide {',
'    display: block;',
'    width: auto;',
'    padding-top: 8px;',
'    border-top: 1px solid #AAA;',
'    border-left: none;',
'}',
'#uOneCol div.uFrameContent > div.uFrameMain {',
'    display: block;',
'}',
'#uOneCol div.uFrameSide > div.uniqueKey {',
'    width: 80%;',
'}',
'}',
'',
''))
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(14021638908096383157)
,p_overwrite_navigation_list=>'Y'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'ALLAN'
,p_last_upd_yyyymmddhh24miss=>'20210518144553'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(8319083216412818614)
,p_plug_name=>'Details'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(14690169852560251151)
,p_plug_display_sequence=>70
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  1 seq, d.ANSWER_01 answer, ',
'        case when :P68_ANONYMOUS_YN = ''Y'' then ''anonymous'' else r.email end apex_user, ',
'        r.created,',
'        decode(answer_correct_yn,''Y'',apex_lang.message(''YES''),apex_lang.message(''NO'')) CORRECT,',
'       (select c.community_name',
'          from eba_qpoll_comm_invites c,',
'               eba_qpoll_invites i',
'         where r.id = c.poll_id',
'           and c.id = i.comm_invite_id',
'           and r.respondent_id = i.respondent_id) community',
'    from EBA_QPOLL_RESULT_DETAILS d,  EBA_QPOLL_RESULTS r',
'    where d.result_id = r.id and d.question_id = :P68_QUESTION_ID and',
'          r.poll_id = :POLL_ID and d.answer_01 is not null and',
'          nvl(r.is_valid_yn,''Y'') = ''Y''',
'union all',
'select  2 seq, d.ANSWER_02 answer, ',
'        case when :P68_ANONYMOUS_YN = ''Y'' then ''anonymous'' else r.email end apex_user, ',
'        r.created,',
'        decode(answer_correct_yn,''Y'',apex_lang.message(''YES''),apex_lang.message(''NO'')) CORRECT,',
'       (select c.community_name',
'          from eba_qpoll_comm_invites c,',
'               eba_qpoll_invites i',
'         where r.id = c.poll_id',
'           and c.id = i.comm_invite_id',
'           and r.respondent_id = i.respondent_id) community',
'    from EBA_QPOLL_RESULT_DETAILS d, EBA_QPOLL_RESULTS r',
'    where d.result_id = r.id and d.question_id = :P68_QUESTION_ID and',
'          r.poll_id = :POLL_ID and d.answer_02 is not null and',
'          nvl(r.is_valid_yn,''Y'') = ''Y''',
'union all',
'select  3 seq, d.ANSWER_03 answer,  ',
'        case when :P68_ANONYMOUS_YN = ''Y'' then ''anonymous'' else r.email end apex_user, ',
'        r.created,',
'        decode(answer_correct_yn,''Y'',apex_lang.message(''YES''),apex_lang.message(''NO'')) CORRECT,',
'       (select c.community_name',
'          from eba_qpoll_comm_invites c,',
'               eba_qpoll_invites i',
'         where r.id = c.poll_id',
'           and c.id = i.comm_invite_id',
'           and r.respondent_id = i.respondent_id) community',
'    from EBA_QPOLL_RESULT_DETAILS d, EBA_QPOLL_RESULTS r',
'    where d.result_id = r.id and d.question_id = :P68_QUESTION_ID and',
'          r.poll_id = :POLL_ID and d.answer_03 is not null and',
'          nvl(r.is_valid_yn,''Y'') = ''Y''',
'union all',
'select  4 seq, d.ANSWER_04 answer, ',
'        case when :P68_ANONYMOUS_YN = ''Y'' then ''anonymous'' else r.email end apex_user, ',
'        r.created,',
'        decode(answer_correct_yn,''Y'',apex_lang.message(''YES''),apex_lang.message(''NO'')) CORRECT,',
'       (select c.community_name',
'          from eba_qpoll_comm_invites c,',
'               eba_qpoll_invites i',
'         where r.id = c.poll_id',
'           and c.id = i.comm_invite_id',
'           and r.respondent_id = i.respondent_id) community',
'    from EBA_QPOLL_RESULT_DETAILS d, EBA_QPOLL_RESULTS r',
'    where d.result_id = r.id and d.question_id = :P68_QUESTION_ID and',
'          r.poll_id = :POLL_ID and d.answer_04 is not null and',
'          nvl(r.is_valid_yn,''Y'') = ''Y''',
'union all',
'select  5 seq, d.ANSWER_05 answer,  ',
'        case when :P68_ANONYMOUS_YN = ''Y'' then ''anonymous'' else r.email end apex_user, ',
'        r.created,',
'        decode(answer_correct_yn,''Y'',apex_lang.message(''YES''),apex_lang.message(''NO'')) CORRECT,',
'       (select c.community_name',
'          from eba_qpoll_comm_invites c,',
'               eba_qpoll_invites i',
'         where r.id = c.poll_id',
'           and c.id = i.comm_invite_id',
'           and r.respondent_id = i.respondent_id) community',
'    from EBA_QPOLL_RESULT_DETAILS d, EBA_QPOLL_RESULTS r',
'    where d.result_id = r.id and d.question_id = :P68_QUESTION_ID and',
'          r.poll_id = :POLL_ID and d.answer_05 is not null and',
'          nvl(r.is_valid_yn,''Y'') = ''Y''',
'union all',
'select  6 seq, d.ANSWER_06 answer,  ',
'        case when :P68_ANONYMOUS_YN = ''Y'' then ''anonymous'' else r.email end apex_user, ',
'        r.created,',
'        decode(answer_correct_yn,''Y'',apex_lang.message(''YES''),apex_lang.message(''NO'')) CORRECT,',
'       (select c.community_name',
'          from eba_qpoll_comm_invites c,',
'               eba_qpoll_invites i',
'         where r.id = c.poll_id',
'           and c.id = i.comm_invite_id',
'           and r.respondent_id = i.respondent_id) community',
'    from EBA_QPOLL_RESULT_DETAILS d, EBA_QPOLL_RESULTS r',
'    where d.result_id = r.id and d.question_id = :P68_QUESTION_ID and',
'          r.poll_id = :POLL_ID and d.answer_06 is not null and',
'          nvl(r.is_valid_yn,''Y'') = ''Y''',
'union all',
'select  7 seq, d.ANSWER_07 answer, ',
'        case when :P68_ANONYMOUS_YN = ''Y'' then ''anonymous'' else r.email end apex_user, ',
'        r.created,',
'        decode(answer_correct_yn,''Y'',apex_lang.message(''YES''),apex_lang.message(''NO'')) CORRECT,',
'       (select c.community_name',
'          from eba_qpoll_comm_invites c,',
'               eba_qpoll_invites i',
'         where r.id = c.poll_id',
'           and c.id = i.comm_invite_id',
'           and r.respondent_id = i.respondent_id) community',
'    from EBA_QPOLL_RESULT_DETAILS d, EBA_QPOLL_RESULTS r',
'    where d.result_id = r.id and d.question_id = :P68_QUESTION_ID and',
'          r.poll_id = :POLL_ID and d.answer_07 is not null and',
'          nvl(r.is_valid_yn,''Y'') = ''Y''',
'union all',
'select  8 seq, d.ANSWER_08 answer,  ',
'        case when :P68_ANONYMOUS_YN = ''Y'' then ''anonymous'' else r.email end apex_user, ',
'        r.created,',
'        decode(answer_correct_yn,''Y'',apex_lang.message(''YES''),apex_lang.message(''NO'')) CORRECT,',
'       (select c.community_name',
'          from eba_qpoll_comm_invites c,',
'               eba_qpoll_invites i',
'         where r.id = c.poll_id',
'           and c.id = i.comm_invite_id',
'           and r.respondent_id = i.respondent_id) community',
'    from EBA_QPOLL_RESULT_DETAILS d, EBA_QPOLL_RESULTS r',
'    where d.result_id = r.id and d.question_id = :P68_QUESTION_ID and',
'          r.poll_id = :POLL_ID and d.answer_08 is not null and',
'          nvl(r.is_valid_yn,''Y'') = ''Y''',
'union all',
'select  9 seq, d.ANSWER_09 answer,  ',
'        case when :P68_ANONYMOUS_YN = ''Y'' then ''anonymous'' else r.email end apex_user, ',
'        r.created,',
'        decode(answer_correct_yn,''Y'',apex_lang.message(''YES''),apex_lang.message(''NO'')) CORRECT,',
'       (select c.community_name',
'          from eba_qpoll_comm_invites c,',
'               eba_qpoll_invites i',
'         where r.id = c.poll_id',
'           and c.id = i.comm_invite_id',
'           and r.respondent_id = i.respondent_id) community',
'    from EBA_QPOLL_RESULT_DETAILS d, EBA_QPOLL_RESULTS r',
'    where d.result_id = r.id and d.question_id = :P68_QUESTION_ID and',
'          r.poll_id = :POLL_ID and d.answer_09 is not null and',
'          nvl(r.is_valid_yn,''Y'') = ''Y''',
'union all',
'select  10 seq, d.ANSWER_10 answer,  ',
'        case when :P68_ANONYMOUS_YN = ''Y'' then ''anonymous'' else r.email end apex_user, ',
'        r.created,',
'        decode(answer_correct_yn,''Y'',apex_lang.message(''YES''),apex_lang.message(''NO'')) CORRECT,',
'       (select c.community_name',
'          from eba_qpoll_comm_invites c,',
'               eba_qpoll_invites i',
'         where r.id = c.poll_id',
'           and c.id = i.comm_invite_id',
'           and r.respondent_id = i.respondent_id) community',
'    from EBA_QPOLL_RESULT_DETAILS d, EBA_QPOLL_RESULTS r',
'    where d.result_id = r.id and d.question_id = :P68_QUESTION_ID and',
'          r.poll_id = :POLL_ID and d.answer_10 is not null and',
'          nvl(r.is_valid_yn,''Y'') = ''Y''',
'union all',
'select  11 seq, d.ANSWER_09 answer,  ',
'        case when :P68_ANONYMOUS_YN = ''Y'' then ''anonymous'' else r.email end apex_user, ',
'        r.created,',
'        decode(answer_correct_yn,''Y'',apex_lang.message(''YES''),apex_lang.message(''NO'')) CORRECT,',
'       (select c.community_name',
'          from eba_qpoll_comm_invites c,',
'               eba_qpoll_invites i',
'         where r.id = c.poll_id',
'           and c.id = i.comm_invite_id',
'           and r.respondent_id = i.respondent_id) community',
'    from EBA_QPOLL_RESULT_DETAILS d, EBA_QPOLL_RESULTS r',
'    where d.result_id = r.id and d.question_id = :P68_QUESTION_ID and',
'          r.poll_id = :POLL_ID and d.answer_11 is not null and',
'          nvl(r.is_valid_yn,''Y'') = ''Y''',
'union all',
'select  12 seq, d.ANSWER_10 answer,  ',
'        case when :P68_ANONYMOUS_YN = ''Y'' then ''anonymous'' else r.email end apex_user, ',
'        r.created,',
'        decode(answer_correct_yn,''Y'',apex_lang.message(''YES''),apex_lang.message(''NO'')) CORRECT,',
'       (select c.community_name',
'          from eba_qpoll_comm_invites c,',
'               eba_qpoll_invites i',
'         where r.id = c.poll_id',
'           and c.id = i.comm_invite_id',
'           and r.respondent_id = i.respondent_id) community',
'    from EBA_QPOLL_RESULT_DETAILS d, EBA_QPOLL_RESULTS r',
'    where d.result_id = r.id and d.question_id = :P68_QUESTION_ID and',
'          r.poll_id = :POLL_ID and d.answer_12 is not null and',
'          nvl(r.is_valid_yn,''Y'') = ''Y'''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(8319083249617818614)
,p_name=>'Detail'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_actions_menu=>'N'
,p_report_list_mode=>'NONE'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_calendar=>'N'
,p_owner=>'SBKENNED'
,p_internal_uid=>1331283401516988490
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(8319084036019818629)
,p_db_column_name=>'ANSWER'
,p_display_order=>1
,p_column_identifier=>'B'
,p_column_label=>'Answer'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(8319084443941818629)
,p_db_column_name=>'APEX_USER'
,p_display_order=>2
,p_column_identifier=>'C'
,p_column_label=>'Respondent'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(8319085598224818631)
,p_db_column_name=>'COMMUNITY'
,p_display_order=>12
,p_column_identifier=>'F'
,p_column_label=>'Community'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from eba_qpoll_comm_invites',
' where poll_id = :POLL_ID'))
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(8319084780236818630)
,p_db_column_name=>'CREATED'
,p_display_order=>22
,p_column_identifier=>'D'
,p_column_label=>'Created'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'Y'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(8319083616588818625)
,p_db_column_name=>'SEQ'
,p_display_order=>32
,p_column_identifier=>'A'
,p_column_label=>'Answer Sequence'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(8319085174106818630)
,p_db_column_name=>'CORRECT'
,p_display_order=>42
,p_column_identifier=>'E'
,p_column_label=>'Correct'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_display_condition=>'POLL_OR_QUIZ'
,p_display_condition2=>'Q'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(8319088579242823472)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'13312888'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ANSWER:APEX_USER:COMMUNITY:CREATED:'
,p_sort_column_1=>'CREATED'
,p_sort_direction_1=>'DESC'
,p_sort_column_2=>'0'
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
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(8726898819975420232)
,p_plug_name=>'Chart'
,p_region_template_options=>'#DEFAULT#:t-Alert--horizontal:t-Alert--noIcon:t-Alert--warning'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(14690160537466251126)
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from EBA_QPOLL_QUESTIONS',
' where id = :P68_QUESTION_ID',
'   and question_type not in (''TEXT'',''TEXTAREA'',''STACK'',''ALLOCATION'')'))
);
wwv_flow_api.create_jet_chart(
 p_id=>wwv_flow_api.id(8726898871443420233)
,p_region_id=>wwv_flow_api.id(8726898819975420232)
,p_chart_type=>'donut'
,p_animation_on_display=>'none'
,p_animation_on_data_change=>'none'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_value_format_type=>'decimal'
,p_value_decimal_places=>0
,p_value_format_scaling=>'auto'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'off'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_pie_other_threshold=>0
,p_pie_selection_effect=>'highlight'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(8726899020986420234)
,p_chart_id=>wwv_flow_api.id(8726898871443420233)
,p_seq=>10
,p_name=>'Results'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select answer, count(*) c',
'from',
'(',
'select  d.ANSWER_01 answer, r.apex_user, r.created',
'    from EBA_QPOLL_RESULT_DETAILS d,  EBA_QPOLL_RESULTS r',
'    where d.result_id = r.id and d.question_id = :P68_QUESTION_ID and',
'          r.poll_id = :POLL_ID and d.answer_01 is not null and',
'          nvl(r.is_valid_yn,''Y'') = ''Y''',
'    union all',
'    select d.ANSWER_02 answer, r.apex_user, r.created',
'    from EBA_QPOLL_RESULT_DETAILS d, EBA_QPOLL_RESULTS r',
'    where d.result_id = r.id and d.question_id = :P68_QUESTION_ID and',
'          r.poll_id = :POLL_ID and d.answer_02 is not null and',
'          nvl(r.is_valid_yn,''Y'') = ''Y''',
'    union all',
'    select  d.ANSWER_03 answer, r.apex_user, r.created',
'    from EBA_QPOLL_RESULT_DETAILS d, EBA_QPOLL_RESULTS r',
'    where d.result_id = r.id and d.question_id = :P68_QUESTION_ID and',
'          r.poll_id = :POLL_ID and d.answer_03 is not null and',
'          nvl(r.is_valid_yn,''Y'') = ''Y''',
'    union all',
'    select  d.ANSWER_04 answer, r.apex_user, r.created',
'    from EBA_QPOLL_RESULT_DETAILS d, EBA_QPOLL_RESULTS r',
'    where d.result_id = r.id and d.question_id = :P68_QUESTION_ID and',
'          r.poll_id = :POLL_ID and d.answer_04 is not null and',
'          nvl(r.is_valid_yn,''Y'') = ''Y''',
'    union all',
'    select  d.ANSWER_05 answer, r.apex_user, r.created',
'    from EBA_QPOLL_RESULT_DETAILS d, EBA_QPOLL_RESULTS r',
'    where d.result_id = r.id and d.question_id = :P68_QUESTION_ID and',
'          r.poll_id = :POLL_ID and d.answer_05 is not null and',
'          nvl(r.is_valid_yn,''Y'') = ''Y''',
'    union all',
'    select  d.ANSWER_06 answer, r.apex_user, r.created',
'    from EBA_QPOLL_RESULT_DETAILS d, EBA_QPOLL_RESULTS r',
'    where d.result_id = r.id and d.question_id = :P68_QUESTION_ID and',
'          r.poll_id = :POLL_ID and d.answer_06 is not null and',
'          nvl(r.is_valid_yn,''Y'') = ''Y''',
'    union all',
'    select  d.ANSWER_07 answer, r.apex_user, r.created',
'    from EBA_QPOLL_RESULT_DETAILS d, EBA_QPOLL_RESULTS r',
'    where d.result_id = r.id and d.question_id = :P68_QUESTION_ID and',
'          r.poll_id = :POLL_ID and d.answer_07 is not null and',
'          nvl(r.is_valid_yn,''Y'') = ''Y''',
'    union all',
'    select  d.ANSWER_08 answer, r.apex_user, r.created',
'    from EBA_QPOLL_RESULT_DETAILS d, EBA_QPOLL_RESULTS r',
'    where d.result_id = r.id and d.question_id = :P68_QUESTION_ID and',
'          r.poll_id = :POLL_ID and d.answer_08 is not null and',
'          nvl(r.is_valid_yn,''Y'') = ''Y''',
'    union all',
'    select  d.ANSWER_09 answer, r.apex_user, r.created',
'    from EBA_QPOLL_RESULT_DETAILS d, EBA_QPOLL_RESULTS r',
'    where d.result_id = r.id and d.question_id = :P68_QUESTION_ID and',
'          r.poll_id = :POLL_ID and d.answer_09 is not null and',
'          nvl(r.is_valid_yn,''Y'') = ''Y''',
'    union all',
'    select  d.ANSWER_10 answer, r.apex_user, r.created',
'    from EBA_QPOLL_RESULT_DETAILS d, EBA_QPOLL_RESULTS r',
'    where d.result_id = r.id and d.question_id = :P68_QUESTION_ID and',
'          r.poll_id = :POLL_ID and d.answer_10 is not null and',
'          nvl(r.is_valid_yn,''Y'') = ''Y''',
'    union all',
'    select  d.ANSWER_11 answer, r.apex_user, r.created',
'    from EBA_QPOLL_RESULT_DETAILS d, EBA_QPOLL_RESULTS r',
'    where d.result_id = r.id and d.question_id = :P68_QUESTION_ID and',
'          r.poll_id = :POLL_ID and d.answer_11 is not null and',
'          nvl(r.is_valid_yn,''Y'') = ''Y''',
'    union all',
'    select  d.ANSWER_12 answer, r.apex_user, r.created',
'    from EBA_QPOLL_RESULT_DETAILS d, EBA_QPOLL_RESULTS r',
'    where d.result_id = r.id and d.question_id = :P68_QUESTION_ID and',
'          r.poll_id = :POLL_ID and d.answer_12 is not null and',
'          nvl(r.is_valid_yn,''Y'') = ''Y''',
') x',
'group by answer'))
,p_items_value_column_name=>'C'
,p_items_label_column_name=>'ANSWER'
,p_items_label_rendered=>true
,p_items_label_position=>'outsideSlice'
,p_items_label_display_as=>'ALL'
,p_threshold_display=>'onIndicator'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(14021610888817789327)
,p_plug_name=>'buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(14690162135548251137)
,p_plug_display_sequence=>70
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(14021618087534286959)
,p_plug_name=>'Hidden Items'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(14690161967644251135)
,p_plug_display_sequence=>20
,p_plug_new_grid_column=>false
,p_plug_display_point=>'BODY'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(14021686387745428493)
,p_plug_name=>'Question '
,p_region_css_classes=>'answers-region'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(14690161967644251135)
,p_plug_display_sequence=>30
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'   l_found boolean := false;',
'   c       integer := 0;',
'   a       integer := 0;',
'   l_max   number;',
'   l_Pct2  number;',
'   l_label         wwv_flow_global.vc_arr2;',
'   l_answer_score  wwv_flow_global.vc_arr2;',
'   l_answer        wwv_flow_global.vc_arr2;',
'   l_count         wwv_flow_global.n_arr;',
'   l_respondents integer := 0;',
'   l_app_id varchar2(255) := :APP_ID;',
'   l_app_session varchar2(255) := :APP_SESSION;',
'   l_correct_answer_yn  varchar2(1) := ''N'';',
'   l_responses     APEX_APPLICATION_GLOBAL.VC_ARR2;',
'   l_answers       APEX_APPLICATION_GLOBAL.VC_ARR2;',
'   m integer;',
'   l_num_answers integer;',
'   l_a_count integer;',
'   x integer;',
'   y integer;',
'   t integer;',
'',
'   procedure paint_stack (',
'	  p_count           in number    default null, ',
'      p_pct             in number    default null, ',
'      p_label           in varchar2  default null)',
'   is ',
'   begin',
'     sys.htp.p(''<li class="a-BarChart-item"><h3 class="a-BarChart-label">'');',
'     sys.htp.prn(p_count||''. '');',
'     sys.htp.prn(apex_escape.html(p_label));',
'     sys.htp.prn(''</h3><span class="a-BarChart-barLink"><div class="a-BarChart-bar"><div class="a-BarChart-filled" style="width: '');',
'     sys.htp.prn(p_pct||''%;"></div></div></span><span class="a-BarChart-value">''||p_pct||''%</li>'');',
'   end;',
'',
'   procedure paint_answer (',
'      p_count           in number    default null, ',
'      p_pct             in number    default null, ',
'      p_label           in varchar2  default null,',
'      p_correct_answer  in varchar2  default null) ',
'   is',
'   begin',
'      if p_label is not null then',
'        l_pct2 := round(100 * (p_count/l_respondents));',
'        sys.htp.p(''<li class="a-BarChart-item">'');',
'        sys.htp.p(''<h3 class="a-BarChart-label">'');',
'        if p_correct_answer = ''Y'' then',
'           sys.htp.p(''<span class="fa fa-check"></span> '');',
'        end if;',
'        sys.htp.prn(apex_escape.html(p_label));',
'        sys.htp.prn(''</h3>'');',
'        sys.htp.prn(''<span class="a-BarChart-barLink">'');',
'        sys.htp.p(''<div class="a-BarChart-bar"><div class="a-BarChart-filled" style="width: ''||to_char(l_pct2)||''%;"></div></div>'');',
'        sys.htp.p(''</span>'');',
'        sys.htp.p(''<span class="a-BarChart-value">''||to_char(p_count)||'' (''||to_char(l_pct2)||''%)<span class="u-VisuallyHidden">(''||to_char(l_pct2)||''%)</span></span>'');',
'        sys.htp.p(''</li>'');',
'      end if;',
'   end;',
'',
'begin',
'',
'--',
'-- count respondents',
'--',
'for c1 in (',
'select count(*) c , ',
'       count(distinct APEX_USER) respondents, ',
'       min(created) first_submission,',
'       max(created) last_submission',
'from EBA_QPOLL_RESULTS',
'where poll_id = :POLL_ID  and',
'      nvl(is_valid_yn,''Y'') = ''Y'') loop',
'l_respondents := c1.c;',
'end loop;',
'',
'if l_respondents = 0 then',
'  sys.htp.p(''This poll has no responses.'');',
'  ',
'else',
'',
'',
'--',
'-- query questions',
'--',
'',
'',
'for c2 in (',
'  select',
'      q.ID question_id,',
'      q.QUESTION,',
'      q.CREATED,',
'      q.UPDATED,',
'      q.display_sequence, ',
'      q.QUESTION_TYPE,',
'      q.mandatory_yn,',
'      case when q.mandatory_yn = ''N'' then',
'           (select count(*)',
'              from eba_qpoll_results r,',
'                   eba_qpoll_result_details d',
'             where r.poll_id = :POLL_ID',
'               and r.id = d.result_id',
'               and d.question_id = q.id',
'               and nvl(r.is_valid_yn,''Y'') = ''Y''',
'               and d.answer_01 is not null) end cnt_answers,',
'      nvl(decode(USE_CUSTOM_ANSWERS_YN,''N'',a.answer_01,q.answer_01),q.answer_01) answer_01,',
'      nvl(decode(USE_CUSTOM_ANSWERS_YN,''N'',a.answer_02,q.answer_02),q.answer_02) answer_02,',
'      nvl(decode(USE_CUSTOM_ANSWERS_YN,''N'',a.answer_03,q.answer_03),q.answer_03) answer_03,',
'      nvl(decode(USE_CUSTOM_ANSWERS_YN,''N'',a.answer_04,q.answer_04),q.answer_04) answer_04,',
'      nvl(decode(USE_CUSTOM_ANSWERS_YN,''N'',a.answer_05,q.answer_05),q.answer_05) answer_05,',
'      nvl(decode(USE_CUSTOM_ANSWERS_YN,''N'',a.answer_06,q.answer_06),q.answer_06) answer_06,',
'      nvl(decode(USE_CUSTOM_ANSWERS_YN,''N'',a.answer_07,q.answer_07),q.answer_07) answer_07,',
'      nvl(decode(USE_CUSTOM_ANSWERS_YN,''N'',a.answer_08,q.answer_08),q.answer_08) answer_08,',
'      nvl(decode(USE_CUSTOM_ANSWERS_YN,''N'',a.answer_09,q.answer_09),q.answer_09) answer_09,',
'      nvl(decode(USE_CUSTOM_ANSWERS_YN,''N'',a.answer_10,q.answer_10),q.answer_10) answer_10,',
'      nvl(decode(USE_CUSTOM_ANSWERS_YN,''N'',a.answer_11,q.answer_11),q.answer_11) answer_11,',
'      nvl(decode(USE_CUSTOM_ANSWERS_YN,''N'',a.answer_12,q.answer_12),q.answer_12) answer_12,',
'      answer_01_score,',
'      answer_02_score,',
'      answer_03_score,',
'      answer_04_score,',
'      answer_05_score,',
'      answer_06_score,',
'      answer_07_score,',
'      answer_08_score,',
'      answer_09_score,',
'      answer_10_score,',
'      answer_11_score,',
'      answer_12_score,',
'      q.correct_answer,',
'      q.use_custom_answers_yn,',
'      p.score_type,',
'      q.enable_score_yn q_enable_score,',
'      p.enable_score_yn p_enable_score',
'  from EBA_QPOLL_QUESTIONS q,',
'       EBA_QPOLL_CANNED_ANSWERS a,',
'       EBA_QPOLL_POLLS p',
'  where q.poll_id = p.id and',
'       q.question_type = a.code(+) and',
'       p.id = :POLL_ID and',
'       q.id = :P68_QUESTION_ID',
'  order by display_sequence, q.id',
') loop',
'',
'if    c2.answer_12 is not null then l_num_answers := 12; ',
'elsif c2.answer_11 is not null then l_num_answers := 11;',
'elsif c2.answer_10 is not null then l_num_answers := 10; ',
'elsif c2.answer_09 is not null then l_num_answers := 9; ',
'elsif c2.answer_08 is not null then l_num_answers := 8; ',
'elsif c2.answer_07 is not null then l_num_answers := 7; ',
'elsif c2.answer_06 is not null then l_num_answers := 6; ',
'elsif c2.answer_05 is not null then l_num_answers := 5; ',
'elsif c2.answer_04 is not null then l_num_answers := 4; ',
'elsif c2.answer_03 is not null then l_num_answers := 3; ',
'elsif c2.answer_02 is not null then l_num_answers := 2; ',
'else l_num_answers := 1; ',
'end if;',
'',
'sys.htp.p(''<div class="lp-Question">'');',
'sys.htp.p(''<p class="lp-Question-questionText"><strong>Q''||apex_escape.html(:P68_QUESTION_NBR)||'': ''||apex_escape.html(c2.question));',
'',
'-- this needs to be changed to something better',
'if c2.mandatory_yn = ''Y'' then ',
'   sys.htp.p('' *'');',
'end if;',
'',
'sys.htp.prn(''</strong></p>'');',
'',
'for c3 in (',
'   select image_height, image_width',
'     from eba_qpoll_questions',
'    where id = c2.question_id',
'      and image_filename is not null',
') loop',
'   sys.htp.p(''<p><img src="''||apex_util.get_blob_file_src(''P18_IMAGE_BLOB'',c2.question_id)||''"'');',
'   if c3.image_height is not null then',
'      sys.htp.p('' height="''|| apex_escape.html(c3.image_height) ||''"'');',
'   end if;',
'   if c3.image_width is not null then',
'      sys.htp.p('' width="''|| apex_escape.html(c3.image_width) ||''"'');',
'   end if;',
'   sys.htp.p('' /></p>'');',
'end loop;',
'',
'-- if quiz, show average per question',
'if :POLL_OR_QUIZ = ''Q'' then',
'   for c4 in (',
'      select count(*) total_cnt, sum(decode(d.answer_correct_yn,''Y'',1,0)) total_right',
'        from eba_qpoll_result_details d,',
'             eba_qpoll_results r',
'       where d.question_id = :P68_QUESTION_ID',
'         and r.id = d.result_id',
'         and r.poll_id = :POLL_ID',
'   ) loop',
'      sys.htp.p(''<p>Average Score: ''|| round(((c4.total_right/c4.total_cnt)*100),1) || '' %</p>'');',
'   end loop;',
'end if;',
'',
'-- if scored poll, show average/cumulative per question',
'if c2.score_type = ''A'' and c2.p_enable_score = ''Y'' and c2.q_enable_score = ''Y'' then',
'   for c4 in (',
'      select round(avg(d.score),1) avg_score',
'        from eba_qpoll_result_details d,',
'             eba_qpoll_results r',
'       where d.question_id = c2.question_id',
'         and r.id = d.result_id',
'         and r.poll_id = :POLL_ID',
'         and d.score is not null',
'   ) loop',
'      sys.htp.p(''<p>Average Score: ''|| c4.avg_score || ''</p>'');',
'   end loop;',
'elsif c2.score_type = ''C'' and c2.p_enable_score = ''Y'' and c2.q_enable_score = ''Y'' then',
'   for c4 in (',
'      select round(sum(d.score),1) sum_score',
'        from eba_qpoll_result_details d,',
'             eba_qpoll_results r',
'       where d.question_id = c2.question_id',
'         and r.id = d.result_id',
'         and r.poll_id = :POLL_ID',
'         and d.score is not null',
'   ) loop',
'      sys.htp.p(''<p>Cumulative Score: ''|| c4.sum_score || ''</p>'');',
'   end loop;',
'end if;',
'',
'-- if quiz and textarea, show correct answer',
'if :POLL_OR_QUIZ = ''Q'' and c2.QUESTION_TYPE in (''TEXT'',''TEXTAREA'') then',
'      sys.htp.p(''<p>Correct Answer: ''|| apex_escape.html(c2.correct_answer) || ''</p>'');',
'end if;',
'',
'-- if optional, show number that answered',
'if c2.mandatory_yn = ''N'' and c2.cnt_answers < l_respondents then',
'   sys.htp.p(''<p>'' || c2.cnt_answers || '' out of '' || l_respondents || '' answered this question.</p>'');',
'end if;',
'',
'--',
'-- query answer responses ',
'--',
'-- removed textarea, should only include detailed report',
'if c2.QUESTION_TYPE in (''TEXT'') then ',
'    --',
'    -- show each answer',
'    --',
'    sys.htp.p(''<ul class="a-TextResponse">'');',
'    for c3 in (',
'    select ',
'         d.id, ',
'         d.QUESTION, ',
'         d.display_sequence, ',
'         d.ANSWER_01 answer,',
'         r.apex_user,',
'         r.created',
'    from EBA_QPOLL_RESULT_DETAILS d, ',
'         EBA_QPOLL_RESULTS r',
'    where d.result_id = r.id and ',
'          d.question_id = c2.question_id and',
'          r.poll_id = :POLL_ID and',
'          d.answer_01 is not null and',
'          nvl(r.is_valid_yn,''Y'') = ''Y''',
'    order by r.created, r.apex_user',
'    ) loop',
'      sys.htp.p(''<li>'');',
'      if lower(trim(c3.answer)) = lower(c2.correct_answer) then',
'         sys.htp.p(''<span class="fa fa-check"></span> '');',
'      end if;',
'      sys.htp.p(apex_escape.html(c3.answer));',
'      sys.htp.p(''</li>'');',
'    end loop; -- c3',
'    sys.htp.p(''</ul>'');',
'',
'elsif c2.QUESTION_TYPE = ''STACK'' then',
'    l_a_count := 0;',
'    for z in 1..12 loop l_answers(z) := ''0''; end loop;',
'',
'    for c3 in (',
'	    select d.ANSWER_01 answer',
'          from EBA_QPOLL_RESULT_DETAILS d, EBA_QPOLL_RESULTS r',
'         where d.result_id = r.id and ',
'               d.question_id = c2.question_id and',
'               r.poll_id = :POLL_ID and',
'               d.answer_01 is not null and',
'               nvl(r.is_valid_yn,''Y'') = ''Y''',
'         order by r.created, r.apex_user',
'    ) loop',
'        l_a_count := l_a_count + 1;',
'        if not regexp_like(replace(c3.answer,'','',''0''),''[0-9]'') then',
'           sys.htp.p(''BAD DATA AS STACK RANK RESULT: '' || apex_escape.html(c3.answer) ||''<br/>'');',
'        else ',
'           l_responses := APEX_UTIL.STRING_TO_TABLE(c3.answer,'','');',
'           m := l_responses.count;',
'           FOR z IN 1..m LOOP',
'               x := (l_num_answers - z);',
'               x := x * x;',
'               y := to_number(l_responses(z));',
'               l_answers(y) := to_char(to_number(l_answers(y)) + x);',
'               -- sys.htp.p(''<br>Debug: Rank order=''||z||'', points=''||x||'', Question#=''||y||'', l_answers(y)=''||l_answers(y)||'', c3.answer=''||c3.answer);',
'           END LOOP;',
'        end if;',
'    end loop;',
'    t := 0;',
'    for z in 1..12 loop if to_number(l_answers(z)) > t then t := to_number(l_answers(z)); end if; end loop;',
'    if t != 0 then for z in 1..12 loop l_answers(z) := trunc(100 * (to_number(l_answers(z)) / t)); end loop; end if;',
'    sys.htp.prn(''<ul class="a-BarChart a-BarChart--classic">'');',
'    m := l_num_answers;',
'    if m > 0 then paint_stack( 1,l_answers( 1),c2.answer_01); end if;',
'    if m > 1 then paint_stack( 2,l_answers( 2),c2.answer_02); end if;',
'    if m > 2 then paint_stack( 3,l_answers( 3),c2.answer_03); end if;',
'    if m > 3 then paint_stack( 4,l_answers( 4),c2.answer_04); end if;',
'    if m > 4 then paint_stack( 5,l_answers( 5),c2.answer_05); end if;',
'    if m > 5 then paint_stack( 6,l_answers( 6),c2.answer_06); end if;',
'    if m > 6 then paint_stack( 7,l_answers( 7),c2.answer_07); end if;',
'    if m > 7 then paint_stack( 8,l_answers( 8),c2.answer_08); end if;',
'    if m > 8 then paint_stack( 9,l_answers( 9),c2.answer_09); end if;',
'    if m > 9 then paint_stack(10,l_answers(10),c2.answer_10); end if;',
'    if m >10 then paint_stack(11,l_answers(11),c2.answer_11); end if;',
'    if m >11 then paint_stack(12,l_answers(12),c2.answer_12); end if;',
'    sys.htp.prn(''</ul>'');',
'',
'    sys.htp.p(''<h3 class="a-BarChart-label">Point allocation by rank: '');',
'    for j in 1..l_num_answers loop',
'       if j > 1 then sys.htp.prn('', ''); end if;',
'       sys.htp.prn(to_char(j)||'' = ''||to_char((l_num_answers - j)*(l_num_answers - j)));',
'    end loop;',
'    sys.htp.p(''</h3>'');',
'    sys.htp.prn(''</div>'');',
'',
'',
'',
'elsif c2.QUESTION_TYPE = ''ALLOCATION'' then',
'    l_a_count := 0;',
'    for z in 1..12 loop l_answers(z) := ''0''; end loop;',
'    for c3 in (',
'	    select d.ANSWER_01 answer',
'    from EBA_QPOLL_RESULT_DETAILS d, ',
'         EBA_QPOLL_RESULTS r',
'    where d.result_id = r.id and ',
'          d.question_id = c2.question_id and',
'          r.poll_id = :POLL_ID and',
'          d.answer_01 is not null and',
'          nvl(r.is_valid_yn,''Y'') = ''Y''',
'    order by r.created, r.apex_user) loop',
'        l_a_count := l_a_count + 1;',
'        l_responses := APEX_UTIL.STRING_TO_TABLE(c3.answer,'','');',
'        m := l_responses.count;',
'        FOR z IN 1..m LOOP',
'            y := to_number(l_responses(z));',
'            l_answers(z) := to_number(NVL(l_answers(z),0)) + y;',
'        END LOOP;',
'    end loop;',
'    for z in 1..m loop if to_number(l_answers(z)) > 0 then l_answers(z) := trunc(to_number(l_answers(z)/l_a_count)); end if; end loop;',
'',
'    sys.htp.prn(''<ul class="a-BarChart a-BarChart--classic">'');',
'    if m > 0 then paint_stack( 1,l_answers( 1),c2.answer_01); end if;',
'    if m > 1 then paint_stack( 2,l_answers( 2),c2.answer_02); end if;',
'    if m > 2 then paint_stack( 3,l_answers( 3),c2.answer_03); end if;',
'    if m > 3 then paint_stack( 4,l_answers( 4),c2.answer_04); end if;',
'    if m > 4 then paint_stack( 5,l_answers( 5),c2.answer_05); end if;',
'    if m > 5 then paint_stack( 6,l_answers( 6),c2.answer_06); end if;',
'    if m > 6 then paint_stack( 7,l_answers( 7),c2.answer_07); end if;',
'    if m > 7 then paint_stack( 8,l_answers( 8),c2.answer_08); end if;',
'    if m > 8 then paint_stack( 9,l_answers( 9),c2.answer_09); end if;',
'    if m > 9 then paint_stack(10,l_answers(10),c2.answer_10); end if;',
'    if m >10 then paint_stack(11,l_answers(11),c2.answer_11); end if;',
'    if m >11 then paint_stack(12,l_answers(12),c2.answer_12); end if;',
'    sys.htp.prn(''</ul>'');',
'    sys.htp.prn(''</div>'');',
'',
'elsif c2.QUESTION_TYPE != ''TEXTAREA'' then',
'    --',
'    -- show chart of aggregated answers',
'    --',
'    a := 0;',
'    l_max := 0;',
'    for c3 in (',
'    select answer, count(*) c',
'    from ',
'    (',
'    select  d.ANSWER_01 answer',
'    from EBA_QPOLL_RESULT_DETAILS d,  EBA_QPOLL_RESULTS r',
'    where d.result_id = r.id and d.question_id = c2.question_id and',
'          r.poll_id = :POLL_ID and d.answer_01 is not null and',
'          nvl(r.is_valid_yn,''Y'') = ''Y''',
'    union all',
'    select  d.ANSWER_02 answer',
'    from EBA_QPOLL_RESULT_DETAILS d, EBA_QPOLL_RESULTS r',
'    where d.result_id = r.id and d.question_id = c2.question_id and',
'          r.poll_id = :POLL_ID and d.answer_02 is not null and',
'          nvl(r.is_valid_yn,''Y'') = ''Y''',
'    union all',
'    select  d.ANSWER_03 answer',
'    from EBA_QPOLL_RESULT_DETAILS d, EBA_QPOLL_RESULTS r',
'    where d.result_id = r.id and d.question_id = c2.question_id and',
'          r.poll_id = :POLL_ID and d.answer_03 is not null and',
'          nvl(r.is_valid_yn,''Y'') = ''Y''',
'    union all',
'    select  d.ANSWER_04 answer',
'    from EBA_QPOLL_RESULT_DETAILS d, EBA_QPOLL_RESULTS r',
'    where d.result_id = r.id and d.question_id = c2.question_id and',
'          r.poll_id = :POLL_ID and d.answer_04 is not null and',
'          nvl(r.is_valid_yn,''Y'') = ''Y''',
'    union all',
'    select  d.ANSWER_05 answer',
'    from EBA_QPOLL_RESULT_DETAILS d, EBA_QPOLL_RESULTS r',
'    where d.result_id = r.id and d.question_id = c2.question_id and',
'          r.poll_id = :POLL_ID and d.answer_05 is not null and',
'          nvl(r.is_valid_yn,''Y'') = ''Y''',
'    union all',
'    select  d.ANSWER_06 answer',
'    from EBA_QPOLL_RESULT_DETAILS d, EBA_QPOLL_RESULTS r',
'    where d.result_id = r.id and d.question_id = c2.question_id and',
'          r.poll_id = :POLL_ID and d.answer_06 is not null and',
'          nvl(r.is_valid_yn,''Y'') = ''Y''',
'    union all',
'    select  d.ANSWER_07 answer',
'    from EBA_QPOLL_RESULT_DETAILS d, EBA_QPOLL_RESULTS r',
'    where d.result_id = r.id and d.question_id = c2.question_id and',
'          r.poll_id = :POLL_ID and d.answer_07 is not null and',
'          nvl(r.is_valid_yn,''Y'') = ''Y''',
'    union all',
'    select  d.ANSWER_08 answer',
'    from EBA_QPOLL_RESULT_DETAILS d, EBA_QPOLL_RESULTS r',
'    where d.result_id = r.id and d.question_id = c2.question_id and',
'          r.poll_id = :POLL_ID and d.answer_08 is not null and',
'          nvl(r.is_valid_yn,''Y'') = ''Y''',
'    union all',
'    select  d.ANSWER_09 answer',
'    from EBA_QPOLL_RESULT_DETAILS d, EBA_QPOLL_RESULTS r',
'    where d.result_id = r.id and d.question_id = c2.question_id and',
'          r.poll_id = :POLL_ID and d.answer_09 is not null and',
'          nvl(r.is_valid_yn,''Y'') = ''Y''',
'    union all',
'    select  d.ANSWER_10 answer',
'    from EBA_QPOLL_RESULT_DETAILS d, EBA_QPOLL_RESULTS r',
'    where d.result_id = r.id and d.question_id = c2.question_id and',
'          r.poll_id = :POLL_ID and d.answer_10 is not null and',
'          nvl(r.is_valid_yn,''Y'') = ''Y''',
'    union all',
'    select  d.ANSWER_11 answer',
'    from EBA_QPOLL_RESULT_DETAILS d, EBA_QPOLL_RESULTS r',
'    where d.result_id = r.id and d.question_id = c2.question_id and',
'          r.poll_id = :POLL_ID and d.answer_11 is not null and',
'          nvl(r.is_valid_yn,''Y'') = ''Y''',
'    union all',
'    select  d.ANSWER_12 answer',
'    from EBA_QPOLL_RESULT_DETAILS d, EBA_QPOLL_RESULTS r',
'    where d.result_id = r.id and d.question_id = c2.question_id and',
'          r.poll_id = :POLL_ID and d.answer_12 is not null and',
'          nvl(r.is_valid_yn,''Y'') = ''Y''',
'    ) x',
'    group by answer',
'    order by 2 desc',
'    ) loop',
'        a := a + 1;',
'        l_label(a) := c3.answer;',
'        l_count(a) := c3.c;',
'        if c3.c > l_max then ',
'           l_max := c3.c; ',
'        end if;',
'    end loop; ',
'   ',
'    sys.htp.p(''<ul class="a-BarChart a-BarChart--classic">'');',
'',
'    l_answer(1) := c2.answer_01;',
'    l_answer(2) := c2.answer_02;',
'    l_answer(3) := c2.answer_03;',
'    l_answer(4) := c2.answer_04;',
'    l_answer(5) := c2.answer_05;',
'    l_answer(6) := c2.answer_06;',
'    l_answer(7) := c2.answer_07;',
'    l_answer(8) := c2.answer_08;',
'    l_answer(9) := c2.answer_09;',
'    l_answer(10) := c2.answer_10;',
'    l_answer(11) := c2.answer_11;',
'    l_answer(12) := c2.answer_12;',
'',
'    l_answer_score(1) := c2.answer_01_score;',
'    l_answer_score(2) := c2.answer_02_score;',
'    l_answer_score(3) := c2.answer_03_score;',
'    l_answer_score(4) := c2.answer_04_score;',
'    l_answer_score(5) := c2.answer_05_score;',
'    l_answer_score(6) := c2.answer_06_score;',
'    l_answer_score(7) := c2.answer_07_score;',
'    l_answer_score(8) := c2.answer_08_score;',
'    l_answer_score(9) := c2.answer_09_score;',
'    l_answer_score(10) := c2.answer_10_score;',
'    l_answer_score(11) := c2.answer_11_score;',
'    l_answer_score(12) := c2.answer_12_score;',
'    ',
'    for m in 1..12 loop',
'        if l_answer(m) is null then exit; end if;',
'        l_found := false;',
'        for j in 1..a loop',
'            if l_answer(m) = l_label(j) then',
'               if :POLL_OR_QUIZ = ''Q'' then',
'                  l_correct_answer_yn := ''N'';',
'                  if c2.question_type = ''CHECKBOX'' then',
'                     if instr(c2.correct_answer, ',
'                        substr(c2.correct_answer,1,1)||l_label(j)||substr(c2.correct_answer,1,1)) > 0 then',
'                        l_correct_answer_yn := ''Y'';',
'                     end if;',
'                  elsif c2.use_custom_answers_yn = ''Y'' then',
'                     if lower(l_label(j)) = lower(c2.correct_answer) then',
'                        l_correct_answer_yn := ''Y'';',
'                     end if;',
'                  else',
'                     if l_label(j) = c2.correct_answer then',
'                        l_correct_answer_yn := ''Y'';',
'                     end if;',
'                  end if;',
'                end if;',
'                paint_answer (',
'                   p_count => l_count(j), ',
'                   p_pct   => l_pct2, ',
'                   p_label => l_label(j) || case when c2.score_type in (''A'',''C'') and c2.p_enable_score = ''Y'' and',
'                                             c2.q_enable_score = ''Y'' then '' (score:''||l_answer_score(m)||'')'' end,',
'                   p_correct_answer => l_correct_answer_yn );',
'                l_found := true;',
'                exit;',
'            end if;',
'        end loop; ',
'        if not l_found then',
'           if :POLL_OR_QUIZ = ''Q'' then',
'              l_correct_answer_yn := ''N'';',
'              if c2.question_type = ''CHECKBOX'' then',
'                 if instr(c2.correct_answer, ',
'                    substr(c2.correct_answer,1,1)||l_answer(m)||substr(c2.correct_answer,1,1)) > 0 then',
'                    l_correct_answer_yn := ''Y'';',
'                 end if;',
'              elsif c2.use_custom_answers_yn = ''Y'' then',
'                 if lower(l_answer(m)) = lower(c2.correct_answer) then',
'                    l_correct_answer_yn := ''Y'';',
'                 end if;',
'              else',
'                  if l_answer(m) = c2.correct_answer then',
'                     l_correct_answer_yn := ''Y'';',
'                  end if;',
'              end if;',
'            end if;',
'            paint_answer (',
'              p_count => 0, ',
'              p_pct   => 0, ',
'              p_label => l_answer(m) || case when c2.score_type in (''A'',''C'') and c2.p_enable_score = ''Y'' and',
'                                        c2.q_enable_score = ''Y'' then '' (score:''||l_answer_score(m)||'')'' end,',
'              p_correct_answer => l_correct_answer_yn );',
'        end if;',
'    end loop;',
'',
'    sys.htp.p(''</div>'');',
'end if;',
'',
'if c = 20 then',
'   exit;',
'end if;',
'',
'end loop; -- c2',
'',
'end if;',
'exception when others then ',
'sys.htp.p(''unexpected error ''||apex_escape.html(sqlerrm));',
'end;'))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.component_end;
end;
/
begin
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>110
,p_default_id_offset=>101599614921830918
,p_default_owner=>'MISO'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(14093460304837834219)
,p_plug_name=>'hide nobody'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_display_sequence=>10
,p_plug_new_grid_column=>false
,p_plug_display_point=>'BODY'
,p_plug_source=>'<style>.userBlock{display: none !important} .logoBarNav {padding-top: 8px;visibility: hidden;}</style>'
,p_translate_title=>'N'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'FUNCTION_BODY'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if apex_authentication.is_authenticated then',
'   return false;',
'else',
'   return true;',
'end if;'))
,p_plug_display_when_cond2=>'PLSQL'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(15049019955061116450)
,p_plug_name=>'Region Display Selector'
,p_plug_display_sequence=>40
,p_plug_display_point=>'BODY'
,p_plug_source_type=>'NATIVE_DISPLAY_SELECTOR'
,p_attribute_01=>'STANDARD'
,p_attribute_02=>'Y'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(14021688990730475681)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(14021610888817789327)
,p_button_name=>'REFRESH_RESULTS'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft:t-Button--gapRight'
,p_button_template_id=>wwv_flow_api.id(14690191013111251220)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Refresh Results'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_icon_css_classes=>'fa-refresh'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(14104550692698018118)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(14021610888817789327)
,p_button_name=>'NEXT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--pillEnd'
,p_button_template_id=>wwv_flow_api.id(14690191013111251220)
,p_button_image_alt=>'Next'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:68:&SESSION.::&DEBUG.:68,RP:P68_QUESTION_ID:&P68_NEXT_QID.'
,p_button_condition=>'P68_NEXT_QID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'fa-chevron-right'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(28309158193532341187)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_api.id(14021610888817789327)
,p_button_name=>'NEXT_DISABLED'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--pillEnd'
,p_button_template_id=>wwv_flow_api.id(14690191013111251220)
,p_button_image_alt=>'Next'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'P68_NEXT_QID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_button_css_classes=>'is-disabled'
,p_icon_css_classes=>'fa-chevron-right'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(14104545900260916201)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(14021610888817789327)
,p_button_name=>'PREVIOUS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft:t-Button--pillStart'
,p_button_template_id=>wwv_flow_api.id(14690191013111251220)
,p_button_image_alt=>'Previous'
,p_button_position=>'REGION_TEMPLATE_PREVIOUS'
,p_button_redirect_url=>'f?p=&APP_ID.:68:&SESSION.::&DEBUG.:68,RP:P68_QUESTION_ID:&P68_PREV_QID.'
,p_button_condition=>'P68_PREV_QID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'fa-chevron-left'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(28309158221257341188)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(14021610888817789327)
,p_button_name=>'PREVIOUS_DISABLED'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft:t-Button--pillStart'
,p_button_template_id=>wwv_flow_api.id(14690191013111251220)
,p_button_image_alt=>'Previous'
,p_button_position=>'REGION_TEMPLATE_PREVIOUS'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'P68_PREV_QID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_button_css_classes=>'is-disabled'
,p_icon_css_classes=>'fa-chevron-left'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14021618604242290926)
,p_name=>'P68_QUESTION_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(14021618087534286959)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14104545006179896872)
,p_name=>'P68_PREV_QID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(14021618087534286959)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14104547690615949718)
,p_name=>'P68_NEXT_QID'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(14021618087534286959)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14104552581040060520)
,p_name=>'P68_QUESTION_NBR'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(14021618087534286959)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(28532401345992964488)
,p_name=>'P68_ANONYMOUS_YN'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(14021618087534286959)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select anonymous_yn',
'  from eba_qpoll_polls',
' where id = :POLL_ID'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(14104547102907943964)
,p_computation_sequence=>10
,p_computation_item=>'P68_PREV_QID'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'FUNCTION_BODY'
,p_computation_language=>'PLSQL'
,p_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'   c           number := 0;',
'   l_prev_qid  number;',
'begin',
'',
'for c1 in (',
'  select ID question_id',
'  from EBA_QPOLL_QUESTIONS',
'  where POLL_ID = :POLL_ID',
'  order by display_sequence, id',
') loop',
'',
'   c := c + 1;',
'',
'   if c1.question_id = :P68_QUESTION_ID then',
'      :P68_QUESTION_NBR := c;',
'      return l_prev_qid;',
'   end if;',
'',
'   l_prev_qid := c1.question_id;',
'',
'end loop;',
'',
'end;'))
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(14104547791088951367)
,p_computation_sequence=>20
,p_computation_item=>'P68_NEXT_QID'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'FUNCTION_BODY'
,p_computation_language=>'PLSQL'
,p_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'   l_next_one  varchar2(1) := ''N'';',
'begin',
'',
'for c1 in (',
'  select ID question_id',
'  from EBA_QPOLL_QUESTIONS',
'  where poll_id = :POLL_ID',
'  order by display_sequence, id',
') loop',
'',
'   if l_next_one = ''Y'' then',
'      return c1.question_id;',
'   end if;',
'',
'   if c1.question_id = :P68_QUESTION_ID',
'      then l_next_one := ''Y'';',
'   end if;',
'',
'end loop;',
'',
'end;'))
);
wwv_flow_api.component_end;
end;
/
