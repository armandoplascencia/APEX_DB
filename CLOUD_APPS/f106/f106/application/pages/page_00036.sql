prompt --application/pages/page_00036
begin
--   Manifest
--     PAGE: 00036
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>106
,p_default_id_offset=>0
,p_default_owner=>'MISO'
);
wwv_flow_api.create_page(
 p_id=>36
,p_user_interface_id=>wwv_flow_api.id(48908740043344081)
,p_name=>'CONTROL_VIEW_RESTAPI'
,p_alias=>'CONTROL-VIEW-RESTAPI'
,p_step_title=>'CONTROL_VIEW_RESTAPI'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'MISO'
,p_last_upd_yyyymmddhh24miss=>'20211229050930'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(73208028428617849)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(48799545361344000)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select OWNER,',
'       ORIG_TABLE_NAME,',
'       TABLE_NAME,',
'       VIEW_NAME,',
'       VIEW_NAME_LEN,',
'       REST_SQL_RUN,',
'       SQL_FOR_VIEW,',
'       NEW_TABLE_SIZE_INFO,',
'       TABLE_NAME_CUT_SIZE,',
'       TO_CUT,',
'       "EXISTS" DOES_VIEW_EXISTS',
'  from SVY_V_SYND_VIEWS'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'New'
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
 p_id=>wwv_flow_api.id(76786229543784512)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF:RTF:EMAIL'
,p_owner=>'MISO'
,p_internal_uid=>76786229543784512
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(76786360602784513)
,p_db_column_name=>'OWNER'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Owner'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(76786410347784514)
,p_db_column_name=>'ORIG_TABLE_NAME'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Orig Table Name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(76786507428784515)
,p_db_column_name=>'TABLE_NAME'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Table Name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(76786674628784516)
,p_db_column_name=>'VIEW_NAME'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'View Name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(76786718714784517)
,p_db_column_name=>'VIEW_NAME_LEN'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'View Name Len'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(76786811735784518)
,p_db_column_name=>'REST_SQL_RUN'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Rest Sql Run'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(76786938672784519)
,p_db_column_name=>'SQL_FOR_VIEW'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Sql For View'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(76787016128784520)
,p_db_column_name=>'NEW_TABLE_SIZE_INFO'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'New Table Size Info'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(76787156756784521)
,p_db_column_name=>'TABLE_NAME_CUT_SIZE'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Table Name Cut Size'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(76787232459784522)
,p_db_column_name=>'TO_CUT'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'To Cut'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(76787679473784526)
,p_db_column_name=>'DOES_VIEW_EXISTS'
,p_display_order=>110
,p_column_identifier=>'L'
,p_column_label=>'Does View Exists'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(76801718481887913)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'768018'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'OWNER:ORIG_TABLE_NAME:TABLE_NAME:VIEW_NAME:VIEW_NAME_LEN:REST_SQL_RUN:SQL_FOR_VIEW:NEW_TABLE_SIZE_INFO:TABLE_NAME_CUT_SIZE:TO_CUT:DOES_VIEW_EXISTS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(76715048973625256)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(48828579444344015)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(48761501111343979)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(48885668992344068)
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(76715611524625260)
,p_plug_name=>'CONTROL_VIEW_RESTAPI'
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(48799545361344000)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ROWID,',
'       OWNER,',
'       TABLE_NAME,',
'       RESTAPI,',
'       INSERT_DATE,',
'       APPL_NAME',
'  from SVY_V_SYND_VIEWS_META'))
,p_plug_source_type=>'NATIVE_IG'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_page_header=>'CONTROL_VIEW_RESTAPI'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(76716950704625269)
,p_name=>'APEX$ROW_SELECTOR'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_enable_hide=>true
,p_is_primary_key=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(76717413335625269)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_label=>'Actions'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>20
,p_value_alignment=>'CENTER'
,p_enable_hide=>true
,p_is_primary_key=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(76718460906625272)
,p_name=>'ROWID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ROWID'
,p_data_type=>'ROWID'
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attribute_01=>'Y'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_control_break=>false
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(76719410333625508)
,p_name=>'OWNER'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OWNER'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Owner'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
,p_is_required=>true
,p_max_length=>128
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_control_break=>false
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(76720337893625509)
,p_name=>'TABLE_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TABLE_NAME'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Table Name'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
,p_is_required=>true
,p_max_length=>128
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_control_break=>false
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(76721363637625510)
,p_name=>'RESTAPI'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RESTAPI'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Restapi'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>1
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
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
 p_id=>wwv_flow_api.id(76722333596625511)
,p_name=>'INSERT_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INSERT_DATE'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_JET'
,p_heading=>'Insert Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>70
,p_value_alignment=>'CENTER'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
,p_attribute_12=>'MONTH-PICKER:YEAR-PICKER'
,p_attribute_13=>'VISIBLE'
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
 p_id=>wwv_flow_api.id(76723369827625512)
,p_name=>'APPL_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'APPL_NAME'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Appl Name'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>80
,p_value_alignment=>'LEFT'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
,p_is_required=>false
,p_max_length=>100
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_control_break=>false
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_interactive_grid(
 p_id=>wwv_flow_api.id(76716178903625261)
,p_internal_uid=>76716178903625261
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>true
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SET'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_enable_save_public_report=>true
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
 p_id=>wwv_flow_api.id(76716535111625263)
,p_interactive_grid_id=>wwv_flow_api.id(76716178903625261)
,p_static_id=>'767166'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_api.create_ig_report_view(
 p_id=>wwv_flow_api.id(76716731736625264)
,p_report_id=>wwv_flow_api.id(76716535111625263)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(76717875212625270)
,p_view_id=>wwv_flow_api.id(76716731736625264)
,p_display_seq=>0
,p_column_id=>wwv_flow_api.id(76717413335625269)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(76718846365625272)
,p_view_id=>wwv_flow_api.id(76716731736625264)
,p_display_seq=>1
,p_column_id=>wwv_flow_api.id(76718460906625272)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(76719740338625508)
,p_view_id=>wwv_flow_api.id(76716731736625264)
,p_display_seq=>2
,p_column_id=>wwv_flow_api.id(76719410333625508)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(76720767394625510)
,p_view_id=>wwv_flow_api.id(76716731736625264)
,p_display_seq=>3
,p_column_id=>wwv_flow_api.id(76720337893625509)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(76721754316625511)
,p_view_id=>wwv_flow_api.id(76716731736625264)
,p_display_seq=>4
,p_column_id=>wwv_flow_api.id(76721363637625510)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(76722768975625511)
,p_view_id=>wwv_flow_api.id(76716731736625264)
,p_display_seq=>5
,p_column_id=>wwv_flow_api.id(76722333596625511)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(76723784442625512)
,p_view_id=>wwv_flow_api.id(76716731736625264)
,p_display_seq=>6
,p_column_id=>wwv_flow_api.id(76723369827625512)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(76787799721784527)
,p_plug_name=>'New restapi'
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(48799545361344000)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select VIEW_NAME,',
'       ORIG_TABLE_NAME,',
'       TABLE_NAME,',
'       TO_CUT,',
'       VIEWS_ENABLE_SCHEMA_P1,',
'       VIEWS_BLD_MODULE_P2,',
'       VIEWS_BLD_TEMPLATE_P3,',
'       VIEWS_BLD_HANDLER_P4,',
'       REST_READ_ENDPOINT,',
'       CURL_TO_FILE_ENDPOINT,',
'       "EXISTS",',
'       PK_OF',
'  from SVY_V_SYND_VIEWS_RESTAPIS'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'New restapi'
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
 p_id=>wwv_flow_api.id(76787889229784528)
,p_max_row_count=>'1000000'
,p_base_pk1=>'PK_OF'
,p_allow_save_rpt_public=>'Y'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'TOP_AND_BOTTOM_LEFT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF:RTF:EMAIL'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="">'
,p_allow_exclude_null_values=>'N'
,p_allow_hide_extra_columns=>'N'
,p_owner=>'MISO'
,p_internal_uid=>76787889229784528
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(76787964154784529)
,p_db_column_name=>'VIEWS_ENABLE_SCHEMA_P1'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Views Enable Schema P1'
,p_column_html_expression=>'<PRE>#VIEWS_ENABLE_SCHEMA_P1#</PRE>'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(76788084209784530)
,p_db_column_name=>'VIEWS_BLD_MODULE_P2'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Views Bld Module P2'
,p_column_html_expression=>'<PRE>#VIEWS_BLD_MODULE_P2#</PRE>'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(76788170194784531)
,p_db_column_name=>'VIEWS_BLD_TEMPLATE_P3'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Views Bld Template P3'
,p_column_html_expression=>'<PRE>#VIEWS_BLD_TEMPLATE_P3#</PRE>'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(76788271216784532)
,p_db_column_name=>'VIEWS_BLD_HANDLER_P4'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Views Bld Handler P4'
,p_column_html_expression=>'<PRE>#VIEWS_BLD_HANDLER_P4#</PRE>'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(76788354236784533)
,p_db_column_name=>'REST_READ_ENDPOINT'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Rest Read Endpoint'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(76788469822784534)
,p_db_column_name=>'CURL_TO_FILE_ENDPOINT'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Curl To File Endpoint'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(76788520254784535)
,p_db_column_name=>'VIEW_NAME'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'View Name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(76788635059784536)
,p_db_column_name=>'ORIG_TABLE_NAME'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Orig Table Name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(76788788130784537)
,p_db_column_name=>'TABLE_NAME'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Table Name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(76788829843784538)
,p_db_column_name=>'TO_CUT'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'To Cut'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(76788952777784539)
,p_db_column_name=>'EXISTS'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Exists'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(76789013701784540)
,p_db_column_name=>'PK_OF'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Pk Of'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(76809653380215334)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'768097'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'VIEWS_BLD_TEMPLATE_P3:VIEWS_BLD_HANDLER_P4::VIEW_NAME:ORIG_TABLE_NAME:TABLE_NAME:TO_CUT:EXISTS:PK_OF'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(76787523100784525)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(73208028428617849)
,p_button_name=>'New'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(48884215312344068)
,p_button_image_alt=>'New'
,p_button_position=>'BELOW_BOX'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(76724360385625515)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(76715611524625260)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'CONTROL_VIEW_RESTAPI - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.component_end;
end;
/
