prompt --application/pages/page_00134
begin
--   Manifest
--     PAGE: 00134
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
 p_id=>134
,p_user_interface_id=>wwv_flow_api.id(5783577205373975152)
,p_name=>'Email Project Statuses Send Job'
,p_page_mode=>'MODAL'
,p_step_title=>'Email Project Statuses Send Job'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(5956243783292594674)
,p_page_template_options=>'#DEFAULT#:t-Dialog--noPadding'
,p_required_role=>wwv_flow_api.id(7306165779537991444)
,p_required_patch=>wwv_flow_api.id(18632926167418630398)
,p_protection_level=>'C'
,p_help_text=>'<p>This job sends a "Project Status" email every <a href="f?p=&APP_ID.:57:&APP_SESSION.:">workday</a> to application users who have opted to receive these emails. Based on the user''s email preferences, this job can send "Project Status" emails for al'
||'l accessible open projects, open accessible projects that the user is following, open accessible projects that the user is a member of, or open accessible projects that the user is following AND is a member of. This job respects the user''s "Project S'
||'tatus Schedule" email preference, meaning that just because this job runs daily, end-users will only be sent emails based on the schedule that they''ve defined in their "Project Status Schedule" email preference (Quarterly, Monthly, Bi-Monthly, Weekly'
||' or Daily). This job can be enabled or disabled, click status to change status.</p>'
,p_last_upd_yyyymmddhh24miss=>'20190905151222'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(18632034998681393311)
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
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(18632036421235393319)
,p_name=>'Job History'
,p_template=>wwv_flow_api.id(6781111273838890791)
,p_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:is-collapsed:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight:t-Report--inline'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select status, actual_start_date, run_duration, errors',
'from user_scheduler_job_run_details',
'where job_name = ''EBA_PROJ_EMAIL_STATUS_JOB''',
'order by actual_start_date desc'))
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'from user_scheduler_job_run_details',
'where job_name = ''EBA_PROJ_EMAIL_STATUS_JOB'''))
,p_display_condition_type=>'EXISTS'
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(6781122235480890822)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18632036995537393325)
,p_query_column_id=>1
,p_column_alias=>'STATUS'
,p_column_display_sequence=>1
,p_column_heading=>'Status'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18632037411983393326)
,p_query_column_id=>2
,p_column_alias=>'ACTUAL_START_DATE'
,p_column_display_sequence=>2
,p_column_heading=>'Start Date'
,p_use_as_row_header=>'N'
,p_column_format=>'Since'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18632037797464393327)
,p_query_column_id=>3
,p_column_alias=>'RUN_DURATION'
,p_column_display_sequence=>3
,p_column_heading=>'Duration'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G999G999G990'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18632038211984393327)
,p_query_column_id=>4
,p_column_alias=>'ERRORS'
,p_column_display_sequence=>4
,p_column_heading=>'Errors'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(18632038525055393328)
,p_name=>'Email Project Statuses Send Job'
,p_template=>wwv_flow_api.id(6781104626075890777)
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight:t-Report--inline'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    ''Email '' ||  initcap(replace(replace(job_name, ''EBA_PROJ_EMAIL'', ''Project''), ''_'', '' '')) as job,',
'    case when enabled = ''TRUE'' then ''Enabled'' else ''Disabled'' end as status,',
'    job_name,',
'    comments,',
'    last_start_date,',
'    next_run_date,',
'    case',
'        when repeat_interval = ''freq=monthly; bymonth=1,4,7,10; byday=1mon; byhour=8; byminute=0; bysecond=0;'' then',
'            ''Quarterly''',
'        when repeat_interval = ''freq=monthly; bymonthday=15,-1; byhour=8; byminute=0; bysecond=0;'' then',
'            ''Bi-Monthly''',
'        when repeat_interval = ''freq=monthly; byday=1mon; byhour=8; byminute=0; bysecond=0;'' then',
'            ''Monthly''',
'        when repeat_interval = ''freq=weekly; byday=mon; byhour=8; byminute=0; bysecond=0;'' then',
'            ''Weekly''',
'        when repeat_interval = ''freq=daily; byday='' || replace(replace(replace(replace(replace(replace(replace(replace(eba_proj_fw.get_preference_value(''WORKDAYS''),'':'','',''),''1'',''SUN''),''2'',''MON''),''3'',''TUE''),''4'',''WED''),''5'',''THU''),''6'',''FRI''),''7'',''SAT'') '
||'|| ''; byhour=8; byminute=0; bysecond=0;'' then',
'            ''Daily''',
'        when repeat_interval = ''freq=daily; byhour=8; byminute=0; bysecond=0;'' then',
'            ''Daily''',
'    end as schedule',
'from user_scheduler_jobs',
'where job_name = ''EBA_PROJ_EMAIL_STATUS_JOB'''))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(6781122235480890822)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18632040128868393331)
,p_query_column_id=>1
,p_column_alias=>'JOB'
,p_column_display_sequence=>2
,p_column_heading=>'Job'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18632040553844393331)
,p_query_column_id=>2
,p_column_alias=>'STATUS'
,p_column_display_sequence=>1
,p_column_heading=>'Status'
,p_column_link=>'f?p=&APP_ID.:168:&SESSION.::&DEBUG.:RP:P168_JOB_NAME,LAST_VIEW:#JOB_NAME#,&APP_PAGE_ID.'
,p_column_linktext=>'#STATUS#'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18632040948783393332)
,p_query_column_id=>3
,p_column_alias=>'JOB_NAME'
,p_column_display_sequence=>3
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18632038974683393329)
,p_query_column_id=>4
,p_column_alias=>'COMMENTS'
,p_column_display_sequence=>4
,p_column_heading=>'Description'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18632039376718393330)
,p_query_column_id=>5
,p_column_alias=>'LAST_START_DATE'
,p_column_display_sequence=>5
,p_column_heading=>'Last Run'
,p_use_as_row_header=>'N'
,p_column_format=>'Since'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'from user_scheduler_jobs',
'where job_name = ''EBA_PROJ_EMAIL_STATUS_JOB''',
'    and enabled = ''TRUE'''))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18632039720668393331)
,p_query_column_id=>6
,p_column_alias=>'NEXT_RUN_DATE'
,p_column_display_sequence=>6
,p_column_heading=>'Next Run'
,p_use_as_row_header=>'N'
,p_column_format=>'Since'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'from user_scheduler_jobs',
'where job_name = ''EBA_PROJ_EMAIL_STATUS_JOB''',
'    and enabled = ''TRUE'''))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18632041370958393333)
,p_query_column_id=>7
,p_column_alias=>'SCHEDULE'
,p_column_display_sequence=>7
,p_column_heading=>'Schedule'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(525985259624977557)
,p_name=>'Refresh on Edit'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(18632038525055393328)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(525985337812977558)
,p_event_id=>wwv_flow_api.id(525985259624977557)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(18632038525055393328)
);
wwv_flow_api.component_end;
end;
/
