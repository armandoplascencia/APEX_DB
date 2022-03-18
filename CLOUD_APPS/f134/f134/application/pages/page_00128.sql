prompt --application/pages/page_00128
begin
--   Manifest
--     PAGE: 00128
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
 p_id=>128
,p_user_interface_id=>wwv_flow_api.id(5783577205373975152)
,p_name=>'My Dashboard Filters'
,p_page_mode=>'MODAL'
,p_step_title=>'My Dashboard Filters'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_width=>'400'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_last_upd_yyyymmddhh24miss=>'20190905144816'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(18132640611858772935)
,p_plug_name=>'Filter Projects'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(6781115417665890803)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(18132640620123772936)
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
 p_id=>wwv_flow_api.id(18132640775891772937)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(18132640620123772936)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(6781135529450890864)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(18132640883741772938)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(18132640620123772936)
,p_button_name=>'APPLY_CHANGES'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--gapLeft'
,p_button_template_id=>wwv_flow_api.id(6781135529450890864)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Search'
,p_button_position=>'REGION_TEMPLATE_NEXT'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(18132641470850772944)
,p_branch_name=>'Return to My Dashboard'
,p_branch_action=>'f?p=&APP_ID.:194:&SESSION.::&DEBUG.:RP::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18132641158339772941)
,p_name=>'P128_TYPE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(18132640611858772935)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18132641255714772942)
,p_name=>'P128_PROJECT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(18132640611858772935)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Filter by Project'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    if :P128_TYPE = ''AI'' then',
'        return :P194_AI_PROJECT;',
'    else',
'        return :P194_MS_PROJECT;',
'    end if;',
'end;'))
,p_source_type=>'FUNCTION_BODY'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct d, r',
'from (  select p.project d, p.id r',
'        from eba_proj_status p,',
'            eba_proj_status_ais a',
'        where :P128_TYPE = ''AI''',
'            and a.project_id = p.id',
'            and a.action_status = ''Open''',
'            and (   upper(a.action_owner_01) = upper(:P194_NAME)',
'                or  upper(a.action_owner_02) = upper(:P194_NAME)',
'                or  upper(a.action_owner_03) = upper(:P194_NAME)',
'                or  upper(a.action_owner_04) = upper(:P194_NAME)',
'                or exists ( select null',
'                            from eba_proj_user_ref rf,',
'                                eba_proj_status_users u',
'                            where rf.role_id = a.owner_role_id',
'                                and rf.project_id = a.project_id',
'                                and rf.user_id = u.id',
'                                and upper(u.username) = upper(:P194_NAME)',
'                )',
'            )',
'        union all',
'        select p.project d, p.id r',
'        from eba_proj_status_ms m,',
'            eba_proj_status p',
'        where :P128_TYPE = ''MS''',
'            and m.project_id = p.id',
'            and m.milestone_status = ''Open''',
'            and ( instr(upper(m.milestone_owner), upper(:P194_NAME)) > 0',
'                or exists ( select null',
'                            from eba_proj_user_ref rf,',
'                                eba_proj_status_users u',
'                            where rf.role_id = m.owner_role_id',
'                                and rf.project_id = m.project_id',
'                                and rf.user_id = u.id',
'                                and upper(u.username) = upper(:P194_NAME)',
'                    )',
'               )',
')',
'order by lower(d)'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- All Projects -'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(6899231875758612224)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(18132640943241772939)
,p_name=>'Cancel Modal'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(18132640775891772937)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(18132641098044772940)
,p_event_id=>wwv_flow_api.id(18132640943241772939)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(18132641406347772943)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Save Preference'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    if :P128_TYPE = ''AI'' then',
'        :P194_AI_PROJECT := :P128_PROJECT;',
'    else',
'        :P194_MS_PROJECT := :P128_PROJECT;',
'    end if;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.component_end;
end;
/
