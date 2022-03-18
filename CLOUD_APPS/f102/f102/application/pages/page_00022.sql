prompt --application/pages/page_00022
begin
--   Manifest
--     PAGE: 00022
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>102
,p_default_id_offset=>0
,p_default_owner=>'MISO'
);
wwv_flow_api.create_page(
 p_id=>22
,p_user_interface_id=>wwv_flow_api.id(47345157114674058)
,p_name=>'RPT_WC_SUM_CSV'
,p_alias=>'RPT-WC-SUM-CSV'
,p_step_title=>'RPT_WC_SUM_CSV'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'CR_COFFEE'
,p_last_upd_yyyymmddhh24miss=>'20220208014221'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(97019932102416808)
,p_plug_name=>'RPT_WC_SUM_CSV'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47253606869673979)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID,',
'       CASTLE,',
'       BUSINESSDATE,',
'       DAYOFWEEK,',
'       HOURMINUTE,',
'       PRODUCT,',
'       PRODUCT_UOM,',
'       FORECASTEDAMOUNTOZ,',
'       FORECASTEDSALES',
'  from WC_SUM_CSV'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_page_header=>'RPT_WC_SUM_CSV'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(97020083503416808)
,p_name=>'RPT_WC_SUM_CSV'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_save_rpt_public=>'Y'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'TOP_AND_BOTTOM_LEFT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:EMAIL:XLSX:PDF:RTF'
,p_owner=>'MISO'
,p_internal_uid=>97020083503416808
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(97020464540416809)
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
 p_id=>wwv_flow_api.id(97020875934416811)
,p_db_column_name=>'CASTLE'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Castle'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(97021267221416811)
,p_db_column_name=>'BUSINESSDATE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Businessdate'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(97021601325416811)
,p_db_column_name=>'DAYOFWEEK'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Dayofweek'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(97022005766416811)
,p_db_column_name=>'HOURMINUTE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Hourminute'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(97022448775416811)
,p_db_column_name=>'PRODUCT'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Product'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(97022831174416812)
,p_db_column_name=>'PRODUCT_UOM'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Product Uom'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(97023278711416812)
,p_db_column_name=>'FORECASTEDAMOUNTOZ'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Forecastedamountoz'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(97023633670416812)
,p_db_column_name=>'FORECASTEDSALES'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Forecastedsales'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(97024508084428844)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'970246'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ID:CASTLE:BUSINESSDATE:DAYOFWEEK:HOURMINUTE:PRODUCT:PRODUCT_UOM:FORECASTEDAMOUNTOZ:FORECASTEDSALES'
);
wwv_flow_api.component_end;
end;
/
