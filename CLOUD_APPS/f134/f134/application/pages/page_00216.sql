prompt --application/pages/page_00216
begin
--   Manifest
--     PAGE: 00216
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
 p_id=>216
,p_user_interface_id=>wwv_flow_api.id(5783577205373975152)
,p_name=>'Action Items Analysis Report'
,p_step_title=>'Action Items Analysis Report'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(5956243988833596300)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'This interactive report shows all project action items with a control-break on project and status. Click the <strong>Reset</strong> button to reset the interactive report. Click the <strong>Actions</strong> button to define the number of rows display'
||'ed per page, filter, format, download, and/or save the interactive report.'
,p_last_upd_yyyymmddhh24miss=>'20190906084829'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(19167488356380858468)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(6781115417665890803)
,p_plug_display_sequence=>15
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(8972392840601050532)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(6781135716305890867)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NEVER'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(19397558249428467334)
,p_plug_name=>'Action Item Date Forecasting Analysis'
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton'
,p_plug_template=>wwv_flow_api.id(6781113968619890797)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select id,',
'    project_id,',
'    (   select project',
'        from eba_proj_status x',
'        where x.id = a.project_id ) project, ',
'    action,',
'    (select project_status from eba_proj_status where id = a.project_id) project_status,',
'    nvl(type_id, -1) as type,',
'    --',
'    (select listagg(to_char(to_date(substr(new_value,1,11),''DD-MON-YYYY''),''fmDD-MON-YYYY'')||'' ''||',
'        eba_proj_fw.get_name_from_email_address(changed_by),'', '')  within group (order by change_date)',
'     from eba_proj_history',
'     where table_name = ''STATUS_AIS''',
'       and column_name = ''DUE_DATE''',
'       and component_id = a.id)',
'    change_history,',
'    case when action_status = ''Closed'' then',
'        (select nvl( max(change_date), a.due_date ) from EBA_PROJ_HISTORY where table_name = ''STATUS_AI'' and new_value = ''Closed'' and component_id = a.id)',
'    else',
'        null',
'    end as actual_completion_date,',
'    case when action_status = ''Closed'' then',
'        completed_date',
'    else',
'        null',
'    end as completion_date,',
'    case when milestone_id is not null then',
'        (select milestone_start_date from eba_proj_status_ms where id = a.milestone_id)',
'    else',
'        a.created',
'    end as start_date,',
'    due_date,',
'    case when milestone_id is not null then',
'        (select milestone_name from eba_proj_status_ms where id = milestone_id)',
'    else',
'        null',
'    end as milestone,',
'    case when milestone_id is not null then',
'        (select milestone_owner from eba_proj_status_ms where id = milestone_id)',
'    else',
'        null',
'    end as milestone_owner,',
'    nvl(original_due_date, due_date) as original_due_date,',
'    nvl(trunc(original_due_date), trunc(due_date)) - trunc(completed_date) as original_day_delta,',
'    nvl(trunc(original_due_date), trunc(due_date)) - trunc(due_date) as original_due_delta,',
'    trunc(due_date) - trunc(completed_date) as day_delta,',
'    case',
'        when a.action_status != ''Closed'' and a.due_date < current_timestamp then',
'            ''Y''',
'        else',
'            ''N''',
'    end past_due_yn,',
'    action_status,',
'    case when owner_role_id is null then',
'        eba_proj_fw.get_name_from_email_address(a.action_owner_01)',
'        || decode(a.action_owner_02,null,null,'', ''|| eba_proj_fw.get_name_from_email_address(a.action_owner_02))',
'        || decode(a.action_owner_03,null,null,'', ''|| eba_proj_fw.get_name_from_email_address(a.action_owner_03))',
'        || decode(a.action_owner_04,null,null,'', ''|| eba_proj_fw.get_name_from_email_address(a.action_owner_04))',
'    else',
'        nvl((select r.name||'': ''||listagg(decode(u.first_name,null,eba_proj_fw.get_name_from_email_address(u.username),decode(u.last_name, null, eba_proj_fw.get_name_from_email_address(u.username), initcap(u.first_name || '' '' || u.last_name))),'', '')',
'                within group (order by lower(u.username)) owner',
'            from eba_proj_user_ref rf,',
'                eba_proj_status_users u,',
'                eba_proj_roles r',
'            where rf.role_id = a.owner_role_id',
'                and rf.project_id = a.project_id',
'                and u.id = rf.user_id',
'                and r.id = rf.role_id',
'            group by r.name',
'        ), (select ''No ''||r.name||'' defined''',
'            from eba_proj_roles r',
'            where r.id = a.owner_role_id)',
'        )',
'    end as action_owner',
'from eba_proj_status_ais a'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(19397558344704467334)
,p_name=>'Action Item Date Forecasting Analysis'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLSX:PDF:RTF'
,p_owner=>'ALLAN'
,p_internal_uid=>18169081732009964206
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(19397558807036467345)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(19397559211187467347)
,p_db_column_name=>'PROJECT_ID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Project Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(19397559582775467347)
,p_db_column_name=>'PROJECT'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Project'
,p_column_link=>'f?p=&APP_ID.:200:&SESSION.::&DEBUG.:RP,200:P200_ID:#PROJECT_ID#'
,p_column_linktext=>'#PROJECT#'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(19167488519932858470)
,p_db_column_name=>'MILESTONE'
,p_display_order=>13
,p_column_identifier=>'L'
,p_column_label=>'Milestone'
,p_column_link=>'f?p=&APP_ID.:107:&SESSION.::&DEBUG.:RP,107:P107_ID,P107_PROJECT_ID:#ID#,#PROJECT_ID#'
,p_column_linktext=>'#MILESTONE#'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(19167488617948858471)
,p_db_column_name=>'MILESTONE_OWNER'
,p_display_order=>23
,p_column_identifier=>'M'
,p_column_label=>'Milestone Owner'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(19397559924790467348)
,p_db_column_name=>'ACTION'
,p_display_order=>33
,p_column_identifier=>'D'
,p_column_label=>'Action Item'
,p_column_link=>'f?p=&APP_ID.:78:&SESSION.::&DEBUG.:RP,78:P78_ACTION_ITEM_ID,P78_PROJECT_ID:#ID#,#PROJECT_ID#'
,p_column_linktext=>'#ACTION#'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(19397561594596467350)
,p_db_column_name=>'ORIGINAL_DUE_DATE'
,p_display_order=>43
,p_column_identifier=>'H'
,p_column_label=>'Original Due Date'
,p_column_html_expression=>'<span style="white-space: pre;">#ORIGINAL_DUE_DATE#</span>'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'fmDD-MON-YYYY'
,p_tz_dependent=>'Y'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(19397561197342467349)
,p_db_column_name=>'DUE_DATE'
,p_display_order=>53
,p_column_identifier=>'G'
,p_column_label=>'Due Date'
,p_column_html_expression=>'<span style="white-space: pre;">#DUE_DATE#</span>'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'fmDD-MON-YYYY'
,p_tz_dependent=>'Y'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(19397560802981467349)
,p_db_column_name=>'COMPLETION_DATE'
,p_display_order=>63
,p_column_identifier=>'F'
,p_column_label=>'Completion Date'
,p_column_html_expression=>'<span style="white-space: pre;">#COMPLETION_DATE#</span>'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'fmDD-MON-YYYY'
,p_tz_dependent=>'Y'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(19397561976878467350)
,p_db_column_name=>'DAY_DELTA'
,p_display_order=>73
,p_column_identifier=>'I'
,p_column_label=>'Due to Completion Delta'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(19397560313466467348)
,p_db_column_name=>'CHANGE_HISTORY'
,p_display_order=>83
,p_column_identifier=>'E'
,p_column_label=>'Change History'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(19397562387255467351)
,p_db_column_name=>'ACTION_STATUS'
,p_display_order=>93
,p_column_identifier=>'J'
,p_column_label=>'Action Item Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(19397562810294467351)
,p_db_column_name=>'ACTION_OWNER'
,p_display_order=>103
,p_column_identifier=>'K'
,p_column_label=>'Action Item Owner(s)'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(19313139202743735037)
,p_db_column_name=>'ACTUAL_COMPLETION_DATE'
,p_display_order=>113
,p_column_identifier=>'N'
,p_column_label=>'Marked as Closed On'
,p_column_html_expression=>'<span style="white-space: pre;">#ACTUAL_COMPLETION_DATE#</span>'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'fmDD-MON-YYYY'
,p_tz_dependent=>'Y'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(19313141245308735058)
,p_db_column_name=>'ORIGINAL_DAY_DELTA'
,p_display_order=>123
,p_column_identifier=>'O'
,p_column_label=>'Original Due to Completion Delta'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(19850571372884020750)
,p_db_column_name=>'TYPE'
,p_display_order=>143
,p_column_identifier=>'S'
,p_column_label=>'Type'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_api.id(19025074438882511826)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(19850571469260020751)
,p_db_column_name=>'START_DATE'
,p_display_order=>153
,p_column_identifier=>'T'
,p_column_label=>'Start Date'
,p_column_html_expression=>'<span style="white-space: pre;">#START_DATE#</span>'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'fmDD-MON-YYYY'
,p_tz_dependent=>'Y'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(19850571558973020752)
,p_db_column_name=>'ORIGINAL_DUE_DELTA'
,p_display_order=>163
,p_column_identifier=>'U'
,p_column_label=>'Original Due to Due Date Delta'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(19850571678112020753)
,p_db_column_name=>'PAST_DUE_YN'
,p_display_order=>173
,p_column_identifier=>'V'
,p_column_label=>'Past Due'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_api.id(9019252630556871632)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(20233639487426250538)
,p_db_column_name=>'PROJECT_STATUS'
,p_display_order=>183
,p_column_identifier=>'W'
,p_column_label=>'Project Status'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_api.id(9025721939150772116)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(19397594935377468889)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'181691184'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>1000
,p_report_columns=>'PROJECT:PROJECT_STATUS:MILESTONE:ACTION:ACTION_STATUS:TYPE:ACTION_OWNER:START_DATE:ORIGINAL_DUE_DATE:DUE_DATE:ORIGINAL_DUE_DELTA:COMPLETION_DATE:ACTUAL_COMPLETION_DATE:DAY_DELTA:CHANGE_HISTORY:PAST_DUE_YN:'
,p_break_on=>'PROJECT:PROJECT_STATUS:0:0:0:0'
,p_break_enabled_on=>'PROJECT:PROJECT_STATUS:0:0:0:0'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(19167488503230858469)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(19397558249428467334)
,p_button_name=>'RESET'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(6781134785393890859)
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&SESSION.::&DEBUG.:RP,&APP_PAGE_ID.,RIR::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_api.component_end;
end;
/
