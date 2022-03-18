prompt --application/pages/page_01072
begin
--   Manifest
--     PAGE: 01072
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
 p_id=>1072
,p_user_interface_id=>wwv_flow_api.id(14434115216807266717)
,p_name=>'Send Reminders'
,p_alias=>'SEND-REMINDERS'
,p_page_mode=>'MODAL'
,p_step_title=>'Send Reminders'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(14031786804687606758)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(250464227793234829)
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'ALLAN'
,p_last_upd_yyyymmddhh24miss=>'20210518154356'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(14131341889907716129)
,p_plug_name=>'No EMAIL_FROM'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(14690161967644251135)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'sys.htp.p(''<div class="alertMessage  yellow">',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" alt="Warning">',
'    <div class="innerMessage">',
'        <h3>Warning</h3>',
'        <p>Invitations cannot be sent because the EMAIL FROM address has not been defined.  Please contact an administrator.</p>',
'    </div>',
'</div>'');'))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'ITEM_IS_NULL'
,p_plug_display_when_condition=>'P1072_EMAIL_FROM'
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(14131342079794716152)
,p_plug_name=>'Not all users have access'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(14690161967644251135)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'sys.htp.p(''<div class="alertMessage  yellow">',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" alt="Warning">',
'    <div class="innerMessage">',
'        <h3>Error</h3>',
'        <p>The following community members do not have access to the application.  They either need to be added as users or removed from the community before invitations can be sent.</p>',
'        <p><br/><strong>Users without Access</strong>: ''|| apex_escape.html(:P1072_USERS_WO_ACCESS) ||''</p>',
'    </div>',
'</div>'');'))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P1072_USERS_WO_ACCESS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(14131342703101716169)
,p_plug_name=>'Reminder Invitations'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--noBorder:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(14690171167000251156)
,p_plug_display_sequence=>30
,p_plug_display_point=>'BODY'
,p_plug_item_display_point=>'BELOW'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_header=>'<p>Reminders are only sent for invitations that were emailed.  Manual invitations cannot be sent reminders.</p>'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(14131345795239716208)
,p_plug_name=>'Advanced'
,p_parent_plug_id=>wwv_flow_api.id(14131342703101716169)
,p_region_css_classes=>'infoTextRegion'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(14690161967644251135)
,p_plug_display_sequence=>60
,p_plug_display_point=>'BODY'
,p_plug_source=>'sys.htp.p(''<p>This application''''s current FROM address is: <strong>'' || apex_escape.html(:P1072_EMAIL_FROM) || ''</strong>.  The email from address can be controlled by navigating to application administration.</p>'');'
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P1072_EMAIL_FROM'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(14131345983180716209)
,p_name=>'Pending Reponses (from email invitations)'
,p_parent_plug_id=>wwv_flow_api.id(14131342703101716169)
,p_template=>wwv_flow_api.id(14690167327773251146)
,p_display_sequence=>40
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:is-expanded:t-Region--noBorder:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select nvl(ci.community_name,''Individual Invitation'') community_name,',
'       i.respondent_email,',
'       apex_util.get_since(i.created) email_sent,',
'       nvl((select ''Yes''',
'              from eba_qpoll_email_opt_out',
'             where respondent_id = i.respondent_id),''No'') opted_out',
'  from eba_qpoll_comm_invites ci,',
'       eba_qpoll_invites i',
' where ci.poll_id = :P1072_POLL_ID',
'   and ci.id = i.comm_invite_id',
'   and (:P1072_COMMUNITY_ID is null or',
'        nvl(ci.COMMUNITY_ID,0) = :P1072_COMMUNITY_ID)',
'   and i.email_sent = ''YES''',
'   and i.respondent_id not in',
'       (select respondent_id',
'          from eba_qpoll_results r',
'         where r.poll_id = :P1072_POLL_ID',
'           and r.IS_VALID_YN = ''Y'')',
'order by ci.community_name, i.respondent_email'))
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(14690179856222251179)
,p_query_num_rows=>1500
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_no_data_found=>'None pending.'
,p_query_row_count_max=>1500
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
 p_id=>wwv_flow_api.id(14131826992306804114)
,p_query_column_id=>1
,p_column_alias=>'COMMUNITY_NAME'
,p_column_display_sequence=>1
,p_column_heading=>'Community'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'ITEM_IS_NULL'
,p_display_when_condition=>'P1072_COMMUNITY_ID'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14131827088274804114)
,p_query_column_id=>2
,p_column_alias=>'RESPONDENT_EMAIL'
,p_column_display_sequence=>2
,p_column_heading=>'Invitee'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14131827207562804114)
,p_query_column_id=>3
,p_column_alias=>'EMAIL_SENT'
,p_column_display_sequence=>3
,p_column_heading=>'Email Sent'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14131898503498260361)
,p_query_column_id=>4
,p_column_alias=>'OPTED_OUT'
,p_column_display_sequence=>4
,p_column_heading=>'Opted Out'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(14131347090817716252)
,p_plug_name=>'buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(14690162135548251137)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(14131343303722716176)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(14131347090817716252)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(14690191414518251222)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:&LAST_VIEW.:&SESSION.::&DEBUG.:::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(14131342897430716170)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(14131347090817716252)
,p_button_name=>'PREVIEW'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(14690191414518251222)
,p_button_image_alt=>'Preview'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(14131343483959716176)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(14131347090817716252)
,p_button_name=>'SEND'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(14690191414518251222)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Send Reminders'
,p_button_position=>'REGION_TEMPLATE_CREATE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(14131350305578716289)
,p_branch_action=>'f?p=&APP_ID.:&LAST_VIEW.:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(14131343483959716176)
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(522079510906064547)
,p_name=>'P1072_PREVIEW_URL'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(14131342703101716169)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_util.prepare_url( p_url => ''f?p=''||:APP_ID||'':57:''||:APP_SESSION||''::NO:57:P57_METHOD:REMINDER'', ',
'                       p_checksum_type => ''SESSION'', ',
'                       p_plain_url => TRUE)'))
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(663361080513515178)
,p_name=>'P1072_REMINDER_SUBJECT'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(14131342703101716169)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select nvl(reminder_subject,''Reminder: Please Share Your Opinion on ''|| POLL_NAME)',
'  from eba_qpoll_polls',
' where id = :POLL_ID'))
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>'Email Subject'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(14690190497303251212)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(663361403446517711)
,p_name=>'P1072_REMINDER_BODY'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(14131342703101716169)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select nvl(reminder_body,''<p>Please take #POLL_LINK#.</p>',
'''||',
'           case when authentication_req_yn = ''N''',
'                then apex_lang.message(''UNAUTH_MSG'') end ||',
'''<p>Thanks in advance for your participation!</p>',
'<p>Best Regards,</p>',
'<p>The ''||:APPLICATION_TITLE||'' Team</p>'') default_body',
'  from eba_qpoll_polls',
' where id = :POLL_ID'))
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>'Email Body'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>80
,p_cHeight=>8
,p_field_template=>wwv_flow_api.id(14690190497303251212)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Include html formatted content to be used as the body of the email reminding people to take your poll or quiz.  Make sure you include #POLL_LINK# in your text.  It will be replaced with a link to take the poll and will include the poll name.'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14131342282669716153)
,p_name=>'P1072_USERS_WO_ACCESS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(14131342079794716152)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14131343679715716176)
,p_name=>'P1072_EMAIL_FROM'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(14131342703101716169)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14131344386658716190)
,p_name=>'P1072_POLL_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(14131342703101716169)
,p_prompt=>'Poll'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_named_lov=>'ACTIVE AND STAGED POLES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    poll_name dv, ',
'    id        rv',
'from',
'    eba_qpoll_polls p',
'where',
'    status_id > 1',
'order by',
'    1'))
,p_tag_attributes=>'style="width:300px;"'
,p_field_template=>wwv_flow_api.id(14690190497303251212)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
,p_attribute_02=>'LOV'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14131344887534716200)
,p_name=>'P1072_COMMUNITY_ID'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(14131342703101716169)
,p_prompt=>'Community to Remind'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'COMMUNITIES, REMINDER, P1072'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select name || '' (''|| not_resp || ''  not responded)'' d,',
'       community_id r',
'  from',
'(',
'select nvl(ci.community_id,0) community_id,',
'       nvl(ci.community_name,''Individual Invitations'') name,',
'       count(*) not_resp',
'  from eba_qpoll_comm_invites ci,',
'       eba_qpoll_invites i',
' where ci.poll_id = :P1072_POLL_ID',
'   and ci.id = i.comm_invite_id',
'   and i.respondent_id not in',
'       (select respondent_id',
'          from eba_qpoll_results r',
'         where r.poll_id = :P1072_POLL_ID',
'           and r.IS_VALID_YN = ''Y'')',
' group by community_id, nvl(community_name,''Individual Invitations'')',
')',
' order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- All -'
,p_lov_cascade_parent_items=>'P1072_POLL_ID'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_tag_attributes=>'style="width:300px;"'
,p_field_template=>wwv_flow_api.id(14690190497303251212)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Select the community of users that you wish to remind to take this poll.  The domain of communities is restricted to invited communities.  The number of non respondents are provided in the select list.'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14131345380532716208)
,p_name=>'P1072_POLL_NAME'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(14131342703101716169)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14131345609340716208)
,p_name=>'P1072_REMINDER_COUNT'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(14131342703101716169)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14131898103775184301)
,p_name=>'P1072_OPTED_OUT'
,p_item_sequence=>65
,p_item_plug_id=>wwv_flow_api.id(14131342703101716169)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(14131347707604716262)
,p_computation_sequence=>10
,p_computation_item=>'P1072_POLL_NAME'
,p_computation_type=>'QUERY'
,p_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    poll_name',
'from',
'    eba_qpoll_polls',
'where',
'    id = :P1072_POLL_ID;'))
,p_compute_when=>'P1072_POLL_ID'
,p_compute_when_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(14131347485499716262)
,p_computation_sequence=>20
,p_computation_item=>'P1072_EMAIL_FROM'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'EXPRESSION'
,p_computation_language=>'PLSQL'
,p_computation=>'eba_qpoll_fw.get_preference_value(''NOTIFICATION_EMAIL_FROM'')'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(14131347883929716266)
,p_validation_name=>'Application From Address is valid'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if eba_qpoll_fw.get_preference_value(''NOTIFICATION_EMAIL_FROM'') = ''N/A'' or instr(eba_qpoll_fw.get_preference_value(''NOTIFICATION_EMAIL_FROM''),''@example.com'') > 0 then',
'    return false;',
'else',
'    return true;',
'end if;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'The "From" address that this application uses to send emails has been improperly configured. It either has not been defined or it is using an invalid domain name (e.g. it ends in "@example.com" when your server''s domain name is NOT "example.com"). An'
||' application administrator must update the application''s FROM address to resolve this problem.'
,p_when_button_pressed=>wwv_flow_api.id(14131343483959716176)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(663362265828519713)
,p_validation_name=>'Email body contains #POLL_LINK#'
,p_validation_sequence=>20
,p_validation=>'instr(:P1072_REMINDER_BODY,''#POLL_LINK#'') > 0'
,p_validation2=>'PLSQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>'You must include #POLL_LINK# in your Email Body.'
,p_when_button_pressed=>wwv_flow_api.id(14131343483959716176)
,p_associated_item=>wwv_flow_api.id(663361403446517711)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(663362553202520664)
,p_validation_name=>'subject not null'
,p_validation_sequence=>30
,p_validation=>'P1072_REMINDER_SUBJECT'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'You must provide a subject for your reminder emails.'
,p_when_button_pressed=>wwv_flow_api.id(14131343483959716176)
,p_associated_item=>wwv_flow_api.id(663361080513515178)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(14131349399701716282)
,p_name=>'Preview Button'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(14131342897430716170)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(522080024237064553)
,p_event_id=>wwv_flow_api.id(14131349399701716282)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null; -- to save session state'
,p_attribute_02=>'P1072_REMINDER_SUBJECT,P1072_REMINDER_BODY'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(14131349704982716285)
,p_event_id=>wwv_flow_api.id(14131349399701716282)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'window.open(''&P1072_PREVIEW_URL.'');'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(14131348405406716272)
,p_name=>'Refresh Community Members Report'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1072_COMMUNITY_ID'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(14131349098839716282)
,p_event_id=>wwv_flow_api.id(14131348405406716272)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P1072_COMMUNITY_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(14131349282349716282)
,p_event_id=>wwv_flow_api.id(14131348405406716272)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(14131345983180716209)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(14131349794283716285)
,p_name=>'Disable send when no EMAIL FROM'
,p_event_sequence=>30
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'ITEM_IS_NULL'
,p_display_when_cond=>'P1072_EMAIL_FROM'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(14131350106987716286)
,p_event_id=>wwv_flow_api.id(14131349794283716285)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(14131343483959716176)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(14131348208410716268)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Record and Send Reminders'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'   l_reminder_count   number := 0;',
'   l_opted_out        number := 0;',
'   l_page_link        number := 50;',
'   l_opted_out_yn     varchar2(1);',
'   l_has_responded_yn varchar2(1);',
'   l_just_sent_yn     varchar2(1);',
'   l_email_id         number;',
'',
'   l_poll_url         varchar2(4000);',
'   l_body             clob;',
'begin',
'',
'   -- save new defaults',
'   update eba_qpoll_polls',
'      set reminder_subject = :P1072_REMINDER_SUBJECT,',
'          reminder_body = :P1072_REMINDER_BODY',
'    where id = :POLL_ID;',
'   commit;',
'',
'   apex_collection.create_or_truncate_collection (''EMAILS_SENT'');',
'',
'   for c1 in (',
'      select authentication_req_yn',
'        from eba_qpoll_polls',
'       where id = :P1072_POLL_ID',
'   ) loop',
'      if c1.authentication_req_yn = ''Y'' then',
'         l_page_link := 500;',
'      else',
'         l_page_link := 50;',
'      end if;',
'   end loop;',
'',
'   for c1 in (',
'      select id comm_invite_id, community_id',
'        from eba_qpoll_comm_invites',
'       where (:P1072_COMMUNITY_ID is null or -- all ',
'              community_id = :P1072_COMMUNITY_ID or  -- selected community',
'              (:P1072_COMMUNITY_ID = 0 and community_id is null) )  -- individual invitees',
'         and poll_id = :P1072_POLL_ID ',
'   ) loop',
'',
'      -- find all invitations',
'      for c2 in (',
'         select i.respondent_id,',
'                r.name,',
'                i.respondent_email email',
'           from eba_qpoll_invites i,',
'                eba_qpoll_respondents r',
'          where i.comm_invite_id = c1.comm_invite_id',
'            and i.respondent_id = r.id',
'      ) loop',
'',
'         -- check if already responded',
'         l_has_responded_yn := ''N'';',
'         for c3 in (',
'             select 1',
'               from eba_qpoll_results',
'              where poll_id = :P1072_POLL_ID',
'                and respondent_id = c2.respondent_id',
'         ) loop',
'           l_has_responded_yn := ''Y'';',
'         end loop;',
'',
'         if l_has_responded_yn = ''N'' then',
'',
'            -- check if opted out',
'            l_opted_out_yn  := ''N'';',
'            for c3 in (',
'               select 1',
'                 from eba_qpoll_email_opt_out',
'                where respondent_id = c2.respondent_id',
'            ) loop',
'               l_opted_out_yn := ''Y'';',
'            end loop;',
'',
'            -- check if email just sent',
'            l_just_sent_yn  := ''N'';',
'            for c3 in (',
'               select 1',
'                 from apex_collections',
'                where collection_name = ''EMAILS_SENT''',
'                  and c001 = lower(c2.email)',
'            ) loop',
'               l_just_sent_yn := ''Y'';',
'            end loop;',
'',
'            if l_opted_out_yn = ''N'' and l_just_sent_yn = ''N'' then',
'',
'               l_poll_url := ''<a href="''||:APP_PATH||',
'                               APEX_UTIL.PREPARE_URL(p_url => ''f?p=''||:APP_ID||'':''||l_page_link||'':::::LPOLL_ID,PID:'' ||',
'                                                               :P1072_POLL_ID||'',''||c2.respondent_id,',
'                                                     p_checksum_type => ''1'',',
'                                                     p_plain_url => TRUE)||''">''||:POLL_NAME||''</a>'';',
'                                                     ',
'              l_body := replace(:P1072_REMINDER_BODY,''#POLL_LINK#'',l_poll_url);',
'                  ',
'              eba_qpoll_email.send (',
'                  p_app_id             => :APP_ID,',
'                  p_template_static_id => ''INVITE'',',
'                  p_placeholders       => ''{'' || ',
'                                          ''    "SUBJECT":''           || apex_json.stringify( :P1072_REMINDER_SUBJECT ) || ',
'                                          ''   ,"APPLICATION_TITLE":'' || apex_json.stringify( apex_escape.html(:APPLICATION_TITLE) ) || ',
'                                          ''   ,"OPT_OUT_TEXT":''      || apex_json.stringify( apex_lang.message(''OPT_OUT_TEXT'', ',
'                                                                     :APP_PATH ||',
'                                                                     APEX_UTIL.PREPARE_URL(p_url => ''f?p='' ||:APP_ID || '':optout'',',
'                                                                                           p_plain_url => TRUE),',
'                                                                     apex_escape.html(:APPLICATION_TITLE)) ) || ',
'                                          ''   ,"BODY":''  || apex_json.stringify( l_body ) || ',
'                                          ''}'' , ',
'                  p_to                  => c2.email,',
'                  p_from                => eba_qpoll_fw.get_preference_value(''NOTIFICATION_EMAIL_FROM''),',
'                  p_cc                  => null,',
'                  p_poll_id             => :P1072_POLL_ID,',
'                  p_community_id        => c1.community_id,',
'                  p_respondent_id       => c2.respondent_id,',
'                  p_email_id            => l_email_id);',
'',
'               insert into eba_qpoll_invites',
'                  (comm_invite_id, respondent_id, respondent_email, ',
'                   email_sent, email_id)',
'               values',
'                  (c1.comm_invite_id, c2.respondent_id, lower(c2.email),',
'                   ''REMINDER_SENT'', l_email_id);',
'',
'               apex_collection.add_member(',
'                    p_collection_name => ''EMAILS_SENT'',',
'                    p_c001            => lower(c2.email));',
'',
'               l_reminder_count := l_reminder_count + 1;',
'            else',
'               if l_opted_out_yn = ''Y'' then ',
'                 l_opted_out := l_opted_out + 1; ',
'               end if; ',
'            end if;',
'         end if;',
'      end loop;',
'',
'   end loop;',
'',
'   :P1072_REMINDER_COUNT := l_reminder_count;',
'   :P1072_OPTED_OUT      := l_opted_out;',
'',
'   apex_collection.delete_collection (',
'      p_collection_name => ''EMAILS_SENT'' );',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'#SQLERRM#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(14131343483959716176)
,p_process_success_message=>'&P1072_REMINDER_COUNT. reminders sent, &P1072_OPTED_OUT. opted out of email.'
);
wwv_flow_api.component_end;
end;
/
