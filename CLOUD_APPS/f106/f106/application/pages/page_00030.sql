prompt --application/pages/page_00030
begin
--   Manifest
--     PAGE: 00030
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
 p_id=>30
,p_user_interface_id=>wwv_flow_api.id(48908740043344081)
,p_name=>'Master questions'
,p_alias=>'MASTER-QUESTIONS'
,p_step_title=>'Master questions'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'APLASCENCIA'
,p_last_upd_yyyymmddhh24miss=>'20211117175931'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(63283803326886000)
,p_plug_name=>'Master questions'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(48817248700344009)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'TABLE'
,p_query_table=>'PKI_SURVEY'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Master questions'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(63283937540886000)
,p_name=>'Master questions'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLSX:PDF:RTF'
,p_owner=>'APLASCENCIA'
,p_internal_uid=>63283937540886000
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(63284379406886005)
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
 p_id=>wwv_flow_api.id(63284797282886006)
,p_db_column_name=>'THE_NUMBER'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'The Number'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(63285135716886006)
,p_db_column_name=>'QUESTION'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Question'
,p_column_html_expression=>'<PRE>#QUESTION#</PRE>'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(63285580854886006)
,p_db_column_name=>'RESPONSE'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Response'
,p_column_html_expression=>'<PRE>#RESPONSE#</PRE>'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(63285920492886008)
,p_db_column_name=>'SURVEY_TYPE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Survey Type'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(63286363977886008)
,p_db_column_name=>'ACTIVE_QUESTION'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Active Question'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(63286745010886008)
,p_db_column_name=>'CREATED'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Created'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'Y'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(63287177245886008)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(63287505722886008)
,p_db_column_name=>'UPDATED'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Updated'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'Y'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(63287976946886009)
,p_db_column_name=>'UPDATED_BY'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Updated By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(63288382139886009)
,p_db_column_name=>'PKI_MANDATORY_OPT_COND_ID'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Pki Mandatory Opt Cond Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(63288984979887050)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'632890'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ID:THE_NUMBER:QUESTION:RESPONSE:SURVEY_TYPE:ACTIVE_QUESTION:CREATED:CREATED_BY:UPDATED:UPDATED_BY:PKI_MANDATORY_OPT_COND_ID'
);
wwv_flow_api.component_end;
end;
/
