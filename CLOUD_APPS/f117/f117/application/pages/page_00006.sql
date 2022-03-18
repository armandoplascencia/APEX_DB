prompt --application/pages/page_00006
begin
--   Manifest
--     PAGE: 00006
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
 p_id=>6
,p_user_interface_id=>wwv_flow_api.id(89710091433454354)
,p_name=>'FILE_DETAILS'
,p_alias=>'FILE-DETAILS'
,p_step_title=>'FILE_DETAILS'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'CR_COFFEE'
,p_last_upd_yyyymmddhh24miss=>'20220126221015'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(89233208638164014)
,p_plug_name=>'Text File Instructions Details'
,p_region_template_options=>'#DEFAULT#:js-useLocalStorage:is-expanded:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(89600896945454275)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<PRE>',
'',
'RESTAPI TO FILES is .. ',
'https://gd49ef7d5e3cd2d-db202110212330.adb.us-phoenix-1.oraclecloudapps.com/ords/miso/cr_coffee_file_upload/',
'',
'Notification message is current published as ros message.  The corresponding json format is shown below.',
'',
'{',
'stamp:  The time stamp of the message.  It is number of seconds since epoch.',
'    secs:   The seconds portion of the timestamp.',
'   nsecs:   The nano seconds portion of timestamp. ',
'',
'sensor: The sensor of the message.',
'',
'value:  The floating point data value.',
'',
'units:  The data unit.',
'',
'type:   The notification type.',
'}',
'',
'=================================================',
'C:\Cook_Right_COFFEE>type notification-no-temperature-sensor.json',
'{',
'  "stamp": {',
'    "secs": 1643150045,',
'    "nsecs": 412611131',
'  },',
'  "sensor": "channel 0",',
'  "value": -196.600006104,',
'  "units": "fahrenheit",',
'  "type": "NoSensor"',
'}',
'',
'C:\Cook_Right_COFFEE> type  notification-no-weight-sensor.json',
'{',
'  "stamp": {',
'    "secs": 1643150045,',
'    "nsecs": 402613519',
'  },',
'  "sensor": "channel 0",',
'  "value": 0.0,',
'  "units": "oz",',
'  "type": "NoSensor"',
'}',
'',
'C:\Cook_Right_COFFEE> type notification-temperature-out-of-limit.json',
'{',
'  "stamp": {',
'    "secs": 1643150691,',
'    "nsecs": 472626116',
'  },',
'  "sensor": "channel 1",',
'  "value": 63.2749977112,',
'  "units": "fahrenheit",',
'  "type": "OutOfLimits"',
'}',
'',
'C:\Cook_Right_COFFEE>type  notification-weight-out-of-limit.json',
'{',
'  "stamp": {',
'    "secs": 1643150691,',
'    "nsecs": 472626116',
'  },',
'  "sensor": "channel 1",',
'  "value": 131.881408691,',
'  "units": "oz",',
'  "type": "OutOfLimits"',
'}',
'',
'',
'</PRE>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(89233346179164015)
,p_plug_name=>'RAW DATA VIEW'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(89618595191454283)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_query_type=>'TABLE'
,p_query_table=>'CR_COFFEE_FILE_UPLOAD'
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
,p_prn_page_header=>'RAW DATA VIEW'
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
 p_id=>wwv_flow_api.id(89233490266164016)
,p_max_row_count=>'1000000'
,p_allow_save_rpt_public=>'Y'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'TOP_AND_BOTTOM_LEFT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF:RTF:EMAIL'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="">'
,p_allow_exclude_null_values=>'N'
,p_allow_hide_extra_columns=>'N'
,p_owner=>'MISO'
,p_internal_uid=>89233490266164016
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(89233593926164017)
,p_db_column_name=>'ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(89233682470164018)
,p_db_column_name=>'TYPE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Type'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(89233787534164019)
,p_db_column_name=>'SECS'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Secs'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(89233833470164020)
,p_db_column_name=>'NSECS'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Nsecs'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(89233991892164021)
,p_db_column_name=>'UNITS'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Units'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(89234048728164022)
,p_db_column_name=>'VALUE'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Value'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(89234111899164023)
,p_db_column_name=>'SENSOR'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Sensor'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(89911941540626074)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'899120'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ID:TYPE:SECS:NSECS:UNITS:VALUE:SENSOR'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(89934689758229017)
,p_application_user=>'CR_COFFEE'
,p_name=>'adfafd'
,p_description=>'asdfasd'
,p_report_seq=>10
,p_report_type=>'CHART'
,p_report_alias=>'899347'
,p_status=>'PUBLIC'
,p_report_columns=>'ID:TYPE:SECS:NSECS:UNITS:VALUE:SENSOR'
,p_chart_type=>'bar'
,p_chart_label_column=>'UNITS'
,p_chart_value_column=>'ID'
,p_chart_aggregate=>'COUNT'
,p_chart_sorting=>'DEFAULT'
,p_chart_orientation=>'vertical'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(89234257060164024)
,p_plug_name=>'REST API'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(89620499993454284)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<PRE>',
'CREATE TABLE MISO.CR_PANERA_FILES ',
'(	ID                     NUMBER(*,0) GENERATED ALWAYS AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999999999999999 ',
'                           INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE , ',
'	FILE_NAME              VARCHAR2(256 BYTE)      COLLATE "USING_NLS_COMP", ',
'	CONTENT_TYPE           VARCHAR2(256 BYTE)      COLLATE "USING_NLS_COMP", ',
'	CONTENT                BLOB,                   ',
'	SOURCE_DESC            VARCHAR2(4000 BYTE)     COLLATE "USING_NLS_COMP", ',
'  CR_COFFEE_text_FLD1    VARCHAR2(4000 BYTE),',
'  CR_COFFEE_text_FLD2    VARCHAR2(4000 BYTE),',
'  CR_COFFEE_text_FLD3    VARCHAR2(4000 BYTE),',
'  CR_COFFEE_text_FLD4    VARCHAR2(4000 BYTE),',
'  CR_COFFEE_text_FLD5    VARCHAR2(4000 BYTE),',
'  CR_COFFEE_text_desc_1  VARCHAR2(4000 BYTE),',
'  CR_COFFEE_text_desc_2  VARCHAR2(4000 BYTE),',
'  CR_COFFEE_text_desc_3  VARCHAR2(4000 BYTE),',
'  CR_COFFEE_text_desc_4  VARCHAR2(4000 BYTE),',
'  CR_COFFEE_text_desc_5  VARCHAR2(4000 BYTE),',
'  CONTENT_CLOB           CLOB,                   ',
'  CONTENT_JSON           JSON,                   ',
'	MIME_TYPE              VARCHAR2(4000 BYTE)     COLLATE "USING_NLS_COMP", ',
'	UPLOAD_DATE            DATE,                   ',
'	PROCESS_FLAG           VARCHAR2(10 BYTE)       COLLATE "USING_NLS_COMP", ',
'	ERROR_DESC             VARCHAR2(4000 BYTE)     COLLATE "USING_NLS_COMP"',
' );',
'',
'CREATE UNIQUE INDEX "MISO"."CR_PANERA_FILES_PK" ON "MISO"."CR_PANERA_FILES" ("ID");',
'',
'ALTER TABLE "MISO"."CR_PANERA_FILES" MODIFY ("FILE_NAME"    NOT NULL ENABLE);',
'ALTER TABLE "MISO"."CR_PANERA_FILES" MODIFY ("CONTENT_TYPE" NOT NULL ENABLE);',
'ALTER TABLE "MISO"."CR_PANERA_FILES" MODIFY ("CONTENT"      NOT NULL ENABLE);',
'ALTER TABLE "MISO"."CR_PANERA_FILES" ADD CONSTRAINT "CR_PANERA_FILES_PK" PRIMARY KEY ("ID")  USING INDEX  ENABLE;',
'ALTER TABLE "MISO"."CR_PANERA_FILES" MODIFY ("ID" NOT NULL ENABLE);',
'',
'',
'',
'BEGIN',
'  ORDS.ENABLE_SCHEMA(',
'      p_enabled             => TRUE,',
'      p_schema              => ''MISO'',',
'      p_url_mapping_type    => ''BASE_PATH'',',
'      p_url_mapping_pattern => ''miso'',',
'      p_auto_rest_auth      => TRUE);',
'    ',
'  ORDS.DEFINE_MODULE(',
'      p_module_name    => ''panera'',',
'      p_base_path      => ''/fileup/'',',
'      p_items_per_page => 25,',
'      p_status         => ''PUBLISHED'',',
'      p_comments       => NULL);',
'',
'  ORDS.DEFINE_TEMPLATE(',
'      p_module_name    => ''panera'',',
'      p_pattern        => ''CR_PANERA_FILES/'',',
'      p_priority       => 0,',
'      p_etag_type      => ''HASH'',',
'      p_etag_query     => NULL,',
'      p_comments       => NULL);',
'',
'  ORDS.DEFINE_HANDLER(',
'      p_module_name    => ''panera'',',
'      p_pattern        => ''CR_PANERA_FILES/'',',
'      p_method         => ''POST'',',
'      p_source_type    => ''plsql/block'',',
'      p_items_per_page => 0,',
'      p_mimes_allowed  => NULL,',
'      p_comments       => NULL,',
'      p_source         => ',
'''declare ',
' image_id integer; ',
'begin',
' insert into CR_PANERA_FILES (file_name, content_type, content, source_Desc,',
'  CR_COFFEE_text_FLD1  , CR_COFFEE_text_FLD2   ,CR_COFFEE_text_FLD3,   CR_COFFEE_text_FLD4,   CR_COFFEE_text_FLD5,',
'  CR_COFFEE_text_desc_1, CR_COFFEE_text_desc_2, CR_COFFEE_text_desc_3, CR_COFFEE_text_desc_4, CR_COFFEE_text_desc_5 ',
'               ) ',
'             values  (:file_name,:file_type,:body,''''panera_UP_1'''',',
'                       :CR_COFFEE_text_FLD1  , :CR_COFFEE_text_FLD2   ,:CR_COFFEE_text_FLD3,   :CR_COFFEE_text_FLD4,   :CR_COFFEE_text_FLD5,',
'                       :CR_COFFEE_text_desc_1, :CR_COFFEE_text_desc_2, :CR_COFFEE_text_desc_3, :CR_COFFEE_text_desc_4, :CR_COFFEE_text_desc_5 ',
'              ) /*-- :body is defined by ORDS */',
'             returning id into image_id;',
' :status := 201;                                                       /*-- http status code */',
' :location := ''''./'''' || image_id;                                     /*-- included in the response to access the new record */',
'end;'');',
'',
'  ORDS.DEFINE_PARAMETER(',
'      p_module_name        => ''panera'',',
'      p_pattern            => ''CR_PANERA_FILES/'',',
'      p_method             => ''POST'',',
'      p_name               => ''X-ORDS-STATUS-CODE'',',
'      p_bind_variable_name => ''status'',',
'      p_source_type        => ''HEADER'',',
'      p_param_type         => ''INT'',',
'      p_access_method      => ''OUT'',',
'      p_comments           => NULL);',
'',
'  ORDS.DEFINE_PARAMETER(',
'      p_module_name        => ''panera'',',
'      p_pattern            => ''CR_PANERA_FILES/'',',
'      p_method             => ''POST'',',
'      p_name               => ''file_name'',',
'      p_bind_variable_name => ''file_name'',',
'      p_source_type        => ''HEADER'',',
'      p_param_type         => ''STRING'',',
'      p_access_method      => ''IN'',',
'      p_comments           => NULL);',
'',
'  ORDS.DEFINE_PARAMETER(',
'      p_module_name        => ''panera'',',
'      p_pattern            => ''CR_PANERA_FILES/'',',
'      p_method             => ''POST'',',
'      p_name               => ''file_type'',',
'      p_bind_variable_name => ''file_type'',',
'      p_source_type        => ''HEADER'',',
'      p_param_type         => ''STRING'',',
'      p_access_method      => ''IN'',',
'      p_comments           => NULL);',
'',
'  ORDS.DEFINE_PARAMETER(',
'      p_module_name        => ''panera'',',
'      p_pattern            => ''CR_PANERA_FILES/'',',
'      p_method             => ''POST'',',
'      p_name               => ''CR_COFFEE_text_FLD1'',',
'      p_bind_variable_name => ''CR_COFFEE_text_FLD1'',',
'      p_source_type        => ''HEADER'',',
'      p_param_type         => ''STRING'',',
'      p_access_method      => ''IN'',',
'      p_comments           => NULL);',
'',
'  ORDS.DEFINE_PARAMETER(',
'      p_module_name        => ''panera'',',
'      p_pattern            => ''CR_PANERA_FILES/'',',
'      p_method             => ''POST'',',
'      p_name               => ''CR_COFFEE_text_FLD2'',',
'      p_bind_variable_name => ''CR_COFFEE_text_FLD2'',',
'      p_source_type        => ''HEADER'',',
'      p_param_type         => ''STRING'',',
'      p_access_method      => ''IN'',',
'      p_comments           => NULL);',
'',
'  ORDS.DEFINE_PARAMETER(',
'      p_module_name        => ''panera'',',
'      p_pattern            => ''CR_PANERA_FILES/'',',
'      p_method             => ''POST'',',
'      p_name               => ''CR_COFFEE_text_FLD3'',',
'      p_bind_variable_name => ''CR_COFFEE_text_FLD3'',',
'      p_source_type        => ''HEADER'',',
'      p_param_type         => ''STRING'',',
'      p_access_method      => ''IN'',',
'      p_comments           => NULL);',
'',
'  ORDS.DEFINE_PARAMETER(',
'      p_module_name        => ''panera'',',
'      p_pattern            => ''CR_PANERA_FILES/'',',
'      p_method             => ''POST'',',
'      p_name               => ''CR_COFFEE_text_FLD4'',',
'      p_bind_variable_name => ''CR_COFFEE_text_FLD4'',',
'      p_source_type        => ''HEADER'',',
'      p_param_type         => ''STRING'',',
'      p_access_method      => ''IN'',',
'      p_comments           => NULL);',
'',
'  ORDS.DEFINE_PARAMETER(',
'      p_module_name        => ''panera'',',
'      p_pattern            => ''CR_PANERA_FILES/'',',
'      p_method             => ''POST'',',
'      p_name               => ''CR_COFFEE_text_FLD5'',',
'      p_bind_variable_name => ''CR_COFFEE_text_FLD5'',',
'      p_source_type        => ''HEADER'',',
'      p_param_type         => ''STRING'',',
'      p_access_method      => ''IN'',',
'      p_comments           => NULL);',
'',
'  ORDS.DEFINE_PARAMETER(',
'      p_module_name        => ''panera'',',
'      p_pattern            => ''CR_PANERA_FILES/'',',
'      p_method             => ''POST'',',
'      p_name               => ''CR_COFFEE_text_desc_1'',',
'      p_bind_variable_name => ''CR_COFFEE_text_desc_1'',',
'      p_source_type        => ''HEADER'',',
'      p_param_type         => ''STRING'',',
'      p_access_method      => ''IN'',',
'      p_comments           => NULL);',
'',
'  ORDS.DEFINE_PARAMETER(',
'      p_module_name        => ''panera'',',
'      p_pattern            => ''CR_PANERA_FILES/'',',
'      p_method             => ''POST'',',
'      p_name               => ''CR_COFFEE_text_desc_2'',',
'      p_bind_variable_name => ''CR_COFFEE_text_desc_2'',',
'      p_source_type        => ''HEADER'',',
'      p_param_type         => ''STRING'',',
'      p_access_method      => ''IN'',',
'      p_comments           => NULL);',
'',
'  ORDS.DEFINE_PARAMETER(',
'      p_module_name        => ''panera'',',
'      p_pattern            => ''CR_PANERA_FILES/'',',
'      p_method             => ''POST'',',
'      p_name               => ''CR_COFFEE_text_desc_3'',',
'      p_bind_variable_name => ''CR_COFFEE_text_desc_3'',',
'      p_source_type        => ''HEADER'',',
'      p_param_type         => ''STRING'',',
'      p_access_method      => ''IN'',',
'      p_comments           => NULL);',
'',
'  ORDS.DEFINE_PARAMETER(',
'      p_module_name        => ''panera'',',
'      p_pattern            => ''CR_PANERA_FILES/'',',
'      p_method             => ''POST'',',
'      p_name               => ''CR_COFFEE_text_desc_4'',',
'      p_bind_variable_name => ''CR_COFFEE_text_desc_4'',',
'      p_source_type        => ''HEADER'',',
'      p_param_type         => ''STRING'',',
'      p_access_method      => ''IN'',',
'      p_comments           => NULL);',
'',
'  ORDS.DEFINE_PARAMETER(',
'      p_module_name        => ''panera'',',
'      p_pattern            => ''CR_PANERA_FILES/'',',
'      p_method             => ''POST'',',
'      p_name               => ''CR_COFFEE_text_desc_5'',',
'      p_bind_variable_name => ''CR_COFFEE_text_desc_5'',',
'      p_source_type        => ''HEADER'',',
'      p_param_type         => ''STRING'',',
'      p_access_method      => ''IN'',',
'      p_comments           => NULL);',
'',
'',
'  ORDS.DEFINE_PARAMETER(',
'      p_module_name        => ''panera'',',
'      p_pattern            => ''CR_PANERA_FILES/'',',
'      p_method             => ''POST'',',
'      p_name               => ''location'',',
'      p_bind_variable_name => ''location'',',
'      p_source_type        => ''HEADER'',',
'      p_param_type         => ''STRING'',',
'      p_access_method      => ''OUT'',',
'      p_comments           => NULL);',
'',
'  ORDS.DEFINE_HANDLER(',
'      p_module_name    => ''panera'',',
'      p_pattern        => ''CR_PANERA_FILES/'',',
'      p_method         => ''GET'',',
'      p_source_type    => ''json/collection'',',
'      p_items_per_page => 0,',
'      p_mimes_allowed  => NULL,',
'      p_comments       => NULL,',
'      p_source         => ',
'''select ID ,',
'FILE_NAME ,',
'CONTENT_TYPE,',
'''''./'''' || id "$record"  /*-- the $ tells ORDS to render this as a LINK */',
'from CR_PANERA_FILES',
'order by id asc'');',
'',
'  ORDS.DEFINE_TEMPLATE(',
'      p_module_name    => ''panera'',',
'      p_pattern        => ''CR_PANERA_FILES/:id'',',
'      p_priority       => 0,',
'      p_etag_type      => ''HASH'',',
'      p_etag_query     => NULL,',
'      p_comments       => NULL);',
'',
'  ORDS.DEFINE_HANDLER(',
'      p_module_name    => ''panera'',',
'      p_pattern        => ''CR_PANERA_FILES/:id'',',
'      p_method         => ''GET'',',
'      p_source_type    => ''json/item'',',
'      p_items_per_page => 25,',
'      p_mimes_allowed  => NULL,',
'      p_comments       => NULL,',
'      p_source         => ',
'''select FILE_NAME,',
'      CONTENT_TYPE,',
'      ID || ''''/content'''' "$file"',
' from CR_PANERA_FILES',
'where ID = :id'');',
'',
'  ORDS.DEFINE_TEMPLATE(',
'      p_module_name    => ''panera'',',
'      p_pattern        => ''CR_PANERA_FILES/:id/content'',',
'      p_priority       => 0,',
'      p_etag_type      => ''HASH'',',
'      p_etag_query     => NULL,',
'      p_comments       => NULL);',
'',
'  ORDS.DEFINE_HANDLER(',
'      p_module_name    => ''panera'',',
'      p_pattern        => ''CR_PANERA_FILES/:id/content'',',
'      p_method         => ''GET'',',
'      p_source_type    => ''resource/lob'',',
'      p_items_per_page => 25,',
'      p_mimes_allowed  => NULL,',
'      p_comments       => NULL,',
'      p_source         => ',
'''select CONTENT_TYPE,',
'       CONTENT',
'  from CR_PANERA_FILES',
' where ID = :id'');',
'',
'    ',
'        ',
'COMMIT;',
'',
'END;',
'</PRE>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(89234344946164025)
,p_plug_name=>'CURL EXAMPLE'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(89620499993454284)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<pre>',
'curl formatted for dos windows',
'',
'C:\Cook_Right_COFFEE>curl --ssl-no-revoke  "POST"  "https://gd49ef7d5e3cd2d-db202110212330.adb.us-phoenix-1.oraclecloudapps.com/ords/miso/panera_fileup/CR_PANERA_FILES/" ^',
'More?   -H "accept: application/json" -H "file_name: notification-no-temperature-sensor.json"  -H "file_type: text" -H "Content-Type: application/json" ^',
'   -H "CR_COFFEE_text_FLD1: text_fld_1" ^',
'   -H "CR_COFFEE_text_desc_1: text_desc_  fld_1" ^',
'   --data-binary  "@c:\cook_right_coffee\notification-no-temperature-sensor.json"  -v',
'* Could not resolve host: POST',
'* Closing connection 0',
'curl: (6) Could not resolve host: POST',
'*   Trying 138.1.118.157:443...',
'* Connected to gd49ef7d5e3cd2d-db202110212330.adb.us-phoenix-1.oraclecloudapps.com (138.1.118.157) port 443 (#1)',
'* schannel: disabled automatic use of client certificate',
'* schannel: ALPN, offering http/1.1',
'* schannel: ALPN, server accepted to use http/1.1',
'> POST /ords/miso/panera_fileup/CR_PANERA_FILES/ HTTP/1.1',
'> Host: gd49ef7d5e3cd2d-db202110212330.adb.us-phoenix-1.oraclecloudapps.com',
'> User-Agent: curl/7.79.1',
'> accept: application/json',
'> file_name: notification-no-temperature-sensor.json',
'> file_type: text',
'> Content-Type: application/json',
'> CR_COFFEE_text_FLD1: text_fld_1',
'> CR_COFFEE_text_desc_1: text_desc_  fld_1',
'> Content-Length: 167',
'>',
'* Mark bundle as not supporting multiuse',
'< HTTP/1.1 201 Created',
'< Date: Wed, 26 Jan 2022 08:01:17 GMT',
'< Transfer-Encoding: chunked',
'< Connection: keep-alive',
'< Location: https://gd49ef7d5e3cd2d-db202110212330.adb.us-phoenix-1.oraclecloudapps.com/ords/miso/panera_fileup/CR_PANERA_FILES/1',
'<',
'* Connection #1 to host gd49ef7d5e3cd2d-db202110212330.adb.us-phoenix-1.oraclecloudapps.com left intact',
'',
'C:\Cook_Right_COFFEE>curl --ssl-no-revoke  "POST"  "https://gd49ef7d5e3cd2d-db202110212330.adb.us-phoenix-1.oraclecloudapps.com/ords/miso/panera_fileup/CR_PANERA_FILES/" ^',
'More?  -H "accept: application/json" -H "file_type: text" -H "Content-Type: application/json"  -H "CR_COFFEE_text_FLD1: text_fld_1" -H "CR_COFFEE_text_desc_1: text_desc_  fld_1" ^',
'More?  -H "file_name: notification-no-weight-sensor.json" ^',
'More?  --data-binary  "@c:\cook_right_coffee\notification-no-weight-sensor.json"  -v',
'* Could not resolve host: POST',
'* Closing connection 0',
'curl: (6) Could not resolve host: POST',
'*   Trying 138.1.118.157:443...',
'* Connected to gd49ef7d5e3cd2d-db202110212330.adb.us-phoenix-1.oraclecloudapps.com (138.1.118.157) port 443 (#1)',
'* schannel: disabled automatic use of client certificate',
'* schannel: ALPN, offering http/1.1',
'* schannel: ALPN, server accepted to use http/1.1',
'> POST /ords/miso/panera_fileup/CR_PANERA_FILES/ HTTP/1.1',
'> Host: gd49ef7d5e3cd2d-db202110212330.adb.us-phoenix-1.oraclecloudapps.com',
'> User-Agent: curl/7.79.1',
'> accept: application/json',
'> file_type: text',
'> Content-Type: application/json',
'> CR_COFFEE_text_FLD1: text_fld_1',
'> CR_COFFEE_text_desc_1: text_desc_  fld_1',
'> file_name: notification-no-weight-sensor.json',
'> Content-Length: 148',
'>',
'* Mark bundle as not supporting multiuse',
'< HTTP/1.1 201 Created',
'< Date: Wed, 26 Jan 2022 08:12:23 GMT',
'< Transfer-Encoding: chunked',
'< Connection: keep-alive',
'< Location: https://gd49ef7d5e3cd2d-db202110212330.adb.us-phoenix-1.oraclecloudapps.com/ords/miso/panera_fileup/CR_PANERA_FILES/2',
'<',
'* Connection #1 to host gd49ef7d5e3cd2d-db202110212330.adb.us-phoenix-1.oraclecloudapps.com left intact',
'',
'C:\Cook_Right_COFFEE>curl --ssl-no-revoke  "POST"  "https://gd49ef7d5e3cd2d-db202110212330.adb.us-phoenix-1.oraclecloudapps.com/ords/miso/panera_fileup/CR_PANERA_FILES/" ^',
'More?  -H "accept: application/json" -H "file_type: text" -H "Content-Type: application/json"  -H "CR_COFFEE_text_FLD1: text_fld_1" -H "CR_COFFEE_text_desc_1: text_desc_  fld_1" ^',
'More?  -H                        "file_name: notification-temperature-out-of-limit.json" ^',
'More?  --data-binary  "@c:\cook_right_coffee\notification-temperature-out-of-limit.json"  -v',
'* Could not resolve host: POST',
'* Closing connection 0',
'curl: (6) Could not resolve host: POST',
'*   Trying 138.1.118.157:443...',
'* Connected to gd49ef7d5e3cd2d-db202110212330.adb.us-phoenix-1.oraclecloudapps.com (138.1.118.157) port 443 (#1)',
'* schannel: disabled automatic use of client certificate',
'* schannel: ALPN, offering http/1.1',
'* schannel: ALPN, server accepted to use http/1.1',
'> POST /ords/miso/panera_fileup/CR_PANERA_FILES/ HTTP/1.1',
'> Host: gd49ef7d5e3cd2d-db202110212330.adb.us-phoenix-1.oraclecloudapps.com',
'> User-Agent: curl/7.79.1',
'> accept: application/json',
'> file_type: text',
'> Content-Type: application/json',
'> CR_COFFEE_text_FLD1: text_fld_1',
'> CR_COFFEE_text_desc_1: text_desc_  fld_1',
'> file_name: notification-temperature-out-of-limit.json',
'> Content-Length: 169',
'>',
'* Mark bundle as not supporting multiuse',
'< HTTP/1.1 201 Created',
'< Date: Wed, 26 Jan 2022 08:13:22 GMT',
'< Transfer-Encoding: chunked',
'< Connection: keep-alive',
'< Location: https://gd49ef7d5e3cd2d-db202110212330.adb.us-phoenix-1.oraclecloudapps.com/ords/miso/panera_fileup/CR_PANERA_FILES/3',
'<',
'* Connection #1 to host gd49ef7d5e3cd2d-db202110212330.adb.us-phoenix-1.oraclecloudapps.com left intact',
'',
'C:\Cook_Right_COFFEE>curl --ssl-no-revoke  "POST"  "https://gd49ef7d5e3cd2d-db202110212330.adb.us-phoenix-1.oraclecloudapps.com/ords/miso/panera_fileup/CR_PANERA_FILES/" ^',
'More?  -H "accept: application/json" -H "file_type: text" -H "Content-Type: application/json"  -H "CR_COFFEE_text_FLD1: text_fld_1" -H "CR_COFFEE_text_desc_1: text_desc_  fld_1" ^',
'More?  -H                        "file_name: notification-weight-out-of-limit.json" ^',
'More?  --data-binary  "@c:\cook_right_coffee\notification-weight-out-of-limit.json"  -v',
'* Could not resolve host: POST',
'* Closing connection 0',
'curl: (6) Could not resolve host: POST',
'*   Trying 138.1.118.157:443...',
'* Connected to gd49ef7d5e3cd2d-db202110212330.adb.us-phoenix-1.oraclecloudapps.com (138.1.118.157) port 443 (#1)',
'* schannel: disabled automatic use of client certificate',
'* schannel: ALPN, offering http/1.1',
'* schannel: ALPN, server accepted to use http/1.1',
'> POST /ords/miso/panera_fileup/CR_PANERA_FILES/ HTTP/1.1',
'> Host: gd49ef7d5e3cd2d-db202110212330.adb.us-phoenix-1.oraclecloudapps.com',
'> User-Agent: curl/7.79.1',
'> accept: application/json',
'> file_type: text',
'> Content-Type: application/json',
'> CR_COFFEE_text_FLD1: text_fld_1',
'> CR_COFFEE_text_desc_1: text_desc_  fld_1',
'> file_name: notification-weight-out-of-limit.json',
'> Content-Length: 161',
'>',
'* Mark bundle as not supporting multiuse',
'< HTTP/1.1 201 Created',
'< Date: Wed, 26 Jan 2022 08:14:17 GMT',
'< Transfer-Encoding: chunked',
'< Connection: keep-alive',
'< Location: https://gd49ef7d5e3cd2d-db202110212330.adb.us-phoenix-1.oraclecloudapps.com/ords/miso/panera_fileup/CR_PANERA_FILES/4',
'<',
'* Connection #1 to host gd49ef7d5e3cd2d-db202110212330.adb.us-phoenix-1.oraclecloudapps.com left intact',
'',
'</pre>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(89757516213455133)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(89629872094454288)
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(89562883741454233)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(89686955642454327)
);
wwv_flow_api.component_end;
end;
/
