prompt --application/pages/page_00007
begin
--   Manifest
--     PAGE: 00007
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
 p_id=>7
,p_user_interface_id=>wwv_flow_api.id(47345157114674058)
,p_name=>'DATA'
,p_alias=>'DATA'
,p_step_title=>'DATA'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'MISO'
,p_last_upd_yyyymmddhh24miss=>'20220209184835'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(76995070199120431)
,p_plug_name=>'Parsed DATA for Review'
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(47240695057673971)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>'select * from dw_wc_parse_15_min_files'
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Parsed DATA for Review'
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
 p_id=>wwv_flow_api.id(76995122807120432)
,p_max_row_count=>'1000000'
,p_allow_save_rpt_public=>'Y'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'TOP_AND_BOTTOM_LEFT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF:RTF:EMAIL'
,p_owner=>'MISO'
,p_internal_uid=>76995122807120432
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(76996502064120446)
,p_db_column_name=>'ID'
,p_display_order=>10
,p_column_identifier=>'N'
,p_column_label=>'Id_1'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(76996719836120448)
,p_db_column_name=>'RECORDTYPE'
,p_display_order=>30
,p_column_identifier=>'P'
,p_column_label=>'Recordtype_2'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(76996878560120449)
,p_db_column_name=>'STARTTIME'
,p_display_order=>40
,p_column_identifier=>'Q'
,p_column_label=>'Starttime_3'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(76996908746120450)
,p_db_column_name=>'ENDTIME'
,p_display_order=>50
,p_column_identifier=>'R'
,p_column_label=>'Endtime_4'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77474777895268101)
,p_db_column_name=>'BUSINESSDATE'
,p_display_order=>60
,p_column_identifier=>'S'
,p_column_label=>'Businessdate_5'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77474876197268102)
,p_db_column_name=>'AREACODE'
,p_display_order=>70
,p_column_identifier=>'T'
,p_column_label=>'Areacode_6'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77474945438268103)
,p_db_column_name=>'STORE'
,p_display_order=>80
,p_column_identifier=>'U'
,p_column_label=>'Store_7'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77475795938268111)
,p_db_column_name=>'ROWOF'
,p_display_order=>160
,p_column_identifier=>'AC'
,p_column_label=>'Rowof_15'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(76996616825120447)
,p_db_column_name=>'COLUMN_VALUE'
,p_display_order=>170
,p_column_identifier=>'O'
,p_column_label=>'Column Value_16'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(89231923624164001)
,p_db_column_name=>'FILE_NAME'
,p_display_order=>180
,p_column_identifier=>'AD'
,p_column_label=>'File Name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(89232082254164002)
,p_db_column_name=>'TRANSACTIONS'
,p_display_order=>190
,p_column_identifier=>'AE'
,p_column_label=>'Transactions'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(89232175070164003)
,p_db_column_name=>'SHOULDBESALES'
,p_display_order=>200
,p_column_identifier=>'AF'
,p_column_label=>'Shouldbesales'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(89232204257164004)
,p_db_column_name=>'NETSALES'
,p_display_order=>210
,p_column_identifier=>'AG'
,p_column_label=>'Netsales'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(89232316997164005)
,p_db_column_name=>'LABORMINUTES'
,p_display_order=>220
,p_column_identifier=>'AH'
,p_column_label=>'Laborminutes'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(89232433571164006)
,p_db_column_name=>'SOSTRANSACTIONS'
,p_display_order=>230
,p_column_identifier=>'AI'
,p_column_label=>'Sostransactions'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(89232575424164007)
,p_db_column_name=>'SOSTIME'
,p_display_order=>240
,p_column_identifier=>'AJ'
,p_column_label=>'Sostime'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(89232608616164008)
,p_db_column_name=>'CLTTRANSACTIONS'
,p_display_order=>250
,p_column_identifier=>'AK'
,p_column_label=>'Clttransactions'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(77472157112935863)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'774722'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ROWOF:FILE_NAME:ID:RECORDTYPE:STARTTIME:ENDTIME:BUSINESSDATE:AREACODE:STORE:CLTTRANSACTIONS:LABORMINUTES:NETSALES:SHOULDBESALES:SOSTIME:SOSTRANSACTIONS:TRANSACTIONS:COLUMN_VALUE:'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(77572977213182114)
,p_application_user=>'MISO'
,p_name=>'Public'
,p_report_seq=>10
,p_report_alias=>'775730'
,p_status=>'PUBLIC'
,p_report_columns=>'RECORDTYPE:STARTTIME:ENDTIME:BUSINESSDATE:AREACODE:STORE:ROWOF'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(77459919271632945)
,p_plug_name=>'DATA FROM White Castle 15 Minute Sample File'
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(47240695057673971)
,p_plug_display_sequence=>30
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'with abc as ( select a.* ,  jeff_clobfromblob(a.content ) as clob_of  ',
'                from dw_media_up_down_files a )',
'select aBC.*, DBMS_LOB.GETLENGTH(ABC.CLOB_OF) LENGTH_CLOB  from ABC'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'DATA FROM White Castle 15 Minute Sample File'
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
 p_id=>wwv_flow_api.id(77460057382632945)
,p_name=>'DATA'
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
,p_detail_link=>'f?p=&APP_ID.:19:&SESSION.::&DEBUG.::P19_ID:#ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="">'
,p_owner=>'MISO'
,p_internal_uid=>77460057382632945
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77460458561632948)
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
 p_id=>wwv_flow_api.id(78184290474179446)
,p_db_column_name=>'FILE_NAME'
,p_display_order=>11
,p_column_identifier=>'H'
,p_column_label=>'File Name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(78184323371179447)
,p_db_column_name=>'CONTENT_TYPE'
,p_display_order=>21
,p_column_identifier=>'I'
,p_column_label=>'Content Type'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(78184482085179448)
,p_db_column_name=>'CONTENT'
,p_display_order=>31
,p_column_identifier=>'J'
,p_column_label=>'Content'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'OTHER'
,p_rpt_show_filter_lov=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(78184520640179449)
,p_db_column_name=>'SOURCE_DESC'
,p_display_order=>41
,p_column_identifier=>'K'
,p_column_label=>'Source Desc'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(78184668949179450)
,p_db_column_name=>'MIME_TYPE'
,p_display_order=>51
,p_column_identifier=>'L'
,p_column_label=>'Mime Type'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(94345309154069001)
,p_db_column_name=>'UPLOAD_DATE'
,p_display_order=>61
,p_column_identifier=>'M'
,p_column_label=>'Upload Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD-MON-YYYY HH:MIPM'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(94345465652069002)
,p_db_column_name=>'PROCESS_FLAG'
,p_display_order=>71
,p_column_identifier=>'N'
,p_column_label=>'Process Flag'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(94345540400069003)
,p_db_column_name=>'ERROR_DESC'
,p_display_order=>81
,p_column_identifier=>'O'
,p_column_label=>'Error Desc'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(94345612226069004)
,p_db_column_name=>'MODIFIED_BY'
,p_display_order=>91
,p_column_identifier=>'P'
,p_column_label=>'Modified By'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(94345780006069005)
,p_db_column_name=>'CLOB_OF'
,p_display_order=>101
,p_column_identifier=>'Q'
,p_column_label=>'Clob Of'
,p_allow_sorting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'CLOB'
,p_rpt_show_filter_lov=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(94345821721069006)
,p_db_column_name=>'LENGTH_CLOB'
,p_display_order=>111
,p_column_identifier=>'R'
,p_column_label=>'Length Clob'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(77462202318634296)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_type=>'CHART'
,p_report_alias=>'774623'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ID:MIME_TYPE:UPLOAD_DATE:PROCESS_FLAG:ERROR_DESC:MODIFIED_BY:CLOB_OF:CONTENT:CONTENT_TYPE:FILE_NAME:LENGTH_CLOB:SOURCE_DESC:'
,p_chart_type=>'pie'
,p_chart_label_column=>'FILE_NAME'
,p_chart_value_column=>'LENGTH_CLOB'
,p_chart_aggregate=>'COUNT'
,p_chart_sorting=>'VALUE_DESC'
,p_chart_orientation=>'vertical'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(97257820004152566)
,p_application_user=>'WHITECASTLEPOC'
,p_name=>'BAR_CHART_FILES_RECEIVED'
,p_report_seq=>10
,p_report_type=>'CHART'
,p_report_alias=>'972579'
,p_status=>'PUBLIC'
,p_report_columns=>'ID:MIME_TYPE:UPLOAD_DATE:PROCESS_FLAG:ERROR_DESC:MODIFIED_BY:CLOB_OF:CONTENT:CONTENT_TYPE:FILE_NAME:LENGTH_CLOB:SOURCE_DESC:'
,p_chart_type=>'bar'
,p_chart_label_column=>'FILE_NAME'
,p_chart_label_title=>'Filename'
,p_chart_value_column=>'LENGTH_CLOB'
,p_chart_aggregate=>'COUNT'
,p_chart_value_title=>'cntr of files with that name'
,p_chart_sorting=>'VALUE_DESC'
,p_chart_orientation=>'horizontal'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(77475826526268112)
,p_plug_name=>'CURL EXAMPLE'
,p_region_template_options=>'#DEFAULT#:js-useLocalStorage:is-expanded:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(47240695057673971)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<PRE>',
'curl --ssl-no-revoke  "POST"  "https://gd49ef7d5e3cd2d-db202110212330.adb.us-phoenix-1.oraclecloudapps.com/ords/miso/fileup/DW_MEDIA_UP_DOWN_FILES/" ^',
'  -H "accept: application/json" -H "file_name: A04222005.hou"  -H "file_type: text" -H "Content-Type: application/json" ^',
'  --data-binary "@c:\wHITE_CASTLE_15\A04222005.hou"  -v',
'',
'* Rebuilt URL to: POST/',
'* Could not resolve host: POST',
'* Closing connection 0',
'curl: (6) Could not resolve host: POST',
'*   Trying 138.1.118.157...',
'* TCP_NODELAY set',
'* Connected to gd49ef7d5e3cd2d-db202110212330.adb.us-phoenix-1.oraclecloudapps.com (138.1.118.157) port 443 (#1)',
'* schannel: SSL/TLS connection with gd49ef7d5e3cd2d-db202110212330.adb.us-phoenix-1.oraclecloudapps.com port 443 (step 1/3)',
'* schannel: disabled server certificate revocation checks',
'* schannel: sending initial handshake data: sending 229 bytes...',
'* schannel: sent initial handshake data: sent 229 bytes',
'* schannel: SSL/TLS connection with gd49ef7d5e3cd2d-db202110212330.adb.us-phoenix-1.oraclecloudapps.com port 443 (step 2/3)',
'* schannel: failed to receive handshake, need more data',
'* schannel: SSL/TLS connection with gd49ef7d5e3cd2d-db202110212330.adb.us-phoenix-1.oraclecloudapps.com port 443 (step 2/3)',
'* schannel: encrypted data got 3576',
'* schannel: encrypted data buffer: offset 3576 length 4096',
'* schannel: sending next handshake data: sending 126 bytes...',
'* schannel: SSL/TLS connection with gd49ef7d5e3cd2d-db202110212330.adb.us-phoenix-1.oraclecloudapps.com port 443 (step 2/3)',
'* schannel: encrypted data got 306',
'* schannel: encrypted data buffer: offset 306 length 4096',
'* schannel: SSL/TLS handshake complete',
'* schannel: SSL/TLS connection with gd49ef7d5e3cd2d-db202110212330.adb.us-phoenix-1.oraclecloudapps.com port 443 (step 3/3)',
'* schannel: stored credential handle in session cache',
'> POST /ords/miso/fileup/DW_MEDIA_UP_DOWN_FILES/ HTTP/1.1',
'> Host: gd49ef7d5e3cd2d-db202110212330.adb.us-phoenix-1.oraclecloudapps.com',
'> User-Agent: curl/7.55.1',
'> accept: application/json',
'> file_name: A04222005.hou',
'> file_type: text',
'> Content-Type: application/json',
'> Content-Length: 2432',
'> Expect: 100-continue',
'>',
'* schannel: client wants to read 102400 bytes',
'* schannel: encdata_buffer resized 103424',
'* schannel: encrypted data buffer: offset 0 length 103424',
'* schannel: encrypted data got 54',
'* schannel: encrypted data buffer: offset 54 length 103424',
'* schannel: decrypted data length: 25',
'* schannel: decrypted data added: 25',
'* schannel: decrypted data cached: offset 25 length 102400',
'* schannel: encrypted data buffer: offset 0 length 103424',
'* schannel: decrypted data buffer: offset 25 length 102400',
'* schannel: schannel_recv cleanup',
'* schannel: decrypted data returned 25',
'* schannel: decrypted data buffer: offset 0 length 102400',
'< HTTP/1.1 100 Continue',
'* We are completely uploaded and fine',
'* schannel: client wants to read 102400 bytes',
'* schannel: encrypted data buffer: offset 0 length 103424',
'* schannel: encrypted data got 306',
'* schannel: encrypted data buffer: offset 306 length 103424',
'* schannel: decrypted data length: 243',
'* schannel: decrypted data added: 243',
'* schannel: decrypted data cached: offset 243 length 102400',
'* schannel: encrypted data length: 34',
'* schannel: encrypted data cached: offset 34 length 103424',
'* schannel: decrypted data length: 5',
'* schannel: decrypted data added: 5',
'* schannel: decrypted data cached: offset 248 length 102400',
'* schannel: encrypted data buffer: offset 0 length 103424',
'* schannel: decrypted data buffer: offset 248 length 102400',
'* schannel: schannel_recv cleanup',
'* schannel: decrypted data returned 248',
'* schannel: decrypted data buffer: offset 0 length 102400',
'< HTTP/1.1 201 Created',
'< Date: Thu, 06 Jan 2022 03:49:50 GMT',
'< Transfer-Encoding: chunked',
'< Connection: keep-alive',
'< Location: https://gd49ef7d5e3cd2d-db202110212330.adb.us-phoenix-1.oraclecloudapps.com/ords/miso/fileup/DW_MEDIA_UP_DOWN_FILES/24',
'<',
'* Connection #1 to host gd49ef7d5e3cd2d-db202110212330.adb.us-phoenix-1.oraclecloudapps.com left intact',
'</PRE>',
''))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(77475926667268113)
,p_plug_name=>'file format info'
,p_region_template_options=>'#DEFAULT#:js-useLocalStorage:is-expanded:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(47240695057673971)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>3
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<PRE>',
'cat   C:\White_castle_15>type A04222005.hou',
'...',
'we are getting the substr of that row starting in position X, of size Y',
'                          X   Y',
'substr(xyz.COLUMN_VALUE,  1,  2) as RecordType,',
'SUBSTR(xyz.COLUMN_VALUE,  3,  6) as StartTime,      /* -- This is minutes add this to business date midnight --  */',
'SUBSTR(xyz.COLUMN_VALUE, 10,  5) as EndTime,        /* -- This is minutes add this to business date midnight --  */',
'SUBSTR(xyz.COLUMN_VALUE, 15,  5) as BusinessDate,   /* -- 22005 22 is year, 005 is julian date --                */',
'SUBSTR(xyz.COLUMN_VALUE, 20,  1) as AreaCode,',
'SUBSTR(xyz.COLUMN_VALUE, 21,  6) as Store,',
'SUBSTR(xyz.COLUMN_VALUE, 27,  6) as Transactions,',
'SUBSTR(xyz.COLUMN_VALUE, 33,  9) as ShouldBeSales,',
'SUBSTR(xyz.COLUMN_VALUE, 42,  9) as NetSales,',
'SUBSTR(xyz.COLUMN_VALUE, 51,  6) as LaborMinutes,',
'SUBSTR(xyz.COLUMN_VALUE, 57,  6) as SOSTransactions,',
'SUBSTR(xyz.COLUMN_VALUE, 63,  6) as SOSTime,',
'SUBSTR(xyz.COLUMN_VALUE, 69,  6) as CLTTransactions,',
'',
'Please help identify the data values in the above columns ',
'in order to create aggregations based on your data.',
'</PRE>',
''))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(89232763899164009)
,p_name=>'RPT_FILENAME'
,p_template=>wwv_flow_api.id(47255597458673980)
,p_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select --- DBMS_LOB.GETLENGTH(CLOB_OF) LENGTH_CLOB , ',
' file_name, ID ',
' from dw_media_up_down_files '))
,p_display_condition_type=>'NEVER'
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(47279275684673993)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(89232908412164011)
,p_query_column_id=>1
,p_column_alias=>'FILE_NAME'
,p_column_display_sequence=>10
,p_column_heading=>'File Name'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(89233094186164012)
,p_query_column_id=>2
,p_column_alias=>'ID'
,p_column_display_sequence=>20
,p_column_heading=>'Id'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.component_end;
end;
/
