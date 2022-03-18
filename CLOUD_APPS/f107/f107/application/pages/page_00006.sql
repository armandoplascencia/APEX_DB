prompt --application/pages/page_00006
begin
--   Manifest
--     PAGE: 00006
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
 p_id=>6
,p_user_interface_id=>wwv_flow_api.id(63894538847235817)
,p_name=>'DW_REGION'
,p_alias=>'DW-REGION'
,p_step_title=>'DW_REGION'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'APLASCENCIA'
,p_last_upd_yyyymmddhh24miss=>'20211119220229'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(64280641375922758)
,p_plug_name=>'DW_REGION'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(63803088663235738)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ROWID,',
'       ID,',
'       REGION,',
'       CREATED,',
'       CREATED_BY,',
'       UPDATED,',
'       UPDATED_BY,',
'       DW_EXECUTIVE_ID,',
'       DESCRIPTION,',
'       INFORMATIONAL_STATES',
'  from DW_REGION'))
,p_plug_source_type=>'NATIVE_IG'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_page_header=>'DW_REGION'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(64158585592347735)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(64158602779347736)
,p_name=>'APEX$ROW_SELECTOR'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(64159555085347745)
,p_name=>'DESCRIPTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DESCRIPTION'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Description'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>110
,p_value_alignment=>'LEFT'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(64159695961347746)
,p_name=>'INFORMATIONAL_STATES'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INFORMATIONAL_STATES'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Informational States'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>120
,p_value_alignment=>'LEFT'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(64281927265922759)
,p_name=>'ROWID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ROWID'
,p_data_type=>'ROWID'
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attribute_01=>'Y'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_pivot=>false
,p_is_primary_key=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(64282996572922774)
,p_name=>'ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Id'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>40
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'right'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(64283974861922775)
,p_name=>'REGION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REGION'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Region'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
,p_is_required=>false
,p_max_length=>1600
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(64284912497922775)
,p_name=>'CREATED'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CREATED'
,p_data_type=>'TIMESTAMP_LTZ'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_JET'
,p_heading=>'Created'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>60
,p_value_alignment=>'CENTER'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(64285933594922776)
,p_name=>'CREATED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CREATED_BY'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Created By'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
,p_is_required=>false
,p_max_length=>1020
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(64286978899922777)
,p_name=>'UPDATED'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UPDATED'
,p_data_type=>'TIMESTAMP_LTZ'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_JET'
,p_heading=>'Updated'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>80
,p_value_alignment=>'CENTER'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(64287954283922777)
,p_name=>'UPDATED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UPDATED_BY'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Updated By'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>90
,p_value_alignment=>'LEFT'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
,p_is_required=>false
,p_max_length=>1020
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(64288972312922778)
,p_name=>'DW_EXECUTIVE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DW_EXECUTIVE_ID'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Dw Executive Id'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>100
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'right'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_interactive_grid(
 p_id=>wwv_flow_api.id(64281159963922759)
,p_internal_uid=>64281159963922759
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>true
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_api.create_ig_report(
 p_id=>wwv_flow_api.id(64281536335922759)
,p_interactive_grid_id=>wwv_flow_api.id(64281159963922759)
,p_static_id=>'642816'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_api.create_ig_report_view(
 p_id=>wwv_flow_api.id(64281785923922759)
,p_report_id=>wwv_flow_api.id(64281536335922759)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(64282333797922760)
,p_view_id=>wwv_flow_api.id(64281785923922759)
,p_display_seq=>1
,p_column_id=>wwv_flow_api.id(64281927265922759)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(64283359365922774)
,p_view_id=>wwv_flow_api.id(64281785923922759)
,p_display_seq=>2
,p_column_id=>wwv_flow_api.id(64282996572922774)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(64284375214922775)
,p_view_id=>wwv_flow_api.id(64281785923922759)
,p_display_seq=>3
,p_column_id=>wwv_flow_api.id(64283974861922775)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(64285343439922775)
,p_view_id=>wwv_flow_api.id(64281785923922759)
,p_display_seq=>8
,p_column_id=>wwv_flow_api.id(64284912497922775)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>108.66699999999997
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(64286317831922776)
,p_view_id=>wwv_flow_api.id(64281785923922759)
,p_display_seq=>9
,p_column_id=>wwv_flow_api.id(64285933594922776)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>88.667
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(64287332491922777)
,p_view_id=>wwv_flow_api.id(64281785923922759)
,p_display_seq=>10
,p_column_id=>wwv_flow_api.id(64286978899922777)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>112.66699999999997
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(64288333779922777)
,p_view_id=>wwv_flow_api.id(64281785923922759)
,p_display_seq=>11
,p_column_id=>wwv_flow_api.id(64287954283922777)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>102.667
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(64289342876922778)
,p_view_id=>wwv_flow_api.id(64281785923922759)
,p_display_seq=>4
,p_column_id=>wwv_flow_api.id(64288972312922778)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(64290807878924237)
,p_view_id=>wwv_flow_api.id(64281785923922759)
,p_display_seq=>1
,p_column_id=>wwv_flow_api.id(64158585592347735)
,p_is_visible=>true
,p_is_frozen=>true
,p_width=>70.667
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(64354568010457977)
,p_view_id=>wwv_flow_api.id(64281785923922759)
,p_display_seq=>5
,p_column_id=>wwv_flow_api.id(64159555085347745)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(64355410620457980)
,p_view_id=>wwv_flow_api.id(64281785923922759)
,p_display_seq=>6
,p_column_id=>wwv_flow_api.id(64159695961347746)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(128896688389426153)
,p_plug_name=>'WALK There Database to Determine if you need parent keys added first.'
,p_region_name=>'walk_model'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(63803088663235738)
,p_plug_display_sequence=>9999
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select * from full_walk_customer_RU_RD ',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'WALK There Database to Determine if you need parent keys added first.'
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
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(128896827385426154)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF:RTF:EMAIL'
,p_owner=>'APLASCENCIA'
,p_internal_uid=>128896827385426154
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(64507573920159218)
,p_db_column_name=>'FRANCHISE_NAME'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Franchise Name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(64507966755159218)
,p_db_column_name=>'REGION'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Region'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(64509171003159219)
,p_db_column_name=>'EXECUTIVE'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Executive'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(64509927156159220)
,p_db_column_name=>'ADDRESS_STREETADDRESS'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Address Streetaddress'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(64510790100159220)
,p_db_column_name=>'ZIPCODE_NAME'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Zipcode Name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(64563477316630911)
,p_db_column_name=>'DW_STORE_NAME'
,p_display_order=>150
,p_column_identifier=>'P'
,p_column_label=>'Dw Store Name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(64563562741630912)
,p_db_column_name=>'DW_STORE_DESCRIPTION'
,p_display_order=>160
,p_column_identifier=>'Q'
,p_column_label=>'Dw Store Description'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(64563621308630913)
,p_db_column_name=>'DW_STORE_ADDL_DETAILS'
,p_display_order=>170
,p_column_identifier=>'R'
,p_column_label=>'Dw Store Addl Details'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(64563793431630914)
,p_db_column_name=>'ADDRESS_TYPE_NAME'
,p_display_order=>180
,p_column_identifier=>'S'
,p_column_label=>'Address Type Name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(64563850649630915)
,p_db_column_name=>'ADDRESS_TYPE_DESC_OF'
,p_display_order=>190
,p_column_identifier=>'T'
,p_column_label=>'Address Type Desc Of'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(64563961733630916)
,p_db_column_name=>'ADDRESS_ZIPCODE_ID'
,p_display_order=>200
,p_column_identifier=>'U'
,p_column_label=>'Address Zipcode Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(64564068081630917)
,p_db_column_name=>'ZIPCODE_POPULATION'
,p_display_order=>210
,p_column_identifier=>'V'
,p_column_label=>'Zipcode Population'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(64564146687630918)
,p_db_column_name=>'STATE_NAME'
,p_display_order=>220
,p_column_identifier=>'W'
,p_column_label=>'State Name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(64564257351630919)
,p_db_column_name=>'CITY_NAME'
,p_display_order=>230
,p_column_identifier=>'X'
,p_column_label=>'City Name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(64564344755630920)
,p_db_column_name=>'DW_EXEC_DESCRIPTION'
,p_display_order=>240
,p_column_identifier=>'Y'
,p_column_label=>'Dw Exec Description'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(64564446447630921)
,p_db_column_name=>'CUST_L4_POSITION'
,p_display_order=>250
,p_column_identifier=>'Z'
,p_column_label=>'Cust L4 Position'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(64564544446630922)
,p_db_column_name=>'CUST_L3_STORE'
,p_display_order=>260
,p_column_identifier=>'AA'
,p_column_label=>'Cust L3 Store'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(64564666422630923)
,p_db_column_name=>'CUST_L2_FRANCHISE'
,p_display_order=>270
,p_column_identifier=>'AB'
,p_column_label=>'Cust L2 Franchise'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(64564747919630924)
,p_db_column_name=>'CUST_L1_REGIONAL'
,p_display_order=>280
,p_column_identifier=>'AC'
,p_column_label=>'Cust L1 Regional'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(64564849214630925)
,p_db_column_name=>'CUST_L0_EXEC'
,p_display_order=>290
,p_column_identifier=>'AD'
,p_column_label=>'Cust L0 Exec'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(64564920140630926)
,p_db_column_name=>'STORE_POSITION'
,p_display_order=>300
,p_column_identifier=>'AE'
,p_column_label=>'Store Position'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(64565001370630927)
,p_db_column_name=>'STORE_POS_DESCRIPTION_1'
,p_display_order=>310
,p_column_identifier=>'AF'
,p_column_label=>'Store Pos Description 1'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(64565149990630928)
,p_db_column_name=>'DW_REGION_DESCRIPTION_2'
,p_display_order=>320
,p_column_identifier=>'AG'
,p_column_label=>'Dw Region Description 2'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(128991553845219269)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'644863'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'FRANCHISE_NAME:REGION:EXECUTIVE:ADDRESS_STREETADDRESS:ZIPCODE_NAME:DW_STORE_NAME:DW_STORE_DESCRIPTION:DW_STORE_ADDL_DETAILS:ADDRESS_TYPE_NAME:ADDRESS_TYPE_DESC_OF:ADDRESS_ZIPCODE_ID:ZIPCODE_POPULATION:STATE_NAME:CITY_NAME:DW_EXEC_DESCRIPTION:CUST_L4_'
||'POSITION:CUST_L3_STORE:CUST_L2_FRANCHISE:CUST_L1_REGIONAL:CUST_L0_EXEC:STORE_POSITION:STORE_POS_DESCRIPTION_1:DW_REGION_DESCRIPTION_2'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(128981930149218620)
,p_plug_name=>'SQL THAT CREATED THE RPT'
,p_region_name=>'SQLofmodel'
,p_parent_plug_id=>wwv_flow_api.id(128896688389426153)
,p_region_template_options=>'#DEFAULT#:js-useLocalStorage:is-expanded:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(63790019458235732)
,p_plug_display_sequence=>110
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<PRE>',
'select distinct',
'       DW_STORE.ID                 as PK_STORE_HIERARCHY,',
'       DW_STORE.STORE_NAME         as STORE_NAME,',
'       DW_STORE.ADDRESS_ID         as STORE_ADDRESS_ID,',
'       DW_STORE.DESCRIPTION        as STORE_DESCRIPTION,',
'       DW_STORE.ADDL_DETAILS       as STORE_ADDL_DETAILS,',
'       DW_FRANCHISE.FRANCHISE_NAME as FRANCHISE_NAME,',
'       DW_REGION.REGION            as REGION,',
'       DW_REGION.DESCRIPTION       as REGION_DESCRIPTION,',
'       DW_REGION.INFORMATIONAL_STATES as REGION_INFORMATIONAL_STATES,',
'       DW_EXECUTIVE.EXECUTIVE         as EXECUTIVE,',
'       DW_EXECUTIVE.DESCRIPTION       as EXECUTIVE_DESCRIPTION,',
'       ADDRESS.STREETADDRESS          as ADDRESS_STREETADDRESS,',
'       ADDRESS.ADDRESS_TYPE           as ADDRESS_TYPE,',
'       ZIPCODE.NAME                   as ZIPCODE_NAME,',
'       ZIPCODE.ZIPCODE_NUMBER         as ZIPCODE_NUMBER ',
' from ZIPCODE           ZIPCODE,',
'      ADDRESS           ADDRESS,',
'      DW_EXECUTIVE      DW_EXECUTIVE,',
'      DW_REGION         DW_REGION,',
'      DW_STORE_POSITION DW_STORE_POSITION,',
'      DW_STORE          DW_STORE,',
'      DW_FRANCHISE      DW_FRANCHISE  ',
' where  DW_STORE.DW_FRANCHISE_ID  = DW_FRANCHISE.ID (+)',
'    and DW_FRANCHISE.DW_REGION_ID = DW_REGION.ID (+)',
'    and DW_REGION.DW_EXECUTIVE_ID = DW_EXECUTIVE.ID (+)',
'    and DW_STORE.ADDRESS_ID       = ADDRESS.ID (+)',
'    and ADDRESS.ZIPCODE_ID        = ZIPCODE.ID (+)',
'</PRE>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(193369975129232948)
,p_plug_name=>'Quick Model'
,p_region_name=>'quick_model'
,p_parent_plug_id=>wwv_flow_api.id(128896688389426153)
,p_region_template_options=>'#DEFAULT#:js-useLocalStorage:is-expanded:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(63790019458235732)
,p_plug_display_sequence=>100
,p_plug_display_point=>'BODY'
,p_plug_source=>'<img src="#APP_IMAGES#lastest_dw2_1118.png">'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(64158767920347737)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(64280641375922758)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'DW_REGION - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.component_end;
end;
/
