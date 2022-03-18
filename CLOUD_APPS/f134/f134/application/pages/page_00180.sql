prompt --application/pages/page_00180
begin
--   Manifest
--     PAGE: 00180
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
 p_id=>180
,p_user_interface_id=>wwv_flow_api.id(5783577205373975152)
,p_name=>'Email Upcoming'
,p_page_mode=>'MODAL'
,p_step_title=>'Email Upcoming'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(5956243783292594674)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(7306165779537991444)
,p_required_patch=>wwv_flow_api.id(11997357717598129643)
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Email all users or a single user to notify them of action items and milestones that are due in the next 7 days.  Each user will get an email with their specific list of action items and milestones.</p>',
'<p><strong>Note:</strong> <em>This tool does not respect an end-user''s "Upcoming Milestones and Action Items Schedule" email preference setting (unless it was set to "Never (Opt-Out)", these users will not appear in the "Single User" user list even t'
||'hough they have upcoming milestones and/or action items). If a user''s "Upcoming Milestones and Action Items Schedule" email preference setting is set to any value, other than "Never (Opt-Out)", they will receive an upcoming deliverables email as soon'
||' as you click the <strong>Email</strong> button (above).</em></p>'))
,p_last_upd_yyyymmddhh24miss=>'20190906062216'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(525986498303977569)
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
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(11997306093905099588)
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
 p_id=>wwv_flow_api.id(11997306507384099590)
,p_plug_name=>'Upcoming Milestones and Action Item Email Remider'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(6781104626075890777)
,p_plug_display_sequence=>30
,p_plug_display_point=>'BODY'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(17313138046380353048)
,p_name=>'No Upcoming MS or AI'
,p_template=>wwv_flow_api.id(6781104626075890777)
,p_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null id,',
'    ''warning'' ALERT_TYPE,',
'    ''No Existing Upcoming Milestones or Action Items'' as ALERT_TITLE,',
'    ''There are currently no upcoming Milestones or Action Items defined in the '' || :APPLICATION_TITLE || '' application.'' as ALERT_DESC,',
'    '''' alert_action',
'from dual'))
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'from (',
'    select action_owner_01 owner from eba_proj_status_ais',
'    union all',
'    select action_owner_02 owner from eba_proj_status_ais',
'    union all',
'    select action_owner_03 owner from eba_proj_status_ais',
'    union all',
'    select action_owner_04 owner from eba_proj_status_ais',
'    union all',
'    select u.username owner',
'    from eba_proj_status_users u',
'    where exists (  select null',
'                    from eba_proj_status_ais a,',
'                        eba_proj_user_ref rf',
'                    where rf.role_id = a.owner_role_id',
'                        and rf.project_id = a.project_id',
'                        and rf.user_id = u.id',
'    )',
') x',
'where x.owner is not null',
'    and exists (select null',
'                from eba_proj_status_ais$ a,',
'                    eba_proj_status$ p,',
'                    eba_proj_status_codes s',
'                where p.id = a.project_id',
'                    and p.project_status = s.id (+)',
'                    and p.is_deleted_yn = ''N''',
'                    and a.action_status = ''Open''',
'                    and a.due_date between sysdate and sysdate + 7',
'                    and ( a.action_owner_01 = x.owner',
'                        or a.action_owner_02 = x.owner',
'                        or a.action_owner_03 = x.owner',
'                        or a.action_owner_04 = x.owner',
'                        or exists ( select null',
'                                    from eba_proj_user_ref rf,',
'                                        eba_proj_status_users u',
'                                    where rf.role_id = a.owner_role_id',
'                                        and rf.project_id = a.project_id',
'                                        and rf.user_id = u.id',
'                                        and u.username = x.owner',
'                        )',
'                    )',
'                union all',
'                select null',
'                from eba_proj_status_ms$ m,',
'                    eba_proj_status$ p,',
'                    eba_proj_status_codes s',
'                where p.id = m.project_id',
'                    and p.project_status = s.id (+)',
'                    and m.milestone_status = ''Open''',
'                    and m.milestone_date between sysdate and sysdate + 7',
'                    and p.is_deleted_yn = ''N''',
'                    and ( m.milestone_owner = x.owner',
'                        or exists ( select null',
'                                    from eba_proj_user_ref rf,',
'                                        eba_proj_status_users u',
'                                    where rf.role_id = m.owner_role_id',
'                                        and rf.project_id = m.project_id',
'                                        and rf.user_id = u.id',
'                                        and u.username = x.owner',
'                        )',
'                    )',
'        )'))
,p_display_condition_type=>'NOT_EXISTS'
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(6781119468078890811)
,p_query_num_rows=>1
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(17313138196292353049)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>1
,p_column_heading=>'Id'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(17313138297734353050)
,p_query_column_id=>2
,p_column_alias=>'ALERT_TYPE'
,p_column_display_sequence=>2
,p_column_heading=>'Alert type'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(17313138411485353051)
,p_query_column_id=>3
,p_column_alias=>'ALERT_TITLE'
,p_column_display_sequence=>3
,p_column_heading=>'Alert title'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(17313138438822353052)
,p_query_column_id=>4
,p_column_alias=>'ALERT_DESC'
,p_column_display_sequence=>4
,p_column_heading=>'Alert desc'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(17313138587082353053)
,p_query_column_id=>5
,p_column_alias=>'ALERT_ACTION'
,p_column_display_sequence=>5
,p_column_heading=>'Alert action'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(11997307974210099607)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(525986498303977569)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(6781135529450890864)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(11997308394464099611)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(525986498303977569)
,p_button_name=>'EMAIL'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--gapLeft'
,p_button_template_id=>wwv_flow_api.id(6781135529450890864)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Email'
,p_button_position=>'REGION_TEMPLATE_CREATE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(11997311375745099634)
,p_branch_name=>'Back to Last View'
,p_branch_action=>'f?p=&APP_ID.:&LAST_VIEW.:&SESSION.::&DEBUG.:RP::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(11997306866625099590)
,p_name=>'P180_PAST_DUE_TARGET'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(11997306507384099590)
,p_item_default=>'ALL'
,p_prompt=>'Past Due Target'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'EMAIL TARGET ALL OR USER'
,p_lov=>'.'||wwv_flow_api.id(11985717958624851140)||'.'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'from (',
'    select action_owner_01 owner from eba_proj_status_ais',
'    union all',
'    select action_owner_02 owner from eba_proj_status_ais',
'    union all',
'    select action_owner_03 owner from eba_proj_status_ais',
'    union all',
'    select action_owner_04 owner from eba_proj_status_ais',
'    union all',
'    select u.username owner',
'    from eba_proj_status_users u',
'    where exists (  select null',
'                    from eba_proj_status_ais a,',
'                        eba_proj_user_ref rf',
'                    where rf.role_id = a.owner_role_id',
'                        and rf.project_id = a.project_id',
'                        and rf.user_id = u.id',
'    )',
') x',
'where x.owner is not null',
'    and exists (select null',
'                from eba_proj_status_ais$ a,',
'                    eba_proj_status$ p,',
'                    eba_proj_status_codes s',
'                where p.id = a.project_id',
'                    and p.project_status = s.id (+)',
'                    and p.is_deleted_yn = ''N''',
'                    and a.action_status = ''Open''',
'                    and a.due_date between sysdate and sysdate + 7',
'                    and ( a.action_owner_01 = x.owner',
'                        or a.action_owner_02 = x.owner',
'                        or a.action_owner_03 = x.owner',
'                        or a.action_owner_04 = x.owner',
'                        or exists ( select null',
'                                    from eba_proj_user_ref rf,',
'                                        eba_proj_status_users u',
'                                    where rf.role_id = a.owner_role_id',
'                                        and rf.project_id = a.project_id',
'                                        and rf.user_id = u.id',
'                                        and u.username = x.owner',
'                        )',
'                    )',
'                union all',
'                select null',
'                from eba_proj_status_ms$ m,',
'                    eba_proj_status$ p,',
'                    eba_proj_status_codes s',
'                where p.id = m.project_id',
'                    and p.project_status = s.id (+)',
'                    and m.milestone_status = ''Open''',
'                    and m.milestone_date between sysdate and sysdate + 7',
'                    and p.is_deleted_yn = ''N''',
'                    and ( m.milestone_owner = x.owner',
'                        or exists ( select null',
'                                    from eba_proj_user_ref rf,',
'                                        eba_proj_status_users u',
'                                    where rf.role_id = m.owner_role_id',
'                                        and rf.project_id = m.project_id',
'                                        and rf.user_id = u.id',
'                                        and u.username = x.owner',
'                        )',
'                    )',
'        )'))
,p_display_when_type=>'EXISTS'
,p_field_template=>wwv_flow_api.id(748281690398960066)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--radioButtonGroup'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'1'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(11997307247534099598)
,p_name=>'P180_EMAIL_USER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(11997306507384099590)
,p_prompt=>'Email User'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'OPT-IN USERS WITH UPCOMING DELIVERABLES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct lower(x.owner) d, lower(x.owner) r',
'from (',
'    select  ais.action_owner_01 as owner, nvl(u.upcoming_reminders_freq,''DAILY'') as urs from eba_proj_status_ais ais, eba_proj_status_users u where upper(ais.action_owner_01) = u.username and ais.owner_role_id is null',
'    union all',
'    select ais.action_owner_02 as owner, nvl(u.upcoming_reminders_freq,''DAILY'') as urs from eba_proj_status_ais ais, eba_proj_status_users u where upper(ais.action_owner_02) = u.username and ais.owner_role_id is null',
'    union all',
'    select ais.action_owner_03 as owner, nvl(u.upcoming_reminders_freq,''DAILY'') as urs from eba_proj_status_ais ais, eba_proj_status_users u where upper(ais.action_owner_03) = u.username and ais.owner_role_id is null',
'    union all',
'    select ais.action_owner_04 as owner, nvl(u.upcoming_reminders_freq,''DAILY'') as urs  from eba_proj_status_ais ais, eba_proj_status_users u where upper(ais.action_owner_04) = u.username and ais.owner_role_id is null',
'    union all',
'    select u.username as owner, nvl(u.upcoming_reminders_freq,''DAILY'') as urs',
'      from eba_proj_status_users u',
'     where exists (  select null',
'                       from eba_proj_status_ais a,',
'                            eba_proj_user_ref rf',
'                      where rf.role_id = a.owner_role_id',
'                        and rf.project_id = a.project_id',
'                        and rf.user_id = u.id',
'    )',
') x',
'where x.owner is not null',
'  and x.urs != ''NEVER''',
'  and exists (select null',
'                from eba_proj_status_ais$ a,',
'                     eba_proj_status$ p,',
'                     eba_proj_status_codes s',
'               where p.id = a.project_id',
'                 and p.project_status = s.id (+)',
'                 and s.is_closed_status != ''Y''',
'                 and p.is_deleted_yn = ''N''',
'                 and a.action_status = ''Open''',
'                 and a.due_date between sysdate and sysdate + 7',
'                 and ( a.action_owner_01 = x.owner',
'                        or a.action_owner_02 = x.owner',
'                        or a.action_owner_03 = x.owner',
'                        or a.action_owner_04 = x.owner',
'                        or exists ( select null',
'                                    from eba_proj_user_ref rf,',
'                                        eba_proj_status_users u',
'                                    where rf.role_id = a.owner_role_id',
'                                        and rf.project_id = a.project_id',
'                                        and rf.user_id = u.id',
'                                        and u.username = x.owner',
'                        )',
'                    )',
'                union all',
'                select null',
'                from eba_proj_status_ms$ m,',
'                    eba_proj_status$ p,',
'                    eba_proj_status_codes s',
'                where p.id = m.project_id',
'                    and p.project_status = s.id (+)',
'                    and s.is_closed_status != ''Y''',
'                    and m.milestone_status = ''Open''',
'                    and m.milestone_date between sysdate and sysdate + 7',
'                    and p.is_deleted_yn = ''N''',
'                    and ( m.milestone_owner = x.owner',
'                        or exists ( select null',
'                                    from eba_proj_user_ref rf,',
'                                        eba_proj_status_users u',
'                                    where rf.role_id = m.owner_role_id',
'                                        and rf.project_id = m.project_id',
'                                        and rf.user_id = u.id',
'                                        and u.username = x.owner',
'                        )',
'                    )',
'        )',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select -'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(748281690398960066)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(11997308893058099614)
,p_validation_name=>'P180_EMAIL_USER Not Null'
,p_validation_sequence=>10
,p_validation=>'P180_EMAIL_USER'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Select the recipient''s email address from this list.'
,p_validation_condition=>'P180_PAST_DUE_TARGET'
,p_validation_condition2=>'USER'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_when_button_pressed=>wwv_flow_api.id(11997308394464099611)
,p_associated_item=>wwv_flow_api.id(11997307247534099598)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(11997309932429099621)
,p_name=>'hide show all users'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P180_PAST_DUE_TARGET'
,p_condition_element=>'P180_PAST_DUE_TARGET'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'USER'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(11997310485360099628)
,p_event_id=>wwv_flow_api.id(11997309932429099621)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P180_EMAIL_USER'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(11997310874208099631)
,p_event_id=>wwv_flow_api.id(11997309932429099621)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P180_EMAIL_USER'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(525986502309977570)
,p_name=>'CNX'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(11997307974210099607)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(525986676394977571)
,p_event_id=>wwv_flow_api.id(525986502309977570)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(11997309189552099616)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Send Email to All Users'
,p_process_sql_clob=>'eba_proj_stat_email.send_upcoming_emails(p_app_id => :APP_ID, p_method => ''ON_DEMAND'');'
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'#SQLERRM#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(11997308394464099611)
,p_process_when=>'P180_PAST_DUE_TARGET'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_process_when2=>'ALL'
,p_process_success_message=>'Emails sent successfully.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(11997309581457099619)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Send Email to Selected User'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'eba_proj_stat_email.send_upcoming_emails(',
'    p_app_id     => :APP_ID,',
'    p_user_email => :P180_EMAIL_USER,',
'    p_method     => ''ON_DEMAND''',
');'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'#SQLERRM#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(11997308394464099611)
,p_process_when=>'P180_PAST_DUE_TARGET'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_process_when2=>'USER'
,p_process_success_message=>'Email sent successfully.'
);
wwv_flow_api.component_end;
end;
/
