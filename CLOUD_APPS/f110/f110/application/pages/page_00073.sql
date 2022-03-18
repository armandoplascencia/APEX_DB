prompt --application/pages/page_00073
begin
--   Manifest
--     PAGE: 00073
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
 p_id=>73
,p_user_interface_id=>wwv_flow_api.id(14434115216807266717)
,p_name=>'View Response'
,p_alias=>'VIEW-RESPONSE'
,p_page_mode=>'MODAL'
,p_step_title=>'View Response'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(14008957981820441125)
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(250464227793234829)
,p_required_patch=>wwv_flow_api.id(14022779793193784422)
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'ALLAN'
,p_last_upd_yyyymmddhh24miss=>'20210518144755'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(14025210504646851656)
,p_plug_name=>'buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(14690162135548251137)
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(14025211678736875316)
,p_plug_name=>'Response'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--noBorder:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(14690171167000251156)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'sys.htp.p(''<h2>''||apex_escape.html(:P73_POLL_NAME)||''</h2>'');',
'',
'for c1 in (',
'select r.id, r.email, r.updated, round(r.grade,1) grade, p.enable_score_yn, round(r.score,1) score, p.score_type,',
'       p.anonymous_yn',
'from EBA_QPOLL_POLLS p,',
'     EBA_QPOLL_RESULTS r',
'where p.id = :POLL_ID',
'  and p.id = r.poll_id ',
'  and r.id = :P73_RESULT_ID',
') loop',
'sys.htp.p(''<p>Submitted: ''||apex_util.get_since(c1.updated)||''<br/>'');',
'sys.htp.p(''By: ''||case when c1.anonymous_yn = ''Y'' then ''anonymous'' else apex_escape.html(lower(c1.email)) end ||''</p>'');',
'',
'if :POLL_OR_QUIZ = ''Q'' then',
'   sys.htp.p(''<p>Score: ''|| c1.grade ||'' %</p>'');',
'end if;',
'',
'if c1.score_type in (''C'',''A'') and c1.enable_score_yn = ''Y'' then',
'   sys.htp.p(''<p>Score: ''|| c1.score ||''</p>'');',
'end if;',
'',
'for c2 in (',
'select id, QUESTION, display_sequence, ',
'     ANSWER_01, ',
'     answer_02, ',
'     answer_03, ',
'     answer_04, ',
'     answer_05,',
'     answer_06, ',
'     answer_07, ',
'     answer_08, ',
'     answer_09,',
'     answer_10,',
'     answer_correct_yn',
'from EBA_QPOLL_RESULT_DETAILS',
'where result_id = c1.id) loop',
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
'sys.htp.p(apex_escape.html(c2.answer_06));',
'sys.htp.p(apex_escape.html(c2.answer_07));',
'sys.htp.p(apex_escape.html(c2.answer_08));',
'sys.htp.p(apex_escape.html(c2.answer_09));',
'sys.htp.p(apex_escape.html(c2.answer_10));',
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
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(14025214500385919349)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(14025210504646851656)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(14690191414518251222)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(14025214385987917110)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(14025210504646851656)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>wwv_flow_api.id(14690191414518251222)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_required_patch=>wwv_flow_api.id(14022779793193784422)
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(14025215695020943252)
,p_branch_action=>'f?p=&APP_ID.:100:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(14025214385987917110)
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14025212591619884040)
,p_name=>'P73_RESULT_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(14025211678736875316)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14027350590349062104)
,p_name=>'P73_POLL_NAME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(14025211678736875316)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(14025213489387897319)
,p_computation_sequence=>10
,p_computation_item=>'P73_POLL_NAME'
,p_computation_point=>'AFTER_HEADER'
,p_computation_type=>'QUERY'
,p_computation=>'select poll_name from EBA_QPOLL_POLLS where id = :POLL_ID'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(356233971864239862)
,p_name=>'cancel'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(14025214500385919349)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(356234097241239863)
,p_event_id=>wwv_flow_api.id(356233971864239862)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(14027362503958784569)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Delete Response'
,p_process_sql_clob=>'delete from EBA_QPOLL_RESULTS where id = :P73_RESULT_ID;'
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'#SQLERRM#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(14025214385987917110)
,p_process_success_message=>'Response deleted.'
);
wwv_flow_api.component_end;
end;
/
