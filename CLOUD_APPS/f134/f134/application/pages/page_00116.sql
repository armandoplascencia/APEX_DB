prompt --application/pages/page_00116
begin
--   Manifest
--     PAGE: 00116
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
 p_id=>116
,p_user_interface_id=>wwv_flow_api.id(5783577205373975152)
,p_name=>'Add Status Report'
,p_page_mode=>'MODAL'
,p_step_title=>'Add Status Report'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_api.id(5956284291949947273)
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_step_template=>wwv_flow_api.id(6781101375889890768)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(7306166303644991446)
,p_dialog_attributes=>'resizable:true'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_last_upd_yyyymmddhh24miss=>'20190905142357'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(6170192993088131081)
,p_plug_name=>'Status Report'
,p_region_template_options=>'#DEFAULT#:t-Form--stretchInputs'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(6781104626075890777)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(6170196011161131089)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(6781117976757890807)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(8972392840601050532)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(6781135716305890867)
,p_plug_display_condition_type=>'NEVER'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(11347040742093087569)
,p_plug_name=>'Buttons Container'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(6781104860657890779)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(6170193396554131082)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(11347040742093087569)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(6781135529450890864)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(6170193580090131082)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(11347040742093087569)
,p_button_name=>'CREATE_ANOTHER'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(6781135529450890864)
,p_button_image_alt=>'Add and Add Another'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'P116_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_security_scheme=>wwv_flow_api.id(7306166303644991446)
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(6170193781541131082)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(11347040742093087569)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--gapLeft'
,p_button_template_id=>wwv_flow_api.id(6781135529450890864)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Status Report'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'P116_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_security_scheme=>wwv_flow_api.id(7306166303644991446)
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(6170197399619131090)
,p_branch_action=>'f?p=&APP_ID.:116:&SESSION.::&DEBUG.:116:P116_ID,P116_PROJECT_ID:,&P116_PROJECT_ID.'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(6170193580090131082)
,p_branch_sequence=>10
,p_branch_comment=>'Created 03-OCT-2011 10:23 by DAVID.GALE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6170194200570131083)
,p_name=>'P116_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(6170192993088131081)
,p_use_cache_before_default=>'NO'
,p_source=>'ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6170194382228131083)
,p_name=>'P116_PROJECT_ID'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(6170192993088131081)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Project'
,p_source=>'PROJECT_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'SELECT PROJECT'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select d, r',
'from ( select ltrim(replace(SYS_CONNECT_BY_PATH(project, '':TREESEP:''), '':TREESEP:'','' / ''), ''/ '') d,',
'           id r',
'       from eba_proj_status',
'       start with parent_project_id is null',
'           connect by prior id = parent_project_id',
'           order siblings by project )',
'union all',
'select ps.project d, ps.id r',
'from eba_proj_status ps',
'where ps.parent_project_id is not null',
'    and not exists ( select null',
'                     from eba_proj_status p2',
'                     where p2.id = ps.parent_project_id );'))
,p_cSize=>30
,p_read_only_when=>'P116_ID'
,p_read_only_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_api.id(6781134744367890857)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6170194587057131085)
,p_name=>'P116_STATUS_UPDATE'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(6170192993088131081)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Status Report'
,p_source=>'STATUS_UPDATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>80
,p_cMaxlength=>32000
,p_cHeight=>14
,p_field_template=>wwv_flow_api.id(6781134744367890857)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6170194782492131085)
,p_name=>'P116_UPDATE_OWNER'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(6170192993088131081)
,p_use_cache_before_default=>'NO'
,p_item_default=>'return lower(:APP_USER);'
,p_item_default_type=>'FUNCTION_BODY'
,p_item_default_language=>'PLSQL'
,p_source=>'UPDATE_OWNER'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6170194989233131086)
,p_name=>'P116_UPDATE_DATE'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(6170192993088131081)
,p_use_cache_before_default=>'NO'
,p_item_default=>'current_date'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Submission Date'
,p_format_mask=>'DD-MON-RR'
,p_source=>'UPDATE_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>20
,p_cMaxlength=>30
,p_field_template=>wwv_flow_api.id(6781134744367890857)
,p_item_template_options=>'#DEFAULT#'
,p_restricted_characters=>'WEB_SAFE'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6170195187385131086)
,p_name=>'P116_VIEWABLE_BY'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(6170192993088131081)
,p_use_cache_before_default=>'NO'
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'  r varchar2(512) := ''Submitter and Project Members'';',
'begin',
'for c1 in (',
'select preference_value',
'from eba_proj_preferences',
'where preference_name = ''LAST_STATUS_RPT_VIEWABLE_BY'' and',
'     created_by = :APP_USER) loop',
'   r := c1.preference_value;',
'end loop;',
'return r;',
'end;'))
,p_item_default_type=>'FUNCTION_BODY'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Viewable By'
,p_source=>'VIEWABLE_BY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'STATUS RPTS VIEWABLE BY'
,p_lov=>'.'||wwv_flow_api.id(6170164080174692565)||'.'
,p_field_template=>wwv_flow_api.id(6781134744367890857)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'U'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'3'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6170195401433131086)
,p_name=>'P116_EDITABLE_BY'
,p_is_required=>true
,p_item_sequence=>45
,p_item_plug_id=>wwv_flow_api.id(6170192993088131081)
,p_use_cache_before_default=>'NO'
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'  r varchar2(512) := ''Submitter'';',
'begin',
'for c1 in (',
'select preference_value',
'from eba_proj_preferences',
'where preference_name = ''LAST_STATUS_RPT_EDITABLE_BY'' and',
'     created_by = :APP_USER) loop',
'   r := c1.preference_value;',
'end loop;',
'return r;',
'end;'))
,p_item_default_type=>'FUNCTION_BODY'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Editable By'
,p_source=>'EDITABLE_BY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'STATUS RPTS EDITABLE BY'
,p_lov=>'.'||wwv_flow_api.id(6170165187793694750)||'.'
,p_field_template=>wwv_flow_api.id(6781134744367890857)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'U'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'3'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6173032202292932155)
,p_name=>'P116_STATUS_TITLE'
,p_is_required=>true
,p_item_sequence=>25
,p_item_plug_id=>wwv_flow_api.id(6170192993088131081)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Title'
,p_source=>'STATUS_TITLE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>80
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(6781134744367890857)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(6172701199336366340)
,p_validation_name=>'P116_EDITABLE_BY'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P116_VIEWABLE_BY = ''Submitter'' and',
'   :P116_EDITABLE_BY != ''Submitter'' then',
'   return false;',
'elsif :P116_VIEWABLE_BY = ''Submitter and Project Members'' and',
'   :P116_EDITABLE_BY not in (''Submitter'',''Submitter and Project Members'') then',
'   return false;',
'else',
'   return true;',
'end if;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Status Report cannot be editable by users that cannot view it.'
,p_associated_item=>wwv_flow_api.id(6170195401433131086)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(11347040828880087570)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(6170193396554131082)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(11347040991963087571)
,p_event_id=>wwv_flow_api.id(11347040828880087570)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(6170196292970131089)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from EBA_PROJ_STATUS_RPTS'
,p_attribute_02=>'EBA_PROJ_STATUS_RPTS'
,p_attribute_03=>'P116_ID'
,p_attribute_04=>'ID'
,p_attribute_07=>'ROW_VERSION_NUMBER'
,p_attribute_11=>'I:U:D'
,p_process_error_message=>'Unable to fetch row.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(6170196485674131089)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of EBA_PROJ_STATUS_RPTS'
,p_attribute_02=>'EBA_PROJ_STATUS_RPTS'
,p_attribute_03=>'P116_ID'
,p_attribute_04=>'ID'
,p_attribute_07=>'ROW_VERSION_NUMBER'
,p_attribute_11=>'I'
,p_attribute_12=>'Y'
,p_process_error_message=>'Unable to process row of table EBA_PROJ_STATUS_RPTS.'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(6170281199443582659)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'save prefs'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'eba_proj_fw.set_preference_value ( ',
'   p_preference_name => ''LAST_STATUS_RPT_VIEWABLE_BY'', ',
'   p_preference_value => :P116_VIEWABLE_BY );',
'',
'eba_proj_fw.set_preference_value ( ',
'   p_preference_name => ''LAST_STATUS_RPT_EDITABLE_BY'', ',
'   p_preference_value => :P116_EDITABLE_BY );'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(7577519207821437349)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(6170193781541131082)
,p_security_scheme=>wwv_flow_api.id(7306166303644991446)
);
wwv_flow_api.component_end;
end;
/
