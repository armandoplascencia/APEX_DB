prompt --application/pages/page_00193
begin
--   Manifest
--     PAGE: 00193
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
 p_id=>193
,p_user_interface_id=>wwv_flow_api.id(5783577205373975152)
,p_name=>'Copy Project Template'
,p_page_mode=>'MODAL'
,p_step_title=>'Copy Project Template'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_api.id(5956243783292594674)
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(7306165779537991444)
,p_dialog_height=>'250'
,p_dialog_width=>'300'
,p_dialog_attributes=>'resizable:true'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_last_upd_yyyymmddhh24miss=>'20190903101449'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(13751143294690398224)
,p_plug_name=>'Project Template'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(6781104626075890777)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>'Please enter the name for the new template. All Milestone and Action Items will be copied.'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(13766814422295398231)
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
 p_id=>wwv_flow_api.id(13766816027401398234)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(13766814422295398231)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(6781135529450890864)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(13766815627501398233)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(13766814422295398231)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--gapLeft'
,p_button_template_id=>wwv_flow_api.id(6781135529450890864)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Copy'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(13766819460748398244)
,p_branch_name=>'Go to Template Details'
,p_branch_action=>'f?p=&APP_ID.:184:&SESSION.::&DEBUG.:RP,184:P184_ID:&P193_NEW_ID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13725703151242265768)
,p_name=>'P193_NEW_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(13751143294690398224)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13766813645650398229)
,p_name=>'P193_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(13751143294690398224)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13766814073618398230)
,p_name=>'P193_NAME'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(13751143294690398224)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_new_name varchar2(255);',
'begin',
'    for c1 in',
'    (select name || '' (Copy)'' as new_name from eba_proj_templates where id = :P193_ID)',
'    loop',
'        l_new_name := c1.new_name;',
'    end loop;',
'    return l_new_name;',
'end;'))
,p_item_default_type=>'FUNCTION_BODY'
,p_item_default_language=>'PLSQL'
,p_prompt=>'New Template Name'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(6781134744367890857)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(13766818029646398237)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(13766816027401398234)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(13766818529835398238)
,p_event_id=>wwv_flow_api.id(13766818029646398237)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(13725703050558265767)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Copy Template'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_template_id   number;',
'    l_ms_id         number;',
'    l_parent_ms     number;',
'',
'    type ms_t       is table of number index by varchar2(256);',
'    l_milestone_map ms_t;',
'',
'    procedure copy_action_items (   p_old_template_id in number,',
'                                    p_new_template_id in number,',
'                                    p_template_ms_id  in number default null,',
'                                    p_new_ms_id       in number default null',
'                                ) is',
'    begin',
'        -- Loop over template action items',
'        for ai in ( select ait.name,',
'                        ait.description,',
'                        ait.due_date_offset,',
'                        ait.type_id,',
'                        ait.owner',
'                    from eba_proj_template_ai ait',
'                    where ait.template_id = p_old_template_id',
'                        and ( ( p_template_ms_id is null',
'                                and ait.milestone_id is null )',
'                            or ( ait.milestone_id = p_template_ms_id )',
'                        ) ) loop',
'            -- Copy the Action Item Template',
'            insert into eba_proj_template_ai (  template_id,',
'                                                name,',
'                                                description,',
'                                                due_date_offset,',
'                                                type_id,',
'                                                milestone_id,',
'                                                owner )',
'            values (    p_new_template_id,',
'                        ai.name,',
'                        ai.description,',
'                        ai.due_date_offset,',
'                        ai.type_id,',
'                        p_new_ms_id,',
'                        ai.owner',
'            );',
'        end loop;',
'    end copy_action_items;',
'begin',
'    insert into eba_proj_templates ( name )',
'    values ( :P193_NAME )',
'    returning id into l_template_id;',
'',
'    -- Loop over template milestones',
'    for ms in ( select mst.id,',
'                    mst.name,',
'                    mst.description,',
'                    mst.start_date_offset,',
'                    mst.due_date_offset,',
'                    mst.is_major_yn,',
'                    mst.parent_milestone_id,',
'                    mst.owner',
'                from eba_proj_template_ms mst',
'                where mst.template_id = :P193_ID',
'                    start with mst.parent_milestone_id is null',
'                    connect by prior mst.id = mst.parent_milestone_id',
'            ) loop',
'        -- Copy the milestone',
'        if ms.parent_milestone_id is not null then',
'            l_parent_ms := l_milestone_map( ms.parent_milestone_id );',
'        else',
'            l_parent_ms := null;',
'        end if;',
'        insert into eba_proj_template_ms (  template_id,',
'                                            name,',
'                                            description,',
'                                            start_date_offset,',
'                                            due_date_offset,',
'                                            is_major_yn,',
'                                            parent_milestone_id,',
'                                            owner )',
'        values (    l_template_id,',
'                    ms.name,',
'                    ms.description,',
'                    ms.start_date_offset,',
'                    ms.due_date_offset,',
'                    ms.is_major_yn,',
'                    l_parent_ms,',
'                    ms.owner',
'        )',
'        returning id into l_milestone_map( ms.id );',
'',
'        -- Copy action items associated with the template milestone',
'        copy_action_items ( p_old_template_id => :P193_ID,',
'                            p_new_template_id => l_template_id,',
'                            p_template_ms_id  => ms.id,',
'                            p_new_ms_id       => l_parent_ms',
'                        );',
'    end loop;',
'',
'    -- Copy action items that are not associated with any template milestones',
'    copy_action_items ( p_old_template_id => :P193_ID,',
'                        p_new_template_id => l_template_id,',
'                        p_template_ms_id  => null,',
'                        p_new_ms_id       => null',
'                    );',
'',
'    :P193_NEW_ID := l_template_id;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Template copied.'
);
wwv_flow_api.component_end;
end;
/
