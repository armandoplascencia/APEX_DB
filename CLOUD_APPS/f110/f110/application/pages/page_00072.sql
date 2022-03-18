prompt --application/pages/page_00072
begin
--   Manifest
--     PAGE: 00072
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
 p_id=>72
,p_user_interface_id=>wwv_flow_api.id(14434115216807266717)
,p_name=>'Invite'
,p_alias=>'INVITE'
,p_page_mode=>'MODAL'
,p_step_title=>'Invite'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(14031786804687606758)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(250464227793234829)
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'ALLAN'
,p_last_upd_yyyymmddhh24miss=>'20210518154241'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(14025191693118326343)
,p_plug_name=>'buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(14690162135548251137)
,p_plug_display_sequence=>70
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(14025192084082337436)
,p_plug_name=>'Invite Community and/or Individuals'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(14690171167000251156)
,p_plug_display_sequence=>30
,p_plug_display_point=>'BODY'
,p_plug_item_display_point=>'BELOW'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(14025193292103443922)
,p_name=>'Community Members'
,p_parent_plug_id=>wwv_flow_api.id(14025192084082337436)
,p_template=>wwv_flow_api.id(14690167327773251146)
,p_display_sequence=>40
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:is-expanded:t-Region--noBorder:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight:t-Report--inline:t-Report--hideNoPagination'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    r.email',
'from',
'    eba_qpoll_respondents r,',
'    EBA_QPOLL_RESP_COMMUNITIES c,',
'    eba_qpoll_resp_comm_ref rc',
'where',
'    c.id = :P72_COMMUNITY_ID',
'and',
'    rc.community_id = c.id',
'and',
'    r.id = rc.respondent_id',
'order by 1'))
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(14690179856222251179)
,p_query_headings_type=>'NO_HEADINGS'
,p_query_num_rows=>50
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
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
 p_id=>wwv_flow_api.id(14025193594713443923)
,p_query_column_id=>1
,p_column_alias=>'EMAIL'
,p_column_display_sequence=>1
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(14033640182018970554)
,p_plug_name=>'Advanced'
,p_parent_plug_id=>wwv_flow_api.id(14025192084082337436)
,p_region_css_classes=>'infoTextRegion'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(14690161967644251135)
,p_plug_display_sequence=>60
,p_plug_display_point=>'BODY'
,p_plug_source=>'This application''s current EMAIL FROM address is: <strong>&P72_EMAIL_FROM.</strong>.  The EMAIL FROM address value can be controlled by navigating to application administration.'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P72_EMAIL_FROM'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(14098507605410969018)
,p_name=>'Already Invited'
,p_parent_plug_id=>wwv_flow_api.id(14025192084082337436)
,p_template=>wwv_flow_api.id(14690167327773251146)
,p_display_sequence=>50
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:is-collapsed:t-Region--noBorder:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select nvl(community_name,''Individuals'') community_name,',
'       (select count(*) ',
'          from eba_qpoll_results r,',
'               eba_qpoll_invites i',
'         where r.poll_id = :POLL_ID',
'           and r.IS_VALID_YN = ''Y''',
'           and i.comm_invite_id = c.id',
'           and r.respondent_id = i.respondent_id ) num_responses,',
'       (select count(*)',
'          from eba_qpoll_invites ',
'         where comm_invite_id = c.id) num_requests,',
'       created invite_date',
'  from eba_qpoll_comm_invites c',
' where poll_id = :P72_POLL_ID',
'   and community_name is not null',
'union',
'select respondent_email community_name,',
'       nvl((select 1 ',
'          from eba_qpoll_results',
'         where poll_id = :POLL_ID',
'           and IS_VALID_YN = ''Y''',
'           and respondent_id = i.respondent_id ),0) num_responses,',
'       null num_requests,',
'       c.created invite_date',
'  from eba_qpoll_comm_invites c,',
'       eba_qpoll_invites i',
' where c.poll_id = :P72_POLL_ID',
'   and c.community_name is null',
'   and c.id = i.comm_invite_id',
'order by invite_date desc'))
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from eba_qpoll_comm_invites c',
' where poll_id = :P72_POLL_ID'))
,p_display_condition_type=>'EXISTS'
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P72_POLL_ID'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(14690179856222251179)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
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
 p_id=>wwv_flow_api.id(14098507986344969044)
,p_query_column_id=>1
,p_column_alias=>'COMMUNITY_NAME'
,p_column_display_sequence=>1
,p_column_heading=>'Community/Individual'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14098508100669969044)
,p_query_column_id=>2
,p_column_alias=>'NUM_RESPONSES'
,p_column_display_sequence=>3
,p_column_heading=>'Responses'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14098508203450969044)
,p_query_column_id=>3
,p_column_alias=>'NUM_REQUESTS'
,p_column_display_sequence=>2
,p_column_heading=>'Invitations'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14098508279023969044)
,p_query_column_id=>4
,p_column_alias=>'INVITE_DATE'
,p_column_display_sequence=>4
,p_column_heading=>'Invited'
,p_use_as_row_header=>'N'
,p_column_format=>'SINCE'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(14117391694558730284)
,p_plug_name=>'Warning - EMAIL FROM Address Undefined'
,p_region_template_options=>'#DEFAULT#:t-Alert--colorBG:t-Alert--horizontal:t-Alert--defaultIcons:t-Alert--warning'
,p_plug_template=>wwv_flow_api.id(14690160537466251126)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_source=>'Invitations cannot be sent because the EMAIL FROM address has not been defined.  Please contact an administrator.'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'ITEM_IS_NULL'
,p_plug_display_when_condition=>'P72_EMAIL_FROM'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(28528821166106128899)
,p_plug_name=>'Warning - Poll In Testing Phase'
,p_region_template_options=>'#DEFAULT#:t-Alert--colorBG:t-Alert--horizontal:t-Alert--defaultIcons:t-Alert--warning'
,p_plug_template=>wwv_flow_api.id(14690160537466251126)
,p_plug_display_sequence=>15
,p_plug_display_point=>'BODY'
,p_plug_source=>'This poll is in the testing phase.  If an invitee is not a Contributor or Administrator, they will be able to view and take the poll.'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from eba_qpoll_polls',
' where id = :P72_POLL_ID',
'   and status_id = 2'))
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(14034614879648210829)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(14025192084082337436)
,p_button_name=>'add_community'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--link:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(14690191013111251220)
,p_button_image_alt=>'Add New Community'
,p_button_position=>'BODY'
,p_button_redirect_url=>'f?p=&APP_ID.:70:&SESSION.::&DEBUG.:RP,70::'
,p_icon_css_classes=>'fa-chevron-right'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(14025198008473505357)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(14025191693118326343)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(14690191414518251222)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:100:&SESSION.::&DEBUG.:::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(14025198383109516954)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(14025191693118326343)
,p_button_name=>'SEND'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(14690191414518251222)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Invite'
,p_button_position=>'REGION_TEMPLATE_CREATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(14033640910248016620)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(14025191693118326343)
,p_button_name=>'PREVIEW'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(14690191414518251222)
,p_button_image_alt=>'Preview'
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(14025216403203954667)
,p_branch_name=>'if email'
,p_branch_action=>'f?p=&APP_ID.:23:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(14025198383109516954)
,p_branch_sequence=>10
,p_branch_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_branch_condition=>'P72_INVITE_METHOD'
,p_branch_condition_text=>'EMAIL'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(14098528705057420330)
,p_branch_name=>'if manual'
,p_branch_action=>'f?p=&APP_ID.:36:&SESSION.::&DEBUG.:::'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(14025198383109516954)
,p_branch_sequence=>20
,p_branch_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_branch_condition=>'P72_INVITE_METHOD'
,p_branch_condition_text=>'MANUAL'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(522077650316064529)
,p_name=>'P72_PREVIEW_URL'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(14025192084082337436)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_util.prepare_url( p_url => ''f?p=''||:APP_ID||'':57:''||:APP_SESSION||''::NO:57:P57_METHOD:INVITE:'', ',
'                       p_checksum_type => ''SESSION'', ',
'                       p_plain_url => TRUE)'))
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(522078415590064537)
,p_name=>'P72_INVITE_SUBJECT'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(14025192084082337436)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select nvl(invite_subject,''Please Share Your Opinion on '' || POLL_NAME)',
'  from eba_qpoll_polls',
' where id = :POLL_ID'))
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>'Email Subject'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(14690190733279251214)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(522078603383064538)
,p_name=>'P72_INVITE_BODY'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(14025192084082337436)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select nvl(invite_body,''<p>Please take #POLL_LINK#.</p>',
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
,p_field_template=>wwv_flow_api.id(14690190733279251214)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Include html formatted content to be used as the body of the email inviting people to take your poll or quiz.  Make sure you include #POLL_LINK# in your text.  It will be replaced with a link to take the poll and will include the poll name.'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14025192385798354994)
,p_name=>'P72_POLL_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(14025192084082337436)
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
 p_id=>wwv_flow_api.id(14025192599804363701)
,p_name=>'P72_COMMUNITY_ID'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(14025192084082337436)
,p_prompt=>'Community'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'COMMUNITIES, P72'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select d, r',
'  from',
'(',
'select name || '' (member count: ''|| (select count(*) ',
'                                       from eba_qpoll_resp_comm_ref rc',
'                                      where rc.community_id = c.id) ||'')'' d,',
'       id r',
'from EBA_QPOLL_RESP_COMMUNITIES c',
'where publish_yn = ''Y''',
'  and id not in',
'      (select community_id',
'         from eba_qpoll_comm_invites',
'        where poll_id = :P72_POLL_ID',
'          and community_id is not null)',
'union',
'select name ||'' (added since last invitation: ''|| cnt ||'')'' d,',
'       id r',
'from',
'(',
'select c.id, c.name, count(*) cnt',
'  from eba_qpoll_resp_communities c,',
'       eba_qpoll_resp_comm_ref rc',
' where exists (select 1 from eba_qpoll_comm_invites ci',
'                where ci.poll_id = :P72_POLL_ID',
'                  and ci.community_id = c.id)',
'   and c.id = rc.community_id',
'   and c.publish_yn = ''Y''',
'   and rc.respondent_id not in ',
'       (select respondent_id',
'          from eba_qpoll_invites i,',
'               eba_qpoll_comm_invites ci2',
'         where i.comm_invite_id = ci2.id',
'           and ci2.community_id = c.id',
'           and ci2.poll_id = :P72_POLL_ID',
'           and ci2.community_id is not null)',
'group by c.id, c.name',
')',
'where cnt > 0',
')',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select -'
,p_lov_cascade_parent_items=>'P72_POLL_ID'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_tag_attributes=>'style="width:300px;"'
,p_display_when=>'select null from EBA_QPOLL_RESP_COMMUNITIES'
,p_display_when_type=>'EXISTS'
,p_field_template=>wwv_flow_api.id(14690190497303251212)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Select the community of users that you wish to invite to take this poll.'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14025206002057772904)
,p_name=>'P72_POLL_NAME'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(14025192084082337436)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14093623804077483359)
,p_name=>'P72_INVITE_METHOD'
,p_is_required=>true
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(14025192084082337436)
,p_item_default=>'EMAIL'
,p_prompt=>'Invite Method'
,p_source=>'EMAIL'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'INVITE METHOD'
,p_lov=>'.'||wwv_flow_api.id(14093623905099484369)||'.'
,p_field_template=>wwv_flow_api.id(14690190497303251212)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Use the <strong>Invite Method</strong> method if you wish to send email invitations from this system.',
'Use the <strong>Manual</strong> method if you wish to invite users to take this poll yourself; and not via an email from this system.'))
,p_attribute_01=>'1'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14098532202728634154)
,p_name=>'P72_COMM_INVITE_ID'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(14025192084082337436)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14117391494346722461)
,p_name=>'P72_EMAIL_FROM'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(14025192084082337436)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14135177382749714444)
,p_name=>'P72_OTHER_INVITEES'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(14025192084082337436)
,p_prompt=>'Individuals'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>4000
,p_cHeight=>3
,p_field_template=>wwv_flow_api.id(14690190497303251212)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'You can include individuals, that are not in a community, to take a poll.  You can do this when inviting a community or just invite individuals (without any community).'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14135228686390988712)
,p_name=>'P72_COMM_INVITE_ID2'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(14025192084082337436)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15546464386832960594)
,p_name=>'P72_OTHER_INVITEES_MSG'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(14025192084082337436)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(14025206980275783011)
,p_computation_sequence=>10
,p_computation_item=>'P72_POLL_NAME'
,p_computation_type=>'QUERY'
,p_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    poll_name',
'from',
'    eba_qpoll_polls',
'where',
'    id = :P72_POLL_ID;'))
,p_compute_when=>'P72_POLL_ID'
,p_compute_when_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(14117392294118737665)
,p_computation_sequence=>20
,p_computation_item=>'P72_EMAIL_FROM'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'EXPRESSION'
,p_computation_language=>'PLSQL'
,p_computation=>'eba_qpoll_fw.get_preference_value(''NOTIFICATION_EMAIL_FROM'')'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(14135178483384729293)
,p_validation_name=>'P72_COMMUNITY_ID or other_invitees not null'
,p_validation_sequence=>5
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P72_COMMUNITY_ID is not null or',
':P72_OTHER_INVITEES is not null'))
,p_validation2=>'SQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>'You must invite a community, individuals or both.'
,p_when_button_pressed=>wwv_flow_api.id(14025198383109516954)
,p_associated_item=>wwv_flow_api.id(14025192599804363701)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(14033618080147433643)
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
,p_validation_condition=>':P72_INVITE_METHOD = ''EMAIL'''
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'EXPRESSION'
,p_when_button_pressed=>wwv_flow_api.id(14025198383109516954)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(522078995177064542)
,p_validation_name=>'Email body contains #POLL_LINK#'
,p_validation_sequence=>20
,p_validation=>'instr(:P72_INVITE_BODY,''#POLL_LINK#'') > 0'
,p_validation2=>'PLSQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>'You must include #POLL_LINK# in your Email Body.'
,p_validation_condition=>'P72_INVITE_METHOD'
,p_validation_condition2=>'EMAIL'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_when_button_pressed=>wwv_flow_api.id(14025198383109516954)
,p_associated_item=>wwv_flow_api.id(522078603383064538)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(522079028382064543)
,p_validation_name=>'subject not null'
,p_validation_sequence=>30
,p_validation=>'P72_INVITE_SUBJECT'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'You must provide a subject for your email invitations.'
,p_validation_condition=>'P72_INVITE_METHOD'
,p_validation_condition2=>'EMAIL'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_when_button_pressed=>wwv_flow_api.id(14025198383109516954)
,p_associated_item=>wwv_flow_api.id(522078415590064537)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(14033644192202058681)
,p_name=>'Preview Button'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(14033640910248016620)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(522079926025064552)
,p_event_id=>wwv_flow_api.id(14033644192202058681)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null; -- to get these items saved'
,p_attribute_02=>'P72_INVITE_SUBJECT,P72_INVITE_BODY'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(14033644482488058685)
,p_event_id=>wwv_flow_api.id(14033644192202058681)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'window.open(''&P72_PREVIEW_URL.'');'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(14025193685308451352)
,p_name=>'Show Community Members Report'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P72_COMMUNITY_ID'
,p_condition_element=>'P72_COMMUNITY_ID'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(14025194193468451357)
,p_event_id=>wwv_flow_api.id(14025193685308451352)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(14025193292103443922)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(14025194880752463638)
,p_event_id=>wwv_flow_api.id(14025193685308451352)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P72_COMMUNITY_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(14025194006495451356)
,p_event_id=>wwv_flow_api.id(14025193685308451352)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(14025193292103443922)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(14025197094098487839)
,p_event_id=>wwv_flow_api.id(14025193685308451352)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(14025193292103443922)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(14117392408195743675)
,p_name=>'Disable send when no EMAIL FROM'
,p_event_sequence=>30
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'ITEM_IS_NULL'
,p_display_when_cond=>'P72_EMAIL_FROM'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(14117392706326743701)
,p_event_id=>wwv_flow_api.id(14117392408195743675)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(14025198383109516954)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(14134472881169103604)
,p_name=>'Disable results link when manual'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P72_INVITE_METHOD'
,p_condition_element=>'P72_INVITE_METHOD'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'MANUAL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(14134473180634103616)
,p_event_id=>wwv_flow_api.id(14134472881169103604)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P72_INCLUDE_RESULTS_LINK'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(334571434780153830)
,p_event_id=>wwv_flow_api.id(14134472881169103604)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P72_INCLUDE_RESULTS_LINK'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(14134473384255103622)
,p_event_id=>wwv_flow_api.id(14134472881169103604)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P72_INCLUDE_RESULTS_LINK'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(356234588034239868)
,p_name=>'hide Community Members report'
,p_event_sequence=>50
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(522076710661064519)
,p_event_id=>wwv_flow_api.id(356234588034239868)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(14025193292103443922)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(522078615967064539)
,p_name=>'hide subject/body when manual invite'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P72_INVITE_METHOD'
,p_condition_element=>'P72_INVITE_METHOD'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'EMAIL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(522078757068064540)
,p_event_id=>wwv_flow_api.id(522078615967064539)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P72_INVITE_SUBJECT,P72_INVITE_BODY'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(522078864291064541)
,p_event_id=>wwv_flow_api.id(522078615967064539)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P72_INVITE_SUBJECT,P72_INVITE_BODY'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(14025200509269638066)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Record and Send Invitations'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'   l_comm_invite_id   number;',
'   l_page_link        number := 50;',
'   l_invited_yn       varchar2(1);',
'   l_opted_out_yn     varchar2(1);',
'   l_email_id         number;',
'   l_poll_url         varchar2(4000);',
'   l_body             clob;',
'',
'   l_cnt_ind_already_invited  number := 0;',
'   l_respondent_id    number;',
'   l_comm_invite_id2  number;',
'   l_msg              varchar2(4000);',
'begin',
'',
'-- save new defaults',
'if nvl(:P72_INVITE_METHOD,''EMAIL'') = ''EMAIL'' then',
'   update eba_qpoll_polls',
'      set invite_subject = :P72_INVITE_SUBJECT,',
'          invite_body = :P72_INVITE_BODY',
'    where id = :POLL_ID;',
'   commit;',
'end if;',
'',
'',
'for c1 in (',
'   select authentication_req_yn',
'     from eba_qpoll_polls',
'    where id = :P72_POLL_ID',
') loop',
'   if c1.authentication_req_yn = ''Y'' then',
'      l_page_link := 500;',
'   else',
'      l_page_link := 50;',
'   end if;',
'end loop;',
'',
'if :P72_COMMUNITY_ID is not null then',
'   for c1 in (',
'      select name',
'        from eba_qpoll_resp_communities',
'       where id = :P72_COMMUNITY_ID',
'   ) loop',
'      insert into eba_qpoll_comm_invites',
'         (poll_id, community_id, community_name, invite_method)',
'      values',
'         (:P72_POLL_ID, :P72_COMMUNITY_ID, c1.name, :P72_INVITE_METHOD)',
'      returning id into l_comm_invite_id;',
'     :P72_COMM_INVITE_ID := l_comm_invite_id;',
'   end loop;',
'',
'   for c1 in (',
'      select r.id as respondent_id,',
'             r.name,',
'             r.email',
'        from eba_qpoll_respondents r,',
'             eba_qpoll_resp_communities c,',
'             eba_qpoll_resp_comm_ref rc',
'       where c.id = :P72_COMMUNITY_ID',
'         and rc.community_id = c.id',
'         and r.id = rc.respondent_id',
'   ) loop',
'',
'      l_invited_yn    := ''N'';',
'      l_opted_out_yn  := ''N'';',
'',
'      -- check if already invited to take this poll',
'      for c2 in (',
'         select 1',
'           from eba_qpoll_comm_invites ci,',
'                eba_qpoll_invites i',
'          where ci.poll_id = :P72_POLL_ID',
'            and ci.id = i.comm_invite_id',
'            and i.respondent_id = c1.respondent_id',
'      ) loop',
'          l_invited_yn := ''Y'';',
'      end loop;',
'',
'      if l_invited_yn = ''N'' and nvl(:P72_INVITE_METHOD,''EMAIL'') = ''EMAIL'' then',
'         -- check if opted out of email',
'         for c2 in (',
'            select 1',
'              from eba_qpoll_email_opt_out',
'             where respondent_id = c1.respondent_id',
'         ) loop',
'            l_opted_out_yn := ''Y'';',
'         end loop;',
'      end if;',
'',
'      if l_invited_yn = ''N'' and l_opted_out_yn = ''N'' and',
'         nvl(:P72_INVITE_METHOD,''EMAIL'') = ''EMAIL'' then',
'',
'         l_poll_url := ''<a href="''|| :APP_PATH ||',
'                               APEX_UTIL.PREPARE_URL(p_url => ''f?p=''||:APP_ID||'':''||l_page_link||'':::::LPOLL_ID,PID:'' ||',
'                                                               :P72_POLL_ID||'',''||c1.respondent_id,',
'                                                     p_checksum_type => ''1'',',
'                                                     p_plain_url => TRUE)||''">'' || :POLL_NAME || ''</a>'';',
'                                                     ',
'        l_body := replace(:P72_INVITE_BODY,''#POLL_LINK#'',l_poll_url);',
'        ',
'         eba_qpoll_email.send (',
'            p_app_id             => :APP_ID,',
'            p_template_static_id => ''INVITE'',',
'            p_placeholders       => ''{'' || ',
'                                    ''    "SUBJECT":''           || apex_json.stringify( :P72_INVITE_SUBJECT ) || ',
'                                    ''   ,"APPLICATION_TITLE":'' || apex_json.stringify( apex_escape.html(:APPLICATION_TITLE) ) || ',
'                                    ''   ,"OPT_OUT_TEXT":''      || apex_json.stringify( apex_lang.message(''OPT_OUT_TEXT'', ',
'                                                                                       :APP_PATH ||',
'                                                                                        APEX_UTIL.PREPARE_URL(p_url => ''f?p='' ||:APP_ID || '':optout'',',
'                                                                                            p_plain_url => TRUE),',
'                                                                                       apex_escape.html(:APPLICATION_TITLE)) ) || ',
'                                    ''   ,"BODY":''  || apex_json.stringify( l_body ) || ',
'                                    ''}'' , ',
'            p_to                  => c1.email,',
'            p_from                => eba_qpoll_fw.get_preference_value(''NOTIFICATION_EMAIL_FROM''),',
'            p_cc                  => null,',
'            p_poll_id             => :P72_POLL_ID,',
'            p_community_id        => :P72_COMMUNITY_ID,',
'            p_respondent_id       => c1.respondent_id,',
'            p_email_id            => l_email_id);',
'',
'      end if;',
'',
'      if l_invited_yn = ''N'' then',
'         insert into eba_qpoll_invites',
'            (comm_invite_id, respondent_id, respondent_email, ',
'             email_sent, email_id)',
'         values',
'            (l_comm_invite_id, c1.respondent_id, lower(c1.email),',
'             case when :P72_INVITE_METHOD = ''MANUAL'' then ''MANUAL_INVITE''',
'                  when l_invited_yn = ''Y'' then ''PREVIOUSLY_SENT''',
'                  when l_opted_out_yn = ''Y'' then ''OPTED_OUT''',
'                  else ''YES'' end, ',
'             l_email_id );',
'      end if;',
'   end loop;',
'',
'end if;',
'',
'if :P72_OTHER_INVITEES is not null then',
'    for c in (',
'        select c001 as respondent',
'          from apex_collections',
'         where collection_name = ''EBA_QPOLL_INVITEES_VALID''',
'    ) loop',
'',
'      begin',
'         select r.id',
'           into l_respondent_id',
'           from eba_qpoll_respondents r',
'          where lower(r.email) = c.respondent;',
'      exception',
'        when no_data_found then',
'             l_respondent_id := null;',
'     end;',
'',
'     if l_respondent_id is null then',
'        insert into eba_qpoll_respondents',
'           (email)',
'        values',
'           (c.respondent)',
'        returning id into l_respondent_id;',
'     end if;',
'',
'      l_invited_yn    := ''N'';',
'      l_opted_out_yn  := ''N'';',
'',
'      -- check if already invited to take this poll',
'      for c2 in (',
'         select 1',
'           from eba_qpoll_comm_invites ci,',
'                eba_qpoll_invites i',
'          where ci.poll_id = :P72_POLL_ID',
'            and ci.id = i.comm_invite_id',
'            and i.respondent_id = l_respondent_id',
'      ) loop',
'          l_invited_yn := ''Y'';',
'          l_cnt_ind_already_invited := l_cnt_ind_already_invited + 1;',
'      end loop;',
'',
'      if l_invited_yn = ''N'' and nvl(:P72_INVITE_METHOD,''EMAIL'') = ''EMAIL'' then',
'         -- check if opted out of email',
'         for c2 in (',
'            select 1',
'              from eba_qpoll_email_opt_out',
'             where respondent_id = l_respondent_id',
'         ) loop',
'            l_opted_out_yn := ''Y'';',
'         end loop;',
'      end if;',
'',
'      if l_invited_yn = ''N'' and l_opted_out_yn = ''N'' and',
'         nvl(:P72_INVITE_METHOD,''EMAIL'') = ''EMAIL'' then',
'',
'         l_poll_url := ''<a href="''|| :APP_PATH ||',
'                               APEX_UTIL.PREPARE_URL(p_url => ''f?p='' || :APP_ID || '':'' || l_page_link || '':::::LPOLL_ID,PID:'' || :P72_POLL_ID || '','' || l_respondent_id,',
'                                                     p_checksum_type => ''1'',',
'                                                     p_plain_url => TRUE) || ''">'' || :POLL_NAME || ''</a>'';',
'                                                     ',
'        l_body := replace(:P72_INVITE_BODY, ''#POLL_LINK#'', l_poll_url);',
'        ',
'         eba_qpoll_email.send (',
'            p_app_id             => :APP_ID,',
'            p_template_static_id => ''INVITE'',',
'            p_placeholders       => ''{'' || ',
'                                    ''    "SUBJECT":''           || apex_json.stringify( :P72_INVITE_SUBJECT ) || ',
'                                    ''   ,"APPLICATION_TITLE":'' || apex_json.stringify( apex_escape.html(:APPLICATION_TITLE) ) || ',
'                                    ''   ,"OPT_OUT_TEXT":''      || apex_json.stringify( apex_lang.message(''OPT_OUT_TEXT'', ',
'                                                                 :APP_PATH ||',
'                                                                 APEX_UTIL.PREPARE_URL(p_url => ''f?p='' ||:APP_ID || '':optout'',',
'                                                                                       p_plain_url => TRUE),',
'                                                                 apex_escape.html(:APPLICATION_TITLE)) ) || ',
'                                    ''   ,"BODY":''  || apex_json.stringify( l_body ) || ',
'                                    ''}'' , ',
'            p_to                  => c.respondent,',
'            p_from                => :P72_EMAIL_FROM,',
'            p_cc                  => null,',
'            p_poll_id             => :P72_POLL_ID,',
'            p_respondent_id       => l_respondent_id,',
'            p_email_id            => l_email_id );',
'        ',
'      end if;',
'',
'      if l_invited_yn = ''N'' then',
'         if l_comm_invite_id2 is null then',
'            insert into eba_qpoll_comm_invites',
'               (poll_id, invite_method)',
'            values',
'               (:P72_POLL_ID, :P72_INVITE_METHOD)',
'            returning id into l_comm_invite_id2;',
'            :P72_COMM_INVITE_ID2 := l_comm_invite_id2;',
'         end if;',
'',
'         insert into eba_qpoll_invites',
'            (comm_invite_id, respondent_id, respondent_email, ',
'             email_sent, email_id)',
'         values',
'            (l_comm_invite_id2, l_respondent_id, lower(c.respondent),',
'             case when :P72_INVITE_METHOD = ''MANUAL'' then ''MANUAL_INVITE''',
'                  when l_invited_yn = ''Y'' then ''PREVIOUSLY_SENT''',
'                  when l_opted_out_yn = ''Y'' then ''OPTED_OUT''',
'                  else ''YES'' end, ',
'             l_email_id);',
'      end if;',
'',
'     l_respondent_id := null;',
'',
'   end loop;',
'',
'   for c1 in (',
'      select count(*) cnt',
'        from wwv_flow_collections',
'       where collection_name = ''EBA_QPOLL_INVITEES_INVALID''',
'         and c002 = ''INVALID EMAIL''',
'   ) loop',
'      if c1.cnt != 0 then',
'         l_msg := c1.cnt || '' invalid emails, '';',
'      end if;',
'   end loop;',
'',
'   for c1 in (',
'      select count(*) cnt',
'        from wwv_flow_collections',
'       where collection_name = ''EBA_QPOLL_INVITEES_INVALID''',
'         and c002 = ''DUPLICATE USER''',
'   ) loop',
'      if c1.cnt != 0 then',
'         l_msg := l_msg || c1.cnt || '' duplicate users, '';',
'      end if;',
'   end loop;',
'',
'   for c1 in (',
'      select count(*) cnt',
'        from wwv_flow_collections',
'       where collection_name = ''EBA_QPOLL_INVITEES_INVALID''',
'         and c002 = ''ALREADY INVITED''',
'   ) loop',
'      if c1.cnt != 0 or l_cnt_ind_already_invited != 0 then',
'         l_msg := l_msg || c1.cnt + l_cnt_ind_already_invited || '' already invited, '';',
'      end if;',
'   end loop;',
'   ',
'   for c1 in (',
'      select count(*) cnt',
'        from wwv_flow_collections',
'       where collection_name = ''EBA_QPOLL_INVITEES_INVALID''',
'         and c002 = ''NAME TOO LONG''',
'   ) loop',
'      if c1.cnt != 0 then',
'         l_msg := l_msg || c1.cnt || '' names too long, '';',
'      end if;',
'   end loop;',
'',
'   if l_msg is not null then',
'      l_msg := rtrim(l_msg,'', '');',
'      :P72_OTHER_INVITEES_MSG := ''<strong>Individual Invitations</strong>: '' || l_msg;',
'   end if;',
'',
'   ---------------------',
'   -- delete collections',
'   --',
'   wwv_flow_collection.DELETE_COLLECTION(''EBA_QPOLL_INVITEES_INVALID'');',
'   wwv_flow_collection.DELETE_COLLECTION(''EBA_QPOLL_INVITEES_VALID'');',
'',
'end if;',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'#SQLERRM#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(14025198383109516954)
);
wwv_flow_api.component_end;
end;
/
begin
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>110
,p_default_id_offset=>101599614921830918
,p_default_owner=>'MISO'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(14135186899857158740)
,p_process_sequence=>5
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Load other invitees'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_validate_emails  varchar2(1);',
'    l_line             varchar2(32767);',
'    l_emails           wwv_flow_global.vc_arr2;',
'    l_email            varchar2(4000);',
'    l_at               number;',
'    l_dot              number;',
'    l_valid            boolean := true;',
'    l_domain           varchar2(4000);',
'begin',
'',
'    if eba_qpoll_fw.get_preference_value(''USERNAME_FORMAT'') = ''EMAIL'' then ',
'       l_validate_emails := ''Y'';',
'    else',
'       l_validate_emails := ''N'';',
'    end if;',
'    ',
'    ---------------------',
'    -- create collections',
'    --',
'    apex_collection.CREATE_OR_TRUNCATE_COLLECTION (''EBA_QPOLL_INVITEES_INVALID'');',
'    apex_collection.CREATE_OR_TRUNCATE_COLLECTION (''EBA_QPOLL_INVITEES_VALID'');',
' ',
'    --------------------------------------------',
'    -- replace delimiting characters with commas',
'    --',
'    l_line := :P72_OTHER_INVITEES;',
'    l_line := replace(l_line,chr(10),'' '');',
'    l_line := replace(l_line,chr(13),'' '');',
'    l_line := replace(l_line,chr(9),'' '');',
'    l_line := replace(l_line,''<'','' '');',
'    l_line := replace(l_line,''>'','' '');',
'    l_line := replace(l_line,'';'','' '');',
'    l_line := replace(l_line,'':'','' '');',
'    l_line := replace(l_line,''('','' '');',
'    l_line := replace(l_line,'')'','' '');',
'    l_line := replace(l_line,'' '','','');',
'',
'    -----------------------------------------',
'    -- get one comma separated line of emails',
'    --',
'    for j in 1..1000 loop',
'        if instr(l_line,'',,'') > 0 then',
'           l_line := replace(l_line,'',,'','','');',
'        else',
'           exit;',
'        end if;',
'    end loop;',
'',
'    -------------------------',
'    -- get an array of emails',
'    --',
'    l_emails := wwv_flow_utilities.string_to_table(l_line,'','');',
'',
'    -----------------------------',
'    -- add emails to a collection',
'    --',
'    l_email := null;',
'    l_domain := null;',
'    l_at := 0;',
'    l_dot := 0;',
'    for j in 1..l_emails.count loop',
'        l_valid := true;',
'        l_email := trim(l_emails(j));',
'        l_email := replace(l_email,chr(49824),null);',
'',
'        if l_email is not null then',
'            if l_validate_emails = ''Y'' then',
'               -----------',
'               -- Validate',
'               --',
'               l_at := instr(nvl(l_email,''x''),''@'');',
'               l_domain := substr(l_email,l_at+1);',
'               l_dot := instr(l_domain,''.'');',
'               if l_at < 2 then',
'                   apex_collection.add_member(',
'                       p_collection_name => ''EBA_QPOLL_INVITEES_INVALID'',',
'                       p_c001            => l_email,',
'                       p_c002            => ''INVALID EMAIL'');',
'                   commit;',
'                   l_valid := false;',
'               end if;',
'',
'               if l_dot = 0 and l_valid then',
'                   apex_collection.add_member(',
'                       p_collection_name => ''EBA_QPOLL_INVITEES_INVALID'',',
'                       p_c001            => l_email,',
'                       p_c002            => ''INVALID EMAIL'');',
'                   commit;',
'                   l_valid := false;',
'               end if;',
'            end if;',
'',
'            l_email := trim(l_email);',
'            l_email := trim(both ''.'' from l_email);',
'            l_email := replace(l_email,'' '',null);',
'            l_email := replace(l_email,chr(10),null);',
'            l_email := replace(l_email,chr(9),null);',
'            l_email := replace(l_email,chr(13),null);',
'            l_email := replace(l_email,chr(49824),null);',
'',
'            if l_valid and length(l_email) > 255 then',
'                apex_collection.add_member(',
'                    p_collection_name => ''EBA_QPOLL_INVITEES_INVALID'',',
'                    p_c001            => upper(l_email),',
'                    p_c002            => ''NAME TOO LONG'');',
'                commit;',
'                l_valid := false;',
'            end if;',
'',
'            if l_valid then',
'                for c1 in (select /* APEXeaf772 */  c001',
'                             from wwv_flow_collections',
'                            where collection_name = ''EBA_QPOLL_INVITEES_VALID''',
'                              and c001 = upper(l_email))',
'                loop',
'                    apex_collection.add_member(',
'                        p_collection_name => ''EBA_QPOLL_INVITEES_INVALID'',',
'                        p_c001            => upper(l_email),',
'                        p_c002            => ''DUPLICATE USER'');',
'                        commit;',
'                    l_valid := false;',
'                    exit;',
'                end loop;',
'            end if;',
'',
'            if l_valid then',
'                for c1 in (select /* APEXeaf772 */  1',
'                             from eba_qpoll_invites i,',
'                                  eba_qpoll_comm_invites ci',
'                            where i.comm_invite_id = ci.id',
'                              and upper(i.respondent_email) = upper(l_email)',
'                              and ci.poll_id = :P72_POLL_ID )',
'                loop',
'                    apex_collection.add_member(',
'                        p_collection_name => ''EBA_QPOLL_INVITEES_INVALID'',',
'                        p_c001            => upper(l_email),',
'                        p_c002            => ''ALREADY INVITED'');',
'                        commit;',
'                    l_valid := false;',
'                    exit;',
'                end loop;',
'            end if;',
'',
'            if l_valid then',
'                apex_collection.add_member(',
'                    p_collection_name => ''EBA_QPOLL_INVITEES_VALID'',',
'                    p_c001            => lower(l_email));',
'                    commit;',
'            end if;',
'',
'        end if;',
'        l_email := null;',
'    end loop;',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(14025198383109516954)
,p_process_when=>'P72_OTHER_INVITEES'
,p_process_when_type=>'ITEM_IS_NOT_NULL'
);
null;
wwv_flow_api.component_end;
end;
/
