prompt --application/pages/page_00014
begin
--   Manifest
--     PAGE: 00014
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
 p_id=>14
,p_user_interface_id=>wwv_flow_api.id(14434115216807266717)
,p_name=>'&APPLICATION_TITLE. - Request Access'
,p_alias=>'REQUEST-ACCESS'
,p_step_title=>'&APPLICATION_TITLE. - Request Access'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(14008949493801359421)
,p_step_template=>wwv_flow_api.id(14690156334092251112)
,p_page_template_options=>'#DEFAULT#'
,p_required_patch=>wwv_flow_api.id(14004324400869192396)
,p_page_is_public_y_n=>'Y'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'ALLAN'
,p_last_upd_yyyymmddhh24miss=>'20210518144208'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(14004246178191215664)
,p_plug_name=>'Request Access'
,p_region_template_options=>'#DEFAULT#:t-Alert--wizard:t-Alert--defaultIcons:t-Alert--info:t-Form--stretchInputs'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(14690160537466251126)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>To access the &APPLICATION_TITLE. application you need to be an authorized user. If you are not already authorized, please submit a request using the form below.</p>',
'<br>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(14093462081335855762)
,p_plug_name=>'hide nobody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_source=>'<style>.userBlock{display: none !important} .logoBarNav {padding-top: 8px;visibility: hidden;}</style>'
,p_translate_title=>'N'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'FUNCTION_BODY'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if apex_authentication.is_authenticated then',
'   return false;',
'else',
'   return true;',
'end if;'))
,p_plug_display_when_cond2=>'PLSQL'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(14004246787542218386)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(14004246178191215664)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(14690191414518251222)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:&LAST_VIEW.:&SESSION.::&DEBUG.:::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(14004254495609353100)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(14004246178191215664)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(14690191414518251222)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Request Access'
,p_button_position=>'REGION_TEMPLATE_CREATE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(14004258802744477402)
,p_branch_action=>'f?p=&APP_ID.:51:&SESSION.::&DEBUG.:::'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14004253507193308279)
,p_name=>'P14_EMAIL_ADDRESS'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(14004246178191215664)
,p_use_cache_before_default=>'NO'
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if regexp_instr(:APP_USER,''^[-!#$%&''''''''*+/0-9=?A-Z^_a-z{|}~](\.?[-!#$%&''''''''*+/0-9=?A-Z^_a-z{|}~])*@(-?[a-zA-Z0-9+])+(\.(-?[a-zA-Z0-9+])*)+$'')',
'= 1',
'   then return :APP_USER;',
'end if;'))
,p_item_default_type=>'FUNCTION_BODY'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Email Address'
,p_source=>'EMAIL_ADDRESS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>64
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(14690190733279251214)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Please enter the email address we will use to send the results of your account request to. This field is limited to 255 characters.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14004254002867325419)
,p_name=>'P14_JUSTIFICATION'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(14004246178191215664)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Justification'
,p_source=>'JUSTIFICATION'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>80
,p_cMaxlength=>4000
,p_cHeight=>3
,p_field_template=>wwv_flow_api.id(14690190733279251214)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Please tell us why you would like access to &APPLICATION_TITLE.. This field is limited to 4,000 characters.'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14004256098517373020)
,p_name=>'P14_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(14004246178191215664)
,p_use_cache_before_default=>'NO'
,p_source=>'ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14004256292910375636)
,p_name=>'P14_STATUS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(14004246178191215664)
,p_use_cache_before_default=>'NO'
,p_item_default=>'pending'
,p_source=>'STATUS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14004463180262186112)
,p_name=>'P14_USERNAME'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(14004246178191215664)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Username'
,p_source=>'USERNAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>64
,p_cMaxlength=>255
,p_display_when=>'eba_qpoll_fw.get_preference_value(''USERNAME_FORMAT'') = ''STRING'''
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_field_template=>wwv_flow_api.id(14690190733279251214)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Please enter the username you would like to login with. This field is restricted to 255 characters.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(14006112487250832377)
,p_computation_sequence=>10
,p_computation_item=>'P14_USERNAME'
,p_computation_type=>'EXPRESSION'
,p_computation_language=>'PLSQL'
,p_computation=>'upper(:P14_EMAIL_ADDRESS)'
,p_compute_when=>'eba_qpoll_fw.get_preference_value(''USERNAME_FORMAT'') = ''EMAIL'''
,p_compute_when_text=>'PLSQL'
,p_compute_when_type=>'EXPRESSION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(14004257389434407621)
,p_validation_name=>'P14_EMAIL_ADDRESS Unique'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'for c1 in (',
'   select 1 ',
'     from eba_qpoll_access_requests',
'    where email_address = lower(:P14_EMAIL_ADDRESS)',
'      and status = ''pending''',
') loop',
'   return false;',
'end loop;',
'',
'return true;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Outstanding request for this email address already exists.'
,p_when_button_pressed=>wwv_flow_api.id(14004254495609353100)
,p_associated_item=>wwv_flow_api.id(14004253507193308279)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(14004258001283417303)
,p_validation_name=>'P14_JUSTIFICATION <= 4000'
,p_validation_sequence=>20
,p_validation=>'length(:P14_JUSTIFICATION) <= 4000'
,p_validation2=>'PLSQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>'Justification must be less than 4000 characters.'
,p_associated_item=>wwv_flow_api.id(14004254002867325419)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(14004258207741429548)
,p_validation_name=>'P14_EMAIL_ADDRESS valid format'
,p_validation_sequence=>30
,p_validation=>'P14_EMAIL_ADDRESS'
,p_validation2=>'^[-!#$%&''''''''*+/0-9=?A-Z^_a-z{|}~](\.?[-!#$%&''''''''*+/0-9=?A-Z^_a-z{|}~])*@(-?[a-zA-Z0-9+])+(\.(-?[a-zA-Z0-9+])*)+$'
,p_validation_type=>'REGULAR_EXPRESSION'
,p_error_message=>'Email Address is not in a valid format.'
,p_associated_item=>wwv_flow_api.id(14004253507193308279)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(14004258401474447640)
,p_validation_name=>'P14_EMAIL_ADDRESS already has proper access'
,p_validation_sequence=>40
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'   l_user_found       varchar2(1) := ''N'';',
'   l_apex_user_found  varchar2(1) := ''N'';',
'begin',
'   for c1 in (',
'      select 1',
'        from apex_appl_acl_users',
'       where application_id = :APP_ID',
'         and user_name_lc = lower(:P14_EMAIL_ADDRESS)',
'   ) loop',
'      l_user_found := ''Y'';',
'   end loop;',
'',
'   -- not an application user',
'   if l_user_found = ''N'' then',
'      return true;',
'   end if;',
'',
'   -- only if is an application user',
'   for c1 in (',
'      select 1',
'        from apex_applications',
'       where application_id = :APP_ID',
'         and authentication_scheme_type = ''Application Express Accounts''',
'   ) loop',
'      for c2 in (',
'         select 1',
'           from apex_workspace_apex_users',
'          where lower(user_name) = lower(:P14_EMAIL_ADDRESS)',
'      ) loop',
'         -- already have apex account',
'         return false;',
'      end loop;',
'',
'      return true;',
'   end loop;',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'This Email Address already has access to this self-service system.'
,p_when_button_pressed=>wwv_flow_api.id(14004254495609353100)
,p_associated_item=>wwv_flow_api.id(14004253507193308279)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(14004463491464196062)
,p_validation_name=>'P14_USERNAME not null'
,p_validation_sequence=>50
,p_validation=>'P14_USERNAME'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#LABEL# must have some value.'
,p_validation_condition=>'eba_qpoll_fw.get_preference_value(''USERNAME_FORMAT'') = ''STRING'''
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'EXPRESSION'
,p_when_button_pressed=>wwv_flow_api.id(14004254495609353100)
,p_associated_item=>wwv_flow_api.id(14004463180262186112)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(14004258491079474822)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row for EBA_QPOLL_ACCESS_REQUESTS'
,p_attribute_02=>'EBA_QPOLL_ACCESS_REQUESTS'
,p_attribute_03=>'P14_ID'
,p_attribute_04=>'ID'
,p_attribute_11=>'I'
,p_attribute_12=>'Y'
,p_process_error_message=>'#SQLERRM#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Your access request has been submitted. You will receive an email with login credentials upon approval.'
);
wwv_flow_api.component_end;
end;
/
