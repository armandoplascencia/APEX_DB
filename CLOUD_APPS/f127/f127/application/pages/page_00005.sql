prompt --application/pages/page_00005
begin
--   Manifest
--     PAGE: 00005
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>127
,p_default_id_offset=>99999615750817235
,p_default_owner=>'MISO'
);
wwv_flow_api.create_page(
 p_id=>5
,p_user_interface_id=>wwv_flow_api.id(108707147906896472)
,p_tab_set=>'TS1'
,p_name=>'Detail Job'
,p_step_title=>'Manage Job'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'img.iconMedium {',
'  position: absolute;',
'  left: 0;',
'  top: 0;',
'  display: block;',
'  margin: 8px;',
'}',
'',
'img.iconMedium.success {',
'  background-position: -84px 0;',
'}',
'',
'img.iconMedium {',
'  width: 32px;',
'  height: 32px;',
'}',
'',
'img.iconSmall, img.iconPage, img.iconMini, img.iconMedium {',
'  background-image: url(''https://apex.oracle.com/i/apex_ui/apex_ui.png'');',
'  background-repeat: no-repeat;',
'  background-color: transparent;',
'}',
'',
'img {',
'  border: 0;',
'  margin: 0;',
'}',
'img {',
'  border: 0;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_nav_list_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'MISO'
,p_last_upd_yyyymmddhh24miss=>'20220228191955'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(66895456435244236253)
,p_plug_name=>'Detail Job'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(108699425023896457)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY_3'
,p_plug_display_condition_type=>'REQUEST_NOT_EQUAL_CONDITION'
,p_plug_display_when_condition=>'VIEW_LOGS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(66988770845064095918)
,p_name=>'Logs & predictions'
,p_template=>wwv_flow_api.id(108700844870896457)
,p_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'BODY_3'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null log_id',
',      job.job_name',
',      to_char(job.next_run_date, ''DD-MON-YYYY HH24:MI:SS'') schedule_time',
',      null start_time',
',      null end_time',
',      null duration',
',      null operation',
',      ''Queued'' status',
',      null additional_info',
'from   user_scheduler_jobs job',
'where  job.next_run_date is not null ',
'and    job.job_name = :P_SCHEDULER_JOB_ID',
'union',
'select log.log_id log_id',
',      log.job_name job_name',
',      to_char(run.REQ_START_DATE, ''DD-MON-YYYY HH24:MI:SS'') schedule_time',
',      to_char(run.ACTUAL_START_DATE, ''DD-MON-YYYY HH24:MI:SS'') start_time',
',      to_char(run.ACTUAL_START_DATE + run.RUN_DURATION , ''DD-MON-YYYY HH24:MI:SS'') end_time',
',      to_char(run.RUN_DURATION , ''HH24:MI:SS'') duration',
',      log.operation',
',      log.status',
',      run.additional_info',
'from   USER_SCHEDULER_JOB_LOG log',
',      USER_SCHEDULER_JOB_RUN_DETAILS run',
'where  log.log_id = run.log_id',
'and    log.job_name = :P_SCHEDULER_JOB_ID',
'order by START_TIME desc'))
,p_display_when_condition=>'VIEW_LOGS'
,p_display_condition_type=>'REQUEST_EQUALS_CONDITION'
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P_SCHEDULER_JOB_ID'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(66994129745092672979)
,p_query_num_rows=>30
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
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
 p_id=>wwv_flow_api.id(66988771138879095926)
,p_query_column_id=>1
,p_column_alias=>'LOG_ID'
,p_column_display_sequence=>1
,p_column_heading=>'Log ID'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(66988771221862095926)
,p_query_column_id=>2
,p_column_alias=>'JOB_NAME'
,p_column_display_sequence=>2
,p_column_heading=>'Job Name'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(66988771346536095926)
,p_query_column_id=>3
,p_column_alias=>'SCHEDULE_TIME'
,p_column_display_sequence=>3
,p_column_heading=>'Scheduled time'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(66988771435777095926)
,p_query_column_id=>4
,p_column_alias=>'START_TIME'
,p_column_display_sequence=>4
,p_column_heading=>'Start time'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(66988771538423095927)
,p_query_column_id=>5
,p_column_alias=>'END_TIME'
,p_column_display_sequence=>5
,p_column_heading=>'End time'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(66988771629915095927)
,p_query_column_id=>6
,p_column_alias=>'DURATION'
,p_column_display_sequence=>6
,p_column_heading=>'Duration'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(66988771740352095927)
,p_query_column_id=>7
,p_column_alias=>'OPERATION'
,p_column_display_sequence=>7
,p_column_heading=>'Operation'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(66988773821755095927)
,p_query_column_id=>8
,p_column_alias=>'STATUS'
,p_column_display_sequence=>8
,p_column_heading=>'Status'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(66988773928831095927)
,p_query_column_id=>9
,p_column_alias=>'ADDITIONAL_INFO'
,p_column_display_sequence=>9
,p_column_heading=>'Info'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(66999396828122298829)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(108698717312896456)
,p_plug_display_sequence=>1
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(64860993943814930958)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(64860991924438930935)
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(66895456839265236255)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(66895456435244236253)
,p_button_name=>'P_SCHEDULER_BUTTON_SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(108705435539896463)
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_condition=>'P_SCHEDULER_JOB_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(66895457240775236255)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(66895456435244236253)
,p_button_name=>'P_SCHEDULER_BUTTON_CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(108705435539896463)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.:5::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(67083181639659677442)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_api.id(66988770845064095918)
,p_button_name=>'P_SCHEDULER_BUTTON_CANCEL_LOGS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(108705435539896463)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.:::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(66895456621471236254)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(66895456435244236253)
,p_button_name=>'P_SCHEDULER_BUTTON_CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(108705435539896463)
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'P_SCHEDULER_JOB_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(66895457025028236255)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(66895456435244236253)
,p_button_name=>'P_SCHEDULER_BUTTON_DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(108705435539896463)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''P_SCHEDULER_BUTTON_DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P_SCHEDULER_JOB_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(66963857827120903732)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(66895456435244236253)
,p_button_name=>'P_SCHEDULER_BUTTON_ENABLE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(108705435539896463)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Activate'
,p_button_position=>'REGION_TEMPLATE_PREVIOUS'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'    l_return boolean := false;',
'begin ',
'    if :P_SCHEDULER_JOB_ID is not null then',
'        l_return := not at_scheduler.is_actief_job(p_job_name => :P_SCHEDULER_JOB_ID);',
'    end if;',
'    return l_return;',
'end;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(66965533124799666160)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_api.id(66895456435244236253)
,p_button_name=>'P_SCHEDULER_BUTTON_DISABLE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(108705435539896463)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Deactivate'
,p_button_position=>'REGION_TEMPLATE_PREVIOUS'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'    l_return boolean := false;',
'begin ',
'    if :P_SCHEDULER_JOB_ID is not null then',
'        l_return := at_scheduler.is_actief_job(p_job_name => :P_SCHEDULER_JOB_ID);',
'    end if;',
'    return l_return;',
'end;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(66895459536106236264)
,p_branch_action=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_branch_condition_type=>'REQUEST_IN_CONDITION'
,p_branch_condition=>'P_SCHEDULER_BUTTON_DELETE, P_SCHEDULER_BUTTON_SAVE, P_SCHEDULER_CHANGE_STATE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(66895457421280236256)
,p_name=>'P_SCHEDULER_JOB_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(66895456435244236253)
,p_prompt=>'ID'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(64860990517090930933)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(66895457642410236257)
,p_name=>'P_SCHEDULER_JOB_NAME'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(66895456435244236253)
,p_prompt=>'Name'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>50
,p_cMaxlength=>254
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(64860990632500930933)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(66895457833332236257)
,p_name=>'P_SCHEDULER_JOB_STARTDATE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(66895456435244236253)
,p_prompt=>'Start Date'
,p_format_mask=>'DD-MON-YYYY HH24:MI'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_cMaxlength=>9
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(64860990632500930933)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'MONTH_AND_YEAR'
,p_attribute_08=>'2020:2024'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(66895458020594236258)
,p_name=>'P_SCHEDULER_JOB_ACTION'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(66895456435244236253)
,p_prompt=>'Action'
,p_source_post_computation=>'UPPER(:P_SCHEDULER_JOB_ACTION)'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>50
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(64860990632500930933)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(66895458223982236258)
,p_name=>'P_SCHEDULER_JOB_COMMENTS'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(66895456435244236253)
,p_prompt=>'Comments'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>120
,p_cMaxlength=>255
,p_cHeight=>3
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(64860990632500930933)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(66895473833378267516)
,p_name=>'P_SCHEDULER_JOB_REPEAT'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(66895456435244236253)
,p_prompt=>'Repeat Interval'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(64860990517090930933)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(66897006516790518223)
,p_name=>'P_SCHEDULER_JOB_REPEAT_FREQ'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(66895456435244236253)
,p_prompt=>'Repeat'
,p_pre_element_text=>'<p>Specifies the frequency, or type of recurrences, and is the only mandatory: </p>'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Minutely,Daily,Hourly, Monthly,Weekly,Yearly'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(64860990517090930933)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(66897162622371826684)
,p_name=>'P_SCHEDULER_JOB_REPEAT_DAYS'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(66895456435244236253)
,p_pre_element_text=>'<p>Specifies the day or days of the week with reference to the frequency:</p>'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov=>'STATIC2:Monday;MON,Tuesday;TUE,Wednesday;WED,Thursday;THU,Friday;FRI,Saturday;SAT,Sunday;SUN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(64860990517090930933)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'3'
,p_attribute_02=>'VERTICAL'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(66897163738318834570)
,p_name=>'P_SCHEDULER_JOB_REPEAT_INTV'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(66895456435244236253)
,p_item_default=>'1'
,p_prompt=>'Repeat Interval'
,p_pre_element_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Specifies the interval associated with the specified frequency, such that an interval of 2 on minutely frequency</br>would cause the job to executie every other minutes, while an internal of 10 would cause it to executie</br>every 10 minutes. The '
||'allowable values are 1 to 999 with a default of 1.</p>',
'',
'Repeat every '))
,p_post_element_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
' minute(s) / hour(s) / day(s) / week / month',
''))
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>10
,p_cMaxlength=>20
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(64860990423712930933)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'interval:',
'minutely = minutes',
'hourly = hours',
'daily = days',
'weekly = week',
'monthly = month'))
,p_attribute_03=>'right'
,p_item_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'interval:',
'minutely = minutes',
'hourly = hours',
'daily = days',
'weekly = week',
'monthly = month'))
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(66897244135656926936)
,p_name=>'P_SCHEDULER_JOB_ENDDATE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(66895456435244236253)
,p_prompt=>'End Date'
,p_format_mask=>'DD-MON-YYYY HH24:MI'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_cMaxlength=>4000
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(108705019521896462)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(66953905228482842807)
,p_name=>'P_SCHEDULER_JOB_START_BY_HOUR'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(66895456435244236253)
,p_prompt=>'By Hour'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(64860990517090930933)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(67016744222771421255)
,p_name=>'P_SCHEDULER_JOB_STATUS'
,p_item_sequence=>35
,p_item_plug_id=>wwv_flow_api.id(66895456435244236253)
,p_prompt=>'Status'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_lov=>'STATIC:<span style="color: green">Active</span>;TRUE,<span style="color: red">Inactive</span>;FALSE'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>'P_SCHEDULER_JOB_ID'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_api.id(64860990517090930933)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'N'
,p_attribute_02=>'LOV'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(66941955128060301922)
,p_name=>'Calculate REPEAT_INTERVAL'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P_SCHEDULER_JOB_REPEAT_FREQ,P_SCHEDULER_JOB_REPEAT_DAYS,P_SCHEDULER_JOB_REPEAT_INTV'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(66941962640710301925)
,p_event_id=>wwv_flow_api.id(66941955128060301922)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P_SCHEDULER_JOB_REPEAT'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var repeat_interval = "";',
'',
'if ($v("P_SCHEDULER_JOB_REPEAT_FREQ").length > 0){',
'	repeat_interval = repeat_interval + "FREQ=" + $v("P_SCHEDULER_JOB_REPEAT_FREQ").trim().toUpperCase() + "; ";',
'}',
'',
'if ($v("P_SCHEDULER_JOB_REPEAT_DAYS").length > 0){',
'	repeat_interval = repeat_interval + "BYDAY=" + $v("P_SCHEDULER_JOB_REPEAT_DAYS").replace(/:/g, ",") + "; ";',
'}',
'',
'if ($v("P_SCHEDULER_JOB_REPEAT_INTV").length > 0 ){',
'	repeat_interval = repeat_interval + "interval=" + $v("P_SCHEDULER_JOB_REPEAT_INTV") + "; ";',
'}',
'$s("P_SCHEDULER_JOB_REPEAT",repeat_interval);',
''))
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(66895459040880236261)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Add job'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'    l_return boolean := true;',
'begin ',
'    l_return := at_scheduler.add_job (p_job_name => :P_SCHEDULER_JOB_NAME',
'                  , p_job_action => :P_SCHEDULER_JOB_ACTION',
'                  , p_start_date => to_date(:P_SCHEDULER_JOB_STARTDATE, ''DD-MON-YYYY HH24:MI'')',
'                  , p_repeat_interval => :P_SCHEDULER_JOB_REPEAT',
'                  , p_end_date => to_date(:P_SCHEDULER_JOB_ENDDATE, ''DD-MON-YYYY HH24:MI'')',
'                  , p_comments => :P_SCHEDULER_JOB_COMMENTS',
'                  );',
'    if l_return then',
'       :P_SCHEDULER_JOB_ID := :P_SCHEDULER_JOB_NAME; ',
'    end if;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Failed to add job. Please try again. '
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(66895456621471236254)
,p_process_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    return not at_scheduler.exists_job(:P_SCHEDULER_JOB_NAME);',
'end;'))
,p_process_when_type=>'FUNCTION_BODY'
,p_process_when2=>'PLSQL'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(66992886429320835629)
,p_process_sequence=>15
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Change job state'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    if :P_SCHEDULER_JOB_STATUS = ''TRUE'' then ',
'        at_scheduler.disable_job(p_job_name => :P_SCHEDULER_JOB_ID);',
'    else ',
'        at_scheduler.enable_job(p_job_name => :P_SCHEDULER_JOB_ID);',
'    end if;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Failed to modify the state of the job. Please try again later.'
,p_process_when=>'P_SCHEDULER_BUTTON_ENABLE, P_SCHEDULER_BUTTON_DISABLE, P_SCHEDULER_CHANGE_STATE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_process_success_message=>'Job state changed. Please check the status of the job.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(66895459230967236261)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Delete job'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    at_scheduler.remove_job(p_job_name  => :P_SCHEDULER_JOB_ID);',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Failed to remove program'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(66895457025028236255)
,p_process_when=>'P_SCHEDULER_JOB_ID'
,p_process_when_type=>'ITEM_IS_NOT_NULL'
,p_process_success_message=>'Program removed'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(66895458629812236260)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(66895457025028236255)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(67009099148375966922)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Update job'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'    l_return boolean := true;',
'    l_enable boolean := false;',
'begin',
'    l_enable := at_scheduler.is_actief_job(p_job_name => :P_SCHEDULER_JOB_NAME);',
'',
'    at_scheduler.remove_job(p_job_name => :P_SCHEDULER_JOB_ID);',
'    l_return := at_scheduler.add_job (p_job_name => :P_SCHEDULER_JOB_NAME',
'                  , p_job_action => :P_SCHEDULER_JOB_ACTION',
'                  , p_start_date => to_date(:P_SCHEDULER_JOB_STARTDATE, ''DD-MON-YYYY HH24:MI'')',
'                  , p_repeat_interval => :P_SCHEDULER_JOB_REPEAT',
'                  , p_end_date => to_date(:P_SCHEDULER_JOB_ENDDATE, ''DD-MON-YYYY HH24:MI'')',
'                  , p_enabled => l_enable',
'                  , p_comments => :P_SCHEDULER_JOB_COMMENTS',
'                  );',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Failed to update. Please try again.'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(66895456839265236255)
,p_process_success_message=>'Update successful'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(66895458819005236261)
,p_process_sequence=>40
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Row fetch from user_scheduler_jobs'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    array apex_application_global.vc_arr2;',
'    l_key varchar2(250) := null;',
'    l_value varchar2(250) := null;',
'    l_repeat_interval varchar2(250);',
'    l_delimiter_pos integer;',
'BEGIN',
'',
'    select job_name, job_action, to_char(start_date, ''DD-MON-YYYY HH24:MI''), repeat_interval, to_char(end_date, ''DD-MON-YYYY HH24:MI''), comments, enabled',
'    into   :P_SCHEDULER_JOB_NAME, :P_SCHEDULER_JOB_ACTION, :P_SCHEDULER_JOB_STARTDATE, :P_SCHEDULER_JOB_REPEAT, :P_SCHEDULER_JOB_ENDDATE, :P_SCHEDULER_JOB_COMMENTS, :P_SCHEDULER_JOB_STATUS',
'    from   user_scheduler_jobs',
'    where  job_name = :P_SCHEDULER_JOB_ID;',
'',
'    array  := apex_util.string_to_table(:P_SCHEDULER_JOB_REPEAT, '';'');',
'    for i in 1.. array.count loop',
'      --dbms_output.put_line(trim(array(i)));',
'      l_delimiter_pos := instr(trim(array(i)), ''='');',
'',
'      l_key := substr(trim(array(i)), 1, l_delimiter_pos - 1);',
'      l_value := substr(trim(array(i)), l_delimiter_pos + 1);',
'',
'      --dbms_output.put_line(l_key);',
'    ',
'      if l_key = ''FREQ'' then',
'         :P_SCHEDULER_JOB_REPEAT_FREQ := l_value;',
'         --dbms_output.put_line(l_value );',
'         null;',
'      end if;',
'',
'      if l_key = ''BYDAY'' then',
'         --dbms_output.put_line(l_value );',
'         :P_SCHEDULER_JOB_REPEAT_DAYS := replace(l_value, '','', '':'') ;',
'      end if;',
'    ',
'      if l_key = ''interval'' then',
'         --dbms_output.put_line(l_value );',
'         :P_SCHEDULER_JOB_REPEAT_INTV:= l_value;',
'         --null;',
'      end if;',
'',
'    end loop;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_when=>'P_SCHEDULER_JOB_ID'
,p_process_when_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_api.component_end;
end;
/
