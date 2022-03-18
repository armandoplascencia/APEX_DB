prompt --application/pages/page_00080
begin
--   Manifest
--     PAGE: 00080
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>134
,p_default_id_offset=>172493832712964115
,p_default_owner=>'MISO'
);
wwv_flow_api.create_page(
 p_id=>80
,p_user_interface_id=>wwv_flow_api.id(5783577205373975152)
,p_name=>'Notification'
,p_page_mode=>'MODAL'
,p_step_title=>'Notification'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_api.id(5956243783292594674)
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(7306165779537991444)
,p_dialog_chained=>'N'
,p_protection_level=>'C'
,p_help_text=>'<p>Notifications are displayed in bold on this applications home page.  The type selected will determine the icon and color of the notification. If you have multiple notifications they will be ordered based on the display sequence.  You can enter spe'
||'cific dates and times to limit when the notification is first displayed and/or when it is no longer visible.</p>'
,p_last_upd_yyyymmddhh24miss=>'20190830171920'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(509376723030008076)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(6781104860657890779)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(7526220188157349246)
,p_plug_name=>'Notification'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(2102163296972548821)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(6090242085772535818)
,p_plug_name=>'Items'
,p_parent_plug_id=>wwv_flow_api.id(7526220188157349246)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(6781104626075890777)
,p_plug_display_sequence=>40
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(7526227204127349305)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(6781117976757890807)
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(8972392840601050532)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(6781135716305890867)
,p_plug_display_condition_type=>'NEVER'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(7526220799976349249)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(509376723030008076)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(6781135529450890864)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(7526220486608349248)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(509376723030008076)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--gapLeft'
,p_button_template_id=>wwv_flow_api.id(6781135529450890864)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'P80_ROWID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(7526220395992349248)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(509376723030008076)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--gapLeft'
,p_button_template_id=>wwv_flow_api.id(6781135529450890864)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create Notification'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'P80_ROWID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(7526220597376349248)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(509376723030008076)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>wwv_flow_api.id(6781135529450890864)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P80_ROWID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(7526221603713349258)
,p_name=>'P80_ROWID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(6090242085772535818)
,p_use_cache_before_default=>'NO'
,p_source=>'ROWID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(7526221796867349268)
,p_name=>'P80_NOTIFICATION_NAME'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(6090242085772535818)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Notification'
,p_source=>'NOTIFICATION_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>80
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(748281375605960061)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(7526221988990349270)
,p_name=>'P80_NOTIFICATION_DESCRIPTION'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(6090242085772535818)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Notification Text'
,p_source=>'NOTIFICATION_DESCRIPTION'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>64
,p_cMaxlength=>4000
,p_cHeight=>4
,p_field_template=>wwv_flow_api.id(748281690398960066)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(7526222188784349271)
,p_name=>'P80_NOTIFICATION_TYPE'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(6090242085772535818)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Type'
,p_source=>'NOTIFICATION_TYPE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'NOTIFICATION TYPES'
,p_lov=>'.'||wwv_flow_api.id(7145602357352715831)||'.'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(748281375605960061)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(7526222383142349271)
,p_name=>'P80_DISPLAY_SEQUENCE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(6090242085772535818)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Display Sequence'
,p_source=>'DISPLAY_SEQUENCE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>8
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(748281690398960066)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'left'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(7526222605114349271)
,p_name=>'P80_DISPLAY_FROM'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(6090242085772535818)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Display From'
,p_format_mask=>'DD-MON-YYYY HH24:MI'
,p_source=>'DISPLAY_FROM'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>64
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(748281690398960066)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(7526222999603349273)
,p_name=>'P80_DISPLAY_UNTIL'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(6090242085772535818)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Display Until'
,p_format_mask=>'DD-MON-YYYY HH24:MI'
,p_source=>'DISPLAY_UNTIL'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>64
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(748281690398960066)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(7526222887349349273)
,p_validation_name=>'P80_DISPLAY_FROM must be timestamp'
,p_validation_sequence=>10
,p_validation=>'P80_DISPLAY_FROM'
,p_validation_type=>'ITEM_IS_TIMESTAMP'
,p_error_message=>'#LABEL# must be a valid timestamp.'
,p_associated_item=>wwv_flow_api.id(7526222605114349271)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(7526223302906349273)
,p_validation_name=>'P80_DISPLAY_UNTIL must be timestamp'
,p_validation_sequence=>20
,p_validation=>'P80_DISPLAY_UNTIL'
,p_validation_type=>'ITEM_IS_TIMESTAMP'
,p_error_message=>'#LABEL# must be a valid timestamp.'
,p_associated_item=>wwv_flow_api.id(7526222999603349273)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(6219423896329857571)
,p_validation_name=>'End after Beginning'
,p_validation_sequence=>30
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P80_DISPLAY_FROM is not null and :P80_DISPLAY_UNTIL is not null then',
'    return to_timestamp(:P80_DISPLAY_FROM,''DD-MON-YYYY HH24:MI'') < ',
'           to_timestamp(:P80_DISPLAY_UNTIL,''DD-MON-YYYY HH24:MI'');',
'else',
'    return true;',
'end if;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Display From and To dates must be in proper chronological order.'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(509376852195008077)
,p_name=>'CNX'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(7526220799976349249)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(509376913734008078)
,p_event_id=>wwv_flow_api.id(509376852195008077)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(7526224192186349275)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from EBA_PROJ_STATUS_NOTIFICATIONS'
,p_attribute_02=>'EBA_PROJ_STATUS_NOTIFICATIONS'
,p_attribute_03=>'P80_ROWID'
,p_attribute_04=>'ROWID'
,p_attribute_11=>'I:U:D'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(7526224389056349277)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of EBA_PROJ_STATUS_NOTIFICATIONS'
,p_attribute_02=>'EBA_PROJ_STATUS_NOTIFICATIONS'
,p_attribute_03=>'P80_ROWID'
,p_attribute_04=>'ROWID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(7526224602021349277)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(7526220597376349248)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(509377098743008079)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.component_end;
end;
/
