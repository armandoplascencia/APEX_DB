prompt --application/pages/page_00028
begin
--   Manifest
--     PAGE: 00028
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>112
,p_default_id_offset=>101618418936909290
,p_default_owner=>'MISO'
);
wwv_flow_api.create_page(
 p_id=>28
,p_user_interface_id=>wwv_flow_api.id(14644135011863537602)
,p_name=>'Application Settings'
,p_alias=>'APPLICATION-SETTINGS'
,p_page_mode=>'MODAL'
,p_step_title=>'Application Settings'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_api.id(14820268321661277386)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(15775842108167638827)
,p_protection_level=>'C'
,p_help_text=>'The preferences on this page are used to affect several aspects of the application. Click the item-level help icons to learn what each preference does.'
,p_last_upd_yyyymmddhh24miss=>'20200407154531'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(14837427399329752470)
,p_plug_name=>'Rename Application'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(14959340065054679123)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(14837428602197752472)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(14959340348994679125)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(14837427809453752472)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(14837428602197752472)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--gapLeft'
,p_button_template_id=>wwv_flow_api.id(14959371564035679192)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_CREATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(14837427611773752470)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(14837428602197752472)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(14959371564035679192)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_PREVIOUS'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(14837429223864752473)
,p_branch_action=>'f?p=&APP_ID.:settings:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(14837427809453752472)
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14837428004452752472)
,p_name=>'P28_APPLICATION_TITLE'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(14837427399329752470)
,p_use_cache_before_default=>'NO'
,p_item_default=>'&APP_NAME.'
,p_prompt=>'Application Name'
,p_source=>'&APPLICATION_TITLE.'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>64
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(366875711173757143)
,p_item_template_options=>'#DEFAULT#'
,p_restricted_characters=>'WEB_SAFE'
,p_help_text=>'The text entered here is used throughout the application, most notably, in the upper left-hand corner of every page. By default, the application name is "&APP_NAME.". The change will take effect immediately for the administrator making the change, bu'
||'t other users will only see the change when they get a new session (e.g. at next login).'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18104563486455643496)
,p_name=>'P28_FEEDBACK_RECIPIENTS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(14837427399329752470)
,p_prompt=>'Feedback Recipients'
,p_post_element_text=>'&nbsp;<a href="f?p=&APP_ID.:119:&APP_SESSION.">Review/Manage Feedback</a>'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if eba_cust_fw.get_preference_value(p_preference_name  => ''FEEDBACK_RECIPIENTS'') = ''Preference does not exist'' then',
'    return null;',
'else',
'    return eba_cust_fw.get_preference_value(p_preference_name  => ''FEEDBACK_RECIPIENTS'');',
'end if;'))
,p_source_type=>'FUNCTION_BODY'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>64
,p_cHeight=>4
,p_field_template=>wwv_flow_api.id(366876077082757148)
,p_item_template_options=>'#DEFAULT#'
,p_required_patch=>wwv_flow_api.id(18831429921399487739)
,p_help_text=>'<p>Provide a comma-separated list of the email addresses you would like feedback submissions emailed to. When feedback is submitted, the feedback will be emailed to the addresses in this list.</p>'
,p_encrypt_session_state_yn=>'Y'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(434366371700178371)
,p_name=>'CNX'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(14837427611773752470)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(434366395786178372)
,p_event_id=>wwv_flow_api.id(434366371700178371)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(14837428925680752473)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Save Preferences'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':APPLICATION_TITLE := :P28_APPLICATION_TITLE;',
'',
'eba_cust_fw.set_preference_value( ''APPLICATION_TITLE'',   apex_escape.html(:P28_APPLICATION_TITLE) );',
'eba_cust_fw.set_preference_value( ''FEEDBACK_RECIPIENTS'', apex_escape.html(:P28_FEEDBACK_RECIPIENTS) );',
'',
'eba_cust_fw.set_preference_value(',
'    p_preference_name => ''HOST_URL'',',
'    p_preference_value => nvl( wwv_flow_utilities.host_url(),',
'                               nvl( wwv_flow_utilities.get_protocol(), ''http'' )',
'                                   ||''://''|| owa_util.get_cgi_env( ''HTTP_HOST'' )',
'                             )',
');'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'#SQLERRM#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(14837427809453752472)
,p_process_success_message=>'Application settings saved.'
);
wwv_flow_api.component_end;
end;
/
