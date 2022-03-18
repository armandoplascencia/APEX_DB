prompt --application/pages/page_00200
begin
--   Manifest
--     PAGE: 00200
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
 p_id=>200
,p_user_interface_id=>wwv_flow_api.id(14434115216807266717)
,p_name=>'Advanced Search'
,p_alias=>'ADVANCED-SEARCH'
,p_step_title=>'Advanced Search'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_api.id(16485731932639691338)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(250464227793234829)
,p_protection_level=>'C'
,p_last_upd_yyyymmddhh24miss=>'20200210134811'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(307816687775719175)
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
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(14240909974711597626)
,p_plug_name=>'Polls (contributors)'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(14690169852560251151)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT poll_id,',
'       row_key,',
'       poll, ',
'       POLL_DETAILS,',
'       ANONYMOUS,',
'       answers_updatable,',
'       results_viewable,',
'       Scored,',
'       created,',
'       created_by,',
'       updated,',
'       updated_by,',
'       status,',
'       invite_only,',
'       poll_type,',
'       questions,',
'       invitations,',
'       responses,',
'       started,',
'       ended,',
'       last_action,',
'      ''Take It'' actions,',
'      case when take_status in (''CAN_TAKE_IT'',''HAS_ERRORS'',''CAN_UPDATE'') and questions > 0',
'           then ''<a class="t-Button t-Button--small t-Button--hot t-Button--simple t-Button--stretch" href="''',
'               ||apex_util.prepare_url(''f?p=''||:APP_ID||'':50:''||:APP_SESSION||'':::50:LPOLL_ID:''||poll_id)',
'               ||''">''||apex_lang.message(take_status)||''</a>''',
'           else '''' end action_URL',
'from',
'(SELECT id poll_id, ',
'       row_key,',
'       POLL_NAME poll, ',
'       POLL_DETAILS,',
'       decode(ANONYMOUS_YN,''Y'',''Yes'',''N'',''No'',p.ANONYMOUS_YN) ANONYMOUS,',
'       decode(CAN_UPDATE_ANSWERS_YN,''Y'',''Yes'',''N'',''No'',p.CAN_UPDATE_ANSWERS_YN) answers_updatable,',
'       decode(ALL_VIEW_RESULTS_YN,''Y'',''Viewable by Invitees'',''N'',''Viewable by Named Users'',p.ALL_VIEW_RESULTS_YN) results_viewable,',
'       decode(ENABLE_SCORE_YN,''Y'',''Yes'',''N'',''No'',p.ENABLE_SCORE_YN) Scored,',
'       created,',
'       lower(created_by) created_by,',
'       updated,',
'       lower(updated_by) updated_by,',
'       case status_id when 1 then ''Being Authored''',
'                      when 2 then ''Testing''',
'                      when 3 then ''Published''',
'                      when 4 then ''Closed'' end status,',
'       decode(invite_only_yn,''Y'',''Yes'',''N'',''No'',invite_only_yn) invite_only,',
'       decode(POLL_OR_QUIZ,''P'',''Poll'',''Q'',''Quiz'',p.POLL_OR_QUIZ) poll_type,',
'       (select count(*) from EBA_QPOLL_QUESTIONS qu where qu.POLL_ID = p.id) questions,',
'       nvl((select max(x.updated) from eba_qpoll_results x',
'          where x.poll_id = p.id',
'            and nvl(x.is_valid_yn,''Y'') = ''Y''),p.created) last_action,',
'       nvl((select count(distinct respondent_id)',
'          from eba_qpoll_comm_invites c,',
'               eba_qpoll_invites i',
'         where c.poll_id = p.id',
'           and c.id = i.comm_invite_id),0) invitations,',
'       nvl((select count(*)',
'              from eba_qpoll_results r',
'             where r.poll_ID = p.id',
'               and nvl(r.is_valid_yn,''Y'') = ''Y''),0)  responses,',
'      --',
'      (select max(p.start_time) started',
'              from eba_qpoll_results r',
'             where r.poll_ID = p.id',
'               and nvl(r.is_valid_yn,''Y'') = ''Y'') started,',
'      --',
'      (select max(p.stop_time) ended',
'              from eba_qpoll_results r',
'             where r.poll_ID = p.id',
'               and nvl(r.is_valid_yn,''Y'') = ''Y'') ended,',
'      ''Take It'' actions,',
'      eba_qpoll.poll_take_status (',
'                p_app_id   => :APP_ID,',
'                p_poll_id  => id,',
'                p_app_user => :APP_USER,',
'                p_app_session => :APP_SESSION) take_status',
'from   EBA_QPOLL_POLLS p',
')'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_required_role=>wwv_flow_api.id(250464227793234829)
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>'select 1 from eba_qpoll_polls'
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(14240910097124597626)
,p_name=>'Polls'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No polls found.'
,p_allow_save_rpt_public=>'Y'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>' '
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_pivot=>'N'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML:EMAIL'
,p_owner=>'MIKE'
,p_internal_uid=>14139310482202766708
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(307817812834721956)
,p_db_column_name=>'POLL_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Poll ID'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(307818170953721962)
,p_db_column_name=>'POLL_DETAILS'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Poll Details'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(307818493932721962)
,p_db_column_name=>'ANONYMOUS'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Anonymize'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(307818818221721962)
,p_db_column_name=>'ANSWERS_UPDATABLE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Updatable'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(307819216598721965)
,p_db_column_name=>'RESULTS_VIEWABLE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Results'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(307819671893721965)
,p_db_column_name=>'SCORED'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Scored'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(307820105944721965)
,p_db_column_name=>'CREATED'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Created'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'Y'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(307820486093721966)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Created By'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(307820893997721966)
,p_db_column_name=>'UPDATED'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Updated'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'Y'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(307821304237721967)
,p_db_column_name=>'UPDATED_BY'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Updated By'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(307822841407721969)
,p_db_column_name=>'POLL_TYPE'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'Type'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(307823250440721969)
,p_db_column_name=>'POLL'
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'Poll'
,p_column_link=>'f?p=&APP_ID.:100:&SESSION.::&DEBUG.:100:LPOLL_ID:#POLL_ID#'
,p_column_linktext=>'#POLL#'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(307823626791721970)
,p_db_column_name=>'QUESTIONS'
,p_display_order=>19
,p_column_identifier=>'S'
,p_column_label=>'Questions'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(307826470320721973)
,p_db_column_name=>'INVITATIONS'
,p_display_order=>20
,p_column_identifier=>'Z'
,p_column_label=>'Invitations'
,p_column_link=>'f?p=&APP_ID.:16:&SESSION.::&DEBUG.:CIR,RIR:IR_POLL_ID:#POLL_ID#'
,p_column_linktext=>'#INVITATIONS#'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(307824075018721970)
,p_db_column_name=>'RESPONSES'
,p_display_order=>21
,p_column_identifier=>'T'
,p_column_label=>'Responses'
,p_column_link=>'f?p=&APP_ID.:66:&SESSION.::&DEBUG.:66:LPOLL_ID:#POLL_ID#'
,p_column_linktext=>'#RESPONSES#'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(307824473816721971)
,p_db_column_name=>'ENDED'
,p_display_order=>22
,p_column_identifier=>'U'
,p_column_label=>'Ended'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'Y'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(307824884136721971)
,p_db_column_name=>'STARTED'
,p_display_order=>23
,p_column_identifier=>'V'
,p_column_label=>'Started'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'Y'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(307825287551721971)
,p_db_column_name=>'ACTIONS'
,p_display_order=>24
,p_column_identifier=>'W'
,p_column_label=>'Actions'
,p_column_link=>'f?p=&APP_ID.:50:&SESSION.::&DEBUG.:50:LPOLL_ID:#POLL_ID#'
,p_column_linktext=>'#ACTIONS#'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_rpt_show_filter_lov=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(307825713389721972)
,p_db_column_name=>'ACTION_URL'
,p_display_order=>25
,p_column_identifier=>'X'
,p_column_label=>'Action'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_rpt_named_lov=>wwv_flow_api.id(14087221994116175016)
,p_rpt_show_filter_lov=>'2'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(307826025244721973)
,p_db_column_name=>'LAST_ACTION'
,p_display_order=>26
,p_column_identifier=>'Y'
,p_column_label=>'Last Action'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'Y'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(307849379444051850)
,p_db_column_name=>'INVITE_ONLY'
,p_display_order=>46
,p_column_identifier=>'AB'
,p_column_label=>'Invite Only'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(307849441452051851)
,p_db_column_name=>'STATUS'
,p_display_order=>56
,p_column_identifier=>'AC'
,p_column_label=>'Status'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(522472534411574119)
,p_db_column_name=>'ROW_KEY'
,p_display_order=>66
,p_column_identifier=>'AD'
,p_column_label=>'Row Key'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(14240911975404597897)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'2062272'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'ROW_KEY:POLL:POLL_TYPE:STATUS:QUESTIONS:INVITATIONS:RESPONSES:LAST_ACTION:ACTION_URL:'
,p_sort_column_1=>'LAST_ACTION'
,p_sort_direction_1=>'DESC'
,p_sort_column_2=>'STARTED'
,p_sort_direction_2=>'DESC NULLS LAST'
,p_sort_column_3=>'0'
,p_sort_direction_3=>'ASC'
,p_sort_column_4=>'0'
,p_sort_direction_4=>'ASC'
,p_sort_column_5=>'0'
,p_sort_direction_5=>'ASC'
,p_sort_column_6=>'0'
,p_sort_direction_6=>'ASC'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(307827310248721982)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(14240909974711597626)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--link:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(14690191013111251220)
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&SESSION.::&DEBUG.:&APP_PAGE_ID.,RIR::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_api.component_end;
end;
/
