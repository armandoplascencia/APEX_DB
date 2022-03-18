prompt --application/pages/page_00001
begin
--   Manifest
--     PAGE: 00001
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>133
,p_default_id_offset=>0
,p_default_owner=>'MISO'
);
wwv_flow_api.create_page(
 p_id=>1
,p_user_interface_id=>wwv_flow_api.id(104891014803699938)
,p_name=>'my_metadata'
,p_alias=>'HOME'
,p_step_title=>'my_metadata Oracle to BIGQUERY'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_api.id(104744623082699813)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'MISO'
,p_last_upd_yyyymmddhh24miss=>'20220305003422'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(104906146555700035)
,p_name=>'My Metadata'
,p_template=>wwv_flow_api.id(104801457324699859)
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--staticRowColors:t-Report--rowHighlight:t-Report--inline:t-Report--hideNoPagination'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'with abc as ( select MY_METADATA_ID,',
'       ORIGINAL_MD,',
'       MD,',
'       DBMS_LOB.INSTR( MD, ''/*'',1 ) first_s_cmt,',
'       DBMS_LOB.INSTR( MD, ''*/'',1 ) first_e_cmt,',
'       dbms_lob.substr( md,  ',
'         ( DBMS_LOB.INSTR( MD, ''*/'',1 ) - DBMS_LOB.INSTR( MD, ''/*'',1 ) +2 ),',
'         DBMS_LOB.INSTR( MD, ''/*'',1 ) ',
'       ) cmt_str,',
'--       MD_HTML,',
'       MDSIZE,',
'       OWNER,',
'       ONAME,',
'       OTYPE,',
'       FIRST_200,',
'/*       TOKEN1,',
'       TOKEN2,',
'       TOKEN3,',
'       TOKEN4,',
'       TOKEN5,',
'       TOKEN6,',
'       TOKEN7,',
'       TOKEN8,',
'       TOKEN9,',
'       TOKEN10, */',
'       CREATED_DATE,',
'       DONE_FLAG,',
'       TABLE_NAME',
'  from MY_METADATA )',
'select  MY_METADATA_ID, /*my_metadata_clob_replace (md, cmt_Str,'''')*/ md, first_s_cmt,first_e_cmt,',
'cmt_str,',
'--       MD_HTML,',
'       MDSIZE,',
'       OWNER,',
'       ONAME,',
'       OTYPE,',
'       FIRST_200,',
'  /*     TOKEN1,',
'       TOKEN2,',
'       TOKEN3,',
'       TOKEN4,',
'       TOKEN5,',
'       TOKEN6,',
'       TOKEN7,',
'       TOKEN8,',
'       TOKEN9,',
'       TOKEN10, */',
'       CREATED_DATE,',
'       DONE_FLAG,',
'       TABLE_NAME       ',
' from abc'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(104825178856699877)
,p_query_num_rows=>50
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'ROW_RANGES_WITH_LINKS'
,p_query_row_count_max=>100000
,p_pagination_display_position=>'TOP_AND_BOTTOM_LEFT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_prn_format=>'PDF'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(104910066386700096)
,p_query_column_id=>1
,p_column_alias=>'MY_METADATA_ID'
,p_column_display_sequence=>1
,p_column_heading=>'<span class="u-VisuallyHidden">Edit</span>'
,p_column_link=>'f?p=&APP_ID.:2:&APP_SESSION.:::2:P2_MY_METADATA_ID:\#MY_METADATA_ID#\'
,p_column_linktext=>'<span class="fa fa-edit" aria-hidden="true"></span>'
,p_column_alignment=>'CENTER'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(104910869078700098)
,p_query_column_id=>2
,p_column_alias=>'MD'
,p_column_display_sequence=>3
,p_column_heading=>'Md'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(101105692755203236)
,p_query_column_id=>3
,p_column_alias=>'FIRST_S_CMT'
,p_column_display_sequence=>23
,p_column_heading=>'First S Cmt'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(101105706925203237)
,p_query_column_id=>4
,p_column_alias=>'FIRST_E_CMT'
,p_column_display_sequence=>33
,p_column_heading=>'First E Cmt'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(101105850972203238)
,p_query_column_id=>5
,p_column_alias=>'CMT_STR'
,p_column_display_sequence=>13
,p_column_heading=>'Cmt Str'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(104911674229700098)
,p_query_column_id=>6
,p_column_alias=>'MDSIZE'
,p_column_display_sequence=>43
,p_column_heading=>'Mdsize'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G999G999G999G999G999G990'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(104912096339700098)
,p_query_column_id=>7
,p_column_alias=>'OWNER'
,p_column_display_sequence=>53
,p_column_heading=>'Owner'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(104912424477700099)
,p_query_column_id=>8
,p_column_alias=>'ONAME'
,p_column_display_sequence=>63
,p_column_heading=>'Oname'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(104912873255700099)
,p_query_column_id=>9
,p_column_alias=>'OTYPE'
,p_column_display_sequence=>73
,p_column_heading=>'Otype'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(104913215659700099)
,p_query_column_id=>10
,p_column_alias=>'FIRST_200'
,p_column_display_sequence=>83
,p_column_heading=>'First 200'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(104917676702700102)
,p_query_column_id=>11
,p_column_alias=>'CREATED_DATE'
,p_column_display_sequence=>193
,p_column_heading=>'Created Date'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(104918080335700102)
,p_query_column_id=>12
,p_column_alias=>'DONE_FLAG'
,p_column_display_sequence=>203
,p_column_heading=>'Done Flag'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(101105574863203235)
,p_query_column_id=>13
,p_column_alias=>'TABLE_NAME'
,p_column_display_sequence=>213
,p_column_heading=>'Table Name'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(104906274437700035)
,p_plug_name=>'Search'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(104801457324699859)
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>4
,p_plug_display_point=>'REGION_POSITION_02'
,p_plug_source_type=>'NATIVE_FACETED_SEARCH'
,p_filtered_region_id=>wwv_flow_api.id(104906146555700035)
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
 p_id=>wwv_flow_api.id(104909086554700039)
,p_plug_name=>'Button Bar'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--noPadding:t-ButtonRegion--noUI'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(104771470355699841)
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
 p_id=>wwv_flow_api.id(104918669847700103)
,p_plug_name=>'my_metadata Oracle to BIGQUERY'
,p_icon_css_classes=>'app-icon'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(104791664987699854)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(104920238771700106)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(104906146555700035)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(104866565688699908)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:2'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(104909599418700040)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(104909086554700039)
,p_button_name=>'RESET'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(104866606920699908)
,p_button_image_alt=>'Reset'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:RR,1::'
,p_icon_css_classes=>'fa-undo'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(104906766894700036)
,p_name=>'P1_SEARCH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(104906274437700035)
,p_prompt=>'Search'
,p_source=>'OWNER,ONAME,OTYPE,FIRST_200,TOKEN1'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_SEARCH'
,p_attribute_01=>'ROW'
,p_attribute_02=>'FACET'
,p_fc_collapsible=>true
,p_fc_initial_collapsed=>false
,p_fc_show_chart=>false
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(104907155523700037)
,p_name=>'P1_OWNER'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(104906274437700035)
,p_prompt=>'Owner'
,p_source=>'OWNER'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_attribute_01=>'1'
,p_attribute_02=>'VERTICAL'
,p_fc_collapsible=>true
,p_fc_initial_collapsed=>false
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_show_more_count=>5
,p_fc_sort_by_top_counts=>true
,p_fc_show_chart=>true
,p_fc_toggleable=>false
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(104907531686700037)
,p_name=>'P1_OTYPE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(104906274437700035)
,p_prompt=>'Otype'
,p_source=>'OTYPE'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_attribute_01=>'1'
,p_attribute_02=>'VERTICAL'
,p_fc_collapsible=>true
,p_fc_initial_collapsed=>false
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_show_more_count=>5
,p_fc_sort_by_top_counts=>true
,p_fc_show_chart=>true
,p_fc_toggleable=>false
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(104908708335700039)
,p_name=>'P1_DONE_FLAG'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(104906274437700035)
,p_prompt=>'Done Flag'
,p_source=>'DONE_FLAG'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_attribute_01=>'1'
,p_attribute_02=>'NONE'
,p_attribute_03=>'Y'
,p_attribute_04=>'VERTICAL'
,p_attribute_05=>'N'
,p_fc_collapsible=>true
,p_fc_initial_collapsed=>false
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_show_more_count=>5
,p_fc_sort_by_top_counts=>true
,p_fc_show_chart=>true
,p_fc_toggleable=>false
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(104919360343700104)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(104906146555700035)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(104919850111700106)
,p_event_id=>wwv_flow_api.id(104919360343700104)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(104906146555700035)
);
wwv_flow_api.component_end;
end;
/
