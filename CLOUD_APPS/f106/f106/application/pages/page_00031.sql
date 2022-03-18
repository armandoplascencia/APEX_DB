prompt --application/pages/page_00031
begin
--   Manifest
--     PAGE: 00031
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
 p_id=>31
,p_user_interface_id=>wwv_flow_api.id(48908740043344081)
,p_name=>'Question Loading'
,p_alias=>'QUESTION-LOADING'
,p_step_title=>'Question Loading'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'APLASCENCIA'
,p_last_upd_yyyymmddhh24miss=>'20211112184249'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(49452742486532160)
,p_plug_name=>'Button Bar'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--noUI'
,p_plug_template=>wwv_flow_api.id(48789134386343995)
,p_plug_display_sequence=>30
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(49455150205532163)
,p_plug_name=>'Data Source'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(48819161814344010)
,p_plug_display_sequence=>40
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(49455569343532163)
,p_plug_name=>'Copy and Paste Delimited Data'
,p_parent_plug_id=>wwv_flow_api.id(49455150205532163)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(48788151331343995)
,p_plug_display_sequence=>30
,p_plug_display_point=>'BODY'
,p_plug_display_condition_type=>'ITEM_IS_NULL'
,p_plug_display_when_condition=>'P31_DATA'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(49456786689532165)
,p_plug_name=>'Pasted Data'
,p_parent_plug_id=>wwv_flow_api.id(49455150205532163)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(48788151331343995)
,p_plug_display_sequence=>40
,p_plug_display_point=>'BODY'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P31_DATA'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(49457588658532165)
,p_name=>'Preview'
,p_template=>wwv_flow_api.id(48819161814344010)
,p_display_sequence=>50
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--staticRowColors:t-Report--rowHighlight:t-Report--horizontalBorders:t-Report--hideNoPagination'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select p.line_number,',
'       p.col001, p.col002, p.col003, p.col004, p.col005, p.col006, p.col007, p.col008, p.col009, p.col010',
'       -- add more columns (col011 to col300) here.',
'  from table( apex_data_parser.parse(',
'                  p_content          => to_blob(sys.utl_raw.cast_to_raw( :P31_DATA )),',
'                  p_file_name        => ''pasted_data.csv'', ',
'                  p_add_headers_row   => ''Y'',',
'                  p_csv_enclosed      => ''"'',',
'                  p_file_charset      => ''AL32UTF8'',',
'                  p_max_rows         => 10 ) ) p'))
,p_display_when_condition=>'P31_DATA'
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(48842843551344036)
,p_query_headings_type=>'NO_HEADINGS'
,p_query_num_rows=>50
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_prn_output=>'N'
,p_prn_format=>'PDF'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(49457901977532169)
,p_query_column_id=>1
,p_column_alias=>'LINE_NUMBER'
,p_column_display_sequence=>1
,p_column_heading=>'Line Number'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(49458322308532169)
,p_query_column_id=>2
,p_column_alias=>'COL001'
,p_column_display_sequence=>2
,p_column_heading=>'Col001'
,p_heading_alignment=>'LEFT'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(49458796246532170)
,p_query_column_id=>3
,p_column_alias=>'COL002'
,p_column_display_sequence=>3
,p_column_heading=>'Col002'
,p_heading_alignment=>'LEFT'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(49459162484532170)
,p_query_column_id=>4
,p_column_alias=>'COL003'
,p_column_display_sequence=>4
,p_column_heading=>'Col003'
,p_heading_alignment=>'LEFT'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(49459509710532170)
,p_query_column_id=>5
,p_column_alias=>'COL004'
,p_column_display_sequence=>5
,p_column_heading=>'Col004'
,p_heading_alignment=>'LEFT'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(49459907438532170)
,p_query_column_id=>6
,p_column_alias=>'COL005'
,p_column_display_sequence=>6
,p_column_heading=>'Col005'
,p_heading_alignment=>'LEFT'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(49460308106532171)
,p_query_column_id=>7
,p_column_alias=>'COL006'
,p_column_display_sequence=>7
,p_column_heading=>'Col006'
,p_heading_alignment=>'LEFT'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(49460757865532171)
,p_query_column_id=>8
,p_column_alias=>'COL007'
,p_column_display_sequence=>8
,p_column_heading=>'Col007'
,p_heading_alignment=>'LEFT'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(49461116552532171)
,p_query_column_id=>9
,p_column_alias=>'COL008'
,p_column_display_sequence=>9
,p_column_heading=>'Col008'
,p_heading_alignment=>'LEFT'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(49461593492532171)
,p_query_column_id=>10
,p_column_alias=>'COL009'
,p_column_display_sequence=>10
,p_column_heading=>'Col009'
,p_heading_alignment=>'LEFT'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(49461978142532172)
,p_query_column_id=>11
,p_column_alias=>'COL010'
,p_column_display_sequence=>11
,p_column_heading=>'Col010'
,p_heading_alignment=>'LEFT'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(49478499319798501)
,p_plug_name=>'explain ( USE  the Cooresponding FK)'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(48817248700344009)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_column=>1
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select * from (',
'select ''QUESTION_CATEGORY'' labelof, "ID", "NAME" from "SVY_QUESTION_CATEGORY" union all',
'select ''QUESTION_TYPE''     labelof, "ID", "NAME" from "SVY_QUESTION_TYPE"  union all  ',
'select ''RESPONSE_TYPE''     labelof, "ID", "NAME" from "SVY_RESPONSE_TYPE"    )',
'order by labelof, id, name',
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
,p_prn_page_header=>'explain ( USE  the Cooresponding FK)'
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
 p_id=>wwv_flow_api.id(44746171760826602)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF:RTF:EMAIL'
,p_owner=>'APLASCENCIA'
,p_internal_uid=>44746171760826602
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(44746296526826603)
,p_db_column_name=>'LABELOF'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Labelof'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(44746305554826604)
,p_db_column_name=>'ID'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(44746477321826605)
,p_db_column_name=>'NAME'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(52472673710525235)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'524727'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'LABELOF:ID:NAME'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(49478815246798505)
,p_plug_name=>'explain ( USE  the Cooresponding FK)'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(48819161814344010)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>8
,p_plug_display_column=>5
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<PRE>',
'        "QUESTION_CATEGORY_ID" NUMBER,',
'	"QUESTION_TYPE_ID"     NUMBER,',
'	"RESPONSE_TYPE_ID"     NUMBER, ',
'	"NAME"                 VARCHAR2(400 CHAR)',
'	"QUESTION_NUMBER"      NUMBER(*,0),',
'	"QUESTION_ORDER"       NUMBER,',
'',
'ALTER TABLE  "SVY_QUESTION" ADD CONSTRAINT "SVY_QUESTION_QUESTION_CATEG_FK" FOREIGN KEY ("QUESTION_CATEGORY_ID")',
'	  REFERENCES  "SVY_QUESTION_CATEGORY" ("ID") ENABLE;',
'',
'ALTER TABLE  "SVY_QUESTION" ADD CONSTRAINT "SVY_QUESTION_QUESTION_TYPE_FK" FOREIGN KEY ("QUESTION_TYPE_ID")',
'	  REFERENCES  "SVY_QUESTION_TYPE" ("ID") ENABLE;',
'',
'ALTER TABLE  "SVY_QUESTION" ADD CONSTRAINT "SVY_QUESTION_RESPONSE_TYPE_FK" FOREIGN KEY ("RESPONSE_TYPE_ID")',
'	  REFERENCES  "SVY_RESPONSE_TYPE" ("ID") ENABLE;',
'',
'ALTER TABLE  "SVY_QUESTION" ADD CONSTRAINT "SVY_QUESTION_MANDATORY_FK" FOREIGN KEY ("MANDATORY_OPT_COND_ID")',
'	  REFERENCES  "PKI_MANDATORY_OPT_COND" ("MANDATORY_OPT_COND_ID") ENABLE;',
'',
'</PRE>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(49453249971532161)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(49452742486532160)
,p_button_name=>'CLEAR'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(48884215312344068)
,p_button_image_alt=>'Clear'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_condition=>'P31_DATA'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(49453574359532162)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(49452742486532160)
,p_button_name=>'LOAD'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(48884215312344068)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Load Data'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_condition=>'P31_DATA'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(49454082796532162)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(49452742486532160)
,p_button_name=>'NEXT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(48884399583344068)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Next'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_condition=>'P31_DATA'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_icon_css_classes=>'fa-angle-right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(49455909907532164)
,p_name=>'P31_DATA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(49455569343532163)
,p_prompt=>'Copy and Paste Delimited Data'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cHeight=>10
,p_field_template=>wwv_flow_api.id(48881763257344066)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--xlarge'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(49456312197532165)
,p_name=>'P31_ERROR_ROW_COUNT'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(49455569343532163)
,p_display_as=>'NATIVE_HIDDEN'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(49457126055532165)
,p_name=>'P31_PASTED_DATA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(49456786689532165)
,p_item_default=>'Pasted Data'
,p_prompt=>'Pasted Data'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(48881433461344065)
,p_item_icon_css_classes=>'fa-clipboard-arrow-up fa-2x'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(49454440808532162)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_DATA_LOADING'
,p_process_name=>'Load Data'
,p_attribute_01=>wwv_flow_api.id(49451747080513106)
,p_attribute_02=>'TEXT'
,p_attribute_04=>'P31_DATA'
,p_attribute_08=>'P31_ERROR_ROW_COUNT'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(49453574359532162)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(49454842181532163)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Cache'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>':REQUEST = ''CLEAR'' or :P31_ERROR_ROW_COUNT = 0'
,p_process_when_type=>'EXPRESSION'
,p_process_when2=>'PLSQL'
);
wwv_flow_api.component_end;
end;
/
