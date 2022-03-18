prompt --application/pages/page_00157
begin
--   Manifest
--     PAGE: 00157
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
 p_id=>157
,p_user_interface_id=>wwv_flow_api.id(5783577205373975152)
,p_name=>'Project Maintenance'
,p_page_mode=>'MODAL'
,p_step_title=>'Project Maintenance'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_api.id(5956243783292594674)
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(7306165779537991444)
,p_dialog_height=>'350'
,p_dialog_width=>'450'
,p_dialog_attributes=>'resizable:true'
,p_dialog_chained=>'N'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_last_upd_yyyymmddhh24miss=>'20190401160100'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(12054082620394004084)
,p_plug_name=>'Project Maintenance'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(6781104626075890777)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(12054083402788004085)
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
 p_id=>wwv_flow_api.id(12054103811530004086)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(12054083402788004085)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(6781135529450890864)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(13414316220344285762)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(12054083402788004085)
,p_button_name=>'DELETE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>wwv_flow_api.id(6781135529450890864)
,p_button_image_alt=>'Permanently Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'P157_DELETED'
,p_button_condition2=>'Y'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_security_scheme=>wwv_flow_api.id(17067500296549068444)
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(12054083182575004085)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(12054083402788004085)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--gapLeft'
,p_button_template_id=>wwv_flow_api.id(6781135529450890864)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12054108203924004394)
,p_name=>'P157_PROJECT_ID'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(12054082620394004084)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Project'
,p_source=>'PROJECT_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select project d, id r',
'from eba_proj_status$',
'order by upper(project)'))
,p_cHeight=>1
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(6781134673650890856)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12054108522109004394)
,p_name=>'P157_ACCESS_CONTROL'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(12054082620394004084)
,p_prompt=>'Access Control'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select acl_status_level',
'from eba_proj_status$',
'where id = :P157_PROJECT_ID'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'PROJECT ACL LEVELS'
,p_lov=>'.'||wwv_flow_api.id(11154171524619972300)||'.'
,p_cHeight=>1
,p_read_only_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'  from eba_proj_user_ref rf,',
'       eba_proj_roles r,',
'       eba_proj_status_users u',
' where (',
'            rf.project_id = :P157_PROJECT_ID',
'            and        ',
'            u.username = :APP_USER -- current user has an application account',
'            and ',
'            rf.user_id = u.id -- current user is a member of current project',
'            and',
'            rf.role_id = r.id -- current user has a role in current project',
'            and',
'            rf.acl_status_level = 3 -- with admin rights',
'        )',
'        or',
'        (',
'            u.access_level_id = 4 -- current user is a super admin',
'            and',
'            u.username = :APP_USER -- current user has an application account',
'        )'))
,p_read_only_when_type=>'NOT_EXISTS'
,p_field_template=>wwv_flow_api.id(6781134673650890856)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12054108917636004395)
,p_name=>'P157_DELETED'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(12054082620394004084)
,p_prompt=>'Deleted'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select is_deleted_yn',
'from eba_proj_status$',
'where id = :P157_PROJECT_ID'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_YES_NO'
,p_field_template=>wwv_flow_api.id(6781134673650890856)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(12054103904269004086)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(12054103811530004086)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(12054104650054004089)
,p_event_id=>wwv_flow_api.id(12054103904269004086)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(13414316313976285763)
,p_name=>'Confirm Delete'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(13414316220344285762)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(13414316435729285764)
,p_event_id=>wwv_flow_api.id(13414316313976285763)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'Are you sure you want to permanently delete this project?'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(13414316688523285766)
,p_event_id=>wwv_flow_api.id(13414316313976285763)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_01=>'DELETE'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(11916210007736762850)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Save Changes'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'update eba_proj_status$',
'set acl_status_level = :P157_ACCESS_CONTROL,',
'    is_deleted_yn = :P157_DELETED',
'where id = :P157_PROJECT_ID;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(12054083182575004085)
,p_process_success_message=>'Changes applied.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(13414316570503285765)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Delete Project'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-- This pkg variable has to be set to true for the AD_EBA_PROJ_USER_REF trigger to work properly - Allan 4-DEC-2017',
'eba_proj_fw.g_project_deleted := true;',
'',
'delete from eba_proj_status$ where id = :P157_PROJECT_ID;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(13414316220344285762)
,p_security_scheme=>wwv_flow_api.id(17067500296549068444)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(12054111405632004401)
,p_process_sequence=>30
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
