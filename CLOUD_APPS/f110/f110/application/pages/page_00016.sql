prompt --application/pages/page_00016
begin
--   Manifest
--     PAGE: 00016
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
 p_id=>16
,p_user_interface_id=>wwv_flow_api.id(14434115216807266717)
,p_name=>'Invitations'
,p_alias=>'INVITATIONS'
,p_step_title=>'Invitations'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(14008957981820441125)
,p_step_template=>wwv_flow_api.id(14690156334092251112)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(250464227793234829)
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_last_upd_yyyymmddhh24miss=>'20200204162429'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(14085437186962911821)
,p_plug_name=>'Invitations'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(14690169852560251151)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select p.id poll_id,',
'       p.poll_name,',
'       ci.id comm_invite_id,',
'       ci.community_name community_name,',
'       lower(i.created_by) invitation_sent_by,',
'       i.created  invitation_sent,',
'       i.respondent_id, ',
'       i.respondent_email,',
'       decode(i.email_sent,''YES'', ''<a href="''',
'                ||apex_util.prepare_url(''f?p=''||:APP_ID||'':13:''||:APP_SESSION||'':::13:P13_POLL_ID,P13_INVITE_ID,P13_EMAIL_ID:''||p.id||'',''||i.id||'',''||i.email_id)',
'                ||''" title="View Details">Email</a>'',',
'            ''REMINDER_SENT'', ''<a href="''',
'                ||apex_util.prepare_url(''f?p=''||:APP_ID||'':13:''||:APP_SESSION||'':::13:P13_POLL_ID,P13_INVITE_ID,P13_EMAIL_ID:''||p.id||'',''||i.id||'',''||i.email_id)',
'                ||''" title="View Details">Reminder</a>'',',
'            ''OPTED_OUT'',''Opted Out'',',
'            ''PREVIOUSLY_SENT'',''Previously Sent'',',
'            ''MANUAL_INVITE'', ''<a href="''',
'                ||apex_util.prepare_url(''f?p=''||:APP_ID||'':13:''||:APP_SESSION||'':::13:P13_POLL_ID,P13_INVITE_ID,P13_EMAIL_ID:''||p.id||'',''||i.id||'',''||i.email_id)',
'                ||''" title="View Details">Manual Invite</a>'',',
'              i.email_sent) email_sent_yn,',
'       case when p.anonymous_yn = ''Y'' then ''na'' else',
'          nvl((select ''Y''',
'                 from eba_qpoll_results r',
'                where r.poll_id = p.id',
'                  and r.IS_VALID_YN = ''Y''',
'                  and r.respondent_id = i.respondent_id ),''N'') end has_responded,',
'       case when p.anonymous_yn = ''Y'' then null else',
'          (select max(created)',
'             from eba_qpoll_results r',
'            where r.poll_id = p.id',
'              and r.IS_VALID_YN = ''Y''',
'              and r.respondent_id = i.respondent_id) end response_date,',
'       :APP_PATH||apex_util.prepare_url(p_url => ''f?p=''||:APP_ID||'':''||decode(p.authentication_req_yn,''Y'',''500'',''50'')||'':0::::LPOLL_ID,PID:'' ||p.id||'',''||i.respondent_id,',
'                                             p_checksum_type => ''1'') poll_url,',
'       i.id invite_id',
'  from eba_qpoll_polls p,',
'       eba_qpoll_comm_invites ci,',
'       eba_qpoll_invites i',
' where p.id = ci.poll_id',
'   and ci.id = i.comm_invite_id',
'  ',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(14085437390496911828)
,p_name=>'Respondent Communities'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_report_categories=>'N'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_pivot=>'N'
,p_show_calendar=>'N'
,p_show_flashback=>'N'
,p_download_formats=>'CSV:HTML:EMAIL'
,p_owner=>'MIKE'
,p_internal_uid=>988450912708214401
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14085440802486943787)
,p_db_column_name=>'POLL_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Selected Poll'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14085440886451943788)
,p_db_column_name=>'POLL_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Poll Name'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14085441082350943788)
,p_db_column_name=>'COMMUNITY_NAME'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Community'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14085441195176943788)
,p_db_column_name=>'INVITATION_SENT_BY'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Invited By'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14085441290622943788)
,p_db_column_name=>'INVITATION_SENT'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Invited'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'Y'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14085441391921943788)
,p_db_column_name=>'RESPONDENT_ID'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Selected Invitee'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14085441502389943789)
,p_db_column_name=>'RESPONDENT_EMAIL'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Invitee'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14085441586327943789)
,p_db_column_name=>'EMAIL_SENT_YN'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Invitation Method'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_rpt_named_lov=>wwv_flow_api.id(14085604699316036854)
,p_rpt_show_filter_lov=>'2'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14085446188215995913)
,p_db_column_name=>'HAS_RESPONDED'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Responded'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_rpt_named_lov=>wwv_flow_api.id(16164232820407773274)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14085448706067048458)
,p_db_column_name=>'RESPONSE_DATE'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Response Date'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'Y'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14132050989345534759)
,p_db_column_name=>'POLL_URL'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Poll URL'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14135174208094565912)
,p_db_column_name=>'COMM_INVITE_ID'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Selected Community'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14135214387313590340)
,p_db_column_name=>'INVITE_ID'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Selected Individual'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(14085438189183911838)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'9884518'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'POLL_NAME:COMMUNITY_NAME:RESPONDENT_EMAIL:EMAIL_SENT_YN:HAS_RESPONDED:RESPONSE_DATE:INVITATION_SENT_BY:INVITATION_SENT:COMM_INVITE_ID:INVITE_ID'
,p_sort_column_1=>'POLL_NAME'
,p_sort_direction_1=>'ASC'
,p_sort_column_2=>'COMMUNITY_NAME'
,p_sort_direction_2=>'ASC'
,p_sort_column_3=>'RESPONDENT_EMAIL'
,p_sort_direction_3=>'ASC'
,p_sort_column_4=>'INVITATION_SENT'
,p_sort_direction_4=>'DESC'
,p_sort_column_5=>'0'
,p_sort_direction_5=>'ASC'
,p_sort_column_6=>'0'
,p_sort_direction_6=>'ASC'
,p_break_on=>'POLL_NAME:COMMUNITY_NAME:0:0:0:0'
,p_break_enabled_on=>'POLL_NAME:COMMUNITY_NAME:0:0:0:0'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(14085439185857911892)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(14690173773848251160)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(17689949455017337264)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(14690191633551251224)
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(14085554480748340704)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(14085439185857911892)
,p_button_name=>'BACK'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(14690190887630251216)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Back'
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:&LAST_VIEW.:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-angle-double-left'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(14085438385571911838)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(14085437186962911821)
,p_button_name=>'RESET'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(14690190887630251216)
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&SESSION.::&DEBUG.:RP,&APP_PAGE_ID.,RIR::'
,p_icon_css_classes=>'fa-undo-alt'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(14135212097814578986)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'if Request is COMM'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'APEX_UTIL.IR_FILTER (   ',
'   p_page_id        => 16,',
'   p_report_column  => ''COMMUNITY_NAME'',',
'   p_operator_abbr  => ''NN'',',
'   p_filter_value   => null );'))
,p_process_clob_language=>'PLSQL'
,p_process_when=>'COMM'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(14135212301278580009)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'if Request is IND'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'APEX_UTIL.IR_FILTER (   ',
'   p_page_id        => 16,',
'   p_report_column  => ''COMMUNITY_NAME'',',
'   p_operator_abbr  => ''N'',',
'   p_filter_value   => null );'))
,p_process_clob_language=>'PLSQL'
,p_process_when=>'IND'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
);
wwv_flow_api.component_end;
end;
/
