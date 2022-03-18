prompt --application/pages/page_00042
begin
--   Manifest
--     PAGE: 00042
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>126
,p_default_id_offset=>101651461840938715
,p_default_owner=>'MISO'
);
wwv_flow_api.create_page(
 p_id=>42
,p_user_interface_id=>wwv_flow_api.id(1222136671983413726)
,p_name=>'Calendars'
,p_alias=>'CALENDARS'
,p_page_mode=>'MODAL'
,p_step_title=>'Calendars'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_api.id(3336588467926114584)
,p_protection_level=>'C'
,p_help_text=>'<p>When the Multiple Calendar build option is enabled, events can be placed on a Calendar. A calendar can be defined as public or private, which will determine whether only specified users can view the events or not. Creation and editing of events ca'
||'n be limited to Contributors granted limited access.  The Short Name of the Calendar is used as a prefix on events when displayed. Click the <strong>Add Calendar</strong> button to add a new calendar.</p>'
,p_last_upd_yyyymmddhh24miss=>'20200131133549'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(17662695855709290759)
,p_plug_name=>'Calendars'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>wwv_flow_api.id(1797851790615014320)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select calendar_id,',
'       short_name,',
'       calendar_name,',
'       description,',
'       case when public_view_yn = ''Y'' then ''Yes'' else ''No'' end public_view,',
'       case when is_active_yn = ''Y'' then ''Yes'' else ''No'' end active,',
'       (select count(*) from EBA_CA_EVENTS e',
'         where e.calendar_id = c.calendar_id) cnt_events,',
'       CREATED_ON,',
'       LOWER(CREATED_BY) CREATED_BY,',
'       nvl(last_updated_on, created_on) LAST_UPDATED_ON,',
'       LOWER(LAST_UPDATED_BY) LAST_UPDATED_BY',
'  from EBA_CA_CALENDARS c'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(17662696298049290760)
,p_name=>'EBA_CA_EVENT_TYPES'
,p_max_row_count=>'10000'
,p_max_row_count_message=>'This query returns more than 10,000 rows, please filter your data to ensure complete results.'
,p_no_data_found_message=>'No calendars found.'
,p_allow_save_rpt_public=>'Y'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML:EMAIL'
,p_detail_link=>'f?p=&APP_ID.:44:&SESSION.::&DEBUG.:44:P44_CALENDAR_ID:#CALENDAR_ID#'
,p_detail_link_text=>'<span class="fa fa-edit" aria-hidden="true"></span>'
,p_detail_link_attr=>'title="Edit #CALENDAR_NAME#"'
,p_owner=>'SBKENNED'
,p_internal_uid=>17558533966832672704
);
wwv_flow_api.create_worksheet_col_group(
 p_id=>wwv_flow_api.id(17662696806713290763)
,p_name=>'Details'
,p_display_sequence=>10
);
wwv_flow_api.create_worksheet_col_group(
 p_id=>wwv_flow_api.id(17662696352929290762)
,p_name=>'Audit Info'
,p_display_sequence=>20
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1938773116149606475)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>4
,p_group_id=>wwv_flow_api.id(17662696352929290762)
,p_column_identifier=>'D'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_help_text=>'The user who created the record.'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1938773445079606477)
,p_db_column_name=>'LAST_UPDATED_BY'
,p_display_order=>5
,p_group_id=>wwv_flow_api.id(17662696352929290762)
,p_column_identifier=>'F'
,p_column_label=>'Last Updated By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_help_text=>'The user who last updated the record.'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1938773885114606477)
,p_db_column_name=>'CNT_EVENTS'
,p_display_order=>7
,p_group_id=>wwv_flow_api.id(17662696806713290763)
,p_column_identifier=>'I'
,p_column_label=>'Number of Events'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1938774298855606477)
,p_db_column_name=>'CREATED_ON'
,p_display_order=>8
,p_group_id=>wwv_flow_api.id(17662696352929290762)
,p_column_identifier=>'J'
,p_column_label=>'Created'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'Y'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1938774695333606478)
,p_db_column_name=>'LAST_UPDATED_ON'
,p_display_order=>9
,p_group_id=>wwv_flow_api.id(17662696352929290762)
,p_column_identifier=>'K'
,p_column_label=>'Last Updated'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'Y'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1938775082291606478)
,p_db_column_name=>'CALENDAR_ID'
,p_display_order=>10
,p_group_id=>wwv_flow_api.id(17662696806713290763)
,p_column_identifier=>'L'
,p_column_label=>'Calendar Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1938775434960606478)
,p_db_column_name=>'SHORT_NAME'
,p_display_order=>11
,p_group_id=>wwv_flow_api.id(17662696806713290763)
,p_column_identifier=>'M'
,p_column_label=>'Short Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1938775857247606479)
,p_db_column_name=>'CALENDAR_NAME'
,p_display_order=>12
,p_group_id=>wwv_flow_api.id(17662696806713290763)
,p_column_identifier=>'N'
,p_column_label=>'Calendar Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1938776328838606479)
,p_db_column_name=>'DESCRIPTION'
,p_display_order=>13
,p_group_id=>wwv_flow_api.id(17662696806713290763)
,p_column_identifier=>'O'
,p_column_label=>'Description'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1938776730802606479)
,p_db_column_name=>'ACTIVE'
,p_display_order=>14
,p_group_id=>wwv_flow_api.id(17662696806713290763)
,p_column_identifier=>'P'
,p_column_label=>'Active?'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1774768459020852798)
,p_db_column_name=>'PUBLIC_VIEW'
,p_display_order=>24
,p_column_identifier=>'Q'
,p_column_label=>'Public Can View?'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(17662711566899290772)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'18346147'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'SHORT_NAME:CALENDAR_NAME:DESCRIPTION:PUBLIC_VIEW:CNT_EVENTS:LAST_UPDATED_ON:ACTIVE:'
,p_sort_column_1=>'SHORT_NAME'
,p_sort_direction_1=>'ASC'
,p_sort_column_2=>'LAST_UPDATED_ON'
,p_sort_direction_2=>'DESC'
,p_sort_column_3=>'TYPE_NAME_DISP'
,p_sort_direction_3=>'ASC'
,p_sort_column_4=>'0'
,p_sort_direction_4=>'ASC'
,p_sort_column_5=>'0'
,p_sort_direction_5=>'ASC'
,p_sort_column_6=>'0'
,p_sort_direction_6=>'ASC'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(17662712070092290776)
,p_application_user=>'APXWS_ALTERNATIVE'
,p_name=>'with Audit Info'
,p_report_seq=>10
,p_report_alias=>'18346155'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'SHORT_NAME:CALENDAR_NAME:PUBLIC_VIEW:CNT_EVENTS:CREATED_ON:CREATED_BY:LAST_UPDATED_ON:LAST_UPDATED_BY:ACTIVE:'
,p_sort_column_1=>'TYPE_NAME_DISP'
,p_sort_direction_1=>'ASC'
,p_sort_column_2=>'0'
,p_sort_direction_2=>'ASC'
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
 p_id=>wwv_flow_api.id(1938778253466606493)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(17662695855709290759)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1797876052259014390)
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:42:&SESSION.::&DEBUG.:7,RIR::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(1938778961244606495)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(17662695855709290759)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1797876708820014393)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Calendar'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:44:&SESSION.::&DEBUG.:44::'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(210242453742903682)
,p_name=>'Refresh on Add'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(1938778961244606495)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(210242597011903683)
,p_event_id=>wwv_flow_api.id(210242453742903682)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(17662695855709290759)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(210242958290903687)
,p_name=>'Refresh on Edit'
,p_event_sequence=>20
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(17662695855709290759)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(210243124703903688)
,p_event_id=>wwv_flow_api.id(210242958290903687)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(17662695855709290759)
);
wwv_flow_api.component_end;
end;
/
