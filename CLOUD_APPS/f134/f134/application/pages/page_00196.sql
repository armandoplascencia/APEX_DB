prompt --application/pages/page_00196
begin
--   Manifest
--     PAGE: 00196
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>134
,p_default_id_offset=>172493832712964115
,p_default_owner=>'MISO'
);
wwv_flow_api.create_page(
 p_id=>196
,p_user_interface_id=>wwv_flow_api.id(5783577205373975152)
,p_name=>'Email Project Details'
,p_page_mode=>'MODAL'
,p_step_title=>'Email Project Details'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(5956243783292594674)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(7306165779537991444)
,p_required_patch=>wwv_flow_api.id(15873378907956721107)
,p_dialog_chained=>'N'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Email a single project details to all of it''s project members or email project details to all project members for all projects.</p>',
'<p><strong>Note:</strong> <em>This tool does not respect an end-user''s "Project Details Schedule" email preference setting (unless it was never set or set to "Never (Opted-Out)", these users will not receive a project details email). If a user''s "Pro'
||'ject Details Schedule" email preference setting is set to any value, other than "No preference set" or "Never (Opt-Out)", they will receive project details emails as soon as you click the <strong>Email</strong> button (above).</em></p>'))
,p_last_upd_yyyymmddhh24miss=>'20190906064912'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(525985733529977562)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(6781104860657890779)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(16136419011290211641)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(6781117976757890807)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(8972392840601050532)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(6781135716305890867)
,p_plug_display_condition_type=>'NEVER'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(16136419325958211642)
,p_plug_name=>'Project Details Email Reminder'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(2102163296972548821)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(16136420877644211654)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(525985733529977562)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(6781135529450890864)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(16136421258111211656)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(525985733529977562)
,p_button_name=>'EMAIL'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--gapLeft'
,p_button_template_id=>wwv_flow_api.id(6781135529450890864)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Email'
,p_button_position=>'REGION_TEMPLATE_CREATE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(16136434352882211664)
,p_branch_name=>'Back to Last View'
,p_branch_action=>'f?p=&APP_ID.:&LAST_VIEW.:&SESSION.::&DEBUG.:RP::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(16136419782950211643)
,p_name=>'P196_SUMMARY_TARGET_TYPE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(16136419325958211642)
,p_item_default=>'PROJECT'
,p_prompt=>'Email Scope'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC:All Projects;ALL,Single Project;PROJECT'
,p_field_template=>wwv_flow_api.id(748281375605960061)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--radioButtonGroup'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'2'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(16136420199921211646)
,p_name=>'P196_PROJECT_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(16136419325958211642)
,p_prompt=>'Project'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'PROJECTS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select project d, id r',
'from eba_proj_status',
'order by upper(project)'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select -'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(748281375605960061)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(16136421797628211657)
,p_validation_name=>'P196_PROJECT_ID Not Null'
,p_validation_sequence=>10
,p_validation=>'P196_PROJECT_ID'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'You must select a project.'
,p_validation_condition=>'P196_SUMMARY_TARGET_TYPE'
,p_validation_condition2=>'PROJECT'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_when_button_pressed=>wwv_flow_api.id(16136421258111211656)
,p_associated_item=>wwv_flow_api.id(16136420199921211646)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(16136422829273211660)
,p_name=>'hide show all projects'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P196_SUMMARY_TARGET_TYPE'
,p_condition_element=>'P196_SUMMARY_TARGET_TYPE'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'PROJECT'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(17060305274690448265)
,p_event_id=>wwv_flow_api.id(16136422829273211660)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P196_SUMMARY_TARGET_TYPE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(17060305319942448266)
,p_event_id=>wwv_flow_api.id(16136422829273211660)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P196_SUMMARY_TARGET_TYPE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(16136423350430211662)
,p_event_id=>wwv_flow_api.id(16136422829273211660)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P196_PROJECT_ID'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(16136433831358211663)
,p_event_id=>wwv_flow_api.id(16136422829273211660)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P196_PROJECT_ID'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(525985881063977563)
,p_name=>'CNX'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(16136420877644211654)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(525985948651977564)
,p_event_id=>wwv_flow_api.id(525985881063977563)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(16136422046521211658)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Send Email to All Projects'
,p_process_sql_clob=>'eba_proj_stat_email.send_summary_emails(p_app_id => :APP_ID, p_method => ''ON_DEMAND'');'
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'#SQLERRM#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(16136421258111211656)
,p_process_when_type=>'NEVER'
,p_process_success_message=>'Emails sent successfully.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(16136422468641211659)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Send Email to Selected Project'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'eba_proj_stat_email.send_summary_emails(',
'    p_app_id     => :APP_ID,',
'    p_project_id => to_number(:P196_PROJECT_ID),',
'    p_method     => ''ON_DEMAND''',
');'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'#SQLERRM#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(16136421258111211656)
,p_process_when=>'P196_SUMMARY_TARGET_TYPE'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_process_when2=>'PROJECT'
,p_process_success_message=>'Email sent successfully.'
);
wwv_flow_api.component_end;
end;
/
