prompt --application/pages/page_00091
begin
--   Manifest
--     PAGE: 00091
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
 p_id=>91
,p_user_interface_id=>wwv_flow_api.id(5783577205373975152)
,p_name=>'Access Control Configuration'
,p_step_title=>'Access Control Configuration'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(5956284394027947845)
,p_step_template=>wwv_flow_api.id(6781074610982890727)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(7306165779537991444)
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p><strong>Enabling Access Control</strong> allows the application and its features to be controlled by the <strong>Access Control List</strong>, as defined by the application administrator. This application has 4 access levels available that can be '
||'granted to a user; Super Admin, Administrator, Contributor and Reader. Please see the Manage Access Control List page for further details on what each level provides.</p>',
'',
'<p>In addition, if you want to make every authenticated user a ''Reader'' of your application, you can select Reader access for any authenticated user from the Access Control Scope configuration option. Similarly, selecting Contributor access for any a'
||'uthenticated user will provide contributor access to any user who can authenticate into your application.</p>',
'',
'<br>',
'<p><b>Disabling Access Control</b> means that access to the application and all of its features including Administration are open to any user who can authenticate to the application.</p>',
'<br>',
'<p>Note: Irrespective of whether Access Control is enabled or disabled, a user still has to authenticate successfully into the application.</p>'))
,p_last_upd_yyyymmddhh24miss=>'20190910104047'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(7868340092244218938)
,p_plug_name=>'Access Control Configuration'
,p_region_template_options=>'#DEFAULT#:t-Region--hiddenOverflow:t-Region--hideHeader'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(6781115417665890803)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(7868341295479218939)
,p_plug_name=>'About Access Control'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(6781104626075890777)
,p_plug_display_sequence=>2
,p_plug_new_grid_column=>false
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'htp.prn(replace(',
'    apex_lang.message(''AC_CONFIGURATION_INFO''),',
'    ''#IMAGE_PREFIX''||''#'',',
'    :image_prefix));'))
,p_plug_source_type=>'NATIVE_PLSQL'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(7882067286390148715)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(6781117976757890807)
,p_plug_display_sequence=>30
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(8972392840601050532)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(6781135716305890867)
,p_plug_display_condition_type=>'NEVER'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(7868340287400218938)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(6212459901559585507)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(6781135529450890864)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_redirect_url=>'f?p=&APP_ID.:27:&SESSION.::&DEBUG.:::'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(7868340492583218938)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(6212459901559585507)
,p_button_name=>'APPLY_CHANGES'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(6781135529450890864)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(7868344401503218950)
,p_branch_action=>'f?p=&APP_ID.:27:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_branch_comment=>'Created 18-NOV-2011 11:02 by ANTHONY'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(7868340705558218938)
,p_name=>'P91_ACCESS_CONTROL_SCOPE'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(7868340092244218938)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Access Control Scope'
,p_source=>'eba_proj_fw.get_preference_value(''ACCESS_CONTROL_SCOPE'');'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'ACCESS CONTROL SCOPE'
,p_lov=>'.'||wwv_flow_api.id(7868344503495218950)||'.'
,p_cSize=>64
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(6781134673650890856)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'1'
,p_attribute_02=>'NONE'
,p_attribute_04=>'VERTICAL'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(7868340887320218939)
,p_name=>'P91_AC_ENABLED'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(7868340092244218938)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Enable Access Control'
,p_source=>'return eba_proj_fw.get_preference_value(''ACCESS_CONTROL_ENABLED'');'
,p_source_type=>'FUNCTION_BODY'
,p_source_language=>'PLSQL'
,p_display_as=>'PLUGIN_COM.ORACLE.APEX.SIMPLE_CHECKBOX'
,p_cSize=>64
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(6781134673650890856)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(7868341084978218939)
,p_name=>'P91_HIDDEN_AC_ENABLED'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(7868340092244218938)
,p_use_cache_before_default=>'NO'
,p_source=>'return eba_proj_fw.get_preference_value(''ACCESS_CONTROL_ENABLED'');'
,p_source_type=>'FUNCTION_BODY'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(7868342308059218946)
,p_name=>'ENABLE ACCESS CONTROL CHANGED'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P91_AC_ENABLED'
,p_condition_element=>'P91_AC_ENABLED'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'Y'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(7868342609549218947)
,p_event_id=>wwv_flow_api.id(7868342308059218946)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P91_ACCESS_CONTROL_SCOPE'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(7868342791495218949)
,p_event_id=>wwv_flow_api.id(7868342308059218946)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P91_ACCESS_CONTROL_SCOPE'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(7868342897375218949)
,p_name=>'APPLY CHANGES WHEN AC ENABLED'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(7868340492583218938)
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
'($v(''P91_HIDDEN_AC_ENABLED'') !== $v(''P91_AC_ENABLED'') &&',
' $v(''P91_AC_ENABLED'') === ''Y'')',
''))
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(7868343200007218949)
,p_event_id=>wwv_flow_api.id(7868342897375218949)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_01=>'APPLY_CHANGES_AC_ENABLED'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(7868343280877218949)
,p_name=>'APPLY CHANGES WHEN AC DISABLED'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(7868340492583218938)
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
'($v(''P91_HIDDEN_AC_ENABLED'') !== $v(''P91_AC_ENABLED'') &&',
' $v(''P91_AC_ENABLED'') === ''N'')',
''))
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(7868343609602218950)
,p_event_id=>wwv_flow_api.id(7868343280877218949)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'Disabling Access Control means that all application features are available to any user who can authenticate. Are you sure you want to disable Access Control?'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(7868343794228218950)
,p_event_id=>wwv_flow_api.id(7868343280877218949)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_01=>'APPLY_CHANGES_AC_DISABLED'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(7868343881022218950)
,p_name=>'APPLY CHANGES WHEN AC UNCHANGED'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(7868340492583218938)
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
'($v(''P91_HIDDEN_AC_ENABLED'') === $v(''P91_AC_ENABLED''))',
''))
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(7868344195090218950)
,p_event_id=>wwv_flow_api.id(7868343881022218950)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_01=>'APPLY_CHANGES_AC_UNCHANGED'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(7868341686538218940)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'ACCESS CONTROL ENABLED'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    eba_proj_fw.set_preference_value (',
'        p_preference_name  => ''ACCESS_CONTROL_ENABLED'',',
'        p_preference_value => :P91_AC_ENABLED);',
'    eba_proj_fw.set_preference_value (',
'        p_preference_name  => ''ACCESS_CONTROL_SCOPE'',',
'        p_preference_value => (case ',
'                                   when :P91_AC_ENABLED = ''Y'' then :P91_ACCESS_CONTROL_SCOPE',
'                                   else ''ACL_ONLY''  ',
'                               end) );',
'    -- Seed user table with current user as an administrator or set the current user as administrator',
'    declare',
'       l_count number;',
'    begin',
'        select count(*) ',
'            into l_count ',
'        from eba_proj_status_users',
'        where username = :APP_USER;',
'        if l_count = 0 then',
'            insert into eba_proj_status_users(username, access_level_id) values (:APP_USER, 3);   ',
'        else',
'            update eba_proj_status_users',
'            set access_level_id = 3',
'            where username = :APP_USER;',
'        end if;',
'    end;',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Error trying to enable Access Control.'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'APPLY_CHANGES_AC_ENABLED'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_process_success_message=>'Access Control enabled. Access to the application and its features are defined by an administrator in the <a href="f?p=&APP_ID.:MANAGE_ACL:&APP_SESSION.:::RP::">Access Control List</a>.'
,p_security_scheme=>wwv_flow_api.id(7306165779537991444)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(7868341879947218941)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'ACCESS CONTROL DISABLED'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    eba_proj_fw.set_preference_value (',
'        p_preference_name  => ''ACCESS_CONTROL_ENABLED'',',
'        p_preference_value => :P91_AC_ENABLED);',
'    eba_proj_fw.set_preference_value (',
'        p_preference_name  => ''ACCESS_CONTROL_SCOPE'',',
'        p_preference_value => (case ',
'                                   when :P91_AC_ENABLED = ''Y'' then :P91_ACCESS_CONTROL_SCOPE',
'                                   else ''ACL_ONLY'' ',
'                               end) );',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Error trying to disable Access Control.'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'APPLY_CHANGES_AC_DISABLED'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_process_success_message=>'Access Control disabled. All application features are now available to any user who can authenticate.'
,p_security_scheme=>wwv_flow_api.id(7306165779537991444)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(7868342085948218942)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'ACCESS CONTROL UNCHANGED'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    eba_proj_fw.set_preference_value (',
'        p_preference_name  => ''ACCESS_CONTROL_ENABLED'',',
'        p_preference_value => :P91_AC_ENABLED);',
'    eba_proj_fw.set_preference_value (',
'        p_preference_name  => ''ACCESS_CONTROL_SCOPE'',',
'        p_preference_value => (case ',
'                                   when :P91_AC_ENABLED = ''Y'' then :P91_ACCESS_CONTROL_SCOPE',
'                                   else ''ACL_ONLY'' ',
'                               end) );',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Error trying to save Access Control Configuration.'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'APPLY_CHANGES_AC_UNCHANGED'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_process_success_message=>'Access Control Configuration saved.'
,p_security_scheme=>wwv_flow_api.id(7306165779537991444)
);
wwv_flow_api.component_end;
end;
/
