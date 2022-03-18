prompt --application/pages/page_00088
begin
--   Manifest
--     PAGE: 00088
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
 p_id=>88
,p_user_interface_id=>wwv_flow_api.id(5783577205373975152)
,p_name=>'&APPLICATION_TITLE.: Project Updates Dashboard'
,p_step_title=>'&APPLICATION_TITLE.: Project Updates Dashboard'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(5956244094027597768)
,p_step_template=>wwv_flow_api.id(6781074610982890727)
,p_protection_level=>'C'
,p_help_text=>'This page shows various bar charts relating project updates data in various categories.'
,p_last_upd_yyyymmddhh24miss=>'20190905113633'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1519087595007431592)
,p_plug_name=>'Updates by Month'
,p_region_template_options=>'#DEFAULT#:t-Region--hiddenOverflow'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(6781115417665890803)
,p_plug_display_sequence=>60
,p_plug_display_point=>'BODY'
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_jet_chart(
 p_id=>wwv_flow_api.id(1519087697462431593)
,p_region_id=>wwv_flow_api.id(1519087595007431592)
,p_chart_type=>'bar'
,p_animation_on_display=>'none'
,p_animation_on_data_change=>'none'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'none'
,p_stack=>'off'
,p_stack_label=>'off'
,p_spark_chart=>'N'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>false
,p_show_group_name=>false
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
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(1519087721179431594)
,p_chart_id=>wwv_flow_api.id(1519087697462431593)
,p_seq=>10
,p_name=>'Update by Month'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select to_char(u.created,''YYYY Month'') the_month,',
'       count(*) update_count,',
'       to_char(u.created,''YYYY MM'') the_sort,',
'       null series',
'from eba_proj_status_updates u',
'group by to_char(u.created,''YYYY Month'') , to_char(u.created,''YYYY MM'')',
'order by 3 desc'))
,p_items_value_column_name=>'UPDATE_COUNT'
,p_items_label_column_name=>'THE_MONTH'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(1519087845639431595)
,p_chart_id=>wwv_flow_api.id(1519087697462431593)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'off'
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
 p_id=>wwv_flow_api.id(1519087967653431596)
,p_chart_id=>wwv_flow_api.id(1519087697462431593)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
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
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(6195379197092366934)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(6781117976757890807)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(8972392840601050532)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(6781135716305890867)
,p_plug_display_condition_type=>'NEVER'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(6195382084333393804)
,p_plug_name=>'Updates by Contributor (last 90 days)'
,p_region_template_options=>'#DEFAULT#:i-h480:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(6781115417665890803)
,p_plug_display_sequence=>30
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select lower(u.update_owner) contributor,',
'       count(*) update_count',
'from eba_proj_status_updates u',
'where u.created > systimestamp - 90',
'group by lower(u.update_owner)',
'order by 2 desc',
' '))
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.HTML5_BAR_CHART'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'INITIALS'
,p_attribute_02=>'CONTRIBUTOR'
,p_attribute_04=>'UPDATE_COUNT'
,p_attribute_11=>'VALUE'
,p_attribute_14=>'50'
,p_attribute_15=>'TEXT'
,p_attribute_16=>'ABSOLUTE'
,p_attribute_17=>'MODERN'
,p_attribute_18=>'ABOVE'
,p_attribute_20=>'No data found.'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(6195387686691507154)
,p_plug_name=>'Updates by Project  (last 90 days)'
,p_region_template_options=>'#DEFAULT#:i-h480:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(6781115417665890803)
,p_plug_display_sequence=>40
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select p.project,',
'       count(*) update_count,',
'       p.id',
'from eba_proj_status_updates u,',
'     eba_proj_status p',
'where u.created > systimestamp - 90 and ',
'      u.PROJECT_ID = p.id',
'group by p.project, p.id',
'order by 2 desc '))
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.HTML5_BAR_CHART'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'INITIALS'
,p_attribute_02=>'PROJECT'
,p_attribute_03=>'f?p=&APP_ID.:200:&APP_SESSION.:::200:P200_ID:&ID.'
,p_attribute_04=>'UPDATE_COUNT'
,p_attribute_11=>'VALUE'
,p_attribute_14=>'50'
,p_attribute_15=>'TEXT'
,p_attribute_16=>'ABSOLUTE'
,p_attribute_17=>'MODERN'
,p_attribute_18=>'ABOVE'
,p_attribute_20=>'No data found.'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(20728279460573320255)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(6212459901559585507)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(6781135529450890864)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:&LAST_VIEW.:&SESSION.::&DEBUG.:RP::'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(13414303054829285730)
,p_computation_sequence=>10
,p_computation_item=>'PROJECT_CAME_FROM'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'&APP_PAGE_ID.'
);
wwv_flow_api.component_end;
end;
/
