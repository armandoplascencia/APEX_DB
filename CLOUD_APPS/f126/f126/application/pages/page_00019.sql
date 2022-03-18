prompt --application/pages/page_00019
begin
--   Manifest
--     PAGE: 00019
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>126
,p_default_id_offset=>101651461840938715
,p_default_owner=>'MISO'
);
wwv_flow_api.create_page(
 p_id=>19
,p_user_interface_id=>wwv_flow_api.id(1222136671983413726)
,p_name=>'Group Member Details'
,p_alias=>'GROUP-MEMBER-DETAILS'
,p_page_mode=>'MODAL'
,p_step_title=>'Group Member Details'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_api.id(9022053313788358351)
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_step_template=>wwv_flow_api.id(1797830282832014291)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(3336588467926114584)
,p_dialog_chained=>'N'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_last_upd_yyyymmddhh24miss=>'20200116130020'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1798884427310402563)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1797842835406014310)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(8108306749484038892)
,p_plug_name=>'Group Member Details'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1797842692634014308)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(8108306937668038893)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(1798884427310402563)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1797876708820014393)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(8108307552921038895)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(1798884427310402563)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--simple:t-Button--danger'
,p_button_template_id=>wwv_flow_api.id(1797876708820014393)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P19_MBR_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(8108307325578038895)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(1798884427310402563)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--gapLeft'
,p_button_template_id=>wwv_flow_api.id(1797876708820014393)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Member'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_condition=>'P19_MBR_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(8108307122550038894)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(1798884427310402563)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--gapLeft'
,p_button_template_id=>wwv_flow_api.id(1797876708820014393)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_condition=>'P19_MBR_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8108307730770038896)
,p_name=>'P19_MBR_ID'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_api.id(8108306749484038892)
,p_use_cache_before_default=>'NO'
,p_source=>'MBR_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8108307921991038897)
,p_name=>'P19_EMAIL_ADDRESS'
,p_is_required=>true
,p_item_sequence=>2
,p_item_plug_id=>wwv_flow_api.id(8108306749484038892)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Email Address'
,p_source=>'EMAIL_ADDRESS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>64
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(1797875884085014387)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'The email address of the member.'
,p_encrypt_session_state_yn=>'Y'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8108316050891065297)
,p_name=>'P19_GROUP_ID'
,p_is_required=>true
,p_item_sequence=>1.5
,p_item_plug_id=>wwv_flow_api.id(8108306749484038892)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Email Group'
,p_source=>'GROUP_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'EMAIL GROUPS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select group_name d, group_id r',
'  from EBA_ca_email_groups',
' order by 1'))
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(1797875884085014387)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'The group you are adding the member to.'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(8108493552790378007)
,p_computation_sequence=>10
,p_computation_item=>'P19_EMAIL_ADDRESS'
,p_computation_type=>'EXPRESSION'
,p_computation_language=>'SQL'
,p_computation=>'lower(:P19_EMAIL_ADDRESS)'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(8108597221631144778)
,p_validation_name=>'P19_EMAIL_ADDRESS'
,p_validation_sequence=>10
,p_validation=>'P19_EMAIL_ADDRESS'
,p_validation2=>'[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}'
,p_validation_type=>'REGULAR_EXPRESSION'
,p_error_message=>'Invalid Email format.'
,p_associated_item=>wwv_flow_api.id(8108307921991038897)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(8108584633004044018)
,p_validation_name=>'P19_GROUP_EMAIL_ADDRESS unique'
,p_validation_sequence=>30
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from EBA_ca_email_group_mbrs',
' where lower(:P19_EMAIL_ADDRESS) = lower(email_address)',
'   and :P19_GROUP_ID = group_id',
'   and (:P19_MBR_ID != mbr_id or :P19_MBR_ID is null)'))
,p_validation_type=>'NOT_EXISTS'
,p_error_message=>'Email Address already exists within selected Group.'
,p_associated_item=>wwv_flow_api.id(8108307921991038897)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(128524263591697058)
,p_name=>'CNX'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(8108306937668038893)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(128524375960697059)
,p_event_id=>wwv_flow_api.id(128524263591697058)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(8108311338374038905)
,p_process_sequence=>1
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from EBA_CA_EMAIL_GROUP_MBRS'
,p_attribute_02=>'EBA_CA_EMAIL_GROUP_MBRS'
,p_attribute_03=>'P19_MBR_ID'
,p_attribute_04=>'MBR_ID'
,p_attribute_11=>'I:U:D'
,p_process_error_message=>'Unable to fetch row.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(8108311523378038907)
,p_process_sequence=>1
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of EBA_CA_EMAIL_GROUP_MBRS'
,p_attribute_02=>'EBA_CA_EMAIL_GROUP_MBRS'
,p_attribute_03=>'P19_MBR_ID'
,p_attribute_04=>'MBR_ID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_process_error_message=>'Unable to process row of table EBA_CA_EMAIL_GROUP_MBRS.'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(128525132958697067)
,p_process_sequence=>11
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.component_end;
end;
/
