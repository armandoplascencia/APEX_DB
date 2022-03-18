prompt --application/pages/page_00001
begin
--   Manifest
--     PAGE: 00001
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>123
,p_default_id_offset=>111717178695017138
,p_default_owner=>'MISO'
);
wwv_flow_api.create_page(
 p_id=>1
,p_user_interface_id=>wwv_flow_api.id(3048806881237990347)
,p_name=>'Example REST Application'
,p_alias=>'EXAMPLE-REST-APPLICATION'
,p_step_title=>'Example REST Application'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'ALLAN'
,p_last_upd_yyyymmddhh24miss=>'20210301103321'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(171346282691460922)
,p_plug_name=>'Home Page Menu'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader:t-Region--noUI:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:u-colors:t-Cards--featured force-fa-lg:t-Cards--displayIcons:t-Cards--3cols:t-Cards--animColorFill'
,p_plug_template=>wwv_flow_api.id(3702276865524415473)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_list_id=>wwv_flow_api.id(172039945018655361)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(3702291599881415522)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1870946205097328478)
,p_plug_name=>'&APP_NAME.'
,p_icon_css_classes=>'app-sample-restful-services'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(3702272350470415460)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_source=>'Access and use external REST services in your Applications.'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(3743848110890599935)
,p_plug_name=>'About this Page'
,p_region_template_options=>'#DEFAULT#:margin-bottom-md'
,p_plug_template=>wwv_flow_api.id(3702266226375415449)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'This application showcases how to access external REST services from Oracle Application Express pages. Particular focus is on the new REST service capabilities in Application Express 18.1 and higher. The <strong>Oracle on Github</strong> page illustr'
||'ates how to declaratively create Application Express components like reports, charts or calendars based on REST services.</p>',
'<p>The <strong>Web Sources and PL/SQL</strong> page shows how declarative Web Sources can be used from within PL/SQL code. That provides great flexibility when working with the data, without having to care for the details of JSON response parsing - A'
||'pplication Express is still responsible for that.',
'</p>',
'<p>',
' It is recommended to first test the URL endpoint used by this application. Go to <strong>Administration</strong> &gt; <strong>Test Service Endpoint</strong> to do this. After a successful test, the REST service demonstration pages can be explored.</'
||'p>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.component_end;
end;
/
