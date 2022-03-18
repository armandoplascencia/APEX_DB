prompt --application/pages/page_00013
begin
--   Manifest
--     PAGE: 00013
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>125
,p_default_id_offset=>0
,p_default_owner=>'MISO'
);
wwv_flow_api.create_page(
 p_id=>13
,p_user_interface_id=>wwv_flow_api.id(99009173200118681)
,p_name=>'Jobs'
,p_alias=>'JOBS'
,p_step_title=>'Jobs'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'span.SUCCEEDED, span.Active {',
'color: #fff;',
'background-color: #4ec625;',
'border-color: #4cae4c;',
'}',
'',
'span.FAILED, span.Inactive {',
'color: #fff;',
'background-color: #c5254d;',
'border-color: #4cae4c;',
'}',
'',
'span.notify {',
'border-radius: 3px;',
'padding: 2px 4px;',
'font-size: 90%;',
'font-family: Menlo,Monaco,Consolas,"Courier New",monospace;',
'margin-bottom: 5px;',
'white-space: nowrap;',
'vertical-align: middle;',
'position: relative;',
'top: -1px;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'MISO'
,p_last_upd_yyyymmddhh24miss=>'20220221081001'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(67157141853967566344)
,p_name=>'My Jobs'
,p_template=>wwv_flow_api.id(98884820846118585)
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'BODY_3'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select job.job_name',
',      job.job_action',
',      job.start_date',
',      job.end_date',
',      prev_run.status previous_run_status',
',      prev_run.previous_run_date previous_run_date',
',      job.next_run_date',
',      job.repeat_interval',
'--,      job.enabled status',
',      decode(job.enabled, ''TRUE'', ''Active'', ''Inactive'') status',
',      job.enabled status_raw',
',      job.comments',
',      1 action_run',
',      null action_edit',
',      null action_stats',
',      1 action_remove',
'from   user_scheduler_jobs job',
',      (select run.job_name, run.status, run.actual_start_date previous_run_date',
'        from   user_scheduler_job_run_details run',
'        where  (run.job_name, run.actual_start_date) in (',
'           select run_max.job_name, max(run_max.actual_start_date)',
'           from   user_scheduler_job_run_details run_max',
'           group by run_max.job_name)) prev_run',
'where  job.job_name = prev_run.job_name (+)',
'order by job.enabled desc, job.job_name'))
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(98931476185118613)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'  '
,p_query_break_cols=>'0'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(100003585506861825)
,p_query_column_id=>1
,p_column_alias=>'JOB_NAME'
,p_column_display_sequence=>1
,p_column_heading=>'Job name'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(100003947342861826)
,p_query_column_id=>2
,p_column_alias=>'JOB_ACTION'
,p_column_display_sequence=>3
,p_column_heading=>'Job action'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(100004343066861827)
,p_query_column_id=>3
,p_column_alias=>'START_DATE'
,p_column_display_sequence=>4
,p_column_heading=>'Start date'
,p_use_as_row_header=>'N'
,p_column_format=>'DD-MON-YYYY HH24:MI'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(100004754371861827)
,p_query_column_id=>4
,p_column_alias=>'END_DATE'
,p_column_display_sequence=>5
,p_column_heading=>'End date'
,p_use_as_row_header=>'N'
,p_column_format=>'DD-MON-YYYY HH24:MI'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(100005174817861827)
,p_query_column_id=>5
,p_column_alias=>'PREVIOUS_RUN_STATUS'
,p_column_display_sequence=>8
,p_column_heading=>'Previous run status'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(100005586244861828)
,p_query_column_id=>6
,p_column_alias=>'PREVIOUS_RUN_DATE'
,p_column_display_sequence=>6
,p_column_heading=>'Previous run date'
,p_use_as_row_header=>'N'
,p_column_format=>'DD-MON-YYYY HH24:MI'
,p_column_html_expression=>'#PREVIOUS_RUN_DATE# <span class="notify #PREVIOUS_RUN_STATUS#">#PREVIOUS_RUN_STATUS#</span>'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(100005956705861828)
,p_query_column_id=>7
,p_column_alias=>'NEXT_RUN_DATE'
,p_column_display_sequence=>7
,p_column_heading=>'Next run date'
,p_use_as_row_header=>'N'
,p_column_format=>'DD-MON-YYYY HH24:MI'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(100006327709861828)
,p_query_column_id=>8
,p_column_alias=>'REPEAT_INTERVAL'
,p_column_display_sequence=>2
,p_column_heading=>'Repeat interval'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(100006785406861828)
,p_query_column_id=>9
,p_column_alias=>'STATUS'
,p_column_display_sequence=>9
,p_column_heading=>'Status'
,p_use_as_row_header=>'N'
,p_column_html_expression=>'<span class="notify #STATUS#">#STATUS#</span>'
,p_heading_alignment=>'LEFT'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(100007131769861829)
,p_query_column_id=>10
,p_column_alias=>'STATUS_RAW'
,p_column_display_sequence=>10
,p_column_heading=>'STATUS_RAW'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(100007559897861829)
,p_query_column_id=>11
,p_column_alias=>'COMMENTS'
,p_column_display_sequence=>11
,p_column_heading=>'COMMENTS'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(100007996138861829)
,p_query_column_id=>12
,p_column_alias=>'ACTION_RUN'
,p_column_display_sequence=>12
,p_use_as_row_header=>'N'
,p_column_link=>'javascript:;'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#menu/jtfunexe_16x16.gif">'
,p_column_link_attr=>'class="run_job" data-job-id="#JOB_NAME#" alt="Run once"'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(100008347054861830)
,p_query_column_id=>13
,p_column_alias=>'ACTION_EDIT'
,p_column_display_sequence=>13
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.::P_SCHEDULER_JOB_ID:#JOB_NAME#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#e2.gif" alt="">'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(100008775431861830)
,p_query_column_id=>14
,p_column_alias=>'ACTION_STATS'
,p_column_display_sequence=>14
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:5:&SESSION.:VIEW_LOGS:&DEBUG.::P_SCHEDULER_JOB_ID:#JOB_NAME#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#flashlight2_trans.gif" alt="">'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(100009110269861830)
,p_query_column_id=>15
,p_column_alias=>'ACTION_REMOVE'
,p_column_display_sequence=>15
,p_use_as_row_header=>'N'
,p_column_link=>'javascript:;'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#red_x_16.png" alt="">'
,p_column_link_attr=>'class="remove_job" data-job-id="#JOB_NAME#"'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(100009533311861830)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(67157141853967566344)
,p_button_name=>'P_SCHEDULER_BUTTON_CREATE_JOB'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(98984658212118650)
,p_button_image_alt=>'Create New Job'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.:5::'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(100009944029861831)
,p_name=>'13_P_SCHEDULER_ACTION_JOB_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(67157141853967566344)
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(100010636402861839)
,p_name=>'Remove job'
,p_event_sequence=>10
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.remove_job'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(100011161603861840)
,p_event_id=>wwv_flow_api.id(100010636402861839)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'Would you like to perform this delete action?'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(100011661352861841)
,p_event_id=>wwv_flow_api.id(100010636402861839)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P_SCHEDULER_ACTION_JOB_ID'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'$(this.triggeringElement).attr(''data-job-id'')'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(100012163390861841)
,p_event_id=>wwv_flow_api.id(100010636402861839)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    at_scheduler.remove_job(p_job_name  => :P_SCHEDULER_ACTION_JOB_ID);',
'end;'))
,p_attribute_02=>'P_SCHEDULER_ACTION_JOB_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'N'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(100012616225861842)
,p_event_id=>wwv_flow_api.id(100010636402861839)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(67157141853967566344)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(100013019268861842)
,p_name=>'Run job'
,p_event_sequence=>20
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.run_job'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(100013567139861842)
,p_event_id=>wwv_flow_api.id(100013019268861842)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'Are you sure you want to run this job just for one time?'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(100014090423861842)
,p_event_id=>wwv_flow_api.id(100013019268861842)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P_SCHEDULER_ACTION_JOB_ID'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'$(this.triggeringElement).attr(''data-job-id'')'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(100014530147861843)
,p_event_id=>wwv_flow_api.id(100013019268861842)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    at_scheduler.execute_job(p_job_name  => :P_SCHEDULER_ACTION_JOB_ID);',
'end;'))
,p_attribute_02=>'P_SCHEDULER_ACTION_JOB_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(100015088272861845)
,p_event_id=>wwv_flow_api.id(100013019268861842)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(67157141853967566344)
);
wwv_flow_api.component_end;
end;
/
