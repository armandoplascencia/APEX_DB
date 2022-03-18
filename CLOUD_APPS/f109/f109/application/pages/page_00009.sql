prompt --application/pages/page_00009
begin
--   Manifest
--     PAGE: 00009
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>109
,p_default_id_offset=>0
,p_default_owner=>'MISO'
);
wwv_flow_api.create_page(
 p_id=>9
,p_user_interface_id=>wwv_flow_api.id(64824702076113970)
,p_name=>'CR_OBJECT'
,p_alias=>'CR-OBJECT'
,p_step_title=>'CR_OBJECT'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'MISO'
,p_last_upd_yyyymmddhh24miss=>'20211124012252'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(69154092056645874)
,p_plug_name=>'CR_OBJECT'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(64728038565113896)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>'select * from CR_OBJECT'
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'CR_OBJECT'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(69154153007645874)
,p_name=>'CR_OBJECT'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLSX:PDF:RTF'
,p_owner=>'APLASCENCIA'
,p_internal_uid=>69154153007645874
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69154510730645874)
,p_db_column_name=>'ID_1'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Id 1'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69154978869645875)
,p_db_column_name=>'ID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69155368251645875)
,p_db_column_name=>'TYPE_ID'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Type Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69155731042645875)
,p_db_column_name=>'OBJECT_ID'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Object Id'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69156173646645875)
,p_db_column_name=>'LOCATION_X'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Location X'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69156533340645876)
,p_db_column_name=>'LOCATION_Y'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Location Y'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69156924315645876)
,p_db_column_name=>'BOUNDING_BOX_ID'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Bounding Box Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(69179877342672003)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'691799'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ID_1:ID:TYPE_ID:OBJECT_ID:LOCATION_X:LOCATION_Y:BOUNDING_BOX_ID'
);
wwv_flow_api.component_end;
end;
/
