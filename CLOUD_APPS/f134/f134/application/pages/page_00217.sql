prompt --application/pages/page_00217
begin
--   Manifest
--     PAGE: 00217
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
 p_id=>217
,p_user_interface_id=>wwv_flow_api.id(5783577205373975152)
,p_name=>'Preview My Updated Milestones'
,p_step_title=>'Preview My Updated Milestones'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(5956243988833596300)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(7306166303644991446)
,p_protection_level=>'C'
,p_help_text=>'<p>If everything looks good, click the <strong>Apply Changes</strong> button otherwise click the <strong>Cancel</strong> button.</p>'
,p_last_upd_yyyymmddhh24miss=>'20190906084925'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(20728278574436320246)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(6781115417665890803)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(8972392840601050532)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(6781135716305890867)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NEVER'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(20755225782890872610)
,p_name=>'Exceptions'
,p_template=>wwv_flow_api.id(6781115417665890803)
,p_display_sequence=>30
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody:t-Form--noPadding'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight:t-Report--inline'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    n001 as ms_id,',
'    c001 as milestone,',
'    c002 as action,',
'    c003 as old_value,',
'    c004 as new_value,',
'    c005 as project,',
'    c008 as error,',
'    c009 as close_option',
'from',
'    apex_collections',
'where',
'    collection_name = ''PREVIEW_MS''',
'and',
'    c008 is not null',
'order by 2'))
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    null',
'from',
'    apex_collections',
'where',
'    collection_name = ''PREVIEW_MS''',
'and',
'    c008 is not null'))
,p_display_condition_type=>'EXISTS'
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(6781122235480890822)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(20728278310576320243)
,p_query_column_id=>1
,p_column_alias=>'MS_ID'
,p_column_display_sequence=>7
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(20728278330094320244)
,p_query_column_id=>2
,p_column_alias=>'MILESTONE'
,p_column_display_sequence=>1
,p_column_heading=>'Milestone'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(20755228189744872617)
,p_query_column_id=>3
,p_column_alias=>'ACTION'
,p_column_display_sequence=>2
,p_column_heading=>'Action'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(20755228568967872617)
,p_query_column_id=>4
,p_column_alias=>'OLD_VALUE'
,p_column_display_sequence=>3
,p_column_heading=>'Old Value'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(20755228976929872618)
,p_query_column_id=>5
,p_column_alias=>'NEW_VALUE'
,p_column_display_sequence=>4
,p_column_heading=>'New Value'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(20755229338294872618)
,p_query_column_id=>6
,p_column_alias=>'PROJECT'
,p_column_display_sequence=>5
,p_column_heading=>'Project'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(20755226165865872613)
,p_query_column_id=>7
,p_column_alias=>'ERROR'
,p_column_display_sequence=>6
,p_column_heading=>'Error'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21157150447210596451)
,p_query_column_id=>8
,p_column_alias=>'CLOSE_OPTION'
,p_column_display_sequence=>8
,p_column_heading=>'Action'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(20755230113000872620)
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
 p_id=>wwv_flow_api.id(20755230933338872623)
,p_name=>'Updates'
,p_template=>wwv_flow_api.id(6781115417665890803)
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody:t-Form--noPadding'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight:t-Report--inline'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    n001 as ms_id,',
'    c001 as milestone,',
'    c002 as action,',
'    c003 as old_value,',
'    c004 as new_value,',
'    c005 as project,',
'    c006 as completed_date,',
'    eba_proj_fw.get_name_from_email_address(c007) as completed_by',
'from',
'    apex_collections',
'where',
'    collection_name = ''PREVIEW_MS''',
'and',
'    c008 is null',
'order by 2'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(6781122235480890822)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No updatable Action Item(s) found.'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(20728278210960320242)
,p_query_column_id=>1
,p_column_alias=>'MS_ID'
,p_column_display_sequence=>8
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(20728278432058320245)
,p_query_column_id=>2
,p_column_alias=>'MILESTONE'
,p_column_display_sequence=>1
,p_column_heading=>'Milestone'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(20755232919882872627)
,p_query_column_id=>3
,p_column_alias=>'ACTION'
,p_column_display_sequence=>2
,p_column_heading=>'Action'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(20755233326768872627)
,p_query_column_id=>4
,p_column_alias=>'OLD_VALUE'
,p_column_display_sequence=>3
,p_column_heading=>'Old Value'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(20755233739678872628)
,p_query_column_id=>5
,p_column_alias=>'NEW_VALUE'
,p_column_display_sequence=>4
,p_column_heading=>'New Value'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(20755234149401872628)
,p_query_column_id=>6
,p_column_alias=>'PROJECT'
,p_column_display_sequence=>5
,p_column_heading=>'Project'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(20755231409869872625)
,p_query_column_id=>7
,p_column_alias=>'COMPLETED_DATE'
,p_column_display_sequence=>6
,p_column_heading=>'Completed Date'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    null',
'from',
'    apex_collections',
'where',
'    collection_name = ''PREVIEW_AIS''',
'and',
'    c006 is not null'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(20755234591524872630)
,p_query_column_id=>8
,p_column_alias=>'COMPLETED_BY'
,p_column_display_sequence=>7
,p_column_heading=>'Completed By'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    null',
'from',
'    apex_collections',
'where',
'    collection_name = ''PREVIEW_AIS''',
'and',
'    c008 is not null'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(20755235271103872641)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(6212459901559585507)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(6781135529450890864)
,p_button_image_alt=>'Cancel'
,p_button_position=>'BELOW_BOX'
,p_button_redirect_url=>'f?p=&APP_ID.:215:&SESSION.::&DEBUG.:RP,215::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(20755235679858872643)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(6212459901559585507)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(6781135529450890864)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'BELOW_BOX'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(20755237797687872651)
,p_branch_action=>'f?p=&APP_ID.:194:&SESSION.::&DEBUG.:RP::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(20755230608327872620)
,p_name=>'P217_ACTION'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(20755230113000872620)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(20755236165408872645)
,p_computation_sequence=>10
,p_computation_item=>'P217_ACTION'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'QUERY'
,p_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    distinct c002 as action',
'from',
'    apex_collections',
'where',
'    collection_name = ''PREVIEW_MS'''))
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(20755236447586872646)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Update MS Statuses'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'for c1 in',
'(',
'    select',
'        n001 as ms_id,',
'        c004 as new_value,',
'        c006 as completed_date,',
'        c007 as completed_by',
'    from',
'        apex_collections',
'    where',
'        collection_name = ''PREVIEW_MS''',
'    and',
'        c008 is null',
')',
'loop',
'    if c1.new_value = ''Completed'' then',
'        update eba_proj_status_ms',
'           set milestone_status = c1.new_value,',
'               completed_date = c1.completed_date,',
'               completed_by = c1.completed_by',
'         where id = c1.ms_id;',
'    else',
'        update eba_proj_status_ms',
'           set milestone_status = c1.new_value',
'         where id = c1.ms_id;',
'    end if;',
'end loop;',
'',
'for i in 1..apex_application.g_f01.count',
'loop',
'    -- Close associated open action items',
'    for c1 in ( select id',
'                  from eba_proj_status_ais',
'                 where milestone_id = to_number(apex_application.g_f01(i))',
'                   and action_status != ''Closed''',
'              )',
'    loop',
'        if apex_application.g_f02(i) = ''Y'' then',
'            update eba_proj_status_ais',
'               set action_status = ''Closed'',',
'                   completed_date = :P215_NEW_COMPLETED_DATE',
'             where id = c1.id;',
'        end if;',
'    end loop;',
'    -- Now close Milestone',
'    if apex_application.g_f02(i) = ''Y'' then',
'        update eba_proj_status_ms',
'           set milestone_status = ''Completed'',',
'               completed_date = :P215_NEW_COMPLETED_DATE',
'         where id = to_number(apex_application.g_f01(i));',
'    end if;',
'end loop;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(20755235679858872643)
,p_process_when=>'P217_ACTION'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_process_when2=>'Change Status'
,p_process_success_message=>'Milestone status(es) updated accordingly.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(20755236844832872649)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Update MS Due Dates'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'for c1 in',
'(',
'    select',
'        n001 as ms_id,',
'        c004 as new_value',
'    from',
'        apex_collections',
'    where',
'        collection_name = ''PREVIEW_MS''',
'    and',
'        c008 is null',
')',
'loop',
'    update eba_proj_status_ms',
'       set milestone_date = to_date(c1.new_value,''DD-MON-YYYY'')',
'     where id = c1.ms_id;',
'end loop;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(20755235679858872643)
,p_process_when=>'P217_ACTION'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_process_when2=>'Change Due Date'
,p_process_success_message=>'Milestone due date(s) updated accordingly.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(20755237276627872649)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Update MS Types'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'for c1 in',
'(',
'    select',
'        n001 as ms_id,',
'        c004 as new_value',
'    from',
'        apex_collections',
'    where',
'        collection_name = ''PREVIEW_MS''',
'    and',
'        c008 is null',
')',
'loop',
'    update eba_proj_status_ms',
'       set is_major_yn = case when c1.new_value = ''Major'' then ''Y'' else ''N'' end',
'     where id = c1.ms_id;',
'end loop;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(20755235679858872643)
,p_process_when=>'P217_ACTION'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_process_when2=>'Change Type'
,p_process_success_message=>'Milestone type(s) updated accordingly.'
);
wwv_flow_api.component_end;
end;
/
