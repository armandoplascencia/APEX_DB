prompt --application/pages/page_00005
begin
--   Manifest
--     PAGE: 00005
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
 p_id=>5
,p_user_interface_id=>wwv_flow_api.id(64824702076113970)
,p_name=>' CR_FRAME'
,p_alias=>'CR-FRAME'
,p_step_title=>' CR_FRAME'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'MISO'
,p_last_upd_yyyymmddhh24miss=>'20211124012241'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(69140801613630653)
,p_plug_name=>' CR_FRAME'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(64728038565113896)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select * from ',
'CR_FRAME'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>' CR_FRAME'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(69140984160630653)
,p_name=>' CR_FRAME'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLSX:PDF:RTF'
,p_owner=>'APLASCENCIA'
,p_internal_uid=>69140984160630653
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69141370762630654)
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
 p_id=>wwv_flow_api.id(69141738510630660)
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
 p_id=>wwv_flow_api.id(69142160120630661)
,p_db_column_name=>'FRAME_ID'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Frame Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69142561448630661)
,p_db_column_name=>'CAMERA_ID'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Camera Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69142927275630662)
,p_db_column_name=>'IMAGE_URI'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Image Uri'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69143322823630662)
,p_db_column_name=>'ELAPSED_MS'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Elapsed Ms'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(69177412228670882)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'691775'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ID_1:ID:FRAME_ID:CAMERA_ID:IMAGE_URI:ELAPSED_MS'
);
wwv_flow_api.component_end;
end;
/
