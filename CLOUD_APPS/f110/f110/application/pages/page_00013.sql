prompt --application/pages/page_00013
begin
--   Manifest
--     PAGE: 00013
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>110
,p_default_id_offset=>101599614921830918
,p_default_owner=>'MISO'
);
wwv_flow_api.create_page(
 p_id=>13
,p_user_interface_id=>wwv_flow_api.id(14434115216807266717)
,p_name=>'Invitation Details'
,p_alias=>'INVITATION-DETAILS'
,p_page_mode=>'MODAL'
,p_step_title=>'Invitation Details'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(14008957981820441125)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(250464227793234829)
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'ALLAN'
,p_last_upd_yyyymmddhh24miss=>'20210518144132'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(14132028499799483254)
,p_plug_name=>'Invitation Details'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--noBorder:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="width: 1000px;"'
,p_plug_template=>wwv_flow_api.id(14690171167000251156)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(522080406424064556)
,p_name=>'Email Body'
,p_parent_plug_id=>wwv_flow_api.id(14132028499799483254)
,p_template=>wwv_flow_api.id(14690171167000251156)
,p_display_sequence=>75
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--noBorder:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select html_body message',
'  from eba_qpoll_emailS',
' where id = :P13_EMAIL_ID',
'   and poll_id = :P13_POLL_ID'))
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from eba_qpoll_emailS',
' where id = :P13_EMAIL_ID',
'   and poll_id = :P13_POLL_ID'))
,p_display_condition_type=>'EXISTS'
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(14690179856222251179)
,p_query_headings_type=>'NO_HEADINGS'
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(522081032160064563)
,p_query_column_id=>1
,p_column_alias=>'MESSAGE'
,p_column_display_sequence=>1
,p_column_heading=>'Message'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(669398313271738420)
,p_plug_name=>'No Email in History'
,p_parent_plug_id=>wwv_flow_api.id(14132028499799483254)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(14690171167000251156)
,p_plug_display_sequence=>55
,p_plug_display_point=>'BODY'
,p_plug_source=>'There is no email in the history matching this.  The email log was likely purged.'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NOT_EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from eba_qpoll_emailS',
' where id = :P13_EMAIL_ID',
'   and poll_id = :P13_POLL_ID'))
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(14085562889246456699)
,p_name=>'Email Details'
,p_parent_plug_id=>wwv_flow_api.id(14132028499799483254)
,p_template=>wwv_flow_api.id(14690171167000251156)
,p_display_sequence=>65
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--noBorder:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-AVPList--leftAligned'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select id,',
'       subject,',
'       sent_time,',
'       sent_to,',
'       cc,',
'       lower(sent_by) sent_by',
'  from eba_qpoll_emailS',
' where id = :P13_EMAIL_ID',
'   and poll_id = :P13_POLL_ID'))
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from eba_qpoll_emailS',
' where id = :P13_EMAIL_ID',
'   and poll_id = :P13_POLL_ID'))
,p_display_condition_type=>'EXISTS'
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(14690181106332251182)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14085563185177456737)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>1
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14085563286660456746)
,p_query_column_id=>2
,p_column_alias=>'SUBJECT'
,p_column_display_sequence=>2
,p_column_heading=>'Subject'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14085563407907456746)
,p_query_column_id=>3
,p_column_alias=>'SENT_TIME'
,p_column_display_sequence=>3
,p_column_heading=>'Sent'
,p_use_as_row_header=>'N'
,p_column_format=>'SINCE'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14085563502922456746)
,p_query_column_id=>4
,p_column_alias=>'SENT_TO'
,p_column_display_sequence=>4
,p_column_heading=>'Sent To'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14085563581348456746)
,p_query_column_id=>5
,p_column_alias=>'CC'
,p_column_display_sequence=>5
,p_column_heading=>'CC'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from eba_qpoll_emails',
' where id = :P13_EMAIL_ID',
'   and poll_id = :P13_POLL_ID',
'   and cc is not null'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14085563794210456746)
,p_query_column_id=>6
,p_column_alias=>'SENT_BY'
,p_column_display_sequence=>6
,p_column_heading=>'Sent From'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(14132022285880632094)
,p_name=>'Invitation Details'
,p_parent_plug_id=>wwv_flow_api.id(14132028499799483254)
,p_template=>wwv_flow_api.id(14690161967644251135)
,p_display_sequence=>45
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-AVPList--leftAligned'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ''<strong>''||i.respondent_email||''</strong>'' respondent_email,',
'       p.poll_name,',
'       ci.community_name,',
'       lower(i.created_by) invitation_sent_by,',
'       i.created  invitation_sent,',
'       decode(i.email_sent, ''YES'', ''Email'',',
'              ''REMINDER_SENT'', ''Reminder'',',
'              ''OPTED_OUT'',''Opted Out'',',
'              ''PREVIOUSLY_SENT'',''Previously Sent'',',
'              ''MANUAL_INVITE'', ''Manual Invite'',',
'              i.email_sent) invite_method,',
'       (select max(created)',
'          from eba_qpoll_results r',
'         where r.poll_id = p.id',
'           and r.IS_VALID_YN = ''Y''',
'           and r.respondent_id = i.respondent_id) response_date,',
'       :P13_INVITE_URL poll_url',
'  from eba_qpoll_polls p,',
'       eba_qpoll_comm_invites ci,',
'       eba_qpoll_invites i',
' where p.id = :P13_POLL_ID',
'   and p.id = ci.poll_id',
'   and ci.id = i.comm_invite_id',
'   and i.id = :P13_INVITE_ID'))
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(14690181106332251182)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14132023007363632121)
,p_query_column_id=>1
,p_column_alias=>'RESPONDENT_EMAIL'
,p_column_display_sequence=>1
,p_column_heading=>'Invitee'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14132022596636632116)
,p_query_column_id=>2
,p_column_alias=>'POLL_NAME'
,p_column_display_sequence=>2
,p_column_heading=>'Poll'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14132022691589632120)
,p_query_column_id=>3
,p_column_alias=>'COMMUNITY_NAME'
,p_column_display_sequence=>3
,p_column_heading=>'Community'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from eba_qpoll_polls p,',
'       eba_qpoll_comm_invites ci,',
'       eba_qpoll_invites i',
' where p.id = :P13_POLL_ID',
'   and p.id = ci.poll_id',
'   and ci.id = i.comm_invite_id',
'   and i.id = :P13_INVITE_ID',
'   and ci.community_name is not null'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14132022789445632120)
,p_query_column_id=>4
,p_column_alias=>'INVITATION_SENT_BY'
,p_column_display_sequence=>5
,p_column_heading=>'Invited By'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14132022883178632120)
,p_query_column_id=>5
,p_column_alias=>'INVITATION_SENT'
,p_column_display_sequence=>6
,p_column_heading=>'Invited'
,p_use_as_row_header=>'N'
,p_column_format=>'fmDay, fmDD fmMonth, YYYY  HH24:MI'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14132023079415632121)
,p_query_column_id=>6
,p_column_alias=>'INVITE_METHOD'
,p_column_display_sequence=>4
,p_column_heading=>'Method'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14132023289588632121)
,p_query_column_id=>7
,p_column_alias=>'RESPONSE_DATE'
,p_column_display_sequence=>7
,p_column_heading=>'Responded'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14132023399310632121)
,p_query_column_id=>8
,p_column_alias=>'POLL_URL'
,p_column_display_sequence=>8
,p_column_heading=>'Poll URL'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(522077122127064524)
,p_name=>'P13_INVITE_URL'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(14132028499799483254)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14026546406855033233)
,p_name=>'P13_POLL_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(14132028499799483254)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14026627794662813074)
,p_name=>'P13_EMAIL_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(14132028499799483254)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14132024383158859882)
,p_name=>'P13_INVITE_ID'
,p_item_sequence=>15
,p_item_plug_id=>wwv_flow_api.id(14132028499799483254)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(522077310276064525)
,p_computation_sequence=>10
,p_computation_item=>'P13_INVITE_URL'
,p_computation_point=>'AFTER_HEADER'
,p_computation_type=>'FUNCTION_BODY'
,p_computation_language=>'PLSQL'
,p_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'for c1 in (',
' select i.respondent_id, p.authentication_req_yn',
'  from eba_qpoll_polls p,',
'       eba_qpoll_comm_invites ci,',
'       eba_qpoll_invites i',
' where p.id = :P13_POLL_ID',
'   and p.id = ci.poll_id',
'   and ci.id = i.comm_invite_id',
'   and i.id = :P13_INVITE_ID',
') loop',
'   return :APP_PATH||''/''||apex_util.prepare_url(p_url => ''f?p=''||:APP_ID||'':''||case when c1.authentication_req_yn=''Y''',
'                                                                                    then ''500''',
'                                                                                    else ''50'' end||'':0::::LPOLL_ID,PID:'' ||:P13_POLL_ID||'',''||c1.respondent_id,',
'                                      p_checksum_type => ''1'',',
'                                      p_plain_url => TRUE);',
'end loop;'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(14026544780166025304)
,p_name=>'Load Email'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P13_EMAIL_ID'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(14026545288264025304)
,p_event_id=>wwv_flow_api.id(14026544780166025304)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P13_EMAIL_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(14026545101770025304)
,p_event_id=>wwv_flow_api.id(14026544780166025304)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'openModal("view_email");',
'$("#view_email").parent().width("700px");'))
);
wwv_flow_api.component_end;
end;
/
