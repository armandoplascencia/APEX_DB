prompt --application/pages/page_00002
begin
--   Manifest
--     PAGE: 00002
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>101
,p_default_id_offset=>0
,p_default_owner=>'MISO'
);
wwv_flow_api.create_page(
 p_id=>2
,p_user_interface_id=>wwv_flow_api.id(57565039144067239)
,p_name=>'FASCET_OPERATIONAL'
,p_alias=>'FASCET-OPERATIONAL'
,p_step_title=>'FASCET_OPERATIONAL'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_api.id(57418666096067116)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'APLASCENCIA'
,p_last_upd_yyyymmddhh24miss=>'20211116062206'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(57588403794067352)
,p_name=>'Operational Metric'
,p_template=>wwv_flow_api.id(57475490015067161)
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--staticRowColors:t-Report--rowHighlight:t-Report--inline:t-Report--hideNoPagination'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'TABLE'
,p_query_table=>'DW_OPERATIONAL_METRIC'
,p_include_rowid_column=>false
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(57499177086067176)
,p_query_num_rows=>50
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'ROWS_X_TO_Y'
,p_query_row_count_max=>100000
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_prn_output=>'N'
,p_prn_format=>'PDF'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(57592739338067544)
,p_query_column_id=>1
,p_column_alias=>'DW_MISO_PERIODS_ID'
,p_column_display_sequence=>1
,p_column_heading=>'Dw Miso Periods'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_api.id(57590131184067539)
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(57593178280067545)
,p_query_column_id=>2
,p_column_alias=>'DW_MISO_DATE_DIM_ID'
,p_column_display_sequence=>2
,p_column_heading=>'Dw Miso Date Dim'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_api.id(57590348374067540)
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(57593537061067546)
,p_query_column_id=>3
,p_column_alias=>'DW_MISO_TIME_HHMMSS_DIM_ID'
,p_column_display_sequence=>3
,p_column_heading=>'Dw Miso Time Hhmmss Dim'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_api.id(57590659108067540)
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(57593984295067546)
,p_query_column_id=>4
,p_column_alias=>'DW_OPERATIONAL_METRIC_ID'
,p_column_display_sequence=>4
,p_column_heading=>'Dw Operational Metric ID'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(57594377377067546)
,p_query_column_id=>5
,p_column_alias=>'DW_PRODUCT'
,p_column_display_sequence=>5
,p_column_heading=>'Dw Product'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_api.id(57590911519067540)
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(57594769956067546)
,p_query_column_id=>6
,p_column_alias=>'DW_BRAND'
,p_column_display_sequence=>6
,p_column_heading=>'Dw Brand'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_api.id(57591250128067540)
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(57595123467067546)
,p_query_column_id=>7
,p_column_alias=>'DW_LOCATION'
,p_column_display_sequence=>7
,p_column_heading=>'Dw Location'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_api.id(57591551201067542)
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(57595527525067547)
,p_query_column_id=>8
,p_column_alias=>'DW_CUSTOMER'
,p_column_display_sequence=>8
,p_column_heading=>'Dw Customer'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_api.id(57591841422067542)
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(57595952780067547)
,p_query_column_id=>9
,p_column_alias=>'DW_INTERNAL'
,p_column_display_sequence=>9
,p_column_heading=>'Dw Internal'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_api.id(57592145991067542)
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(57596395906067547)
,p_query_column_id=>10
,p_column_alias=>'SALES_AMT'
,p_column_display_sequence=>10
,p_column_heading=>'Sales Amt'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(57596736483067547)
,p_query_column_id=>11
,p_column_alias=>'SALES_AVG'
,p_column_display_sequence=>11
,p_column_heading=>'Sales Avg'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(57588595540067352)
,p_plug_name=>'Search'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(57475490015067161)
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>4
,p_plug_display_point=>'REGION_POSITION_02'
,p_plug_source_type=>'NATIVE_FACETED_SEARCH'
,p_filtered_region_id=>wwv_flow_api.id(57588403794067352)
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
 p_id=>wwv_flow_api.id(57589304578067354)
,p_plug_name=>'Button Bar'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--noPadding:t-ButtonRegion--noUI'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(57445435435067144)
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
 p_id=>wwv_flow_api.id(57597208197067551)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(57484866017067166)
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(57417822523067107)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(57541954952067208)
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(57589805516067356)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(57589304578067354)
,p_button_name=>'RESET'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(57540691389067207)
,p_button_image_alt=>'Reset'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:RR,2::'
,p_icon_css_classes=>'fa-undo'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(57589063912067353)
,p_name=>'P2_SEARCH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(57588595540067352)
,p_prompt=>'Search'
,p_source=>'DW_MISO_PERIODS_ID,DW_MISO_DATE_DIM_ID,DW_MISO_TIME_HHMMSS_DIM_ID,DW_PRODUCT,DW_BRAND,DW_LOCATION,DW_CUSTOMER,DW_INTERNAL'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_SEARCH'
,p_attribute_01=>'ROW'
,p_attribute_02=>'FACET'
,p_fc_collapsible=>true
,p_fc_initial_collapsed=>false
,p_fc_show_chart=>false
);
wwv_flow_api.component_end;
end;
/
