prompt --application/pages/page_00001
begin
--   Manifest
--     PAGE: 00001
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
 p_id=>1
,p_user_interface_id=>wwv_flow_api.id(64824702076113970)
,p_name=>'Home'
,p_alias=>'HOME'
,p_step_title=>'COOK_RIGHT'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'MISO'
,p_last_upd_yyyymmddhh24miss=>'20220128221628'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(64620635709635016)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#:js-useLocalStorage:is-expanded:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(64712527246113889)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<PRE>',
'CREATE OR REPLACE FORCE VIEW "CR_V_REST_CAM_FRAME_BBOX" ("CR_REST_ZIP", "CR_REST_CITY", "CR_REST_NAME", "CR_REST_UUID", "CR_REST_STATE", "CR_REST_COUNTRY", "CR_REST_ADDRESS1", "CR_REST_CREATED", "CR_REST_ADDRESS2", "CR_REST_TIME_ZONE", "CR_CAM_NAME",'
||' "CR_CAM_SERIAL", "CR_CAM_CREATED", "CR_CAM_DESCRIPTION", "CR_CAM_RESTAURANT_ID", "CR_CAM_EXTRINSIC_YAML", "CR_CAMI_NTRINSIC_YAML", "CR_FRAM_FRAME_ID", "CR_FRAM_CAMERA_ID", "CR_FRAM_IMAGE_URI", "CR_FRAM_ELAPSED_MS", "CR_BNDBX_ID", "CR_BNDBX_CREATED_1'
||'", "CR_BNDBX_TOP_LEFT_X", "CR_BNDBX_TOP_LEFT_Y", "CR_BNDBX_BOT_RIGHT_X", "CR_BNDBX_BOT_RIGHT_Y", "CR_BNDBX_BOUNDING_BOX_ID", "CR_BNDBX_PREDICTED_TYPE_ID") AS ',
'  select ',
'    CR_RESTAURANT.ZIP        as CR_REST_ZIP,',
'    CR_RESTAURANT.CITY       as CR_REST_CITY,',
'    CR_RESTAURANT.NAME       as CR_REST_NAME,',
'    CR_RESTAURANT.UUID       as CR_REST_UUID,',
'    CR_RESTAURANT.STATE      as CR_REST_STATE,',
'    CR_RESTAURANT.COUNTRY    as CR_REST_COUNTRY,',
'    CR_RESTAURANT.ADDRESS1   as CR_REST_ADDRESS1,',
'    CR_RESTAURANT.CREATED    as CR_REST_CREATED,',
'    CR_RESTAURANT.ADDRESS2   as CR_REST_ADDRESS2,',
'    CR_RESTAURANT.TIME_ZONE  as CR_REST_TIME_ZONE,',
'    CR_CAMERA.NAME           as CR_CAM_NAME,',
'    CR_CAMERA.SERIAL         as CR_CAM_SERIAL,',
'    CR_CAMERA.CREATED        as CR_CAM_CREATED,',
'    CR_CAMERA.DESCRIPTION    as CR_CAM_DESCRIPTION,',
'    CR_CAMERA.RESTAURANT_ID  as CR_CAM_RESTAURANT_ID,',
'    CR_CAMERA.EXTRINSIC_YAML as CR_CAM_EXTRINSIC_YAML,',
'    CR_CAMERA.INTRINSIC_YAML as CR_CAMI_NTRINSIC_YAML,',
'    CR_FRAME.FRAME_ID        as CR_FRAM_FRAME_ID,',
'    CR_FRAME.CAMERA_ID       as CR_FRAM_CAMERA_ID,',
'    CR_FRAME.IMAGE_URI       as CR_FRAM_IMAGE_URI,',
'    CR_FRAME.ELAPSED_MS      as CR_FRAM_ELAPSED_MS,',
'    CR_BOUNDING_BOX.ID       as CR_BNDBX_ID,',
'    CR_BOUNDING_BOX.CREATED           as CR_BNDBX_CREATED_1,',
'    CR_BOUNDING_BOX.TOP_LEFT_X        as CR_BNDBX_TOP_LEFT_X,',
'    CR_BOUNDING_BOX.TOP_LEFT_Y        as CR_BNDBX_TOP_LEFT_Y,',
'    CR_BOUNDING_BOX.BOT_RIGHT_X       as CR_BNDBX_BOT_RIGHT_X,',
'    CR_BOUNDING_BOX.BOT_RIGHT_Y       as CR_BNDBX_BOT_RIGHT_Y,',
'    CR_BOUNDING_BOX.BOUNDING_BOX_ID   as CR_BNDBX_BOUNDING_BOX_ID,',
'    CR_BOUNDING_BOX.PREDICTED_TYPE_ID as CR_BNDBX_PREDICTED_TYPE_ID ',
' from ',
'    CR_RESTAURANT          CR_RESTAURANT,',
'    CR_FRAME_BOUNDING_BOX  CR_FRAME_BOUNDING_BOX,',
'    CR_FRAME               CR_FRAME,',
'    CR_CAMERA              CR_CAMERA,',
'    CR_BOUNDING_BOX        CR_BOUNDING_BOX',
' where ',
'        CR_RESTAURANT.ID                     = CR_CAMERA.RESTAURANT_ID',
'    and CR_CAMERA.ID                         = CR_FRAME.CAMERA_ID',
'    and CR_FRAME.ID                          = CR_FRAME_BOUNDING_BOX.FRAME_ID',
'    and CR_BOUNDING_BOX.ID                   = CR_FRAME_BOUNDING_BOX.BOUNDING_BOX_ID',
'/',
'</PRE>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(64620742519635017)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(64728038565113896)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select * from CR_V_REST_CAM_FRAME_BBOX',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'New'
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
 p_id=>wwv_flow_api.id(64623743111635047)
,p_max_row_count=>'1000000'
,p_allow_save_rpt_public=>'Y'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF:RTF:EMAIL'
,p_csv_output_separator=>'~'
,p_owner=>'APLASCENCIA'
,p_internal_uid=>64623743111635047
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(64623844549635048)
,p_db_column_name=>'CR_REST_ZIP'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Cr Rest Zip'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(64623994712635049)
,p_db_column_name=>'CR_REST_CITY'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Cr Rest City'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(64624016356635050)
,p_db_column_name=>'CR_REST_NAME'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Cr Rest Name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69196519825918501)
,p_db_column_name=>'CR_REST_UUID'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Cr Rest Uuid'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69196680168918502)
,p_db_column_name=>'CR_REST_STATE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Cr Rest State'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69196760319918503)
,p_db_column_name=>'CR_REST_COUNTRY'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Cr Rest Country'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69196835085918504)
,p_db_column_name=>'CR_REST_ADDRESS1'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Cr Rest Address1'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69196909918918505)
,p_db_column_name=>'CR_REST_CREATED'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Cr Rest Created'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69197039013918506)
,p_db_column_name=>'CR_REST_ADDRESS2'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Cr Rest Address2'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69197152011918507)
,p_db_column_name=>'CR_REST_TIME_ZONE'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Cr Rest Time Zone'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69197230056918508)
,p_db_column_name=>'CR_CAM_NAME'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Cr Cam Name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69197353317918509)
,p_db_column_name=>'CR_CAM_SERIAL'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Cr Cam Serial'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69197478926918510)
,p_db_column_name=>'CR_CAM_CREATED'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Cr Cam Created'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69197514437918511)
,p_db_column_name=>'CR_CAM_DESCRIPTION'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Cr Cam Description'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69197679178918512)
,p_db_column_name=>'CR_CAM_RESTAURANT_ID'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Cr Cam Restaurant Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69197708371918513)
,p_db_column_name=>'CR_CAM_EXTRINSIC_YAML'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Cr Cam Extrinsic Yaml'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69197851661918514)
,p_db_column_name=>'CR_CAMI_NTRINSIC_YAML'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Cr Cami Ntrinsic Yaml'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69197983316918515)
,p_db_column_name=>'CR_FRAM_FRAME_ID'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Cr Fram Frame Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69198042932918516)
,p_db_column_name=>'CR_FRAM_CAMERA_ID'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Cr Fram Camera Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69198106717918517)
,p_db_column_name=>'CR_FRAM_IMAGE_URI'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Cr Fram Image Uri'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69198238134918518)
,p_db_column_name=>'CR_FRAM_ELAPSED_MS'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Cr Fram Elapsed Ms'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69198317715918519)
,p_db_column_name=>'CR_BNDBX_ID'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'Cr Bndbx Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69198449973918520)
,p_db_column_name=>'CR_BNDBX_CREATED_1'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'Cr Bndbx Created 1'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69198578940918521)
,p_db_column_name=>'CR_BNDBX_TOP_LEFT_X'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>'Cr Bndbx Top Left X'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69198681478918522)
,p_db_column_name=>'CR_BNDBX_TOP_LEFT_Y'
,p_display_order=>250
,p_column_identifier=>'Y'
,p_column_label=>'Cr Bndbx Top Left Y'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69198784076918523)
,p_db_column_name=>'CR_BNDBX_BOT_RIGHT_X'
,p_display_order=>260
,p_column_identifier=>'Z'
,p_column_label=>'Cr Bndbx Bot Right X'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69198806019918524)
,p_db_column_name=>'CR_BNDBX_BOT_RIGHT_Y'
,p_display_order=>270
,p_column_identifier=>'AA'
,p_column_label=>'Cr Bndbx Bot Right Y'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69198952384918525)
,p_db_column_name=>'CR_BNDBX_BOUNDING_BOX_ID'
,p_display_order=>280
,p_column_identifier=>'AB'
,p_column_label=>'Cr Bndbx Bounding Box Id'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(69199057330918526)
,p_db_column_name=>'CR_BNDBX_PREDICTED_TYPE_ID'
,p_display_order=>290
,p_column_identifier=>'AC'
,p_column_label=>'Cr Bndbx Predicted Type Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(69219710424922254)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'692198'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'CR_REST_ZIP:CR_REST_CITY:CR_REST_NAME:CR_REST_UUID:CR_REST_STATE:CR_REST_COUNTRY:CR_REST_ADDRESS1:CR_REST_CREATED:CR_REST_ADDRESS2:CR_REST_TIME_ZONE:CR_CAM_NAME:CR_CAM_SERIAL:CR_CAM_CREATED:CR_CAM_DESCRIPTION:CR_CAM_RESTAURANT_ID:CR_CAM_EXTRINSIC_YAM'
||'L:CR_CAMI_NTRINSIC_YAML:CR_FRAM_FRAME_ID:CR_FRAM_CAMERA_ID:CR_FRAM_IMAGE_URI:CR_FRAM_ELAPSED_MS:CR_BNDBX_ID:CR_BNDBX_CREATED_1:CR_BNDBX_TOP_LEFT_X:CR_BNDBX_TOP_LEFT_Y:CR_BNDBX_BOT_RIGHT_X:CR_BNDBX_BOT_RIGHT_Y:CR_BNDBX_BOUNDING_BOX_ID:CR_BNDBX_PREDICT'
||'ED_TYPE_ID'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(64839834720114041)
,p_plug_name=>'COOK_RIGHT'
,p_icon_css_classes=>'app-icon'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(64719947080113892)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(64868529415114184)
,p_plug_name=>'Page Navigation'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(64704135128113884)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_source=>'<img src="#APP_IMAGES#cookright_png.png">'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.component_end;
end;
/
