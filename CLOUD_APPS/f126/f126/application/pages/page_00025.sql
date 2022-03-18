prompt --application/pages/page_00025
begin
--   Manifest
--     PAGE: 00025
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
 p_id=>25
,p_user_interface_id=>wwv_flow_api.id(1222136671983413726)
,p_name=>'Notification'
,p_alias=>'NOTIFICATION'
,p_page_mode=>'MODAL'
,p_step_title=>'Notification'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_api.id(9022053313788358351)
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(3336588467926114584)
,p_dialog_chained=>'N'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Please enter a useful notification and optionally a description. The notification will be shown in bold on the top line of the notification box. If',
' a description is entered it will be in plain text in the line below the notification. The type selected will determine the icon and color of the notification. If you have multiple notifications they will be ordered based on the display sequence.  Yo'
||'u can enter specific dates and times to limit when the notification is first displayed and/or when it is no longer visible.'))
,p_last_upd_yyyymmddhh24miss=>'20200116130020'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1435979777456005834)
,p_plug_name=>'About this page'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1797842692634014308)
,p_plug_display_sequence=>1
,p_plug_display_point=>'BODY'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1797848985827390505)
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
 p_id=>wwv_flow_api.id(3337746445321244334)
,p_plug_name=>'Notification'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1797842692634014308)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1528329666898383115)
,p_plug_name=>'Notification Items'
,p_parent_plug_id=>wwv_flow_api.id(3337746445321244334)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1797842692634014308)
,p_plug_display_sequence=>40
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(3337746850008244334)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(1797848985827390505)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1797876708820014393)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.:::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(3337747076784244334)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(1797848985827390505)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--simple:t-Button--danger'
,p_button_template_id=>wwv_flow_api.id(1797876708820014393)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P25_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(3337747253102244334)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(1797848985827390505)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--gapLeft'
,p_button_template_id=>wwv_flow_api.id(1797876708820014393)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_condition=>'P25_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(3337746657648244334)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(1797848985827390505)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--gapLeft'
,p_button_template_id=>wwv_flow_api.id(1797876708820014393)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create Notification'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_condition=>'P25_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3337747454091244335)
,p_name=>'P25_DISPLAY_SEQUENCE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(1528329666898383115)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Display Sequence'
,p_source=>'DISPLAY_SEQUENCE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>8
,p_cMaxlength=>4000
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(364041153909662096)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3337747671462244336)
,p_name=>'P25_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(1528329666898383115)
,p_use_cache_before_default=>'NO'
,p_source=>'ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3337747859806244336)
,p_name=>'P25_NOTIFICATION_NAME'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(1528329666898383115)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Notification Name'
,p_source=>'NOTIFICATION_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>80
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(364040926329662095)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3337748055078244336)
,p_name=>'P25_NOTIFICATION_DESCRIPTION'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(1528329666898383115)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Notification Description'
,p_source=>'NOTIFICATION_DESCRIPTION'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>80
,p_cMaxlength=>4000
,p_cHeight=>4
,p_field_template=>wwv_flow_api.id(364041153909662096)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3337748246893244336)
,p_name=>'P25_NOTIFICATION_TYPE'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(1528329666898383115)
,p_use_cache_before_default=>'NO'
,p_item_default=>'YELLOW'
,p_prompt=>'Notification Type'
,p_source=>'NOTIFICATION_TYPE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'NOTIFICATION TYPE'
,p_lov=>'.'||wwv_flow_api.id(3337751070426244340)||'.'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(364040926329662095)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3337748673712244336)
,p_name=>'P25_DISPLAY_FROM'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(1528329666898383115)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Display From'
,p_format_mask=>'DD-MON-YYYY HH24:MI:SS'
,p_source=>'DISPLAY_FROM'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>64
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(364041153909662096)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3337748846053244337)
,p_name=>'P25_DISPLAY_UNTIL'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(1528329666898383115)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Display Until'
,p_format_mask=>'DD-MON-YYYY HH24:MI:SS'
,p_source=>'DISPLAY_UNTIL'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>64
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(364041153909662096)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(3337749966375244338)
,p_validation_name=>'P25_DISPLAY_FROM must be timestamp'
,p_validation_sequence=>10
,p_validation=>'P25_DISPLAY_FROM'
,p_validation_type=>'ITEM_IS_TIMESTAMP'
,p_error_message=>'#LABEL# must be a valid timestamp.'
,p_associated_item=>wwv_flow_api.id(3337748673712244336)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(3337750158301244339)
,p_validation_name=>'P25_DISPLAY_UNTIL must be timestamp'
,p_validation_sequence=>20
,p_validation=>'P25_DISPLAY_UNTIL'
,p_validation_type=>'ITEM_IS_TIMESTAMP'
,p_error_message=>'#LABEL# must be a valid timestamp.'
,p_associated_item=>wwv_flow_api.id(3337748846053244337)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(1658161847659263306)
,p_validation_name=>'End after Beginning'
,p_validation_sequence=>30
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P25_DISPLAY_FROM is not null and :P25_DISPLAY_UNTIL is not null then',
'    return to_timestamp(:P25_DISPLAY_FROM,''DD-MON-YYYY HH24:MI:SS'') < to_timestamp(:P25_DISPLAY_UNTIL,''DD-MON-YYYY HH24:MI:SS'');',
'else',
'    return true;',
'end if;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Display From and To dates must be in proper chronological order.'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(1797849114260390506)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(3337746850008244334)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1798883732938402557)
,p_event_id=>wwv_flow_api.id(1797849114260390506)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(3337750267563244339)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from EBA_CA_NOTIFICATIONS'
,p_attribute_02=>'EBA_CA_NOTIFICATIONS'
,p_attribute_03=>'P25_ID'
,p_attribute_04=>'ID'
,p_attribute_11=>'I:U:D'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(3337750461041244339)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of EBA_CA_NOTIFICATIONS'
,p_attribute_02=>'EBA_CA_NOTIFICATIONS'
,p_attribute_03=>'P25_ID'
,p_attribute_04=>'ID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(3337750660942244339)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_FOR_PAGES'
,p_attribute_04=>'31'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(3337747076784244334)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(1798883902922402558)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.component_end;
end;
/
