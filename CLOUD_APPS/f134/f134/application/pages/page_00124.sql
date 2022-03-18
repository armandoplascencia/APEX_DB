prompt --application/pages/page_00124
begin
--   Manifest
--     PAGE: 00124
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
 p_id=>124
,p_user_interface_id=>wwv_flow_api.id(5783577205373975152)
,p_name=>'Additional Required Item'
,p_page_mode=>'MODAL'
,p_step_title=>'Additional Required Item'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_api.id(5956243783292594674)
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(7306165779537991444)
,p_dialog_chained=>'N'
,p_protection_level=>'C'
,p_last_upd_yyyymmddhh24miss=>'20190902124942'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(737122220076619851)
,p_plug_name=>'Form on EBA_PROJ_REQUIRED_ITEMS'
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
 p_id=>wwv_flow_api.id(4457503857178581696)
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
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(737122913925619851)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(4457503857178581696)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(6781135529450890864)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(737122689061619851)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(4457503857178581696)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--gapLeft'
,p_button_template_id=>wwv_flow_api.id(6781135529450890864)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Assign Item as Required'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'P124_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(737122852655619851)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(4457503857178581696)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>wwv_flow_api.id(6781135529450890864)
,p_button_image_alt=>'Delete Required Assignment'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P124_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(737124906657619853)
,p_name=>'P124_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(737122220076619851)
,p_use_cache_before_default=>'NO'
,p_source=>'ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(737125391135619879)
,p_name=>'P124_PAGE_ID'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(737122220076619851)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Page'
,p_source=>'PAGE_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'REQUIRED PAGES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct page_id || '' - '' || apex_escape.html(page_name) d, page_id r',
'  from  apex_application_page_items',
' where application_id = :APP_ID',
'   and is_required = ''No''',
'  and item_label_template not in (''Hidden'',''Required'')',
'order by page_id asc;'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select -'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(748281375605960061)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(737125711504619881)
,p_name=>'P124_ITEM_NAME'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(737122220076619851)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Item Name'
,p_source=>'ITEM_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct label || '' - '' || item_name d, item_name r',
'  from apex_application_page_items',
' where application_id = :APP_ID',
'   and page_id = :P124_PAGE_ID',
'   and instr(item_name,''FLEX'') = 0',
'   and is_required = ''No''',
'   and item_label_template not in (''Hidden'',''Required'')',
'   and label is not null',
'   and item_name not in (select distinct item_name from eba_proj_required_items)',
'union',
'select distinct item_name d, item_name r',
'  from eba_proj_required_items',
' where id = :P124_ID'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select -'
,p_lov_cascade_parent_items=>'P124_PAGE_ID'
,p_ajax_items_to_submit=>'P124_PAGE_ID,P124_ITEM_NAME'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(748281375605960061)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(4457504025136581698)
,p_name=>'P124_REQ_TEMPLATE_ID'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(737122220076619851)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(4457504269523581700)
,p_name=>'P124_OPT_TEMPLATE_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(737122220076619851)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(4457504166096581699)
,p_computation_sequence=>10
,p_computation_item=>'P124_REQ_TEMPLATE_ID'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'QUERY'
,p_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select label_template_id  ',
'  from APEX_APPLICATION_TEMP_LABEL  ',
' where template_name = ''Required''  ',
'   and application_id = :APP_ID'))
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(4457504341215581701)
,p_computation_sequence=>20
,p_computation_item=>'P124_OPT_TEMPLATE_ID'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'QUERY'
,p_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select label_template_id  ',
'  from APEX_APPLICATION_TEMP_LABEL  ',
' where template_name = ''Optional''  ',
'   and application_id = :APP_ID'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(820203764685460382)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(737122913925619851)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(820203827306460383)
,p_event_id=>wwv_flow_api.id(820203764685460382)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(737126514795619884)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from EBA_PROJ_REQUIRED_ITEMS'
,p_attribute_02=>'EBA_PROJ_REQUIRED_ITEMS'
,p_attribute_03=>'P124_ID'
,p_attribute_04=>'ID'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(737126913055619884)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of EBA_PROJ_REQUIRED_ITEMS'
,p_attribute_02=>'EBA_PROJ_REQUIRED_ITEMS'
,p_attribute_03=>'P124_ID'
,p_attribute_04=>'ID'
,p_attribute_09=>'P124_ID'
,p_attribute_11=>'I:D'
,p_attribute_12=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(4457503916600581697)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Make Required Assignment'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_app_builder_api.edit_page_item ( ',
'    p_page_id             => :P124_PAGE_ID, ',
'    p_item_name           => :P124_ITEM_NAME, ',
'    p_is_required         => true,',
'    p_label_template_id   => :P124_REQ_TEMPLATE_ID',
');'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(737122689061619851)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(4457504408335581702)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Remove Required Assignment'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_app_builder_api.edit_page_item ( ',
'    p_page_id             => :P124_PAGE_ID, ',
'    p_item_name           => :P124_ITEM_NAME, ',
'    p_is_required         => false,',
'    p_label_template_id   => :P124_OPT_TEMPLATE_ID',
');'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(737122852655619851)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(737127374782619885)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(737122852655619851)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(524870575796582498)
,p_process_sequence=>70
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.component_end;
end;
/
