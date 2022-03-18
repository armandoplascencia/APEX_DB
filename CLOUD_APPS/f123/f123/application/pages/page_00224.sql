prompt --application/pages/page_00224
begin
--   Manifest
--     PAGE: 00224
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>123
,p_default_id_offset=>111717178695017138
,p_default_owner=>'MISO'
);
wwv_flow_api.create_page(
 p_id=>224
,p_user_interface_id=>wwv_flow_api.id(3048806881237990347)
,p_name=>'Combine with local data'
,p_alias=>'COMBINE-WITH-LOCAL-DATA'
,p_step_title=>'Combine with local data'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'ALLAN'
,p_last_upd_yyyymmddhh24miss=>'20210301103321'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(185846897880526300)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(3702279440792415478)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(3246092891286859286)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(3702300309632415563)
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(185884477611594593)
,p_plug_name=>'Combine Web Sources and Local Datza'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(3702275319155415466)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_location=>'WEB_SOURCE'
,p_web_src_module_id=>wwv_flow_api.id(833504622187763336)
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID,',
'       remote.NAME,',
'       HOMEPAGE,',
'       SIZE_,',
'       LANGUAGE,',
'       local.created_by',
'  from #APEX$SOURCE_DATA# remote, eba_restdemo_sample_lang local',
' where remote.language = local.name'))
,p_source_post_processing=>'SQL'
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>8.5
,p_prn_height=>11
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#9bafde'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'normal'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#efefef'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(185884571465594594)
,p_max_row_count=>'1000000'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:EMAIL:XLSX:PDF:RTF'
,p_owner=>'CARSTEN'
,p_internal_uid=>71656523394898115
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(185884673735594595)
,p_db_column_name=>'ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(185884768570594596)
,p_db_column_name=>'NAME'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Repository'
,p_column_link=>'#HOMEPAGE#'
,p_column_linktext=>'#NAME#'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(185885633454594604)
,p_db_column_name=>'HOMEPAGE'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Homepage'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(185885733337594605)
,p_db_column_name=>'SIZE_'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Size '
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FILESIZE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(185885981989594608)
,p_db_column_name=>'LANGUAGE'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Language'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(185886951324594618)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>150
,p_column_identifier=>'X'
,p_column_label=>'Language Created By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(186222889236825767)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'719949'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ID:NAME:HOMEPAGE:SIZE_:LANGUAGE:CREATED_BY'
);
wwv_flow_api.create_worksheet_condition(
 p_id=>wwv_flow_api.id(186226294514839947)
,p_report_id=>wwv_flow_api.id(186222889236825767)
,p_name=>'Local Data'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'CREATED_BY'
,p_operator=>'is not null'
,p_condition_sql=>' (case when ("CREATED_BY" is not null) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# #APXWS_OP_NAME#'
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_column_bg_color=>'#FFDD44'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(185887206605594620)
,p_plug_name=>'Information'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(3702276865524415473)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>This page shows how data from a REST Service can be joined with local data. Each Github repository has a programming language attribute. The (local) table <strong>EBA_RESTDEMO_SAMPLE_LANG</strong> contains information about who created that progra'
||'mming language.</p>',
'<p>Using a <strong>Post Processing SQL query</strong>, the local table can be joined to the Web Source result data; the result is a combination of local and remote data.</p>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(185887300076594621)
,p_plug_name=>'Post Processing SQL Query'
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(3702272859393415462)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>In the <em>Post Processing SQL Query</em>, the Web Source response data is referenced with the <strong>#APEX$SOURCE_DATA#</strong> placeholder, and can be used like a table. The report on this page uses the following query.</p>',
'<pre>',
'select remote.ID,',
'       remote.NAME,',
'       remote.HOMEPAGE,',
'       remote.SIZE_,',
'       remote.LANGUAGE,',
'       local.CREATED_BY',
'  from <strong>#APEX$SOURCE_DATA#</strong>       remote, ',
'       EBA_RESTDEMO_SAMPLE_LANG local',
' where remote.LANGUAGE = local.NAME',
'</pre>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.component_end;
end;
/
