prompt --application/pages/page_00008
begin
--   Manifest
--     PAGE: 00008
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>121
,p_default_id_offset=>0
,p_default_owner=>'MISO'
);
wwv_flow_api.create_page(
 p_id=>8
,p_user_interface_id=>wwv_flow_api.id(95153343667962421)
,p_name=>'Calendar'
,p_alias=>'CALENDAR'
,p_step_title=>'Calendar'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'MISO'
,p_last_upd_yyyymmddhh24miss=>'20220201223211'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(95317860674963017)
,p_plug_name=>'Calendar'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(95032749270962332)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'TABLE'
,p_query_table=>'ZENDESK_01012022_000000'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_CSS_CALENDAR'
,p_plug_query_num_rows=>15
,p_attribute_01=>'CREATED_AT'
,p_attribute_03=>'URL'
,p_attribute_07=>'N'
,p_attribute_09=>'list:navigation'
,p_attribute_11=>'month:week:day:list:navigation'
,p_attribute_13=>'N'
,p_attribute_17=>'Y'
,p_attribute_18=>'00'
,p_attribute_19=>'Y'
,p_attribute_20=>'9'
,p_attribute_21=>'10'
,p_attribute_22=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(95318354978963018)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(95073177747962355)
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(95006144045962302)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(95130284495962397)
);
wwv_flow_api.component_end;
end;
/
