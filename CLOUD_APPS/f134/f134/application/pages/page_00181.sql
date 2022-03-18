prompt --application/pages/page_00181
begin
--   Manifest
--     PAGE: 00181
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
 p_id=>181
,p_user_interface_id=>wwv_flow_api.id(5783577205373975152)
,p_name=>'Template Milestone'
,p_page_mode=>'MODAL'
,p_step_title=>'Template Milestone'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_api.id(5956243783292594674)
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(7306165779537991444)
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_last_upd_yyyymmddhh24miss=>'20190903143702'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(13630269136209828975)
,p_plug_name=>'Template Milestone'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--noUI:t-Region--scrollBody:t-Form--stretchInputs:t-Form--labelsAbove'
,p_plug_template=>wwv_flow_api.id(6781115417665890803)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(13630269857862828977)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(6781104860657890779)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(13630270269748828977)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(13630269857862828977)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(6781135529450890864)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(13630269787090828977)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(13630269857862828977)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>wwv_flow_api.id(6781135529450890864)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P181_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(13630269692643828977)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(13630269857862828977)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--gapLeft'
,p_button_template_id=>wwv_flow_api.id(6781135529450890864)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_condition=>'P181_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(13630269602284828977)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(13630269857862828977)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--gapLeft'
,p_button_template_id=>wwv_flow_api.id(6781135529450890864)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Milestone'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_condition=>'P181_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12288033858105109863)
,p_name=>'P181_PARENT_MILESTONE_ID'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(13630269136209828975)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Start From / Parent Milestone'
,p_source=>'PARENT_MILESTONE_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select m.name d, m.id r',
'from eba_proj_template_ms m',
'where template_id = :P181_TEMPLATE_ID',
'    and (:P181_ID is null or m.id != :P181_ID)',
'order by lower(m.name), eba_proj_template_fw.start_offset(m.id)'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'Start of Project'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(6899231875758612224)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'<p>If this milestone needs to start after another is completed, select the previous milestone here. The start date for the new milestone will be automatically calculated to match the end of the previous one.</p>'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13630272831264829362)
,p_name=>'P181_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(13630269136209828975)
,p_use_cache_before_default=>'NO'
,p_source=>'ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13630273207599829373)
,p_name=>'P181_TEMPLATE_ID'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(13630269136209828975)
,p_use_cache_before_default=>'NO'
,p_source=>'TEMPLATE_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13630293582320829374)
,p_name=>'P181_NAME'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(13630269136209828975)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Name'
,p_source=>'NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>72
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(6899231939251612225)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13630293933448829375)
,p_name=>'P181_DESCRIPTION'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(13630269136209828975)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Description'
,p_source=>'DESCRIPTION'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>4000
,p_cHeight=>4
,p_field_template=>wwv_flow_api.id(6899231875758612224)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13630294394529829376)
,p_name=>'P181_START_DATE_OFFSET'
,p_is_required=>true
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(13630269136209828975)
,p_use_cache_before_default=>'NO'
,p_item_default=>'0'
,p_prompt=>'Start Date Offset'
,p_source=>'START_DATE_OFFSET'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(6899231939251612225)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'<p>How many days after this Template Milestone''s "Start From" value (previous form element''s value) should start.'
,p_attribute_01=>'0'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13630294775487829376)
,p_name=>'P181_DUE_DATE_OFFSET'
,p_is_required=>true
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(13630269136209828975)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Length'
,p_placeholder=>'Number of Days'
,p_source=>'DUE_DATE_OFFSET'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(6899231939251612225)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'<p>How long (in days) the milestone should take.</p>'
,p_attribute_01=>'0'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13630295124269829377)
,p_name=>'P181_IS_MAJOR_YN'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(13630269136209828975)
,p_use_cache_before_default=>'NO'
,p_item_default=>'N'
,p_prompt=>'Major Milestone'
,p_source=>'IS_MAJOR_YN'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES NO RETURNS Y N'
,p_lov=>'.'||wwv_flow_api.id(9019252630556871632)||'.'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(6899231875758612224)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13686397257912790039)
,p_name=>'P181_OWNER'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(13630269136209828975)
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
,p_lov_null_text=>'- No Default Owner -'
,p_cHeight=>1
,p_read_only_when=>'P150_USER_ID'
,p_read_only_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_api.id(6899231875758612224)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'<p>The default owner role for this milestone. Any user(s) assigned to this role for the project will be listed as owners for this milestone.</p>'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(12288034328444109868)
,p_validation_name=>'Check for Cycles'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    if :P181_PARENT_MILESTONE_ID is null then',
'        return true;',
'    else',
'        for c1 in ( select id',
'                    from eba_proj_template_ms',
'                    where template_id = :P181_TEMPLATE_ID',
'                    start with id = :P181_PARENT_MILESTONE_ID',
'                    connect by prior parent_milestone_id = id ) loop',
'            if c1.id = :P181_ID then',
'                return false;',
'            end if;',
'        end loop;',
'    end if;',
'    return true;',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Invalid parent; milestones cannot depend on each other.'
,p_validation_condition=>'P181_ID'
,p_validation_condition_type=>'ITEM_IS_NOT_NULL'
,p_associated_item=>wwv_flow_api.id(12288033858105109863)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(13630270409484828977)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(13630270269748828977)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(13630271196558828984)
,p_event_id=>wwv_flow_api.id(13630270409484828977)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(12288034040764109865)
,p_name=>'Show/Hide Start Offset'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P181_PARENT_MILESTONE_ID'
,p_condition_element=>'P181_PARENT_MILESTONE_ID'
,p_triggering_condition_type=>'NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(12288034148655109866)
,p_event_id=>wwv_flow_api.id(12288034040764109865)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P181_START_DATE_OFFSET'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(12288034231887109867)
,p_event_id=>wwv_flow_api.id(12288034040764109865)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P181_START_DATE_OFFSET'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(13630297212384829381)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from EBA_PROJ_TEMPLATE_MS'
,p_attribute_02=>'EBA_PROJ_TEMPLATE_MS'
,p_attribute_03=>'P181_ID'
,p_attribute_04=>'ID'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(12288033969422109864)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Reparent on Delete'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    for c1 in ( select parent_milestone_id,',
'                    eba_proj_template_fw.start_offset( id ) offset',
'                from eba_proj_template_ms m',
'                where m.id = :P181_ID ) loop',
'        update eba_proj_template_ms m',
'            set start_date_offset = nvl2(c1.parent_milestone_id,null,c1.offset),',
'                parent_milestone_id = c1.parent_milestone_id',
'            where parent_milestone_id = :P181_ID;',
'    end loop;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(13630269787090828977)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(13630297550087829383)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of EBA_PROJ_TEMPLATE_MS'
,p_attribute_02=>'EBA_PROJ_TEMPLATE_MS'
,p_attribute_03=>'P181_ID'
,p_attribute_04=>'ID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(13630298011315829383)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(13630269787090828977)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(13630298335520829384)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_api.component_end;
end;
/
