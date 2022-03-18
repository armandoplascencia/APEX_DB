prompt --application/pages/page_00051
begin
--   Manifest
--     PAGE: 00051
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
 p_id=>51
,p_user_interface_id=>wwv_flow_api.id(5783577205373975152)
,p_name=>'Projects Dashboard'
,p_alias=>'DASHBD'
,p_step_title=>'Projects Dashboard'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(5956243887448595899)
,p_html_page_header=>'apex.theme42.sticky("#t_Body_content .t-Region-header");'
,p_inline_css=>'.a-BarChart-filled { min-height: 22px; !important}'
,p_protection_level=>'C'
,p_help_text=>'This page displays key metrics on this application''s projects. Click a link in any graph, chart, or report to drill-down to the data behind the result you clicked.'
,p_last_upd_yyyymmddhh24miss=>'20190905091125'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1519085249276431569)
,p_plug_name=>'Projects by &CAT_TITLE.'
,p_region_css_classes=>'i-h380'
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(6781115417665890803)
,p_plug_display_sequence=>70
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_required_patch=>wwv_flow_api.id(11916011485631590505)
);
wwv_flow_api.create_jet_chart(
 p_id=>wwv_flow_api.id(1519085338656431570)
,p_region_id=>wwv_flow_api.id(1519085249276431569)
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
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(1519085432819431571)
,p_chart_id=>wwv_flow_api.id(1519085338656431570)
,p_seq=>10
,p_name=>'&CAT_TITLE.'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select c.id,',
'       c.category,',
'       count(*) as c,',
'       c.category || '' - '' || count (*) tooltip',
'  from eba_proj_status p,',
'       EBA_PROJ_STATUS_CATS c,',
'       EBA_PROJ_STATUS_CODES s',
' where c.id = p.cat_id',
'   and p.PROJECT_STATUS(+) = s.id',
' group by c.id, c.category',
' order by 3 desc '))
,p_items_value_column_name=>'C'
,p_group_short_desc_column_name=>'CATEGORY'
,p_items_label_column_name=>'CATEGORY'
,p_items_short_desc_column_name=>'TOOLTIP'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
,p_link_target=>'f?p=&APP_ID.:64:&SESSION.::&DEBUG.:RP:P64_CATEGORY:&ID.'
,p_link_target_type=>'REDIRECT_PAGE'
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(1519085600097431572)
,p_chart_id=>wwv_flow_api.id(1519085338656431570)
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
 p_id=>wwv_flow_api.id(1519085636366431573)
,p_chart_id=>wwv_flow_api.id(1519085338656431570)
,p_axis=>'y'
,p_is_rendered=>'on'
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
 p_id=>wwv_flow_api.id(3464852615595033869)
,p_plug_name=>'Hidden Items'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(6781104626075890777)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(5362367559108574826)
,p_name=>'Recently Edited Projects'
,p_template=>wwv_flow_api.id(6781115417665890803)
,p_display_sequence=>30
,p_region_css_classes=>'i-h360 i-mxh360'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:js-showMaximizeButton:t-Region--scrollBody'
,p_component_template_options=>'t-MediaList--showDesc:t-MediaList--showBadges:t-MediaList--stack'
,p_new_grid_row=>false
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'    p.id,',
'    p.project as list_title,',
'    '' '' link_attr,',
'    '' '' link_class,',
'    '' '' list_badge,',
'    '' '' list_class,',
'    '' '' list_text,',
'    --p.project project_tt,',
'    nvl(p.updated,p.created) last_dated,',
'    --apex_util.get_since(nvl(p.updated,p.created)) last_dated,',
'    --''fa-archive'' the_icon,',
'    --initcap(cc.color_name) color_name,',
'    s.status_short_desc,',
' /*',
'    (   select listagg(lower(u.username),'', '') within group',
'            (order by nvl(rf.acl_status_level,r.default_acl_status_level) desc, lower(u.username))',
'        from eba_proj_user_ref rf,',
'            eba_proj_status_users u,',
'            eba_proj_roles r',
'        where rf.project_id = p.id',
'            and rf.user_id = u.id',
'            and rf.role_id = r.id',
'            and eba_proj_fw.is_edit_authorized( u.username, rf.project_id ) = ''Y'' ) as project_owners,',
' */',
'    --p.tags,',
'    apex_util.prepare_url(''f?p=''||:APP_ID||'':200:''||:APP_SESSION||'':::46:P200_ID:''||p.id) link',
'from eba_proj_status p,',
'    eba_proj_status_codes s,',
'    eba_proj_color_codes cc',
'where p.project_status = s.id(+)',
'    and cc.id = s.color_code_id',
'    and p.project is not null',
'order by nvl(p.updated,p.created) desc'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(867912762724609027)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'F'
,p_plug_query_strip_html=>'N'
,p_required_patch=>wwv_flow_api.id(11916076350652627496)
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(861203712727776959)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>1
,p_column_heading=>'Id'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(861204769442776969)
,p_query_column_id=>2
,p_column_alias=>'LIST_TITLE'
,p_column_display_sequence=>4
,p_column_heading=>'List title'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(861204873946776970)
,p_query_column_id=>3
,p_column_alias=>'LINK_ATTR'
,p_column_display_sequence=>5
,p_column_heading=>'Link attr'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(861204999547776971)
,p_query_column_id=>4
,p_column_alias=>'LINK_CLASS'
,p_column_display_sequence=>6
,p_column_heading=>'Link class'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(861205066949776972)
,p_query_column_id=>5
,p_column_alias=>'LIST_BADGE'
,p_column_display_sequence=>7
,p_column_heading=>'List badge'
,p_use_as_row_header=>'N'
,p_column_html_expression=>'#LAST_DATED#'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(861205184152776973)
,p_query_column_id=>6
,p_column_alias=>'LIST_CLASS'
,p_column_display_sequence=>8
,p_column_heading=>'List class'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(861205295513776974)
,p_query_column_id=>7
,p_column_alias=>'LIST_TEXT'
,p_column_display_sequence=>9
,p_column_heading=>'List text'
,p_use_as_row_header=>'N'
,p_column_html_expression=>'#STATUS_SHORT_DESC#'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(861204076346776962)
,p_query_column_id=>8
,p_column_alias=>'LAST_DATED'
,p_column_display_sequence=>2
,p_column_heading=>'Last dated'
,p_use_as_row_header=>'N'
,p_column_format=>'SINCE'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(861204303438776965)
,p_query_column_id=>9
,p_column_alias=>'STATUS_SHORT_DESC'
,p_column_display_sequence=>3
,p_column_heading=>'Status short desc'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(861205391924776975)
,p_query_column_id=>10
,p_column_alias=>'LINK'
,p_column_display_sequence=>10
,p_column_heading=>'Link'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(5362373430904592998)
,p_plug_name=>'Projects'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody:t-Form--noPadding'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(6781115417665890803)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select label, value, url',
'from (',
'select ',
'   ''Active'' label, count(*) value,',
'   ''f?p=''||:APP_ID||'':64:''||:APP_SESSION||'':::64:P64_STATUS:\'' || :P51_OPEN_STATUS_IDS || ''\'' url,',
'   1 display_order',
'from eba_proj_status p,',
'     EBA_PROJ_STATUS_CODES s',
'where p.PROJECT_STATUS = s.id(+) ',
'      and nvl(IS_CLOSED_STATUS,''N'') != ''Y''',
'union all',
'select ',
'   ''Inactive'' label, count(*) value,',
'   ''f?p=''||:APP_ID||'':64:''||:APP_SESSION||'':::64:P64_STATUS:\'' || :P51_INACTIVE_STATUSES || ''\'' url,',
'   2 display_order',
'from eba_proj_status p,',
'     EBA_PROJ_STATUS_CODES s',
'where p.PROJECT_STATUS = s.id(+) ',
'      and nvl(IS_CLOSED_STATUS,''N'') != ''N''',
'union all',
'select ''with Open Milestones'' label, ',
'    count(*) value,',
'    ''f?p=''||:APP_ID||'':63:''||:APP_SESSION||''::NO:RP,CIR,63:IR_MILESTONE_STATUS:Open'' url,',
'    3 display_order',
'from eba_proj_status p,',
'     eba_proj_status_ms m',
'where p.id = m.project_id',
'      and m.milestone_status = ''Open''',
'union all',
'/*',
'    select ',
'  ''with Open Action Items'' label, ',
'  count(p.*) value,',
'  ''f?p=''||:APP_ID||'':1:''||:APP_SESSION||'':::1,RIR:IRGT_OPEN_ACTION_ITEMS:0:'' url,',
'  4 display_order',
'from eba_proj_status p,',
'     EBA_PROJ_STATUS_CODES s',
'where eba_proj_stat_ui.is_project_open(p.id) = 1',
'      and p.PROJECT_STATUS = s.id(+) ',
'      --and nvl(s.IS_CLOSED_STATUS,''N'') != ''Y''',
'*/',
'    select ''with Open Action Items'' label, ',
'    count(*) value,',
'    ''f?p=''||:APP_ID||'':1:''||:APP_SESSION||'':::1,RIR:IRGT_OPEN_ACTION_ITEMS:0:'' url,',
'    4 display_order',
'from eba_proj_status p',
'where p.id in (select distinct project_id from eba_proj_status_ais where action_status = ''Open'')',
'union all',
'select ',
'   ''with Past Due Milestones'' label, ',
'   count(*) value,',
'  ''f?p=''||:APP_ID||'':1:''||:APP_SESSION||'':::1,RIR:IRGT_PAST_DUE_MILESTONES:0:'' url,',
'  5 display_order',
'from eba_proj_status ps,',
'     EBA_PROJ_STATUS_CODES s',
'where exists ( ',
'        select null ',
'        from eba_proj_status_ms ms',
'        where ms.milestone_date < trunc(current_date)',
'           and ms.milestone_status = ''Open''',
'           and ms.project_id = ps.id )',
'     and ps.PROJECT_STATUS = s.id(+) ',
'     --and nvl(s.IS_CLOSED_STATUS,''N'') != ''Y''',
'union all',
'select ''with Past Due Action Items'' label, count(*) value,',
'  ''f?p=''||:APP_ID||'':1:''||:APP_SESSION||'':::1,RIR:IRGT_PAST_DUE_ACTION_ITEMS:0'' url,',
'  6 display_order',
'from eba_proj_status ps,',
'     EBA_PROJ_STATUS_CODES s',
'where exists ( ',
'      select null from eba_proj_status_ais psa',
'      where psa.due_date < trunc(current_date)',
'           and psa.action_status = ''Open''',
'           and psa.project_id = ps.id)',
'     and ps.PROJECT_STATUS = s.id(+) ',
'     --and nvl(s.IS_CLOSED_STATUS,''N'') != ''Y''',
'union all',
'select ''I''''m Following'' label,',
'      count(*) value,',
'      ''f?p=''||:APP_ID||'':64:''||:APP_SESSION||''::::P64_FOLLOWING:1'' url,',
'      7 display_order',
'from EBA_PROJ_STATUS p,',
'    EBA_PROJ_STATUS_CODES s,',
'    eba_proj_status_favorites f',
'where p.PROJECT_STATUS = s.id(+)',
'    and f.content_id = p.id',
'    and f.user_name = upper(:APP_USER)',
'    and f.content_type = ''PROJECT''',
'union all',
'select ',
'   ''My Active Projects'' label, count(*) value,',
'   ''f?p=''||:APP_ID||'':64:''||:APP_SESSION||''::::P64_OWNER:'' || :CURRENT_USER_ID url,',
'   8 display_order',
'from eba_proj_status p,',
'     EBA_PROJ_STATUS_CODES s',
'where p.PROJECT_STATUS = s.id(+) ',
'      and nvl(IS_CLOSED_STATUS,''N'') != ''Y''',
'      and exists (',
'          select null',
'          from eba_proj_status_users usr,',
'              eba_proj_user_ref rf',
'          where lower(usr.username) = lower(:APP_USER)',
'              and rf.user_id = usr.id',
'              and rf.project_id = p.id',
'      )',
')',
'order by display_order'))
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.BADGE_LIST'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_required_patch=>wwv_flow_api.id(11916178136620755513)
,p_attribute_01=>'LABEL'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'&URL.'
,p_attribute_05=>'4'
,p_attribute_07=>'BOX'
,p_attribute_08=>'N'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(5956362296861178820)
,p_name=>'Recently Created'
,p_region_name=>'RC'
,p_template=>wwv_flow_api.id(6781115417665890803)
,p_display_sequence=>80
,p_region_css_classes=>'scrollable-region'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:js-showMaximizeButton:i-h320:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-AVPList--rightAligned'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select project,',
'       created,',
'       id,',
'       nvl(eba_proj_fw.get_project_rowkey(p_project_id => p.id), p.row_key) as row_key',
'  from eba_proj_status p',
' where (  p.project_status not in ( select id',
'                                  from eba_proj_status_codes',
'                                  where is_closed_status = ''Y''',
'                            )',
'       ) ',
' order by 2 desc'))
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(6781123939725890825)
,p_query_num_rows=>50
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_no_data_found=>'No projects found'
,p_query_row_count_max=>50
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
,p_required_patch=>wwv_flow_api.id(11916025960406684542)
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(5956362806232185983)
,p_query_column_id=>1
,p_column_alias=>'PROJECT'
,p_column_display_sequence=>1
,p_column_heading=>'Project'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:200:&SESSION.::&DEBUG.:200:P200_ID:#ID#'
,p_column_linktext=>'#PROJECT# - #ROW_KEY#'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(5956362890034185984)
,p_query_column_id=>2
,p_column_alias=>'CREATED'
,p_column_display_sequence=>2
,p_column_heading=>'Created'
,p_use_as_row_header=>'N'
,p_column_format=>'SINCE'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(5956363010612185984)
,p_query_column_id=>3
,p_column_alias=>'ID'
,p_column_display_sequence=>3
,p_column_heading=>'Id'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(5956363102529185984)
,p_query_column_id=>4
,p_column_alias=>'ROW_KEY'
,p_column_display_sequence=>4
,p_column_heading=>'Row Key'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(6094989986169677642)
,p_name=>'Parent Projects'
,p_region_name=>'PP'
,p_template=>wwv_flow_api.id(6781115417665890803)
,p_display_sequence=>100
,p_region_css_classes=>'scrollable-region'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:js-showMaximizeButton:i-h320:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-AVPList--rightAligned'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select project||'' (''||(select count(*) from eba_proj_status x where x.id = p.parent_project_id)||'')'' project,',
'       created,',
'       id,',
'       nvl(eba_proj_fw.get_project_rowkey(p_project_id => p.id), p.row_key) as row_key',
'  from eba_proj_status p',
' where (  p.project_status not in ( select id',
'                                  from eba_proj_status_codes',
'                                  where is_closed_status = ''Y''',
'                            )',
'       ) ',
' order by 2 desc'))
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'  from apex_application_build_options',
' where application_id = :APP_ID',
'   and build_option_name = ''Allow Parent Projects''',
'   and build_option_status = ''Include'''))
,p_display_condition_type=>'EXISTS'
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(6781123939725890825)
,p_query_num_rows=>50
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_no_data_found=>'No projects found'
,p_query_row_count_max=>50
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
,p_required_patch=>wwv_flow_api.id(11916163488992657833)
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6094990191197677645)
,p_query_column_id=>1
,p_column_alias=>'PROJECT'
,p_column_display_sequence=>1
,p_column_heading=>'Project'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:200:&SESSION.::&DEBUG.:200:P200_ID:#ID#'
,p_column_linktext=>'#PROJECT# - #ROW_KEY#'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6094990285695677647)
,p_query_column_id=>2
,p_column_alias=>'CREATED'
,p_column_display_sequence=>2
,p_column_heading=>'Created'
,p_use_as_row_header=>'N'
,p_column_format=>'SINCE'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6094990411622677647)
,p_query_column_id=>3
,p_column_alias=>'ID'
,p_column_display_sequence=>3
,p_column_heading=>'Id'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6094990508522677647)
,p_query_column_id=>4
,p_column_alias=>'ROW_KEY'
,p_column_display_sequence=>4
,p_column_heading=>'Row Key'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(6212399310977317403)
,p_name=>'Least Recently Edited'
,p_region_name=>'RC'
,p_template=>wwv_flow_api.id(6781115417665890803)
,p_display_sequence=>110
,p_region_css_classes=>'scrollable-region'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:js-showMaximizeButton:i-h320:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-AVPList--rightAligned'
,p_new_grid_row=>false
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select project,',
'       nvl(updated,created) created,',
'       id,',
'       nvl(eba_proj_fw.get_project_rowkey(p_project_id => p.id), p.row_key) as row_key',
'  from eba_proj_status p',
' where (  p.project_status not in ( select id',
'                                  from eba_proj_status_codes',
'                                  where is_closed_status = ''Y''',
'                            )',
'       ) ',
'    ',
' order by 2'))
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(6781123939725890825)
,p_query_num_rows=>50
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_no_data_found=>'No projects found'
,p_query_row_count_max=>50
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
,p_required_patch=>wwv_flow_api.id(11916168027532663499)
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6212399489927317491)
,p_query_column_id=>1
,p_column_alias=>'PROJECT'
,p_column_display_sequence=>1
,p_column_heading=>'Project'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:200:&SESSION.::&DEBUG.:200:P200_ID:#ID#'
,p_column_linktext=>'#PROJECT# - #ROW_KEY#'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6212399610398317498)
,p_query_column_id=>2
,p_column_alias=>'CREATED'
,p_column_display_sequence=>2
,p_column_heading=>'Created'
,p_use_as_row_header=>'N'
,p_column_format=>'SINCE'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6212399710918317498)
,p_query_column_id=>3
,p_column_alias=>'ID'
,p_column_display_sequence=>3
,p_column_heading=>'Id'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6212399806400317499)
,p_query_column_id=>4
,p_column_alias=>'ROW_KEY'
,p_column_display_sequence=>4
,p_column_heading=>'Row Key'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(9035605322333306790)
,p_plug_name=>'&APPLICATION_TITLE.'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(6781117976757890807)
,p_plug_display_sequence=>70
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(8972392840601050532)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(6781135716305890867)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(9035618042834421082)
,p_name=>'People Resources'
,p_region_name=>'TO'
,p_template=>wwv_flow_api.id(6781115417665890803)
,p_display_sequence=>90
,p_region_css_classes=>'scrollable-region'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:js-showMaximizeButton:i-h320:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-AVPList--rightAligned'
,p_new_grid_row=>false
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'    eba_proj_fw.get_name_from_email_address(u.username) as project_owner,',
'    count(rf.project_id) c,',
'    u.id as user_id',
'from',
'    eba_proj_status_users u,',
'    eba_proj_user_ref rf,',
'    eba_proj_roles r,',
'    eba_proj_status p',
'where',
'    rf.project_id = p.id',
'and',
'    rf.user_id = u.id',
'and',
'    rf.role_id = r.id',
'and',
'    p.project_status not in ( select id',
'                                from eba_proj_status_codes',
'                               where is_closed_status = ''Y''',
'                            )',
'and',
'    eba_proj_fw.is_edit_authorized( u.username, rf.project_id ) = ''Y''',
'group by',
'    eba_proj_fw.get_name_from_email_address(u.username), u.id',
'order by',
'    2 desc'))
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(6781123939725890825)
,p_query_headings_type=>'NO_HEADINGS'
,p_query_num_rows=>50
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'0'
,p_query_no_data_found=>'No owners found'
,p_query_num_rows_type=>'0'
,p_query_row_count_max=>50
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
,p_required_patch=>wwv_flow_api.id(11916018719787603450)
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(9035618313859421094)
,p_query_column_id=>1
,p_column_alias=>'PROJECT_OWNER'
,p_column_display_sequence=>2
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:64:&SESSION.:CIR,RP:&DEBUG.:RP,RIR:P64_OWNER,P64_STATUS:#USER_ID#,\&P51_OPEN_STATUS_IDS.\'
,p_column_linktext=>'#PROJECT_OWNER#'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'YES'
,p_derived_column=>'N'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(9035618439720421100)
,p_query_column_id=>2
,p_column_alias=>'C'
,p_column_display_sequence=>1
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18916798083157277961)
,p_query_column_id=>3
,p_column_alias=>'USER_ID'
,p_column_display_sequence=>3
,p_column_heading=>'User id'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(20233640759780250551)
,p_plug_name=>'Projects by Status'
,p_region_css_classes=>'i-h380'
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton:t-Region--hiddenOverflow'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(6781115417665890803)
,p_plug_display_sequence=>50
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'    "ID", ',
'    decode("IS_ACTIVE_YN",''Y'',''Yes'',''N'',''No'',is_active_yn) is_active_yn,',
'    "DISPLAY_SEQUENCE",',
'    "STATUS_SHORT_DESC",',
'    decode(is_closed_status,''Y'',''Yes'',''N'',''No'',is_closed_status) is_closed_status,',
'    (select c.color_code from eba_proj_color_codes c where c.id = sc.color_code_id) color,',
'    (select count(*) from eba_proj_status s where s.project_status = sc.id) as c',
'from EBA_PROJ_STATUS_CODES  sc',
'where (select count(*) from eba_proj_status s where s.project_status = sc.id) > 0',
'order by 3, 7 desc, 4'))
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.HTML5_BAR_CHART'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_required_patch=>wwv_flow_api.id(11915945871795671853)
,p_attribute_02=>'STATUS_SHORT_DESC'
,p_attribute_03=>'f?p=&APP_ID.:64:&SESSION.::&DEBUG.:RP:P64_STATUS:&ID.'
,p_attribute_04=>'C'
,p_attribute_05=>'f?p=&APP_ID.:64:&SESSION.::&DEBUG.:RP:P64_STATUS:&ID.'
,p_attribute_11=>'VALUE'
,p_attribute_14=>'20'
,p_attribute_15=>'TEXT'
,p_attribute_16=>'ABSOLUTE'
,p_attribute_17=>'COLUMN'
,p_attribute_18=>'AROUND'
,p_attribute_19=>'COLOR'
,p_attribute_20=>'No project status data found.'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(2770760064186065669)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(9035605322333306790)
,p_button_name=>'HOME'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--pillStart'
,p_button_template_id=>wwv_flow_api.id(6781134785393890859)
,p_button_image_alt=>'Go to Homepage'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:64:&SESSION.::&DEBUG.:RP::'
,p_icon_css_classes=>'fa-home'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(2770760148235065670)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(9035605322333306790)
,p_button_name=>'INTERACTIVE_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--pillEnd'
,p_button_template_id=>wwv_flow_api.id(6781134785393890859)
,p_button_image_alt=>'Go to Interactive Report'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:RP::'
,p_icon_css_classes=>'fa-table'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(5362387210012683061)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_api.id(5362373430904592998)
,p_button_name=>'VIEW_PROJECTS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_api.id(6781134785393890859)
,p_button_image_alt=>'View'
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:64:&SESSION.::&DEBUG.:RP,64::'
,p_icon_css_classes=>'fa-chevron-right'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(5362387518893684640)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_api.id(5362367559108574826)
,p_button_name=>'VIEW_PROJECTS2'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_api.id(6781134785393890859)
,p_button_image_alt=>'View'
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:64:&SESSION.::&DEBUG.:RP::'
,p_icon_css_classes=>'fa-chevron-right'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(9035614630058370158)
,p_branch_name=>'Go To Page 51'
,p_branch_action=>'f?p=&APP_ID.:51:&SESSION.::&DEBUG.:RP,51::'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_save_state_before_branch_yn=>'Y'
,p_branch_comment=>'Created 22-DEC-2010 12:24 by MIKE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3464852969073033872)
,p_name=>'P51_INACTIVE_STATUSES'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(3464852615595033869)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18916798182208277962)
,p_name=>'P51_OPEN_STATUS_IDS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(9035618042834421082)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.component_end;
end;
/
begin
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>134
,p_default_id_offset=>172493832712964115
,p_default_owner=>'MISO'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(18916798273168277963)
,p_computation_sequence=>10
,p_computation_item=>'P51_OPEN_STATUS_IDS'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'QUERY'
,p_computation=>'select listagg(id,'':'') within group (order by id) from EBA_PROJ_STATUS_CODES where IS_ACTIVE_YN = ''Y'' and IS_CLOSED_STATUS = ''N'';'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(3464853073491033873)
,p_computation_sequence=>30
,p_computation_item=>'P51_INACTIVE_STATUSES'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'FUNCTION_BODY'
,p_computation_language=>'PLSQL'
,p_computation=>'return eba_proj_fw.get_statuses(''N'')'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(9035632615213744285)
,p_computation_sequence=>10
,p_computation_item=>'LAST_VIEW'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'51'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(13414303362156285733)
,p_computation_sequence=>20
,p_computation_item=>'PROJECT_CAME_FROM'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'&APP_PAGE_ID.'
);
wwv_flow_api.component_end;
end;
/
