prompt --application/pages/page_00058
begin
--   Manifest
--     PAGE: 00058
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
 p_id=>58
,p_user_interface_id=>wwv_flow_api.id(14434115216807266717)
,p_name=>'Default Email Addresses'
,p_alias=>'DEFAULT-EMAIL-ADDRESSES'
,p_page_mode=>'MODAL'
,p_step_title=>'Default Email Addresses'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(16485731932639691338)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(250463977822234829)
,p_protection_level=>'C'
,p_help_text=>'<p>Use this page to configure the application''s default "From" and "Reply To" email addresses.</p>'
,p_last_upd_yyyymmddhh24miss=>'20200116130020'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(14006116184236949421)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(14690162135548251137)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(14006117095912968077)
,p_plug_name=>' Default Email Addresses'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(14690161967644251135)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_plug_item_display_point=>'BELOW'
,p_translate_title=>'N'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(14006117482883973753)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(14006116184236949421)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(14690191414518251222)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(14006117699852978609)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(14006116184236949421)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--gapLeft'
,p_button_template_id=>wwv_flow_api.id(14690191414518251222)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_CREATE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(14006120881051032755)
,p_branch_action=>'f?p=&APP_ID.:settings:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14006118609758989094)
,p_name=>'P58_FROM'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(14006117095912968077)
,p_use_cache_before_default=>'NO'
,p_prompt=>'From'
,p_source=>'replace(eba_qpoll_fw.get_preference_value(''NOTIFICATION_EMAIL_FROM''),''N/A'',null)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>64
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(7253657183346174745)
,p_item_template_options=>'#DEFAULT#'
,p_restricted_characters=>'WEB_SAFE'
,p_help_text=>'Enter the email address that emails sent from this application will use as their "from" address.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14006118898112994448)
,p_name=>'P58_REPLY_TO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(14006117095912968077)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Reply To'
,p_source=>'replace(eba_qpoll_fw.get_preference_value(''NOTIFICATION_EMAIL_REPLY_TO''),''N/A'',null)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>64
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(7253657488708174745)
,p_item_template_options=>'#DEFAULT#'
,p_restricted_characters=>'WEB_SAFE'
,p_help_text=>'Enter the email address that emails sent from this application will use as their "reply to" address.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(14117393082891758089)
,p_validation_name=>'P58_FROM VALID EMAIL'
,p_validation_sequence=>10
,p_validation=>'P58_FROM'
,p_validation2=>'[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}'
,p_validation_type=>'REGULAR_EXPRESSION'
,p_error_message=>'Not a valid email address.'
,p_validation_condition=>'P58_FROM'
,p_validation_condition_type=>'ITEM_IS_NOT_NULL'
,p_when_button_pressed=>wwv_flow_api.id(14006117699852978609)
,p_associated_item=>wwv_flow_api.id(14006118609758989094)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(14117393278578760157)
,p_validation_name=>'P58_REPLY_TO VALID EMAIL'
,p_validation_sequence=>20
,p_validation=>'P58_REPLY_TO'
,p_validation2=>'[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}'
,p_validation_type=>'REGULAR_EXPRESSION'
,p_error_message=>'Not a valid email address.'
,p_validation_condition=>'P58_REPLY_TO'
,p_validation_condition_type=>'ITEM_IS_NOT_NULL'
,p_when_button_pressed=>wwv_flow_api.id(14006117699852978609)
,p_associated_item=>wwv_flow_api.id(14006118898112994448)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(7263617796075645444)
,p_name=>'CNX'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(14006117482883973753)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(7263617852131645445)
,p_event_id=>wwv_flow_api.id(7263617796075645444)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(14006120586441031527)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Save Email Addresses'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'eba_qpoll_fw.set_preference_value(''NOTIFICATION_EMAIL_FROM'',lower(:P58_FROM));',
'eba_qpoll_fw.set_preference_value(''NOTIFICATION_EMAIL_REPLY_TO'',nvl(lower(:P58_REPLY_TO),''N/A''));'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'#SQLERRM#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(14006117699852978609)
,p_process_success_message=>'Default email addresses saved.'
);
wwv_flow_api.component_end;
end;
/
