prompt --application/pages/page_00011
begin
--   Manifest
--     PAGE: 00011
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>123
,p_default_id_offset=>111717178695017138
,p_default_owner=>'MISO'
);
wwv_flow_api.create_page(
 p_id=>11
,p_user_interface_id=>wwv_flow_api.id(3048806881237990347)
,p_name=>'Local REST Data'
,p_alias=>'LOCAL-REST-DATA'
,p_step_title=>'Local REST Data'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'section.infoRegion {',
'    border: 1px solid #9AAEC8;',
'    background-color: #DDE7F5;',
'}',
'section.infoRegion > div.uRegionHeading {',
'    background: none transparent;',
'}',
'.infoRegionIcon {',
'    position: absolute;',
'    left: 0;',
'    margin: 16px;',
'    top: 0;',
'}',
'section.infoRegion.uRegion > div.uRegionContent {',
'    position: relative;',
'    min-height: 32px;',
'    padding: 16px 16px 16px 64px;',
'}',
'.infoRegion h1 {',
'    font-weight: bold;',
'    font-size: 14px;',
'    color: #202020;',
'    text-shadow: 0 1px 0 rgba(255,255,255,.65);',
'}',
'.infoRegion p {',
'    font-size: 12px;',
'    line-height: 20px;',
'    padding: 8px 0 0 0;',
'    text-shadow: 0 1px 0 rgba(255,255,255,.25);',
'    color: #303030;',
'}',
'.infoRegion p:last-child {',
'    margin-bottom: 0 !important;',
'}',
'',
'',
'',
'div.featuredBlock{',
'	-webkit-border-radius:3px;',
'	-moz-border-radius:3px;',
'	border-radius:3px;',
'	-webkit-box-shadow:0 1px 2px rgba(0,0,0,0.05);',
'	-moz-box-shadow:0 1px 2px rgba(0,0,0,0.05);',
'	box-shadow:0 1px 2px rgba(0,0,0,0.05);',
'	border:1px solid #E1E6EB;',
'	margin-bottom:18px',
'}',
'div.featuredBlock div.featuredIcon{',
'	background-image:url(''data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0idXRmLTgiPz4gPHN2ZyB2ZXJzaW9uPSIxLjEiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyI+PGRlZnM+PGxpbmVhckdyYWRpZW50IGlkPSJncmFkIiBncmFkaWVudFVuaXRzPSJ1c2VyU3BhY2VPb'
||'lVzZSIgeDE9IjUwJSIgeTE9IjAlIiB4Mj0iNTAlIiB5Mj0iMTAwJSI+PHN0b3Agb2Zmc2V0PSIwJSIgc3RvcC1jb2xvcj0iI2ZmZmZmZiIvPjxzdG9wIG9mZnNldD0iNDAlIiBzdG9wLWNvbG9yPSIjZmZmZmZmIi8+PHN0b3Agb2Zmc2V0PSI2MCUiIHN0b3AtY29sb3I9IiNmNGY0ZjgiLz48c3RvcCBvZmZzZXQ9IjEwMCUiIHN0b3A'
||'tY29sb3I9IiNmZmZmZmYiLz48L2xpbmVhckdyYWRpZW50PjwvZGVmcz48cmVjdCB4PSIwIiB5PSIwIiB3aWR0aD0iMTAwJSIgaGVpZ2h0PSIxMDAlIiBmaWxsPSJ1cmwoI2dyYWQpIiAvPjwvc3ZnPiA='');',
'	background-size:100%;',
'	background-image:-webkit-gradient(linear, 50% 0%, 50% 100%, color-stop(0%, #ffffff), color-stop(40%, #ffffff), color-stop(60%, #f4f4f8), color-stop(100%, #ffffff));',
'	background-image:-webkit-linear-gradient(top, #ffffff 0%,#ffffff 40%,#f4f4f8 60%,#ffffff 100%);',
'	background-image:-moz-linear-gradient(top, #ffffff 0%,#ffffff 40%,#f4f4f8 60%,#ffffff 100%);',
'	background-image:linear-gradient(top, #ffffff 0%,#ffffff 40%,#f4f4f8 60%,#ffffff 100%);',
'	-webkit-border-radius:3px 3px 0 0;',
'	-moz-border-radius:3px 3px 0 0;',
'	border-radius:3px 3px 0 0;',
'	padding:8px 0;',
'	min-height: 90px;',
'	text-align:center;',
'}',
'div.featuredBlock div.featuredIcon img{',
'	display:block;',
'	margin:0 auto 0 auto;',
'	-webkit-box-reflect:below -20px -webkit-gradient(linear, left top, left bottom, from(transparent), color-stop(65%, transparent), to(rgba(255,255,255,0.2)));',
'}',
'div.featuredBlock div.featuredIcon h1{',
'	font-size:12px;',
'	line-height:12px;',
'	color:#404040;',
'	margin:0 8px;',
'	padding:0;',
'	text-align:center;',
'}',
'a.blockLink,a.blockLink:hover{',
'	text-decoration:none',
'}',
'a.blockLink:hover div.featuredBlock{',
'	border:1px solid #b1bbcb',
'}',
'a.blockLink:hover div.featuredBlock div.featuredIcon{',
'	background: none #e5effb;',
'	-webkit-box-shadow: 0 0 10px rgba(50,117,199,0.25);',
'	-moz-box-shadow: 0 0 10px rgba(50,117,199,0.25);',
'	box-shadow: 0 0 10px rgba(50,117,199,0.25);',
'}',
'.regionDivider {',
'	border-top: 2px solid #F0F0F0 !important;',
'	padding-top: 8px;;',
'}'))
,p_step_template=>wwv_flow_api.id(3702261336968415439)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'HILARY'
,p_last_upd_yyyymmddhh24miss=>'20210309053857'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1870945129411328467)
,p_plug_name=>'Chart (Local Data)'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(3702276865524415473)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>'select * from eba_restdemo_sample_emp'
);
wwv_flow_api.create_jet_chart(
 p_id=>wwv_flow_api.id(1870945133016328468)
,p_region_id=>wwv_flow_api.id(1870945129411328467)
,p_chart_type=>'combo'
,p_animation_on_display=>'none'
,p_animation_on_data_change=>'none'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'none'
,p_hover_behavior=>'none'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
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
,p_legend_rendered=>'on'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(1870945314384328469)
,p_chart_id=>wwv_flow_api.id(1870945133016328468)
,p_seq=>10
,p_name=>'Salary By Department'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select nvl(to_char(deptno), ''None'') as deptno, sum(sal) as sal from emp',
'group by deptno'))
,p_series_type=>'bar'
,p_items_value_column_name=>'SAL'
,p_items_label_column_name=>'DEPTNO'
,p_line_style=>'solid'
,p_line_type=>'auto'
,p_marker_rendered=>'auto'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(1870945546193328472)
,p_chart_id=>wwv_flow_api.id(1870945133016328468)
,p_seq=>20
,p_name=>'Commission By Department'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select nvl(to_char(deptno), ''None'') as deptno, sum(comm) as comm from emp',
'group by deptno'))
,p_series_type=>'bar'
,p_items_value_column_name=>'COMM'
,p_items_label_column_name=>'DEPTNO'
,p_line_style=>'solid'
,p_line_type=>'auto'
,p_marker_rendered=>'auto'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(1870945674670328473)
,p_chart_id=>wwv_flow_api.id(1870945133016328468)
,p_seq=>30
,p_name=>'Employee Count'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select nvl(to_char(deptno), ''None'') as deptno, count(empno) as emp_cnt from emp',
'group by deptno'))
,p_series_type=>'bar'
,p_items_value_column_name=>'EMP_CNT'
,p_items_label_column_name=>'DEPTNO'
,p_line_style=>'solid'
,p_line_type=>'auto'
,p_marker_rendered=>'auto'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'on'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(1870945362049328470)
,p_chart_id=>wwv_flow_api.id(1870945133016328468)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(1870945455365328471)
,p_chart_id=>wwv_flow_api.id(1870945133016328468)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(1870945791859328474)
,p_chart_id=>wwv_flow_api.id(1870945133016328468)
,p_axis=>'y2'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_split_dual_y=>'auto'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1870945905622328475)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(3702279440792415478)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(3246092891286859286)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(3702300309632415563)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(8590408688287937724)
,p_plug_name=>'About this page'
,p_region_template_options=>'margin-bottom-lg'
,p_plug_template=>wwv_flow_api.id(3702266226375415449)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>When doing extensive reporting and analysis on data from REST services, it often makes sense to download the data to a local table beforehand.</p>',
'<ul>',
'<li>The local application becomes independent from REST service availibility</li>',
'<li>Savings on network bandwidth or REST Call Rate consumption: A REST request is not being performed for each page visit any more</li>',
'<li>Some REST services even don''t allow to fetch all their data with one request - clients must fetch the data on a page by page basis.</li>',
'</ul>',
'<p>This page shows how to first download data from the REST service to a local table - the PL/SQL loading code detects when there is a "next" page and fetches all pages until the end of response has been reached. Then a tabular report and a JET chart'
||' visualize data from the local tables..</p>',
''))
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
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(8779438814312759945)
,p_plug_name=>'Footer'
,p_plug_display_sequence=>60
,p_plug_display_point=>'BODY'
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.SAMPLEAPPFOOTER'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(15796542656873269583)
,p_plug_name=>'Data from RESTful Service'
,p_region_name=>'report'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(3702275319155415466)
,p_plug_display_sequence=>40
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>'select * from eba_restdemo_sample_emp'
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(15796542741444269583)
,p_name=>'APEX Collections View'
,p_max_row_count=>'10000'
,p_max_row_count_message=>'This query returns more than 10,000 rows, please filter your data to ensure complete results.'
,p_no_data_found_message=>'No local data found. Click the <b>Load Data</b> button.'
,p_allow_save_rpt_public=>'Y'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_show_calendar=>'N'
,p_download_formats=>'CSV'
,p_owner=>'JOEL'
,p_internal_uid=>15675635511276041352
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1936424048081265506)
,p_db_column_name=>'RN'
,p_display_order=>10
,p_column_identifier=>'Z'
,p_column_label=>'Row Number'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1936421429204265499)
,p_db_column_name=>'EMPNO'
,p_display_order=>20
,p_column_identifier=>'S'
,p_column_label=>'Empno'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1936421730818265504)
,p_db_column_name=>'ENAME'
,p_display_order=>30
,p_column_identifier=>'T'
,p_column_label=>'Ename'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1936422107112265504)
,p_db_column_name=>'JOB'
,p_display_order=>40
,p_column_identifier=>'U'
,p_column_label=>'Job'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1936422468442265504)
,p_db_column_name=>'MGR'
,p_display_order=>50
,p_column_identifier=>'V'
,p_column_label=>'Mgr'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1936422878071265505)
,p_db_column_name=>'HIREDATE'
,p_display_order=>60
,p_column_identifier=>'W'
,p_column_label=>'Hiredate'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1936423279013265505)
,p_db_column_name=>'SAL'
,p_display_order=>70
,p_column_identifier=>'X'
,p_column_label=>'Sal'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1936423712273265505)
,p_db_column_name=>'DEPTNO'
,p_display_order=>80
,p_column_identifier=>'Y'
,p_column_label=>'Deptno'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(15796544257296270091)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'18155176'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>100000
,p_report_columns=>':EMPNO:ENAME:JOB:MGR:HIREDATE:SAL:DEPTNO:RN'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(1870945994631328476)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(1870945905622328475)
,p_button_name=>'PURGE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(3702300197334415561)
,p_button_image_alt=>'Purge Local Data'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_condition=>'select * from eba_restdemo_sample_emp'
,p_button_condition_type=>'EXISTS'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(1870944712462328463)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(1870945905622328475)
,p_button_name=>'DOWNLOAD'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(3702299722035415558)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Load Data'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_condition=>'select * from eba_restdemo_sample_emp'
,p_button_condition_type=>'NOT_EXISTS'
,p_icon_css_classes=>'fa-cloud-download'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(1870944767948328464)
,p_branch_action=>'f?p=&APP_ID.:&APP_PAGE_ID.:&SESSION.::&DEBUG.:RP::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1870944913179328465)
,p_name=>'P11_ROWS_LOADED'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(15796542656873269583)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1870944984045328466)
,p_name=>'P11_PAGES_FETCHED'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(15796542656873269583)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(1870944615021328462)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Load REST data into local table'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    C_MAX_ROWS     number           := null;',
'',
'    l_response     clob;',
'    l_url          varchar2(32767);',
'    l_finish       boolean          := false;',
'    l_rows_loaded  number           := 0;',
'    l_pages_fetched number          := 0;',
'begin',
'    l_url := :SAMPLE_ENDPOINT_URL;',
'    ',
'    delete from "EBA_RESTDEMO_SAMPLE_EMP";',
'    ',
'    while not l_finish loop',
'        l_response := apex_web_service.make_rest_request(',
'            p_url              => l_url,',
'            p_http_method      => ''GET'');',
'',
'        insert into "EBA_RESTDEMO_SAMPLE_EMP" (',
'            select ',
'                x.EMPNO, ',
'                x.ENAME, ',
'                x.JOB, ',
'                x.MGR, ',
'                to_date( x.HIREDATE, ''YYYY-MM-DD"T"HH24:MI:SS"Z"'' ) as HIREDATE, ',
'                x.SAL, ',
'                x.DEPTNO, ',
'                x.RN',
'            from xmltable(',
'                ''/json/items/row''',
'                passing apex_json.to_xmltype( l_response )',
'                columns',
'                    EMPNO      NUMBER          path ''empno'',',
'                    ENAME      VARCHAR2(4000)  path ''ename'',',
'                    JOB        VARCHAR2(4000)  path ''job'',',
'                    MGR        NUMBER          path ''mgr'',',
'                    HIREDATE   VARCHAR2(4000)  path ''hiredate'',',
'                    SAL        NUMBER          path ''sal'',',
'                    DEPTNO     NUMBER          path ''deptno'',',
'                    RN         NUMBER          path ''rn''',
'            ) x',
'        );',
'',
'        l_rows_loaded := l_rows_loaded + nvl( sql%rowcount, 0 );',
'        l_pages_fetched := l_pages_fetched + 1;',
'        if l_rows_loaded >= C_MAX_ROWS then ',
'            l_finish := true;',
'        end if;',
'        ',
'        select',
'            x.next_page into l_url ',
'        from xmltable( ',
'            ''/json''',
'            passing apex_json.to_xmltype( l_response )',
'            columns',
'                next_page varchar2(500) path ''next/_ref''',
'        ) x;',
'        ',
'        if l_url is null then l_finish := true; end if;',
'    end loop;',
'    :P11_PAGES_FETCHED := l_pages_fetched;',
'    :P11_ROWS_LOADED := l_rows_loaded;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(1870944712462328463)
,p_process_success_message=>'&P11_ROWS_LOADED. row(s) fetched in &P11_PAGES_FETCHED. page(s).'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(1870946062307328477)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Purge Local Data'
,p_process_sql_clob=>'delete from eba_restdemo_sample_emp;'
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(1870945994631328476)
);
wwv_flow_api.component_end;
end;
/
