prompt --application/pages/page_00005
begin
--   Manifest
--     PAGE: 00005
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>120
,p_default_id_offset=>0
,p_default_owner=>'MISO'
);
wwv_flow_api.create_page(
 p_id=>5
,p_user_interface_id=>wwv_flow_api.id(94732957031367450)
,p_name=>'NK_NETWORK_DEVICES'
,p_alias=>'NK-NETWORK-DEVICES'
,p_step_title=>'NK_NETWORK_DEVICES'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>To find data enter a search term into the search dialog, or click on the column headings to limit the records returned.</p>',
'',
'<p>You can perform numerous functions by clicking the <strong>Actions</strong> button. This includes selecting the columns that are displayed / hidden and their display sequence, plus numerous data and format functions.  You can also define additiona'
||'l views of the data using the chart, group by, and pivot options.</p>',
'',
'<p>If you want to save your customizations select report, or click download to unload the data. Enter you email address and time frame under subscription to be sent the data on a regular basis.<p>',
'',
'<p>For additional information click Help at the bottom of the Actions menu.</p> ',
'',
'<p>Click the <strong>Reset</strong> button to reset the interactive report back to the default settings.</p>'))
,p_last_updated_by=>'MISO'
,p_last_upd_yyyymmddhh24miss=>'20220201012639'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(94788215157368377)
,p_plug_name=>'Network Devices'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(94641448153367376)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'TABLE'
,p_query_table=>'NK_NETWORK_DEVICES'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'NK_NETWORK_DEVICES'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(94788328878368377)
,p_name=>'NK_NETWORK_DEVICES'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_save_rpt_public=>'Y'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:EMAIL:XLSX:PDF:RTF'
,p_detail_link=>'f?p=&APP_ID.:6:&APP_SESSION.:::6:P6_ID:\#ID#\'
,p_detail_link_text=>'<span class="fa fa-edit" aria-hidden="true"></span>'
,p_owner=>'MISO'
,p_internal_uid=>94788328878368377
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(94788744937368378)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'ID'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(94789121188368380)
,p_db_column_name=>'NK_STATUS'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Nk Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(94789583689368380)
,p_db_column_name=>'NK_SITE_ID'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Nk Site ID'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(94789993519368380)
,p_db_column_name=>'NK_CUSTOMER'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Nk Customer'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(94790384480368381)
,p_db_column_name=>'NK_LOCATION'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Nk Location'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(94790777814368381)
,p_db_column_name=>'NK_INSTALL_DATE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Nk Install Date'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(94791168790368381)
,p_db_column_name=>'NK_EPIC'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Nk Epic'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(94791568320368381)
,p_db_column_name=>'NK_ICON'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Nk Icon'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(94791982597368382)
,p_db_column_name=>'NK_COMPONENT'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Nk Component'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(94792387694368382)
,p_db_column_name=>'NK_MANUFACTURER'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Nk Manufacturer'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(94792733205368382)
,p_db_column_name=>'NK_MODEL'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Nk Model'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(94793155700368382)
,p_db_column_name=>'NK_SERIAL_NUMBER'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Nk Serial Number'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(94793531698368383)
,p_db_column_name=>'NK_MAC_ADDRESS'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Nk Mac Address'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(94793916650368383)
,p_db_column_name=>'NK_IP_ADDRESS'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Nk Ip Address'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(94794362677368383)
,p_db_column_name=>'NK_IP_TYPE'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Nk Ip Type'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(94794701808368383)
,p_db_column_name=>'NOTES'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Notes'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(94909647663369727)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'949097'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'NK_STATUS:NK_SITE_ID:NK_CUSTOMER:NK_LOCATION:NK_INSTALL_DATE:NK_EPIC:NK_ICON:NK_COMPONENT:NK_MANUFACTURER:NK_MODEL:NK_SERIAL_NUMBER:NK_MAC_ADDRESS:NK_IP_ADDRESS:NK_IP_TYPE:NOTES'
,p_sort_column_1=>'NK_STATUS'
,p_sort_direction_1=>'ASC'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(94795959134368386)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(94652730492367381)
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(94585731823367313)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(94709813708367419)
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(94795160754368384)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(94788215157368377)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(94708551625367418)
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.:RR::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(94797796413368388)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(94788215157368377)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(94708421092367418)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.:6'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(94796868291368387)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(94788215157368377)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(94797304750368387)
,p_event_id=>wwv_flow_api.id(94796868291368387)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(94788215157368377)
);
wwv_flow_api.component_end;
end;
/
