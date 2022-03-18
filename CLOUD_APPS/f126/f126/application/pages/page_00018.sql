prompt --application/pages/page_00018
begin
--   Manifest
--     PAGE: 00018
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
 p_id=>18
,p_user_interface_id=>wwv_flow_api.id(1222136671983413726)
,p_name=>'Group Members'
,p_alias=>'GROUP-MEMBERS'
,p_page_mode=>'MODAL'
,p_step_title=>'Group Members'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_api.id(9022053313788358351)
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_api.id(3336588467926114584)
,p_protection_level=>'C'
,p_help_text=>'<p>Groups allow you to email events to a set of emails.</p>'
,p_last_upd_yyyymmddhh24miss=>'20200131131508'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(8108283428546975906)
,p_plug_name=>'Group Members'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>wwv_flow_api.id(1797851790615014320)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select g.group_name,',
'       m.mbr_id,',
'       m.email_address,',
'       m.CREATED_ON,',
'       lower(m.CREATED_BY) created_by,',
'       m.LAST_UPDATED_ON,',
'       lower(m.LAST_UPDATED_BY) last_updated_by,',
'       g.group_id',
'  from EBA_CA_EMAIL_GROUPS g,',
'       EBA_ca_email_group_mbrs m',
' where g.group_id = m.group_id'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(8108283643554975909)
,p_name=>'EBA_CA_EVENT_TYPES'
,p_max_row_count=>'10000'
,p_max_row_count_message=>'This query returns more than 10,000 rows, please filter your data to ensure complete results.'
,p_no_data_found_message=>'No group members found.'
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
,p_detail_link=>'f?p=&APP_ID.:19:&SESSION.::&DEBUG.:19:P19_MBR_ID:#MBR_ID#'
,p_detail_link_text=>'<span class="fa fa-edit" aria-hidden="true"></span>'
,p_detail_link_attr=>'title="Edit Member #EMAIL_ADDRESS#"'
,p_owner=>'SBKENNED'
,p_internal_uid=>7364559298280393615
);
wwv_flow_api.create_worksheet_col_group(
 p_id=>wwv_flow_api.id(8108283834361975910)
,p_name=>'Details'
,p_display_sequence=>10
);
wwv_flow_api.create_worksheet_col_group(
 p_id=>wwv_flow_api.id(8108283750764975910)
,p_name=>'Audit Info'
,p_display_sequence=>20
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(8108283938188975910)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>4
,p_group_id=>wwv_flow_api.id(8108283750764975910)
,p_column_identifier=>'D'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_help_text=>'The user who created the record.'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(8108284029194975912)
,p_db_column_name=>'LAST_UPDATED_BY'
,p_display_order=>5
,p_group_id=>wwv_flow_api.id(8108283750764975910)
,p_column_identifier=>'F'
,p_column_label=>'Last Updated By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_help_text=>'The user who last updated the record.'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(8108284228051975913)
,p_db_column_name=>'GROUP_NAME'
,p_display_order=>7
,p_group_id=>wwv_flow_api.id(8108283834361975910)
,p_column_identifier=>'H'
,p_column_label=>'Group Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(8108288139106986196)
,p_db_column_name=>'MBR_ID'
,p_display_order=>8
,p_column_identifier=>'I'
,p_column_label=>'Mbr Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(8108288250410986197)
,p_db_column_name=>'EMAIL_ADDRESS'
,p_display_order=>9
,p_group_id=>wwv_flow_api.id(8108283834361975910)
,p_column_identifier=>'J'
,p_column_label=>'Email Address'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(8108496042447403463)
,p_db_column_name=>'CREATED_ON'
,p_display_order=>10
,p_group_id=>wwv_flow_api.id(8108283750764975910)
,p_column_identifier=>'K'
,p_column_label=>'Created'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'Y'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(8108496135195403464)
,p_db_column_name=>'LAST_UPDATED_ON'
,p_display_order=>11
,p_group_id=>wwv_flow_api.id(8108283750764975910)
,p_column_identifier=>'L'
,p_column_label=>'Last Updated'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'Y'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(8108496231668403464)
,p_db_column_name=>'GROUP_ID'
,p_display_order=>12
,p_group_id=>wwv_flow_api.id(8108283834361975910)
,p_column_identifier=>'M'
,p_column_label=>'Selected Group'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(8108284529307975913)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'6244322'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'GROUP_NAME:EMAIL_ADDRESS'
,p_sort_column_1=>'GROUP_NAME'
,p_sort_direction_1=>'DESC'
,p_sort_column_2=>'EMAIL_ADDRESS'
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
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(8108284725036975914)
,p_application_user=>'APXWS_ALTERNATIVE'
,p_name=>'with Audit Info'
,p_report_seq=>10
,p_report_alias=>'6244324'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'GROUP_NAME:EMAIL_ADDRESS:CREATED_ON:CREATED_BY:LAST_UPDATED_ON:LAST_UPDATED_BY'
,p_sort_column_1=>'GROUP_NAME'
,p_sort_direction_1=>'DESC'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(8108285348631975915)
,p_plug_name=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1797855891776014330)
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(9022023598749333527)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(1797876791493014394)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NEVER'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(2516754448555400459)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(8108283428546975906)
,p_button_name=>'RESET'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1797876052259014390)
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&SESSION.::&DEBUG.:RP::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(8115091534160861765)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(8108283428546975906)
,p_button_name=>'CREATE_MULTIPLE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1797876154044014392)
,p_button_image_alt=>'Add Multiple Members'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:21:&SESSION.::&DEBUG.:21::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(8108284928654975914)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(8108283428546975906)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1797876708820014393)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Member'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:19:&SESSION.::&DEBUG.:19::'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(1798903404224543119)
,p_name=>'Refresh Calendar'
,p_event_sequence=>10
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'window'
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1798903806544543119)
,p_event_id=>wwv_flow_api.id(1798903404224543119)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(8108283428546975906)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1798904310475543120)
,p_event_id=>wwv_flow_api.id(1798903404224543119)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.message.showPageSuccess(''Action Processed.'');'
);
wwv_flow_api.component_end;
end;
/
