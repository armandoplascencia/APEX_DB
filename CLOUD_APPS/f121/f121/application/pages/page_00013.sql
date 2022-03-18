prompt --application/pages/page_00013
begin
--   Manifest
--     PAGE: 00013
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>121
,p_default_id_offset=>0
,p_default_owner=>'MISO'
);
wwv_flow_api.create_page(
 p_id=>13
,p_user_interface_id=>wwv_flow_api.id(95153343667962421)
,p_name=>'zendesk_ticket_metrics'
,p_alias=>'ZENDESK-TICKET-METRICS'
,p_step_title=>'zendesk_ticket_metrics'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'CR_COFFEE'
,p_last_upd_yyyymmddhh24miss=>'20220203030824'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(95944056161198079)
,p_plug_name=>'zendesk_ticket_metrics'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(95050013540962342)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID_1,',
'       ID,',
'       URL,',
'       REOPENS,',
'       REPLIES,',
'       SOLVED_AT,',
'       TICKET_ID,',
'       CREATED_AT,',
'       UPDATED_AT,',
'       ASSIGNED_AT,',
'       GROUP_STATIONS,',
'       ASSIGNEE_STATIONS,',
'       STATUS_UPDATED_AT,',
'       ASSIGNEE_UPDATED_AT,',
'       REQUESTER_UPDATED_AT,',
'       INITIALLY_ASSIGNED_AT,',
'       BUSINESS,',
'       CALENDAR,',
'       LATEST_COMMENT_ADDED_AT,',
'       BUSINESS2,',
'       CALENDAR2,',
'       BUSINESS3,',
'       CALENDAR3,',
'       BUSINESS4,',
'       CALENDAR4,',
'       BUSINESS5,',
'       CALENDAR5,',
'       BUSINESS6,',
'       CALENDAR6',
'  from ZENDESK_TICKET_METRICS'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_page_header=>'zendesk_ticket_metrics'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(95944180716198079)
,p_name=>'zendesk_ticket_metrics'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_save_rpt_public=>'Y'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'TOP_AND_BOTTOM_LEFT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>true
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:EMAIL:XLSX:PDF:RTF'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="">'
,p_allow_exclude_null_values=>'N'
,p_allow_hide_extra_columns=>'N'
,p_owner=>'MISO'
,p_internal_uid=>95944180716198079
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95944525415198081)
,p_db_column_name=>'ID_1'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Id 1'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95944935805198083)
,p_db_column_name=>'ID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95945323019198083)
,p_db_column_name=>'URL'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Url'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95945711937198083)
,p_db_column_name=>'REOPENS'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Reopens'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95946143410198084)
,p_db_column_name=>'REPLIES'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Replies'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95946546377198084)
,p_db_column_name=>'SOLVED_AT'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Solved At'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95946949955198084)
,p_db_column_name=>'TICKET_ID'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Ticket Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95947393656198084)
,p_db_column_name=>'CREATED_AT'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Created At'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95947763884198084)
,p_db_column_name=>'UPDATED_AT'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Updated At'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95948159800198085)
,p_db_column_name=>'ASSIGNED_AT'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Assigned At'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95948573587198085)
,p_db_column_name=>'GROUP_STATIONS'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Group Stations'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95948929881198085)
,p_db_column_name=>'ASSIGNEE_STATIONS'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Assignee Stations'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95949383465198085)
,p_db_column_name=>'STATUS_UPDATED_AT'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Status Updated At'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95949758226198086)
,p_db_column_name=>'ASSIGNEE_UPDATED_AT'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Assignee Updated At'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95950118703198086)
,p_db_column_name=>'REQUESTER_UPDATED_AT'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Requester Updated At'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95950565261198086)
,p_db_column_name=>'INITIALLY_ASSIGNED_AT'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Initially Assigned At'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95950925269198087)
,p_db_column_name=>'BUSINESS'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'Business'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95951349263198087)
,p_db_column_name=>'CALENDAR'
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'Calendar'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95951710162198087)
,p_db_column_name=>'LATEST_COMMENT_ADDED_AT'
,p_display_order=>19
,p_column_identifier=>'S'
,p_column_label=>'Latest Comment Added At'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95952190080198087)
,p_db_column_name=>'BUSINESS2'
,p_display_order=>20
,p_column_identifier=>'T'
,p_column_label=>'Business2'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95952530883198087)
,p_db_column_name=>'CALENDAR2'
,p_display_order=>21
,p_column_identifier=>'U'
,p_column_label=>'Calendar2'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95952968409198088)
,p_db_column_name=>'BUSINESS3'
,p_display_order=>22
,p_column_identifier=>'V'
,p_column_label=>'Business3'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95953319013198088)
,p_db_column_name=>'CALENDAR3'
,p_display_order=>23
,p_column_identifier=>'W'
,p_column_label=>'Calendar3'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95953782242198088)
,p_db_column_name=>'BUSINESS4'
,p_display_order=>24
,p_column_identifier=>'X'
,p_column_label=>'Business4'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95954182787198088)
,p_db_column_name=>'CALENDAR4'
,p_display_order=>25
,p_column_identifier=>'Y'
,p_column_label=>'Calendar4'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95954526944198088)
,p_db_column_name=>'BUSINESS5'
,p_display_order=>26
,p_column_identifier=>'Z'
,p_column_label=>'Business5'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95954935327198089)
,p_db_column_name=>'CALENDAR5'
,p_display_order=>27
,p_column_identifier=>'AA'
,p_column_label=>'Calendar5'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95955341196198089)
,p_db_column_name=>'BUSINESS6'
,p_display_order=>28
,p_column_identifier=>'AB'
,p_column_label=>'Business6'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95955762674198089)
,p_db_column_name=>'CALENDAR6'
,p_display_order=>29
,p_column_identifier=>'AC'
,p_column_label=>'Calendar6'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(95956604079206724)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'959567'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ID_1:ID:URL:REOPENS:REPLIES:SOLVED_AT:TICKET_ID:CREATED_AT:UPDATED_AT:ASSIGNED_AT:GROUP_STATIONS:ASSIGNEE_STATIONS:STATUS_UPDATED_AT:ASSIGNEE_UPDATED_AT:REQUESTER_UPDATED_AT:INITIALLY_ASSIGNED_AT:BUSINESS:CALENDAR:LATEST_COMMENT_ADDED_AT:BUSINESS2:CA'
||'LENDAR2:BUSINESS3:CALENDAR3:BUSINESS4:CALENDAR4:BUSINESS5:CALENDAR5:BUSINESS6:CALENDAR6'
);
wwv_flow_api.component_end;
end;
/
