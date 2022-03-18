prompt --application/pages/page_00044
begin
--   Manifest
--     PAGE: 00044
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
 p_id=>44
,p_user_interface_id=>wwv_flow_api.id(1222136671983413726)
,p_name=>'Calendar Details'
,p_alias=>'CALENDAR-DETAILS'
,p_page_mode=>'MODAL'
,p_step_title=>'Calendar Details'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(3336588467926114584)
,p_dialog_chained=>'N'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'    This page allows app administrators to change attributes of a calendar. Click the <strong>Apply Changes</strong> button to save your changes. Click the <strong>Delete</strong> button to delete this calendar. Click the <strong>Cancel</strong> butt'
||'on to leave this page.',
'</p>'))
,p_last_updated_by=>'ALLAN'
,p_last_upd_yyyymmddhh24miss=>'20210301102340'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(1947018288334972782)
,p_name=>'Readers (for this Private Calendar)'
,p_template=>wwv_flow_api.id(1797853323124014327)
,p_display_sequence=>60
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'t-Report--stretch:t-Report--altRowsDefault:t-Report--inline:t-Report--rowHighlightOff'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select username, ',
'       ''Restricted To set for this calendar'' access_type',
'  from eba_ca_users',
' where access_level_id = 1',
' and   instr('':''||restricted_to||'':'','':''||:P44_CALENDAR_ID||'':'') > 0',
' order by 1'))
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P44_CALENDAR_ID is not null',
'and eba_ca_fw.get_preference_value(''ACCESS_CONTROL_ENABLED'') = ''Y'''))
,p_display_when_cond2=>'PLSQL'
,p_display_condition_type=>'EXPRESSION'
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P44_PUBLIC_VIEW_YN'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(1797862998400014346)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_no_data_found=>'No users found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1947018362159972783)
,p_query_column_id=>1
,p_column_alias=>'USERNAME'
,p_column_display_sequence=>1
,p_column_heading=>'Username'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1947018452282972784)
,p_query_column_id=>2
,p_column_alias=>'ACCESS_TYPE'
,p_column_display_sequence=>2
,p_column_heading=>'Access Type'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(17662743591634356276)
,p_plug_name=>'Calendar Details'
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
 p_id=>wwv_flow_api.id(17662745680498356278)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1797842835406014310)
,p_plug_display_sequence=>40
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(17900696466775762339)
,p_name=>'Contributors'
,p_template=>wwv_flow_api.id(1797853323124014327)
,p_display_sequence=>50
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'t-Report--stretch:t-Report--altRowsDefault:t-Report--inline:t-Report--rowHighlightOff'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select username, ',
'       case when restricted_to is null then ''Unrestricted Contributor''',
'            else ''Restricted To set for this calendar'' end access_type,',
'       decode(access_level_id, 3, ''Administrator'', ''Contributor'') access_level',
'  from eba_ca_users',
' where access_level_id >= 2',
' and   (   instr('':''||restricted_to||'':'','':''||:P44_CALENDAR_ID||'':'') > 0',
'        or (    restricted_to is null ',
'            and access_level_id = 3',
'           )',
'       )',
' order by 1'))
,p_display_when_condition=>'P44_CALENDAR_ID'
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(1797862998400014346)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_no_data_found=>'No users found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1938790291304614322)
,p_query_column_id=>1
,p_column_alias=>'USERNAME'
,p_column_display_sequence=>1
,p_column_heading=>'Username'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1938790729870614323)
,p_query_column_id=>2
,p_column_alias=>'ACCESS_TYPE'
,p_column_display_sequence=>2
,p_column_heading=>'Access Type'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1947018230465972781)
,p_query_column_id=>3
,p_column_alias=>'ACCESS_LEVEL'
,p_column_display_sequence=>3
,p_column_heading=>'Access level'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(1938788744971614319)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(17662745680498356278)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--gapLeft'
,p_button_template_id=>wwv_flow_api.id(1797876708820014393)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'P44_CALENDAR_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(1938789208093614320)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(17662745680498356278)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--gapLeft'
,p_button_template_id=>wwv_flow_api.id(1797876708820014393)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Calendar'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'P44_CALENDAR_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(1938788429074614319)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(17662745680498356278)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1797876708820014393)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(1938789568265614320)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(17662745680498356278)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--simple:t-Button--danger'
,p_button_template_id=>wwv_flow_api.id(1797876708820014393)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_condition=>'P44_CALENDAR_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1774768333735852797)
,p_name=>'P44_PUBLIC_VIEW_YN'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(17662743591634356276)
,p_use_cache_before_default=>'NO'
,p_item_default=>'Y'
,p_prompt=>'Public Can View Events?'
,p_source=>'PUBLIC_VIEW_YN'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_YES_NO'
,p_display_when=>'eba_ca_fw.get_preference_value(''ACCESS_CONTROL_ENABLED'') = ''Y'''
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_field_template=>wwv_flow_api.id(364041153909662096)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Define whether all users can view the events on this calendar or only selected users.</p>',
'<p>If public can not view the events, you must update users who have rights to the calendar by going to Access Control List and selecting each users. On the User Details screen update Restricted To, selecting the calendars the user has access to.</p>'))
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1938784053652614314)
,p_name=>'P44_CALENDAR_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(17662743591634356276)
,p_use_cache_before_default=>'NO'
,p_source=>'CALENDAR_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1938784489708614314)
,p_name=>'P44_SHORT_NAME'
,p_is_required=>true
,p_item_sequence=>15
,p_item_plug_id=>wwv_flow_api.id(17662743591634356276)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Short Name'
,p_source=>'SHORT_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>10
,p_cMaxlength=>10
,p_field_template=>wwv_flow_api.id(364040926329662095)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Short name for Calendar.  Used as prefix when Events are displayed.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1938785400808614317)
,p_name=>'P44_CALENDAR_NAME'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(17662743591634356276)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Name'
,p_source=>'CALENDAR_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>48
,p_cMaxlength=>60
,p_field_template=>wwv_flow_api.id(364040926329662095)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Full name of Calendar.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1938786244481614317)
,p_name=>'P44_IS_ACTIVE_YN'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(17662743591634356276)
,p_use_cache_before_default=>'NO'
,p_item_default=>'Y'
,p_prompt=>'Active?'
,p_source=>'IS_ACTIVE_YN'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_YES_NO'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(364041153909662096)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'If not active, events will still display but new events cannot be associated with the calendar.'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1938787167295614318)
,p_name=>'P44_DESCRIPTION'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(17662743591634356276)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Description'
,p_source=>'DESCRIPTION'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>4000
,p_cHeight=>4
,p_field_template=>wwv_flow_api.id(364040926329662095)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Description of the Calendar.  Only displayed on the Calendars report (to Adminstrators).'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(1938791822915614325)
,p_validation_name=>'P44_CALENDAR_NAME unique'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from eba_ca_calendars',
' where lower(:P44_CALENDAR_NAME) = lower(calendar_name)',
'   and (:P44_CALENDAR_ID != calendar_id or :P44_CALENDAR_ID is null)'))
,p_validation_type=>'NOT_EXISTS'
,p_error_message=>'Calendar Name already exists.'
,p_associated_item=>wwv_flow_api.id(1938785400808614317)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(1938792553291614326)
,p_validation_name=>'P44_SHORT_NAME unique'
,p_validation_sequence=>15
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from eba_ca_calendars',
' where lower(:P44_SHORT_NAME) = lower(short_name)',
'   and (:P44_CALENDAR_ID != calendar_id or :P44_CALENDAR_ID is null)'))
,p_validation_type=>'NOT_EXISTS'
,p_error_message=>'Short Name already exists.'
,p_associated_item=>wwv_flow_api.id(1938784489708614314)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(1938792163244614325)
,p_validation_name=>'no related events before delete'
,p_validation_sequence=>20
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from EBA_ca_events',
' where :P44_CALENDAR_ID = calendar_id'))
,p_validation_type=>'NOT_EXISTS'
,p_error_message=>'Cannot delete Calendar - it is related to Events.'
,p_when_button_pressed=>wwv_flow_api.id(1938789568265614320)
,p_associated_item=>wwv_flow_api.id(1938785400808614317)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(1947018839909972788)
,p_name=>'Show Readers'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P44_PUBLIC_VIEW_YN'
,p_condition_element=>'P44_PUBLIC_VIEW_YN'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'N'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1947018969227972789)
,p_event_id=>wwv_flow_api.id(1947018839909972788)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(1947018288334972782)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1947019091737972790)
,p_event_id=>wwv_flow_api.id(1947018839909972788)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(1947018288334972782)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(210242653935903684)
,p_name=>'CNX'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(1938788429074614319)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(210242805260903685)
,p_event_id=>wwv_flow_api.id(210242653935903684)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(1938792859404614326)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from EBA_CA_CALENDARS'
,p_attribute_02=>'EBA_CA_CALENDARS'
,p_attribute_03=>'P44_CALENDAR_ID'
,p_attribute_04=>'CALENDAR_ID'
,p_process_error_message=>'Unable to fetch row.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(1938793290628614326)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of EBA_CA_CALENDARS'
,p_attribute_02=>'EBA_CA_CALENDARS'
,p_attribute_03=>'P44_CALENDAR_ID'
,p_attribute_04=>'CALENDAR_ID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_process_error_message=>'Unable to process row of table EBA_CA_CALENDARS.'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(210242922938903686)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'close'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.component_end;
end;
/
