prompt --application/pages/page_00199
begin
--   Manifest
--     PAGE: 00199
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
 p_id=>199
,p_user_interface_id=>wwv_flow_api.id(5783577205373975152)
,p_name=>'Email Preferences'
,p_page_mode=>'MODAL'
,p_step_title=>'Email Preferences'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(5958518907406586753)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_height=>'600'
,p_protection_level=>'C'
,p_last_upd_yyyymmddhh24miss=>'20190906080732'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1897958663723419865)
,p_plug_name=>'About this page'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(6781104626075890777)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>'<p>Select the frequency in which you would prefer to receive &APPLICATION_TITLE. automated emails.<br><br></p> '
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(15466913618747804751)
,p_plug_name=>'Milestones and Action Items Emails (Past Due and Upcoming)'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(6781115417665890803)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(15466914118274804756)
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
 p_id=>wwv_flow_api.id(18916799696959277977)
,p_plug_name=>'Project Status Emails'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(6781115417665890803)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_required_patch=>wwv_flow_api.id(18632926167418630398)
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(18916799768374277978)
,p_plug_name=>'Project Details Email'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(6781115417665890803)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_required_patch=>wwv_flow_api.id(15873378907956721107)
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(15466914578378804760)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(15466914118274804756)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--gapLeft'
,p_button_template_id=>wwv_flow_api.id(6781135529450890864)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'BELOW_BOX'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(15466914229985804757)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(15466914118274804756)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(6781135529450890864)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15466913775920804752)
,p_name=>'P199_PAST_DUE_FREQ'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(15466913618747804751)
,p_use_cache_before_default=>'NO'
,p_item_default=>'DAILY'
,p_prompt=>'Past Due Milestones and Action Items Schedule'
,p_post_element_text=>'<br><em>&P199_PAST_DUE_POST_TEXT.</em>'
,p_source=>'PAST_DUE_REMINDERS_FREQ'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'EMAIL SCHEDULE OPTIONS'
,p_lov=>'.'||wwv_flow_api.id(16146676932810625263)||'.'
,p_field_template=>wwv_flow_api.id(6899231939251612225)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_required_patch=>wwv_flow_api.id(11985127837396710533)
,p_help_text=>'Select the frequency in which you would like to receive the automated past due milestone and action item emails. Emails are only sent when the database job is enabled and on the following days: &P199_WORKDAY_SCHEDULE.'
,p_attribute_01=>'1'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15466913823517804753)
,p_name=>'P199_UPCOMING_FREQ'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(15466913618747804751)
,p_use_cache_before_default=>'NO'
,p_item_default=>'WEEKLY'
,p_prompt=>'Upcoming Milestones and Action Items Schedule'
,p_post_element_text=>'<br><em>&P199_UPCOMING_POST_TEXT.</em>'
,p_source=>'UPCOMING_REMINDERS_FREQ'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'EMAIL SCHEDULE OPTIONS'
,p_lov=>'.'||wwv_flow_api.id(16146676932810625263)||'.'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(6899231939251612225)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_required_patch=>wwv_flow_api.id(11997357717598129643)
,p_help_text=>'Select the frequency in which you would like to receive the automated upcoming milestone and action item emails. Emails are only sent when the database job is enabled and on the following days: &P199_WORKDAY_SCHEDULE.'
,p_attribute_01=>'1'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15466914009159804754)
,p_name=>'P199_PROJECT_SUMMARY_FREQ'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(18916799768374277978)
,p_use_cache_before_default=>'NO'
,p_item_default=>'MONTHLY'
,p_prompt=>'Schedule'
,p_post_element_text=>'<br><em>&P199_PROJECT_SUMMARY_POST_TEXT.</em>'
,p_source=>'PROJECT_SUMMARY_FAV_FREQ'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'EMAIL SCHEDULE OPTIONS'
,p_lov=>'.'||wwv_flow_api.id(16146676932810625263)||'.'
,p_field_template=>wwv_flow_api.id(6899231939251612225)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_required_patch=>wwv_flow_api.id(15873378907956721107)
,p_help_text=>'Select the frequency in which you would like to receive the automated project details emails. Emails are only sent when the database job is enabled and on the following days: &P199_WORKDAY_SCHEDULE.'
,p_attribute_01=>'1'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(16998955807080476433)
,p_name=>'P199_WORKDAY_SCHEDULE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(15466913618747804751)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(17313139652947353064)
,p_name=>'P199_SUMMARY_SCOPE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(18916799768374277978)
,p_use_cache_before_default=>'NO'
,p_item_default=>'BOTH'
,p_prompt=>'Scope'
,p_source=>'PROJECT_SUMMARY_FAV_SCOPE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'PROJECT DETAILS SCOPE OPTIONS'
,p_lov=>'.'||wwv_flow_api.id(17578872970668459180)||'.'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(6899231939251612225)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_required_patch=>wwv_flow_api.id(15873378907956721107)
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Define the scope of the project details emails you receive. The details of these choices are listed below:</p>',
'<ul>',
'    <li><strong>All Projects</strong> - All open, accessible projects in the application.</li>',
'    <li><strong>Projects I''m Following</strong> - All open, accessible projects that you''re currently following.</li>',
'    <li><strong>Projects I''m a Member Of</strong> - All open, accessible projects where you are a member.</li>',
'    <li><strong>Projects I''m a Member Of and I''m Following</strong> - All open, accessible projects where you are a member combined with all of the open, accessible projects that you''re currently following.</li>',
'</ul>',
''))
,p_attribute_01=>'1'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(17635525143291690865)
,p_name=>'P199_PAST_DUE_JOB_STATUS'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(15466913618747804751)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_required_patch=>wwv_flow_api.id(11985127837396710533)
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(17635525229674690866)
,p_name=>'P199_UPCOMING_JOB_STATUS'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(15466913618747804751)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_required_patch=>wwv_flow_api.id(11997357717598129643)
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(17635525341133690867)
,p_name=>'P199_PROJECT_SUMMARY_JOB_STATUS'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(18916799768374277978)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_required_patch=>wwv_flow_api.id(15873378907956721107)
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(17635526043022690874)
,p_name=>'P199_PAST_DUE_POST_TEXT'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(15466913618747804751)
,p_source=>'The process that sends these emails is currently &P199_PAST_DUE_JOB_STATUS.. Please contact your application administrator to enable the sending of these emails.'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_HIDDEN'
,p_display_when=>'P199_PAST_DUE_JOB_STATUS'
,p_display_when2=>'Disabled'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_protection_level=>'S'
,p_required_patch=>wwv_flow_api.id(11985127837396710533)
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(17635526184274690875)
,p_name=>'P199_UPCOMING_POST_TEXT'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(15466913618747804751)
,p_source=>'The process that sends these emails is currently &P199_UPCOMING_JOB_STATUS.. Please contact your application administrator to enable the sending of these emails.'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_HIDDEN'
,p_display_when=>'P199_UPCOMING_JOB_STATUS'
,p_display_when2=>'Disabled'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_protection_level=>'S'
,p_required_patch=>wwv_flow_api.id(11985127837396710533)
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(17635526274458690876)
,p_name=>'P199_PROJECT_SUMMARY_POST_TEXT'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(18916799768374277978)
,p_source=>'The process that sends these emails is currently &P199_PROJECT_SUMMARY_JOB_STATUS.. Please contact your application administrator to enable the sending of these emails.'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_HIDDEN'
,p_display_when=>'P199_PROJECT_SUMMARY_JOB_STATUS'
,p_display_when2=>'Disabled'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_protection_level=>'S'
,p_required_patch=>wwv_flow_api.id(11985127837396710533)
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18405127499079962930)
,p_name=>'P199_PROJECT_STATUS_FREQ'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(18916799696959277977)
,p_use_cache_before_default=>'NO'
,p_item_default=>'MONTHLY'
,p_prompt=>'Schedule'
,p_post_element_text=>'<br><em>&P199_PROJECT_STATUS_POST_TEXT.</em>'
,p_source=>'PROJECT_STATUS_FAV_FREQ'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'EMAIL SCHEDULE OPTIONS'
,p_lov=>'.'||wwv_flow_api.id(16146676932810625263)||'.'
,p_field_template=>wwv_flow_api.id(6899231939251612225)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_required_patch=>wwv_flow_api.id(18632926167418630398)
,p_help_text=>'Select the frequency in which you would like to receive the automated project status emails. Emails are only sent when the database job is enabled and on the following days: &P199_WORKDAY_SCHEDULE.'
,p_attribute_01=>'1'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18405127546763962931)
,p_name=>'P199_STATUS_SCOPE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(18916799696959277977)
,p_use_cache_before_default=>'NO'
,p_item_default=>'BOTH'
,p_prompt=>'Scope'
,p_source=>'PROJECT_STATUS_FAV_SCOPE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'PROJECT DETAILS SCOPE OPTIONS'
,p_lov=>'.'||wwv_flow_api.id(17578872970668459180)||'.'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(6899231939251612225)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_required_patch=>wwv_flow_api.id(18632926167418630398)
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Define the scope of the project status emails you receive. The details of these choices are listed below:</p>',
'<ul>',
'    <li><strong>All Projects</strong> - All open, accessible projects in the application.</li>',
'    <li><strong>Projects I''m Following</strong> - All open, accessible projects that you''re currently following.</li>',
'    <li><strong>Projects I''m a Member Of</strong> - All open, accessible projects where you are a member.</li>',
'    <li><strong>Projects I''m a Member Of and I''m Following</strong> - All open, accessible projects where you are a member combined with all of the open, accessible projects that you''re currently following.</li>',
'</ul>',
''))
,p_attribute_01=>'1'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18405128175055962937)
,p_name=>'P199_PROJECT_STATUS_JOB_STATUS'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(18916799696959277977)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_required_patch=>wwv_flow_api.id(18632926167418630398)
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18405128307668962938)
,p_name=>'P199_PROJECT_STATUS_POST_TEXT'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(18916799696959277977)
,p_source=>'The process that sends these emails is currently &P199_PROJECT_STATUS_JOB_STATUS.. Please contact your application administrator to enable the sending of these emails.'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_HIDDEN'
,p_display_when=>'P199_PROJECT_STATUS_JOB_STATUS'
,p_display_when2=>'Disabled'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_protection_level=>'S'
,p_required_patch=>wwv_flow_api.id(18632926167418630398)
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(17635525415803690868)
,p_computation_sequence=>10
,p_computation_item=>'P199_PAST_DUE_JOB_STATUS'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'QUERY'
,p_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    case when enabled = ''TRUE'' then ''Enabled'' else ''Disabled'' end as status',
'from user_scheduler_jobs',
'where job_name = ''EBA_PROJ_EMAIL_PAST_DUE_JOB'''))
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(17635525602138690869)
,p_computation_sequence=>20
,p_computation_item=>'P199_UPCOMING_JOB_STATUS'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'QUERY'
,p_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    case when enabled = ''TRUE'' then ''Enabled'' else ''Disabled'' end as status',
'from user_scheduler_jobs',
'where job_name = ''EBA_PROJ_EMAIL_UPCOMING_JOB'''))
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(17635525691147690870)
,p_computation_sequence=>30
,p_computation_item=>'P199_PROJECT_SUMMARY_JOB_STATUS'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'QUERY'
,p_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    case when enabled = ''TRUE'' then ''Enabled'' else ''Disabled'' end as status',
'from user_scheduler_jobs',
'where job_name = ''EBA_PROJ_EMAIL_SUMMARY_JOB'''))
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(18405128437452962940)
,p_computation_sequence=>40
,p_computation_item=>'P199_PROJECT_STATUS_JOB_STATUS'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'QUERY'
,p_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    case when enabled = ''TRUE'' then ''Enabled'' else ''Disabled'' end as status',
'from user_scheduler_jobs',
'where job_name = ''EBA_PROJ_EMAIL_STATUS_JOB'''))
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(16998955876256476434)
,p_computation_sequence=>10
,p_computation_item=>'P199_WORKDAY_SCHEDULE'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'EXPRESSION'
,p_computation_language=>'PLSQL'
,p_computation=>'replace(replace(replace(replace(replace(replace(replace(replace(replace(eba_proj_fw.get_preference_value(''WORKDAYS''),'':'','',''),''1'',''Sunday''),''2'',''Monday''),''3'',''Tuesday''),''4'',''Wednesday''),''5'',''Thursday''),''6'',''Friday''),''7'',''Saturday''),'','','', '')'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(15466914367282804758)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(15466914229985804757)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(15466914509527804759)
,p_event_id=>wwv_flow_api.id(15466914367282804758)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(17313139779323353065)
,p_name=>'Show/Hide Scope'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P199_PROJECT_SUMMARY_FREQ'
,p_condition_element=>'P199_PROJECT_SUMMARY_FREQ'
,p_triggering_condition_type=>'IN_LIST'
,p_triggering_expression=>'NEVER,UNSET'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(17313140022258353068)
,p_event_id=>wwv_flow_api.id(17313139779323353065)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P199_PROJECT_SUMMARY_FREQ'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(17313140132695353069)
,p_event_id=>wwv_flow_api.id(17313139779323353065)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P199_PROJECT_SUMMARY_FREQ'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(17313139848045353066)
,p_event_id=>wwv_flow_api.id(17313139779323353065)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P199_SUMMARY_SCOPE'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(17313139944369353067)
,p_event_id=>wwv_flow_api.id(17313139779323353065)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P199_SUMMARY_SCOPE'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(18405127690209962932)
,p_name=>'Show/Hide Status Scope'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P199_PROJECT_STATUS_FREQ'
,p_condition_element=>'P199_PROJECT_STATUS_FREQ'
,p_triggering_condition_type=>'IN_LIST'
,p_triggering_expression=>'NEVER,UNSET'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(18405127943384962935)
,p_event_id=>wwv_flow_api.id(18405127690209962932)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P199_PROJECT_STATUS_FREQ'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(18405128112682962936)
,p_event_id=>wwv_flow_api.id(18405127690209962932)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P199_PROJECT_STATUS_FREQ'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(18405127720363962933)
,p_event_id=>wwv_flow_api.id(18405127690209962932)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P199_STATUS_SCOPE'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(18405127813530962934)
,p_event_id=>wwv_flow_api.id(18405127690209962932)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P199_STATUS_SCOPE'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(17060305060124448263)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Automatic Row Processing'
,p_attribute_02=>'EBA_PROJ_STATUS_USERS'
,p_attribute_03=>'CURRENT_USER_ID'
,p_attribute_04=>'ID'
,p_attribute_11=>'U'
,p_attribute_12=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(15466914668705804761)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Your email preferences were updated successfully.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(17060304996303448262)
,p_process_sequence=>30
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Automatic Row Fetch EBA_PROJ_STATUS_USERS'
,p_attribute_02=>'EBA_PROJ_STATUS_USERS'
,p_attribute_03=>'CURRENT_USER_ID'
,p_attribute_04=>'ID'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.component_end;
end;
/
