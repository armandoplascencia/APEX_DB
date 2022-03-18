prompt --application/pages/page_00040
begin
--   Manifest
--     PAGE: 00040
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>134
,p_default_id_offset=>172493832712964115
,p_default_owner=>'MISO'
);
wwv_flow_api.create_page(
 p_id=>40
,p_user_interface_id=>wwv_flow_api.id(5783577205373975152)
,p_name=>'Top Users'
,p_page_mode=>'MODAL'
,p_step_title=>'Top Users'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(5956244196798598610)
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.hour-graph {',
'  display: table;',
'  width: 100%;',
'}',
'',
'span.hour {',
'  display: table-cell;',
'  padding: 0;',
'  font-size: 11px;',
'  text-align: center;',
'  background-color: #a6ffa6;',
'  min-width: 32px;',
'}',
'',
'span.hour.is-over1k {',
'    background-color: #7bdc7b;',
'}',
'',
'span.hour.is-null {',
'  background-color: #E0E0E0;',
'}',
'',
'span.hour-label {opacity: 0.5;}',
'',
'span.hour-value {',
'  display: block;',
'}'))
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch'
,p_required_role=>wwv_flow_api.id(7306165779537991444)
,p_protection_level=>'C'
,p_help_text=>'<p>Use this Interactive Report to view page views aggregated by user. Click the <strong>Reset</strong> button to reset the interactive report. Click the <strong>Actions</strong> button to define the number of rows displayed per page, filter, format, '
||'download, and/or save the interactive report.</p>'
,p_last_upd_yyyymmddhh24miss=>'20190905082521'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1519088633456431603)
,p_plug_name=>'Top Users'
,p_region_template_options=>'#DEFAULT#:t-Region--hiddenOverflow:t-Region--hideHeader'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(6781115417665890803)
,p_plug_display_sequence=>50
,p_plug_display_point=>'BODY'
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P40_VIEW_AS'
,p_plug_display_when_cond2=>'CHART'
);
wwv_flow_api.create_jet_chart(
 p_id=>wwv_flow_api.id(1519088796405431604)
,p_region_id=>wwv_flow_api.id(1519088633456431603)
,p_chart_type=>'donut'
,p_animation_on_display=>'none'
,p_animation_on_data_change=>'none'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_value_format_type=>'decimal'
,p_value_decimal_places=>0
,p_value_format_scaling=>'auto'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'off'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_pie_other_threshold=>.02
,p_pie_selection_effect=>'highlight'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(1519088858848431605)
,p_chart_id=>wwv_flow_api.id(1519088796405431604)
,p_seq=>10
,p_name=>'Top Users'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select lower(userid) as userid,',
'       count(*)      as page_views',
'  from apex_activity_log',
' where flow_id    = :app_id',
'   and time_stamp > sysdate - to_number(:P40_TIMEFRAME, ''9999999990.99999999999'', ''NLS_NUMERIC_CHARACTERS=''''.,'''''')',
'   and userid     is not null',
' group by lower(userid)',
' order by 2'))
,p_ajax_items_to_submit=>'P40_TIMEFRAME'
,p_items_value_column_name=>'PAGE_VIEWS'
,p_items_label_column_name=>'USERID'
,p_items_label_rendered=>true
,p_items_label_position=>'outsideSlice'
,p_items_label_display_as=>'ALL'
,p_threshold_display=>'onIndicator'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(9028018918312709139)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(6781117976757890807)
,p_plug_display_sequence=>50
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(8972392840601050532)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(6781135716305890867)
,p_plug_display_condition_type=>'NEVER'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(9028019343087709140)
,p_plug_name=>'Top Users'
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(6781113968619890797)
,p_plug_display_sequence=>30
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'THE_USER,',
'PAGE_EVENTS,',
'MEDIAN_ELAPSED,',
'ROWS_FETCHED,',
'IR_SEARCHES,',
'ERRORS,',
'MOST_RECENT,',
'''<div class="hour-graph">''||',
'''<span class="hour''|| case when h00 = 0 then '' is-null'' when h00 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 0</span> <span class="hour-value">''|| case when h00 > 999 then to_char((h00/1000),''99999999D0'') ||''k'' else to_char(h00) end ||'
||'''</span></span>''||',
'''<span class="hour''|| case when h01 = 0 then '' is-null'' when h01 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 1</span> <span class="hour-value">''|| case when h01 > 999 then to_char((h01/1000),''99999999D0'') ||''k'' else to_char(h01) end ||'
||'''</span></span>''||',
'''<span class="hour''|| case when h02 = 0 then '' is-null'' when h02 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 2</span> <span class="hour-value">''|| case when h02 > 999 then to_char((h02/1000),''99999999D0'') ||''k'' else to_char(h02) end ||'
||'''</span></span>''||',
'''<span class="hour''|| case when h03 = 0 then '' is-null'' when h03 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 3</span> <span class="hour-value">''|| case when h03 > 999 then to_char((h03/1000),''99999999D0'') ||''k'' else to_char(h03) end ||'
||'''</span></span>''||',
'''<span class="hour''|| case when h04 = 0 then '' is-null'' when h04 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 4</span> <span class="hour-value">''|| case when h04 > 999 then to_char((h04/1000),''99999999D0'') ||''k'' else to_char(h04) end ||'
||'''</span></span>''||',
'''<span class="hour''|| case when h05 = 0 then '' is-null'' when h05 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 5</span> <span class="hour-value">''|| case when h05 > 999 then to_char((h05/1000),''99999999D0'') ||''k'' else to_char(h05) end ||'
||'''</span></span>''||',
'''<span class="hour''|| case when h06 = 0 then '' is-null'' when h06 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 6</span> <span class="hour-value">''|| case when h06 > 999 then to_char((h06/1000),''99999999D0'') ||''k'' else to_char(h06) end ||'
||'''</span></span>''||',
'''<span class="hour''|| case when h07 = 0 then '' is-null'' when h07 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 7</span> <span class="hour-value">''|| case when h07 > 999 then to_char((h07/1000),''99999999D0'') ||''k'' else to_char(h07) end ||'
||'''</span></span>''||',
'''<span class="hour''|| case when h08 = 0 then '' is-null'' when h08 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 8</span> <span class="hour-value">''|| case when h08 > 999 then to_char((h08/1000),''99999999D0'') ||''k'' else to_char(h08) end ||'
||'''</span></span>''||',
'''<span class="hour''|| case when h09 = 0 then '' is-null'' when h09 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 9</span> <span class="hour-value">''|| case when h09 > 999 then to_char((h09/1000),''99999999D0'') ||''k'' else to_char(h09) end ||'
||'''</span></span>''||',
'''<span class="hour''|| case when h10 = 0 then '' is-null'' when h10 > 999 then '' is-over1k'' end ||''"><span class="hour-label">10</span> <span class="hour-value">''|| case when h10 > 999 then to_char((h10/1000),''99999999D0'') ||''k'' else to_char(h10) end ||'
||'''</span></span>''||',
'''<span class="hour''|| case when h11 = 0 then '' is-null'' when h11 > 999 then '' is-over1k'' end ||''"><span class="hour-label">11</span> <span class="hour-value">''|| case when h11 > 999 then to_char((h11/1000),''99999999D0'') ||''k'' else to_char(h11) end ||'
||'''</span></span>''||',
'''<span class="hour''|| case when h12 = 0 then '' is-null'' when h12 > 999 then '' is-over1k'' end ||''"><span class="hour-label">12</span> <span class="hour-value">''|| case when h12 > 999 then to_char((h12/1000),''99999999D0'') ||''k'' else to_char(h12) end ||'
||'''</span></span>''||',
'''<span class="hour''|| case when h13 = 0 then '' is-null'' when h13 > 999 then '' is-over1k'' end ||''"><span class="hour-label">13</span> <span class="hour-value">''|| case when h13 > 999 then to_char((h13/1000),''99999999D0'') ||''k'' else to_char(h13) end ||'
||'''</span></span>''||',
'''<span class="hour''|| case when h14 = 0 then '' is-null'' when h14 > 999 then '' is-over1k'' end ||''"><span class="hour-label">14</span> <span class="hour-value">''|| case when h14 > 999 then to_char((h14/1000),''99999999D0'') ||''k'' else to_char(h14) end ||'
||'''</span></span>''||',
'''<span class="hour''|| case when h15 = 0 then '' is-null'' when h15 > 999 then '' is-over1k'' end ||''"><span class="hour-label">15</span> <span class="hour-value">''|| case when h15 > 999 then to_char((h15/1000),''99999999D0'') ||''k'' else to_char(h15) end ||'
||'''</span></span>''||',
'''<span class="hour''|| case when h16 = 0 then '' is-null'' when h16 > 999 then '' is-over1k'' end ||''"><span class="hour-label">16</span> <span class="hour-value">''|| case when h16 > 999 then to_char((h16/1000),''99999999D0'') ||''k'' else to_char(h16) end ||'
||'''</span></span>''||',
'''<span class="hour''|| case when h17 = 0 then '' is-null'' when h17 > 999 then '' is-over1k'' end ||''"><span class="hour-label">17</span> <span class="hour-value">''|| case when h17 > 999 then to_char((h17/1000),''99999999D0'') ||''k'' else to_char(h17) end ||'
||'''</span></span>''||',
'''<span class="hour''|| case when h18 = 0 then '' is-null'' when h18 > 999 then '' is-over1k'' end ||''"><span class="hour-label">18</span> <span class="hour-value">''|| case when h18 > 999 then to_char((h18/1000),''99999999D0'') ||''k'' else to_char(h18) end ||'
||'''</span></span>''||',
'''<span class="hour''|| case when h19 = 0 then '' is-null'' when h19 > 999 then '' is-over1k'' end ||''"><span class="hour-label">19</span> <span class="hour-value">''|| case when h19 > 999 then to_char((h19/1000),''99999999D0'') ||''k'' else to_char(h19) end ||'
||'''</span></span>''||',
'''<span class="hour''|| case when h20 = 0 then '' is-null'' when h20 > 999 then '' is-over1k'' end ||''"><span class="hour-label">20</span> <span class="hour-value">''|| case when h20 > 999 then to_char((h20/1000),''99999999D0'') ||''k'' else to_char(h20) end ||'
||'''</span></span>''||',
'''<span class="hour''|| case when h21 = 0 then '' is-null'' when h21 > 999 then '' is-over1k'' end ||''"><span class="hour-label">21</span> <span class="hour-value">''|| case when h21 > 999 then to_char((h21/1000),''99999999D0'') ||''k'' else to_char(h21) end ||'
||'''</span></span>''||',
'''<span class="hour''|| case when h22 = 0 then '' is-null'' when h22 > 999 then '' is-over1k'' end ||''"><span class="hour-label">22</span> <span class="hour-value">''|| case when h22 > 999 then to_char((h22/1000),''99999999D0'') ||''k'' else to_char(h22) end ||'
||'''</span></span>''||',
'''<span class="hour''|| case when h23 = 0 then '' is-null'' when h23 > 999 then '' is-over1k'' end ||''"><span class="hour-label">23</span> <span class="hour-value">''|| case when h23 > 999 then to_char((h23/1000),''99999999D0'') ||''k'' else to_char(h23) end ||'
||'''</span></span>''||',
'''</div>'' hours',
'from',
'(select',
'lower(USERID)                   as THE_USER,',
'count(*)                        as PAGE_EVENTS,',
'median(ELAP)                    as MEDIAN_ELAPSED,',
'sum(NUM_ROWS)                   as ROWS_FETCHED,',
'sum(decode(IR_SEARCH,null,0,1)) as IR_SEARCHES,',
'sum(decode(SQLERRM,null,0,1))   as ERRORS,',
'max(time_stamp)                 as MOST_RECENT,',
'sum(decode(to_char(time_stamp,''HH24''),0,1,0)) h00,',
'sum(decode(to_char(time_stamp,''HH24''),1,1,0)) h01,',
'sum(decode(to_char(time_stamp,''HH24''),2,1,0)) h02,',
'sum(decode(to_char(time_stamp,''HH24''),3,1,0)) h03,',
'sum(decode(to_char(time_stamp,''HH24''),4,1,0)) h04,',
'sum(decode(to_char(time_stamp,''HH24''),5,1,0)) h05,',
'sum(decode(to_char(time_stamp,''HH24''),6,1,0)) h06,',
'sum(decode(to_char(time_stamp,''HH24''),7,1,0)) h07,',
'sum(decode(to_char(time_stamp,''HH24''),8,1,0)) h08,',
'sum(decode(to_char(time_stamp,''HH24''),9,1,0)) h09,',
'sum(decode(to_char(time_stamp,''HH24''),10,1,0)) h10,',
'sum(decode(to_char(time_stamp,''HH24''),11,1,0)) h11,',
'sum(decode(to_char(time_stamp,''HH24''),12,1,0)) h12,',
'sum(decode(to_char(time_stamp,''HH24''),13,1,0)) h13,',
'sum(decode(to_char(time_stamp,''HH24''),14,1,0)) h14,',
'sum(decode(to_char(time_stamp,''HH24''),15,1,0)) h15,',
'sum(decode(to_char(time_stamp,''HH24''),16,1,0)) h16,',
'sum(decode(to_char(time_stamp,''HH24''),17,1,0)) h17,',
'sum(decode(to_char(time_stamp,''HH24''),18,1,0)) h18,',
'sum(decode(to_char(time_stamp,''HH24''),19,1,0)) h19,',
'sum(decode(to_char(time_stamp,''HH24''),20,1,0)) h20,',
'sum(decode(to_char(time_stamp,''HH24''),21,1,0)) h21,',
'sum(decode(to_char(time_stamp,''HH24''),22,1,0)) h22,',
'sum(decode(to_char(time_stamp,''HH24''),23,1,0)) h23',
'from apex_activity_log l',
'where flow_id = :APP_ID and',
'time_stamp > sysdate - to_number(:P40_TIMEFRAME,''9999999990.99999999999'',''NLS_NUMERIC_CHARACTERS=''''.,'''''')',
'and userid is not null',
'group by lower(userid)) x'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P40_TIMEFRAME'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P40_VIEW_AS'
,p_plug_display_when_cond2=>'REPORT'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>8.5
,p_prn_height=>11
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#9bafde'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'normal'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#efefef'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(9028019444950709140)
,p_name=>'Top Users'
,p_max_row_count=>'10000'
,p_max_row_count_message=>'This query returns more than #MAX_ROW_COUNT# rows, please filter your data to ensure complete results.'
,p_no_data_found_message=>'No data found.'
,p_allow_save_rpt_public=>'Y'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLSX:PDF:RTF'
,p_owner=>'MIKE'
,p_internal_uid=>3723035065417571467
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(9050656237589959493)
,p_db_column_name=>'MOST_RECENT'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Most Recent'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(5997951008609039388)
,p_db_column_name=>'THE_USER'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'User'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(5997951111329039390)
,p_db_column_name=>'PAGE_EVENTS'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Page Events'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(5997951190743039390)
,p_db_column_name=>'MEDIAN_ELAPSED'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Median Elapsed'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990D0000'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(5997951295903039390)
,p_db_column_name=>'ROWS_FETCHED'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Rows Fetched'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(5997951387610039390)
,p_db_column_name=>'IR_SEARCHES'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'IR Searches'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(5997951502644039390)
,p_db_column_name=>'ERRORS'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Errors'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1874656008593080766)
,p_db_column_name=>'HOURS'
,p_display_order=>24
,p_column_identifier=>'O'
,p_column_label=>'Activity by Hour'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(9028020316950709353)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'8951209'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'THE_USER:PAGE_EVENTS:MEDIAN_ELAPSED:ERRORS:MOST_RECENT::HOURS'
,p_sort_column_1=>'PAGE_EVENTS'
,p_sort_direction_1=>'DESC'
,p_sort_column_2=>'MOST_RECENT'
,p_sort_direction_2=>'DESC'
,p_sort_column_3=>'Page_Events'
,p_sort_direction_3=>'DESC'
,p_sort_column_4=>'Page Events'
,p_sort_direction_4=>'DESC'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(9030157839476049508)
,p_plug_name=>'Button Bar'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--noPadding:t-ButtonRegion--noUI'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(6781104860657890779)
,p_plug_display_sequence=>20
,p_plug_new_grid_column=>false
,p_plug_display_point=>'BODY'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(9029503017242870245)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(9028019343087709140)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(6781134785393890859)
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:40:&SESSION.::&DEBUG.:40,RIR::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(5903535002892326911)
,p_name=>'P40_VIEW_AS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(9030157839476049508)
,p_item_default=>'REPORT'
,p_prompt=>'View As'
,p_source=>'REPORT'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC2:Chart;CHART,Report;REPORT'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(748281690398960066)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'REDIRECT_SET_VALUE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(9030158433289076134)
,p_name=>'P40_TIMEFRAME'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(9030157839476049508)
,p_item_default=>'00001.0000000000'
,p_prompt=>'Timeframe'
,p_source=>'00001.0000000000'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'TIMEFRAME (4 WEEKS)'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select wwv_flow_lang.system_message(''N_MINUTES'',''15'') d, ',
'trim(to_char(15/(24*60),''00000.99999999999'',''NLS_NUMERIC_CHARACTERS=''''.,'''''')) t from dual',
'union all ',
'select wwv_flow_lang.system_message(''N_MINUTES'',''30'') d, ',
'trim(to_char(30/(24*60),''00000.99999999999'',''NLS_NUMERIC_CHARACTERS=''''.,'''''')) t from dual',
'union all ',
'select wwv_flow_lang.system_message(''N_HOUR'',''1'') d, ',
'trim(to_char(1/24,''00000.99999999999'',''NLS_NUMERIC_CHARACTERS=''''.,'''''')) t from dual',
'union all ',
'select wwv_flow_lang.system_message(''N_MINUTES'',''90'') d, ',
'trim(to_char(90/(24*60),''00000.99999999999'',''NLS_NUMERIC_CHARACTERS=''''.,'''''')) t from dual',
'union all ',
'select wwv_flow_lang.system_message(''N_HOURS'',''2'') d, ',
'trim(to_char(1/12,''00000.99999999999'',''NLS_NUMERIC_CHARACTERS=''''.,''''''))  t from dual',
'union all ',
'select wwv_flow_lang.system_message(''N_HOURS'',''3'') d, ',
'trim(to_char(3/24,''00000.99999999999'',''NLS_NUMERIC_CHARACTERS=''''.,''''''))  t from dual',
'union all ',
'select wwv_flow_lang.system_message(''N_HOURS'',''4'') d, ',
'trim(to_char(4/24,''00000.99999999999'',''NLS_NUMERIC_CHARACTERS=''''.,''''''))  t from dual',
'union all ',
'select wwv_flow_lang.system_message(''N_HOURS'',''5'') d, ',
'trim(to_char(5/24,''00000.99999999999'',''NLS_NUMERIC_CHARACTERS=''''.,''''''))  t from dual',
'union all ',
'select wwv_flow_lang.system_message(''N_HOURS'',''6'') d, ',
'trim(to_char(6/24,''00000.99999999999'',''NLS_NUMERIC_CHARACTERS=''''.,'''''')) t from dual',
'union all ',
'select wwv_flow_lang.system_message(''N_HOURS'',''8'') d, ',
'trim(to_char(8/24,''00000.99999999999'',''NLS_NUMERIC_CHARACTERS=''''.,'''''')) t from dual',
'union all ',
'select wwv_flow_lang.system_message(''N_HOURS'',''10'') d, ',
'trim(to_char(10/24,''00000.99999999999'',''NLS_NUMERIC_CHARACTERS=''''.,'''''')) t from dual',
'union all ',
'select wwv_flow_lang.system_message(''N_HOURS'',''12'') d, ',
'trim(to_char(12/24,''00000.99999999999'',''NLS_NUMERIC_CHARACTERS=''''.,'''''')) t from dual',
'union all ',
'select wwv_flow_lang.system_message(''N_HOURS'',''16'') d, ',
'trim(to_char(16/24,''00000.9999999999'',''NLS_NUMERIC_CHARACTERS=''''.,'''''')) t from dual',
'union all ',
'select wwv_flow_lang.system_message(''N_DAY'',''1'') d, trim(to_char(1,''00000.9999999999'')) t from dual',
'union all ',
'select wwv_flow_lang.system_message(''N_DAYS'',''2'') d, trim(to_char(2,''00000.9999999999'')) t from dual',
'union all ',
'select wwv_flow_lang.system_message(''N_DAYS'',''3'') d, trim(to_char(3,''00000.9999999999'')) t from dual',
'union all ',
'select wwv_flow_lang.system_message(''N_DAYS'',''4'') d, trim(to_char(4,''00000.9999999999'')) t from dual',
'union all ',
'select wwv_flow_lang.system_message(''N_DAYS'',''5'') d, trim(to_char(5,''00000.9999999999'')) t from dual',
'union all ',
'select wwv_flow_lang.system_message(''N_WEEK'',''1'') d, trim(to_char(7,''00000.9999999999'')) t from dual',
'union all ',
'select wwv_flow_lang.system_message(''N_WEEKS'',''2'') d, trim(to_char(14,''00000.9999999999'')) t from dual',
'union all ',
'select wwv_flow_lang.system_message(''N_WEEKS'',''3'') d, trim(to_char(21,''00000.9999999999'')) t from dual',
'union all ',
'select wwv_flow_lang.system_message(''N_WEEKS'',''4'') d, trim(to_char(28,''00000.9999999999'')) t from dual',
'order by 2'))
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(748281690398960066)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'REDIRECT_SET_VALUE'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(5929926485009174149)
,p_name=>'Refresh'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P40_TIMEFRAME'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(5929926798919174152)
,p_event_id=>wwv_flow_api.id(5929926485009174149)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(9028019343087709140)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1662838407089306858)
,p_event_id=>wwv_flow_api.id(5929926485009174149)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(1519088633456431603)
);
wwv_flow_api.component_end;
end;
/
