prompt --application/pages/page_00014
begin
--   Manifest
--     PAGE: 00014
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>107
,p_default_id_offset=>0
,p_default_owner=>'MISO'
);
wwv_flow_api.create_page(
 p_id=>14
,p_user_interface_id=>wwv_flow_api.id(63894538847235817)
,p_name=>'LOCATION_ID'
,p_alias=>'LOCATION-ID'
,p_step_title=>'https://gd49ef7d5e3cd2d-db202110212330.adb.us-phoenix-1.oraclecloudapps.com/ords/miso/dw_miso_ki_customers/'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'MISO'
,p_last_upd_yyyymmddhh24miss=>'20220304010610'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(105213398471604070)
,p_plug_name=>'Report 1'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(63803088663235738)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID,',
'       BRAND,',
'       LOCATION_NAME,',
'       ADDRESS,',
'       BRAND_CODE,',
'       LOCATION_CODE,',
'       UNIT_NUMBER,',
'       FULL_ID_CODE',
'  from DW_MISO_KI_CUSTOMERS ',
'where brand = nvl(:P14_FILTER_ON,BRAND) '))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_page_header=>'Report 1'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(105213715004604071)
,p_name=>'Report 1'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_download_formats=>'CSV:HTML:EMAIL:XLSX:PDF:RTF'
,p_detail_link=>'f?p=&APP_ID.:17:&SESSION.::&DEBUG.:RP:P17_ID:\#ID#\'
,p_detail_link_text=>'<span aria-label="Edit"><span class="fa fa-edit" aria-hidden="true" title="Edit"></span></span>'
,p_owner=>'MISO'
,p_internal_uid=>105213715004604071
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(105213859421604071)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(105214239133604073)
,p_db_column_name=>'BRAND'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Brand'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(105214624891604073)
,p_db_column_name=>'LOCATION_NAME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Location Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(105215048363604073)
,p_db_column_name=>'ADDRESS'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Address'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(105215479531604074)
,p_db_column_name=>'BRAND_CODE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Brand Code'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(105215888047604074)
,p_db_column_name=>'LOCATION_CODE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Location Code'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(105216246537604074)
,p_db_column_name=>'UNIT_NUMBER'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Unit Number'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(105216690457604074)
,p_db_column_name=>'FULL_ID_CODE'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Full Id Code'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(105218407152605333)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1052185'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ID:BRAND:LOCATION_NAME:ADDRESS:BRAND_CODE:LOCATION_CODE:UNIT_NUMBER:FULL_ID_CODE'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(105224304449661405)
,p_plug_name=>'https://gd49ef7d5e3cd2d-db202110212330.adb.us-phoenix-1.oraclecloudapps.com/ords/miso/dw_miso_ki_customers/'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(63804998619235739)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_ajax_items_to_submit=>'P14_FILTER_ON'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_jet_chart(
 p_id=>wwv_flow_api.id(105224400530661406)
,p_region_id=>wwv_flow_api.id(105224304449661405)
,p_chart_type=>'bar'
,p_height=>'400'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_connect_nulls=>'Y'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_legend_rendered=>'off'
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(105224560934661407)
,p_chart_id=>wwv_flow_api.id(105224400530661406)
,p_seq=>10
,p_name=>'https://gd49ef7d5e3cd2d-db202110212330.adb.us-phoenix-1.oraclecloudapps.com/ords/miso/dw_miso_ki_customers/'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select count(ID) cntr,',
'       BRAND',
'  from DW_MISO_KI_CUSTOMERS ',
'group by brand order by brand'))
,p_ajax_items_to_submit=>'P14_FILTER_ON'
,p_items_value_column_name=>'CNTR'
,p_group_name_column_name=>'BRAND'
,p_group_short_desc_column_name=>'BRAND'
,p_items_label_column_name=>'BRAND'
,p_items_short_desc_column_name=>'BRAND'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
,p_link_target=>'f?p=&APP_ID.:14:&SESSION.::&DEBUG.::P14_FILTER_ON:&BRAND.'
,p_link_target_type=>'REDIRECT_PAGE'
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(105224630600661408)
,p_chart_id=>wwv_flow_api.id(105224400530661406)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(105224767368661409)
,p_chart_id=>wwv_flow_api.id(105224400530661406)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'none'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(105217819016604076)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(105213398471604070)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(63870030705235784)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:17:&SESSION.::&DEBUG.:17'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(105224927704661411)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(105213398471604070)
,p_button_name=>'UNFILTER'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(63870161266235784)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Unfilter'
,p_button_position=>'TOP'
,p_button_redirect_url=>'f?p=&APP_ID.:14:&SESSION.::&DEBUG.::P14_FILTER_ON:'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(105224203079661404)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(105213398471604070)
,p_button_name=>'FILTER_BUTTON'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(63870161266235784)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Filter Button'
,p_button_position=>'TOP'
,p_button_redirect_url=>'f?p=&APP_ID.:14:&SESSION.::&DEBUG.::P14_FILTER_ON:&P14_FILTER_ON.'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(105224143027661403)
,p_name=>'P14_FILTER_ON'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(105213398471604070)
,p_prompt=>'Filter On'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(63867587437235780)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.component_end;
end;
/
