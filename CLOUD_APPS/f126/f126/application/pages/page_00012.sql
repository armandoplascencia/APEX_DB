prompt --application/pages/page_00012
begin
--   Manifest
--     PAGE: 00012
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
 p_id=>12
,p_user_interface_id=>wwv_flow_api.id(1222136671983413726)
,p_name=>'Timeline'
,p_alias=>'TIMELINE'
,p_step_title=>'&APPLICATION_TITLE. - Timeline'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_api.id(9022052510671357508)
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
,p_help_text=>'This is the timeline of future events page. It shows all upcoming events that match your current filter settings. To change your filter values, click the <strong>Update Filters</strong> button, make your changes and then click the <strong>Set</strong'
||'> button.'
,p_last_updated_by=>'ALLAN'
,p_last_upd_yyyymmddhh24miss=>'20210507094737'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(1309269164127566453)
,p_name=>'Notifications'
,p_display_sequence=>10
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select id, ',
'       nvl(lower(NOTIFICATION_TYPE),''yellow'') as ALERT_TYPE, ',
'       NOTIFICATION_NAME alert_title, ',
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
 p_id=>wwv_flow_api.id(1309269357240566469)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>1
,p_column_heading=>'ID'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(2015980396811448505)
,p_query_column_id=>2
,p_column_alias=>'ALERT_TYPE'
,p_column_display_sequence=>2
,p_column_heading=>'Alert Type'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(2015980765143448505)
,p_query_column_id=>3
,p_column_alias=>'ALERT_TITLE'
,p_column_display_sequence=>3
,p_column_heading=>'Alert Title'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(2015981151570448505)
,p_query_column_id=>4
,p_column_alias=>'ALERT_DESC'
,p_column_display_sequence=>4
,p_column_heading=>'Alert Desc'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(2015981546126448505)
,p_query_column_id=>5
,p_column_alias=>'ALERT_ACTION'
,p_column_display_sequence=>5
,p_column_heading=>'Alert Action'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1798493934749274806)
,p_plug_name=>'Breadcrumbs'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
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
 p_id=>wwv_flow_api.id(2049915512763793040)
,p_plug_name=>'Timeline of Future Events'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(1797853323124014327)
,p_plug_display_sequence=>40
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select e.event_id id',
',      case when :MULTIPLE_CAL_BO = ''Include'' then nvl(c.short_name, ''Default'') ||'': '' end ||e.event_name ||',
'           case when exists (select 1 from EBA_CA_FILES',
'                             where event_id = e.event_id)',
'                then '' (a)''',
'           end title',
',      ''f?p=''||:app_id||'':3:''||:app_session||'':::3:LAST_VIEW,P3_EVENT_ID:12,''||e.event_id link',
',      case when et.display_color is not null then',
'         ''apex-cal-''||',
'         (select lower(cp.color_name) from eba_ca_color_prefs cp where cp.bg_color = et.display_color)',
'       else ',
'         ''apex-cal-default''',
'       end color_class',
',      et.type_name || decode(:EXTERNAL_INTERNAL_BO, ''Include'', decode(internal_yn, ''Y'', '' (Internal Only)'', null), null) event_type',
',      e.event_date_time',
',      case when display_time=''N'' then '''' ',
'            when to_char(e.EVENT_DATE_TIME,''MI'') = ''00'' then ',
'                 ltrim(to_char(e.EVENT_DATE_TIME,''HHam''),''0'')',
'            else ',
'                 ltrim(to_char(e.EVENT_DATE_TIME,''HH:MIam''),''0'')',
'            end ||',
'       case when display_time=''N'' then '''' ',
'            when e.duration = 0  then ''(0 mins)''',
'            when e.duration = .25 then ''(15 mins)''',
'            when e.duration = .5 then ''(30 mins)''',
'            when e.duration = .75 then ''(45 mins)''',
'            when e.duration = 1 then ''(1 hr)''',
'            when e.duration > 1 then to_char(trunc(e.duration)) || '' hrs''',
'              || case when e.duration - trunc(e.duration) = 0  then '')''',
'                      when e.duration - trunc(e.duration) = .25 then '' 15 mins)''',
'                      when e.duration - trunc(e.duration) = .5 then '' 30 mins)''',
'                      when e.duration - trunc(e.duration) = .75 then '' 45 mins)''',
'                 end',
'       end  time',
',      e.EVENT_DESC',
',      e.LOCATION',
',      e.CONTACT_PERSON',
',      e.tags',
',      e.CREATED_BY|| '' - ''||apex_util.get_since(e.created_on) created',
',      e.display_time',
',      e.LINK_NAME_1, e.LINK_NAME_2, e.LINK_NAME_3',
',      e.LINK_URL_1, e.LINK_URL_2, e.LINK_URL_3',
'from eba_ca_events e',
',    eba_ca_event_types et',
',    eba_ca_calendars c',
'where e.EVENT_DATE_TIME >= decode(e.display_time,''N'', trunc(sysdate),cast(sysdate-(e.duration/24) as timestamp))',
'and   e.type_id = et.type_id (+)',
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
'order by case when nvl(display_time,''Y'')=''N'' then trunc(e.EVENT_DATE_TIME) else e.EVENT_DATE_TIME end'))
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.TIMELINESTATUSLIST'
,p_plug_query_num_rows=>100
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_no_data_found=>'No calendar events found'
,p_attribute_01=>'EVENT_DATE_TIME'
,p_attribute_02=>'COLOR_CLASS'
,p_attribute_03=>'TITLE'
,p_attribute_04=>'LINK'
,p_attribute_05=>'TIME'
,p_attribute_06=>'TAGS'
,p_attribute_07=>'LOCATION'
,p_attribute_08=>'CONTACT_PERSON'
,p_attribute_09=>'EVENT_DESC'
,p_attribute_12=>'D'
,p_attribute_13=>'EVENT_TYPE'
,p_attribute_14=>'EVENT_TYPE'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(1619585774062435086)
,p_name=>'COLOR_CLASS'
,p_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Color class'
,p_display_sequence=>250
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(1628310308256229482)
,p_name=>'LINK'
,p_source_type=>'DB_COLUMN'
,p_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Link'
,p_display_sequence=>220
,p_use_as_row_header=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(1628310399479229483)
,p_name=>'CREATED'
,p_source_type=>'DB_COLUMN'
,p_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Created'
,p_display_sequence=>230
,p_use_as_row_header=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(1628310439197229484)
,p_name=>'TIME'
,p_source_type=>'DB_COLUMN'
,p_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Time'
,p_display_sequence=>240
,p_use_as_row_header=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(2049915772462793044)
,p_name=>'ID'
,p_source_type=>'DB_COLUMN'
,p_data_type=>'NUMBER'
,p_is_visible=>true
,p_heading=>'Id'
,p_display_sequence=>10
,p_use_as_row_header=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(2049916261313793047)
,p_name=>'TITLE'
,p_source_type=>'DB_COLUMN'
,p_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Title'
,p_display_sequence=>20
,p_use_as_row_header=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(2049917251328793051)
,p_name=>'EVENT_TYPE'
,p_source_type=>'DB_COLUMN'
,p_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Event Type'
,p_display_sequence=>40
,p_use_as_row_header=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(2049917764425793052)
,p_name=>'EVENT_DATE_TIME'
,p_source_type=>'DB_COLUMN'
,p_data_type=>'TIMESTAMP_TZ'
,p_is_visible=>true
,p_heading=>'Event Date Time'
,p_display_sequence=>50
,p_use_as_row_header=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(2049919783720793053)
,p_name=>'EVENT_DESC'
,p_source_type=>'DB_COLUMN'
,p_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Event Desc'
,p_display_sequence=>90
,p_use_as_row_header=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(2049920281738793053)
,p_name=>'LOCATION'
,p_source_type=>'DB_COLUMN'
,p_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Location'
,p_display_sequence=>100
,p_use_as_row_header=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(2049920789881793054)
,p_name=>'CONTACT_PERSON'
,p_source_type=>'DB_COLUMN'
,p_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Contact Person'
,p_display_sequence=>110
,p_use_as_row_header=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(2049921289860793054)
,p_name=>'TAGS'
,p_source_type=>'DB_COLUMN'
,p_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Tags'
,p_display_sequence=>120
,p_use_as_row_header=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(2049922795507793057)
,p_name=>'DISPLAY_TIME'
,p_source_type=>'DB_COLUMN'
,p_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Display Time'
,p_display_sequence=>150
,p_use_as_row_header=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(2049923252157793058)
,p_name=>'LINK_NAME_1'
,p_source_type=>'DB_COLUMN'
,p_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Link Name 1'
,p_display_sequence=>160
,p_use_as_row_header=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(2049923792725793059)
,p_name=>'LINK_NAME_2'
,p_source_type=>'DB_COLUMN'
,p_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Link Name 2'
,p_display_sequence=>170
,p_use_as_row_header=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(2049924327757793060)
,p_name=>'LINK_NAME_3'
,p_source_type=>'DB_COLUMN'
,p_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Link Name 3'
,p_display_sequence=>180
,p_use_as_row_header=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(2049924771511793061)
,p_name=>'LINK_URL_1'
,p_source_type=>'DB_COLUMN'
,p_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Link Url 1'
,p_display_sequence=>190
,p_use_as_row_header=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(2049925288352793061)
,p_name=>'LINK_URL_2'
,p_source_type=>'DB_COLUMN'
,p_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Link Url 2'
,p_display_sequence=>200
,p_use_as_row_header=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(2049925753581793061)
,p_name=>'LINK_URL_3'
,p_source_type=>'DB_COLUMN'
,p_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Link Url 3'
,p_display_sequence=>210
,p_use_as_row_header=>false
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(3338826052553850018)
,p_plug_name=>'Timezone'
,p_region_css_classes=>'infoTextRegion'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1797842692634014308)
,p_plug_display_sequence=>50
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
 p_id=>wwv_flow_api.id(3793418237143500977)
,p_plug_name=>'Filters'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:is-expanded:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(1797849259226014317)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(3621170469755381013)
,p_name=>'Calendars'
,p_parent_plug_id=>wwv_flow_api.id(3793418237143500977)
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
 p_id=>wwv_flow_api.id(1950565532762146283)
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
 p_id=>wwv_flow_api.id(3793417177109500966)
,p_name=>'Contact Email'
,p_parent_plug_id=>wwv_flow_api.id(3793418237143500977)
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
 p_id=>wwv_flow_api.id(1950564900133146282)
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
 p_id=>wwv_flow_api.id(9904309216253391766)
,p_name=>'Event Types'
,p_parent_plug_id=>wwv_flow_api.id(3793418237143500977)
,p_template=>wwv_flow_api.id(1797853323124014327)
,p_display_sequence=>70
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--staticRowColors:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select listagg(a.event_type, '' '') within group (order by a.type_name) event_types',
'from (select type_name,',
'       case when display_color is not null',
'            then ''<span class="t-Badge t-Badge--basic t-Badge--small apex-cal-''||apex_escape.html(lower(cp.color_name))||''">''|| ',
'                 apex_escape.html(type_name || decode(:EXTERNAL_INTERNAL_BO, ''Include'', decode(internal_yn, ''Y'', '' (Internal Only)'', null), null) ) || ''</span>''',
'            else ''<span class="t-Badge t-Badge--basic t-Badge--small">''|| ',
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
') a'))
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from EBA_CA_EVENT_TYPES'))
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
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1947019334329972793)
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
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(3338024875148906547)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(1798493934749274806)
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
 p_id=>wwv_flow_api.id(1950569625536159001)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(3793418237143500977)
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
 p_id=>wwv_flow_api.id(3338022267913857231)
,p_branch_action=>'f?p=&APP_ID.:12:&SESSION.::&DEBUG.:::'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_branch_comment=>'Created 06-APR-2012 12:09 by MIKE'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(3337926474129657275)
,p_computation_sequence=>10
,p_computation_item=>'LAST_VIEW'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'12'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(1774765076552852764)
,p_name=>'Refresh Timeline'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P12_EVENT_TYPE,P12_CONTACT'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1774765217995852765)
,p_event_id=>wwv_flow_api.id(1774765076552852764)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(2049915512763793040)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(1798843881643110760)
,p_name=>'Refresh Timeline for Create'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(3338024875148906547)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1798844255788110768)
,p_event_id=>wwv_flow_api.id(1798843881643110760)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(2049915512763793040)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1797848158189390497)
,p_event_id=>wwv_flow_api.id(1798843881643110760)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.message.showPageSuccess(''Event added.'');'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(1947019603820972795)
,p_name=>'Refresh Timeline for Filter'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(1950569625536159001)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1947019816838972797)
,p_event_id=>wwv_flow_api.id(1947019603820972795)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(9904309216253391766)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1947019914026972798)
,p_event_id=>wwv_flow_api.id(1947019603820972795)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(3621170469755381013)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1947019961386972799)
,p_event_id=>wwv_flow_api.id(1947019603820972795)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(3793417177109500966)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1947019659025972796)
,p_event_id=>wwv_flow_api.id(1947019603820972795)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(3793418237143500977)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1947020121076972800)
,p_event_id=>wwv_flow_api.id(1947019603820972795)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.message.showPageSuccess(''Filters applied.'');'
);
wwv_flow_api.component_end;
end;
/
