prompt --application/pages/page_00006
begin
--   Manifest
--     PAGE: 00006
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
 p_id=>6
,p_user_interface_id=>wwv_flow_api.id(47345157114674058)
,p_name=>'get_WC_15'
,p_alias=>'GET-WC-15'
,p_step_title=>'get_WC_15'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'MISO'
,p_last_upd_yyyymmddhh24miss=>'20220106052942'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(77476061340268114)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(47255597458673980)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>'select * from dw_wc_parse_15_min_files'
,p_plug_source_type=>'PLUGIN_MULEDEV.PIVOT_REGION'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'my_pivot_div'
,p_attribute_02=>'RecordType,AreaCode, Store,'
,p_attribute_03=>'StartTime,EndTime, BusinessDate,Transactions,ShouldBeSales,NetSales,LaborMinutes,SOSTransactions,SOSTime,CLTTransactions'
,p_attribute_04=>'Y'
,p_attribute_05=>'Table'
,p_attribute_06=>'Y'
,p_attribute_07=>'Y'
);
wwv_flow_api.component_end;
end;
/
