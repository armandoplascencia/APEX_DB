prompt --application/pages/page_00005
begin
--   Manifest
--     PAGE: 00005
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>116
,p_default_id_offset=>0
,p_default_owner=>'MISO'
);
wwv_flow_api.create_page(
 p_id=>5
,p_user_interface_id=>wwv_flow_api.id(70163521152694474)
,p_name=>'SYNC_MISO_CUSTOMER_TABLE_MAP_rpt'
,p_alias=>'SYNC-MISO-CUSTOMER-TABLE-MAP-RPT'
,p_step_title=>'SYNC_MISO_CUSTOMER_TABLE_MAP_rpt'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_protection_level=>'C'
,p_last_updated_by=>'MISO'
,p_last_upd_yyyymmddhh24miss=>'20220121222303'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(77961234743527851)
,p_plug_name=>'Report 1'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(70072014703694399)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID,',
'       NO,',
'       SCREEN,',
'       URL_PATH,',
'       FILE_IN_FRONT_END,',
'       FILE_IN_BACK_END,',
'       TBLS_UPDATED,',
'       COLUMNS_UPDATED,',
'       UPDATE_SQL,',
'        dbms_lob.getlength(image) IMAGE,',
'       MIMETYPE,',
'       IMAGE_LAST_UPDATED,',
'       IMAGE_FILE_NAME,',
'       IMAGE_FILE_TYPE,',
'       rowid',
'  from SYNC_MISO_CUSTOMER_TABLE_MAP'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_page_header=>'Report 1'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(77961631308527851)
,p_name=>'Report 1'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_save_rpt_public=>'Y'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'TOP_AND_BOTTOM_LEFT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:EMAIL:XLSX:PDF:RTF'
,p_detail_link=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.:RP:P6_ROWID:\#ROWID#\'
,p_detail_link_text=>'<span aria-label="Edit"><span class="fa fa-edit" aria-hidden="true" title="Edit"></span></span>'
,p_owner=>'MISO'
,p_internal_uid=>77961631308527851
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77962125296527852)
,p_db_column_name=>'ID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77962592968527852)
,p_db_column_name=>'NO'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'No'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77962934454527852)
,p_db_column_name=>'SCREEN'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Screen'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77963308910527852)
,p_db_column_name=>'URL_PATH'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Url Path'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77963778770527853)
,p_db_column_name=>'FILE_IN_FRONT_END'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'File In Front End'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77964181489527853)
,p_db_column_name=>'FILE_IN_BACK_END'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'File In Back End'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77922537698457602)
,p_db_column_name=>'TBLS_UPDATED'
,p_display_order=>17
,p_column_identifier=>'H'
,p_column_label=>'Tbls Updated'
,p_column_type=>'STRING'
,p_display_text_as=>'STRIP_HTML_ESCAPE_SC'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77922646810457603)
,p_db_column_name=>'COLUMNS_UPDATED'
,p_display_order=>27
,p_column_identifier=>'I'
,p_column_label=>'Columns Updated'
,p_column_type=>'STRING'
,p_display_text_as=>'STRIP_HTML_ESCAPE_SC'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77922706460457604)
,p_db_column_name=>'UPDATE_SQL'
,p_display_order=>37
,p_column_identifier=>'J'
,p_column_label=>'Update Sql'
,p_column_type=>'STRING'
,p_display_text_as=>'STRIP_HTML_ESCAPE_SC'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77927316587457650)
,p_db_column_name=>'MIMETYPE'
,p_display_order=>57
,p_column_identifier=>'L'
,p_column_label=>'Mimetype'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(78130885353172601)
,p_db_column_name=>'IMAGE_LAST_UPDATED'
,p_display_order=>67
,p_column_identifier=>'M'
,p_column_label=>'Image Last Updated'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(78130912225172602)
,p_db_column_name=>'IMAGE_FILE_NAME'
,p_display_order=>77
,p_column_identifier=>'N'
,p_column_label=>'Image File Name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(78131081770172603)
,p_db_column_name=>'IMAGE_FILE_TYPE'
,p_display_order=>87
,p_column_identifier=>'O'
,p_column_label=>'Image File Type'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(78180686941179410)
,p_db_column_name=>'ROWID'
,p_display_order=>97
,p_column_identifier=>'P'
,p_column_label=>'Rowid'
,p_column_type=>'OTHER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(78181747680179421)
,p_db_column_name=>'IMAGE'
,p_display_order=>107
,p_column_identifier=>'Q'
,p_column_label=>'Image'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'IMAGE:SYNC_MISO_CUSTOMER_TABLE_MAP:IMAGE:ROWID::MIMETYPE:IMAGE_FILE_NAME:::::'
,p_static_id=>'my_rpt'
,p_rpt_show_filter_lov=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(77966178437534736)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'779662'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'NO:SCREEN:URL_PATH:FILE_IN_FRONT_END:FILE_IN_BACK_END:TBLS_UPDATED:COLUMNS_UPDATED:UPDATE_SQL:ID:IMAGE:IMAGE_FILE_NAME:IMAGE_FILE_TYPE:IMAGE_LAST_UPDATED:MIMETYPE:ROWID:'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(77965373739527854)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(77961234743527851)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(70139005140694445)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.:6'
);
wwv_flow_api.component_end;
end;
/
