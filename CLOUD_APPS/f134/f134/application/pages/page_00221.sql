prompt --application/pages/page_00221
begin
--   Manifest
--     PAGE: 00221
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
 p_id=>221
,p_user_interface_id=>wwv_flow_api.id(5783577205373975152)
,p_name=>'Delete Milestone'
,p_page_mode=>'MODAL'
,p_step_title=>'Delete Milestone'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_api.id(5956244298529599071)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'N'
,p_protection_level=>'C'
,p_last_upd_yyyymmddhh24miss=>'20190904150927'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(847246494490918394)
,p_plug_name=>'Delete Choices'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(6781104626075890777)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(847246507960918395)
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
 p_id=>wwv_flow_api.id(847246723400918397)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(847246507960918395)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(6781135529450890864)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(847247191567918401)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(847246507960918395)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--gapLeft'
,p_button_template_id=>wwv_flow_api.id(6781135529450890864)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_CREATE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(856786526918717559)
,p_branch_name=>'Go To Page &LAST_VIEW.'
,p_branch_action=>'f?p=&APP_ID.:&LAST_VIEW.:&SESSION.::&DEBUG.:RP::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_branch_condition_type=>'NEVER'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(847246692346918396)
,p_name=>'P221_OPTIONS'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(847246494490918394)
,p_item_default=>'DELETE_UNASSOCIATE'
,p_prompt=>'Choose a Delete Action'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'MS_DELETE_OPTIONS'
,p_lov=>'.'||wwv_flow_api.id(856154823834398411)||'.'
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(6781134673650890856)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'1'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(847247089104918400)
,p_name=>'P221_MS_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(847246494490918394)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(847247264730918402)
,p_name=>'P221_PRJ_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(847246494490918394)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(847247364990918403)
,p_name=>'P221_NEW_MS'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(847246494490918394)
,p_prompt=>'New Milestone'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select milestone_name as d, ',
'       id as r',
'  from EBA_PROJ_STATUS_MS',
' where project_id = :P221_PRJ_ID',
'   and upper(milestone_status) = ''OPEN''',
'   and id != :P221_MS_ID',
' order by 1'))
,p_cHeight=>1
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(6781134744367890857)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(847246858178918398)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(847246723400918397)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(847246907724918399)
,p_event_id=>wwv_flow_api.id(847246858178918398)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(847247442260918404)
,p_name=>'Show/Hide New Milestones'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P221_OPTIONS'
,p_condition_element=>'P221_OPTIONS'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'DELETE_REASSIGN'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(847247578564918405)
,p_event_id=>wwv_flow_api.id(847247442260918404)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P221_NEW_MS'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(847247639656918406)
,p_event_id=>wwv_flow_api.id(847247442260918404)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P221_NEW_MS'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(856781832377666228)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Delete Milestone'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'update eba_proj_status_ms$',
'set is_deleted_yn = ''Y'',',
'    deleted_by = :APP_USER,',
'    deleted_on = localtimestamp',
'where id = :P221_MS_ID;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(847247191567918401)
,p_process_when=>'P221_OPTIONS'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_process_when2=>'DELETE_UNASSOCIATE'
,p_process_success_message=>'Milestone deleted.'
,p_security_scheme=>wwv_flow_api.id(7306166303644991446)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(856786351248717557)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Delete Milestone and Associated AIs'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'update eba_proj_status_ms$',
'set is_deleted_yn = ''Y'',',
'    deleted_by = :APP_USER,',
'    deleted_on = localtimestamp',
'where id = :P221_MS_ID;',
'',
'update eba_proj_status_ais$',
'set is_deleted_yn = ''Y'',',
'    deleted_by = :APP_USER,',
'    deleted_on = localtimestamp',
'where milestone_id = :P221_MS_ID;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(847247191567918401)
,p_process_when=>'P221_OPTIONS'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_process_when2=>'DELETE_ALL'
,p_process_success_message=>'Milestone deleted.'
,p_security_scheme=>wwv_flow_api.id(7306166303644991446)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(856786493798717558)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Delete Milestone and Reassociated AIs'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'update eba_proj_status_ms$',
'set is_deleted_yn = ''Y'',',
'    deleted_by = :APP_USER,',
'    deleted_on = localtimestamp',
'where id = :P221_MS_ID;',
'',
'update eba_proj_status_ais$',
'set milestone_id = :P221_NEW_MS',
'where milestone_id = :P221_MS_ID;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(847247191567918401)
,p_process_when=>'P221_OPTIONS'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_process_when2=>'DELETE_REASSIGN'
,p_process_success_message=>'Milestone deleted.'
,p_security_scheme=>wwv_flow_api.id(7306166303644991446)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(856786619468717560)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Modal'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(847247191567918401)
);
wwv_flow_api.component_end;
end;
/
