prompt --application/pages/page_00007
begin
--   Manifest
--     PAGE: 00007
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
 p_id=>7
,p_user_interface_id=>wwv_flow_api.id(1222136671983413726)
,p_name=>'Event Types'
,p_alias=>'EVENT-TYPES'
,p_page_mode=>'MODAL'
,p_step_title=>'Event Types'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_api.id(9022053313788358351)
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_api.id(3336588467926114584)
,p_protection_level=>'C'
,p_help_text=>'Event Types allow you to categorize events.  You can choose to associate a display color with an event type.'
,p_last_upd_yyyymmddhh24miss=>'20200131124137'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(9022037101209333656)
,p_plug_name=>'Event Types'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>wwv_flow_api.id(1797851790615014320)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select type_id,',
'       (select color_name from EBA_CA_color_prefs p where p.id = et.color_pref_id) color_preference,',
'       case when display_color is not null',
'            then ''<span style="white-space:nowrap;">'' || ',
'                 apex_escape.html(type_name) || ''</span>''',
'            else ''<span style="white-space:nowrap;">'' ||',
'                 apex_escape.html(type_name) || ''</span>''',
'            end type_name,',
'       type_name type_name_disp,',
'       display_color,',
'       border_color,',
'       (select count(*) from EBA_CA_EVENTS e',
'         where e.type_id = et.type_id) cnt_events,',
'       CREATED_ON,',
'       decode(nvl(internal_yn, ''N''), ''N'', ''External'', ''Internal Only'') internal_yn,',
'       LOWER(CREATED_BY) CREATED_BY,',
'       nvl(last_updated_on, created_on) LAST_UPDATED_ON,',
'       LOWER(LAST_UPDATED_BY) LAST_UPDATED_BY,',
'       type_name as type_name_raw',
'  from EBA_CA_EVENT_TYPES et'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(9022037214749333656)
,p_name=>'EBA_CA_EVENT_TYPES'
,p_max_row_count=>'10000'
,p_max_row_count_message=>'This query returns more than 10,000 rows, please filter your data to ensure complete results.'
,p_no_data_found_message=>'No event types found.'
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
,p_detail_link=>'f?p=&APP_ID.:8:&SESSION.::&DEBUG.::P8_TYPE_ID:#TYPE_ID#'
,p_detail_link_text=>'<span class="fa fa-edit" aria-hidden="true"></span>'
,p_detail_link_attr=>'title="Edit #TYPE_NAME_RAW#"'
,p_owner=>'SBKENNED'
,p_internal_uid=>8278312869474751362
);
wwv_flow_api.create_worksheet_col_group(
 p_id=>wwv_flow_api.id(9231822122964415642)
,p_name=>'Details'
,p_display_sequence=>10
);
wwv_flow_api.create_worksheet_col_group(
 p_id=>wwv_flow_api.id(9231822595045416979)
,p_name=>'Audit Info'
,p_display_sequence=>20
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(9022037321427333657)
,p_db_column_name=>'TYPE_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Type Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_help_text=>'No help available for this page item.'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(9022037415585333657)
,p_db_column_name=>'TYPE_NAME'
,p_display_order=>2
,p_group_id=>wwv_flow_api.id(9231822122964415642)
,p_column_identifier=>'B'
,p_column_label=>'Event Type'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_help_text=>'Type of event.'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(9022162496229835813)
,p_db_column_name=>'DISPLAY_COLOR'
,p_display_order=>3
,p_group_id=>wwv_flow_api.id(9231822122964415642)
,p_column_identifier=>'G'
,p_column_label=>'Display Color'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1640360922347331002)
,p_db_column_name=>'INTERNAL_YN'
,p_display_order=>13
,p_column_identifier=>'N'
,p_column_label=>'External / Internal '
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_required_patch=>wwv_flow_api.id(1713314835132982612)
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(9022037613684333657)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>23
,p_group_id=>wwv_flow_api.id(9231822595045416979)
,p_column_identifier=>'D'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_help_text=>'The user who created the record.'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(9022037807378333658)
,p_db_column_name=>'LAST_UPDATED_BY'
,p_display_order=>33
,p_group_id=>wwv_flow_api.id(9231822595045416979)
,p_column_identifier=>'F'
,p_column_label=>'Last Updated By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_help_text=>'The user who last updated the record.'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(8116062321168220354)
,p_db_column_name=>'TYPE_NAME_DISP'
,p_display_order=>43
,p_group_id=>wwv_flow_api.id(9231822122964415642)
,p_column_identifier=>'H'
,p_column_label=>'Event Type for Sorting'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(7516405603509864947)
,p_db_column_name=>'CNT_EVENTS'
,p_display_order=>53
,p_group_id=>wwv_flow_api.id(9231822122964415642)
,p_column_identifier=>'I'
,p_column_label=>'Number of Events'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(7516405724465864949)
,p_db_column_name=>'CREATED_ON'
,p_display_order=>63
,p_group_id=>wwv_flow_api.id(9231822595045416979)
,p_column_identifier=>'J'
,p_column_label=>'Created'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'Y'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(7516405809427864949)
,p_db_column_name=>'LAST_UPDATED_ON'
,p_display_order=>73
,p_group_id=>wwv_flow_api.id(9231822595045416979)
,p_column_identifier=>'K'
,p_column_label=>'Last Updated'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'Y'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3337804077144825537)
,p_db_column_name=>'BORDER_COLOR'
,p_display_order=>83
,p_column_identifier=>'L'
,p_column_label=>'Border Color'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3339087059371038822)
,p_db_column_name=>'COLOR_PREFERENCE'
,p_display_order=>93
,p_column_identifier=>'M'
,p_column_label=>'Color Preference'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(271831649646788346)
,p_db_column_name=>'TYPE_NAME_RAW'
,p_display_order=>103
,p_column_identifier=>'O'
,p_column_label=>'Type Name Raw'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(9022167214021850393)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1588307'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'TYPE_NAME:COLOR_PREFERENCE:INTERNAL_YN:CNT_EVENTS:LAST_UPDATED_ON::TYPE_NAME_RAW'
,p_sort_column_1=>'LAST_UPDATED_ON'
,p_sort_direction_1=>'DESC'
,p_sort_column_2=>'TYPE_NAME_DISP'
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
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(9240617019762200451)
,p_application_user=>'APXWS_ALTERNATIVE'
,p_name=>'with Audit Info'
,p_report_seq=>10
,p_report_alias=>'3772805'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'TYPE_NAME:COLOR_PREFERENCE:INTERNAL_YN:CNT_EVENTS:CREATED_ON:CREATED_BY:LAST_UPDATED_ON:LAST_UPDATED_BY:'
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
 p_id=>wwv_flow_api.id(3337804155458828683)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(9022037101209333656)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1797876052259014390)
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:7:&SESSION.::&DEBUG.:7,RIR::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(9022040513396333669)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(9022037101209333656)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1797876708820014393)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Event Type'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:8:&SESSION.::&DEBUG.:8::'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(1798861061974287422)
,p_name=>'Refresh Report'
,p_event_sequence=>10
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'window'
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1798861453814287423)
,p_event_id=>wwv_flow_api.id(1798861061974287422)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(9022037101209333656)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1798861967902287423)
,p_event_id=>wwv_flow_api.id(1798861061974287422)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.message.showPageSuccess(''Action Processed.'');'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(210244710129903704)
,p_name=>'Refresh on Add'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(9022040513396333669)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(210244744227903705)
,p_event_id=>wwv_flow_api.id(210244710129903704)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(9022037101209333656)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(210244895915903706)
,p_name=>'Refresh on Edit'
,p_event_sequence=>30
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(9022037101209333656)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(210791660213073257)
,p_event_id=>wwv_flow_api.id(210244895915903706)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(9022037101209333656)
);
wwv_flow_api.component_end;
end;
/
