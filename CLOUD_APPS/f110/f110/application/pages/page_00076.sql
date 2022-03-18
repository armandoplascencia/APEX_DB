prompt --application/pages/page_00076
begin
--   Manifest
--     PAGE: 00076
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
 p_id=>76
,p_user_interface_id=>wwv_flow_api.id(14434115216807266717)
,p_name=>'Copy Poll'
,p_alias=>'COPY-POLL'
,p_page_mode=>'MODAL'
,p_step_title=>'Copy Poll'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_api.id(14008957981820441125)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'ALLAN'
,p_last_upd_yyyymmddhh24miss=>'20210518153749'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(4635723566513686796)
,p_plug_name=>'Select Poll to Copy'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(14690171167000251156)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Poll details, sections and questions will all be copied into a new poll.  Invitations and responses will not be included.',
'<p/>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(20632571520280948977)
,p_button_sequence=>5
,p_button_plug_id=>wwv_flow_api.id(4635723566513686796)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(14690191414518251222)
,p_button_image_alt=>'Cancel'
,p_button_position=>'BELOW_BOX'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(4635724199330686802)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(4635723566513686796)
,p_button_name=>'Copy'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(14690191414518251222)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Copy Poll'
,p_button_position=>'BELOW_BOX'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(4635723802824686798)
,p_branch_name=>'Go To Page 100'
,p_branch_action=>'f?p=&APP_ID.:100:&SESSION.::&DEBUG.:RP,100:LPOLL_ID:&P76_NEW_POLL_ID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(4635723668972686797)
,p_name=>'P76_POLL_ID'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(4635723566513686796)
,p_prompt=>'Select Poll to Copy'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select poll_name d, id',
'  from eba_qpoll_polls',
' order by lower(poll_name)'))
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(14690190497303251212)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(4635723882990686799)
,p_name=>'P76_NEW_POLL_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(4635723566513686796)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(4635724531886686805)
,p_name=>'close'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(20632571520280948977)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(4635724584733686806)
,p_event_id=>wwv_flow_api.id(4635724531886686805)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(4635724111944686801)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Copy Poll'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'   l_new_poll_id  number;',
'   l_section_cnt  number := 0;',
'   l_section_id   number;',
'begin',
'',
'for c1 in (',
'   select *',
'     from eba_qpoll_polls',
'    where id = :P76_POLL_ID',
') loop',
'   insert into eba_qpoll_polls',
'      (poll_name, poll_details, intro_text, thank_you_text, status_id, poll_or_quiz, score_type, use_sections_yn, ',
'        image_filename, image_mimetype, image_charset, image_blob, image_height, image_width, image_last_updated,',
'        anonymous_yn, can_update_answers_yn, all_view_results_yn, enable_score_yn, invite_only_yn, ',
'        authentication_req_yn)',
'   values',
'      (''COPY OF ''|| c1.poll_name, c1.poll_details, c1.intro_text, c1.thank_you_text, 1, c1.poll_or_quiz, c1.score_type, c1.use_sections_yn,',
'        c1.image_filename, c1.image_mimetype, c1.image_charset, c1.image_blob, c1.image_height, c1.image_width, c1.image_last_updated,',
'        c1.anonymous_yn, c1.can_update_answers_yn, c1.all_view_results_yn, c1.enable_score_yn, c1.invite_only_yn, ',
'        c1.authentication_req_yn)',
'   returning id into l_new_poll_id;',
'   ',
'   select count(*)',
'     into l_section_cnt',
'     from eba_qpoll_sections',
'    where poll_id = :P76_POLL_ID;',
'    ',
'   if l_section_cnt > 0 then',
'   ',
'      for c3 in (',
'         select * from eba_qpoll_sections',
'          where poll_id = :P76_POLL_ID',
'      ) loop',
'         insert into eba_qpoll_sections',
'            (poll_id, display_sequence, title, section_text,',
'             image_filename, image_mimetype, image_charset, image_blob, image_height, image_width, image_last_updated)',
'         values',
'            (l_new_poll_id, c3.display_sequence, c3.title, c3.section_text,',
'             c3.image_filename, c3.image_mimetype, c3.image_charset, c3.image_blob, c3.image_height, c3.image_width, c3.image_last_updated)',
'         returning id into l_section_id;',
'         ',
'         for c2 in (',
'            select * ',
'              from eba_qpoll_questions',
'             where poll_id = :P76_POLL_ID',
'               and section_id = c3.id',
'         ) loop',
'            insert into eba_qpoll_questions',
'               (poll_id, section_id, display_sequence, question, question_type, mandatory_yn, publish_yn, ',
'                allow_comments_yn, use_custom_answers_yn,',
'                image_filename, image_mimetype, image_charset, image_blob, image_height, image_width, image_last_updated,',
'                answer_01, answer_02, answer_03, answer_04, answer_05, answer_06, ',
'                answer_07, answer_08, answer_09, answer_10, answer_11, answer_12,',
'                correct_answer, enable_score_yn,',
'                answer_01_score, answer_02_score, answer_03_score, answer_04_score, answer_05_score, answer_06_score, ',
'                answer_07_score, answer_08_score, answer_09_score, answer_10_score, answer_11_score, answer_12_score )',
'            values',
'               (l_new_poll_id, l_section_id, c2.display_sequence, c2.question, c2.question_type, c2.mandatory_yn, c2.publish_yn,',
'                c2.allow_comments_yn, c2.use_custom_answers_yn,',
'                c2.image_filename, c2.image_mimetype, c2.image_charset, c2.image_blob, c2.image_height, c2.image_width, c2.image_last_updated,',
'                c2.answer_01, c2.answer_02, c2.answer_03, c2.answer_04, c2.answer_05, c2.answer_06, ',
'                c2.answer_07, c2.answer_08, c2.answer_09, c2.answer_10, c2.answer_11, c2.answer_12,',
'                c2.correct_answer, c2.enable_score_yn,',
'                c2.answer_01_score, c2.answer_02_score, c2.answer_03_score, c2.answer_04_score, c2.answer_05_score, c2.answer_06_score, ',
'                c2.answer_07_score, c2.answer_08_score, c2.answer_09_score, c2.answer_10_score, c2.answer_11_score, c2.answer_12_score );',
'         end loop;',
'',
'      end loop;',
'      ',
'   else',
'   ',
'      for c2 in (',
'         select * ',
'           from eba_qpoll_questions',
'          where poll_id = :P76_POLL_ID',
'      ) loop',
'         insert into eba_qpoll_questions',
'            (poll_id, display_sequence, question, question_type, mandatory_yn, publish_yn, ',
'             allow_comments_yn, use_custom_answers_yn,',
'             image_filename, image_mimetype, image_charset, image_blob, image_height, image_width, image_last_updated,',
'             answer_01, answer_02, answer_03, answer_04, answer_05, answer_06, ',
'             answer_07, answer_08, answer_09, answer_10, answer_11, answer_12,',
'             correct_answer, enable_score_yn,',
'             answer_01_score, answer_02_score, answer_03_score, answer_04_score, answer_05_score, answer_06_score, ',
'             answer_07_score, answer_08_score, answer_09_score, answer_10_score, answer_11_score, answer_12_score )',
'         values',
'            (l_new_poll_id, c2.display_sequence, c2.question, c2.question_type, c2.mandatory_yn, c2.publish_yn,',
'             c2.allow_comments_yn, c2.use_custom_answers_yn,',
'             c2.image_filename, c2.image_mimetype, c2.image_charset, c2.image_blob, c2.image_height, c2.image_width, c2.image_last_updated,',
'             c2.answer_01, c2.answer_02, c2.answer_03, c2.answer_04, c2.answer_05, c2.answer_06, ',
'             c2.answer_07, c2.answer_08, c2.answer_09, c2.answer_10, c2.answer_11, c2.answer_12,',
'             c2.correct_answer, c2.enable_score_yn,',
'             c2.answer_01_score, c2.answer_02_score, c2.answer_03_score, c2.answer_04_score, c2.answer_05_score, c2.answer_06_score, ',
'             c2.answer_07_score, c2.answer_08_score, c2.answer_09_score, c2.answer_10_score, c2.answer_11_score, c2.answer_12_score );',
'      end loop;',
'      ',
'   end if;',
'   ',
'end loop;',
'',
'commit;',
'',
':P76_NEW_POLL_ID := l_new_poll_id;',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(4635724199330686802)
);
wwv_flow_api.component_end;
end;
/
