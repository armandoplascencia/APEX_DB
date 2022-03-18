prompt --application/pages/page_00024
begin
--   Manifest
--     PAGE: 00024
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
 p_id=>24
,p_user_interface_id=>wwv_flow_api.id(1222136671983413726)
,p_name=>'Reporting Time Frame Details'
,p_alias=>'REPORTING-TIME-FRAME-DETAILS'
,p_page_mode=>'MODAL'
,p_step_title=>'Reporting Time Frame Details'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_api.id(9022053313788358351)
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(3336588467926114584)
,p_dialog_height=>'600'
,p_dialog_chained=>'N'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_last_upd_yyyymmddhh24miss=>'20200116130020'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1797848817719390503)
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
 p_id=>wwv_flow_api.id(8116094347762342354)
,p_plug_name=>'Reporting Time Frame Details'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1797842692634014308)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(8116096042063342378)
,p_plug_name=>'Audit Information'
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(1797849259226014317)
,p_plug_display_sequence=>30
,p_plug_display_point=>'BODY'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P24_TF_ID'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(8116094532373342364)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(1797848817719390503)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1797876708820014393)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(8116095144382342367)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(1797848817719390503)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--simple:t-Button--danger'
,p_button_template_id=>wwv_flow_api.id(1797876708820014393)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P24_TF_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(8116094720322342367)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(1797848817719390503)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--gapLeft'
,p_button_template_id=>wwv_flow_api.id(1797876708820014393)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_condition=>'P24_TF_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(8116094946057342367)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(1797848817719390503)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--gapLeft'
,p_button_template_id=>wwv_flow_api.id(1797876708820014393)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create Time Frame'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_condition=>'P24_TF_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8116095347117342368)
,p_name=>'P24_TF_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(8116094347762342354)
,p_use_cache_before_default=>'NO'
,p_source=>'TF_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8116095524522342372)
,p_name=>'P24_TF_NAME'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(8116094347762342354)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Time Frame Name'
,p_source=>'TF_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>64
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(364040926329662095)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Name of Reporting Timeframe.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8116096230718342378)
,p_name=>'P24_CREATED_ON'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(8116096042063342378)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Created:'
,p_source=>'CREATED_ON'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(1797875685625014383)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_help_text=>'The date on which the record was created.'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8116096748515342379)
,p_name=>'P24_CREATED_BY'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(8116096042063342378)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Created By:'
,p_source=>'CREATED_BY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(1797875685625014383)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_help_text=>'The user who created the record.'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8116097223767342379)
,p_name=>'P24_LAST_UPDATED_ON'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(8116096042063342378)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Last Updated:'
,p_source=>'LAST_UPDATED_ON'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(1797875685625014383)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_help_text=>'The date on which the record was last updated.'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8116097727909342380)
,p_name=>'P24_LAST_UPDATED_BY'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(8116096042063342378)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Last Updated By:'
,p_source=>'LAST_UPDATED_BY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(1797875685625014383)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_help_text=>'The user who last updated the record.'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8116107642179368301)
,p_name=>'P24_START_DATE'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(8116094347762342354)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Start Date'
,p_format_mask=>'&APP_DATE_FORMAT.'
,p_source=>'START_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>20
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(364040926329662095)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Start Date of Reporting Timeframe.'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8116109944735378513)
,p_name=>'P24_END_DATE'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(8116094347762342354)
,p_use_cache_before_default=>'NO'
,p_prompt=>'End Date'
,p_format_mask=>'&APP_DATE_FORMAT.'
,p_source=>'END_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>20
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(364040926329662095)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'End Date of Reporting Timeframe.'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(8116099029405342393)
,p_validation_name=>'P24_TF_NAME unique'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from EBA_ca_timeframes',
' where lower(:P24_TF_NAME) = lower(tf_name)',
'   and (:P24_TF_ID != tf_id or :P24_TF_ID is null)'))
,p_validation_type=>'NOT_EXISTS'
,p_error_message=>'Timeframe Name already exists.'
,p_associated_item=>wwv_flow_api.id(8116095524522342372)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(210243670370903694)
,p_name=>'CNX'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(8116094532373342364)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(210243768381903695)
,p_event_id=>wwv_flow_api.id(210243670370903694)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(8116099125741342395)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from EBA_ca_timeframes'
,p_attribute_02=>'EBA_CA_TIMEFRAMES'
,p_attribute_03=>'P24_TF_ID'
,p_attribute_04=>'TF_ID'
,p_attribute_11=>'I:U:D'
,p_process_error_message=>'Unable to fetch row.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(8116099334585342408)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of EBA_ca_timeframes'
,p_attribute_02=>'EBA_CA_TIMEFRAMES'
,p_attribute_03=>'P24_TF_ID'
,p_attribute_04=>'TF_ID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_process_error_message=>'Unable to process row of table EBA_ca_timeframes.'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(1797848929323390504)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.component_end;
end;
/
