prompt --application/pages/page_00011
begin
--   Manifest
--     PAGE: 00011
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
 p_id=>11
,p_user_interface_id=>wwv_flow_api.id(1222136671983413726)
,p_name=>'Update or Delete Affects'
,p_alias=>'UPDATE-OR-DELETE-AFFECTS'
,p_step_title=>'Update or Delete Affects'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_api.id(9022053313788358351)
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(3336588977096114584)
,p_protection_level=>'C'
,p_help_text=>'You will only see this page when you''re updating a recurring event. Choose whether or not the changes you made on the previous page applies to all events, future events, or only the initial event. Click the <strong>Apply Changes</strong> button to sa'
||'ve your changes. Click the <strong>Cancel</strong> button toleave this page and not make any changes to your event(s).'
,p_last_updated_by=>'ALLAN'
,p_last_upd_yyyymmddhh24miss=>'20210301102339'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(7490472923320856587)
,p_plug_name=>'Update Event(s)'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader:t-Region--hiddenOverflow'
,p_plug_template=>wwv_flow_api.id(1797853323124014327)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_plug_display_when_condition=>'P11_REQUEST_TYPE'
,p_plug_display_when_cond2=>'D'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(8602633754489404214)
,p_plug_name=>'Scope'
,p_parent_plug_id=>wwv_flow_api.id(7490472923320856587)
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(1797853323124014327)
,p_plug_display_sequence=>30
,p_plug_display_point=>'BODY'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_plug_display_when_condition=>'P11_REQUEST_TYPE'
,p_plug_display_when_cond2=>'D'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(8604596541454626494)
,p_name=>'Associated Events'
,p_parent_plug_id=>wwv_flow_api.id(7490472923320856587)
,p_template=>wwv_flow_api.id(1797853323124014327)
,p_display_sequence=>50
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight:t-Report--inline'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select to_char(EVENT_DATE_TIME,''&APP_DATE_FORMAT.'') ||',
'          case when event_id = :P10_EVENT_ID',
'               then '' *''',
'               end event_date,',
'       event_name,',
'       to_char(EVENT_DATE_TIME,''&APP_TIME_FORMAT.'') || '' - '' ||',
'       to_char(to_date(to_char(EVENT_DATE_TIME,',
'                       ''&APP_DATE_FORMAT.''||''&APP_TIME_FORMAT.''),',
'               ''&APP_DATE_FORMAT.''||''&APP_TIME_FORMAT.'')',
'                +(duration/24),''&APP_TIME_FORMAT.'') ||',
'       '' ('' ||',
'       case when duration = .5 then ''30 mins''',
'            when duration = 1 then ''1 hr''',
'            when duration > 1 then to_char(duration) || '' hrs''',
'            end ||',
'       '')'' event_time',
'  from EBA_CA_EVENTS',
' where series_id = :P10_SERIES_ID',
' order by EVENT_DATE_TIME'))
,p_footer=>'* selected event'
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(1797862998400014346)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_no_data_found=>'No associated events found.'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(8604596852268626503)
,p_query_column_id=>1
,p_column_alias=>'EVENT_DATE'
,p_column_display_sequence=>1
,p_column_heading=>'Date'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(8604596962625626506)
,p_query_column_id=>2
,p_column_alias=>'EVENT_NAME'
,p_column_display_sequence=>2
,p_column_heading=>'Name'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(8604597055632626506)
,p_query_column_id=>3
,p_column_alias=>'EVENT_TIME'
,p_column_display_sequence=>3
,p_column_heading=>'Time'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(7490482896570867828)
,p_plug_name=>'Remove Event(s)'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader:t-Region--hiddenOverflow'
,p_plug_template=>wwv_flow_api.id(1797853323124014327)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P11_REQUEST_TYPE'
,p_plug_display_when_cond2=>'D'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(8602640952902404221)
,p_plug_name=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(1797855891776014330)
,p_plug_display_sequence=>60
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(9022023598749333527)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(1797876791493014394)
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(8602634364299404215)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(8602640952902404221)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1797876708820014393)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:&LAST_VIEW.:&SESSION.::&DEBUG.:::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(8602634552216404216)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(8602640952902404221)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1797876708820014393)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'P11_REQUEST_TYPE'
,p_button_condition2=>'D'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(8602634950847404216)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(8602640952902404221)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>wwv_flow_api.id(1797876708820014393)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_execute_validations=>'N'
,p_button_condition=>'P11_REQUEST_TYPE'
,p_button_condition2=>'D'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(8602644963855404236)
,p_branch_name=>'Go To Home'
,p_branch_action=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(8602634552216404216)
,p_branch_sequence=>10
,p_save_state_before_branch_yn=>'Y'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(3232632901042971487)
,p_branch_name=>'Go Home'
,p_branch_action=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:RP::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(8602634950847404216)
,p_branch_sequence=>20
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8602633970398404214)
,p_name=>'P11_UPD_REQUEST'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(8602633754489404214)
,p_prompt=>'Updates Affect:'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'UPD_REQUEST_AFO'
,p_lov=>'.'||wwv_flow_api.id(9247822197086274680)||'.'
,p_field_template=>wwv_flow_api.id(1797875884085014387)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Identify which events you want this update to affect.'
,p_attribute_01=>'3'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8602652965425421981)
,p_name=>'P11_DEL_REQUEST'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(7490482896570867828)
,p_item_default=>'A'
,p_prompt=>'Delete Affects:'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'UPD_REQUEST_AFO'
,p_lov=>'.'||wwv_flow_api.id(9247822197086274680)||'.'
,p_field_template=>wwv_flow_api.id(1797875884085014387)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Identify which events you want this delete to affect.'
,p_attribute_01=>'3'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8602654369019432463)
,p_name=>'P11_REQUEST_TYPE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(8602633754489404214)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(8602642471187404228)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Update'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'   l_type_id         number;',
'   l_new_event_type  varchar2(60);',
'   l_display_time    varchar2(1);',
'begin',
'',
'if :P10_TYPE_ID = ''-1'' then',
'   l_type_id        := null;',
'   l_new_event_type := :P10_NEW_EVENT_TYPE;',
'else',
'   l_type_id        := :P10_TYPE_ID;',
'   l_new_event_type := null;',
'end if;',
'',
'if :P10_SUPPRESS_TIME = ''Y'' then',
'   l_display_time := ''N'';',
'else',
'   l_display_time := ''Y'';',
'end if;',
'',
'EBA_ca_api.update_event (',
'   p_event_id        => :P10_EVENT_ID,',
'   p_event_name      => :P10_EVENT_NAME,',
'   p_type_id         => l_type_id,',
'   p_calendar_id     => :P10_CALENDAR_ID,',
'   p_new_event_type  => l_new_event_type,',
'   p_new_color_pref_id  => :P10_NEW_COLOR_PREF_ID,',
'   p_new_internal_yn    => :P10_NEW_INTERNAL_YN,',
'   p_event_date_time => to_date(:P10_EVENT_DATE_D||:P10_EVENT_START_TIME_D,',
'                               ''&APP_DATE_FORMAT.&APP_TIME_FORMAT.''),',
'   p_duration        => :P10_DURATION,',
'   p_event_desc      => :P10_EVENT_DESC,',
'   p_contact_person  => :P10_CONTACT_PERSON,',
'   p_contact_email   => :P10_CONTACT_EMAIL,',
'   p_display_time    => l_display_time,',
'   p_location        => :P10_LOCATION,',
'   p_link_name_1     => :P10_LINK_NAME_1,',
'   p_link_url_1      => :P10_LINK_URL_1,',
'   p_link_name_2     => :P10_LINK_NAME_2,',
'   p_link_url_2      => :P10_LINK_URL_2,',
'   p_link_name_3     => :P10_LINK_NAME_3,',
'   p_link_url_3      => :P10_LINK_URL_3,',
'   --',
'   p_recur_flag      => :P10_RECUR_FLAG,',
'   p_recur_freq      => :P10_RECUR_FREQ,',
'   p_recur_end_date  => to_date(:P10_RECUR_END_DATE||:P10_EVENT_START_TIME_D,',
'                               ''&APP_DATE_FORMAT.&APP_TIME_FORMAT.''), ',
'   --',
'   p_update_request => :P11_UPD_REQUEST,',
'   p_tags           => :P10_TAGS );',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Error updating Event(s).'
,p_process_when_button_id=>wwv_flow_api.id(8602634552216404216)
,p_process_success_message=>'Event(s) updated.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(8602642673430404228)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Delete'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'EBA_ca_api.delete_event (',
'   p_event_id       => :P10_EVENT_ID,',
'   --',
'   p_delete_request => :P11_DEL_REQUEST );'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Error deleting Event(s).'
,p_process_when_button_id=>wwv_flow_api.id(8602634950847404216)
,p_process_success_message=>'Event(s) deleted.'
);
wwv_flow_api.component_end;
end;
/
