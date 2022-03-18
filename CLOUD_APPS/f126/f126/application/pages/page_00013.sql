prompt --application/pages/page_00013
begin
--   Manifest
--     PAGE: 00013
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
 p_id=>13
,p_user_interface_id=>wwv_flow_api.id(1222136671983413726)
,p_name=>'Delete Multiple Events'
,p_alias=>'DELETE-MULTIPLE-EVENTS'
,p_step_title=>'Delete Multiple Events'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_api.id(9022053313788358351)
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_step_template=>wwv_flow_api.id(1797817832896014262)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(3336588977096114584)
,p_protection_level=>'C'
,p_help_text=>'Use the filters on the left to change the events displayed in the list on the right. Once you''ve changed a flter value click the <strong>Go</strong> button to set your filter values. Once you''ve filtered the results down to all of the events you woul'
||'d like to delete, click the <strong>Delete Events Listed Below</strong> button. Click the <strong>Cancel</strong> button to navigate away from this page without deleting any events.'
,p_last_updated_by=>'ALLAN'
,p_last_upd_yyyymmddhh24miss=>'20210507094832'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(2055737262919176865)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1797855891776014330)
,p_plug_display_sequence=>1
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(9022023598749333527)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(1797876791493014394)
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(7516415708619896964)
,p_plug_name=>'Filter'
,p_region_template_options=>'#DEFAULT#:t-Region--hiddenOverflow:t-Region--hideHeader'
,p_plug_template=>wwv_flow_api.id(1797853323124014327)
,p_plug_display_sequence=>30
,p_plug_display_point=>'REGION_POSITION_02'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(7516421321006896989)
,p_name=>'Events to be Deleted'
,p_template=>wwv_flow_api.id(1797853323124014327)
,p_display_sequence=>30
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select e.EVENT_ID',
',      e.event_name',
',      case when et.display_color is not null then ',
'         ''<span style="white-space:nowrap;">'' ',
'         || apex_escape.html(et.type_name || decode(:EXTERNAL_INTERNAL_BO, ''Include'', decode(internal_yn, ''Y'', '' (Internal Only)'', null), null)) || ''</span>''',
'       else ',
'         ''<span style="white-space:nowrap;">'' ',
'         || apex_escape.html(et.type_name || decode(:EXTERNAL_INTERNAL_BO, ''Include'', decode(internal_yn, ''Y'', '' (Internal Only)'', null), null)) || ''</span>''',
'       end event_type',
',      e.EVENT_DATE_TIME event_date',
',      case when to_char(e.EVENT_DATE_TIME,''MI'') = ''00'' ',
'            then ltrim(to_char(e.EVENT_DATE_TIME,''HHam''),''0'')',
'            else ltrim(to_char(e.EVENT_DATE_TIME,''HH:MIam''),''0'')',
'            end start_time',
',      case when to_char(to_date(to_char(EVENT_DATE_TIME,''DD-MON-RR''||''HH:MIam''),',
'                         ''DD-MON-RR''||''HH:MIam'')+(e.duration/24),''MI'') = ''00''',
'            then ltrim(to_char(to_date(to_char(EVENT_DATE_TIME,''DD-MON-RR''||''HH:MIam''),',
'                         ''DD-MON-RR''||''HH:MIam'')+(e.duration/24),''HHam''),''0'')',
'            else ltrim(to_char(to_date(to_char(EVENT_DATE_TIME,''DD-MON-RR''||''HH:MIam''),',
'                         ''DD-MON-RR''||''HH:MIam'')+(e.duration/24),''HH:MIam''),''0'')',
'            end end_time',
',      case when e.duration = 0  then ''0 mins''',
'            when e.duration = .25 then ''15 mins''',
'            when e.duration = .5 then ''30 mins''',
'            when e.duration = .75 then ''45 mins''',
'            when e.duration = 1 then ''1 hr''',
'            when e.duration > 1 then to_char(trunc(e.duration)) || '' hrs''',
'              || case when e.duration - trunc(e.duration) = 0  then ''''',
'                      when e.duration - trunc(e.duration) = .25 then '' 15 mins''',
'                      when e.duration - trunc(e.duration) = .5 then '' 30 mins''',
'                      when e.duration - trunc(e.duration) = .75 then '' 45 mins''',
'                 end',
'            end duration',
',      e.EVENT_DESC',
',      decode(e.calendar_id, null, ''Default''',
'              , c.short_name || '' - '' || c.calendar_name ',
'                || decode(public_view_yn, ''Y'', null, '' (Private)'')',
'             ) calendar',
'from eba_ca_events e',
',    eba_ca_event_types et',
',    eba_ca_calendars c',
'where e.type_id = et.type_id',
'and   e.calendar_id = c.calendar_id (+)',
'and   (   :MULTIPLE_CAL_BO = ''Exclude'' ',
'       or (   e.calendar_id is null',
'           or (   c.public_view_yn = ''Y''',
'               or exists (select ''x''',
'                          from eba_ca_users u',
'                          where u.username = :APP_USER',
'                          and   (   instr(u.restricted_to, c.calendar_id) > 0',
'                                 or (access_level_id = 3 and restricted_to is null)',
'                                )',
'                         )',
'              )',
'          )',
'      )',
'and   (   :EXTERNAL_INTERNAL_BO = ''Exclude''',
'       or (   nvl(et.internal_yn, ''N'') = ''N''',
'           or upper(:APP_USER) in (select upper(username) from eba_ca_users)',
'          )',
'      )',
'and   (   :P13_EVENT_TYPE is null ',
'       or e.type_id = :P13_EVENT_TYPE',
'      )',
'and   (   :P13_CALENDAR_ID is null ',
'       or nvl(e.calendar_id, -1) = :P13_CALENDAR_ID',
'      )',
'and   (   :P13_START_DATE is null ',
'       or trunc(to_date(to_char(e.event_date_time,''&APP_DATE_FORMAT.''),''&APP_DATE_FORMAT.'')) ',
'            >= to_date(:P13_START_DATE,''&APP_DATE_FORMAT.'') ',
'      )',
'and   (   :P13_END_DATE is null ',
'       or trunc(to_date(to_char(e.event_date_time,''&APP_DATE_FORMAT.''),''&APP_DATE_FORMAT.'')) ',
'          <= to_date(:P13_END_DATE,''&APP_DATE_FORMAT.'') ',
'      )',
'and   (  :P13_TIMEFRAME is null ',
'       or (    trunc(to_date(to_char(e.event_date_time,''DD-MON-RRRR''),''DD-MON-RRRR''))',
'                 >= (select start_date ',
'                     from EBA_ca_timeframes',
'                     where :P13_TIMEFRAME = tf_id',
'                    ) ',
'           and trunc(to_date(to_char(e.event_date_time,''DD-MON-RRRR''),''DD-MON-RRRR''))',
'                 <= (select end_date ',
'                     from EBA_ca_timeframes',
'                     where :P13_TIMEFRAME = tf_id',
'                    )',
'          )',
'      )',
'order by e.event_date_time, event_name'))
,p_header=>'<p/>'
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(1797862998400014346)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No events found.'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
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
 p_id=>wwv_flow_api.id(7516421615253896999)
,p_query_column_id=>1
,p_column_alias=>'EVENT_ID'
,p_column_display_sequence=>2
,p_column_heading=>'Event Id'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(7516421717940896999)
,p_query_column_id=>2
,p_column_alias=>'EVENT_NAME'
,p_column_display_sequence=>6
,p_column_heading=>'Event Name'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(7516421809940896999)
,p_query_column_id=>3
,p_column_alias=>'EVENT_TYPE'
,p_column_display_sequence=>7
,p_column_heading=>'Event Type'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(7516421899824896999)
,p_query_column_id=>4
,p_column_alias=>'EVENT_DATE'
,p_column_display_sequence=>1
,p_column_heading=>'Event Date'
,p_column_format=>'&APP_DATE_FORMAT.'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(7516422023566897000)
,p_query_column_id=>5
,p_column_alias=>'START_TIME'
,p_column_display_sequence=>3
,p_column_heading=>'Timing'
,p_column_html_expression=>'#START_TIME# - #END_TIME# (#DURATION#)'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(7516422099421897000)
,p_query_column_id=>6
,p_column_alias=>'END_TIME'
,p_column_display_sequence=>4
,p_column_heading=>'End Time'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(7516422222386897000)
,p_query_column_id=>7
,p_column_alias=>'DURATION'
,p_column_display_sequence=>5
,p_column_heading=>'Duration'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(7516421522416896997)
,p_query_column_id=>8
,p_column_alias=>'EVENT_DESC'
,p_column_display_sequence=>9
,p_column_heading=>'Description'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1947017475550972774)
,p_query_column_id=>9
,p_column_alias=>'CALENDAR'
,p_column_display_sequence=>8
,p_column_heading=>'Calendar'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_required_patch=>wwv_flow_api.id(1938766493817367015)
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(7516422310147897001)
,p_plug_name=>'Directions'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1797842692634014308)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>You can use this to delete a set of events or to clean out historic events, like for the previous year.',
'</p>',
'<ol>',
'  <li>Use the filter to select the set of events to be deleted.</li>',
'  <li>Click [Delete Events].</li>',
'</ol>'))
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(7516552222762135420)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(7516415708619896964)
,p_button_name=>'P13_CLEAR'
,p_button_static_id=>'P13_CLEAR'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1797876708820014393)
,p_button_image_alt=>'Clear'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_request_source=>'CLEAR'
,p_request_source_type=>'STATIC'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(3339110455496575684)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(2055737262919176865)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1797876708820014393)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:RP::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(7516418613454896982)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(2055737262919176865)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--simple:t-Button--danger'
,p_button_template_id=>wwv_flow_api.id(1797876708820014393)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Delete Events Listed Below'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(7516417499443896978)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(7516415708619896964)
,p_button_name=>'P13_GO'
,p_button_static_id=>'P13_GO'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1797876708820014393)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Go'
,p_button_position=>'REGION_TEMPLATE_HELP'
,p_request_source=>'Go'
,p_request_source_type=>'STATIC'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(7516569906663168579)
,p_branch_name=>'Go To Page 13'
,p_branch_action=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(7516418613454896982)
,p_branch_sequence=>10
,p_save_state_before_branch_yn=>'Y'
,p_branch_comment=>'Created 18-OCT-2010 12:49 by SBKENNED'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(7516424707079897042)
,p_branch_action=>'f?p=&APP_ID.:13:&SESSION.::&DEBUG.:13::'
,p_branch_point=>'BEFORE_COMPUTATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(7516552222762135420)
,p_branch_sequence=>20
,p_save_state_before_branch_yn=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1947017543516972775)
,p_name=>'P13_CALENDAR_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(7516415708619896964)
,p_prompt=>'Calendar'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'CALENDARS WITH DEFAULT'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select d, r',
'  from',
'(',
'select ''Default'' d,',
'       -1 r,',
'       1 ob',
'  from dual',
' where exists (select 1 from eba_ca_events',
'                where calendar_id is null)',
'union',
'select short_name ||'' - ''|| calendar_name || decode(public_view_yn, ''Y'', null, '' (Private)'') d,',
'       calendar_id r,',
'       2 ob',
'  from eba_ca_calendars c',
'  where public_view_yn = ''Y''',
'  or    exists (select ''x''',
'                from eba_ca_users u',
'                where u.username = :APP_USER',
'                and   (   instr(u.restricted_to, c.calendar_id) > 0',
'                       or (access_level_id = 3 and restricted_to is null)',
'                      )',
'               ) ',
')',
' order by ob, d'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- All -'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(1797875786893014385)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_required_patch=>wwv_flow_api.id(1938766493817367015)
,p_help_text=>'If selected, only events for the selected calendar will be included.'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(7516415905491896969)
,p_name=>'P13_START_DATE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(7516415708619896964)
,p_prompt=>'From'
,p_format_mask=>'&APP_DATE_FORMAT.'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>16
,p_cMaxlength=>30
,p_field_template=>wwv_flow_api.id(1797875786893014385)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'If entered, Events before this date will not be included.'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(7516416508393896977)
,p_name=>'P13_END_DATE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(7516415708619896964)
,p_prompt=>'Until'
,p_format_mask=>'&APP_DATE_FORMAT.'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>16
,p_cMaxlength=>30
,p_field_template=>wwv_flow_api.id(1797875786893014385)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'If entered, Events after this date will not be included.'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(7516417007790896978)
,p_name=>'P13_EVENT_TYPE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(7516415708619896964)
,p_prompt=>'Event Type'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'EVENT TYPES FOR MAIN CAL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select type_name || decode(:EXTERNAL_INTERNAL_BO, ''Include'', decode(internal_yn, ''Y'', '' (Internal Only)'', null), null) d, type_id r',
'  from EBA_ca_event_types',
'where (:EXTERNAL_INTERNAL_BO = ''Exclude''',
'       or (   nvl(internal_yn, ''N'') = ''N''',
'           or upper(:APP_USER) in (select upper(username) from eba_ca_users)',
'          )',
'      )',
' order by type_name'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- All -'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(1797875786893014385)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'If selected, only events of this type will be included.'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(7516417697438896978)
,p_name=>'P13_TIMEFRAME'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(7516415708619896964)
,p_prompt=>'Timeframe'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'TIMEFRAMES (SHOWING DATES)'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select tf_name || '' ('' || start_date || '' to '' ||',
'                          end_date || '')'' d, ',
'       tf_id r',
'  from EBA_ca_timeframes',
' order by start_date',
''))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- None -'
,p_cHeight=>1
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from EBA_ca_timeframes'))
,p_display_when_type=>'EXISTS'
,p_field_template=>wwv_flow_api.id(1797875786893014385)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Select Reporting Timeframe to restrict the report.'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(7516424209561897035)
,p_name=>'save group id'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P13_GROUP_ID'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(7516424511379897040)
,p_event_id=>wwv_flow_api.id(7516424209561897035)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P13_GROUP_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(7516424022059897025)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Delete Events'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'for c1 in (select e.event_id',
'           from EBA_CA_EVENTS e',
'           ,    EBA_CA_EVENT_TYPES et',
'           ,    eba_ca_calendars c',
'           where e.type_id = et.type_id',
'           and   e.calendar_id = c.calendar_id (+)',
'           and   (   :MULTIPLE_CAL_BO = ''Exclude'' ',
'                  or (   e.calendar_id is null',
'                      or (   c.public_view_yn = ''Y''',
'                          or exists (select ''x''',
'                                     from eba_ca_users u',
'                                     where u.username = :APP_USER',
'                                     and   (   instr(u.restricted_to, c.calendar_id) > 0',
'                                            or (access_level_id = 3 and restricted_to is null)',
'                                           )',
'                                    )',
'                         )',
'                     )',
'                 )',
'           and   (   :EXTERNAL_INTERNAL_BO = ''Exclude''',
'                  or (   nvl(et.internal_yn, ''N'') = ''N''',
'                      or upper(:APP_USER) in (select upper(username) from eba_ca_users)',
'                     )',
'                 )',
'           and   (   :P13_EVENT_TYPE is null ',
'                  or e.type_id = :P13_EVENT_TYPE',
'                 )',
'           and   (   :P13_CALENDAR_ID is null ',
'                  or nvl(e.calendar_id, -1) = :P13_CALENDAR_ID',
'                 )',
'           and   (   :P13_START_DATE is null ',
'                  or trunc(to_date(to_char(e.event_date_time,''&APP_DATE_FORMAT.''),''&APP_DATE_FORMAT.'')) ',
'                       >= to_date(:P13_START_DATE,''&APP_DATE_FORMAT.'') ',
'                 )',
'           and   (   :P13_END_DATE is null ',
'                  or trunc(to_date(to_char(e.event_date_time,''&APP_DATE_FORMAT.''),''&APP_DATE_FORMAT.'')) ',
'                       <= to_date(:P13_END_DATE,''&APP_DATE_FORMAT.'') ',
'                 )',
'           and   (  :P13_TIMEFRAME is null ',
'                  or (    trunc(to_date(to_char(e.event_date_time,''DD-MON-RRRR''),''DD-MON-RRRR''))',
'                            >= (select start_date ',
'                                from EBA_ca_timeframes',
'                                where :P13_TIMEFRAME = tf_id',
'                               ) ',
'                      and trunc(to_date(to_char(e.event_date_time,''DD-MON-RRRR''),''DD-MON-RRRR''))',
'                            <= (select end_date ',
'                                from EBA_ca_timeframes',
'                                where :P13_TIMEFRAME = tf_id',
'                               )',
'                     )',
'                 )',
'          ) loop',
'  eba_ca_api.delete_event (  p_event_id       => c1.event_id',
'                           , p_delete_request => ''O'' ',
'                          );',
'end loop;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Event(s) failed to be deleted.'
,p_process_when_button_id=>wwv_flow_api.id(7516418613454896982)
,p_process_success_message=>'Event(s) deleted.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(7516570114975171054)
,p_process_sequence=>20
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_RESET_PAGINATION'
,p_process_name=>'Reset Pagination'
,p_process_sql_clob=>'reset_pagination'
,p_attribute_01=>'THIS_PAGE'
,p_process_when=>'Go,CLEAR'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_api.component_end;
end;
/
