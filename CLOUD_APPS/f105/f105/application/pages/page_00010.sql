prompt --application/pages/page_00010
begin
--   Manifest
--     PAGE: 00010
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>105
,p_default_id_offset=>69016641819901842
,p_default_owner=>'MISO'
);
wwv_flow_api.create_page(
 p_id=>10
,p_user_interface_id=>wwv_flow_api.id(74382049182121932)
,p_name=>'My Account'
,p_step_title=>'My Account'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>'MUST_NOT_BE_PUBLIC_USER'
,p_last_updated_by=>'APNG'
,p_last_upd_yyyymmddhh24miss=>'20181016232453'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(79282355422419570)
,p_plug_name=>'My Account'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(74307799116121779)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(79282832060419575)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(79282355422419570)
,p_button_name=>'SAVE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(74360112729121828)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save Changes'
,p_button_position=>'BELOW_BOX'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(79283549307419582)
,p_branch_name=>'goToPage10'
,p_branch_action=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.:RP,10::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(79282832060419575)
,p_branch_sequence=>10
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(74452769067384238)
,p_branch_name=>'goToPage11'
,p_branch_action=>'f?p=&APP_ID.:11:&SESSION.::&DEBUG.:RP,11:P11_USERID:&P10_USERID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>20
,p_branch_condition_type=>'REQUEST_EQUALS_CONDITION'
,p_branch_condition=>'VERIFY'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(79282445193419571)
,p_name=>'P10_USERNAME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(79282355422419570)
,p_prompt=>'Username'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(74359738363121825)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(79282764325419574)
,p_name=>'P10_TFA_ENABLED'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(79282355422419570)
,p_prompt=>'Two-Factor Authentication Enabled'
,p_display_as=>'NATIVE_YES_NO'
,p_field_template=>wwv_flow_api.id(74359738363121825)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(79283270162419579)
,p_name=>'P10_USERID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(79282355422419570)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(79282983600419576)
,p_name=>'determineSavePath'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(79282832060419575)
,p_condition_element=>'P10_TFA_ENABLED'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'1'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(74454512175384256)
,p_event_id=>wwv_flow_api.id(79282983600419576)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_01=>'VERIFY'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(79283109590419578)
,p_event_id=>wwv_flow_api.id(79282983600419576)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_01=>'SAVE'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(79283438134419581)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'saveChanges'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'update tfa_user',
'set tfa_enabled = :P10_TFA_ENABLED',
'where userid = :P10_USERID;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Failed to save changes.'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(79282832060419575)
,p_process_success_message=>'Changes saved successfully.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(79282681779419573)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'loadData'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'select userid, username, tfa_enabled',
'into :P10_USERID, :P10_USERNAME, :P10_TFA_ENABLED',
'from tfa_user',
'where 1 = 1',
'  and lower(username) = lower(:APP_USER)',
';',
'exception',
'  when no_data_found then null;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.component_end;
end;
/
