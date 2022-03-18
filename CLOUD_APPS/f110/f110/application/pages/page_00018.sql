prompt --application/pages/page_00018
begin
--   Manifest
--     PAGE: 00018
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>110
,p_default_id_offset=>101599614921830918
,p_default_owner=>'MISO'
);
wwv_flow_api.create_page(
 p_id=>18
,p_user_interface_id=>wwv_flow_api.id(14434115216807266717)
,p_name=>'Poll History'
,p_alias=>'POLL-HISTORY'
,p_page_mode=>'MODAL'
,p_step_title=>'Poll History'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(14008957981820441125)
,p_step_template=>wwv_flow_api.id(14690159074482251121)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(250464227793234829)
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'ALLAN'
,p_last_upd_yyyymmddhh24miss=>'20210301100152'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(33443417646304025402)
,p_name=>'History'
,p_region_name=>'HISTORY'
,p_template=>wwv_flow_api.id(14690171167000251156)
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#:t-Comments--chat'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select '''' comment_modifiers, ',
'    ''Question Update'' note_type,',
'    replace(initcap(replace(replace(f.column_name,''_ID'',null),''_'','' '')),chr(10),''<br>'') comment_text,',
'    '' changed from "''||f.old_value||''"'' attribute_1,',
'    '' to "''||f.new_value||''"'' attribute_2,',
'    '' '' attribute_3,',
'    '' '' attribute_4,',
'    lower(f.changed_by) user_name,',
'    apex_util.get_since(f.change_date) comment_date,',
'    '' '' link,',
'    null update_id,',
'    f.change_date,',
'    '''' actions,',
'    upper(',
'          decode(instr(replace(f.changed_by,''.'','' ''),'' ''),',
'                 0, ',
'                 substr(f.changed_by,1,2),',
'                 substr(f.changed_by,1,1)||substr(f.changed_by,instr(replace(f.changed_by,''.'','' ''),'' '')+1,1)',
'           )) user_icon',
'from eba_qpoll_history f,',
'    eba_qpoll_questions q',
'where f.table_name = ''QUESTIONS''',
'    and f.component_id = q.id',
'    and q.poll_id = :POLL_ID',
'    and ( f.column_name != ''QUESTION''',
'        or ( f.old_value is not null and f.new_value is not null ) )',
'union all',
'select  '''' comment_modifiers, ',
'    ''Question Added'' comment_type,',
'    replace(initcap(replace(replace(f.column_name,''_ID'',null),''_'','' '')),chr(10),''<br>'') comment_text,',
'    '' '' attribute_1,',
'    '' added "''||f.new_value||''"'' attribute_2,',
'    '' '' attribute_3,',
'    '' '' attribute_4,',
'    lower(f.changed_by) user_name,',
'    apex_util.get_since(f.change_date) comment_date,',
'    '' '' link,',
'    null update_id,',
'    f.change_date,',
'    '''' actions,',
'    upper(',
'          decode(instr(replace(f.changed_by,''.'','' ''),'' ''),',
'                 0, ',
'                 substr(f.changed_by,1,2),',
'                 substr(f.changed_by,1,1)||substr(f.changed_by,instr(replace(f.changed_by,''.'','' ''),'' '')+1,1)',
'           )) user_icon',
'from eba_qpoll_history f',
'where f.table_name = ''QUESTIONS''',
'    and f.poll_id = :POLL_ID',
'    and f.column_name = ''QUESTION''',
'    and f.old_value is null',
'union all',
'select '''' comment_modifiers, ',
'    ''Question Removed'' comment_type,',
'    replace(initcap(replace(replace(f.column_name,''_ID'',null),''_'','' '')),chr(10),''<br>'') comment_text,',
'    '' removed "''||f.old_value||''"'' attribute_1,',
'    '' '' attribute_2,',
'    '' '' attribute_3,',
'    '' '' attribute_4,',
'    lower(f.changed_by) user_name,',
'    apex_util.get_since(f.change_date) comment_date,',
'    '' '' link,',
'    null update_id,',
'    f.change_date,',
'    '''' actions,',
'    upper(',
'          decode(instr(replace(f.changed_by,''.'','' ''),'' ''),',
'                 0, ',
'                 substr(f.changed_by,1,2),',
'                 substr(f.changed_by,1,1)||substr(f.changed_by,instr(replace(f.changed_by,''.'','' ''),'' '')+1,1)',
'           )) user_icon',
'from eba_qpoll_history f',
'where f.table_name = ''QUESTIONS''',
'    and f.poll_id = :POLL_ID',
'    and f.column_name = ''QUESTION''',
'    and f.new_value is null',
'order by 12 desc'))
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from eba_qpoll_history f',
'where f.table_name = ''QUESTIONS''',
'    and f.poll_id = :POLL_ID',
'    and f.column_name = ''QUESTION'''))
,p_display_condition_type=>'EXISTS'
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(14690179275520251174)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_no_data_found=>'No history found.'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
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
 p_id=>wwv_flow_api.id(804551962964104471)
,p_query_column_id=>1
,p_column_alias=>'COMMENT_MODIFIERS'
,p_column_display_sequence=>9
,p_column_heading=>'Comment Modifiers'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(804552348487104471)
,p_query_column_id=>2
,p_column_alias=>'NOTE_TYPE'
,p_column_display_sequence=>1
,p_column_heading=>'NOTE_TYPE'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(804552743361104472)
,p_query_column_id=>3
,p_column_alias=>'COMMENT_TEXT'
,p_column_display_sequence=>10
,p_column_heading=>'Comment Text'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(804553134487104472)
,p_query_column_id=>4
,p_column_alias=>'ATTRIBUTE_1'
,p_column_display_sequence=>2
,p_column_heading=>'ATTRIBUTE_1'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(804553542115104473)
,p_query_column_id=>5
,p_column_alias=>'ATTRIBUTE_2'
,p_column_display_sequence=>4
,p_column_heading=>'ATTRIBUTE_2'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(804553937953104479)
,p_query_column_id=>6
,p_column_alias=>'ATTRIBUTE_3'
,p_column_display_sequence=>3
,p_column_heading=>'ATTRIBUTE_3'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(804554340842104480)
,p_query_column_id=>7
,p_column_alias=>'ATTRIBUTE_4'
,p_column_display_sequence=>5
,p_column_heading=>'ATTRIBUTE_4'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(804554786071104480)
,p_query_column_id=>8
,p_column_alias=>'USER_NAME'
,p_column_display_sequence=>11
,p_column_heading=>'User Name'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(804555144174104480)
,p_query_column_id=>9
,p_column_alias=>'COMMENT_DATE'
,p_column_display_sequence=>12
,p_column_heading=>'Comment Date'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(804555534309104481)
,p_query_column_id=>10
,p_column_alias=>'LINK'
,p_column_display_sequence=>6
,p_column_heading=>'LINK'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(804555989623104482)
,p_query_column_id=>11
,p_column_alias=>'UPDATE_ID'
,p_column_display_sequence=>7
,p_column_heading=>'UPDATE_ID'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(804556408508104482)
,p_query_column_id=>12
,p_column_alias=>'CHANGE_DATE'
,p_column_display_sequence=>8
,p_column_heading=>'CHANGE_DATE'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(804556775693104482)
,p_query_column_id=>13
,p_column_alias=>'ACTIONS'
,p_column_display_sequence=>13
,p_column_heading=>'Actions'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(804557170400104483)
,p_query_column_id=>14
,p_column_alias=>'USER_ICON'
,p_column_display_sequence=>14
,p_column_heading=>'User Icon'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(48271821240255268530)
,p_name=>'Change History'
,p_region_name=>'change_history'
,p_template=>wwv_flow_api.id(14690160537466251126)
,p_display_sequence=>30
,p_icon_css_classes=>'fa-clock-o'
,p_region_template_options=>'#DEFAULT#:t-Alert--horizontal:t-Alert--customIcons:t-Alert--info:t-Alert--accessibleHeading'
,p_component_template_options=>'#DEFAULT#:t-AVPList--leftAligned'
,p_new_grid_row=>false
,p_new_grid_column=>false
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select    ',
'    lower(created_by) || '' (''||apex_util.get_since(created)||'')'' CREATED,',
'    lower(updated_by) || '' (''||apex_util.get_since(UPDATED)||'')'' updated',
'from EBA_QPOLL_POLLS q',
'where id = :POLL_ID',
'order by 1'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(14690181106332251182)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_no_data_found=>'no data found'
,p_query_row_count_max=>500
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(804783458478460470)
,p_query_column_id=>1
,p_column_alias=>'CREATED'
,p_column_display_sequence=>1
,p_column_heading=>'Created'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(804783855655460470)
,p_query_column_id=>2
,p_column_alias=>'UPDATED'
,p_column_display_sequence=>2
,p_column_heading=>'Updated'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.component_end;
end;
/
