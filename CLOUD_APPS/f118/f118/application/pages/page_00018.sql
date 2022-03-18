prompt --application/pages/page_00018
begin
--   Manifest
--     PAGE: 00018
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>118
,p_default_id_offset=>0
,p_default_owner=>'MISO'
);
wwv_flow_api.create_page(
 p_id=>18
,p_user_interface_id=>wwv_flow_api.id(71961679766536925)
,p_name=>'FASCET_PERF'
,p_alias=>'FASCET-PERF'
,p_step_title=>'FASCET_PERF'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_api.id(71815265893536797)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
' create or replace procedure get_region_datasource  ',
'  (p_app_id in number, p_app_page_id in number , p_region_static_id in varchar2 )  ',
' is  ',
'   lv_export    apex_data_export.t_export;  ',
'   lv_region_id  number;  ',
' BEGIN  ',
' ---- https://apexify.blogspot.com/2021/06/integrate-charts-region-to-faceted-search.html',
' APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(p_collection_name => p_region_static_id);  ',
' SELECT region_id into lv_region_id  ',
'   FROM apex_application_page_regions  ',
'   WHERE application_id = p_app_id and page_id = p_app_page_id and static_id = p_region_static_id;  ',
' lv_export := apex_region.export_data (  ',
'      p_format    => apex_data_export.c_format_json,  ',
'      p_page_id   => p_app_page_id,  ',
'      p_region_id  => lv_region_id,  ',
'      p_as_clob => TRUE);  ',
' APEX_COLLECTION.ADD_MEMBER(p_collection_name => p_region_static_id,P_CLOB001 => lv_export.content_clob);  ',
' EXCEPTION  ',
'   WHEN OTHERS THEN  ',
'    raise;  ',
' END get_region_datasource; '))
,p_last_updated_by=>'APLASCENCIA'
,p_last_upd_yyyymmddhh24miss=>'20211210220937'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(72325136808872840)
,p_plug_name=>'New'
,p_region_name=>'THIS_FASCET_GRAPH_SET'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(71872044837536845)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>'https://apexify.blogspot.com/2021/06/integrate-charts-region-to-faceted-search.html'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(72476099529115440)
,p_name=>'Search Results'
,p_template=>wwv_flow_api.id(71872044837536845)
,p_display_sequence=>40
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--staticRowColors:t-Report--rowHighlight:t-Report--inline:t-Report--hideNoPagination'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'TABLE'
,p_query_table=>'ND_V_WALK_SKILLS'
,p_include_rowid_column=>false
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(71895756562536859)
,p_query_num_rows=>50
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>100000
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_prn_output=>'N'
,p_prn_format=>'PDF'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(72481272953115447)
,p_query_column_id=>1
,p_column_alias=>'PRODUCT_NAME'
,p_column_display_sequence=>1
,p_column_heading=>'Product Name'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(72481614560115447)
,p_query_column_id=>2
,p_column_alias=>'PRODUCT_LOCATION'
,p_column_display_sequence=>2
,p_column_heading=>'Product Location'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(72482043963115448)
,p_query_column_id=>3
,p_column_alias=>'EMPLOYEE_NAME'
,p_column_display_sequence=>3
,p_column_heading=>'Employee Name'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(72482490346115448)
,p_query_column_id=>4
,p_column_alias=>'EMPLOYEE_EMAIL'
,p_column_display_sequence=>4
,p_column_heading=>'Employee Email'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(72482865390115448)
,p_query_column_id=>5
,p_column_alias=>'EMPLOYEE_JOB'
,p_column_display_sequence=>5
,p_column_heading=>'Employee Job'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(72483237247115448)
,p_query_column_id=>6
,p_column_alias=>'HARDWARE_SKILL'
,p_column_display_sequence=>6
,p_column_heading=>'Hardware Skill'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(72483695133115448)
,p_query_column_id=>7
,p_column_alias=>'HARDWARE_PROFICIENCY'
,p_column_display_sequence=>7
,p_column_heading=>'Hardware Proficiency'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(72484052683115449)
,p_query_column_id=>8
,p_column_alias=>'MGMT_SKILL'
,p_column_display_sequence=>8
,p_column_heading=>'Mgmt Skill'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(72484436195115449)
,p_query_column_id=>9
,p_column_alias=>'MGMT_PROFICIENCY'
,p_column_display_sequence=>9
,p_column_heading=>'Mgmt Proficiency'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(72484851030115449)
,p_query_column_id=>10
,p_column_alias=>'SOFTWARE_SKILL'
,p_column_display_sequence=>10
,p_column_heading=>'Software Skill'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(72485262287115449)
,p_query_column_id=>11
,p_column_alias=>'SOFTWARE_PROFICIENCY'
,p_column_display_sequence=>11
,p_column_heading=>'Software Proficiency'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(72485621327115450)
,p_query_column_id=>12
,p_column_alias=>'BUSINESS_SKILL'
,p_column_display_sequence=>12
,p_column_heading=>'Business Skill'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(72486055733115450)
,p_query_column_id=>13
,p_column_alias=>'BUSINESS_PROFICIENCY'
,p_column_display_sequence=>13
,p_column_heading=>'Business Proficiency'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(72476195360115440)
,p_plug_name=>'Search'
,p_region_name=>'fascet_skills'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(71872044837536845)
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_02'
,p_plug_source_type=>'NATIVE_FACETED_SEARCH'
,p_filtered_region_id=>wwv_flow_api.id(72476099529115440)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_06=>'E'
,p_attribute_07=>'Y'
,p_attribute_08=>'#active_facets'
,p_attribute_09=>'Y'
,p_attribute_10=>'totals:'
,p_attribute_12=>'10000'
,p_attribute_13=>'Y'
,p_attribute_15=>'20'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(72480104034115443)
,p_plug_name=>'Button Bar'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--noPadding:t-ButtonRegion--noUI'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(71842018944536829)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>'<div id="active_facets"></div>'
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(72480608627115444)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(72480104034115443)
,p_button_name=>'RESET'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(71937233714536893)
,p_button_image_alt=>'Reset'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:18:&SESSION.::&DEBUG.:RR,18::'
,p_icon_css_classes=>'fa-undo'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72476640147115440)
,p_name=>'P18_SEARCH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(72476195360115440)
,p_prompt=>'Search'
,p_source=>'PRODUCT_NAME,PRODUCT_LOCATION,EMPLOYEE_NAME,EMPLOYEE_EMAIL,EMPLOYEE_JOB,HARDWARE_SKILL,MGMT_SKILL,SOFTWARE_SKILL,BUSINESS_SKILL'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_SEARCH'
,p_attribute_01=>'ROW'
,p_attribute_02=>'FACET'
,p_fc_collapsible=>true
,p_fc_initial_collapsed=>false
,p_fc_show_chart=>false
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72477040453115441)
,p_name=>'P18_PRODUCT_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(72476195360115440)
,p_prompt=>'Product Name'
,p_source=>'PRODUCT_NAME'
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
 p_id=>wwv_flow_api.id(72477447779115442)
,p_name=>'P18_PRODUCT_LOCATION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(72476195360115440)
,p_prompt=>'Product Location'
,p_source=>'PRODUCT_LOCATION'
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
 p_id=>wwv_flow_api.id(72477842486115442)
,p_name=>'P18_EMPLOYEE_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(72476195360115440)
,p_prompt=>'Employee Name'
,p_source=>'EMPLOYEE_NAME'
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
 p_id=>wwv_flow_api.id(72478260778115442)
,p_name=>'P18_EMPLOYEE_JOB'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(72476195360115440)
,p_prompt=>'Employee Job'
,p_source=>'EMPLOYEE_JOB'
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
 p_id=>wwv_flow_api.id(72478685577115442)
,p_name=>'P18_HARDWARE_SKILL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(72476195360115440)
,p_prompt=>'Hardware Skill'
,p_source=>'HARDWARE_SKILL'
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
 p_id=>wwv_flow_api.id(72479028942115443)
,p_name=>'P18_MGMT_SKILL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(72476195360115440)
,p_prompt=>'Mgmt Skill'
,p_source=>'MGMT_SKILL'
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
 p_id=>wwv_flow_api.id(72479466566115443)
,p_name=>'P18_SOFTWARE_SKILL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(72476195360115440)
,p_prompt=>'Software Skill'
,p_source=>'SOFTWARE_SKILL'
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
 p_id=>wwv_flow_api.id(72479823118115443)
,p_name=>'P18_BUSINESS_SKILL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(72476195360115440)
,p_prompt=>'Business Skill'
,p_source=>'BUSINESS_SKILL'
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
wwv_flow_api.component_end;
end;
/
