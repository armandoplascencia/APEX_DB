prompt --application/pages/page_00001
begin
--   Manifest
--     PAGE: 00001
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
 p_id=>1
,p_user_interface_id=>wwv_flow_api.id(1222136671983413726)
,p_name=>'Home'
,p_alias=>'HOME'
,p_step_title=>'&APPLICATION_TITLE. - Home'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_api.id(9022052510671357508)
,p_javascript_file_urls=>'#APP_IMAGES#gc/apxColor.js'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.t-Badge.apex-cal-default { background-color: #2578CF; border-color: #2578CF; color: #FFFFFF; }',
'.t-Badge.apex-cal-black { background-color: #303030; border-color: #303030; color: #FFFFFF; }',
'.t-Badge.apex-cal-blue { background-color: #4183D7; border-color: #4183D7; color: #FFFFFF; }',
'.t-Badge.apex-cal-bluesky { background-color: #6BB9F0; border-color: #6BB9F0; color: #404040; }',
'.t-Badge.apex-cal-brown { background-color: #D88935; border-color: #D88935; color: #404040; }',
'.t-Badge.apex-cal-cyan { background-color: #1ABC9C; border-color: #1ABC9C; color: #404040; }',
'.t-Badge.apex-cal-darkblue { background-color: #1F5F97; border-color: #1F5F97; color: #FFFFFF; }',
'.t-Badge.apex-cal-gray { background-color: #A0A0A0; border-color: #A0A0A0; color: #404040; }',
'.t-Badge.apex-cal-green { background-color: #2ECC71; border-color: #2ECC71; color: #404040; }',
'.t-Badge.apex-cal-lime { background-color: #28A346; border-color: #28A346; color: #FFFFFF; }',
'.t-Badge.apex-cal-orange { background-color: #F39C12; border-color: #F39C12; color: #404040; }',
'.t-Badge.apex-cal-red { background-color: #D91E18; border-color: #D91E18; color: #FFFFFF; }',
'.t-Badge.apex-cal-silver { background-color: #BDC3C7; border-color: #BDC3C7; color: #404040; }',
'.t-Badge.apex-cal-white { background-color: #F0F0F0; border-color: #F0F0F0; color: #404040; }',
'.t-Badge.apex-cal-yellow { background-color: #F1C40F; border-color: #F1C40F; color: #404040; }'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<h2>About this Application</h2>',
'<p>The Team Calendar application gives you a way to list all your events on an easy to use, Web-accessible calendar. The Home page for the Team Calendar displays events in a monthly, weekly or daily format, with embedded links to detailed information'
||' about each event. You can also create customized reports on events.</p>',
'<p>',
'Each event is classified by event type and automatically displayed in an associated color. You can create your own event types or modify existing event type attributes.</p>',
'<p>',
'You can send emails to individuals or teams with information about upcoming meetings, and you have the ability to create your own teams to match your needs.</p>',
''))
,p_last_updated_by=>'ALLAN'
,p_last_upd_yyyymmddhh24miss=>'20210507093721'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(1297679169896817648)
,p_name=>'Notifications'
,p_display_sequence=>10
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select id, ',
'       nvl(lower(NOTIFICATION_TYPE),''yellow'') as ALERT_TYPE, ',
'       NOTIFICATION_NAME as ALERT_TITLE, ',
'       NOTIFICATION_DESCRIPTION as ALERT_DESC,',
'       '''' alert_action',
'  from EBA_CA_NOTIFICATIONS',
' where (DISPLAY_FROM is null or DISPLAY_FROM <= current_date) and',
'       (DISPLAY_UNTIL is null or DISPLAY_UNTIL >= current_date)',
' order by nvl(DISPLAY_SEQUENCE,0),NOTIFICATION_NAME'))
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'  from EBA_CA_NOTIFICATIONS',
' where (DISPLAY_FROM is null or DISPLAY_FROM <= current_date) and',
'       (DISPLAY_UNTIL is null or DISPLAY_UNTIL >= current_date)'))
,p_display_condition_type=>'EXISTS'
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(1797857386571014334)
,p_query_num_rows=>100
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_break_cols=>'0'
,p_query_num_rows_type=>'0'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1297679458698817649)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>1
,p_column_heading=>'ID'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(2015968067731434974)
,p_query_column_id=>2
,p_column_alias=>'ALERT_TYPE'
,p_column_display_sequence=>2
,p_column_heading=>'Alert Type'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(2015968471450434977)
,p_query_column_id=>3
,p_column_alias=>'ALERT_TITLE'
,p_column_display_sequence=>3
,p_column_heading=>'Alert Title'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(2015968873024434977)
,p_query_column_id=>4
,p_column_alias=>'ALERT_DESC'
,p_column_display_sequence=>4
,p_column_heading=>'Alert Desc'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(2015974801216439877)
,p_query_column_id=>5
,p_column_alias=>'ALERT_ACTION'
,p_column_display_sequence=>5
,p_column_heading=>'Alert Action'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1628310700306229486)
,p_plug_name=>'Events Calendar'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(1797853323124014327)
,p_plug_display_sequence=>50
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select e.event_id ',
', case when et.display_color is not null then',
'    ''apex-cal-''||',
'    (select lower(cp.color_name) from eba_ca_color_prefs cp where cp.bg_color = et.display_color)',
'  end css_class',
', e.event_name ',
', case when e.display_time = ''N'' then',
'    trunc(e.event_date_time)',
'  else ',
'    e.event_date_time',
'  end event_date_time',
', to_char(e.event_date_time,v(''APP_TIME_FORMAT'')) disp_time',
', substr (case when nvl(display_time,''Y'') = ''N'' then',
'            ''[All Day] ''',
'           else',
'             ''['' || ltrim(to_char(e.event_date_time,''HH:MIam''),''0'')',
'             || '' - '' || ltrim(to_char(e.event_date_time + duration/24,''HH:MIam''),''0'')',
'--             || '' ('' || case when e.duration = 0  then ''0 mins''',
'--                             when e.duration = .25 then ''15 mins''',
'--                             when e.duration = .5 then ''30 mins''',
'--                             when e.duration = .75 then ''45 mins''',
'--                             when e.duration = 1 then ''1 hr''',
'--                             when e.duration > 1 then to_char(trunc(e.duration)) || '' hrs''',
'--                               || case when e.duration - trunc(e.duration) = 0  then ''''',
'--                                       when e.duration - trunc(e.duration) = .25 then '' 15 mins''',
'--                                       when e.duration - trunc(e.duration) = .5 then '' 30 mins''',
'--                                       when e.duration - trunc(e.duration) = .75 then '' 45 mins''',
'--                                  end',
'--                        end',
'--             || '')] ''',
'             || ''] ''',
'           end ||',
'           case when :MULTIPLE_CAL_BO = ''Include'' then nvl(c.short_name, ''Default'') ||'': '' end || ',
'           e.event_name,1,255) ||',
'           case when exists (select 1 from EBA_CA_FILES',
'                             where event_id = e.event_id)',
'                then '' (a)''',
'           end disp_col',
'from eba_ca_events e',
',    eba_ca_event_types et',
',    eba_ca_calendars c',
'where e.type_id = et.type_id',
'and   e.calendar_id = c.calendar_id (+)',
'and   (   nvl(:EVENT_TYPES_FILTER,''0'') = ''0'' ',
'       or instr('':''||:EVENT_TYPES_FILTER||'':'', '':''||nvl(e.type_id,''-1'')||'':'') > 0',
'      )',
'and   (   :MULTIPLE_CAL_BO = ''Exclude'' ',
'       or (    nvl(:CALENDARS_FILTER,''0'') = ''0'' ',
'           and (   e.calendar_id is null',
'                or c.public_view_yn = ''Y''',
'                or exists (select ''x''',
'                           from eba_ca_users u',
'                           where u.username = :APP_USER',
'                           and   (   instr(u.restricted_to, c.calendar_id) > 0',
'                                  or (access_level_id = 3 and restricted_to is null)',
'                                 )',
'                          )',
'               ) ',
'          )',
'       or instr(:CALENDARS_FILTER,nvl(e.calendar_id,''-1'')) > 0',
'      )',
'and   (   :EXTERNAL_INTERNAL_BO = ''Exclude''',
'       or (:CONTACT_EMAIL is null',
'           or instr(upper(e.contact_email), :CONTACT_EMAIL) > 0',
'          )',
'      )',
'and   (   :EXTERNAL_INTERNAL_BO = ''Exclude''',
'       or (   nvl(et.internal_yn, ''N'') = ''N''',
'           or upper(:APP_USER) in (select upper(username) from eba_ca_users)',
'          )',
'      )',
'order by e.event_date_time'))
,p_lazy_loading=>true
,p_plug_source_type=>'NATIVE_CSS_CALENDAR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_required_patch=>wwv_flow_api.id(1774773895817943118)
,p_attribute_01=>'EVENT_DATE_TIME'
,p_attribute_03=>'DISP_COL'
,p_attribute_04=>'EVENT_ID'
,p_attribute_05=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.:RP,3:P3_EVENT_ID,P3_PREV_PAGE:&EVENT_ID.,1'
,p_attribute_06=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.:RP,10:P10_EVENT_DATE_D:&APEX$NEW_START_DATE.'
,p_attribute_07=>'Y'
,p_attribute_08=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_recur_event boolean := false;',
'    l_old_date    timestamp with time zone;',
'begin',
'	for c1 in (select s.series_id, start_date, end_date',
'               from eba_ca_series s, eba_ca_events e',
'               where s.series_id = e.series_id',
'               and e.event_id = :APEX$PK_VALUE)',
'    loop',
'        l_recur_event := true;',
'        exit;',
'    end loop;',
'',
'    if not l_recur_event then',
'        update eba_ca_events',
'        set event_date_time = to_timestamp(:APEX$NEW_START_DATE,  ''YYYYMMDDHH24MISS'')',
'        where event_id = :APEX$PK_VALUE;',
'    end if;',
'end;'))
,p_attribute_11=>'month:list:navigation'
,p_attribute_13=>'Y'
,p_attribute_14=>'CSS_CLASS'
,p_attribute_17=>'Y'
,p_attribute_18=>'00'
,p_attribute_19=>'Y'
,p_attribute_20=>'9'
,p_attribute_21=>'10'
,p_attribute_22=>'Y'
,p_attribute_23=>'3'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1774764478126852758)
,p_plug_name=>'Events Calendar'
,p_region_name=>'events-calendar'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(1797842692634014308)
,p_plug_display_sequence=>40
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select e.event_id ',
', case when et.display_color is not null then',
'    ''a-luminance-color apex-cal-''||',
'    (select lower(cp.color_name) from eba_ca_color_prefs cp where cp.bg_color = et.display_color)',
'  end css_class',
', e.event_name ',
', case when e.display_time = ''N'' then',
'    trunc(e.event_date_time)',
'  else e.event_date_time',
'  end event_date_time',
', to_char(e.event_date_time,v(''APP_TIME_FORMAT'')) disp_time',
', decode(nvl(display_time, ''Y''), ''Y'', e.event_date_time + (duration/24)',
'                                    , trunc(e.event_date_time) + 1',
'        ) end_time',
', substr (case when nvl(display_time,''Y'') = ''N'' then',
'             ''[All Day] ''',
'           else',
'             null',
'           end || ',
'           case when :MULTIPLE_CAL_BO = ''Include'' then nvl(c.short_name, ''Default'') ||'': '' end || ',
'           e.event_name,1,255) ||',
'           case when exists (select 1 from EBA_CA_FILES',
'                             where event_id = e.event_id)',
'                then '' (a)''',
'           end disp_col',
'from eba_ca_events e',
',    eba_ca_event_types et',
',    eba_ca_calendars c',
'where e.type_id = et.type_id',
'and   e.calendar_id = c.calendar_id (+)',
'and   (   nvl(:EVENT_TYPES_FILTER,''0'') = ''0'' ',
'       or instr('':''||:EVENT_TYPES_FILTER||'':'', '':''||nvl(e.type_id,''-1'')||'':'') > 0',
'      )',
'and   (   :MULTIPLE_CAL_BO = ''Exclude'' ',
'       or (    nvl(:CALENDARS_FILTER,''0'') = ''0'' ',
'           and (   e.calendar_id is null',
'                or c.public_view_yn = ''Y''',
'                or exists (select ''x''',
'                           from eba_ca_users u',
'                           where u.username = :APP_USER',
'                           and   (   instr(u.restricted_to, c.calendar_id) > 0',
'                                  or (access_level_id = 3 and restricted_to is null)',
'                                 )',
'                          )',
'               ) ',
'          )',
'       or instr(:CALENDARS_FILTER,nvl(e.calendar_id,''-1'')) > 0',
'      )',
'and   (   :EXTERNAL_INTERNAL_BO = ''Exclude''',
'       or (:CONTACT_EMAIL is null',
'           or instr(upper(e.contact_email), :CONTACT_EMAIL) > 0',
'          )',
'      )',
'and   (   :EXTERNAL_INTERNAL_BO = ''Exclude''',
'       or (   nvl(et.internal_yn, ''N'') = ''N''',
'           or upper(:APP_USER) in (select upper(username) from eba_ca_users)',
'          )',
'      )',
'order by e.event_date_time',
''))
,p_lazy_loading=>true
,p_plug_source_type=>'NATIVE_CSS_CALENDAR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_required_patch=>-wwv_flow_api.id(1774773895817943118)
,p_attribute_01=>'EVENT_DATE_TIME'
,p_attribute_02=>'END_TIME'
,p_attribute_03=>'DISP_COL'
,p_attribute_04=>'EVENT_ID'
,p_attribute_05=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.:RP,3:P3_EVENT_ID,P3_PREV_PAGE:&EVENT_ID.,1'
,p_attribute_06=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.:RP,10:P10_EVENT_DATE_D:&APEX$NEW_START_DATE.'
,p_attribute_07=>'Y'
,p_attribute_08=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_recur_event boolean := false;',
'    l_old_date    timestamp with time zone;',
'begin',
'	for c1 in (select s.series_id, start_date, end_date',
'               from eba_ca_series s, eba_ca_events e',
'               where s.series_id = e.series_id',
'               and e.event_id = :APEX$PK_VALUE)',
'    loop',
'        l_recur_event := true;',
'        exit;',
'    end loop;',
'',
'    if not l_recur_event then',
'        update eba_ca_events',
'        set event_date_time = to_timestamp(:APEX$NEW_START_DATE,  ''YYYYMMDDHH24MISS'')',
'        where event_id = :APEX$PK_VALUE;',
'    end if;',
'end;'))
,p_attribute_10=>'ICAL'
,p_attribute_11=>'month:week:day:list:navigation'
,p_attribute_13=>'Y'
,p_attribute_14=>'CSS_CLASS'
,p_attribute_17=>'Y'
,p_attribute_18=>'12'
,p_attribute_19=>'Y'
,p_attribute_20=>'8'
,p_attribute_21=>'10'
,p_attribute_22=>'Y'
,p_attribute_23=>'3'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1798493797331274804)
,p_plug_name=>'&APPLICATION_TITLE.'
,p_icon_css_classes=>'app-group-calendar'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1797848825044014315)
,p_plug_display_sequence=>70
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'for c1 in ( select preference_value',
'            from eba_ca_preferences',
'            where preference_name = ''APPLICATION_SUBTITLE''',
'            union all',
'            select ''Create, manage, and share calendar events.''',
'            from dual',
'            where not exists ( select null',
'                               from eba_ca_preferences',
'                               where preference_name = ''APPLICATION_SUBTITLE'')',
'          ) loop',
'    sys.htp.p(''<p>''||apex_escape.html(c1.preference_value)||''</p>'');',
'end loop;',
''))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1814817280143933784)
,p_plug_name=>'ACL Warning'
,p_region_template_options=>'#DEFAULT#:t-Alert--colorBG:t-Alert--defaultIcons:t-Alert--warning:t-Alert--horizontal'
,p_plug_template=>wwv_flow_api.id(1797840840350014304)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.ACL_WARNING'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>'eba_ca_fw.get_preference_value(''ACCESS_CONTROL_ENABLED'') = ''N'''
,p_plug_display_when_cond2=>'PLSQL'
,p_attribute_01=>'f?p=&APP_ID.:SETTINGS:&SESSION.::&DEBUG.:RP::'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1947016960435972769)
,p_plug_name=>'Filters'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:js-useLocalStorage:is-expanded:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(1797849259226014317)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(1774769193047852805)
,p_name=>'Calendars'
,p_parent_plug_id=>wwv_flow_api.id(1947016960435972769)
,p_template=>wwv_flow_api.id(1797853323124014327)
,p_display_sequence=>80
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_new_grid_row=>false
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select d',
'  from',
'(',
'select ''Default'' d,',
'       1 ob',
'  from dual',
' where exists (select 1 from eba_ca_events',
'                where calendar_id is null)',
' and   (   nvl(:CALENDARS_FILTER,''0'') = ''0''',
'        or instr(:CALENDARS_FILTER, ''-1'') > 0',
'       )',
'union',
'select short_name ||'' - ''|| calendar_name || decode(public_view_yn, ''Y'', null, '' (Private)'') d,',
'       2 ob',
'  from eba_ca_calendars c',
'  where (   (     nvl(:CALENDARS_FILTER,''0'') = ''0'' ',
'              and  (   c.public_view_yn = ''Y''',
'                    or exists (select ''x''',
'                               from eba_ca_users u',
'                               where u.username = :APP_USER',
'                               and   (   instr(u.restricted_to, c.calendar_id) > 0',
'                                      or (access_level_id = 3 and restricted_to is null)',
'                                     )',
'                               )',
'                   ) ',
'              )',
'           or instr('':''||:CALENDARS_FILTER||'':'','':''||nvl(calendar_id,''-1'')||'':'') > 0',
'          )',
')',
' order by ob, d'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(1797862998400014346)
,p_query_num_rows=>50
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_row_count_max=>500
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'Y'
,p_required_patch=>wwv_flow_api.id(1938766493817367015)
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1947015779901972757)
,p_query_column_id=>1
,p_column_alias=>'D'
,p_column_display_sequence=>1
,p_column_heading=>'Calendars'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(5648258781040291567)
,p_name=>'Contact Email'
,p_parent_plug_id=>wwv_flow_api.id(1947016960435972769)
,p_template=>wwv_flow_api.id(1797853323124014327)
,p_display_sequence=>90
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--staticRowColors:t-Report--rowHighlight'
,p_new_grid_row=>false
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select nvl(:CONTACT_EMAIL, ''- All Contacts -'') contact_email',
'from dual'))
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ''x'' from',
'eba_ca_events where contact_email is not null;'))
,p_display_condition_type=>'EXISTS'
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(1797862998400014346)
,p_query_num_rows=>50
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_row_count_max=>500
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'Y'
,p_required_patch=>wwv_flow_api.id(1713314835132982612)
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1959004267030408665)
,p_query_column_id=>1
,p_column_alias=>'CONTACT_EMAIL'
,p_column_display_sequence=>1
,p_column_heading=>'Contact Email'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(8057907939545863558)
,p_name=>'Event Types'
,p_region_name=>'event-types-report'
,p_parent_plug_id=>wwv_flow_api.id(1947016960435972769)
,p_template=>wwv_flow_api.id(1797853323124014327)
,p_display_sequence=>70
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--showIcon:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--staticRowColors:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select listagg(a.event_type, '' '') within group (order by a.type_name) event_types',
'from (select type_name,',
'       case when display_color is not null',
'            then ''<span class="a-luminance-color t-Badge t-Badge--basic t-Badge--small apex-cal-''||apex_escape.html(lower(cp.color_name))||''">''|| ',
'                 apex_escape.html(type_name || decode(:EXTERNAL_INTERNAL_BO, ''Include'', decode(internal_yn, ''Y'', '' (Internal Only)'', null), null) ) || ''</span>''',
'            else ''<span class="a-luminance-color t-Badge t-Badge--basic t-Badge--small" style="background-color:'' || apex_escape.html(cp.BG_COLOR) || '';">''||  ',
'                 apex_escape.html(type_name || decode(:EXTERNAL_INTERNAL_BO, ''Include'', decode(internal_yn, ''Y'', '' (Internal Only)'', null), null) ) || ''</span>''',
'            end event_type',
'from eba_ca_event_types et',
',    eba_ca_color_prefs cp',
'where et.color_pref_id = cp.id',
'and   (:EXTERNAL_INTERNAL_BO = ''Exclude''',
'       or (   nvl(internal_yn, ''N'') = ''N''',
'           or upper(:APP_USER) in (select upper(username) from eba_ca_users)',
'          )',
'      )',
'and   (   nvl(:EVENT_TYPES_FILTER,''0'') = ''0'' ',
'       or instr('':''||:EVENT_TYPES_FILTER||'':'','':''||nvl(type_id,''-1'')||'':'') > 0',
'      )',
') a',
''))
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from EBA_CA_EVENT_TYPES'))
,p_display_condition_type=>'EXISTS'
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(1797862998400014346)
,p_query_num_rows=>50
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_row_count_max=>500
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
 p_id=>wwv_flow_api.id(1947019293090972792)
,p_query_column_id=>1
,p_column_alias=>'EVENT_TYPES'
,p_column_display_sequence=>1
,p_column_heading=>'Event Types'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(3338825457617842083)
,p_plug_name=>'Timezone'
,p_region_css_classes=>'infoTextRegion'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1797842692634014308)
,p_plug_display_sequence=>60
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
' "TIMEZONE"',
'',
' '))
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'Y'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(3338025154501910092)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(1798493797331274804)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1797876708820014393)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Event'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.:10::'
,p_icon_css_classes=>'fa-chevron-right'
,p_security_scheme=>wwv_flow_api.id(3336588977096114584)
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(1774768563929852799)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(1947016960435972769)
,p_button_name=>'FILTER'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--iconRight:t-Button--gapLeft'
,p_button_template_id=>wwv_flow_api.id(1797876154044014392)
,p_button_image_alt=>'Update Filters'
,p_button_position=>'RIGHT_OF_TITLE'
,p_button_redirect_url=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-wrench'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(1249711599562589985)
,p_branch_action=>'f?p=&APP_ID.:1000:&SESSION.::&DEBUG.:RP::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_HEADER'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_branch_condition_type=>'EXPRESSION'
,p_branch_condition=>'eba_ca_fw.get_preference_value(''FIRST_RUN'') = ''YES'''
,p_branch_condition_text=>'PLSQL'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(105421044238371134)
,p_computation_sequence=>10
,p_computation_item=>'EVENT_TYPES_FILTER'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'EXPRESSION'
,p_computation_language=>'PLSQL'
,p_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'nvl(apex_util.get_preference ( ',
'              p_preference => ''EVENT_TYPES_FILTER'', ',
'              p_user       => :APP_USER ),0)'))
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(3337926266857655146)
,p_computation_sequence=>20
,p_computation_item=>'LAST_VIEW'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'1'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(1965711461253830962)
,p_computation_sequence=>30
,p_computation_item=>'CONTACT_EMAIL'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'EXPRESSION'
,p_computation_language=>'PLSQL'
,p_computation=>'null'
,p_compute_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ''x''',
'from eba_ca_events',
'where contact_email is not null'))
,p_compute_when_type=>'NOT_EXISTS'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(1797847793703390493)
,p_name=>'Refresh Calendar for Create'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(3338025154501910092)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1797847831630390494)
,p_event_id=>wwv_flow_api.id(1797847793703390493)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(1774764478126852758)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1774768776491852801)
,p_event_id=>wwv_flow_api.id(1797847793703390493)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(1628310700306229486)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1797848259753390498)
,p_event_id=>wwv_flow_api.id(1797847793703390493)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.message.showPageSuccess(''Event added.'');'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(1947016203918972761)
,p_name=>'Refresh Calendar for Filter'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(1774768563929852799)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1947016301709972762)
,p_event_id=>wwv_flow_api.id(1947016203918972761)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(1628310700306229486)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1947016354406972763)
,p_event_id=>wwv_flow_api.id(1947016203918972761)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(1774764478126852758)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1947016646108972766)
,p_event_id=>wwv_flow_api.id(1947016203918972761)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(8057907939545863558)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1947016545960972765)
,p_event_id=>wwv_flow_api.id(1947016203918972761)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(1774769193047852805)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1947019445386972794)
,p_event_id=>wwv_flow_api.id(1947016203918972761)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(5648258781040291567)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1947016474857972764)
,p_event_id=>wwv_flow_api.id(1947016203918972761)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.message.showPageSuccess(''Filters applied.'');',
''))
);
wwv_flow_api.component_end;
end;
/
