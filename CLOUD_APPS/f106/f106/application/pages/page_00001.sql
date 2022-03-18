prompt --application/pages/page_00001
begin
--   Manifest
--     PAGE: 00001
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
 p_id=>1
,p_user_interface_id=>wwv_flow_api.id(48908740043344081)
,p_name=>'Home'
,p_alias=>'HOME'
,p_step_title=>'MISO_SURVEY_POC'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'MISO'
,p_last_upd_yyyymmddhh24miss=>'20211230220756'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(44731894265212421)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(48819161814344010)
,p_plug_display_sequence=>0
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<pre> Quick Model </pre>',
'<img src="#APP_IMAGES#model.png" alt="image">',
'<img src="#APP_IMAGES#pki_png.png" alt="image">',
''))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(44732799222212430)
,p_plug_name=>'RPTS_COLLAPSEABLE'
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(48799545361344000)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(44732826908212431)
,p_name=>'SURVEY'
,p_parent_plug_id=>wwv_flow_api.id(44732799222212430)
,p_template=>wwv_flow_api.id(48799545361344000)
,p_display_sequence=>30
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:js-useLocalStorage:is-collapsed:t-Region--noBorder:js-headingLevel-1:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select (select "NAME" from "SVY_SURVEY_STATUS" x where x."ID" = a."SURVEY_STATUS_ID") "SURVEY_STATUS_ID",',
'       (select "NAME" from "SVY_SURVEY_TYPE" x where x."ID" = a."SURVEY_TYPE_ID") "SURVEY_TYPE_ID",',
'       ID,',
'       SURVEY_NUMBER,',
'       NAME,',
'       DESCRIPTION',
'from "SVY_SURVEY" a'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(48842843551344036)
,p_query_num_rows=>5
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
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
,p_prn_page_header=>'SURVEY'
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
 p_id=>wwv_flow_api.id(49431972190265418)
,p_query_column_id=>1
,p_column_alias=>'SURVEY_STATUS_ID'
,p_column_display_sequence=>60
,p_column_heading=>'Survey Status Id'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(49432056041265419)
,p_query_column_id=>2
,p_column_alias=>'SURVEY_TYPE_ID'
,p_column_display_sequence=>70
,p_column_heading=>'Survey Type Id'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(44733217298212435)
,p_query_column_id=>3
,p_column_alias=>'ID'
,p_column_display_sequence=>40
,p_column_heading=>'Id'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(49432148724265420)
,p_query_column_id=>4
,p_column_alias=>'SURVEY_NUMBER'
,p_column_display_sequence=>80
,p_column_heading=>'Survey Number'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(44733392966212436)
,p_query_column_id=>5
,p_column_alias=>'NAME'
,p_column_display_sequence=>50
,p_column_heading=>'Name'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(49432285955265421)
,p_query_column_id=>6
,p_column_alias=>'DESCRIPTION'
,p_column_display_sequence=>90
,p_column_heading=>'Description'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(44733785720212440)
,p_name=>'QUESTION'
,p_parent_plug_id=>wwv_flow_api.id(44732799222212430)
,p_template=>wwv_flow_api.id(48799545361344000)
,p_display_sequence=>60
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:js-useLocalStorage:is-collapsed:i-h240:t-Region--noBorder:js-headingLevel-1:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select (select "NAME" from "SVY_QUESTION_CATEGORY" x where x."ID" = a."QUESTION_CATEGORY_ID") "QUESTION_CATEGORY_ID",',
'       (select "NAME" from "SVY_QUESTION_TYPE" x where x."ID" = a."QUESTION_TYPE_ID") "QUESTION_TYPE_ID",',
'       (select "NAME" from "SVY_RESPONSE_TYPE" x where x."ID" = a."RESPONSE_TYPE_ID") "RESPONSE_TYPE_ID",',
'       ID,',
'       NAME,',
'       QUESTION_NUMBER,',
'       QUESTION_ORDER',
'from "SVY_QUESTION" a'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(48842843551344036)
,p_query_num_rows=>5
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
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
,p_prn_page_header=>'QUESTION'
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
 p_id=>wwv_flow_api.id(44734146659212444)
,p_query_column_id=>1
,p_column_alias=>'QUESTION_CATEGORY_ID'
,p_column_display_sequence=>30
,p_column_heading=>'Question Category Id'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(44734207161212445)
,p_query_column_id=>2
,p_column_alias=>'QUESTION_TYPE_ID'
,p_column_display_sequence=>40
,p_column_heading=>'Question Type Id'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(44734391569212446)
,p_query_column_id=>3
,p_column_alias=>'RESPONSE_TYPE_ID'
,p_column_display_sequence=>50
,p_column_heading=>'Response Type Id'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(44733893297212441)
,p_query_column_id=>4
,p_column_alias=>'ID'
,p_column_display_sequence=>10
,p_column_heading=>'Id'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(44733951344212442)
,p_query_column_id=>5
,p_column_alias=>'NAME'
,p_column_display_sequence=>20
,p_column_heading=>'Name'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(44734499572212447)
,p_query_column_id=>6
,p_column_alias=>'QUESTION_NUMBER'
,p_column_display_sequence=>60
,p_column_heading=>'Question Number'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(44734507897212448)
,p_query_column_id=>7
,p_column_alias=>'QUESTION_ORDER'
,p_column_display_sequence=>70
,p_column_heading=>'Question Order'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(44734655258212449)
,p_name=>'QUESTION_TYPE'
,p_parent_plug_id=>wwv_flow_api.id(44732799222212430)
,p_template=>wwv_flow_api.id(48799545361344000)
,p_display_sequence=>70
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:js-useLocalStorage:is-collapsed:i-h240:t-Region--noBorder:js-headingLevel-1:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID,',
'       NAME,',
'       INPUT_MANDATORY',
'from "SVY_QUESTION_TYPE" a'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(48842843551344036)
,p_query_num_rows=>5
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
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
,p_prn_page_header=>'QUESTION_TYPE'
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
 p_id=>wwv_flow_api.id(44734762609212450)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>10
,p_column_heading=>'Id'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(49430298653265401)
,p_query_column_id=>2
,p_column_alias=>'NAME'
,p_column_display_sequence=>20
,p_column_heading=>'Name'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(49430803334265407)
,p_query_column_id=>3
,p_column_alias=>'INPUT_MANDATORY'
,p_column_display_sequence=>30
,p_column_heading=>'Input Mandatory'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(49430901537265408)
,p_name=>'RESPONSE'
,p_parent_plug_id=>wwv_flow_api.id(44732799222212430)
,p_template=>wwv_flow_api.id(48799545361344000)
,p_display_sequence=>80
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:js-useLocalStorage:is-collapsed:i-h240:t-Region--noBorder:js-headingLevel-1:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select (select "NAME" from "SVY_QUESTION" x where x."ID" = a."QUESTION_ID") "QUESTION_ID",',
'       ID,',
'       (select "PCT_COMPLETED" from "SVY_SURVEY_USEROF" x where x."ID" = a."SURVEY_USEROF") "SURVEY_USEROF"',
'from "SVY_RESPONSE" a',
''))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(48842843551344036)
,p_query_num_rows=>5
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
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
,p_prn_page_header=>'RESPONSE'
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
 p_id=>wwv_flow_api.id(49431368455265412)
,p_query_column_id=>1
,p_column_alias=>'QUESTION_ID'
,p_column_display_sequence=>20
,p_column_heading=>'Question Id'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(49431063030265409)
,p_query_column_id=>2
,p_column_alias=>'ID'
,p_column_display_sequence=>10
,p_column_heading=>'Id'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(49431451376265413)
,p_query_column_id=>3
,p_column_alias=>'SURVEY_USEROF'
,p_column_display_sequence=>30
,p_column_heading=>'Survey Userof'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(49431543509265414)
,p_name=>'QUESTION_CATEGORY'
,p_parent_plug_id=>wwv_flow_api.id(44732799222212430)
,p_template=>wwv_flow_api.id(48799545361344000)
,p_display_sequence=>50
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:js-useLocalStorage:is-collapsed:i-h240:t-Region--noBorder:js-headingLevel-1:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID,',
'       NAME,',
'       THE_DESC',
'from "SVY_QUESTION_CATEGORY" a'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(48842843551344036)
,p_query_num_rows=>5
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
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
,p_prn_page_header=>'QUESTION_CATEGORY'
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
 p_id=>wwv_flow_api.id(49431630510265415)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>10
,p_column_heading=>'Id'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(49431768884265416)
,p_query_column_id=>2
,p_column_alias=>'NAME'
,p_column_display_sequence=>20
,p_column_heading=>'Name'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(49431812103265417)
,p_query_column_id=>3
,p_column_alias=>'THE_DESC'
,p_column_display_sequence=>30
,p_column_heading=>'The Desc'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(49432392264265422)
,p_name=>'USEROF'
,p_parent_plug_id=>wwv_flow_api.id(44732799222212430)
,p_template=>wwv_flow_api.id(48799545361344000)
,p_display_sequence=>40
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:js-useLocalStorage:is-collapsed:t-Region--noBorder:js-headingLevel-1:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select (select "NAME" from "SVY_USER_TITLE" x where x."ID" = a."USER_TITLE_ID") "USER_TITLE_ID",',
'       (select "NAME" from "SVY_USER_ROLE" x where x."ID" = a."USER_ROLE_ID") "USER_ROLE_ID",',
'       ID,',
'       NAME,',
'       PHONENUMBER_OFFICE,',
'       PHONENUMBER_MOBILE,',
'       HASHED_PASSWORD,',
'       EMAIL,',
'       ACTIVE_FLAG',
'from "SVY_USEROF" a'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(48842843551344036)
,p_query_num_rows=>5
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
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
,p_prn_page_header=>'USEROF'
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
 p_id=>wwv_flow_api.id(49433060122265429)
,p_query_column_id=>1
,p_column_alias=>'USER_TITLE_ID'
,p_column_display_sequence=>30
,p_column_heading=>'User Title Id'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(49433181378265430)
,p_query_column_id=>2
,p_column_alias=>'USER_ROLE_ID'
,p_column_display_sequence=>40
,p_column_heading=>'User Role Id'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(49432459990265423)
,p_query_column_id=>3
,p_column_alias=>'ID'
,p_column_display_sequence=>10
,p_column_heading=>'Id'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(49432536451265424)
,p_query_column_id=>4
,p_column_alias=>'NAME'
,p_column_display_sequence=>20
,p_column_heading=>'Name'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(49433289252265431)
,p_query_column_id=>5
,p_column_alias=>'PHONENUMBER_OFFICE'
,p_column_display_sequence=>50
,p_column_heading=>'Phonenumber Office'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(49433376886265432)
,p_query_column_id=>6
,p_column_alias=>'PHONENUMBER_MOBILE'
,p_column_display_sequence=>60
,p_column_heading=>'Phonenumber Mobile'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(49433416377265433)
,p_query_column_id=>7
,p_column_alias=>'HASHED_PASSWORD'
,p_column_display_sequence=>70
,p_column_heading=>'Hashed Password'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(49433525435265434)
,p_query_column_id=>8
,p_column_alias=>'EMAIL'
,p_column_display_sequence=>80
,p_column_heading=>'Email'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(49433605191265435)
,p_query_column_id=>9
,p_column_alias=>'ACTIVE_FLAG'
,p_column_display_sequence=>90
,p_column_heading=>'Active Flag'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(48920942180344122)
,p_plug_name=>'MISO_SURVEY_POC'
,p_icon_css_classes=>'app-icon'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(48809342017344005)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(49264218871347272)
,p_plug_name=>'Page Navigation'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:u-colors:t-BadgeList--circular:t-BadgeList--cols t-BadgeList--5cols:t-BadgeList--small'
,p_plug_template=>wwv_flow_api.id(48788151331343995)
,p_plug_display_sequence=>40
,p_plug_display_point=>'BODY'
,p_list_id=>wwv_flow_api.id(49258310293347269)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(48856040623344052)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(49433707752265436)
,p_plug_name=>'sql'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(48819161814344010)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<PRE>',
'--select ID,       (select "NAME" from "SVY_USER_ROLE" x where x."ID" = a."USER_ROLE_ID") "USER_ROLE_ID" from "SVY_DESC" a;',
'',
'select (select "NAME" from "SVY_QUESTION_CATEGORY" x where x."ID" = a."QUESTION_CATEGORY_ID") "QUESTION_CATEGORY_ID",',
'       (select "NAME" from "SVY_QUESTION_TYPE" x where x."ID" = a."QUESTION_TYPE_ID") "QUESTION_TYPE_ID",',
'       (select "NAME" from "SVY_RESPONSE_TYPE" x where x."ID" = a."RESPONSE_TYPE_ID") "RESPONSE_TYPE_ID",',
'       ID,',
'       NAME,',
'       QUESTION_NUMBER,',
'       QUESTION_ORDER',
'from "SVY_QUESTION" a',
'',
'select ID,',
'       NAME,',
'       THE_DESC',
'from "SVY_QUESTION_CATEGORY" a',
'',
'select ID,',
'       NAME,',
'       INPUT_MANDATORY',
'from "SVY_QUESTION_TYPE" a',
'',
'select (select "NAME" from "SVY_QUESTION" x where x."ID" = a."QUESTION_ID") "QUESTION_ID",',
'       ID,',
'       (select "PCT_COMPLETED" from "SVY_SURVEY_USEROF" x where x."ID" = a."SURVEY_USEROF") "SURVEY_USEROF"',
'from "SVY_RESPONSE" a',
'',
'select ID,',
'       NAME,',
'       THE_DESC',
'from "SVY_RESPONSE_CHOICES" a',
'',
'select ID,',
'       NAME,',
'       THE_DESC',
'from "SVY_RESPONSE_TYPE" a',
'',
'select (select "NAME" from "SVY_SURVEY_STATUS" x where x."ID" = a."SURVEY_STATUS_ID") "SURVEY_STATUS_ID",',
'       (select "NAME" from "SVY_SURVEY_TYPE" x where x."ID" = a."SURVEY_TYPE_ID") "SURVEY_TYPE_ID",',
'       ID,',
'       SURVEY_NUMBER,',
'       NAME,',
'       DESCRIPTION',
'from "SVY_SURVEY" a',
'',
'select ID,',
'       NAME,',
'       THE_DESC',
'from "SVY_SURVEY_STATUS" a',
'',
'select ID,',
'       NAME,',
'       THE_DESC',
'from "SVY_SURVEY_TYPE" a',
'',
'select (select "NAME" from "SVY_SURVEY" x where x."ID" = a."SURVEY_ID") "SURVEY_ID",',
'       (select "NAME" from "SVY_USEROF" x where x."ID" = a."USEROF_ID") "USEROF_ID",',
'       ID,',
'       PCT_COMPLETED',
'from "SVY_SURVEY_USEROF" a',
'',
'',
'select (select "NAME" from "SVY_USER_TITLE" x where x."ID" = a."USER_TITLE_ID") "USER_TITLE_ID",',
'       (select "NAME" from "SVY_USER_ROLE" x where x."ID" = a."USER_ROLE_ID") "USER_ROLE_ID",',
'       ID,',
'       NAME,',
'       PHONENUMBER_OFFICE,',
'       PHONENUMBER_MOBILE,',
'       HASHED_PASSWORD,',
'       EMAIL,',
'       ACTIVE_FLAG',
'from "SVY_USEROF" a',
'',
'',
'select ID,',
'       NAME',
'from "SVY_USER_ROLE" a',
'',
'',
'select ID,',
'       NAME,',
'       THE_DESC',
'from "SVY_USER_TITLE" a',
'',
'',
'</PRE>',
''))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(73207978172617848)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(48799545361344000)
,p_plug_display_sequence=>1
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select view_name, orig_table_name,table_name if_changed_table_name , ''rest_read_endpoint'' explainit, rest_read_endpoint from MISO.SVY_V_SYND_VIEWS_RESTAPIS ',
'union all',
'select view_name, orig_table_name,table_name if_changed_table_name ,''curl_to_file_endpoint'' explainit, curl_to_file_endpoint from MISO.SVY_V_SYND_VIEWS_RESTAPIS ',
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
 p_id=>wwv_flow_api.id(76789152625784541)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF:RTF:EMAIL'
,p_owner=>'MISO'
,p_internal_uid=>76789152625784541
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(76789215045784542)
,p_db_column_name=>'EXPLAINIT'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Explainit'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(76789376367784543)
,p_db_column_name=>'REST_READ_ENDPOINT'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Rest Read Endpoint'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(76789454804784544)
,p_db_column_name=>'VIEW_NAME'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'View Name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(76789528357784545)
,p_db_column_name=>'ORIG_TABLE_NAME'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Orig Table Name'
,p_column_type=>'STRING'
);
wwv_flow_api.component_end;
end;
/
begin
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>106
,p_default_id_offset=>0
,p_default_owner=>'MISO'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(76789671912784546)
,p_db_column_name=>'IF_CHANGED_TABLE_NAME'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'If Changed Table Name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(76820968204267970)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'768210'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'EXPLAINIT:REST_READ_ENDPOINT:VIEW_NAME:ORIG_TABLE_NAME:IF_CHANGED_TABLE_NAME'
);
wwv_flow_api.component_end;
end;
/
