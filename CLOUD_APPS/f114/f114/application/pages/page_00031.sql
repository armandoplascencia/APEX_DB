prompt --application/pages/page_00031
begin
--   Manifest
--     PAGE: 00031
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>114
,p_default_id_offset=>0
,p_default_owner=>'MISO'
);
wwv_flow_api.create_page(
 p_id=>31
,p_user_interface_id=>wwv_flow_api.id(86826916759588097)
,p_name=>'Business Skill'
,p_alias=>'BUSINESS-SKILL'
,p_page_mode=>'MODAL'
,p_step_title=>'Business Skill'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'N'
,p_protection_level=>'C'
,p_last_updated_by=>'MISO'
,p_last_upd_yyyymmddhh24miss=>'20220119031139'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(87061790526592613)
,p_plug_name=>'Business Skill'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(86706314777588032)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'TABLE'
,p_query_table=>'ND2_BUSINESS_SKILLS'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(87064158875592614)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(86707332092588033)
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(87064520332592615)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(87064158875592614)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(86802475528588083)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(87066100482592616)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(87064158875592614)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>wwv_flow_api.id(86802475528588083)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P31_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(87066575324592616)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(87064158875592614)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(86802475528588083)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_condition=>'P31_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(87066944113592616)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(87064158875592614)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(86802475528588083)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_condition=>'P31_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(87062084926592613)
,p_name=>'P31_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(87061790526592613)
,p_item_source_plug_id=>wwv_flow_api.id(87061790526592613)
,p_use_cache_before_default=>'NO'
,p_prompt=>'ID'
,p_source=>'ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(86801204750588082)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(87062429666592613)
,p_name=>'P31_SKILL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(87061790526592613)
,p_item_source_plug_id=>wwv_flow_api.id(87061790526592613)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Skill'
,p_source=>'SKILL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>10
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(86799939332588081)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(87062818465592614)
,p_name=>'P31_PROFICIENCY_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(87061790526592613)
,p_item_source_plug_id=>wwv_flow_api.id(87061790526592613)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Proficiency'
,p_source=>'PROFICIENCY_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'ND2_PROFICIENCY.NAME'
,p_lov_display_null=>'YES'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(86799939332588081)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(87064605749592615)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(87064520332592615)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(87065481167592615)
,p_event_id=>wwv_flow_api.id(87064605749592615)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(87067704028592617)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(87061790526592613)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Business Skill'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(87068137374592617)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(87067353086592616)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_api.id(87061790526592613)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Business Skill'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.component_end;
end;
/
