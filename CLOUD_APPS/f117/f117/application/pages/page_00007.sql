prompt --application/pages/page_00007
begin
--   Manifest
--     PAGE: 00007
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>117
,p_default_id_offset=>0
,p_default_owner=>'MISO'
);
wwv_flow_api.create_page(
 p_id=>7
,p_user_interface_id=>wwv_flow_api.id(89710091433454354)
,p_name=>'Upload_data '
,p_alias=>'UPLOAD-DATA'
,p_step_title=>'Upload_data '
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'APLASCENCIA'
,p_last_upd_yyyymmddhh24miss=>'20220126080558'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(89920293106160767)
,p_plug_name=>'Upload_data '
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(89618595191454283)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'TABLE'
,p_query_table=>'CR_PANERA_FILES'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Upload_data '
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(89920389486160767)
,p_name=>'Upload_data '
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLSX:PDF:RTF'
,p_owner=>'MISO'
,p_internal_uid=>89920389486160767
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(89920750466160777)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(89921184135160778)
,p_db_column_name=>'FILE_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'File Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(89921533129160778)
,p_db_column_name=>'CONTENT_TYPE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Content Type'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(89921928715160778)
,p_db_column_name=>'SOURCE_DESC'
,p_display_order=>5
,p_column_identifier=>'D'
,p_column_label=>'Source Desc'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(89922335914160779)
,p_db_column_name=>'CR_COFFEE_TEXT_FLD1'
,p_display_order=>6
,p_column_identifier=>'E'
,p_column_label=>'Cr Coffee Text Fld1'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(89922798918160779)
,p_db_column_name=>'CR_COFFEE_TEXT_FLD2'
,p_display_order=>7
,p_column_identifier=>'F'
,p_column_label=>'Cr Coffee Text Fld2'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(89923190756160779)
,p_db_column_name=>'CR_COFFEE_TEXT_FLD3'
,p_display_order=>8
,p_column_identifier=>'G'
,p_column_label=>'Cr Coffee Text Fld3'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(89923531287160779)
,p_db_column_name=>'CR_COFFEE_TEXT_FLD4'
,p_display_order=>9
,p_column_identifier=>'H'
,p_column_label=>'Cr Coffee Text Fld4'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(89923977003160780)
,p_db_column_name=>'CR_COFFEE_TEXT_FLD5'
,p_display_order=>10
,p_column_identifier=>'I'
,p_column_label=>'Cr Coffee Text Fld5'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(89924317100160780)
,p_db_column_name=>'CR_COFFEE_TEXT_DESC_1'
,p_display_order=>11
,p_column_identifier=>'J'
,p_column_label=>'Cr Coffee Text Desc 1'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(89924735637160780)
,p_db_column_name=>'CR_COFFEE_TEXT_DESC_2'
,p_display_order=>12
,p_column_identifier=>'K'
,p_column_label=>'Cr Coffee Text Desc 2'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(89925119716160780)
,p_db_column_name=>'CR_COFFEE_TEXT_DESC_3'
,p_display_order=>13
,p_column_identifier=>'L'
,p_column_label=>'Cr Coffee Text Desc 3'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(89925554427160781)
,p_db_column_name=>'CR_COFFEE_TEXT_DESC_4'
,p_display_order=>14
,p_column_identifier=>'M'
,p_column_label=>'Cr Coffee Text Desc 4'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(89925974955160781)
,p_db_column_name=>'CR_COFFEE_TEXT_DESC_5'
,p_display_order=>15
,p_column_identifier=>'N'
,p_column_label=>'Cr Coffee Text Desc 5'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(89926318922160781)
,p_db_column_name=>'CONTENT_CLOB'
,p_display_order=>16
,p_column_identifier=>'O'
,p_column_label=>'Content Clob'
,p_allow_sorting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_rpt_show_filter_lov=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(89926753250160781)
,p_db_column_name=>'MIME_TYPE'
,p_display_order=>17
,p_column_identifier=>'P'
,p_column_label=>'Mime Type'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(89927151416160781)
,p_db_column_name=>'UPLOAD_DATE'
,p_display_order=>18
,p_column_identifier=>'Q'
,p_column_label=>'Upload Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(89927588416160782)
,p_db_column_name=>'PROCESS_FLAG'
,p_display_order=>19
,p_column_identifier=>'R'
,p_column_label=>'Process Flag'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(89927912229160782)
,p_db_column_name=>'ERROR_DESC'
,p_display_order=>20
,p_column_identifier=>'S'
,p_column_label=>'Error Desc'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(89928371653160782)
,p_db_column_name=>'CONTENT_JSON'
,p_display_order=>21
,p_column_identifier=>'T'
,p_column_label=>'Content Json'
,p_allow_sorting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_rpt_show_filter_lov=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(89928731628163335)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'899288'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ID:FILE_NAME:CONTENT_TYPE:SOURCE_DESC:CR_COFFEE_TEXT_FLD1:CR_COFFEE_TEXT_FLD2:CR_COFFEE_TEXT_FLD3:CR_COFFEE_TEXT_FLD4:CR_COFFEE_TEXT_FLD5:CR_COFFEE_TEXT_DESC_1:CR_COFFEE_TEXT_DESC_2:CR_COFFEE_TEXT_DESC_3:CR_COFFEE_TEXT_DESC_4:CR_COFFEE_TEXT_DESC_5:CO'
||'NTENT_CLOB:MIME_TYPE:UPLOAD_DATE:PROCESS_FLAG:ERROR_DESC:CONTENT_JSON'
);
wwv_flow_api.component_end;
end;
/
