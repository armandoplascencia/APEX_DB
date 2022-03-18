prompt --application/pages/page_00011
begin
--   Manifest
--     PAGE: 00011
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
 p_id=>11
,p_user_interface_id=>wwv_flow_api.id(74382049182121932)
,p_name=>'Code Verification'
,p_page_mode=>'MODAL'
,p_step_title=>'Code Verification'
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>'#APP_IMAGES#js/qrcode.js'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>'MUST_NOT_BE_PUBLIC_USER'
,p_protection_level=>'C'
,p_last_updated_by=>'APNG'
,p_last_upd_yyyymmddhh24miss=>'20181018002434'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(74452888579384239)
,p_plug_name=>'Instructions'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(74307799116121779)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="qrcode" style="text-align:center;"></div>',
'<div>',
'  <ol>',
'    <li>Scan the QR Code above using the chosen authenticator application, e.g. Google Authenticator or Duo Mobile.</li>',
'    <li>Enter the code and click "Verify" to complete the activation.</li>',
'  </ol>',
'</div>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(79283669262419583)
,p_plug_name=>'Code Verification'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(74307799116121779)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(79283784296419584)
,p_plug_name=>'Buttons Container'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(74287369895121754)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(79283860823419585)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(79283784296419584)
,p_button_name=>'VERIFY'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--stretch'
,p_button_template_id=>wwv_flow_api.id(74360112729121828)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Verify'
,p_button_position=>'BODY'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(74453427355384245)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(79283784296419584)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--stretch'
,p_button_template_id=>wwv_flow_api.id(74360112729121828)
,p_button_image_alt=>'Cancel'
,p_button_position=>'BODY'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(74454661908384257)
,p_branch_name=>'goToPage10'
,p_branch_action=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.:RP,10::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(74452523890384236)
,p_name=>'P11_OTP'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(79283669262419583)
,p_prompt=>'Verification Code'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>6
,p_cMaxlength=>6
,p_field_template=>wwv_flow_api.id(74359924859121826)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'center'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(74453126532384242)
,p_name=>'P11_USERID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(74452888579384239)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(74453214916384243)
,p_name=>'P11_OTP_URI'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(74452888579384239)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(74454871831384259)
,p_validation_name=>'validateOTP'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'pkg_tfa_apex.f_validate_otp(',
'  p_userid => :P11_USERID',
'  , p_otp => :P11_OTP',
')'))
,p_validation2=>'PLSQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>'Verification code does not match. Please try again.'
,p_when_button_pressed=>wwv_flow_api.id(79283860823419585)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(74452973847384240)
,p_name=>'onPageLoad'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(74452999247384241)
,p_event_id=>wwv_flow_api.id(74452973847384240)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'JQUERY_SELECTOR'
,p_affected_elements=>'div#qrcode'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var qr = qrcode(0, ''M'');',
'qr.addData(apex.item(''P11_OTP_URI'').getValue());',
'qr.make();',
'this.affectedElements.append(qr.createImgTag(4, 16, ''OTP URI''));'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(74453567789384246)
,p_name=>'cancelDialog'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(74453427355384245)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(74453604600384247)
,p_event_id=>wwv_flow_api.id(74453567789384246)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(74454758098384258)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'saveChanges'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'update tfa_user',
'set tfa_enabled = 1',
'where userid = :P11_USERID;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Failed to save changes or verify code. Please try again.'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(79283860823419585)
,p_process_success_message=>'Changes saved successfully. Two-factor Authentication protection enabled!'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(74453327435384244)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'loadData'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'  oos_util_totp.format_key_uri(',
'    p_label_accountname => :APP_TITLE || '' - '' || lower(username)',
'    , p_label_issuer => :APP_TITLE',
'    , p_secret => shared_secret',
'  ) ',
'into :P11_OTP_URI',
'from tfa_user',
'where userid = :P11_USERID;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'P11_USERID'
,p_process_when_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_api.component_end;
end;
/
