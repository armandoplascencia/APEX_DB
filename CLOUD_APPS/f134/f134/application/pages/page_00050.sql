prompt --application/pages/page_00050
begin
--   Manifest
--     PAGE: 00050
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
 p_id=>50
,p_user_interface_id=>wwv_flow_api.id(5783577205373975152)
,p_name=>'Action Items Dashboard'
,p_step_title=>'Action Items Dashboard'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_api.id(5956243988833596300)
,p_step_template=>wwv_flow_api.id(6781077225859890733)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'This page contains many bar charts, graphs, and reports of action item information. Use the filter controls on the left to change the results displayed in the bar charts, graphs, and reports displayed on the page. Click the links displayed in the cha'
||'rts to drill down to more pertinent details. Click the <strong>Reset</strong> button to reset the filters and charts.'
,p_last_upd_yyyymmddhh24miss=>'20190905090827'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1519084771261431564)
,p_plug_name=>'Action Items by Type'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:js-showMaximizeButton:i-h320:t-Region--hiddenOverflow'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(6781115417665890803)
,p_plug_display_sequence=>60
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_jet_chart(
 p_id=>wwv_flow_api.id(1519084838578431565)
,p_region_id=>wwv_flow_api.id(1519084771261431564)
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
 p_id=>wwv_flow_api.id(1519085000859431566)
,p_chart_id=>wwv_flow_api.id(1519084838578431565)
,p_seq=>10
,p_name=>'Action Items by Type'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select action_type, count(*) c',
'from (',
'    select nvl((select ai_type from eba_proj_status_ais_types t where t.id = a.type_id),''Not Set'') action_type',
'    from eba_proj_status_ais a,',
'        eba_proj_status p',
'    where a.project_id = p.id',
'        and ( :P50_PROJECT is null',
'            or a.project_id = :P50_PROJECT',
'            or (nvl(:P50_SHOW_CHILD_PROJ,''N'') = ''Y''',
'                and a.project_id in (   select id',
'                                        from eba_proj_status ps',
'                                        where ps.parent_project_id = :P50_PROJECT)))',
'        and ( :P50_AI_OWNER is null',
'            or ( a.owner_role_id is null',
'                and (  lower(a.action_owner_01) = lower(:P50_AI_OWNER)',
'                    or lower(a.action_owner_02) = lower(:P50_AI_OWNER)',
'                    or lower(a.action_owner_03) = lower(:P50_AI_OWNER)',
'                    or lower(a.action_owner_04) = lower(:P50_AI_OWNER) ))',
'            or ( a.owner_role_id is not null',
'                and exists (select null',
'                            from eba_proj_user_ref rf,',
'                                eba_proj_status_users u',
'                            where rf.role_id = a.owner_role_id',
'                                and rf.project_id = a.project_id',
'                                and u.id = rf.user_id',
'                                and lower(u.username) = lower(:P50_AI_OWNER)) )',
'        )',
'        and ( :P50_SEARCH is null',
'            or instr( upper(a.action), upper(:P50_SEARCH) ) > 0',
'            or instr( upper(a.action_description), upper(:P50_SEARCH) ) > 0 )',
'        and ( :P50_CATEGORY is null or p.cat_id = :P50_CATEGORY )',
'        and (:P50_PROJECT_OWNER is null',
'            or exists ( select null',
'                        from eba_proj_user_ref rf,',
'                            eba_proj_status_users u,',
'                            eba_proj_roles r',
'                        where lower(u.username) = lower(:P50_PROJECT_OWNER)',
'                            and rf.user_id = u.id',
'                            and rf.role_id = r.id',
'                            and rf.project_id = p.id',
'                            and eba_proj_fw.is_edit_authorized( u.username, rf.project_id ) = ''Y'') )',
') x',
'group by action_type',
'order by 2 desc'))
,p_items_value_column_name=>'C'
,p_items_label_column_name=>'ACTION_TYPE'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
,p_link_target=>'f?p=&APP_ID.:49:&SESSION.::&DEBUG.:RP,49,CIR:IREQ_AI_TYPE:&ACTION_TYPE.'
,p_link_target_type=>'REDIRECT_PAGE'
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(1519085048415431567)
,p_chart_id=>wwv_flow_api.id(1519084838578431565)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_title=>'Action Item Types'
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
 p_id=>wwv_flow_api.id(1519085110405431568)
,p_chart_id=>wwv_flow_api.id(1519084838578431565)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_title=>'Number of Action Items'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'none'
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
 p_id=>wwv_flow_api.id(6087997001400265814)
,p_plug_name=>'Action Items by Status'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:js-showMaximizeButton:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(6781115417665890803)
,p_plug_display_sequence=>80
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select nvl(a.action_status,''No Status'') action_status,',
'    count(*) c',
'from eba_proj_status_ais a,',
'    eba_proj_status p',
'where a.project_id = p.id',
'    and ( :P50_PROJECT is null',
'        or a.project_id = :P50_PROJECT',
'        or (nvl(:P50_SHOW_CHILD_PROJ,''N'') = ''Y''',
'            and a.project_id in (   select id',
'                                    from eba_proj_status ps',
'                                    where ps.parent_project_id = :P50_PROJECT)))',
'    and ( :P50_AI_OWNER is null',
'        or ( a.owner_role_id is null',
'            and (  lower(a.action_owner_01) = lower(:P50_AI_OWNER)',
'                or lower(a.action_owner_02) = lower(:P50_AI_OWNER)',
'                or lower(a.action_owner_03) = lower(:P50_AI_OWNER)',
'                or lower(a.action_owner_04) = lower(:P50_AI_OWNER) ))',
'        or ( a.owner_role_id is not null',
'            and exists (select null',
'                        from eba_proj_user_ref rf,',
'                            eba_proj_status_users u',
'                        where rf.role_id = a.owner_role_id',
'                            and rf.project_id = a.project_id',
'                            and u.id = rf.user_id',
'                            and lower(u.username) = lower(:P50_AI_OWNER)) )',
'    )',
'    and ( :P50_SEARCH is null',
'        or instr( upper(a.action), upper(:P50_SEARCH) ) > 0',
'        or instr( upper(a.action_description), upper(:P50_SEARCH) ) > 0 )',
'    and ( :P50_CATEGORY is null or p.cat_id = :P50_CATEGORY )',
'    and (:P50_PROJECT_OWNER is null or',
'        exists (select null',
'                from eba_proj_user_ref rf,',
'                    eba_proj_status_users u,',
'                    eba_proj_roles r',
'                where lower(u.username) = lower(:P50_PROJECT_OWNER)',
'                    and rf.user_id = u.id',
'                    and rf.role_id = r.id',
'                    and rf.project_id = p.id',
'                    and eba_proj_fw.is_edit_authorized( u.username, rf.project_id ) = ''Y'') )',
'group by nvl(a.action_status,''No Status'')',
'order by 2 desc'))
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.BADGE_LIST'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'ACTION_STATUS'
,p_attribute_02=>'C'
,p_attribute_04=>'f?p=&APP_ID.:49:&SESSION.::&DEBUG.:RP,49,CIR:IR_ACTION_STATUS:&ACTION_STATUS.'
,p_attribute_05=>'3'
,p_attribute_07=>'BOX'
,p_attribute_08=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(6799289971468377590)
,p_plug_name=>'Open Action Items'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:js-showMaximizeButton:i-h320:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(6781115417665890803)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'with ow as (',
'    select a.id action_item_id,',
'        lower(ai_owner) ai_owner',
'    from eba_proj_status_ais unpivot exclude nulls',
'        ( ai_owner for action_owner_no in ( action_owner_01 as 1,',
'                                            action_owner_02 as 2,',
'                                            action_owner_03 as 3,',
'                                            action_owner_04 as 4',
'                                        )',
'        ) a',
'    where a.owner_role_id is null',
'    union all',
'    select a.id action_item_id,',
'        lower(u.username) ai_owner',
'    from eba_proj_status_ais a,',
'        eba_proj_user_ref rf,',
'        eba_proj_status_users u',
'    where a.owner_role_id is not null',
'        and rf.role_id = a.owner_role_id',
'        and rf.project_id = a.project_id',
'        and rf.user_id = u.id',
')',
'select ow.ai_owner name,',
'    eba_proj_fw.get_name_from_email_address(ow.ai_owner) as display_name,',
'    count(*) value,',
'    upper(decode(instr(replace(ai_owner,''.'','' ''),'' ''),',
'         0, ',
'         substr(ai_owner,1,2),',
'         substr(ai_owner,1,1)||substr(ai_owner,instr(replace(ai_owner,''.'','' ''),'' '')+1,1)',
'    )) initials',
'from eba_proj_status_ais a,',
'    ow',
'where a.action_status = ''Open''',
'    and a.id = ow.action_item_id',
'    and ( :P50_PROJECT is null',
'        or a.project_id = :P50_PROJECT',
'        or (nvl(:P50_SHOW_CHILD_PROJ,''N'') = ''Y''',
'            and a.project_id in (   select id',
'                                    from eba_proj_status ps',
'                                    where ps.parent_project_id = :P50_PROJECT)))',
'    and ( :P50_AI_OWNER is null',
'        or lower(:P50_AI_OWNER) = ow.ai_owner )',
'    and ( :P50_SEARCH is null',
'        or instr( upper(a.action), upper(:P50_SEARCH) ) > 0',
'        or instr( upper(a.action_description), upper(:P50_SEARCH) ) > 0 )',
'    and ( :P50_CATEGORY is null',
'        or a.project_id in (select s.id',
'                            from eba_proj_status s',
'                            where s.cat_id = :P50_CATEGORY) )',
'    and (:P50_PROJECT_OWNER is null or',
'        exists (select null',
'                from eba_proj_user_ref rf,',
'                    eba_proj_status_users u,',
'                    eba_proj_roles r',
'                where lower(u.username) = lower(:P50_PROJECT_OWNER)',
'                    and rf.user_id = u.id',
'                    and rf.role_id = r.id',
'                    and rf.project_id = a.project_id',
'                    and eba_proj_fw.is_edit_authorized( u.username, rf.project_id ) = ''Y'') )',
'group by ow.ai_owner',
'order by 3 desc, 1'))
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.HTML5_BAR_CHART'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'INITIALS'
,p_attribute_02=>'DISPLAY_NAME'
,p_attribute_03=>'f?p=&APP_ID.:49:&SESSION.::&DEBUG.:RP,49,CIR:IR_ACTION_STATUS,IRC_OWNER:Open,&NAME.'
,p_attribute_04=>'VALUE'
,p_attribute_05=>'f?p=&APP_ID.:49:&SESSION.::&DEBUG.:RP,49,CIR:IR_ACTION_STATUS,IRC_OWNER:Open,&NAME.'
,p_attribute_09=>'INITIALS'
,p_attribute_11=>'VALUE'
,p_attribute_14=>'50'
,p_attribute_15=>'ICON'
,p_attribute_16=>'ABSOLUTE'
,p_attribute_17=>'MODERN'
,p_attribute_20=>'No data found'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(8152542714051145469)
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
 p_id=>wwv_flow_api.id(9034689834852867285)
,p_plug_name=>'Overdue Action Items by Owner'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:js-showMaximizeButton:i-h320:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(6781115417665890803)
,p_plug_display_sequence=>70
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'with ow as (',
'    select a.id action_item_id,',
'        lower(ai_owner) ai_owner',
'    from eba_proj_status_ais unpivot exclude nulls',
'        ( ai_owner for action_owner_no in ( action_owner_01 as 1,',
'                                            action_owner_02 as 2,',
'                                            action_owner_03 as 3,',
'                                            action_owner_04 as 4',
'                                        )',
'        ) a',
'    where a.owner_role_id is null',
'    union all',
'    select a.id action_item_id,',
'        lower(u.username) ai_owner',
'    from eba_proj_status_ais a,',
'        eba_proj_user_ref rf,',
'        eba_proj_status_users u',
'    where a.owner_role_id is not null',
'        and rf.role_id = a.owner_role_id',
'        and rf.project_id = a.project_id',
'        and rf.user_id = u.id',
')',
'select ow.ai_owner name,',
'       eba_proj_fw.get_name_from_email_address(ow.ai_owner) as display_name,',
'       count(*) value,',
'       ''#EA0000'' as color,',
'       to_char(localtimestamp,:APP_DATE_FORMAT) as curr_date',
'from eba_proj_status_ais a,',
'    ow',
'where a.action_status = ''Open''',
'    and a.due_date < current_date',
'    and a.id = ow.action_item_id',
'    and ( :P50_PROJECT is null',
'        or a.project_id = :P50_PROJECT',
'        or (nvl(:P50_SHOW_CHILD_PROJ,''N'') = ''Y''',
'            and a.project_id in (   select id',
'                                    from eba_proj_status ps',
'                                    where ps.parent_project_id = :P50_PROJECT)))',
'    and ( :P50_AI_OWNER is null',
'        or lower(:P50_AI_OWNER) = ow.ai_owner )',
'    and ( :P50_SEARCH is null',
'        or instr( upper(a.action), upper(:P50_SEARCH) ) > 0',
'        or instr( upper(a.action_description), upper(:P50_SEARCH) ) > 0 )',
'    and ( :P50_CATEGORY is null',
'        or a.project_id in (select s.id',
'                            from eba_proj_status s',
'                            where s.cat_id = :P50_CATEGORY) )',
'    and (:P50_PROJECT_OWNER is null or',
'        exists (select null',
'                from eba_proj_user_ref rf,',
'                    eba_proj_status_users u,',
'                    eba_proj_roles r',
'                where lower(u.username) = lower(:P50_PROJECT_OWNER)',
'                    and rf.user_id = u.id',
'                    and rf.role_id = r.id',
'                    and rf.project_id = a.project_id',
'                    and eba_proj_fw.is_edit_authorized( u.username, rf.project_id ) = ''Y'') )',
'group by ai_owner',
'order by 3 desc, 1'))
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.HTML5_BAR_CHART'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_02=>'DISPLAY_NAME'
,p_attribute_03=>'f?p=&APP_ID.:49:&SESSION.::&DEBUG.:RP,49,CIR:IR_PAST_DUE,IRC_OWNER,IRLT_DUE_DATE:Yes,&NAME.,&CURR_DATE.'
,p_attribute_04=>'VALUE'
,p_attribute_05=>'f?p=&APP_ID.:49:&SESSION.::&DEBUG.:RP,49,CIR:IR_PAST_DUE,IRC_OWNER,IRLT_DUE_DATE:Yes,&NAME.,&CURR_DATE.'
,p_attribute_11=>'VALUE'
,p_attribute_14=>'50'
,p_attribute_15=>'TEXT'
,p_attribute_16=>'ABSOLUTE'
,p_attribute_17=>'MODERN'
,p_attribute_18=>'AROUND'
,p_attribute_20=>'No data found'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(9034690443294879154)
,p_plug_name=>'Completed Action Items by Owner (last month)'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:js-showMaximizeButton:i-h320:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(6781115417665890803)
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'with ow as (',
'    select a.id action_item_id,',
'        lower(ai_owner) ai_owner',
'    from eba_proj_status_ais unpivot exclude nulls',
'        ( ai_owner for action_owner_no in ( action_owner_01 as 1,',
'                                            action_owner_02 as 2,',
'                                            action_owner_03 as 3,',
'                                            action_owner_04 as 4',
'                                        )',
'        ) a',
'    where a.owner_role_id is null',
'    union all',
'    select a.id action_item_id,',
'        lower(u.username) ai_owner',
'    from eba_proj_status_ais a,',
'        eba_proj_user_ref rf,',
'        eba_proj_status_users u',
'    where a.owner_role_id is not null',
'        and rf.role_id = a.owner_role_id',
'        and rf.project_id = a.project_id',
'        and rf.user_id = u.id',
')',
'select ow.ai_owner name,',
'    eba_proj_fw.get_name_from_email_address(ow.ai_owner) as display_name,',
'    count(*) value,',
'    upper(decode(instr(replace(ai_owner,''.'','' ''),'' ''),',
'         0, ',
'         substr(ai_owner,1,2),',
'         substr(ai_owner,1,1)||substr(ai_owner,instr(replace(ai_owner,''.'','' ''),'' '')+1,1)',
'    )) initials',
'from eba_proj_status_ais a,',
'    ow',
'where a.action_status = ''Closed''',
'    and a.updated > add_months(localtimestamp,-1)',
'    and a.id = ow.action_item_id',
'    and ( :P50_PROJECT is null',
'        or a.project_id = :P50_PROJECT',
'        or (nvl(:P50_SHOW_CHILD_PROJ,''N'') = ''Y''',
'            and a.project_id in (   select id',
'                                    from eba_proj_status ps',
'                                    where ps.parent_project_id = :P50_PROJECT)))',
'    and ( :P50_AI_OWNER is null',
'        or lower(:P50_AI_OWNER) = ow.ai_owner )',
'    and ( :P50_SEARCH is null',
'        or instr( upper(a.action), upper(:P50_SEARCH) ) > 0',
'        or instr( upper(a.action_description), upper(:P50_SEARCH) ) > 0 )',
'    and ( :P50_CATEGORY is null',
'        or a.project_id in (select s.id',
'                            from eba_proj_status s',
'                            where s.cat_id = :P50_CATEGORY) )',
'    and (:P50_PROJECT_OWNER is null or',
'        exists (select null',
'                from eba_proj_user_ref rf,',
'                    eba_proj_status_users u,',
'                    eba_proj_roles r',
'                where lower(u.username) = lower(:P50_PROJECT_OWNER)',
'                    and rf.user_id = u.id',
'                    and rf.role_id = r.id',
'                    and rf.project_id = a.project_id',
'                    and eba_proj_fw.is_edit_authorized( u.username, rf.project_id ) = ''Y'') )',
'group by ow.ai_owner',
'order by 3 desc, 1'))
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.HTML5_BAR_CHART'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'INITIALS'
,p_attribute_02=>'DISPLAY_NAME'
,p_attribute_03=>'f?p=&APP_ID.:49:&SESSION.::&DEBUG.:RP,49,CIR:IR_ACTION_STATUS,IRC_OWNER,IRGT_UPDATED_HIDDEN:Closed,&NAME.,&P50_A_MONTH_AGO.'
,p_attribute_04=>'VALUE'
,p_attribute_05=>'f?p=&APP_ID.:49:&SESSION.::&DEBUG.:RP,49,CIR:IR_ACTION_STATUS,IRC_OWNER,IRGT_UPDATED_HIDDEN:Closed,&NAME.,&P50_A_MONTH_AGO.'
,p_attribute_09=>'INITIALS'
,p_attribute_11=>'VALUE'
,p_attribute_14=>'50'
,p_attribute_15=>'ICON'
,p_attribute_16=>'ABSOLUTE'
,p_attribute_17=>'MODERN'
,p_attribute_20=>'No data found'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(9034693927111931184)
,p_plug_name=>'Search'
,p_region_template_options=>'#DEFAULT#:t-Region--hiddenOverflow:t-Form--stretchInputs:t-Region--hideHeader'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(6781115417665890803)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_02'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(9034694734730933422)
,p_name=>'Open Action Items by Project'
,p_region_name=>'AIBP'
,p_template=>wwv_flow_api.id(6781115417665890803)
,p_display_sequence=>40
,p_region_css_classes=>'scrollable-region'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:js-showMaximizeButton:i-h320:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-AVPList--rightAligned'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select p.project, count(*) c, p.id',
'from eba_proj_status_ais a,',
'    eba_proj_status p',
'where action_status = ''Open'' and a.project_id = p.id',
'    and ( :P50_PROJECT is null',
'        or a.project_id = :P50_PROJECT',
'        or (nvl(:P50_SHOW_CHILD_PROJ,''N'') = ''Y''',
'            and a.project_id in (   select id',
'                                    from eba_proj_status ps',
'                                    where ps.parent_project_id = :P50_PROJECT)))',
'    and ( :P50_AI_OWNER is null',
'        or ( a.owner_role_id is null',
'            and (  lower(a.action_owner_01) = lower(:P50_AI_OWNER)',
'                or lower(a.action_owner_02) = lower(:P50_AI_OWNER)',
'                or lower(a.action_owner_03) = lower(:P50_AI_OWNER)',
'                or lower(a.action_owner_04) = lower(:P50_AI_OWNER) ))',
'        or ( a.owner_role_id is not null',
'            and exists (select null',
'                        from eba_proj_user_ref rf,',
'                            eba_proj_status_users u',
'                        where rf.role_id = a.owner_role_id',
'                            and rf.project_id = a.project_id',
'                            and u.id = rf.user_id',
'                            and lower(u.username) = lower(:P50_AI_OWNER)) )',
'    )',
'    and ( :P50_SEARCH is null',
'        or instr( upper(a.action), upper(:P50_SEARCH) ) > 0',
'        or instr( upper(a.action_description), upper(:P50_SEARCH) ) > 0 )',
'    and ( :P50_CATEGORY is null or p.cat_id = :P50_CATEGORY )',
'    and (:P50_PROJECT_OWNER is null or',
'        exists (select null',
'                from eba_proj_user_ref rf,',
'                    eba_proj_status_users u,',
'                    eba_proj_roles r',
'                where lower(u.username) = lower(:P50_PROJECT_OWNER)',
'                    and rf.user_id = u.id',
'                    and rf.role_id = r.id',
'                    and rf.project_id = p.id',
'                    and eba_proj_fw.is_edit_authorized( u.username, rf.project_id ) = ''Y'') )',
'group by p.project, p.id',
'order by 2 desc'))
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(6781123939725890825)
,p_query_headings_type=>'NO_HEADINGS'
,p_query_num_rows=>6
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_no_data_found=>'No data found'
,p_query_row_count_max=>50
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
 p_id=>wwv_flow_api.id(9034694944171933422)
,p_query_column_id=>1
,p_column_alias=>'PROJECT'
,p_column_display_sequence=>1
,p_column_link=>'f?p=&APP_ID.:46:&SESSION.::&DEBUG.:RIR,46:IREQ_PROJECT_ID,IREQ_OPEN:#ID#,Open'
,p_column_linktext=>'#PROJECT#'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(9034695022633933422)
,p_query_column_id=>2
,p_column_alias=>'C'
,p_column_display_sequence=>2
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(9034695139935933422)
,p_query_column_id=>3
,p_column_alias=>'ID'
,p_column_display_sequence=>3
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(7972962300990218380)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(6212459901559585507)
,p_button_name=>'CREATE_ACTION_ITEM'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_id=>wwv_flow_api.id(6781135529450890864)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Action Item'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:73:&SESSION.::&DEBUG.:73::'
,p_button_condition_type=>'NEVER'
,p_security_scheme=>wwv_flow_api.id(7306166303644991446)
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(9034694116147931185)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(9034693927111931184)
,p_button_name=>'P50_RESET'
,p_button_static_id=>'P50_RESET'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(6781134954745890861)
,p_button_image_alt=>'Reset'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:50:&SESSION.::&DEBUG.:50::'
,p_icon_css_classes=>'fa-undo-alt'
,p_request_source_type=>'ALWAYS_NULL'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(9034695217199937847)
,p_branch_action=>'f?p=&APP_ID.:50:&SESSION.::&DEBUG.:RP,50::'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(9034694116147931185)
,p_branch_sequence=>10
,p_save_state_before_branch_yn=>'Y'
,p_branch_comment=>'Created 22-DEC-2010 08:26 by MIKE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6853584195765232536)
,p_name=>'P50_SHOW_CHILD_PROJ'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(9034693927111931184)
,p_item_default=>'N'
,p_prompt=>'Show Child Projects'
,p_source=>'N'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES NO RETURNS Y N'
,p_lov=>'.'||wwv_flow_api.id(9019252630556871632)||'.'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(6899231875758612224)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_required_patch=>wwv_flow_api.id(19890960485833316269)
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6908967192103723821)
,p_name=>'P50_SEARCH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(9034693927111931184)
,p_prompt=>'Search'
,p_placeholder=>'Search Action Items'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>64
,p_cMaxlength=>4000
,p_field_template=>wwv_flow_api.id(6781134578441890854)
,p_item_icon_css_classes=>'fa-search'
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6909038112189729596)
,p_name=>'P50_PROJECT_OWNER'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(9034693927111931184)
,p_prompt=>'Project Owner'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'DISTINCT PROJECT OWNERS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select eba_proj_fw.get_name_from_email_address(u.username) d, lower(u.username) r',
'from eba_proj_status_users u',
'where exists ( select null',
'               from eba_proj_user_ref rf,',
'                   eba_proj_roles r,',
'                   eba_proj_status p,',
'                   eba_proj_status_codes sc',
'               where rf.user_id = u.id',
'                   and p.id = rf.project_id',
'                   and rf.role_id = r.id',
'                   and eba_proj_fw.is_edit_authorized( u.username, rf.project_id ) = ''Y''',
'                   and p.project_status = sc.id',
'                   and sc.is_closed_status != ''Y'' )',
'order by lower(u.username)'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- All Owners -'
,p_cSize=>30
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(6899231875758612224)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6909065186347731591)
,p_name=>'P50_AI_OWNER'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(9034693927111931184)
,p_prompt=>'Action Item Owner'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'ACTION ITEM OWNERS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct v1.owner d, lower(v1.username) r',
'from (',
'    select eba_proj_fw.get_name_from_email_address(action_owner_01) owner, action_owner_01 username from eba_proj_status_ais',
'    union all',
'    select eba_proj_fw.get_name_from_email_address(action_owner_02) owner, action_owner_02 username from eba_proj_status_ais',
'    union all',
'    select eba_proj_fw.get_name_from_email_address(action_owner_03) owner, action_owner_03 username from eba_proj_status_ais',
'    union all',
'    select eba_proj_fw.get_name_from_email_address(action_owner_04) owner, action_owner_04 username from eba_proj_status_ais',
'    union all',
'    select eba_proj_fw.get_name_from_email_address(u.username) owner, u.username username',
'    from eba_proj_status_users u',
'    where exists (  select null',
'                      from eba_proj_status_ais a,',
'                           eba_proj_user_ref rf',
'                     where rf.role_id = a.owner_role_id',
'                       and rf.project_id = a.project_id',
'                       and rf.user_id = u.id',
'                 )',
'    ) v1',
'where v1.owner is not null',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- All Owners -'
,p_cSize=>30
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(6899231875758612224)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
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
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6909080492234733323)
,p_name=>'P50_CATEGORY'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(9034693927111931184)
,p_prompt=>'&CAT_TITLE.'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'CATEGORIES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select CATEGORY display_value, ID return_value ',
'from EBA_PROJ_STATUS_CATS',
'where is_active_yn = ''Y''',
'order by display_sequence nulls last, 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- All &CAT_TITLE_PL. -'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(6899231875758612224)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(9034694346036931185)
,p_name=>'P50_PROJECT'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(9034693927111931184)
,p_prompt=>'Project'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'PROJECTS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select project d, id r',
'from eba_proj_status',
'order by upper(project)'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- All Projects -'
,p_cSize=>64
,p_cMaxlength=>4000
,p_field_template=>wwv_flow_api.id(6899231875758612224)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18916797812319277958)
,p_name=>'P50_A_MONTH_AGO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(9034693927111931184)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(18916797831034277959)
,p_computation_sequence=>10
,p_computation_item=>'P50_A_MONTH_AGO'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'EXPRESSION'
,p_computation_language=>'PLSQL'
,p_computation=>'to_char(add_months(localtimestamp,-1),''DD-MON-YYYY'')'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(9034696031183951287)
,p_computation_sequence=>10
,p_computation_item=>'LAST_VIEW'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'50'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(6853599402692234578)
,p_name=>'show child selector'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P50_PROJECT'
,p_condition_element=>'P50_PROJECT'
,p_triggering_condition_type=>'NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(6853599701555234579)
,p_event_id=>wwv_flow_api.id(6853599402692234578)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P50_SHOW_CHILD_PROJ'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(6853599896693234579)
,p_event_id=>wwv_flow_api.id(6853599402692234578)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P50_SHOW_CHILD_PROJ'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(13414317163021285771)
,p_name=>'Refresh Regions on Dialog Close'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(7972962300990218380)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(13414317281964285772)
,p_event_id=>wwv_flow_api.id(13414317163021285771)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(9034694734730933422)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(13414317347473285773)
,p_event_id=>wwv_flow_api.id(13414317163021285771)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(9034690443294879154)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(13414317491660285774)
,p_event_id=>wwv_flow_api.id(13414317163021285771)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(6799289971468377590)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(13414317518559285775)
,p_event_id=>wwv_flow_api.id(13414317163021285771)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(9034689834852867285)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(13414317712477285776)
,p_event_id=>wwv_flow_api.id(13414317163021285771)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(6087997001400265814)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(15440630631316744461)
,p_name=>'refresh results on filter value change'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P50_PROJECT,P50_SHOW_CHILD_PROJ,P50_PROJECT_OWNER,P50_AI_OWNER,P50_CATEGORY'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(15440630802186744462)
,p_event_id=>wwv_flow_api.id(15440630631316744461)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P50_PROJECT,P50_SHOW_CHILD_PROJ,P50_PROJECT_OWNER,P50_AI_OWNER,P50_CATEGORY'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(15440630894656744463)
,p_event_id=>wwv_flow_api.id(15440630631316744461)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(9034690443294879154)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(15440630981422744464)
,p_event_id=>wwv_flow_api.id(15440630631316744461)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(6799289971468377590)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(15440631065801744465)
,p_event_id=>wwv_flow_api.id(15440630631316744461)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(9034694734730933422)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(15440631182093744466)
,p_event_id=>wwv_flow_api.id(15440630631316744461)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(9034689834852867285)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(15440631254580744467)
,p_event_id=>wwv_flow_api.id(15440630631316744461)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(6087997001400265814)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(15448090398087481254)
,p_name=>'Search Action Items on Enter'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P50_SEARCH'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'this.browserEvent.keyCode == 13'
,p_bind_type=>'bind'
,p_bind_event_type=>'custom'
,p_bind_event_type_custom=>'change, keypress'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(15448091307238481256)
,p_event_id=>wwv_flow_api.id(15448090398087481254)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P50_SEARCH,P50_PROJECT,P50_SHOW_CHILD_PROJ,P50_PROJECT_OWNER,P50_AI_OWNER,P50_CATEGORY'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(15448090803342481255)
,p_event_id=>wwv_flow_api.id(15448090398087481254)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'this.browserEvent.preventDefault();'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(15448091726501481258)
,p_event_id=>wwv_flow_api.id(15448090398087481254)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(9034690443294879154)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(15440631505218744469)
,p_event_id=>wwv_flow_api.id(15448090398087481254)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(6799289971468377590)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(15440631612569744470)
,p_event_id=>wwv_flow_api.id(15448090398087481254)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(9034694734730933422)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(15440631680359744471)
,p_event_id=>wwv_flow_api.id(15448090398087481254)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(9034689834852867285)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(15440631782190744472)
,p_event_id=>wwv_flow_api.id(15448090398087481254)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(6087997001400265814)
);
wwv_flow_api.component_end;
end;
/
