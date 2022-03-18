prompt --application/pages/page_00026
begin
--   Manifest
--     PAGE: 00026
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
 p_id=>26
,p_user_interface_id=>wwv_flow_api.id(48908740043344081)
,p_name=>'Question'
,p_alias=>'QUESTION'
,p_step_title=>'Question'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>To find data enter a search term into the search dialog, or click on the column headings to limit the records returned.</p>',
'',
'<p>You can perform numerous functions by clicking the <strong>Actions</strong> button. This includes selecting the columns that are displayed / hidden and their display sequence, plus numerous data and format functions.  You can also define additiona'
||'l views of the data using the chart, group by, and pivot options.</p>',
'',
'<p>If you want to save your customizations select report, or click download to unload the data. Enter you email address and time frame under subscription to be sent the data on a regular basis.<p>',
'',
'<p>For additional information click Help at the bottom of the Actions menu.</p> ',
'',
'<p>Click the <strong>Reset</strong> button to reset the interactive report back to the default settings.</p>'))
,p_last_updated_by=>'MISO'
,p_last_upd_yyyymmddhh24miss=>'20211112193414'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(44746632824826607)
,p_plug_name=>'QUESTION_ENTRY'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(48817248700344009)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_query_type=>'TABLE'
,p_query_table=>'SVY_QUESTION'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'QUESTION_ENTRY'
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
 p_id=>wwv_flow_api.id(44747906983826620)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF:RTF:EMAIL'
,p_owner=>'APLASCENCIA'
,p_internal_uid=>44747906983826620
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(44748029808826621)
,p_db_column_name=>'QUESTION_CATEGORY_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Question Category Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(44748148087826622)
,p_db_column_name=>'QUESTION_TYPE_ID'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Question Type Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(44748241115826623)
,p_db_column_name=>'RESPONSE_TYPE_ID'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Response Type Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(44748315805826624)
,p_db_column_name=>'ID'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(44748429908826625)
,p_db_column_name=>'NAME'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(44748589597826626)
,p_db_column_name=>'QUESTION_NUMBER'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Question Number'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(44748693366826627)
,p_db_column_name=>'QUESTION_ORDER'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Question Order'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(44748771320826628)
,p_db_column_name=>'MANDATORY_OPT_COND_ID'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Mandatory Opt Cond Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(52547326533263044)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'525474'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'QUESTION_CATEGORY_ID:QUESTION_TYPE_ID:RESPONSE_TYPE_ID:ID:NAME:QUESTION_NUMBER:QUESTION_ORDER:MANDATORY_OPT_COND_ID'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(49104405486346683)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(48828579444344015)
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(48761501111343979)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(48885668992344068)
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(49433839659265437)
,p_plug_name=>'DATA_LOADER'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(48819161814344010)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>'Click button to perform mass loading'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(49433902323265438)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(49433839659265437)
,p_button_name=>'New'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--danger:t-Button--simple:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(48884399583344068)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'GOTO PAGE 31'
,p_button_position=>'BODY'
,p_button_redirect_url=>'f?p=&APP_ID.:31:&SESSION.::&DEBUG.:::'
,p_grid_new_row=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(44747817652826619)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(44746632824826607)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'New - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.component_end;
end;
/
