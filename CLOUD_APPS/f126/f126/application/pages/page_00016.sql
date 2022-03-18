prompt --application/pages/page_00016
begin
--   Manifest
--     PAGE: 00016
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
 p_id=>16
,p_user_interface_id=>wwv_flow_api.id(1222136671983413726)
,p_name=>'Groups'
,p_alias=>'GROUPS'
,p_page_mode=>'MODAL'
,p_step_title=>'Groups'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_api.id(9022053313788358351)
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_api.id(3336588467926114584)
,p_protection_level=>'C'
,p_help_text=>'Groups allow you to email events to a set of emails. Once you create a Group, you must then add Members to it.'
,p_last_upd_yyyymmddhh24miss=>'20200131131218'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(8107664834158875387)
,p_plug_name=>'Groups'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>wwv_flow_api.id(1797851790615014320)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select group_id,',
'       group_name,',
'       (select count(*) from EBA_ca_email_group_mbrs m',
'         where m.group_id = g.group_id) nbr_mbrs,',
'       CREATED_ON,',
'       LOWER(CREATED_BY) CREATED_BY,',
'       LAST_UPDATED_ON,',
'       LOWER(LAST_UPDATED_BY) LAST_UPDATED_BY',
'  from EBA_CA_EMAIL_GROUPS g',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(8107665023298875390)
,p_name=>'EBA_CA_EVENT_TYPES'
,p_max_row_count=>'10000'
,p_max_row_count_message=>'This query returns more than 10,000 rows, please filter your data to ensure complete results.'
,p_no_data_found_message=>'No groups found.'
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
,p_detail_link=>'f?p=&APP_ID.:17:&SESSION.::&DEBUG.:17:P17_GROUP_ID:#GROUP_ID#'
,p_detail_link_text=>'<span class="fa fa-edit" aria-hidden="true"></span>'
,p_detail_link_attr=>'title="Edit #GROUP_NAME#"'
,p_owner=>'SBKENNED'
,p_internal_uid=>7363940678024293096
);
wwv_flow_api.create_worksheet_col_group(
 p_id=>wwv_flow_api.id(8107665241353875397)
,p_name=>'Details'
,p_display_sequence=>10
);
wwv_flow_api.create_worksheet_col_group(
 p_id=>wwv_flow_api.id(8107665148962875394)
,p_name=>'Audit Info'
,p_display_sequence=>20
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(8107665523451875402)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>1
,p_group_id=>wwv_flow_api.id(8107665148962875394)
,p_column_identifier=>'D'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_help_text=>'The user who created the record.'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(8107665634363875402)
,p_db_column_name=>'LAST_UPDATED_BY'
,p_display_order=>2
,p_group_id=>wwv_flow_api.id(8107665148962875394)
,p_column_identifier=>'F'
,p_column_label=>'Last Updated By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_help_text=>'The user who last updated the record.'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(8107675031302888761)
,p_db_column_name=>'GROUP_NAME'
,p_display_order=>3
,p_group_id=>wwv_flow_api.id(8107665241353875397)
,p_column_identifier=>'H'
,p_column_label=>'Group Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(8108494752228387365)
,p_db_column_name=>'NBR_MBRS'
,p_display_order=>4
,p_group_id=>wwv_flow_api.id(8107665241353875397)
,p_column_identifier=>'I'
,p_column_label=>'Members'
,p_column_link=>'f?p=&APP_ID.:18:&SESSION.::&DEBUG.:RIR,CIR:IR_GROUP_ID:#GROUP_ID#'
,p_column_linktext=>'#NBR_MBRS#'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(8107674929139888759)
,p_db_column_name=>'GROUP_ID'
,p_display_order=>5
,p_column_identifier=>'G'
,p_column_label=>'Options'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(8108494837149387366)
,p_db_column_name=>'CREATED_ON'
,p_display_order=>6
,p_group_id=>wwv_flow_api.id(8107665148962875394)
,p_column_identifier=>'J'
,p_column_label=>'Created'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'Y'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(8108494921221387366)
,p_db_column_name=>'LAST_UPDATED_ON'
,p_display_order=>7
,p_group_id=>wwv_flow_api.id(8107665148962875394)
,p_column_identifier=>'K'
,p_column_label=>'Last Updated'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'Y'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(8107666051543875403)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'6238137'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'GROUP_NAME:NBR_MBRS:GROUP_ID'
,p_sort_column_1=>'GROUP_NAME'
,p_sort_direction_1=>'DESC'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(8107666247055875407)
,p_application_user=>'APXWS_ALTERNATIVE'
,p_name=>'with Audit Info'
,p_report_seq=>10
,p_report_alias=>'6238139'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'GROUP_NAME:NBR_MBRS:GROUP_ID:CREATED_ON:CREATED_BY:LAST_UPDATED_ON:LAST_UPDATED_BY'
,p_sort_column_1=>'GROUP_NAME'
,p_sort_direction_1=>'DESC'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(2516754407386400458)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(8107664834158875387)
,p_button_name=>'RESET'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1797876052259014390)
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&SESSION.::&DEBUG.:RP,&APP_PAGE_ID.,RIR::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(8107666422145875409)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(8107664834158875387)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1797876708820014393)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Group'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:17:&SESSION.::&DEBUG.:RP,17::'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(1798893770970443957)
,p_name=>'Refresh Calendar'
,p_event_sequence=>10
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'window'
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1798894180135443957)
,p_event_id=>wwv_flow_api.id(1798893770970443957)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(8107664834158875387)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1798894655486443958)
,p_event_id=>wwv_flow_api.id(1798893770970443957)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.message.showPageSuccess(''Action Processed.'');'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(210792060565073261)
,p_name=>'Refresh on Add'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(8107666422145875409)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(210792179501073262)
,p_event_id=>wwv_flow_api.id(210792060565073261)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(8107664834158875387)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(210792257170073263)
,p_name=>'Refresh on Edit'
,p_event_sequence=>30
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(8107664834158875387)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(210792419182073264)
,p_event_id=>wwv_flow_api.id(210792257170073263)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(8107664834158875387)
);
wwv_flow_api.component_end;
end;
/
