prompt --application/pages/page_00069
begin
--   Manifest
--     PAGE: 00069
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
 p_id=>69
,p_user_interface_id=>wwv_flow_api.id(14434115216807266717)
,p_name=>'Your Response'
,p_alias=>'YOUR-RESPONSE'
,p_page_mode=>'MODAL'
,p_step_title=>'Your Response'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(14008957981820441125)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(14022969497914526396)
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'ALLAN'
,p_last_upd_yyyymmddhh24miss=>'20210301100152'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(14021893004266668373)
,p_plug_name=>'Your Response'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--noBorder:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(14690171167000251156)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY_3'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-- CHANGES HERE ALSO NEED TO BE MADE ON PAGE 73',
'sys.htp.p(''<h2>''||:POLL_NAME||''</h2>'');',
'',
'for c1 in (',
'select r.id, round(r.grade,1) grade, nvl(r.is_valid_yn,''Y'') is_valid, ',
'       r.validation_errors, r.updated',
'from EBA_QPOLL_POLLS p,',
'     EBA_QPOLL_RESULTS r',
'where p.id = :POLL_ID',
'  and p.id = r.poll_id ',
'  and ( (p.anonymous_yn = ''Y'' and r.APEX_SESSION_ID = :APP_SESSION)',
'        or',
'        (p.anonymous_yn = ''N'' and r.apex_user = :APP_USER) )',
') loop',
'sys.htp.p(''<p>Submitted: ''||apex_util.get_since(c1.updated)||''</p>'');',
'',
'if :POLL_OR_QUIZ = ''Q'' then',
'   sys.htp.p(''<p>Score: ''||apex_escape.html(c1.grade)||'' %</p>'');',
'end if;',
'',
'if c1.is_valid = ''N'' then',
'   sys.htp.p(''<p>Errors with Submission: ''||apex_escape.html(c1.validation_errors)||''</p>'');',
'end if;',
'',
'for c2 in (',
'select id, QUESTION, display_sequence, ',
'     ANSWER_01, ',
'     answer_02, ',
'     answer_03, ',
'     answer_04, ',
'     answer_05,',
'     answer_correct_yn',
'from EBA_QPOLL_RESULT_DETAILS',
'where result_id = c1.id',
') loop',
'sys.htp.p(''<p>'');',
'if :POLL_OR_QUIZ = ''Q'' and c2.answer_correct_yn = ''N'' then',
'   sys.htp.p(''<img src="#IMAGE_PREFIX#menu/inline_error_16x16.gif" alt="Wrong Answer" /> '');',
'end if;',
'sys.htp.p(''Question: ''||c2.display_sequence||'': <strong>''|| apex_escape.html(c2.question)||''</strong></p>'');',
'sys.htp.p(''<p>Answer: '');',
'sys.htp.p(apex_escape.html(c2.answer_01));',
'sys.htp.p(apex_escape.html(c2.answer_02));',
'sys.htp.p(apex_escape.html(c2.answer_03));',
'sys.htp.p(apex_escape.html(c2.answer_04));',
'sys.htp.p(apex_escape.html(c2.answer_05));',
'-- need to add to 10 answers',
'sys.htp.p(''</p>'');',
'end loop;',
'',
'end loop;'))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(14021895104397677831)
,p_plug_name=>'Hidden Items'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(14690161967644251135)
,p_plug_display_sequence=>30
,p_plug_display_point=>'BODY_3'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.component_end;
end;
/
