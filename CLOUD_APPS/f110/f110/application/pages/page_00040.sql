prompt --application/pages/page_00040
begin
--   Manifest
--     PAGE: 00040
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
 p_id=>40
,p_user_interface_id=>wwv_flow_api.id(14434115216807266717)
,p_name=>'Remove Results'
,p_alias=>'REMOVE-RESULTS'
,p_page_mode=>'MODAL'
,p_step_title=>'Remove Results'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(250463977822234829)
,p_protection_level=>'C'
,p_last_upd_yyyymmddhh24miss=>'20200121115730'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(9576451345161454497)
,p_plug_name=>'button'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(14690162135548251137)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(9576451877809454499)
,p_plug_name=>'Delete Results'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(14690169852560251151)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select apex_item.checkbox2(p_idx => 1, p_value => r.id, p_item_id => ''cb_'' || r.id, p_item_label => ''cb_'' || r.id) id, ',
'       (select c.community_name',
'          from eba_qpoll_comm_invites c,',
'               eba_qpoll_invites i',
'         where p.id = c.poll_id',
'           and c.id = i.comm_invite_id',
'           and r.respondent_id = i.respondent_id) community,',
'       case when p.anonymous_yn = ''Y'' then ''anonymous'' else lower(r.EMAIL) end email, ',
'       nvl(r.is_valid_yn,''Y'') is_valid,',
'       r.preactive_yn,',
'       r.created, ',
'       r.updated',
'from EBA_QPOLL_RESULTS r,',
'     eba_qpoll_polls p',
'where p.id = :POLL_ID',
'  and p.id = r.POLL_ID'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(9576452036700454499)
,p_name=>'Delete Results'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_actions_menu=>'N'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_calendar=>'N'
,p_owner=>'SBKENNED'
,p_internal_uid=>2588652188599624375
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(9576455230312454514)
,p_db_column_name=>'COMMUNITY'
,p_display_order=>11
,p_column_identifier=>'H'
,p_column_label=>'Community'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(9576452813350454511)
,p_db_column_name=>'EMAIL'
,p_display_order=>21
,p_column_identifier=>'B'
,p_column_label=>'Respondent'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(9576454811461454513)
,p_db_column_name=>'PREACTIVE_YN'
,p_display_order=>31
,p_column_identifier=>'G'
,p_column_label=>'Preactive?'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_api.id(16164232820407773274)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(9576455585913454514)
,p_db_column_name=>'IS_VALID'
,p_display_order=>41
,p_column_identifier=>'I'
,p_column_label=>'Valid?'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_api.id(14019794485937333448)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(9576453962141454512)
,p_db_column_name=>'CREATED'
,p_display_order=>71
,p_column_identifier=>'E'
,p_column_label=>'Created'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'Y'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(9576454446489454513)
,p_db_column_name=>'UPDATED'
,p_display_order=>81
,p_column_identifier=>'F'
,p_column_label=>'Updated'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'Y'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(9576473259273500551)
,p_db_column_name=>'ID'
,p_display_order=>82
,p_column_identifier=>'J'
,p_column_label=>'Select'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(9576465500614468131)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'25886657'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ID:COMMUNITY:EMAIL:IS_VALID:PREACTIVE_YN:CREATED:UPDATED'
,p_sort_column_1=>'COMMUNITY'
,p_sort_direction_1=>'ASC'
,p_sort_column_2=>'EMAIL'
,p_sort_direction_2=>'ASC'
,p_sort_column_3=>'0'
,p_sort_direction_3=>'ASC'
,p_sort_column_4=>'0'
,p_sort_direction_4=>'ASC'
,p_sort_column_5=>'0'
,p_sort_direction_5=>'ASC'
,p_sort_column_6=>'0'
,p_sort_direction_6=>'ASC'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(9576484888805555287)
,p_button_sequence=>5
,p_button_plug_id=>wwv_flow_api.id(9576451345161454497)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(14690191414518251222)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:41:&SESSION.::&DEBUG.:::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(9576484630263553285)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(9576451345161454497)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(14690191414518251222)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(349283114062878128)
,p_name=>'Toggle Delete Button'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(9576451877809454499)
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'$("input[type=checkbox]").is(":checked") === true'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(349283205554878129)
,p_event_id=>wwv_flow_api.id(349283114062878128)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(9576484630263553285)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(349283239914878130)
,p_event_id=>wwv_flow_api.id(349283114062878128)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(9576484630263553285)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(9576483181776519918)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'delete results'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'for i in 1..apex_application.g_f01.count loop',
'   for c1 in (',
'      select id',
'        from eba_qpoll_results',
'       where poll_id = :POLL_ID',
'         and id = apex_application.g_f01(i)',
'   ) loop',
'      delete from eba_qpoll_result_details',
'       where result_id = c1.id;',
'      delete from eba_qpoll_results',
'       where poll_id = :POLL_ID',
'         and id = apex_application.g_f01(i);',
'   end loop;',
'end loop;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'#SQLERRM#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(9576484630263553285)
,p_process_success_message=>'Response(s) deleted.'
);
wwv_flow_api.component_end;
end;
/
