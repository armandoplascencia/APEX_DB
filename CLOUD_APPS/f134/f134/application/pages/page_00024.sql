prompt --application/pages/page_00024
begin
--   Manifest
--     PAGE: 00024
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
 p_id=>24
,p_user_interface_id=>wwv_flow_api.id(5783577205373975152)
,p_name=>'Issue'
,p_page_mode=>'MODAL'
,p_step_title=>'Issue'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_api.id(5956243887448595899)
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_required_role=>wwv_flow_api.id(7306166303644991446)
,p_required_patch=>wwv_flow_api.id(7672710716776835218)
,p_dialog_attributes=>'resizable:true'
,p_protection_level=>'C'
,p_deep_linking=>'Y'
,p_help_text=>'No help is available for this page.'
,p_last_upd_yyyymmddhh24miss=>'20190918085702'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(6478886830039619373)
,p_plug_name=>'buttons'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--noUI'
,p_plug_template=>wwv_flow_api.id(6781104860657890779)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(7672826919564869758)
,p_plug_name=>'Issue'
,p_region_template_options=>'#DEFAULT#:t-Form--stretchInputs:t-Form--labelsAbove'
,p_plug_template=>wwv_flow_api.id(6781104626075890777)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(7672827556968869773)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(6478886830039619373)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(6781135529450890864)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(7672827446218869773)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(6478886830039619373)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>wwv_flow_api.id(6781135529450890864)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P24_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_security_scheme=>wwv_flow_api.id(7306166303644991446)
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(7672827295651869773)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(6478886830039619373)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--gapLeft'
,p_button_template_id=>wwv_flow_api.id(6781135529450890864)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Issue'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_condition=>'P24_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_security_scheme=>wwv_flow_api.id(7306166303644991446)
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(7672827375139869773)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(6478886830039619373)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--gapLeft'
,p_button_template_id=>wwv_flow_api.id(6781135529450890864)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_condition=>'P24_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_security_scheme=>wwv_flow_api.id(7306166303644991446)
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(820203988417460384)
,p_name=>'P24_TAGS'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(7672826919564869758)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Tags'
,p_source=>'TAGS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select tag',
'  from eba_proj_tags_type_sum',
' where content_type = ''STATUS_ISSUES''',
' order by 1'))
,p_lov_display_null=>'YES'
,p_cSize=>95
,p_cMaxlength=>4000
,p_tag_attributes=>'placeholder="Enter tags separated by commas"'
,p_field_template=>wwv_flow_api.id(6781134673650890856)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'Y'
,p_attribute_04=>'Y'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
,p_attribute_11=>','
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3945326928206585389)
,p_name=>'P24_CATEGORY'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(7672826919564869758)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Category'
,p_source=>'CAT_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'ISSUE CATEGORIES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select name as d,',
'       id as r',
'  from EBA_PROJ_ISSUE_CATS',
' where is_active_yn = ''Y''',
' order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select -'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(6781134673650890856)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_required_patch=>wwv_flow_api.id(4036491964090119980)
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3945327087085585390)
,p_name=>'P24_REF_NUM'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(7672826919564869758)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Reference Identifier'
,p_source=>'REF_NUM'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(6781134673650890856)
,p_item_template_options=>'#DEFAULT#'
,p_required_patch=>wwv_flow_api.id(4036492193169131049)
,p_help_text=>'Enter an identifier from another tracking system here.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(4245855115569313004)
,p_name=>'P24_CURRENT_USER'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(7672826919564869758)
,p_source=>'lower(:APP_USER)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(7672829608109869895)
,p_name=>'P24_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(7672826919564869758)
,p_use_cache_before_default=>'NO'
,p_source=>'ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(7672829841652869916)
,p_name=>'P24_PROJECT_ID'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(7672826919564869758)
,p_use_cache_before_default=>'NO'
,p_item_default=>':P92_ID'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_source=>'PROJECT_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(7672830220534869917)
,p_name=>'P24_ISSUE'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(7672826919564869758)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Issue'
,p_source=>'ISSUE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>80
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(6781134744367890857)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(7672830703323869918)
,p_name=>'P24_ISSUE_DETAIL'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(7672826919564869758)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Description'
,p_source=>'ISSUE_DETAIL'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>80
,p_cMaxlength=>4000
,p_cHeight=>4
,p_field_template=>wwv_flow_api.id(6781134673650890856)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(7672831018338869918)
,p_name=>'P24_ISSUE_OWNER'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(7672826919564869758)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Issue Owner'
,p_post_element_text=>' &nbsp; <small>[<a href="javascript:$s(''P24_ISSUE_OWNER'',$v(''P24_CURRENT_USER''));">Me</a>]</small>'
,p_source=>'ISSUE_OWNER'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_AUTO_COMPLETE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select lower(u.username)',
'from eba_proj_status_users u',
'order by lower(u.username)'))
,p_cSize=>80
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(6781134673650890856)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_restricted_characters=>'WEB_SAFE'
,p_attribute_01=>'CONTAINS_IGNORE'
,p_attribute_04=>'N'
,p_attribute_06=>'N'
,p_attribute_07=>'Y'
,p_attribute_08=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(7672831457926869919)
,p_name=>'P24_ISSUE_LEVEL'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(7672826919564869758)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Level'
,p_source=>'ISSUE_LEVEL'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'ISSUE_LEVELS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select case',
'           when description is not null then',
'               name || '' - '' || description',
'           else',
'               name',
'       end as d,',
'       id as r',
'  from EBA_PROJ_ISSUE_LEVELS',
' where is_active_yn = ''Y''',
' order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select -'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(6781134673650890856)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(7672831817687869920)
,p_name=>'P24_LINK_01'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(7672826919564869758)
,p_use_cache_before_default=>'NO'
,p_prompt=>'URL'
,p_source=>'LINK_01'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>80
,p_cMaxlength=>4000
,p_field_template=>wwv_flow_api.id(6781134673650890856)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_help_text=>'Enter an optional url to link this issue to.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(7672832655256869921)
,p_name=>'P24_IS_OPEN'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(7672826919564869758)
,p_use_cache_before_default=>'NO'
,p_item_default=>'Y'
,p_prompt=>'Status'
,p_source=>'IS_OPEN'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'ISSUES STATUS OPEN CLOSED'
,p_lov=>'.'||wwv_flow_api.id(19976168381673757918)||'.'
,p_field_template=>wwv_flow_api.id(6781134673650890856)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'2'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15821180952634005901)
,p_name=>'P24_OWNER_ROLE_ID'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(7672826919564869758)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Assign to Role'
,p_source=>'OWNER_ROLE_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'PROJECT ROLES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select name as d,',
'       id as r',
'  from eba_proj_roles',
' order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- No Role -'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(6781134673650890856)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Use this to assign an issue''s owner based on the roles of the people associated with the project. If a role is selected here, any people with that role for this project will be listed as this issue''s owner(s).</p>',
'<p>Leave blank to manually assign an owner to the issue.</p>'))
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(17313140914500353077)
,p_name=>'P24_RESOLUTION'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(7672826919564869758)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Resolution / Mitigation'
,p_source=>'RESOLUTION'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>80
,p_cMaxlength=>4000
,p_cHeight=>4
,p_field_template=>wwv_flow_api.id(6781134744367890857)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(17635511595462690829)
,p_validation_name=>'Resolution Not Null when closing issue'
,p_validation_sequence=>10
,p_validation=>'P24_RESOLUTION'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Resolution text must be provided before closing an issue.'
,p_validation_condition=>'P24_IS_OPEN'
,p_validation_condition2=>'N'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(4245854249624312995)
,p_validation_name=>'Role or Owner must be assigned'
,p_validation_sequence=>20
,p_validation=>'not (:P24_OWNER_ROLE_ID is null and :P24_ISSUE_OWNER is null)'
,p_validation2=>'PLSQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>'The issue must be assigned to a project member role or a specific issue owner.'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(446343489400563596)
,p_validation_name=>'Valid Characters in Tags'
,p_validation_sequence=>30
,p_validation=>'not regexp_like( :P24_TAGS, ''[:;#\/\\\?\&]'' )'
,p_validation2=>'PLSQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>'Tags may not contain the following characters: : ; \ / ? &'
,p_validation_condition=>'CREATE,SAVE'
,p_validation_condition_type=>'REQUEST_IN_CONDITION'
,p_associated_item=>wwv_flow_api.id(820203988417460384)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(6478886965144619374)
,p_name=>'Cancel'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(7672827556968869773)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(6478887073355619375)
,p_event_id=>wwv_flow_api.id(6478886965144619374)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(15820402892182766030)
,p_name=>'Show/Hide Owner'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P24_OWNER_ROLE_ID'
,p_condition_element=>'P24_OWNER_ROLE_ID'
,p_triggering_condition_type=>'NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(15820402970450766031)
,p_event_id=>wwv_flow_api.id(15820402892182766030)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P24_ISSUE_OWNER'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(15820403023366766032)
,p_event_id=>wwv_flow_api.id(15820402892182766030)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P24_ISSUE_OWNER'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(21157152958785596476)
,p_name=>'Show Resolution'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P24_IS_OPEN'
,p_condition_element=>'P24_IS_OPEN'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'N'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(21157153065708596477)
,p_event_id=>wwv_flow_api.id(21157152958785596476)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P24_RESOLUTION'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(21157153115377596478)
,p_event_id=>wwv_flow_api.id(21157152958785596476)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P24_RESOLUTION'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(7672835846376869930)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from EBA_PROJ_STATUS_ISSUES'
,p_attribute_02=>'EBA_PROJ_STATUS_ISSUES'
,p_attribute_03=>'P24_ID'
,p_attribute_04=>'ID'
,p_attribute_05=>'P24_PROJECT_ID'
,p_attribute_06=>'PROJECT_ID'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(7672836293161869931)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of EBA_PROJ_STATUS_ISSUES'
,p_attribute_02=>'EBA_PROJ_STATUS_ISSUES'
,p_attribute_03=>'P24_ID'
,p_attribute_04=>'ID'
,p_attribute_05=>'P24_PROJECT_ID'
,p_attribute_06=>'PROJECT_ID'
,p_attribute_09=>'P24_ID'
,p_attribute_10=>'P24_PROJECT_ID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(7672836518605869932)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(7672827446218869773)
,p_process_when_type=>'NEVER'
,p_security_scheme=>wwv_flow_api.id(7306166303644991446)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(12771732519397219931)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.component_end;
end;
/
