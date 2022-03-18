prompt --application/pages/page_00085
begin
--   Manifest
--     PAGE: 00085
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
 p_id=>85
,p_user_interface_id=>wwv_flow_api.id(5783577205373975152)
,p_name=>'Push Milestones and Action Items'
,p_page_mode=>'MODAL'
,p_step_title=>'Push Milestones and Action Items'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(5956244298529599071)
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_step_template=>wwv_flow_api.id(6781101375889890768)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(7306166303644991446)
,p_dialog_attributes=>'resizable:true'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_last_upd_yyyymmddhh24miss=>'20190913125446'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(18082848714817466279)
,p_plug_name=>'button bar'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--noUI'
,p_plug_template=>wwv_flow_api.id(6781104860657890779)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(18082851181167466293)
,p_plug_name=>'Milestone'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--noBorder:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(6781115417665890803)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(18082866835006466309)
,p_plug_name=>'Additional Data'
,p_parent_plug_id=>wwv_flow_api.id(18082851181167466293)
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(6781111273838890791)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'from eba_proj_flex_registry',
'where flexible_table = ''EBA_PROJ_STATUS_MS''',
'    and active_yn = ''Y''',
'    and assigned_yn = ''Y''',
'    and eba_proj_fw.are_ms_ai_restricted( :APP_ID, :APP_USER, :P85_PROJECT_ID ) = ''N''',
'    and eba_proj_fw.template_lock_yn( :APP_ID, :APP_USER, p_milestone_id => :P85_ID ) = ''N'''))
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_required_patch=>wwv_flow_api.id(6252446509804687380)
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(17957892111456970157)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(18082848714817466279)
,p_button_name=>'NEXT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--gapLeft'
,p_button_template_id=>wwv_flow_api.id(6781134954745890861)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Next'
,p_button_position=>'BELOW_BOX'
,p_icon_css_classes=>'fa-chevron-right'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(18082849197292466287)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(18082848714817466279)
,p_button_name=>'CANCEL'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(6781135529450890864)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_execute_validations=>'N'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(18082878751241466347)
,p_branch_name=>'Go To Page &LAST_VIEW.'
,p_branch_action=>'f?p=&APP_ID.:&LAST_VIEW.:&SESSION.::&DEBUG.:RP::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(18082849197292466287)
,p_branch_sequence=>20
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(17957892660179970163)
,p_branch_name=>'Go to Confirmation'
,p_branch_action=>'f?p=&APP_ID.:87:&SESSION.::&DEBUG.:RP:P87_PROJECT_ID,P87_MS_ID,P87_ORIG_MILESTONE_DATE,P87_CASCADE_MS,P87_CASCADE_AI,P87_ORIG_MS_START_DATE,P87_DIFF_DAYS,P87_DATE_CHANGED:&P85_PROJECT_ID.,&P85_ID.,&P85_ORIG_MS_DUE_DATE.,&P85_CASCADE_MS.,&P85_CASCADE_AI.,&P85_ORIG_MS_START_DATE.,&P85_DIFF_DAYS.,&P85_DATE_CHANGED.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(17957892111456970157)
,p_branch_sequence=>30
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(4112885564524300500)
,p_name=>'P85_ORIG_MS_DUE_DATE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(18082851181167466293)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(4145549383732246164)
,p_name=>'P85_MAX_DPNDT_AI_DURATION'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(18082851181167466293)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(4145549632278246167)
,p_name=>'P85_DATE_CHANGED'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(18082851181167466293)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(17957891648785970153)
,p_name=>'P85_CASCADE_MS'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(18082851181167466293)
,p_item_default=>'Y'
,p_prompt=>'Milestones Cascade'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov=>'STATIC:Cascade to All Future Milestones;Y'
,p_grid_column=>2
,p_field_template=>wwv_flow_api.id(6899231875758612224)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'<p>If you would like the due dates of all future Milestones to be offset by the same number days that you are offsetting this Milestone, choose "Yes", otherwise, choose "No".</p>'
,p_attribute_01=>'1'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(17957891747161970154)
,p_name=>'P85_CASCADE_AI'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(18082851181167466293)
,p_item_default=>'Y'
,p_prompt=>'Action Items Cascade'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov=>'STATIC:Cascade to All Dependent Action Items;Y'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(6899231875758612224)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'<p>If you would like the due dates of all dependent Action Items for this and all other future Milestones in this project to be offset by the same number days that you are offsetting this Milestone, choose "Yes", otherwise, choose "No".</p>'
,p_attribute_01=>'1'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(17957891912862970156)
,p_name=>'P85_ORIG_MS_START_DATE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(18082851181167466293)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(17957893166003970168)
,p_name=>'P85_DIFF_DAYS'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(18082851181167466293)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18082851607863466294)
,p_name=>'P85_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(18082851181167466293)
,p_use_cache_before_default=>'NO'
,p_source=>'ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18082851959135466297)
,p_name=>'P85_PROJECT_ID'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(18082851181167466293)
,p_use_cache_before_default=>'NO'
,p_source=>'PROJECT_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18082853204096466300)
,p_name=>'P85_MILESTONE_DATE'
,p_is_required=>true
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(18082851181167466293)
,p_prompt=>'New Due Date'
,p_format_mask=>'DD-MON-YYYY'
,p_source=>'P85_ORIG_MS_START_DATE'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>64
,p_cMaxlength=>255
,p_read_only_when=>'eba_proj_fw.are_ms_ai_restricted( :APP_ID, :APP_USER, :P85_PROJECT_ID ) = ''Y'''
,p_read_only_when2=>'PLSQL'
,p_read_only_when_type=>'EXPRESSION'
,p_field_template=>wwv_flow_api.id(6781134744367890857)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18099576826835597530)
,p_name=>'P85_MILESTONE_START_DATE'
,p_is_required=>true
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(18082851181167466293)
,p_use_cache_before_default=>'NO'
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare d date;',
'begin',
'for c1 in (',
'select current_date x from dual) loop',
'   d := c1.x;',
'end loop;',
'return d;',
'end;'))
,p_item_default_type=>'FUNCTION_BODY'
,p_item_default_language=>'PLSQL'
,p_prompt=>'New Start Date'
,p_format_mask=>'DD-MON-YYYY'
,p_source=>'MILESTONE_START_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>64
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(6781134744367890857)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18120635904785266550)
,p_name=>'P85_MILESTONE_NAME'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(18082851181167466293)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Milestone'
,p_source=>'MILESTONE_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(6781134673650890856)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(18120636041510266552)
,p_computation_sequence=>20
,p_computation_item=>'P85_CASCADE_MS'
,p_computation_type=>'EXPRESSION'
,p_computation_language=>'PLSQL'
,p_computation=>'nvl(:P85_CASCADE_MS,''N'')'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(18120636117094266553)
,p_computation_sequence=>30
,p_computation_item=>'P85_CASCADE_AI'
,p_computation_type=>'EXPRESSION'
,p_computation_language=>'PLSQL'
,p_computation=>'nvl(:P85_CASCADE_AI,''N'')'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(18120636004188266551)
,p_computation_sequence=>10
,p_computation_item=>'P85_MILESTONE_NAME'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'QUERY'
,p_computation=>'select milestone_name from eba_proj_status_ms where id = :P85_ID;'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(4145549416164246165)
,p_computation_sequence=>20
,p_computation_item=>'P85_MAX_DPNDT_AI_DURATION'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'QUERY'
,p_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select max(trunc(a.DUE_DATE) - trunc(m.milestone_start_date)) md',
'from eba_proj_status_ais$ a, eba_proj_status_ms$ m',
'where a.milestone_id = m.id',
'    and m.id = :P85_ID'))
,p_computation_comment=>'select max(trunc(DUE_DATE)) - to_date(:P85_MILESTONE_START_DATE,''DD-MON-YYYY'') from eba_proj_status_ais$ where MILESTONE_ID = :P85_ID'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(18082874832993466338)
,p_validation_name=>'Due after start'
,p_validation_sequence=>10
,p_validation=>'to_date(:P85_MILESTONE_START_DATE) <= to_date(:P85_MILESTONE_DATE)'
,p_validation2=>'SQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>'Start date must not be after milestone due date.'
,p_associated_item=>wwv_flow_api.id(18082853204096466300)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(17957892161433970158)
,p_validation_name=>'Due Date Must be Different'
,p_validation_sequence=>20
,p_validation=>'to_date(:P85_MILESTONE_DATE) != to_date(:P85_ORIG_MILESTONE_DATE)'
,p_validation2=>'PLSQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>'The Milestone''s due date must be changed.'
,p_when_button_pressed=>wwv_flow_api.id(17957892111456970157)
,p_associated_item=>wwv_flow_api.id(18082853204096466300)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(4145549555759246166)
,p_validation_name=>'Duration Longer than longest dependent ai'
,p_validation_sequence=>30
,p_validation=>'(to_date(:P85_MILESTONE_DATE,''DD-MON-YYYY'') - to_date(:P85_MILESTONE_START_DATE,''DD-MON-YYYY'')) >= :P85_MAX_DPNDT_AI_DURATION'
,p_validation2=>'PLSQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>'You are trying to decrease the amount of time to accomplish this Milestone but there are dependent action items that will take longer to complete than the duration you''re trying to set. Please increase the amount of time for this Milestone to accommo'
||'date the current duration of its dependent action item(s).'
,p_when_button_pressed=>wwv_flow_api.id(17957892111456970157)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(4145549770767246168)
,p_validation_name=>'Dates Must Have Changed'
,p_validation_sequence=>40
,p_validation=>':P85_MILESTONE_START_DATE != :P85_ORIG_MS_START_DATE or :P85_MILESTONE_DATE != :P85_ORIG_MS_DUE_DATE'
,p_validation2=>'PLSQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>'You haven''t changed any dates. Please alter the date values before clicking the next button.'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(4112885648755300501)
,p_name=>'Calculate Days Diff on start change'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P85_MILESTONE_START_DATE,P85_MILESTONE_DATE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(4112885801856300502)
,p_event_id=>wwv_flow_api.id(4112885648755300501)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'   l_orig_start_date timestamp := to_timestamp(:P85_ORIG_MS_START_DATE,''DD-MON-YYYY HH24:MI'');',
'   l_new_start_date  timestamp := to_timestamp(:P85_MILESTONE_START_DATE,''DD-MON-YYYY HH24:MI'');',
'   l_orig_due_date   timestamp := to_timestamp(:P85_ORIG_MS_DUE_DATE,''DD-MON-YYYY HH24:MI'');',
'   l_new_due_date    timestamp := to_timestamp(:P85_MILESTONE_DATE,''DD-MON-YYYY HH24:MI'');',
'   l_diff_days       number;',
'   l_start_changed   boolean := false;',
'   l_due_changed     boolean := false;',
'   l_date_changed    varchar2(10);',
'begin',
'',
'    if l_new_start_date > l_orig_start_date then',
'        -- setting new start date to the future',
'        l_diff_days :=  eba_proj_dates.days_between( p_start => l_orig_start_date, p_end => l_new_start_date );',
'        l_start_changed := true;',
'    end if;',
'    if l_new_start_date < l_orig_start_date then',
'        -- setting new start date to the past',
'        l_diff_days :=  eba_proj_dates.days_between( p_start => l_new_start_date, p_end => l_orig_start_date ) * -1;',
'        l_start_changed := true;',
'    end if;',
'    if l_new_due_date > l_orig_due_date then',
'        -- setting new due date to the future',
'        l_diff_days :=  eba_proj_dates.days_between( p_start => l_orig_due_date, p_end => l_new_due_date );',
'        l_due_changed := true;',
'    end if;',
'    if l_new_due_date < l_orig_due_date then',
'        -- setting new due date to the past',
'        l_diff_days :=  eba_proj_dates.days_between( p_start => l_new_due_date, p_end => l_orig_due_date ) * -1;',
'        l_due_changed := true;',
'    end if;',
'    ',
'    if l_start_changed and l_due_changed then',
'        l_date_changed := ''BOTH'';',
'    elsif l_start_changed and not l_due_changed then',
'        l_date_changed := ''START'';',
'    elsif not l_start_changed and l_due_changed then',
'        l_date_changed := ''DUE'';',
'    end if;',
'    ',
'    :P85_DIFF_DAYS := l_diff_days;',
'    :P85_DATE_CHANGED := l_date_changed;',
'    ',
'end;'))
,p_attribute_02=>'P85_ORIG_MS_START_DATE,P85_MILESTONE_START_DATE,P85_ORIG_MS_DUE_DATE,P85_MILESTONE_DATE,P85_DATE_CHANGED'
,p_attribute_03=>'P85_DIFF_DAYS,P85_DATE_CHANGED'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(18082875127858466339)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from EBA_PROJ_STATUS_MS'
,p_attribute_02=>'EBA_PROJ_STATUS_MS'
,p_attribute_03=>'P85_ID'
,p_attribute_04=>'ID'
,p_attribute_11=>'I:U:D'
,p_process_error_message=>'Unable to fetch row.'
);
wwv_flow_api.component_end;
end;
/
