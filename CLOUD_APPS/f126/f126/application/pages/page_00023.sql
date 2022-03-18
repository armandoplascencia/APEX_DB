prompt --application/pages/page_00023
begin
--   Manifest
--     PAGE: 00023
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>126
,p_default_id_offset=>101651461840938715
,p_default_owner=>'MISO'
);
wwv_flow_api.create_page(
 p_id=>23
,p_user_interface_id=>wwv_flow_api.id(1222136671983413726)
,p_name=>'Reporting Time Frames'
,p_alias=>'REPORTING-TIME-FRAMES'
,p_page_mode=>'MODAL'
,p_step_title=>'Reporting Time Frames'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_api.id(9022053313788358351)
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_api.id(3336588467926114584)
,p_protection_level=>'C'
,p_help_text=>'<p>Reporting Time Frames allow you to quickly narrow your event search to just those events that occur during a defined time frame.  Examples of time frames are fiscal months or fiscal quarters.</p>'
,p_last_upd_yyyymmddhh24miss=>'20200131133205'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(8116083443049318135)
,p_plug_name=>'Reporting Time Frames'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>wwv_flow_api.id(1797851790615014320)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select tf_id,',
'       tf_name,',
'       start_date tf_start_date,',
'       end_date tf_end_date,',
'       CREATED_ON,',
'       LOWER(CREATED_BY) CREATED_BY,',
'       LAST_UPDATED_ON,',
'       LOWER(LAST_UPDATED_BY) LAST_UPDATED_BY',
'  from EBA_ca_timeframes',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(8116083634114318151)
,p_name=>'EBA_CA_EVENT_TYPES'
,p_max_row_count=>'10000'
,p_max_row_count_message=>'This query returns more than 10,000 rows, please filter your data to ensure complete results.'
,p_no_data_found_message=>'No reporting time frames found.'
,p_allow_save_rpt_public=>'Y'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML:EMAIL'
,p_detail_link=>'f?p=&APP_ID.:24:&SESSION.::&DEBUG.:24:P24_TF_ID:#TF_ID#'
,p_detail_link_text=>'<span class="fa fa-edit" aria-hidden="true"></span>'
,p_detail_link_attr=>'title="Edit #TF_NAME#"'
,p_owner=>'SBKENNED'
,p_internal_uid=>7372359288839735857
);
wwv_flow_api.create_worksheet_col_group(
 p_id=>wwv_flow_api.id(8116083830394318154)
,p_name=>'Details'
,p_display_sequence=>10
);
wwv_flow_api.create_worksheet_col_group(
 p_id=>wwv_flow_api.id(8116083752069318153)
,p_name=>'Audit Info'
,p_display_sequence=>20
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(8116083931857318156)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>4
,p_group_id=>wwv_flow_api.id(8116083752069318153)
,p_column_identifier=>'D'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_help_text=>'The user who created the record.'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(8116084032989318157)
,p_db_column_name=>'LAST_UPDATED_BY'
,p_display_order=>5
,p_group_id=>wwv_flow_api.id(8116083752069318153)
,p_column_identifier=>'F'
,p_column_label=>'Last Updated By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_help_text=>'The user who last updated the record.'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(8116086621570324560)
,p_db_column_name=>'TF_ID'
,p_display_order=>6
,p_group_id=>wwv_flow_api.id(8116083830394318154)
,p_column_identifier=>'G'
,p_column_label=>'Tf Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(8116086734047324560)
,p_db_column_name=>'TF_NAME'
,p_display_order=>7
,p_group_id=>wwv_flow_api.id(8116083830394318154)
,p_column_identifier=>'H'
,p_column_label=>'Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(8116086849440324560)
,p_db_column_name=>'TF_START_DATE'
,p_display_order=>8
,p_group_id=>wwv_flow_api.id(8116083830394318154)
,p_column_identifier=>'I'
,p_column_label=>'Start Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'&APP_DATE_FORMAT.'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(8116086923634324561)
,p_db_column_name=>'TF_END_DATE'
,p_display_order=>9
,p_group_id=>wwv_flow_api.id(8116083830394318154)
,p_column_identifier=>'J'
,p_column_label=>'End Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'&APP_DATE_FORMAT.'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(8116124950977456020)
,p_db_column_name=>'CREATED_ON'
,p_display_order=>10
,p_group_id=>wwv_flow_api.id(8116083752069318153)
,p_column_identifier=>'K'
,p_column_label=>'Created'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'Y'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(8116125045366456022)
,p_db_column_name=>'LAST_UPDATED_ON'
,p_display_order=>11
,p_group_id=>wwv_flow_api.id(8116083752069318153)
,p_column_identifier=>'L'
,p_column_label=>'Last Updated'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'Y'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(8116084628944318159)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'6322323'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'TF_NAME:TF_START_DATE:TF_END_DATE'
,p_sort_column_1=>'TF_START_DATE'
,p_sort_direction_1=>'ASC'
,p_sort_column_2=>'0'
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
wwv_flow_api.create_worksheet_condition(
 p_id=>wwv_flow_api.id(8120993352510734199)
,p_report_id=>wwv_flow_api.id(8116084628944318159)
,p_name=>'Future'
,p_condition_type=>'FILTER'
,p_allow_delete=>'Y'
,p_expr_type=>'ROW'
,p_expr=>'sysdate <= J'
,p_condition_sql=>'sysdate <= "TF_END_DATE"'
,p_enabled=>'Y'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(8116084839858318165)
,p_application_user=>'APXWS_ALTERNATIVE'
,p_name=>'with Audit Info'
,p_report_seq=>10
,p_report_alias=>'6322325'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'TF_NAME:TF_START_DATE:TF_END_DATE:CREATED_ON:CREATED_BY:LAST_UPDATED_ON:LAST_UPDATED_BY'
,p_sort_column_1=>'TF_START_DATE'
,p_sort_direction_1=>'DESC'
,p_sort_column_2=>'0'
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
wwv_flow_api.create_worksheet_condition(
 p_id=>wwv_flow_api.id(8116124244398454096)
,p_report_id=>wwv_flow_api.id(8116084839858318165)
,p_name=>'Future'
,p_condition_type=>'FILTER'
,p_allow_delete=>'Y'
,p_expr_type=>'ROW'
,p_expr=>'sysdate <= J'
,p_condition_sql=>'sysdate <= "TF_END_DATE"'
,p_enabled=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(2021872096049025682)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(8116083443049318135)
,p_button_name=>'reset'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1797876052259014390)
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&SESSION.::&DEBUG.:RP::'
,p_icon_css_classes=>'fa-undo'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(8116085040838318166)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(8116083443049318135)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1797876708820014393)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create Time Frame'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:24:&SESSION.::&DEBUG.:24::'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(1798865913212340465)
,p_name=>'Refresh Calendar'
,p_event_sequence=>10
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'window'
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1798866297861340465)
,p_event_id=>wwv_flow_api.id(1798865913212340465)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(8116083443049318135)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1798866782238340466)
,p_event_id=>wwv_flow_api.id(1798865913212340465)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.message.showPageSuccess(''Action Processed.'');'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(210243920053903696)
,p_name=>'Refresh on Add'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(8116085040838318166)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(210243995300903697)
,p_event_id=>wwv_flow_api.id(210243920053903696)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(8116083443049318135)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(210244109833903698)
,p_name=>'Refresh on Edit'
,p_event_sequence=>30
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(8116083443049318135)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(210244191362903699)
,p_event_id=>wwv_flow_api.id(210244109833903698)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(8116083443049318135)
);
wwv_flow_api.component_end;
end;
/
