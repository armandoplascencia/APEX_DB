prompt --application/pages/page_00086
begin
--   Manifest
--     PAGE: 00086
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
 p_id=>86
,p_user_interface_id=>wwv_flow_api.id(14434115216807266717)
,p_name=>'Respondent Details'
,p_alias=>'RESPONDENT-DETAILS'
,p_page_mode=>'MODAL'
,p_step_title=>'Respondent Details'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(16485731932639691338)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(250463977822234829)
,p_protection_level=>'C'
,p_help_text=>'<p>Select a respondent to view polls taken and those invited to but not taken.</p>'
,p_last_updated_by=>'ALLAN'
,p_last_upd_yyyymmddhh24miss=>'20210518154326'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(14125260199698841669)
,p_name=>'Polls Taken'
,p_template=>wwv_flow_api.id(14690171167000251156)
,p_display_sequence=>40
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT p.POLL_NAME,  ',
'       p.poll_or_quiz,',
'       case when r.is_valid_yn = ''N''',
'            then ''Errors in submission, will not be considered'' end note,',
'       p.start_time,',
'       r.updated submitted,',
'       round(r.grade,1) || case when r.grade is not null then '' %'' end grade, ',
'       case when p.score_type in (''C'',''A'') and p.enable_score_yn = ''Y'' ',
'           then r.score || '' (''|| apex_lang.message(''SCORE_''||p.score_type) ||'' score type)'' end score',
'  from EBA_QPOLL_POLLS p,',
'       eba_qpoll_results r',
' where p.id = r.poll_id',
'   and r.respondent_id = :P86_RESPONDENT_ID',
' order by r.updated desc, poll_name'))
,p_display_when_condition=>'P86_RESPONDENT_ID'
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(14690179856222251179)
,p_query_num_rows=>10
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'0'
,p_query_no_data_found=>'None.'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14125260503254841703)
,p_query_column_id=>1
,p_column_alias=>'POLL_NAME'
,p_column_display_sequence=>1
,p_column_heading=>'Name'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14125273908830000155)
,p_query_column_id=>2
,p_column_alias=>'POLL_OR_QUIZ'
,p_column_display_sequence=>2
,p_column_heading=>'Type'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_api.id(14026759485423815840)
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14125262006987879466)
,p_query_column_id=>3
,p_column_alias=>'NOTE'
,p_column_display_sequence=>7
,p_column_heading=>'Note'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14125260703174841707)
,p_query_column_id=>4
,p_column_alias=>'START_TIME'
,p_column_display_sequence=>3
,p_column_heading=>'Started'
,p_use_as_row_header=>'N'
,p_column_format=>'SINCE'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14125260781572841707)
,p_query_column_id=>5
,p_column_alias=>'SUBMITTED'
,p_column_display_sequence=>4
,p_column_heading=>'Submitted'
,p_use_as_row_header=>'N'
,p_column_format=>'SINCE'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14125260978835841707)
,p_query_column_id=>6
,p_column_alias=>'GRADE'
,p_column_display_sequence=>5
,p_column_heading=>'Grade'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14125261208655841707)
,p_query_column_id=>7
,p_column_alias=>'SCORE'
,p_column_display_sequence=>6
,p_column_heading=>'Score'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(14125271793258924915)
,p_name=>'Polls not Taken (but invited to take)'
,p_template=>wwv_flow_api.id(14690171167000251156)
,p_display_sequence=>50
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_new_grid_column=>false
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select p.poll_name,',
'       p.status_id || case when p.status_id = 3 then p.invite_only_yn end status,',
'       lower(ci.created_by) invitation_sent_by,',
'       ci.created  invitation_sent,',
'       decode(i.email_sent, ''YES'', ''Email Sent'',',
'                            ''OPTED_OUT'',''Opted Out'',',
'                            ''PREVIOUSLY_SENT'',''Previously Sent'',',
'                            ''MANUAL_INVITE'',''Manual Invite'',',
'                            i.email_sent) invite_method',
'  from eba_qpoll_polls p,',
'       eba_qpoll_resp_communities c,',
'       eba_qpoll_comm_invites ci,',
'       eba_qpoll_invites i',
' where p.id = ci.poll_id',
'   and c.id = ci.community_id',
'   and ci.id = i.comm_invite_id',
'   and i.respondent_id = :P86_RESPONDENT_ID',
'   and not exists (select 1 from eba_qpoll_results',
'                    where poll_id = p.id',
'                      and respondent_id = :P86_RESPONDENT_ID)',
'order by p.poll_name, ci.created desc'))
,p_display_when_condition=>'P86_RESPONDENT_ID'
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(14690179856222251179)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'1:2:3'
,p_query_no_data_found=>'None.'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14125272088188924917)
,p_query_column_id=>1
,p_column_alias=>'POLL_NAME'
,p_column_display_sequence=>1
,p_column_heading=>'Name'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14125275179032059511)
,p_query_column_id=>2
,p_column_alias=>'STATUS'
,p_column_display_sequence=>2
,p_column_heading=>'Poll Status'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_api.id(14118298699457917683)
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14125272187420924917)
,p_query_column_id=>3
,p_column_alias=>'INVITATION_SENT_BY'
,p_column_display_sequence=>3
,p_column_heading=>'Invitation Sent By'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14125272290467924917)
,p_query_column_id=>4
,p_column_alias=>'INVITATION_SENT'
,p_column_display_sequence=>5
,p_column_heading=>'Sent'
,p_use_as_row_header=>'N'
,p_column_format=>'SINCE'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14125272393406924917)
,p_query_column_id=>5
,p_column_alias=>'INVITE_METHOD'
,p_column_display_sequence=>4
,p_column_heading=>'Method'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(15078269193749788580)
,p_plug_name=>'selection'
,p_region_template_options=>'#DEFAULT#:t-Form--stretchInputs'
,p_plug_template=>wwv_flow_api.id(14690161967644251135)
,p_plug_display_sequence=>30
,p_plug_display_point=>'BODY'
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>'Select a user to view their details.'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14125256691861658567)
,p_name=>'P86_RESPONDENT_ID'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(15078269193749788580)
,p_prompt=>'Respondent'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select email d, id r',
'  from eba_qpoll_respondents',
' where email != ''nobody''',
' order by 1'))
,p_cSize=>64
,p_cMaxlength=>4000
,p_field_template=>wwv_flow_api.id(7253657183346174745)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14125273091829962404)
,p_name=>'P86_ROLE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(15078269193749788580)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Role'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'   l_role                  varchar2(255);',
'   l_access_control_scope  varchar2(255);',
'begin',
'',
'for c1 in (',
'   select role_names',
'     from APEX_APPL_ACL_USERS',
'    where application_id = :APP_ID',
'      and user_name_lc = (select lower(email) from eba_qpoll_respondents',
'                           where id = :P86_RESPONDENT_ID)',
') loop',
'   l_role := c1.role_names;',
'end loop;',
'',
'if l_role is null then',
'   l_access_control_scope := eba_qpoll_fw.get_preference_value(''ACCESS_CONTROL_SCOPE'');',
'   if l_access_control_scope = ''PUBLIC_READONLY'' then',
'      l_role := ''Reader'';',
'   elsif l_access_control_scope = ''PUBLIC_CONTRIBUTE'' then',
'      l_role := ''Contributor'';',
'   end if;',
'end if;',
'',
'return nvl(l_role,''None'');',
'',
'end;'))
,p_source_type=>'FUNCTION_BODY'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_display_when=>'P86_RESPONDENT_ID'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_api.id(7253657488708174745)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(14125257797779727590)
,p_name=>'when new respondent'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P86_RESPONDENT_ID'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(14125258084789727596)
,p_event_id=>wwv_flow_api.id(14125257797779727590)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_api.component_end;
end;
/
