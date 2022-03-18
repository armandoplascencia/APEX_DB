prompt --application/pages/page_00031
begin
--   Manifest
--     PAGE: 00031
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>115
,p_default_id_offset=>358200981570066140
,p_default_owner=>'MISO'
);
wwv_flow_api.create_page(
 p_id=>31
,p_user_interface_id=>wwv_flow_api.id(188228516534147947)
,p_name=>'Add Person'
,p_alias=>'ADD-PERSON'
,p_page_mode=>'MODAL'
,p_step_title=>'Add Person'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_height=>'600'
,p_dialog_width=>'800'
,p_last_updated_by=>'THERWIX'
,p_last_upd_yyyymmddhh24miss=>'20211105122757'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(189297261866149081)
,p_plug_name=>'Person'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(188141975979147849)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(189297720578149085)
,p_plug_name=>'Dialog Footer'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(188117525922147832)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(215430580304732444)
,p_plug_name=>'Info'
,p_region_template_options=>'#DEFAULT#:t-Alert--horizontal:t-Alert--defaultIcons:t-Alert--info:t-Alert--removeHeading js-removeLandmark:margin-bottom-sm:margin-left-sm:margin-right-sm'
,p_plug_template=>wwv_flow_api.id(188112794363147827)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select the person(s) who should receive the template </p>',
'(Note: Go to "Administration/Manage Data/Person" to add or edit recipients)'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(189297942652149087)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(189297720578149085)
,p_button_name=>'Cancel'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(188206018318147897)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:30:&SESSION.::&DEBUG.:::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(189297792242149086)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(189297720578149085)
,p_button_name=>'Add_Person'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(188206018318147897)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Person'
,p_button_position=>'REGION_TEMPLATE_CREATE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(189298042262149088)
,p_branch_name=>'To_30'
,p_branch_action=>'f?p=&APP_ID.:30:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(189298279021149091)
,p_name=>'P31_PER_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(189297261866149081)
,p_prompt=>'Person'
,p_placeholder=>'- Please select -'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'R_PERSON'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  per_id,',
'        per_firstname || '' '' || per_lastname as per_name,',
'        per_email',
'  from  r_person'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(188204939905147894)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'Y'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
,p_attribute_11=>':'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(189298212541149090)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Add Person'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'p00031_api.add_person(',
'  pi_tpl_id => :p0_template',
', pi_per_id => :p31_per_id',
');'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'P31_PER_ID'
,p_process_when_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_api.component_end;
end;
/
