prompt --application/pages/page_00214
begin
--   Manifest
--     PAGE: 00214
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
 p_id=>214
,p_user_interface_id=>wwv_flow_api.id(5783577205373975152)
,p_name=>'Milestones Analysis Report'
,p_step_title=>'Milestones Analysis Report'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(5956244298529599071)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'This interactive report shows all project milestones with a control-break on project and status. Click the <strong>Reset</strong> button to reset the interactive report. Click the <strong>Actions</strong> button to define the number of rows displayed'
||' per page, filter, format, download, and/or save the interactive report.'
,p_last_upd_yyyymmddhh24miss=>'20190906084443'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(19381670732665496446)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(6781117976757890807)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(8972392840601050532)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(6781135716305890867)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NEVER'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(19381671322653496451)
,p_plug_name=>'Milestone Date Forecasting Accuracy'
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton'
,p_plug_template=>wwv_flow_api.id(6781113968619890797)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select id,',
'    case when eba_proj_fw.is_edit_authorized( p_username   => upper(:APP_USER), p_project_id => m.project_id ) = ''Y'' then',
'        ''<a href="'' || apex_util.prepare_url(''f?p='' || :APP_ID || '':48:'' || :APP_SESSION || '':::48:P48_ID,P48_PROJECT_ID:'' || m.id || '','' || m.project_id || '':'') || ''"><img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pe'
||'ncil" alt="Edit Milestone"></a>''',
'    else',
'        null',
'    end as edit_link,',
'    case',
'        when (select count(*) from eba_proj_status_ais where project_id = m.project_id and milestone_id = m.id) > 0 then',
'            round(((select count(*) from eba_proj_status_ais where project_id = m.project_id and milestone_id = m.id and action_status = ''Closed'')/(select count(*) from eba_proj_status_ais where project_id = m.project_id and milestone_id = m.id)) * 1'
||'00) || ''%''',
'        else',
'            ''0%''',
'    end as percent_complete,',
'    case',
'        when milestone_status != ''Completed'' and m.milestone_date < current_timestamp then',
'            ''Y''',
'        else',
'            ''N''',
'    end past_due_yn,',
'    project_id,',
'    (   select project',
'        from eba_proj_status x',
'        where x.id = m.project_id ) project, ',
'    milestone_name,',
'    (select project_status from eba_proj_status where id = m.project_id) project_status,',
'    --',
'    (select listagg(to_char(to_date(substr(new_value,1,11),''DD-MON-YYYY''),''fmDD-MON-YYYY'')||'' ''||',
'        eba_proj_fw.get_name_from_email_address(changed_by),'', '')  within group (order by change_date)',
'     from eba_proj_history',
'     where table_name = ''STATUS_MS''',
'       and column_name = ''MILESTONE_DATE''',
'       and component_id = m.id)',
'    change_history,',
'    case when milestone_status = ''Completed'' then',
'        (select nvl(max(change_date), m.milestone_date) from eba_proj_history where table_name = ''STATUS_MS'' and new_value = ''Completed'' and component_id = m.id)',
'    else',
'        null',
'    end as actual_completion_date,',
'    case when milestone_status = ''Completed'' then',
'        completed_date',
'    else',
'        null',
'    end as completion_date,',
'    milestone_date,',
'    milestone_start_date,',
'    nvl(original_due_date, milestone_date) as original_due_date,',
'    nvl(trunc(original_due_date), trunc(milestone_date)) - trunc(completed_date) as original_day_delta,',
'    trunc(milestone_date) - trunc(completed_date) as day_delta,',
'    nvl(trunc(original_due_date), trunc(milestone_date)) - trunc(milestone_date) as original_due_delta,',
'    milestone_status,',
'    decode(nvl(is_major_yn,''N''),''N'',''No'',''Yes'') major,',
'    case when owner_role_id is null then',
'        eba_proj_fw.get_name_from_email_address(milestone_owner)',
'    else',
'        nvl((select r.name||'': ''||listagg(decode(u.first_name,null,eba_proj_fw.get_name_from_email_address(u.username),decode(u.last_name, null, eba_proj_fw.get_name_from_email_address(u.username), initcap(u.first_name || '' '' || u.last_name))),'', '')',
'                within group (order by lower(u.username)) owner',
'            from eba_proj_user_ref rf,',
'                eba_proj_status_users u,',
'                eba_proj_roles r',
'            where rf.role_id = m.owner_role_id',
'                and rf.project_id = m.project_id',
'                and u.id = rf.user_id',
'                and r.id = rf.role_id',
'            group by r.name',
'        ), (select ''No ''||r.name||'' defined''',
'            from eba_proj_roles r',
'            where r.id = m.owner_role_id)',
'        )',
'    end as milestone_owner',
'from eba_proj_status_ms m'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(19381671469480496451)
,p_name=>'Milestone Date Forecasting Accuracy'
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
,p_internal_uid=>18153194856785993323
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(19381671954145496459)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(19381672251319496460)
,p_db_column_name=>'EDIT_LINK'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Edit'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(19381672615207496461)
,p_db_column_name=>'PROJECT_ID'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Project Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(19381673072846496461)
,p_db_column_name=>'PROJECT'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Project'
,p_column_link=>'f?p=&APP_ID.:200:&SESSION.::&DEBUG.:RP,200,RIR:P200_ID:#PROJECT_ID#'
,p_column_linktext=>'#PROJECT#'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(19381673425974496462)
,p_db_column_name=>'MILESTONE_NAME'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Milestone'
,p_column_link=>'f?p=&APP_ID.:107:&SESSION.::&DEBUG.:RP,107:P107_ID,P107_PROJECT_ID:#ID#,#PROJECT_ID#'
,p_column_linktext=>'#MILESTONE_NAME#'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(19381674294146496464)
,p_db_column_name=>'ORIGINAL_DUE_DATE'
,p_display_order=>15
,p_column_identifier=>'G'
,p_column_label=>'Original Due Date'
,p_column_html_expression=>'<span style="white-space: pre;">#ORIGINAL_DUE_DATE#</span>'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'fmDD-MON-YYYY'
,p_tz_dependent=>'Y'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(19381673896786496464)
,p_db_column_name=>'MILESTONE_DATE'
,p_display_order=>25
,p_column_identifier=>'F'
,p_column_label=>'Due Date'
,p_column_html_expression=>'<span style="white-space: pre;">#MILESTONE_DATE#</span>'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'fmDD-MON-YYYY'
,p_tz_dependent=>'Y'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(19167488142834858466)
,p_db_column_name=>'COMPLETION_DATE'
,p_display_order=>35
,p_column_identifier=>'L'
,p_column_label=>'Completion Date'
,p_column_html_expression=>'<span style="white-space: pre;">#COMPLETION_DATE#</span>'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'fmDD-MON-YYYY'
,p_tz_dependent=>'Y'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(19381674664634496466)
,p_db_column_name=>'DAY_DELTA'
,p_display_order=>45
,p_column_identifier=>'H'
,p_column_label=>'Due to Completion Delta'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(19381675093506496467)
,p_db_column_name=>'MILESTONE_STATUS'
,p_display_order=>55
,p_column_identifier=>'I'
,p_column_label=>'Milestone Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(19381675425429496467)
,p_db_column_name=>'MAJOR'
,p_display_order=>65
,p_column_identifier=>'J'
,p_column_label=>'Major'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(19381675857478496467)
,p_db_column_name=>'MILESTONE_OWNER'
,p_display_order=>75
,p_column_identifier=>'K'
,p_column_label=>'Milestone Owner'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18937125906030941834)
,p_db_column_name=>'CHANGE_HISTORY'
,p_display_order=>85
,p_column_identifier=>'M'
,p_column_label=>'Change History'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(19313139034536735036)
,p_db_column_name=>'ACTUAL_COMPLETION_DATE'
,p_display_order=>95
,p_column_identifier=>'N'
,p_column_label=>'Marked as Completed On'
,p_column_html_expression=>'<span style="white-space: pre;">#ACTUAL_COMPLETION_DATE#</span>'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'fmDD-MON-YYYY'
,p_tz_dependent=>'Y'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(19313139223233735038)
,p_db_column_name=>'MILESTONE_START_DATE'
,p_display_order=>105
,p_column_identifier=>'O'
,p_column_label=>'Start Date'
,p_column_html_expression=>'<span style="white-space: pre;">#MILESTONE_START_DATE#</span>'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'fmDD-MON-YYYY'
,p_tz_dependent=>'Y'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(19313141325362735059)
,p_db_column_name=>'ORIGINAL_DAY_DELTA'
,p_display_order=>115
,p_column_identifier=>'P'
,p_column_label=>'Original Due to Completion Delta'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(19850570441923020741)
,p_db_column_name=>'ORIGINAL_DUE_DELTA'
,p_display_order=>135
,p_column_identifier=>'R'
,p_column_label=>'Original Due to Due Date Delta'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(19850570560340020742)
,p_db_column_name=>'PERCENT_COMPLETE'
,p_display_order=>145
,p_column_identifier=>'S'
,p_column_label=>'Percent Complete'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(19850570664592020743)
,p_db_column_name=>'PAST_DUE_YN'
,p_display_order=>155
,p_column_identifier=>'T'
,p_column_label=>'Past Due'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_api.id(9019252630556871632)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(20233639707281250540)
,p_db_column_name=>'PROJECT_STATUS'
,p_display_order=>165
,p_column_identifier=>'U'
,p_column_label=>'Project Status'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_api.id(9025721939150772116)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(19381679604961497270)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'181532030'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>1000
,p_report_columns=>'PROJECT:PROJECT_STATUS:MILESTONE_NAME:MILESTONE_STATUS:MAJOR:MILESTONE_OWNER:MILESTONE_START_DATE:ORIGINAL_DUE_DATE:MILESTONE_DATE:ORIGINAL_DUE_DELTA:COMPLETION_DATE:ACTUAL_COMPLETION_DATE:DAY_DELTA:CHANGE_HISTORY:PERCENT_COMPLETE:PAST_DUE_YN:'
,p_break_on=>'PROJECT:PROJECT_STATUS:0:0:0:0'
,p_break_enabled_on=>'PROJECT:PROJECT_STATUS:0:0:0:0'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(19167488223608858467)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(19381671322653496451)
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
