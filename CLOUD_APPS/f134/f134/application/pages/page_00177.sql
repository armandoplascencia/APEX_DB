prompt --application/pages/page_00177
begin
--   Manifest
--     PAGE: 00177
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
 p_id=>177
,p_user_interface_id=>wwv_flow_api.id(5783577205373975152)
,p_name=>'&APPLICATION_TITLE.: Projects by Resource'
,p_step_title=>'&APPLICATION_TITLE.: Projects by Resource'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(5956243887448595899)
,p_step_template=>wwv_flow_api.id(6781074610982890727)
,p_page_template_options=>'#DEFAULT#'
,p_required_patch=>wwv_flow_api.id(12130127162343753660)
,p_protection_level=>'C'
,p_help_text=>'This bar graph displays the number of projects using the displayed resource. Use the project status check boxes at the bottom of the page to change the bar graph results. Hover over a bar to see more details. Click the <strong>Report</strong> button '
||'to see the data in a report format. Click the <strong>Reset</strong> button to reset the filters and bar graph.'
,p_last_upd_yyyymmddhh24miss=>'20190906062105'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(656419380896038169)
,p_plug_name=>'Project Resources'
,p_region_name=>'Resources'
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton:t-Region--hideHeader:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(6781115417665890803)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select r.resource_name,',
'    rt.resource_type,',
'    (   select count(distinct(rf.project_id))',
'        from eba_proj_resources rf,',
'            eba_proj_status p',
'        where rf.resource_name = r.resource_name',
'            and rf.resource_type_id = rt.id',
'            and rf.project_id = p.id',
'            and (nvl(:P177_STATUS,''x'') = ''x'' or instr(:P177_STATUS,p.project_status) > 0)',
'        ) value,',
'    r.id resource_id',
'from eba_proj_resources r,',
'    eba_proj_resource_types rt',
'order by 1, 2, 3 desc'))
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_ajax_items_to_submit=>'P177_STATUS'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_jet_chart(
 p_id=>wwv_flow_api.id(656419461630038170)
,p_region_id=>wwv_flow_api.id(656419380896038169)
,p_chart_type=>'bar'
,p_animation_on_display=>'none'
,p_animation_on_data_change=>'none'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'none'
,p_hover_behavior=>'none'
,p_stack=>'on'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>false
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'on'
,p_legend_position=>'bottom'
,p_overview_rendered=>'off'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(656419554924038171)
,p_chart_id=>wwv_flow_api.id(656419461630038170)
,p_seq=>10
,p_name=>'New'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select r.resource_name,',
'    rt.resource_type,',
'    (   select count(distinct(rf.project_id))',
'        from eba_proj_resources rf,',
'            eba_proj_status p',
'        where rf.resource_name = r.resource_name',
'            and rf.resource_type_id = rt.id',
'            and rf.project_id = p.id',
'            and (nvl(:P177_STATUS,''x'') = ''x'' or instr(:P177_STATUS,p.project_status) > 0)',
'        ) value,',
'    r.id resource_id',
'from eba_proj_resources r,',
'    eba_proj_resource_types rt',
'order by 1, 2, 3 desc'))
,p_ajax_items_to_submit=>'P177_STATUS'
,p_series_name_column_name=>'RESOURCE_NAME'
,p_items_value_column_name=>'VALUE'
,p_items_label_column_name=>'RESOURCE_TYPE'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
,p_link_target=>'f?p=&APP_ID.:158:&SESSION.::&DEBUG.:RP,RIR,158:IREQ_RESOURCE_NAME:&RESOURCE_NAME.'
,p_link_target_type=>'REDIRECT_PAGE'
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(656419690549038172)
,p_chart_id=>wwv_flow_api.id(656419461630038170)
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
 p_id=>wwv_flow_api.id(656419769062038173)
,p_chart_id=>wwv_flow_api.id(656419461630038170)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_title=>'Projects'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_step=>1
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
 p_id=>wwv_flow_api.id(12237260397497824372)
,p_plug_name=>'Filters'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody:t-Form--labelsAbove:t-Region--hideHeader'
,p_plug_template=>wwv_flow_api.id(6781115417665890803)
,p_plug_display_sequence=>40
,p_plug_display_point=>'BODY'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(12237261142743824376)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--showBreadcrumb:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_plug_template=>wwv_flow_api.id(6781117976757890807)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(8972392840601050532)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(6781135716305890867)
,p_plug_display_condition_type=>'NEVER'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(15440631949270744474)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(6212459901559585507)
,p_button_name=>'Report'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(6781135529450890864)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Report'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:158:&SESSION.::&DEBUG.:RP::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(12237262635533824384)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(6212459901559585507)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(6781134954745890861)
,p_button_image_alt=>'Reset'
,p_button_position=>'REGION_TEMPLATE_PREVIOUS'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&SESSION.::&DEBUG.:RP,&APP_PAGE_ID.::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12237260741255824373)
,p_name=>'P177_STATUS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(12237260397497824372)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare r varchar2(400) := null; ',
'begin',
'for c1 in (select ID from EBA_PROJ_STATUS_CODES where is_active_yn = ''Y''',
'order by display_sequence) loop',
'r := r||c1.id||'':'';',
'end loop;',
'return r;',
'exception when others then return ''0'';',
'end;'))
,p_item_default_type=>'FUNCTION_BODY'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Project status codes to include on report'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare r varchar2(400) := null; ',
'begin',
'for c1 in (select ID from EBA_PROJ_STATUS_CODES where is_active_yn = ''Y''',
'order by display_sequence) loop',
'r := r||c1.id||'':'';',
'end loop;',
'return r;',
'exception when others then return ''0'';',
'end;'))
,p_source_type=>'FUNCTION_BODY'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'STATUS CODES WITH COUNTS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select display_value, return_value',
'from',
'(',
'select STATUS_short_desc || '' (''||count(*)||'')'' display_value, ',
'       sc.ID return_value ,',
'       sc.display_sequence',
'from EBA_PROJ_STATUS_CODES sc, eba_proj_status s',
'where is_active_yn = ''Y'' and ',
'      status_short_desc is not null and',
'      s.project_status = sc.id',
'group by sc.STATUS_short_desc, sc.id, sc. display_sequence',
'order by 3,1',
') x'))
,p_field_template=>wwv_flow_api.id(6781134673650890856)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'3'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(12237263138655824385)
,p_computation_sequence=>10
,p_computation_item=>'LAST_VIEW'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'61'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(12237273959997824391)
,p_name=>'Refresh Chart'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P177_STATUS'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(12237273610748824389)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'clear cache for this page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_process_when_button_id=>wwv_flow_api.id(12237262635533824384)
);
wwv_flow_api.component_end;
end;
/
