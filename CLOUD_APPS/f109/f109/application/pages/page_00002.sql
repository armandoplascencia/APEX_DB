prompt --application/pages/page_00002
begin
--   Manifest
--     PAGE: 00002
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
 p_id=>2
,p_user_interface_id=>wwv_flow_api.id(64824702076113970)
,p_name=>'FC'
,p_alias=>'FC'
,p_step_title=>'FC'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_api.id(64678371797113859)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'APLASCENCIA'
,p_last_upd_yyyymmddhh24miss=>'20211120045759'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(64841110289114044)
,p_name=>'Cr V Rest Cam Frame Bboxes'
,p_template=>wwv_flow_api.id(64735194353113900)
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--staticRowColors:t-Report--rowHighlight:t-Report--inline:t-Report--hideNoPagination'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct ',
'      CR_REST_ZIP,',
'       CR_REST_CITY,',
'       CR_REST_NAME,',
'       CR_REST_UUID,',
'       CR_REST_STATE,',
'       CR_REST_COUNTRY,',
'       CR_REST_ADDRESS1,',
'       CR_REST_CREATED,',
'       CR_REST_ADDRESS2,',
'       CR_REST_TIME_ZONE,',
'       CR_CAM_NAME,',
'       CR_CAM_SERIAL,',
'       CR_CAM_CREATED,',
'       CR_CAM_DESCRIPTION,',
'       CR_CAM_RESTAURANT_ID,',
'       CR_CAM_EXTRINSIC_YAML,',
'       CR_CAMI_NTRINSIC_YAML,',
'       CR_FRAM_FRAME_ID,',
'       CR_FRAM_CAMERA_ID,',
'       CR_FRAM_IMAGE_URI,',
'       CR_FRAM_ELAPSED_MS,',
'       CR_BNDBX_ID,',
'       CR_BNDBX_CREATED_1,',
'       CR_BNDBX_TOP_LEFT_X,',
'       CR_BNDBX_TOP_LEFT_Y,',
'       CR_BNDBX_BOT_RIGHT_X,',
'       CR_BNDBX_BOT_RIGHT_Y,',
'       CR_BNDBX_BOUNDING_BOX_ID,',
'       CR_BNDBX_PREDICTED_TYPE_ID',
'  from CR_V_REST_CAM_FRAME_BBOX'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(64758822154113913)
,p_query_num_rows=>50
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'ROWS_X_TO_Y'
,p_query_row_count_max=>100000
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_prn_output=>'N'
,p_prn_format=>'PDF'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64843031864114147)
,p_query_column_id=>1
,p_column_alias=>'CR_REST_ZIP'
,p_column_display_sequence=>1
,p_column_heading=>'Cr Rest Zip'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64843452760114148)
,p_query_column_id=>2
,p_column_alias=>'CR_REST_CITY'
,p_column_display_sequence=>2
,p_column_heading=>'Cr Rest City'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64843897319114148)
,p_query_column_id=>3
,p_column_alias=>'CR_REST_NAME'
,p_column_display_sequence=>3
,p_column_heading=>'Cr Rest Name'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64844282874114149)
,p_query_column_id=>4
,p_column_alias=>'CR_REST_UUID'
,p_column_display_sequence=>4
,p_column_heading=>'Cr Rest Uuid'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64844642793114149)
,p_query_column_id=>5
,p_column_alias=>'CR_REST_STATE'
,p_column_display_sequence=>5
,p_column_heading=>'Cr Rest State'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64845062407114149)
,p_query_column_id=>6
,p_column_alias=>'CR_REST_COUNTRY'
,p_column_display_sequence=>6
,p_column_heading=>'Cr Rest Country'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64845486151114149)
,p_query_column_id=>7
,p_column_alias=>'CR_REST_ADDRESS1'
,p_column_display_sequence=>7
,p_column_heading=>'Cr Rest Address1'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64845894547114150)
,p_query_column_id=>8
,p_column_alias=>'CR_REST_CREATED'
,p_column_display_sequence=>8
,p_column_heading=>'Cr Rest Created'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64846254436114150)
,p_query_column_id=>9
,p_column_alias=>'CR_REST_ADDRESS2'
,p_column_display_sequence=>9
,p_column_heading=>'Cr Rest Address2'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64846682529114150)
,p_query_column_id=>10
,p_column_alias=>'CR_REST_TIME_ZONE'
,p_column_display_sequence=>10
,p_column_heading=>'Cr Rest Time Zone'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64847091038114150)
,p_query_column_id=>11
,p_column_alias=>'CR_CAM_NAME'
,p_column_display_sequence=>11
,p_column_heading=>'Cr Cam Name'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64847444372114151)
,p_query_column_id=>12
,p_column_alias=>'CR_CAM_SERIAL'
,p_column_display_sequence=>12
,p_column_heading=>'Cr Cam Serial'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64847839326114151)
,p_query_column_id=>13
,p_column_alias=>'CR_CAM_CREATED'
,p_column_display_sequence=>13
,p_column_heading=>'Cr Cam Created'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64848244192114151)
,p_query_column_id=>14
,p_column_alias=>'CR_CAM_DESCRIPTION'
,p_column_display_sequence=>14
,p_column_heading=>'Cr Cam Description'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64848688686114152)
,p_query_column_id=>15
,p_column_alias=>'CR_CAM_RESTAURANT_ID'
,p_column_display_sequence=>15
,p_column_heading=>'Cr Cam Restaurant ID'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64849009507114152)
,p_query_column_id=>16
,p_column_alias=>'CR_CAM_EXTRINSIC_YAML'
,p_column_display_sequence=>16
,p_column_heading=>'Cr Cam Extrinsic Yaml'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64849473207114152)
,p_query_column_id=>17
,p_column_alias=>'CR_CAMI_NTRINSIC_YAML'
,p_column_display_sequence=>17
,p_column_heading=>'Cr Cami Ntrinsic Yaml'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64849888135114152)
,p_query_column_id=>18
,p_column_alias=>'CR_FRAM_FRAME_ID'
,p_column_display_sequence=>18
,p_column_heading=>'Cr Fram Frame ID'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64850297237114153)
,p_query_column_id=>19
,p_column_alias=>'CR_FRAM_CAMERA_ID'
,p_column_display_sequence=>19
,p_column_heading=>'Cr Fram Camera ID'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64850611538114153)
,p_query_column_id=>20
,p_column_alias=>'CR_FRAM_IMAGE_URI'
,p_column_display_sequence=>20
,p_column_heading=>'Cr Fram Image Uri'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64851079537114153)
,p_query_column_id=>21
,p_column_alias=>'CR_FRAM_ELAPSED_MS'
,p_column_display_sequence=>21
,p_column_heading=>'Cr Fram Elapsed Ms'
,p_column_format=>'99G999G999G999G999G999G999G999G999G999G990'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64851455762114153)
,p_query_column_id=>22
,p_column_alias=>'CR_BNDBX_ID'
,p_column_display_sequence=>22
,p_column_heading=>'Cr Bndbx ID'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64851890219114153)
,p_query_column_id=>23
,p_column_alias=>'CR_BNDBX_CREATED_1'
,p_column_display_sequence=>23
,p_column_heading=>'Cr Bndbx Created 1'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64852286361114154)
,p_query_column_id=>24
,p_column_alias=>'CR_BNDBX_TOP_LEFT_X'
,p_column_display_sequence=>24
,p_column_heading=>'Cr Bndbx Top Left X'
,p_column_format=>'99G999G999G999G999G999G999G999G999G999G990'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64852649729114154)
,p_query_column_id=>25
,p_column_alias=>'CR_BNDBX_TOP_LEFT_Y'
,p_column_display_sequence=>25
,p_column_heading=>'Cr Bndbx Top Left Y'
,p_column_format=>'99G999G999G999G999G999G999G999G999G999G990'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64853030291114154)
,p_query_column_id=>26
,p_column_alias=>'CR_BNDBX_BOT_RIGHT_X'
,p_column_display_sequence=>26
,p_column_heading=>'Cr Bndbx Bot Right X'
,p_column_format=>'99G999G999G999G999G999G999G999G999G999G990'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64853435413114154)
,p_query_column_id=>27
,p_column_alias=>'CR_BNDBX_BOT_RIGHT_Y'
,p_column_display_sequence=>27
,p_column_heading=>'Cr Bndbx Bot Right Y'
,p_column_format=>'99G999G999G999G999G999G999G999G999G999G990'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64853894953114155)
,p_query_column_id=>28
,p_column_alias=>'CR_BNDBX_BOUNDING_BOX_ID'
,p_column_display_sequence=>28
,p_column_heading=>'Cr Bndbx Bounding Box ID'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64854251321114155)
,p_query_column_id=>29
,p_column_alias=>'CR_BNDBX_PREDICTED_TYPE_ID'
,p_column_display_sequence=>29
,p_column_heading=>'Cr Bndbx Predicted Type ID'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(64841258531114044)
,p_plug_name=>'Search'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(64735194353113900)
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>4
,p_plug_display_point=>'REGION_POSITION_02'
,p_plug_source_type=>'NATIVE_FACETED_SEARCH'
,p_filtered_region_id=>wwv_flow_api.id(64841110289114044)
,p_attribute_01=>'N'
,p_attribute_06=>'E'
,p_attribute_07=>'Y'
,p_attribute_08=>'#active_facets'
,p_attribute_09=>'Y'
,p_attribute_12=>'10000'
,p_attribute_13=>'Y'
,p_attribute_15=>'10'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(64842015509114046)
,p_plug_name=>'Button Bar'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--noPadding:t-ButtonRegion--noUI'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(64728640456113896)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>'<div id="active_facets"></div>'
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(64854751614114157)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(64744509095113904)
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(64677551353113855)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(64801657283113942)
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(64842534703114046)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(64842015509114046)
,p_button_name=>'RESET'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(64800315016113941)
,p_button_image_alt=>'Reset'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:RR,2::'
,p_icon_css_classes=>'fa-undo'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(64841779797114045)
,p_name=>'P2_SEARCH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(64841258531114044)
,p_prompt=>'Search'
,p_source=>'CR_REST_ZIP,CR_REST_CITY,CR_REST_NAME,CR_REST_UUID,CR_REST_STATE,CR_REST_COUNTRY,CR_REST_ADDRESS1,CR_REST_ADDRESS2,CR_REST_TIME_ZONE,CR_CAM_NAME,CR_CAM_SERIAL,CR_CAM_DESCRIPTION,CR_CAM_EXTRINSIC_YAML,CR_CAMI_NTRINSIC_YAML,CR_FRAM_IMAGE_URI,CR_BNDBX_B'
||'OUNDING_BOX_ID'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_SEARCH'
,p_attribute_01=>'ROW'
,p_attribute_02=>'FACET'
,p_fc_collapsible=>true
,p_fc_initial_collapsed=>false
,p_fc_show_chart=>false
);
wwv_flow_api.component_end;
end;
/
