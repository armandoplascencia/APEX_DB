prompt --application/pages/page_00024
begin
--   Manifest
--     PAGE: 00024
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
 p_id=>24
,p_user_interface_id=>wwv_flow_api.id(14434115216807266717)
,p_name=>'Details'
,p_alias=>'POLL-DETAILS1'
,p_page_mode=>'MODAL'
,p_step_title=>'Details'
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
,p_last_upd_yyyymmddhh24miss=>'20210518153349'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(15751890661401297781)
,p_name=>'Details'
,p_template=>wwv_flow_api.id(14690171167000251156)
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader:t-Region--noBorder:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-AVPList--leftAligned:t-Report--hideNoPagination'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    ID,',
'    ROW_KEY,',
'    poll_name || '' - ''|| row_key ||',
'       case when poll_or_quiz = ''Q''',
'            then '' (''||apex_lang.message(''QUIZ_INITCAP'')||'')'' ',
'            end POLL_NAME,',
'    POLL_DETAILS,',
'    STATUS_ID,',
'    status_id poll_status,',
'    p.use_sections_yn,',
'    p.authentication_req_yn,',
'    p.invite_only_yn,',
'    p.ANONYMOUS_YN,',
'    p.can_update_answers_yn,',
'    case when p.score_type in (''C'',''A'') and p.enable_score_yn = ''Y'' then apex_lang.message(''SCORE_''||p.score_type) end score_type,',
'    p.ALL_VIEW_RESULTS_YN,',
'    p.START_TIME,',
'    p.STOP_TIME,',
'    null take_url',
'from EBA_QPOLL_POLLS p',
'where p.id = :POLL_ID'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(14690181106332251182)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_no_data_found=>'no data found'
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
 p_id=>wwv_flow_api.id(728166925799467234)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>14
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(728167047991467235)
,p_query_column_id=>2
,p_column_alias=>'ROW_KEY'
,p_column_display_sequence=>15
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(728167149065467236)
,p_query_column_id=>3
,p_column_alias=>'POLL_NAME'
,p_column_display_sequence=>1
,p_column_heading=>'Poll Name'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(728167294587467237)
,p_query_column_id=>4
,p_column_alias=>'POLL_DETAILS'
,p_column_display_sequence=>3
,p_column_heading=>'Poll Details'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(728167396441467238)
,p_query_column_id=>5
,p_column_alias=>'STATUS_ID'
,p_column_display_sequence=>16
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(728167453287467239)
,p_query_column_id=>6
,p_column_alias=>'POLL_STATUS'
,p_column_display_sequence=>2
,p_column_heading=>'Poll Status'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_api.id(315066277989730098)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(804579987808132861)
,p_query_column_id=>7
,p_column_alias=>'USE_SECTIONS_YN'
,p_column_display_sequence=>4
,p_column_heading=>'Use Sections'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from eba_qpoll_polls',
' where id = :POLL_ID',
'   and use_sections_yn = ''Y'''))
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_api.id(14019794485937333448)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(804580356969132861)
,p_query_column_id=>8
,p_column_alias=>'AUTHENTICATION_REQ_YN'
,p_column_display_sequence=>5
,p_column_heading=>'Login Required'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_api.id(16164232820407773274)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(804580769544132861)
,p_query_column_id=>9
,p_column_alias=>'INVITE_ONLY_YN'
,p_column_display_sequence=>6
,p_column_heading=>'Invite Only'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_api.id(14019794485937333448)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(804581205430132862)
,p_query_column_id=>10
,p_column_alias=>'ANONYMOUS_YN'
,p_column_display_sequence=>7
,p_column_heading=>'Anonymize'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from eba_qpoll_polls',
' where id = :POLL_ID',
'   and anonymous_yn = ''Y'''))
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_api.id(16164232820407773274)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(804581599953132862)
,p_query_column_id=>11
,p_column_alias=>'CAN_UPDATE_ANSWERS_YN'
,p_column_display_sequence=>8
,p_column_heading=>'Can Update Answers'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from eba_qpoll_polls',
' where id = :POLL_ID',
'   and authentication_req_yn = ''Y'''))
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_api.id(16164232820407773274)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(804582014081132862)
,p_query_column_id=>12
,p_column_alias=>'SCORE_TYPE'
,p_column_display_sequence=>10
,p_column_heading=>'Score Type'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 ',
'from EBA_QPOLL_POLLS',
'where id = :POLL_ID',
'  and score_type in (''C'',''A'')',
'  and enable_score_yn = ''Y'''))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(804582357144132863)
,p_query_column_id=>13
,p_column_alias=>'ALL_VIEW_RESULTS_YN'
,p_column_display_sequence=>9
,p_column_heading=>'Invitees View Results'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_api.id(16164232820407773274)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(804582775910132863)
,p_query_column_id=>14
,p_column_alias=>'START_TIME'
,p_column_display_sequence=>11
,p_column_heading=>'Started'
,p_use_as_row_header=>'N'
,p_column_format=>'SINCE'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from eba_qpoll_polls',
' where id = :POLL_ID',
'   and START_TIME is not null',
'   and status_id in (3,4)'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(804583195847132863)
,p_query_column_id=>15
,p_column_alias=>'STOP_TIME'
,p_column_display_sequence=>12
,p_column_heading=>'Ended'
,p_use_as_row_header=>'N'
,p_column_format=>'SINCE'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from eba_qpoll_polls',
' where id = :POLL_ID',
'   and status_id = 4',
'   and STOP_TIME is not null'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(804583606209132863)
,p_query_column_id=>16
,p_column_alias=>'TAKE_URL'
,p_column_display_sequence=>13
,p_column_heading=>'Poll URL'
,p_use_as_row_header=>'N'
,p_column_html_expression=>'&P24_TAKE_URL.'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from EBA_QPOLL_POLLS p',
'where id = :POLL_ID',
'and status_id in (2,3)'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(108125536872357254)
,p_name=>'P24_TAKE_URL'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(15751890661401297781)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(108125659645357255)
,p_computation_sequence=>10
,p_computation_item=>'P24_TAKE_URL'
,p_computation_point=>'AFTER_HEADER'
,p_computation_type=>'FUNCTION_BODY'
,p_computation_language=>'PLSQL'
,p_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'for c1 in (',
'   select authentication_req_yn',
'     from eba_qpoll_polls',
'    where id = :POLL_ID',
') loop',
'   if c1.authentication_req_yn = ''N'' then ',
'      return ''This poll is not authenticated thus each invitee gets a unique URL'';',
'   else',
'      return :APP_PATH||apex_util.prepare_url(p_url => ''f?p=''||:APP_ID||'':500:0::::LPOLL_ID:''||:POLL_ID,',
'                                               p_checksum_type => ''1'',',
'                                               p_plain_url => TRUE);',
'   end if;',
'end loop;'))
);
wwv_flow_api.component_end;
end;
/
