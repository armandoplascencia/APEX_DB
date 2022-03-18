prompt --application/pages/page_00082
begin
--   Manifest
--     PAGE: 00082
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
 p_id=>82
,p_user_interface_id=>wwv_flow_api.id(14434115216807266717)
,p_name=>'Delete Test Data'
,p_alias=>'DELETE-TEST-DATA'
,p_page_mode=>'MODAL'
,p_step_title=>'Delete Test Data'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(14008957981820441125)
,p_step_template=>wwv_flow_api.id(14690159074482251121)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(14054680584521521322)
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'ALLAN'
,p_last_upd_yyyymmddhh24miss=>'20210301100151'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(8327701078382114736)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(14690162135548251137)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(14054677894444502929)
,p_plug_name=>'Delete Test Data'
,p_icon_css_classes=>'fa-trash-o'
,p_region_template_options=>'#DEFAULT#:t-Alert--wizard:t-Alert--customIcons:t-Alert--info:t-Alert--removeHeading js-removeLandmark'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(14690160537466251126)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_source=>'<p>Please confirm you want to delete all data submitted to this poll during the <strong>Testing</strong> phase.</p>'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
,p_plug_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'<p>Please confirm you want to delete the test data from this poll.  Test data is all data submitted while the poll was in the <strong>Testing</strong> phase.</p>'))
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(14054678097404502930)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(8327701078382114736)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(14690191414518251222)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:&LAST_VIEW.:&SESSION.::&DEBUG.:::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(14054678309875502931)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(8327701078382114736)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(14690191414518251222)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Delete Test Data'
,p_button_position=>'REGION_TEMPLATE_NEXT'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(356231378439239836)
,p_branch_name=>'to refresh entire poll page'
,p_branch_action=>'f?p=&APP_ID.:&LAST_VIEW.:&SESSION.::&DEBUG.:RP::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(14054678981127502952)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'delete test data'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'eba_qpoll.remove_preactive_results (',
'    p_poll_id => :POLL_ID);'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(14054678309875502931)
,p_process_success_message=>'Test data deleted.'
);
wwv_flow_api.component_end;
end;
/
