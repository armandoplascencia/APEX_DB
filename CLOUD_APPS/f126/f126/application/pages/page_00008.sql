prompt --application/pages/page_00008
begin
--   Manifest
--     PAGE: 00008
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
 p_id=>8
,p_user_interface_id=>wwv_flow_api.id(1222136671983413726)
,p_name=>'Event Type Details'
,p_alias=>'EVENT-TYPE-DETAILS'
,p_page_mode=>'MODAL'
,p_step_title=>'Event Type Details'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_api.id(9022053313788358351)
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(3336588467926114584)
,p_dialog_chained=>'N'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_last_upd_yyyymmddhh24miss=>'20200116130020'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1797848363133390499)
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
 p_id=>wwv_flow_api.id(3337787061168792509)
,p_plug_name=>'Recommended Colors'
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(1797849259226014317)
,p_plug_display_sequence=>30
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<br />Blue',
'<br />Border:     #C1CFE6',
'<br />Background: #E6ECF3',
'<br />',
'<br />Red',
'<br />Border:     #F1B8BA',
'<br />Background: #FAE1E2',
'<br />',
'<br />Yellow',
'<br />Border:     #E7EDB9',
'<br />Background: #F5F8E2',
'<br />',
'<br />Green',
'<br />Border:     #C2E1C8',
'<br />Background: #E5F3E8',
'<br />',
'<br />Teal',
'<br />Border:     #B1ECEB',
'<br />Background: #DEF7F7',
'<br />',
'<br />Purple',
'<br />Border:     #C0B7EC',
'<br />Background: #E4E1F7'))
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'NEVER'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(3376044057085956837)
,p_plug_name=>'hidden'
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(9022038403441333659)
,p_plug_name=>'Event Type Details'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1797842692634014308)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(9022038506943333661)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(1797848363133390499)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1797876708820014393)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(9022038602121333661)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(1797848363133390499)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--simple:t-Button--danger'
,p_button_template_id=>wwv_flow_api.id(1797876708820014393)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_condition=>'P8_TYPE_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(9022038710779333661)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(1797848363133390499)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--gapLeft'
,p_button_template_id=>wwv_flow_api.id(1797876708820014393)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_condition=>'P8_TYPE_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(9022038819243333661)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(1797848363133390499)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--gapLeft'
,p_button_template_id=>wwv_flow_api.id(1797876708820014393)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Event Type'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_condition=>'P8_TYPE_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1640360975436331003)
,p_name=>'P8_INTERNAL_YN'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(9022038403441333659)
,p_use_cache_before_default=>'NO'
,p_prompt=>'External / Internal'
,p_source=>'INTERNAL_YN'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC2:External;N,Internal Only;Y'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(364040926329662095)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_required_patch=>wwv_flow_api.id(1713314835132982612)
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3337786665192784195)
,p_name=>'P8_BORDER_COLOR'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(3376044057085956837)
,p_use_cache_before_default=>'NO'
,p_source=>'BORDER_COLOR'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_help_text=>'Events are typically displayed in black.  You can override that color by assigning a display color by event type.'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3339087873700052438)
,p_name=>'P8_COLOR_PREF_ID'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(9022038403441333659)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Color Preference'
,p_source=>'COLOR_PREF_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'COLOR PREFERENCE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select color_name, id ',
'from EBA_CA_color_prefs ',
'order by display_sequence, id'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select Color Preference -'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(364040926329662095)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(9022039004777333664)
,p_name=>'P8_TYPE_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(9022038403441333659)
,p_use_cache_before_default=>'NO'
,p_source=>'TYPE_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(9022039099216333666)
,p_name=>'P8_TYPE_NAME'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(9022038403441333659)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Event Type'
,p_source=>'TYPE_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>48
,p_cMaxlength=>60
,p_field_template=>wwv_flow_api.id(364040926329662095)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(9022164117007841785)
,p_name=>'P8_DISPLAY_COLOR'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(3376044057085956837)
,p_use_cache_before_default=>'NO'
,p_source=>'DISPLAY_COLOR'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_help_text=>'Events are typically displayed in black.  You can override that color by assigning a display color by event type.'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(8108582943561009225)
,p_validation_name=>'P8_EVENT_TYPE unique'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from EBA_ca_event_types',
' where lower(:P8_TYPE_NAME) = lower(type_name)',
'   and (:P8_TYPE_ID != type_id or :P8_TYPE_ID is null)'))
,p_validation_type=>'NOT_EXISTS'
,p_error_message=>'Type already exists.'
,p_associated_item=>wwv_flow_api.id(9022039099216333666)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(8116059352289200952)
,p_validation_name=>'no related events before delete'
,p_validation_sequence=>20
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from EBA_ca_events',
' where :P8_TYPE_ID = type_id'))
,p_validation_type=>'NOT_EXISTS'
,p_error_message=>'Cannot delete Event Type - it is related to Events.'
,p_when_button_pressed=>wwv_flow_api.id(9022038602121333661)
,p_associated_item=>wwv_flow_api.id(9022039099216333666)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(1797848453825390500)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(9022038506943333661)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1797848557186390501)
,p_event_id=>wwv_flow_api.id(1797848453825390500)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(9022040293733333668)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from EBA_CA_EVENT_TYPES'
,p_attribute_02=>'EBA_CA_EVENT_TYPES'
,p_attribute_03=>'P8_TYPE_ID'
,p_attribute_04=>'TYPE_ID'
,p_attribute_11=>'I:U:D'
,p_process_error_message=>'Unable to fetch row.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(3376045757526013740)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'set colors'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'for c1 in (',
'select ',
'   BG_COLOR,',
'   TEXT_COLOR',
'from EBA_CA_COLOR_PREFS',
'where id = :P8_COLOR_PREF_ID) loop',
':P8_DISPLAY_COLOR := c1.TEXT_COLOR;',
':P8_BORDER_COLOR := c1.BG_COLOR;',
'end loop;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(9022040395001333669)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of EBA_CA_EVENT_TYPES'
,p_attribute_02=>'EBA_CA_EVENT_TYPES'
,p_attribute_03=>'P8_TYPE_ID'
,p_attribute_04=>'TYPE_ID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_process_error_message=>'Unable to process row of table EBA_CA_EVENT_TYPES.'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(1797848692330390502)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.component_end;
end;
/
