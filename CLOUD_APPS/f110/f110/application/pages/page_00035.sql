prompt --application/pages/page_00035
begin
--   Manifest
--     PAGE: 00035
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>110
,p_default_id_offset=>101599614921830918
,p_default_owner=>'MISO'
);
wwv_flow_api.create_page(
 p_id=>35
,p_user_interface_id=>wwv_flow_api.id(14434115216807266717)
,p_name=>'Access Control Configuration'
,p_alias=>'ACCESS-CONTROL-CONFIGURATION'
,p_page_mode=>'MODAL'
,p_step_title=>'Access Control Configuration'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(250463977822234829)
,p_protection_level=>'C'
,p_last_updated_by=>'ALLAN'
,p_last_upd_yyyymmddhh24miss=>'20210518153433'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(7910655080523119764)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(14690162135548251137)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(9795359519257031056)
,p_plug_name=>'Access Control Configuration'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(14690161967644251135)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(7265457855213302867)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(7910655080523119764)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(14690191414518251222)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(7265458257133302867)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(7910655080523119764)
,p_button_name=>'SAVE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--gapLeft'
,p_button_template_id=>wwv_flow_api.id(14690191414518251222)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(7265541135136454249)
,p_branch_name=>'Back to Admin'
,p_branch_action=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.:RP::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(7265459038139302869)
,p_name=>'P35_AC_ENABLED'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(9795359519257031056)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Any authenticated user may access this application'
,p_source=>'return eba_qpoll_fw.get_preference_value(''ACCESS_CONTROL_ENABLED'');'
,p_source_type=>'FUNCTION_BODY'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_YES_NO'
,p_field_template=>wwv_flow_api.id(7253657488708174745)
,p_item_template_options=>'#DEFAULT#'
,p_inline_help_text=>'Choose <strong>No</strong> if all users are defined in the access control list. Choose <strong>Yes</strong> if authenticated users not in the access control list may also use this application.'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(7265459386153302870)
,p_name=>'P35_ACCESS_CONTROL_SCOPE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(9795359519257031056)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Treat authenticated users not in ACL as'
,p_source=>'eba_qpoll_fw.get_preference_value(''ACCESS_CONTROL_SCOPE'');'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'ACCESS CONTROL SCOPE1'
,p_lov=>'.'||wwv_flow_api.id(7265468430639302882)||'.'
,p_field_template=>wwv_flow_api.id(7253657488708174745)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--radioButtonGroup'
,p_lov_display_extra=>'YES'
,p_inline_help_text=>'This option determines the role of users that are not defined in the Access Control List (ACL).  A user with <strong>Reader</strong> role can only read application data. A user with <strong>Contributor</strong> role can read <strong>and write</strong'
||'> application data.'
,p_attribute_01=>'2'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(7265459788284302870)
,p_name=>'P35_USERNAME_FORMAT'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(9795359519257031056)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Use Email for Usernames'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if eba_qpoll_fw.get_preference_value(''USERNAME_FORMAT'') = ''EMAIL'' then ',
'  return ''Y'';',
'else',
'  return ''N'';',
'end if;'))
,p_source_type=>'FUNCTION_BODY'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_YES_NO'
,p_field_template=>wwv_flow_api.id(7253657488708174745)
,p_item_template_options=>'#DEFAULT#'
,p_inline_help_text=>'This option determines whether to use email addresses as the username format for users in the Access Control List (ACL).  This is useful when using Single Sign-On or LDAP authentication.'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(7265460163516302870)
,p_name=>'P35_HIDDEN_AC_ENABLED'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(9795359519257031056)
,p_use_cache_before_default=>'NO'
,p_source=>'return eba_qpoll_fw.get_preference_value(''ACCESS_CONTROL_ENABLED'');'
,p_source_type=>'FUNCTION_BODY'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(7265462884832302876)
,p_name=>'ENABLE ACCESS CONTROL CHANGED'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P35_AC_ENABLED'
,p_condition_element=>'P35_AC_ENABLED'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'Y'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(7265463405275302876)
,p_event_id=>wwv_flow_api.id(7265462884832302876)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P35_ACCESS_CONTROL_SCOPE'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(7265463936745302876)
,p_event_id=>wwv_flow_api.id(7265462884832302876)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P35_ACCESS_CONTROL_SCOPE'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(7265465187016302877)
,p_name=>'APPLY CHANGES WHEN AC ENABLED'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(7265458257133302867)
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
'($v(''P35_HIDDEN_AC_ENABLED'') !== $v(''P35_AC_ENABLED'') &&',
' $v(''P35_AC_ENABLED'') === ''Y'')'))
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(7265465662868302877)
,p_event_id=>wwv_flow_api.id(7265465187016302877)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_01=>'APPLY_CHANGES_AC_ENABLED'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(7265466049736302877)
,p_name=>'APPLY CHANGES WHEN AC DISABLED'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(7265458257133302867)
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
'($v(''P35_HIDDEN_AC_ENABLED'') !== $v(''P35_AC_ENABLED'') &&',
' $v(''P35_AC_ENABLED'') === ''N'')'))
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(7265466637195302878)
,p_event_id=>wwv_flow_api.id(7265466049736302877)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'Disabling Access Control means that all application features are available to any user who can authenticate. Are you sure you want to disable Access Control?'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(7265467109997302878)
,p_event_id=>wwv_flow_api.id(7265466049736302877)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_01=>'APPLY_CHANGES_AC_DISABLED'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(7265467540381302878)
,p_name=>'APPLY CHANGES WHEN AC UNCHANGED'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(7265458257133302867)
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'($v(''P35_HIDDEN_AC_ENABLED'') === $v(''P35_AC_ENABLED''))'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(7265468034580302878)
,p_event_id=>wwv_flow_api.id(7265467540381302878)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_01=>'APPLY_CHANGES_AC_UNCHANGED'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(7265464323265302877)
,p_name=>'Cancel Dialog'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(7265457855213302867)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(7265464832997302877)
,p_event_id=>wwv_flow_api.id(7265464323265302877)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(7265461709550302875)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'ACCESS CONTROL ENABLED'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    eba_qpoll_fw.set_preference_value (',
'        p_preference_name  => ''ACCESS_CONTROL_ENABLED'',',
'        p_preference_value => :P35_AC_ENABLED);',
'    eba_qpoll_fw.set_preference_value (',
'        p_preference_name  => ''ACCESS_CONTROL_SCOPE'',',
'        p_preference_value => (case ',
'                                   when :P35_AC_ENABLED = ''Y'' then :P35_ACCESS_CONTROL_SCOPE',
'                                   else ''ACL_ONLY'' ',
'                               end) );',
'',
'    -- Seed user table with current user as an administrator or set the current user as administrator',
'    declare',
'       l_count number;',
'    begin',
'        select count(*) ',
'          into l_count ',
'          from apex_appl_acl_users',
'         where application_id = :APP_ID',
'           and user_name_lc = lower(:APP_USER);',
'       if l_count = 0 then',
'          apex_acl.add_user_role(',
'             p_application_id => :APP_ID, ',
'             p_user_name      => :APP_USER, ',
'             p_role_static_id => ''ADMINISTRATOR'');  ',
'       else',
'          apex_acl.replace_user_roles (',
'             p_application_id  => :APP_ID,',
'             p_user_name       => :APP_USER,',
'             p_role_static_ids => wwv_flow_t_varchar2(''ADMINISTRATOR'') );',
'       end if;',
'    end;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Error trying to enable Access Control.'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'APPLY_CHANGES_AC_ENABLED'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_process_success_message=>'Access Control enabled. Access to the application and its features are defined by an administrator in the <a href="f?p=&APP_ID.:MANAGE_ACL:&APP_SESSION.:::RP::">Access Control List</a>.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(7265462120322302875)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'ACCESS CONTROL DISABLED'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    eba_qpoll_fw.set_preference_value (',
'        p_preference_name  => ''ACCESS_CONTROL_ENABLED'',',
'        p_preference_value => :P35_AC_ENABLED);',
'    eba_qpoll_fw.set_preference_value (',
'        p_preference_name  => ''ACCESS_CONTROL_SCOPE'',',
'        p_preference_value => (case ',
'                                   when :P35_AC_ENABLED = ''Y'' then :P35_ACCESS_CONTROL_SCOPE',
'                                   else ''ACL_ONLY'' ',
'                               end) );',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Error trying to disable Access Control.'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'APPLY_CHANGES_AC_DISABLED'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_process_success_message=>'Access Control disabled. All application features are now available to any user who can authenticate.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(7265462493802302875)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'ACCESS CONTROL UNCHANGED'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    eba_qpoll_fw.set_preference_value (',
'        p_preference_name  => ''ACCESS_CONTROL_ENABLED'',',
'        p_preference_value => :P35_AC_ENABLED);',
'    eba_qpoll_fw.set_preference_value (',
'        p_preference_name  => ''ACCESS_CONTROL_SCOPE'',',
'        p_preference_value => (case ',
'                                   when :P35_AC_ENABLED = ''Y'' then :P35_ACCESS_CONTROL_SCOPE',
'                                   else ''ACL_ONLY'' ',
'                               end) );',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Error trying to save Access Control Configuration.'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'APPLY_CHANGES_AC_UNCHANGED'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_process_success_message=>'Access Control Configuration saved.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(7265461266236302874)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set Username Format'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'eba_qpoll_fw.set_preference_value (',
'    p_preference_name  => ''USERNAME_FORMAT'',',
'    p_preference_value => case nvl(:P35_USERNAME_FORMAT,''N'') ',
'                            when ''Y'' then ''EMAIL''',
'                            when ''N'' then ''STRING'' ',
'                          end);'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.component_end;
end;
/
