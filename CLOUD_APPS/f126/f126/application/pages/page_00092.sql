prompt --application/pages/page_00092
begin
--   Manifest
--     PAGE: 00092
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
 p_id=>92
,p_user_interface_id=>wwv_flow_api.id(1222136671983413726)
,p_name=>'New User Details'
,p_alias=>'NEW-USER-DETAILS'
,p_page_mode=>'MODAL'
,p_step_title=>'New User Details'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_api.id(9022053313788358351)
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_step_template=>wwv_flow_api.id(1797830282832014291)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(3336588467926114584)
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'ALLAN'
,p_last_upd_yyyymmddhh24miss=>'20210301102340'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(3215116679412520442)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1797842835406014310)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(5992378148349461844)
,p_plug_name=>'Information'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader:t-Region--noBorder:t-Region--hiddenOverflow'
,p_plug_template=>wwv_flow_api.id(1797853323124014327)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'htp.prn(replace(',
'    apex_lang.message(''ACCESS_CONTROL_INFO''),',
'    ''#IMAGE_PREFIX''||''#'',',
'    :image_prefix));'))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_translate_title=>'N'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(7095956850863237652)
,p_plug_name=>'User Details'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(1797853323124014327)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(5992378354929463773)
,p_plug_name=>'Form Items'
,p_parent_plug_id=>wwv_flow_api.id(7095956850863237652)
,p_plug_template=>wwv_flow_api.id(1797842692634014308)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(1249847424702757932)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(3215116679412520442)
,p_button_name=>'CREATE_AGAIN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1797876708820014393)
,p_button_image_alt=>'Add and Add Another'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'P92_SEQUENCE'
,p_button_condition_type=>'ITEM_IS_NULL'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(1249847731903757932)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(3215116679412520442)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--gapLeft'
,p_button_template_id=>wwv_flow_api.id(1797876708820014393)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add User'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'P92_SEQUENCE'
,p_button_condition_type=>'ITEM_IS_NULL'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(1249847027701757931)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(3215116679412520442)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--gapLeft'
,p_button_template_id=>wwv_flow_api.id(1797876708820014393)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_button_condition=>'P92_SEQUENCE'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(1249846537293757930)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(3215116679412520442)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--simple:t-Button--danger'
,p_button_template_id=>wwv_flow_api.id(1797876708820014393)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>':P92_SEQUENCE is not null and lower(:APP_USER) != lower(:P92_USERNAME)'
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(1249846172754757930)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(3215116679412520442)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1797876708820014393)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_PREVIOUS'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(1249852748315757965)
,p_branch_name=>'Add and Add Another'
,p_branch_action=>'f?p=&APP_ID.:&APP_PAGE_ID.:&SESSION.::&DEBUG.:&APP_PAGE_ID.::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(1249847424702757932)
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1249843730130757925)
,p_name=>'P92_USERNAME'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(5992378354929463773)
,p_prompt=>'Username'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>64
,p_cMaxlength=>255
,p_read_only_when=>':P92_SEQUENCE is not null and lower(:APP_USER) = lower(:P92_USERNAME)'
,p_read_only_when2=>'PLSQL'
,p_read_only_when_type=>'EXPRESSION'
,p_field_template=>wwv_flow_api.id(1797875884085014387)
,p_item_template_options=>'#DEFAULT#'
,p_restricted_characters=>'WEB_SAFE'
,p_help_text=>'The username assigned by this user.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1249844541366757928)
,p_name=>'P92_ACCESS_LEVEL_ID'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(5992378354929463773)
,p_item_default=>'2'
,p_prompt=>'Access Level'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'ACCESS_LEVEL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select access_level d, id r',
'  from eba_ca_access_levels',
' order by 1'))
,p_read_only_when=>':P92_SEQUENCE is not null and lower(:APP_USER) = lower(:P92_USERNAME)'
,p_read_only_when2=>'PLSQL'
,p_read_only_when_type=>'EXPRESSION'
,p_field_template=>wwv_flow_api.id(1797875884085014387)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_restricted_characters=>'WEB_SAFE'
,p_help_text=>'The access level assigned to this user.'
,p_attribute_01=>'1'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1249845530018757929)
,p_name=>'P92_SEQUENCE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(5992378354929463773)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(1249849440512757960)
,p_validation_name=>'cannot update yourself'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from eba_ca_users',
' where upper(username) = :APP_USER',
'   and upper(username) = upper(:P92_USERNAME)'))
,p_validation_type=>'NOT_EXISTS'
,p_error_message=>'You cannot update your own record.'
,p_when_button_pressed=>wwv_flow_api.id(1249847027701757931)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(1249849084153757960)
,p_validation_name=>'P92_USERNAME Email is Valid'
,p_validation_sequence=>30
,p_validation=>'P92_USERNAME'
,p_validation2=>'^[-!#$%&''''''''*+/0-9=?A-Z^_a-z{|}~](\.?[-!#$%&''''''''*+/0-9=?A-Z^_a-z{|}~])*@(-?[a-zA-Z0-9+])+(\.(-?[a-zA-Z0-9+])*)+$'
,p_validation_type=>'REGULAR_EXPRESSION'
,p_error_message=>'Username is not in a valid email address format. Please note the application''s username format below.'
,p_validation_condition=>'eba_ca_fw.get_preference_value (''USERNAME_FORMAT'') = ''EMAIL'''
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'EXPRESSION'
,p_associated_item=>wwv_flow_api.id(1249843730130757925)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(1249848640531757959)
,p_validation_name=>'Username is unique'
,p_validation_sequence=>40
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    null',
'from',
'    apex_collections',
'where',
'    collection_name = ''NEW_USERS''',
'and',
'    lower(c001) = lower(:P92_USERNAME)',
'and',
'    :P92_SEQUENCE is null;'))
,p_validation_type=>'NOT_EXISTS'
,p_error_message=>'This username has already been added. Please enter a unique username.'
,p_associated_item=>wwv_flow_api.id(1249843730130757925)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(1249851768446757962)
,p_name=>'Close Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(1249846172754757930)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1249852286128757964)
,p_event_id=>wwv_flow_api.id(1249851768446757962)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(1249849792861757960)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Add User to Collection'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_collection.add_member(',
'    p_collection_name => ''NEW_USERS'',',
'    p_c001            => lower(:P92_USERNAME),',
'    p_n001            => :P92_ACCESS_LEVEL_ID);'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,CREATE_AGAIN'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_process_success_message=>'&P92_USERNAME. added successfully.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(1249851012979757961)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Update User in Collection'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_collection.update_member(',
'    p_collection_name => ''NEW_USERS'',',
'    p_c001            => lower(:P92_USERNAME),',
'    p_n001            => :P92_ACCESS_LEVEL_ID,',
'    p_seq             => :P92_SEQUENCE);'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(1249847027701757931)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(1249850556412757961)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Remove User from Collection'
,p_process_sql_clob=>'apex_collection.delete_member(p_collection_name => ''NEW_USERS'', p_seq => :P92_SEQUENCE);'
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(1249846537293757930)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(1249850151595757961)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(1249851336550757962)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(1249847424702757932)
);
wwv_flow_api.component_end;
end;
/
