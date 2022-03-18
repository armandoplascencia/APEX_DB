prompt --application/pages/page_00035
begin
--   Manifest
--     PAGE: 00035
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
 p_id=>35
,p_user_interface_id=>wwv_flow_api.id(48908740043344081)
,p_name=>'ALL_DDL'
,p_alias=>'ALL-DDL'
,p_step_title=>'ALL_DDL'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'MISO'
,p_last_upd_yyyymmddhh24miss=>'20211224052518'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(76483588763090315)
,p_plug_name=>'ALL_DDL'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(48817248700344009)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'TABLE'
,p_plug_source=>'select * from svy'
,p_query_table=>'SVY_SYND_MY_METADATA'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'ALL_DDL'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(76483655001090315)
,p_name=>'ALL_DDL'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_save_rpt_public=>'Y'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'TOP_AND_BOTTOM_LEFT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:EMAIL:XLSX:PDF:RTF'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="">'
,p_allow_exclude_null_values=>'N'
,p_allow_hide_extra_columns=>'N'
,p_owner=>'MISO'
,p_internal_uid=>76483655001090315
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(76485194797090334)
,p_db_column_name=>'OWNER'
,p_display_order=>10
,p_column_identifier=>'D'
,p_column_label=>'Owner'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(76484344229090333)
,p_db_column_name=>'OBJECT_TYPE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Object Type'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(76484784647090333)
,p_db_column_name=>'OBJECT_NAME'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Object Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(76484074433090325)
,p_db_column_name=>'SQLOF'
,p_display_order=>40
,p_column_identifier=>'A'
,p_column_label=>'Sqlof'
,p_column_html_expression=>'<PRE>#SQLOF#</PRE>'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_rpt_show_filter_lov=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(76486189035105947)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'764862'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'SQLOF:OBJECT_TYPE:OBJECT_NAME:OWNER'
);
wwv_flow_api.component_end;
end;
/
