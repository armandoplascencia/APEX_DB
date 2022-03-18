prompt --application/pages/page_00062
begin
--   Manifest
--     PAGE: 00062
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
 p_id=>62
,p_user_interface_id=>wwv_flow_api.id(5783577205373975152)
,p_name=>'&APPLICATION_TITLE.: Projects by &CAT_TITLE.'
,p_step_title=>'&APPLICATION_TITLE.: Projects by &CAT_TITLE.'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(5956243887448595899)
,p_html_page_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<style type="text/css" media="all">',
'div.body_inner div.region div.content_block{height:200px;overflow:scroll;overflow-y:scroll;overflow-x:hidden;}',
'.tbl-main .rounded-corner-region .rc-body-r{height:170px !important;}',
'',
'#MILESTONES .rc-body-r{height:500px !important;}',
'#TO .rc-body-r{height:280px !important;}',
'',
'</style>'))
,p_step_template=>wwv_flow_api.id(6781074610982890727)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'This page displays project attachments by status and category. Check or uncheck status check boxes in the lower region to change the results in the upper region.'
,p_last_upd_yyyymmddhh24miss=>'20190905100806'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1519086973906431586)
,p_plug_name=>'Report &CAT_TITLE_PL.'
,p_region_template_options=>'#DEFAULT#:i-h480:t-Region--hideHeader:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(6781115417665890803)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_jet_chart(
 p_id=>wwv_flow_api.id(1519087089401431587)
,p_region_id=>wwv_flow_api.id(1519086973906431586)
,p_chart_type=>'bar'
,p_animation_on_display=>'none'
,p_animation_on_data_change=>'none'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'withRescale'
,p_hover_behavior=>'none'
,p_stack=>'on'
,p_stack_label=>'off'
,p_spark_chart=>'N'
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
,p_legend_position=>'bottom'
,p_overview_rendered=>'off'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(1519087112593431588)
,p_chart_id=>wwv_flow_api.id(1519087089401431587)
,p_seq=>10
,p_name=>'Report &CAT_TITLE_PL.'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select category, status, value, category || '' ('' || status || '') '' || value tooltip from',
'(select cat.CATEGORY, c.STATUS_SHORT_DESC status, ',
'       (select count(*) ',
'        from eba_proj_status x , EBA_PROJ_STATUS_FILES f',
'        where f.project_id = x.id and',
'              x.project_status = c.id and ',
'              x.cat_id = cat.id) value, ',
'       cat.id cat_id, ',
'       c.id status_id',
'  from ',
'       EBA_PROJ_STATUS_CODES c, ',
'       EBA_PROJ_STATUS_CATS cat',
'where exists (select 1 from eba_proj_status y where y.cat_id = cat.id) and',
'      (nvl(:P62_STATUS,''x'') = ''x'' or instr(:P62_STATUS,c.id) > 0) ',
'order by 1, 2, 3 desc)'))
,p_series_name_column_name=>'STATUS'
,p_items_value_column_name=>'VALUE'
,p_items_label_column_name=>'CATEGORY'
,p_items_short_desc_column_name=>'TOOLTIP'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
,p_link_target=>'f?p=&APP_ID.:28:&SESSION.::&DEBUG.:28:P28_CATEGORY,P28_STATUS:&CAT_ID.,&STATUS_ID.'
,p_link_target_type=>'REDIRECT_PAGE'
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(1519087286114431589)
,p_chart_id=>wwv_flow_api.id(1519087089401431587)
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
 p_id=>wwv_flow_api.id(1519087328355431590)
,p_chart_id=>wwv_flow_api.id(1519087089401431587)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_title=>'Count of Attachments'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'none'
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
 p_id=>wwv_flow_api.id(6835722717544154004)
,p_plug_name=>'Filters'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody:t-Form--labelsAbove:t-Region--hideHeader'
,p_plug_template=>wwv_flow_api.id(6781115417665890803)
,p_plug_display_sequence=>50
,p_plug_display_point=>'BODY'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(6835723088268154006)
,p_name=>'Legend'
,p_display_sequence=>40
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    c.sprite_url,',
'    c.sprite_position_x,',
'    c.sprite_position_y,',
'    s.Status_Short_Desc',
'from',
'    EBA_PROJ_STATUS_CODES s,',
'    eba_proj_color_codes c',
'where',
'    s.color_code_id = c.id',
'and',
'    s.is_active_yn = ''Y''',
'order by',
'    s.display_sequence'))
,p_display_condition_type=>'NEVER'
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(6781122235480890822)
,p_query_num_rows=>100
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_break_cols=>'0'
,p_query_num_rows_type=>'0'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6835723352554154016)
,p_query_column_id=>1
,p_column_alias=>'SPRITE_URL'
,p_column_display_sequence=>1
,p_column_heading=>'Sprite Url'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6835723428604154016)
,p_query_column_id=>2
,p_column_alias=>'SPRITE_POSITION_X'
,p_column_display_sequence=>2
,p_column_heading=>'Sprite Position X'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6835723501319154017)
,p_query_column_id=>3
,p_column_alias=>'SPRITE_POSITION_Y'
,p_column_display_sequence=>3
,p_column_heading=>'Sprite Position Y'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6835723674172154017)
,p_query_column_id=>4
,p_column_alias=>'STATUS_SHORT_DESC'
,p_column_display_sequence=>4
,p_column_heading=>'Status Short Desc'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(6835723733851154017)
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
 p_id=>wwv_flow_api.id(6835724106360154019)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(6212459901559585507)
,p_button_name=>'SEARCH'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(6781135529450890864)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Search'
,p_button_position=>'REGION_TEMPLATE_CREATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(6835723948628154019)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(6212459901559585507)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(6781134954745890861)
,p_button_image_alt=>'Reset'
,p_button_position=>'REGION_TEMPLATE_PREVIOUS'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&SESSION.::&DEBUG.:RP,&APP_PAGE_ID.,RIR::'
,p_icon_css_classes=>'fa-undo-alt'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6835722926474154005)
,p_name=>'P62_STATUS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(6835722717544154004)
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
,p_prompt=>'Status codes to include on report'
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
 p_id=>wwv_flow_api.id(6835724660933154022)
,p_computation_sequence=>10
,p_computation_item=>'LAST_VIEW'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'61'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(6835724915297154032)
,p_name=>'Refresh Chart'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P62_STATUS'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(6835725477028154043)
,p_event_id=>wwv_flow_api.id(6835724915297154032)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P62_STATUS'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1519087470785431591)
,p_event_id=>wwv_flow_api.id(6835724915297154032)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(1519086973906431586)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(6835724712257154025)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'clear cache for this page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_process_when_button_id=>wwv_flow_api.id(6835723948628154019)
);
wwv_flow_api.component_end;
end;
/
