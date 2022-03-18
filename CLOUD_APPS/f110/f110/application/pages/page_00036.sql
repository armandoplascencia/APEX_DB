prompt --application/pages/page_00036
begin
--   Manifest
--     PAGE: 00036
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
 p_id=>36
,p_user_interface_id=>wwv_flow_api.id(14434115216807266717)
,p_name=>'Manual Invitations Recorded'
,p_alias=>'MANUAL-INVITATIONS-RECORDED'
,p_page_mode=>'MODAL'
,p_step_title=>'Manual Invitations Recorded'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(14008957981820441125)
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'section.uSuccessRegion p.desc {',
'font-size: 14px;',
'line-height: 1.5;',
'font-weight: normal;',
'margin-bottom: 16px;',
'color: #404040;',
'text-align: left;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(250464227793234829)
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'ALLAN'
,p_last_upd_yyyymmddhh24miss=>'20210301100152'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(14098503009756771194)
,p_plug_name=>'Invitations Recorded'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--noBorder:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(14690171167000251156)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY_3'
,p_plug_source=>'<p class="desc">The number of manual invitations recorded is below.  You can invite more or view the links to pass onto the users.</p>'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(334571662509153832)
,p_plug_name=>'Other'
,p_parent_plug_id=>wwv_flow_api.id(14098503009756771194)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(14690161967644251135)
,p_plug_display_sequence=>40
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(14098534188757837745)
,p_name=>'Community Invitations'
,p_parent_plug_id=>wwv_flow_api.id(14098503009756771194)
,p_template=>wwv_flow_api.id(14690161967644251135)
,p_display_sequence=>30
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'BODY'
,p_item_display_point=>'BELOW'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select decode(email_sent,''YES'',''Emails Sent'',',
'                         ''OPTED_OUT'',''Opted Out'',',
'                         ''PREVIOUSLY_SENT'',''Previously Sent'',',
'                         ''MANUAL_INVITE'',''Manual Invites'',',
'                         email_sent) email_sent, count(*) cnt',
'  from eba_qpoll_invites',
' where comm_invite_id = :P72_COMM_INVITE_ID',
'    or comm_invite_id = :P72_COMM_INVITE_ID2',
'group by email_sent'))
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from eba_qpoll_invites',
' where comm_invite_id = :P72_COMM_INVITE_ID',
'    or comm_invite_id = :P72_COMM_INVITE_ID2'))
,p_display_condition_type=>'EXISTS'
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_query_headings_type=>'NO_HEADINGS'
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'0'
,p_query_no_data_found=>'No community invites found.'
,p_query_num_rows_type=>'0'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14098534389287837747)
,p_query_column_id=>1
,p_column_alias=>'EMAIL_SENT'
,p_column_display_sequence=>2
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14098534501883837748)
,p_query_column_id=>2
,p_column_alias=>'CNT'
,p_column_display_sequence=>1
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(14098503392338771223)
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
 p_id=>wwv_flow_api.id(14098533898037833890)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(14098503392338771223)
,p_button_name=>'INVITE_MORE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(14690191414518251222)
,p_button_image_alt=>'Invite More'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:72:&SESSION.::&DEBUG.:72:P72_POLL_ID,P72_INVITE_METHOD:&P72_POLL_ID.,&P72_INVITE_METHOD.'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from EBA_QPOLL_RESP_COMMUNITIES',
'where id not in',
'      (select community_id',
'         from eba_qpoll_comm_invites',
'        where poll_id = :P72_POLL_ID)'))
,p_button_condition_type=>'EXISTS'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(14098536082066856417)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(14098503392338771223)
,p_button_name=>'VIEW_LINKS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(14690191414518251222)
,p_button_image_alt=>'View Invitations'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:16:&SESSION.::&DEBUG.:CIR,RIR:IR_POLL_ID,IRC_COMM_INVITE_ID:&P72_POLL_ID.,&P72_COMM_INVITE_ID.'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(14104036909589128514)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(14098503392338771223)
,p_button_name=>'VIEW_POLL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(14690191414518251222)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Manage Poll'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:100:&SESSION.::&DEBUG.:100:LPOLL_ID:&P72_POLL_ID.'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14135230601751452619)
,p_name=>'P36_OTHER_INVITEES_MSG'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(334571662509153832)
,p_use_cache_before_default=>'NO'
,p_source=>'P72_OTHER_INVITEES_MSG'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(14690190146706251208)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'I'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'HTML'
);
wwv_flow_api.component_end;
end;
/
