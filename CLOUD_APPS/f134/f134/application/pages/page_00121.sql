prompt --application/pages/page_00121
begin
--   Manifest
--     PAGE: 00121
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
 p_id=>121
,p_user_interface_id=>wwv_flow_api.id(5783577205373975152)
,p_name=>'Email Status Report'
,p_step_title=>'Email Status Report'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_api.id(5956243887448595899)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'    Fill out the form items and click the <strong>Send Email</strong> button to send your status update email. Click the <strong>Cancel</strong> button to return to the status report details page.',
'</p>'))
,p_last_upd_yyyymmddhh24miss=>'20190905143339'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(6172740489041813654)
,p_plug_name=>'Email'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(6781115417665890803)
,p_plug_display_sequence=>10
,p_plug_new_grid_column=>false
,p_plug_display_point=>'BODY'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_plug_header=>'<p>Send email with HTML attachment (see below).</p>'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(6172740095981813649)
,p_plug_name=>'Email Attachment'
,p_parent_plug_id=>wwv_flow_api.id(6172740489041813654)
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--noBorder:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(6781111273838890791)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'eba_proj_stat_email.print_status_rpt_message (',
'    p_id              => :P120_PROJECT_ID, ',
'    p_status_rpt_id   => :P120_STATUS_REPORT_ID,',
'    p_proj_owners     => :P120_PROJECT_OWNERS,',
'    p_proj_status     => :P120_PROJECT_STATUS,',
'    p_proj_desc       => :P120_PROJECT_DESCRIPTION,',
'    p_proj_goal       => :P120_PROJECT_GOAL,',
'    p_milestones      => :P120_MILESTONES,',
'    p_action_items    => :P120_ACTION_ITEMS,',
'    p_issues          => null,',
'    p_resources       => null,',
'    p_app_user        => :APP_USER,',
'    p_app_date_format => :APP_DATE_FORMAT,',
'    p_app_name        => :APP_NAME,',
'    p_app_id          => :APP_ID, ',
'    p_session         => :APP_SESSION,',
'    p_reply_email     => eba_proj_status_pref_api.get_email) ;'))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(6172742309675813668)
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
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(6172740691129813655)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(6212459901559585507)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(6781135529450890864)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:&LAST_VIEW.:&SESSION.::&DEBUG.:::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(6172740906951813657)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(6212459901559585507)
,p_button_name=>'SEND_EMAIL'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(6781135529450890864)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Send Email'
,p_button_position=>'REGION_TEMPLATE_CREATE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(6172743292640813678)
,p_branch_name=>'return to last view'
,p_branch_action=>'f?p=&APP_ID.:&LAST_VIEW.:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_save_state_before_branch_yn=>'Y'
,p_branch_comment=>'Created 19-OCT-2010 16:28 by MIKE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6172740288376813650)
,p_name=>'P121_STATUS_REPORT_ID'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(6172740095981813649)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6172741110593813658)
,p_name=>'P121_TO'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(6172740489041813654)
,p_prompt=>'To'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select listagg( x.email, '', '' )',
'    within group (order by x.email) email_addresses',
'from (  select distinct',
'            case when u.email_address is not null then',
'                    lower(u.email_address)',
'                when instr(u.username,''@'') > 0 and instr(u.username,''.'') > 0 then',
'                    lower(u.username)',
'            end as email',
'        from eba_proj_status_users u,',
'            eba_proj_user_ref rf,',
'            eba_proj_roles r',
'        where ( u.email_address is not null',
'                or (instr(u.username,''@'') > 0 and instr(u.username,''.'') > 0))',
'            and rf.project_id = :P200_ID',
'            and rf.user_id = u.id',
'            and rf.role_id = r.id',
'            and eba_proj_fw.is_edit_authorized( u.username, rf.project_id ) = ''Y''',
') x'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>80
,p_cMaxlength=>4000
,p_cHeight=>3
,p_field_template=>wwv_flow_api.id(6781134744367890857)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6172741303630813658)
,p_name=>'P121_FROM'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(6172740489041813654)
,p_prompt=>'From'
,p_source=>'lower(:APP_USER)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(6781134673650890856)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6172741498188813659)
,p_name=>'P121_CC'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(6172740489041813654)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Cc'
,p_display_as=>'NATIVE_AUTO_COMPLETE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select lower(u.username) d',
'from eba_proj_status_users u',
'where exists (  select null',
'                from eba_proj_user_ref rf,',
'                    eba_proj_roles r,',
'                    eba_proj_status p',
'                where rf.project_id = p.id',
'                    and rf.user_id = u.id',
'                    and rf.role_id = r.id',
'                    and eba_proj_fw.is_edit_authorized( u.username, rf.project_id ) = ''Y''',
')',
'order by 1'))
,p_cSize=>80
,p_cMaxlength=>4000
,p_field_template=>wwv_flow_api.id(6781134673650890856)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'CONTAINS_IGNORE'
,p_attribute_04=>'Y'
,p_attribute_05=>'100'
,p_attribute_06=>'Y'
,p_attribute_07=>'N'
,p_attribute_08=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6172741707891813659)
,p_name=>'P121_MESSAGE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(6172740489041813654)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Message'
,p_source=>'replace(eba_proj_fw.get_preference_value( p_preference_name => ''EMAIL_MSG_BODY'' ), ''Preference does not exist'', null);'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>80
,p_cMaxlength=>4000
,p_cHeight=>4
,p_field_template=>wwv_flow_api.id(6781134673650890856)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'Y'
,p_attribute_04=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6172741880339813659)
,p_name=>'P121_SUBJECT'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(6172740489041813654)
,p_use_cache_before_default=>'NO'
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'for c1 in (',
'   select :APP_NAME || '' - Status Report: '' || substr(status_title,1,255-(length(:APP_NAME)+2)) status_title',
'     from eba_proj_status_rpts',
'    where id = :P121_STATUS_REPORT_ID',
') loop',
'   return c1.status_title;',
'end loop;'))
,p_item_default_type=>'FUNCTION_BODY'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Subject'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>80
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(6781134673650890856)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(6172742687520813674)
,p_computation_sequence=>10
,p_computation_item=>'P121_FROM'
,p_computation_type=>'QUERY'
,p_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    case',
'        when instr(username,''@'') > 0 then',
'            lower(username)',
'        when instr(username,''@'') = 0 and instr(email_address,''@'') > 0 then',
'            lower(email_address)',
'        else',
'            trim(lower(substr(:P121_TO,1,instr(:P121_TO,'','') - 1)))',
'    end as email_address',
'from',
'    eba_proj_status_users',
'where',
'    upper(username) = :APP_USER;'))
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(6172742783395813675)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'send email'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'   l_clob          clob;',
'   l_body          clob := '' '';',
'   l_from_address  varchar2(255);',
'begin',
'    for c1 in (select clob001 from apex_collections where collection_name = ''EMAIL'')',
'    loop',
'        l_clob := c1.clob001;',
'        if :P121_MESSAGE is not null then',
'            l_clob := replace(l_clob, ''<!-- Content Wrapper -->'', ''<center><div style="padding: 8px; color: #404040; font-size: 14px; line-height: 20px; border-top: 2px solid #D0D0D0; border-bottom: 2px solid #D0D0D0; margin-bottom: 8px; padding-bott'
||'om: 8px;">''||:P121_MESSAGE||''</div></center>'');',
'        end if;',
'',
'        l_from_address := :P121_FROM;',
'',
'        if l_from_address is not null then',
'            APEX_MAIL.SEND (',
'                p_to        => :P121_TO,',
'                p_from      => l_from_address,',
'                p_body      => l_body,',
'                p_body_html => l_clob,',
'                p_subj      => :P121_SUBJECT,',
'                p_cc        => :P121_CC,',
'                p_bcc       => null,',
'                p_replyto   => null);',
'            apex_mail.push_queue;',
'            eba_proj_stat_email.log_sent_email',
'            (',
'                p_email_to   => :P121_TO,',
'                p_email_from => :P121_FROM,',
'                p_body_size  => dbms_lob.getlength(l_clob),',
'                p_type       => ''STATUS_REPORT'',',
'                p_project_id => :P121_ID',
'            );',
'        end if;',
'    end loop;',
'    commit;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_success_message=>'Message sent'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(6172743007858813676)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'log email request'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_email_first_to varchar2(255) := null;',
'begin',
'    if instr(:P121_TO,'','') > 2 then',
'       l_email_first_to := substr(l_email_first_to,1,instr(:P121_TO,'','') - 1);',
'    else',
'       l_email_first_to := :P121_TO;',
'    end if;',
'',
'    insert into eba_proj_status_email_log (',
'        email_first_to,',
'        email_to,',
'        email_from,',
'        body_size',
'    )',
'    values (',
'         trim(l_email_first_to),',
'         trim(:P121_TO),',
'         trim(:P121_FROM),',
'         length(:P121_MESSAGE)',
'    );',
'    commit;',
'end;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_api.component_end;
end;
/
