prompt --application/pages/page_00009
begin
--   Manifest
--     PAGE: 00009
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>107
,p_default_id_offset=>0
,p_default_owner=>'MISO'
);
wwv_flow_api.create_page(
 p_id=>9
,p_user_interface_id=>wwv_flow_api.id(63894538847235817)
,p_name=>'DW_OPERATIONAL_METRIC'
,p_alias=>'DW-OPERATIONAL-METRIC'
,p_step_title=>'DW_OPERATIONAL_METRIC'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'APLASCENCIA'
,p_last_upd_yyyymmddhh24miss=>'20211119220255'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(64313049983935798)
,p_plug_name=>'DW_OPERATIONAL_METRIC'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(63803088663235738)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'TABLE'
,p_query_table=>'DW_OPERATIONAL_METRIC'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'DW_OPERATIONAL_METRIC'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(64313175275935798)
,p_name=>'DW_OPERATIONAL_METRIC'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLSX:PDF:RTF'
,p_owner=>'APLASCENCIA'
,p_internal_uid=>64313175275935798
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(64313573204935801)
,p_db_column_name=>'DW_MISO_PERIODS_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Dw Miso Periods Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(64313996274935802)
,p_db_column_name=>'DW_MISO_DATE_DIM_ID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Dw Miso Date Dim Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(64314391029935803)
,p_db_column_name=>'DW_MISO_TIME_HHMMSS_DIM_ID'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Dw Miso Time Hhmmss Dim Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(64314718619935803)
,p_db_column_name=>'DW_OPERATIONAL_METRIC_ID'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Dw Operational Metric Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(64315165729935803)
,p_db_column_name=>'DW_PRODUCT'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Dw Product'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(64315569890935803)
,p_db_column_name=>'DW_BRAND'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Dw Brand'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(64315986106935804)
,p_db_column_name=>'DW_LOCATION'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Dw Location'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(64316387312935804)
,p_db_column_name=>'DW_CUSTOMER'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Dw Customer'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(64316717626935804)
,p_db_column_name=>'DW_INTERNAL'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Dw Internal'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(64317132066935804)
,p_db_column_name=>'SALES_AMT'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Sales Amt'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(64317563071935805)
,p_db_column_name=>'SALES_AVG'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Sales Avg'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(64317967973942057)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'643180'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'DW_MISO_PERIODS_ID:DW_MISO_DATE_DIM_ID:DW_MISO_TIME_HHMMSS_DIM_ID:DW_OPERATIONAL_METRIC_ID:DW_PRODUCT:DW_BRAND:DW_LOCATION:DW_CUSTOMER:DW_INTERNAL:SALES_AMT:SALES_AVG'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(128911272876430717)
,p_plug_name=>'WALK There Database to Determine if you need parent keys added first.'
,p_region_name=>'walk_model'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(63803088663235738)
,p_plug_display_sequence=>999
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select * from full_walk_customer_RU_RD ',
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
,p_prn_page_header=>'WALK There Database to Determine if you need parent keys added first.'
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
 p_id=>wwv_flow_api.id(128911411872430718)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF:RTF:EMAIL'
,p_owner=>'APLASCENCIA'
,p_internal_uid=>128911411872430718
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(64522160451163782)
,p_db_column_name=>'FRANCHISE_NAME'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Franchise Name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(64522566589163782)
,p_db_column_name=>'REGION'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Region'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(64523780334163783)
,p_db_column_name=>'EXECUTIVE'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Executive'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(64524566873163784)
,p_db_column_name=>'ADDRESS_STREETADDRESS'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Address Streetaddress'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(64525372134163784)
,p_db_column_name=>'ZIPCODE_NAME'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Zipcode Name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(64567015505630947)
,p_db_column_name=>'DW_STORE_NAME'
,p_display_order=>150
,p_column_identifier=>'P'
,p_column_label=>'Dw Store Name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(64567150315630948)
,p_db_column_name=>'DW_STORE_DESCRIPTION'
,p_display_order=>160
,p_column_identifier=>'Q'
,p_column_label=>'Dw Store Description'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(64567230072630949)
,p_db_column_name=>'DW_STORE_ADDL_DETAILS'
,p_display_order=>170
,p_column_identifier=>'R'
,p_column_label=>'Dw Store Addl Details'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(64567307882630950)
,p_db_column_name=>'ADDRESS_TYPE_NAME'
,p_display_order=>180
,p_column_identifier=>'S'
,p_column_label=>'Address Type Name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(64619150626635001)
,p_db_column_name=>'ADDRESS_TYPE_DESC_OF'
,p_display_order=>190
,p_column_identifier=>'T'
,p_column_label=>'Address Type Desc Of'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(64619235904635002)
,p_db_column_name=>'ADDRESS_ZIPCODE_ID'
,p_display_order=>200
,p_column_identifier=>'U'
,p_column_label=>'Address Zipcode Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(64619382133635003)
,p_db_column_name=>'ZIPCODE_POPULATION'
,p_display_order=>210
,p_column_identifier=>'V'
,p_column_label=>'Zipcode Population'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(64619484231635004)
,p_db_column_name=>'STATE_NAME'
,p_display_order=>220
,p_column_identifier=>'W'
,p_column_label=>'State Name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(64619505628635005)
,p_db_column_name=>'CITY_NAME'
,p_display_order=>230
,p_column_identifier=>'X'
,p_column_label=>'City Name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(64619668786635006)
,p_db_column_name=>'DW_EXEC_DESCRIPTION'
,p_display_order=>240
,p_column_identifier=>'Y'
,p_column_label=>'Dw Exec Description'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(64619721035635007)
,p_db_column_name=>'CUST_L4_POSITION'
,p_display_order=>250
,p_column_identifier=>'Z'
,p_column_label=>'Cust L4 Position'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(64619808967635008)
,p_db_column_name=>'CUST_L3_STORE'
,p_display_order=>260
,p_column_identifier=>'AA'
,p_column_label=>'Cust L3 Store'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(64619926657635009)
,p_db_column_name=>'CUST_L2_FRANCHISE'
,p_display_order=>270
,p_column_identifier=>'AB'
,p_column_label=>'Cust L2 Franchise'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(64620035798635010)
,p_db_column_name=>'CUST_L1_REGIONAL'
,p_display_order=>280
,p_column_identifier=>'AC'
,p_column_label=>'Cust L1 Regional'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(64620110877635011)
,p_db_column_name=>'CUST_L0_EXEC'
,p_display_order=>290
,p_column_identifier=>'AD'
,p_column_label=>'Cust L0 Exec'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(64620216594635012)
,p_db_column_name=>'STORE_POSITION'
,p_display_order=>300
,p_column_identifier=>'AE'
,p_column_label=>'Store Position'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(64620357972635013)
,p_db_column_name=>'STORE_POS_DESCRIPTION_1'
,p_display_order=>310
,p_column_identifier=>'AF'
,p_column_label=>'Store Pos Description 1'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(64620407440635014)
,p_db_column_name=>'DW_REGION_DESCRIPTION_2'
,p_display_order=>320
,p_column_identifier=>'AG'
,p_column_label=>'Dw Region Description 2'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(129006138332223833)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'644863'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'FRANCHISE_NAME:REGION:EXECUTIVE:ADDRESS_STREETADDRESS:ZIPCODE_NAME:DW_STORE_NAME:DW_STORE_DESCRIPTION:DW_STORE_ADDL_DETAILS:ADDRESS_TYPE_NAME:ADDRESS_TYPE_DESC_OF:ADDRESS_ZIPCODE_ID:ZIPCODE_POPULATION:STATE_NAME:CITY_NAME:DW_EXEC_DESCRIPTION:CUST_L4_'
||'POSITION:CUST_L3_STORE:CUST_L2_FRANCHISE:CUST_L1_REGIONAL:CUST_L0_EXEC:STORE_POSITION:STORE_POS_DESCRIPTION_1:DW_REGION_DESCRIPTION_2'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(128996514636223184)
,p_plug_name=>'SQL THAT CREATED THE RPT'
,p_region_name=>'SQLofmodel'
,p_parent_plug_id=>wwv_flow_api.id(128911272876430717)
,p_region_template_options=>'#DEFAULT#:js-useLocalStorage:is-expanded:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(63790019458235732)
,p_plug_display_sequence=>110
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<PRE>',
'select distinct',
'       DW_STORE.ID                 as PK_STORE_HIERARCHY,',
'       DW_STORE.STORE_NAME         as STORE_NAME,',
'       DW_STORE.ADDRESS_ID         as STORE_ADDRESS_ID,',
'       DW_STORE.DESCRIPTION        as STORE_DESCRIPTION,',
'       DW_STORE.ADDL_DETAILS       as STORE_ADDL_DETAILS,',
'       DW_FRANCHISE.FRANCHISE_NAME as FRANCHISE_NAME,',
'       DW_REGION.REGION            as REGION,',
'       DW_REGION.DESCRIPTION       as REGION_DESCRIPTION,',
'       DW_REGION.INFORMATIONAL_STATES as REGION_INFORMATIONAL_STATES,',
'       DW_EXECUTIVE.EXECUTIVE         as EXECUTIVE,',
'       DW_EXECUTIVE.DESCRIPTION       as EXECUTIVE_DESCRIPTION,',
'       ADDRESS.STREETADDRESS          as ADDRESS_STREETADDRESS,',
'       ADDRESS.ADDRESS_TYPE           as ADDRESS_TYPE,',
'       ZIPCODE.NAME                   as ZIPCODE_NAME,',
'       ZIPCODE.ZIPCODE_NUMBER         as ZIPCODE_NUMBER ',
' from ZIPCODE           ZIPCODE,',
'      ADDRESS           ADDRESS,',
'      DW_EXECUTIVE      DW_EXECUTIVE,',
'      DW_REGION         DW_REGION,',
'      DW_STORE_POSITION DW_STORE_POSITION,',
'      DW_STORE          DW_STORE,',
'      DW_FRANCHISE      DW_FRANCHISE  ',
' where  DW_STORE.DW_FRANCHISE_ID  = DW_FRANCHISE.ID (+)',
'    and DW_FRANCHISE.DW_REGION_ID = DW_REGION.ID (+)',
'    and DW_REGION.DW_EXECUTIVE_ID = DW_EXECUTIVE.ID (+)',
'    and DW_STORE.ADDRESS_ID       = ADDRESS.ID (+)',
'    and ADDRESS.ZIPCODE_ID        = ZIPCODE.ID (+)',
'</PRE>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(193384559616237512)
,p_plug_name=>'Quick Model'
,p_region_name=>'quick_model'
,p_parent_plug_id=>wwv_flow_api.id(128911272876430717)
,p_region_template_options=>'#DEFAULT#:js-useLocalStorage:is-expanded:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(63790019458235732)
,p_plug_display_sequence=>100
,p_plug_display_point=>'BODY'
,p_plug_source=>'<img src="#APP_IMAGES#lastest_dw2_1118.png">'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.component_end;
end;
/
