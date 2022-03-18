prompt --application/pages/page_00002
begin
--   Manifest
--     PAGE: 00002
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
 p_id=>2
,p_user_interface_id=>wwv_flow_api.id(1222136671983413726)
,p_name=>'Search'
,p_alias=>'SEARCH'
,p_step_title=>'&APPLICATION_TITLE. - Search'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_api.id(9022052510671357508)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'By default this page shows all upcoming events. From this page you can edit any existing event by clicking the <strong>Edit</strong> icon (pencil) next to the event. Click the <strong>Add Event</strong> button to add a new event. Click the <strong>De'
||'lete Multiple Events</strong> button to delete multiple events.'
,p_last_updated_by=>'ALLAN'
,p_last_upd_yyyymmddhh24miss=>'20210507093812'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(1309268560664565500)
,p_name=>'Notifications'
,p_display_sequence=>10
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select id, ',
'       nvl(lower(NOTIFICATION_TYPE),''yellow'') as ALERT_TYPE,',
'       NOTIFICATION_NAME alert_title,',
'       NOTIFICATION_DESCRIPTION alert_desc,',
'       '''' alert_action',
'  from EBA_CA_NOTIFICATIONS',
' where (DISPLAY_FROM is null or DISPLAY_FROM <= current_date) and',
'       (DISPLAY_UNTIL is null or DISPLAY_UNTIL >= current_date)',
' order by nvl(DISPLAY_SEQUENCE,0),NOTIFICATION_NAME'))
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
 p_id=>wwv_flow_api.id(1309268747026565576)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>1
,p_column_heading=>'ID'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(2015991563932455964)
,p_query_column_id=>2
,p_column_alias=>'ALERT_TYPE'
,p_column_display_sequence=>2
,p_column_heading=>'Alert Type'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(2015991942488455964)
,p_query_column_id=>3
,p_column_alias=>'ALERT_TITLE'
,p_column_display_sequence=>3
,p_column_heading=>'Alert Title'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(2015992372171455965)
,p_query_column_id=>4
,p_column_alias=>'ALERT_DESC'
,p_column_display_sequence=>4
,p_column_heading=>'Alert Desc'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(2015992827923455965)
,p_query_column_id=>5
,p_column_alias=>'ALERT_ACTION'
,p_column_display_sequence=>5
,p_column_heading=>'Alert Action'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1858067902034855757)
,p_plug_name=>'breadcrumbs'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--showBreadcrumb:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_plug_template=>wwv_flow_api.id(1797855891776014330)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(9022023598749333527)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(1797876791493014394)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(3338826258094851616)
,p_plug_name=>'Timezone'
,p_region_css_classes=>'infoTextRegion'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1797842692634014308)
,p_plug_display_sequence=>30
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
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(3339341065479275287)
,p_plug_name=>'hidden Items'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1797842692634014308)
,p_plug_display_sequence=>40
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(8494335665893176339)
,p_plug_name=>'Events'
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton'
,p_plug_template=>wwv_flow_api.id(1797851790615014320)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
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
',      case when e.display_time = ''Y'' then ',
'          e.EVENT_DATE_TIME ',
'       else ',
'         null',
'       end event_start_time',
',      e.DURATION',
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
'            end disp_duration',
',      e.EVENT_DESC',
',      e.CONTACT_PERSON',
',      e.location',
',      case when e.link_url_1 is not null or',
'                 e.link_url_2 is not null or',
'                 e.link_url_3 is not null ',
'            then ''Y''',
'            else null',
'            end links',
',      decode(decode(e.series_id, null, null, ''Y''),''Y'',''Yes'',''N'',''No'',decode(e.series_id, null, null, ''Y'')) recur_flag',
',      eba_ca_api.get_timeframes(e.event_id) timeframes',
',      e.CREATED_ON',
',      lower(e.CREATED_BY) created_by',
',      e.LAST_UPDATED_ON',
',      lower(e.LAST_UPDATED_BY) last_updated_by',
',      e.tags',
',      decode(e.calendar_id, null, ''Default''',
'              , c.short_name || '' - '' || c.calendar_name ',
'                || decode(c.public_view_yn, ''Y'', null, '' (Private)'')',
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
'and   (   :P2_TIMEFRAME is null ',
'       or (    trunc(to_date(to_char(e.event_date_time,''DD-MON-RRRR''),''DD-MON-RRRR''))',
'                 >= (select start_date ',
'                     from EBA_ca_timeframes',
'                     where :P2_TIMEFRAME = tf_id',
'                    ) ',
'           and trunc(to_date(to_char(e.event_date_time,''DD-MON-RRRR''),''DD-MON-RRRR''))',
'                 <= (select end_date ',
'                     from EBA_ca_timeframes',
'                     where :P2_TIMEFRAME = tf_id',
'                    )',
'          )',
'      )'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(8494335864882176341)
,p_name=>'EBA_CA_EVENTS'
,p_max_row_count=>'10000'
,p_max_row_count_message=>'This query returns more than 10,000 rows, please filter your data to ensure complete results.'
,p_no_data_found_message=>'No data found.'
,p_allow_save_rpt_public=>'Y'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML:EMAIL'
,p_detail_link=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.:3:P3_EVENT_ID,P3_PREV_PAGE:#EVENT_ID#,2'
,p_detail_link_text=>'<span class="fa fa-edit" aria-hidden="true"></span>'
,p_detail_link_attr=>'aria-label="Edit #EVENT_NAME#"'
,p_owner=>'SBKENNED'
,p_internal_uid=>7750611519607594047
);
wwv_flow_api.create_worksheet_col_group(
 p_id=>wwv_flow_api.id(8494336059690176350)
,p_name=>'Details'
,p_display_sequence=>10
);
wwv_flow_api.create_worksheet_col_group(
 p_id=>wwv_flow_api.id(8494335966270176344)
,p_name=>'Audit Info'
,p_display_sequence=>20
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(8494336172139176351)
,p_db_column_name=>'EVENT_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Event ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(8494336754454176356)
,p_db_column_name=>'EVENT_TYPE'
,p_display_order=>2
,p_group_id=>wwv_flow_api.id(8494336059690176350)
,p_column_identifier=>'N'
,p_column_label=>'Event Type'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(8494336270627176355)
,p_db_column_name=>'EVENT_NAME'
,p_display_order=>3
,p_group_id=>wwv_flow_api.id(8494336059690176350)
,p_column_identifier=>'B'
,p_column_label=>'Event Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_help_text=>'Name of the event.'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(8494336370134176356)
,p_db_column_name=>'EVENT_DESC'
,p_display_order=>8
,p_group_id=>wwv_flow_api.id(8494336059690176350)
,p_column_identifier=>'H'
,p_column_label=>'Description'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_help_text=>'Description of the event.'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(8494336450569176356)
,p_db_column_name=>'CONTACT_PERSON'
,p_display_order=>9
,p_group_id=>wwv_flow_api.id(8494336059690176350)
,p_column_identifier=>'I'
,p_column_label=>'Contact Person'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_help_text=>'Person to contact for more information.'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(8494336862274176356)
,p_db_column_name=>'RECUR_FLAG'
,p_display_order=>10
,p_group_id=>wwv_flow_api.id(8494336059690176350)
,p_column_identifier=>'R'
,p_column_label=>'Recurring'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(8494336542367176356)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>11
,p_group_id=>wwv_flow_api.id(8494335966270176344)
,p_column_identifier=>'K'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_help_text=>'The user who created the record.'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(8494336670173176356)
,p_db_column_name=>'LAST_UPDATED_BY'
,p_display_order=>12
,p_group_id=>wwv_flow_api.id(8494335966270176344)
,p_column_identifier=>'M'
,p_column_label=>'Last Updated By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_help_text=>'The user who last updated the record.'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(8602624749863350183)
,p_db_column_name=>'LOCATION'
,p_display_order=>18
,p_group_id=>wwv_flow_api.id(8494336059690176350)
,p_column_identifier=>'X'
,p_column_label=>'Location'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(8050847120292498973)
,p_db_column_name=>'LINKS'
,p_display_order=>21
,p_group_id=>wwv_flow_api.id(8494336059690176350)
,p_column_identifier=>'AA'
,p_column_label=>'Links'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(8116077248743279282)
,p_db_column_name=>'DISP_DURATION'
,p_display_order=>24
,p_group_id=>wwv_flow_api.id(8494336059690176350)
,p_column_identifier=>'AD'
,p_column_label=>'Duration'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(8120989446707713538)
,p_db_column_name=>'EVENT_DATE'
,p_display_order=>25
,p_group_id=>wwv_flow_api.id(8494336059690176350)
,p_column_identifier=>'AE'
,p_column_label=>'Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'&APP_DATE_FORMAT.'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(8120989537495713538)
,p_db_column_name=>'EVENT_START_TIME'
,p_display_order=>26
,p_group_id=>wwv_flow_api.id(8494336059690176350)
,p_column_identifier=>'AF'
,p_column_label=>'Start Time'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'&APP_TIME_FORMAT.'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(8120989637033713538)
,p_db_column_name=>'TIMEFRAMES'
,p_display_order=>27
,p_group_id=>wwv_flow_api.id(8494336059690176350)
,p_column_identifier=>'AG'
,p_column_label=>'Timeframes'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_api.id(8120994840174740009)
,p_rpt_show_filter_lov=>'2'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(8120989731935713539)
,p_db_column_name=>'CREATED_ON'
,p_display_order=>28
,p_group_id=>wwv_flow_api.id(8494335966270176344)
,p_column_identifier=>'AH'
,p_column_label=>'Created'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(8120989830690713539)
,p_db_column_name=>'LAST_UPDATED_ON'
,p_display_order=>29
,p_group_id=>wwv_flow_api.id(8494335966270176344)
,p_column_identifier=>'AI'
,p_column_label=>'Last Updated'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3338009373304697914)
,p_db_column_name=>'TAGS'
,p_display_order=>30
,p_column_identifier=>'AJ'
,p_column_label=>'Tags'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3385497365167306392)
,p_db_column_name=>'DURATION'
,p_display_order=>31
,p_column_identifier=>'AK'
,p_column_label=>'Duration'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1947017360373972773)
,p_db_column_name=>'CALENDAR'
,p_display_order=>41
,p_column_identifier=>'AL'
,p_column_label=>'Calendar'
,p_column_type=>'STRING'
,p_required_patch=>wwv_flow_api.id(1938766493817367015)
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(8494337473202176357)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'4487536'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'EVENT_NAME:EVENT_TYPE:CALENDAR:EVENT_DATE:EVENT_START_TIME:DISP_DURATION:CONTACT_PERSON:LOCATION:TAGS:RECUR_FLAG:'
,p_sort_column_1=>'EVENT_DATE'
,p_sort_direction_1=>'ASC'
,p_sort_column_2=>'EVENT_START_TIME'
,p_sort_direction_2=>'ASC'
,p_sort_column_3=>'EVENT_NAME'
,p_sort_direction_3=>'ASC'
,p_sort_column_4=>'0'
,p_sort_direction_4=>'ASC'
,p_sort_column_5=>'0'
,p_sort_direction_5=>'ASC'
,p_sort_column_6=>'0'
,p_sort_direction_6=>'ASC'
);
wwv_flow_api.create_worksheet_condition(
 p_id=>wwv_flow_api.id(1959035607919686000)
,p_report_id=>wwv_flow_api.id(8494337473202176357)
,p_name=>'Only future events'
,p_condition_type=>'FILTER'
,p_allow_delete=>'Y'
,p_expr_type=>'ROW'
,p_expr=>'  AE >= decode(AK,''All Day'', trunc(sysdate), sysdate - (AK/24))'
,p_condition_sql=>'  "EVENT_DATE" >= decode("DURATION",''All Day'', trunc(sysdate), sysdate - ("DURATION"/24))'
,p_enabled=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(3337921645601639589)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(1858067902034855757)
,p_button_name=>'DELETE_MULTIPLE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple:t-Button--iconRight:t-Button--pillStart'
,p_button_template_id=>wwv_flow_api.id(1797876154044014392)
,p_button_image_alt=>'Delete Multiple Events'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:13:&SESSION.::&DEBUG.:13::'
,p_button_cattributes=>'style="font-weight:bold"'
,p_security_scheme=>wwv_flow_api.id(3336588977096114584)
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(3337921272136637787)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(1858067902034855757)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1797876154044014392)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Event'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.:10::'
,p_icon_css_classes=>'fa-chevron-right'
,p_security_scheme=>wwv_flow_api.id(3336588977096114584)
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(941715367219933060)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(8494335665893176339)
,p_button_name=>'RESET'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1797876052259014390)
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&SESSION.::&DEBUG.:RP,&APP_PAGE_ID.,RIR::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(3337926062701653957)
,p_computation_sequence=>10
,p_computation_item=>'LAST_VIEW'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'2'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(1798847381389132379)
,p_name=>'Refresh Calendar'
,p_event_sequence=>10
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'window'
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1798848306747132389)
,p_event_id=>wwv_flow_api.id(1798847381389132379)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(8494335665893176339)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1798847796045132385)
,p_event_id=>wwv_flow_api.id(1798847381389132379)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.message.showPageSuccess(''Action Processed.'');'
);
wwv_flow_api.component_end;
end;
/
