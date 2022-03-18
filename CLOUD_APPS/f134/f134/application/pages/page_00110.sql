prompt --application/pages/page_00110
begin
--   Manifest
--     PAGE: 00110
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
 p_id=>110
,p_user_interface_id=>wwv_flow_api.id(5783577205373975152)
,p_name=>'Application Email Preferences'
,p_page_mode=>'MODAL'
,p_step_title=>'Application Email Preferences'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_api.id(5956243783292594674)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(7306165779537991444)
,p_protection_level=>'C'
,p_help_text=>'<p>Project Details and Project Status Emails can be emailed by locating a project, navigating to the project details page and clicking the <strong>Email</strong> button in the upper right hand corner.  Use this page to set a default email message''s h'
||'eader, body and footer text. You can also define the verbosity of the Project Status Emails'' "Risks" section and the verbosity of altered due dates (show original due dates in strikethrough text when changed). You can also define whether the Mileston'
||'es region displays all Milestones or just Major Milestones.</p>'
,p_last_upd_yyyymmddhh24miss=>'20190905140820'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(525987293887977577)
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
 p_id=>wwv_flow_api.id(6084523188304935416)
,p_plug_name=>'Email From Preference'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(6781104626075890777)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(6084555405993517710)
,p_plug_name=>'items'
,p_parent_plug_id=>wwv_flow_api.id(6084523188304935416)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(6781104626075890777)
,p_plug_display_sequence=>40
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(6084526205976016228)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(6781117976757890807)
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(8972392840601050532)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(6781135716305890867)
,p_plug_display_condition_type=>'NEVER'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(6084523804393943133)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(525987293887977577)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(6781135529450890864)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(6084524004050943133)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(525987293887977577)
,p_button_name=>'APPLY_CHANGES'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--gapLeft'
,p_button_template_id=>wwv_flow_api.id(6781135529450890864)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_CREATE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(6084530885749073292)
,p_branch_name=>'done'
,p_branch_action=>'f?p=&APP_ID.:27:&SESSION.::&DEBUG.:RP,27::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(4245855300608313005)
,p_name=>'P110_PROJ_STAT_EMAIL_FROM'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(6084555405993517710)
,p_item_default=>'0'
,p_prompt=>'Project Status/Summary Emails Sent From Address'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'EMAIL_FROM_PREF_OPTS'
,p_lov=>'.'||wwv_flow_api.id(4379000415232703118)||'.'
,p_field_template=>wwv_flow_api.id(748281375605960061)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--radioButtonGroup'
,p_lov_display_extra=>'NO'
,p_help_text=>'If you select "From Requester", the automated emails will be sent from the same email address as the recipient''s email address. If you select "From Defined Project Role", you''ll be presented a drop-down select list where you would then pick whatever '
||'role you wish the automated emails to be sent from. The automated project summary and/or project status emails will then come from the first project member that matches the selected role. If nobody matches the selected role, the email will be sent fr'
||'om the same email address as the recipient''s email address.'
,p_attribute_01=>'2'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(4245855314222313006)
,p_name=>'P110_STAT_SUMM_FROM_ROLE_ID'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(6084555405993517710)
,p_prompt=>'Project Role'
,p_source=>'select replace(eba_proj_fw.get_preference_value( p_preference_name => ''PROJ_STAT_SUMM_EMAIL_FROM''),''Preference does not exist'',0) from dual'
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'PROJECT ROLES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select name as d,',
'       id as r',
'  from eba_proj_roles',
' order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select -'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(748281375605960061)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Select the project role that you want the automated project summary and/or project status emails to be sent from.'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6084533187221118173)
,p_name=>'P110_DEFAULT_MESSAGE_HDR'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(6084555405993517710)
,p_prompt=>'Default Message Header Text'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_header_text varchar2(4000);',
'begin',
'    l_header_text := eba_proj_fw.get_preference_value( p_preference_name => ''EMAIL_MSG_HEADER'' );',
'',
'    if l_header_text = ''Preference does not exist'' then',
'        l_header_text := null;',
'    end if;',
'',
'    return l_header_text;',
'end;'))
,p_source_type=>'FUNCTION_BODY'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>64
,p_cMaxlength=>4000
,p_cHeight=>4
,p_field_template=>wwv_flow_api.id(748281690398960066)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>The text supplied here is displayed at the top of <strong>ALL emails</strong> (on-demand and automated/job-driven) sent from this application. Bold, italic, and the paragraph HTML tags are supported.</p>',
'<p><strong>Sample Text:</strong><br> &lt;strong&gt;CONFIDENTIAL - COMPANY RESTRICTED&lt;/strong&gt;',
'&lt;p&gt;It is &lt;strong&gt;&lt;i>very important&lt;/i&gt;&lt;/strong&gt; that this information remain confidential to our company and that access within our company be restricted on a "need to know" basis.&lt;/p&gt;</p>'))
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(19167485050386858435)
,p_name=>'P110_RISKS_VERBOSITY'
,p_is_required=>true
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(6084555405993517710)
,p_item_default=>'TERSE'
,p_prompt=>'Risks  Verbosity'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_risks_verbosity varchar2(4000);',
'begin',
'    l_risks_verbosity := eba_proj_fw.get_preference_value( p_preference_name => ''STATUS_EML_RISKS_VERBOSITY'' );',
'',
'    if l_risks_verbosity = ''Preference does not exist'' then',
'        l_risks_verbosity := ''TERSE'';',
'    end if;',
'',
'    return l_risks_verbosity;',
'end;'))
,p_source_type=>'FUNCTION_BODY'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'RISK_VERBOSITY_IN_STATUS_EMAILS'
,p_lov=>'.'||wwv_flow_api.id(19198597233292758215)||'.'
,p_cHeight=>1
,p_tag_css_classes=>'mnw160'
,p_field_template=>wwv_flow_api.id(748281375605960061)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>A value of "Terse" yields a count of the number of past due Action Items and/or Milestones in the Project Status Email''s "Risks" section.</p>',
'<p>A value of "Verbose" yields a table listing each past due Action Item and/or Milestone, it''s original due date, and it''s current due date in the Project Status Email''s "Risks" section.</p>'))
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(19313138773564735033)
,p_name=>'P110_DEFAULT_MESSAGE_FTR'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(6084555405993517710)
,p_prompt=>'Default Message Footer Text'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_footer_text varchar2(4000);',
'begin',
'    l_footer_text := eba_proj_fw.get_preference_value( p_preference_name => ''EMAIL_MSG_FOOTER'' );',
'',
'    if l_footer_text = ''Preference does not exist'' then',
'        l_footer_text := null;',
'    end if;',
'',
'    return l_footer_text;',
'end;'))
,p_source_type=>'FUNCTION_BODY'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>64
,p_cMaxlength=>4000
,p_cHeight=>4
,p_field_template=>wwv_flow_api.id(748281690398960066)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>The text supplied here is displayed at the bottom of <strong>ALL emails</strong> (on-demand and automated/job-driven) sent from this application. Bold, italic, and the paragraph HTML tags are supported.</p>',
'<p><strong>Sample Text:</strong><br> If you have &lt;i&gt;any&lt;/i&gt; concerns please contact a project manager.</p>'))
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(19313139004388735035)
,p_name=>'P110_DEFAULT_MESSAGE_BODY'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(6084555405993517710)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Default Message Body Text'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_body_text varchar2(4000);',
'begin',
'    l_body_text := eba_proj_fw.get_preference_value( p_preference_name => ''EMAIL_MSG_BODY'' );',
'',
'    if l_body_text = ''Preference does not exist'' then',
'        l_body_text := null;',
'    end if;',
'',
'    return l_body_text;',
'end;'))
,p_source_type=>'FUNCTION_BODY'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>64
,p_cMaxlength=>4000
,p_cHeight=>4
,p_field_template=>wwv_flow_api.id(748281690398960066)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'<p>The text supplied here is used to auto-populate the body message section of on-demand emails sent from this application. These include emailing action items, status reports, project details emails and project status emails.</p>'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(19313143146056735077)
,p_name=>'P110_DUE_DATE_VERBOSITY'
,p_is_required=>true
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(6084555405993517710)
,p_item_default=>'TERSE'
,p_prompt=>'Due Date Verbosity'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_due_date_verbosity varchar2(4000);',
'begin',
'    l_due_date_verbosity := eba_proj_fw.get_preference_value( p_preference_name => ''STATUS_EML_DUE_DATE_VERBOSITY'' );',
'',
'    if l_due_date_verbosity = ''Preference does not exist'' then',
'        l_due_date_verbosity := ''TERSE'';',
'    end if;',
'',
'    return l_due_date_verbosity;',
'end;'))
,p_source_type=>'FUNCTION_BODY'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'RISK_VERBOSITY_IN_STATUS_EMAILS'
,p_lov=>'.'||wwv_flow_api.id(19198597233292758215)||'.'
,p_cHeight=>1
,p_tag_css_classes=>'mnw160'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(748281375605960061)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>A value of "Terse" yields just the current due date (even if it''s different than the original due date).</p>',
'<p>A value of "Verbose" yields the original due date in strikethrough text followed by the current due date.</p>'))
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(19850573698117020773)
,p_name=>'P110_PRJ_STATUS_PEOPLE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(6084555405993517710)
,p_item_default=>'Y'
,p_prompt=>'Show People in Project Status Email'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_show_ppl varchar2(4000);',
'begin',
'    l_show_ppl := eba_proj_fw.get_preference_value( p_preference_name => ''STATUS_EML_SHOW_PEOPLE'' );',
'',
'    if l_show_ppl = ''Preference does not exist'' then',
'        l_show_ppl := ''Y'';',
'    end if;',
'',
'    return l_show_ppl;',
'end;'))
,p_source_type=>'FUNCTION_BODY'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_YES_NO'
,p_tag_css_classes=>'mnw160'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(748281690398960066)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>A value of "Yes" yields a list of the project members and their roles in the top details section of the Project Status Email.</p>',
'<p>A value of "No" omits a list of the project members and their roles in the top details section of the Project Status Email.</p>'))
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(19974071016945191833)
,p_name=>'P110_MILESTONES_TYPE'
,p_is_required=>true
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(6084555405993517710)
,p_item_default=>'ALL'
,p_prompt=>'Milestones Type'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_ms_type varchar2(4000);',
'begin',
'    l_ms_type := eba_proj_fw.get_preference_value( p_preference_name => ''STATUS_EML_MS_TYPE'' );',
'',
'    if l_ms_type = ''Preference does not exist'' then',
'        l_ms_type := ''ALL'';',
'    end if;',
'',
'    return l_ms_type;',
'end;'))
,p_source_type=>'FUNCTION_BODY'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'PROJECT STATUS EMAIL MS OPTIONS'
,p_lov=>'.'||wwv_flow_api.id(19978238635696439646)||'.'
,p_cHeight=>1
,p_tag_css_classes=>'mnw160'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(748281375605960061)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>A value of "All Milestones" displays all open Milestones associated with the project.</p>',
'<p>A value of "Major Milestones Only" displays just the open Major Milestones associated with the project.</p>'))
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(4379004456788736264)
,p_computation_sequence=>10
,p_computation_item=>'P110_PROJ_STAT_EMAIL_FROM'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'-1'
,p_compute_when=>'replace(eba_proj_fw.get_preference_value( p_preference_name => ''PROJ_STAT_SUMM_EMAIL_FROM''),''Preference does not exist'',0) > 0'
,p_compute_when_text=>'PLSQL'
,p_compute_when_type=>'EXPRESSION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(4379004016007736260)
,p_validation_name=>'Must Provide Role ID'
,p_validation_sequence=>10
,p_validation=>'P110_STAT_SUMM_FROM_ROLE_ID'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#LABEL# must have some value.'
,p_validation_condition=>'P110_PROJ_STAT_EMAIL_FROM'
,p_validation_condition2=>'-1'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_when_button_pressed=>wwv_flow_api.id(6084524004050943133)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(4379003759283736257)
,p_name=>'Show/Hide Project Role'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P110_PROJ_STAT_EMAIL_FROM'
,p_condition_element=>'P110_PROJ_STAT_EMAIL_FROM'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'-1'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(4379003840779736258)
,p_event_id=>wwv_flow_api.id(4379003759283736257)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P110_STAT_SUMM_FROM_ROLE_ID'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(4379003962970736259)
,p_event_id=>wwv_flow_api.id(4379003759283736257)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P110_STAT_SUMM_FROM_ROLE_ID'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(525987563742977580)
,p_event_id=>wwv_flow_api.id(4379003759283736257)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P110_STAT_SUMM_FROM_ROLE_ID'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(525987394717977578)
,p_name=>'CNX'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(6084523804393943133)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(525987416729977579)
,p_event_id=>wwv_flow_api.id(525987394717977578)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(6084525305582987703)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'set email preferences'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'eba_proj_fw.set_preference_value( p_preference_name => ''EMAIL_MSG_HEADER'', p_preference_value => :P110_DEFAULT_MESSAGE_HDR );',
'eba_proj_fw.set_preference_value( p_preference_name => ''EMAIL_MSG_BODY'', p_preference_value => :P110_DEFAULT_MESSAGE_BODY );',
'begin',
'    if :P110_PROJ_STAT_EMAIL_FROM = 0 then',
'        eba_proj_fw.set_preference_value( p_preference_name => ''PROJ_STAT_SUMM_EMAIL_FROM'', p_preference_value => 0 );',
'    else',
'        eba_proj_fw.set_preference_value( p_preference_name => ''PROJ_STAT_SUMM_EMAIL_FROM'', p_preference_value => :P110_STAT_SUMM_FROM_ROLE_ID );',
'    end if;',
'end;',
'eba_proj_fw.set_preference_value( p_preference_name => ''STATUS_EML_SHOW_PEOPLE'', p_preference_value => :P110_PRJ_STATUS_PEOPLE );',
'eba_proj_fw.set_preference_value( p_preference_name => ''STATUS_EML_RISKS_VERBOSITY'', p_preference_value => :P110_RISKS_VERBOSITY );',
'eba_proj_fw.set_preference_value( p_preference_name => ''STATUS_EML_DUE_DATE_VERBOSITY'', p_preference_value => :P110_DUE_DATE_VERBOSITY );',
'eba_proj_fw.set_preference_value( p_preference_name => ''STATUS_EML_MS_TYPE'', p_preference_value => :P110_MILESTONES_TYPE );',
'eba_proj_fw.set_preference_value( p_preference_name => ''EMAIL_MSG_FOOTER'', p_preference_value => :P110_DEFAULT_MESSAGE_FTR );'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Unable to set preference.'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(6084524004050943133)
,p_process_success_message=>'Preferences saved.'
);
wwv_flow_api.component_end;
end;
/
