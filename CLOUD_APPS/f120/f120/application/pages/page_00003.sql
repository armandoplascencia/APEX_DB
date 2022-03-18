prompt --application/pages/page_00003
begin
--   Manifest
--     PAGE: 00003
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
 p_id=>3
,p_user_interface_id=>wwv_flow_api.id(94732957031367450)
,p_name=>'NK_NETWORK_DEVICESFASCET'
,p_alias=>'NK-NETWORK-DEVICESFASCET'
,p_step_title=>'NK_NETWORK_DEVICESFASCET'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_api.id(94586523493367321)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'MISO'
,p_last_upd_yyyymmddhh24miss=>'20220202194932'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(94758223578367907)
,p_name=>'Network Devices'
,p_template=>wwv_flow_api.id(94643375749367377)
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--staticRowColors:t-Report--rowHighlight:t-Report--inline:t-Report--hideNoPagination'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID,',
'       NK_STATUS,',
'       NK_SITE_ID,',
'       NK_CUSTOMER,',
'       NK_LOCATION,',
'       NK_INSTALL_DATE,',
'       NK_EPIC,',
'       NK_ICON,',
'       NK_COMPONENT,',
'       NK_MANUFACTURER,',
'       NK_MODEL,',
'       NK_SERIAL_NUMBER,',
'       NK_MAC_ADDRESS,',
'       NK_IP_ADDRESS,',
'       NK_IP_TYPE,',
'       NOTES',
'  from NK_NETWORK_DEVICES'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>true
,p_query_row_template=>wwv_flow_api.id(94667044175367389)
,p_query_num_rows=>99999999
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'ROW_RANGES_WITH_LINKS'
,p_query_row_count_max=>100000
,p_pagination_display_position=>'TOP_AND_BOTTOM_RIGHT'
,p_csv_output=>'Y'
,p_csv_output_link_text=>'Download'
,p_prn_output=>'Y'
,p_prn_format=>'PDF'
,p_prn_output_link_text=>'Print'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width_units=>'PERCENTAGE'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Network Devices'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(94762260407367919)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>1
,p_column_heading=>'<span class="u-VisuallyHidden">Edit</span>'
,p_column_link=>'f?p=&APP_ID.:4:&APP_SESSION.:::4:P4_ID:\#ID#\'
,p_column_linktext=>'<span class="fa fa-edit" aria-hidden="true"></span>'
,p_column_alignment=>'CENTER'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(94762661019367920)
,p_query_column_id=>2
,p_column_alias=>'NK_STATUS'
,p_column_display_sequence=>2
,p_column_heading=>'Nk Status'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(94763095467367920)
,p_query_column_id=>3
,p_column_alias=>'NK_SITE_ID'
,p_column_display_sequence=>3
,p_column_heading=>'Nk Site ID'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(94763401558367921)
,p_query_column_id=>4
,p_column_alias=>'NK_CUSTOMER'
,p_column_display_sequence=>4
,p_column_heading=>'Nk Customer'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(94763846994367921)
,p_query_column_id=>5
,p_column_alias=>'NK_LOCATION'
,p_column_display_sequence=>5
,p_column_heading=>'Nk Location'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(94764294171367921)
,p_query_column_id=>6
,p_column_alias=>'NK_INSTALL_DATE'
,p_column_display_sequence=>6
,p_column_heading=>'Nk Install Date'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(94764656125367921)
,p_query_column_id=>7
,p_column_alias=>'NK_EPIC'
,p_column_display_sequence=>7
,p_column_heading=>'Nk Epic'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(94765028423367922)
,p_query_column_id=>8
,p_column_alias=>'NK_ICON'
,p_column_display_sequence=>8
,p_column_heading=>'Nk Icon'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(94765437917367922)
,p_query_column_id=>9
,p_column_alias=>'NK_COMPONENT'
,p_column_display_sequence=>9
,p_column_heading=>'Nk Component'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(94765843138367922)
,p_query_column_id=>10
,p_column_alias=>'NK_MANUFACTURER'
,p_column_display_sequence=>10
,p_column_heading=>'Nk Manufacturer'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(94766230254367922)
,p_query_column_id=>11
,p_column_alias=>'NK_MODEL'
,p_column_display_sequence=>11
,p_column_heading=>'Nk Model'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(94766690126367923)
,p_query_column_id=>12
,p_column_alias=>'NK_SERIAL_NUMBER'
,p_column_display_sequence=>12
,p_column_heading=>'Nk Serial Number'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(94767008601367923)
,p_query_column_id=>13
,p_column_alias=>'NK_MAC_ADDRESS'
,p_column_display_sequence=>13
,p_column_heading=>'Nk Mac Address'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(94767452362367923)
,p_query_column_id=>14
,p_column_alias=>'NK_IP_ADDRESS'
,p_column_display_sequence=>14
,p_column_heading=>'Nk Ip Address'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(94767833369367923)
,p_query_column_id=>15
,p_column_alias=>'NK_IP_TYPE'
,p_column_display_sequence=>15
,p_column_heading=>'Nk Ip Type'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(94768294069367924)
,p_query_column_id=>16
,p_column_alias=>'NOTES'
,p_column_display_sequence=>16
,p_column_heading=>'Notes'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(94758313904367907)
,p_plug_name=>'Search'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(94643375749367377)
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>4
,p_plug_display_point=>'REGION_POSITION_02'
,p_plug_source_type=>'NATIVE_FACETED_SEARCH'
,p_filtered_region_id=>wwv_flow_api.id(94758223578367907)
,p_attribute_01=>'N'
,p_attribute_06=>'E'
,p_attribute_07=>'Y'
,p_attribute_08=>'#active_facets'
,p_attribute_09=>'Y'
,p_attribute_12=>'10000'
,p_attribute_13=>'Y'
,p_attribute_15=>'10'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(94761189305367910)
,p_plug_name=>'Button Bar'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--noPadding:t-ButtonRegion--noUI'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(94613356478367350)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>'<div id="active_facets"></div>'
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(94768764003367924)
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
 p_id=>wwv_flow_api.id(94770529134367928)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(94758223578367907)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(94708421092367418)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.:4'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(94761643902367911)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(94761189305367910)
,p_button_name=>'RESET'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(94708551625367418)
,p_button_image_alt=>'Reset'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.:RR,3::'
,p_icon_css_classes=>'fa-undo'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(94758842110367908)
,p_name=>'P3_SEARCH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(94758313904367907)
,p_prompt=>'Search'
,p_source=>'NK_ICON,NK_COMPONENT,NK_MANUFACTURER,NK_LOCATION,NK_INSTALL_DATE,NK_EPIC,NK_STATUS,NK_SITE_ID,NK_CUSTOMER'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_SEARCH'
,p_attribute_01=>'ROW'
,p_attribute_02=>'FACET'
,p_fc_collapsible=>true
,p_fc_initial_collapsed=>false
,p_fc_show_chart=>false
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(94759293415367909)
,p_name=>'P3_NK_ICON'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(94758313904367907)
,p_prompt=>'Nk Icon'
,p_source=>'NK_ICON'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_fc_collapsible=>true
,p_fc_initial_collapsed=>false
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_show_more_count=>5
,p_fc_filter_values=>true
,p_fc_sort_by_top_counts=>true
,p_fc_show_selected_first=>true
,p_fc_show_chart=>true
,p_fc_initial_chart=>true
,p_fc_toggleable=>true
,p_fc_initial_toggled=>true
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(94759616889367909)
,p_name=>'P3_NK_COMPONENT'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(94758313904367907)
,p_prompt=>'Nk Component'
,p_source=>'NK_COMPONENT'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_fc_collapsible=>true
,p_fc_initial_collapsed=>false
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_show_more_count=>5
,p_fc_filter_values=>true
,p_fc_sort_by_top_counts=>true
,p_fc_show_selected_first=>true
,p_fc_show_chart=>true
,p_fc_initial_chart=>true
,p_fc_toggleable=>true
,p_fc_initial_toggled=>true
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(94760074016367909)
,p_name=>'P3_NK_MANUFACTURER'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(94758313904367907)
,p_prompt=>'Nk Manufacturer'
,p_source=>'NK_MANUFACTURER'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_fc_collapsible=>true
,p_fc_initial_collapsed=>false
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_show_more_count=>5
,p_fc_filter_values=>true
,p_fc_sort_by_top_counts=>true
,p_fc_show_selected_first=>true
,p_fc_show_chart=>true
,p_fc_initial_chart=>true
,p_fc_toggleable=>true
,p_fc_initial_toggled=>true
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(94760410531367910)
,p_name=>'P3_NK_CUSTOMER'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(94758313904367907)
,p_prompt=>'Nk Customer'
,p_source=>'NK_CUSTOMER'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_fc_collapsible=>true
,p_fc_initial_collapsed=>false
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_show_more_count=>5
,p_fc_filter_values=>true
,p_fc_sort_by_top_counts=>true
,p_fc_show_selected_first=>true
,p_fc_show_chart=>true
,p_fc_initial_chart=>true
,p_fc_toggleable=>true
,p_fc_initial_toggled=>true
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(94760841920367910)
,p_name=>'P3_NK_LOCATION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(94758313904367907)
,p_prompt=>'Nk Location'
,p_source=>'NK_LOCATION'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_fc_collapsible=>true
,p_fc_initial_collapsed=>false
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_show_more_count=>5
,p_fc_filter_values=>true
,p_fc_sort_by_top_counts=>true
,p_fc_show_selected_first=>true
,p_fc_show_chart=>true
,p_fc_initial_chart=>true
,p_fc_toggleable=>true
,p_fc_initial_toggled=>true
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(94769628719367925)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(94758223578367907)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(94770199030367927)
,p_event_id=>wwv_flow_api.id(94769628719367925)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(94758223578367907)
);
wwv_flow_api.component_end;
end;
/
