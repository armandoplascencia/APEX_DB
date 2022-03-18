prompt --application/pages/page_00001
begin
--   Manifest
--     PAGE: 00001
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>108
,p_default_id_offset=>0
,p_default_owner=>'MISO'
);
wwv_flow_api.create_page(
 p_id=>1
,p_user_interface_id=>wwv_flow_api.id(51387734917880156)
,p_name=>'Home'
,p_alias=>'HOME'
,p_step_title=>'pki_Kitchen'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'MISO'
,p_last_upd_yyyymmddhh24miss=>'20211229192431'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(51408249987880234)
,p_plug_name=>'pki_Kitchen'
,p_icon_css_classes=>'app-icon'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(51288385099880081)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(51715113549881816)
,p_plug_name=>'Page Navigation'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:u-colors:t-Cards--featured t-Cards--block force-fa-lg:t-Cards--displayIcons:t-Cards--4cols:t-Cards--hideBody:t-Cards--animColorFill'
,p_plug_template=>wwv_flow_api.id(51267179116880070)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_list_id=>wwv_flow_api.id(51712096130881813)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(51339017911880109)
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(76844244463378104)
,p_plug_name=>'Sample Model'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(51298148109880086)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<PRE>',
'https://gd49ef7d5e3cd2d-db202110212330.adb.us-phoenix-1.oraclecloudapps.com/ords/miso/syndata/svy_v_synd_PKI_SURVEY	svy_v_synd_PKI_SURVEY	PKI_SURVEY	PKI_SURVEY',
'curl --ssl-no-revoke --request "GET" "https://gd49ef7d5e3cd2d-db202110212330.adb.us-phoenix-1.oraclecloudapps.com/ords/miso/syndata/svy_v_synd_PKI_SURVEY" > svy_v_synd_PKI_SURVEY.json	svy_v_synd_PKI_SURVEY	PKI_SURVEY	PKI_SURVEY',
'',
'https://gd49ef7d5e3cd2d-db202110212330.adb.us-phoenix-1.oraclecloudapps.com/ords/miso/syndata/svy_v_synd_PKI_PORTION_SIZE	svy_v_synd_PKI_PORTION_SIZE	PKI_PORTION_SIZE	PKI_PORTION_SIZE',
'curl --ssl-no-revoke --request "GET" "https://gd49ef7d5e3cd2d-db202110212330.adb.us-phoenix-1.oraclecloudapps.com/ords/miso/syndata/svy_v_synd_PKI_PORTION_SIZE" > svy_v_synd_PKI_PORTION_SIZE.json	svy_v_synd_PKI_PORTION_SIZE	PKI_PORTION_SIZE	PKI_PORTI'
||'ON_SIZE',
'',
'https://gd49ef7d5e3cd2d-db202110212330.adb.us-phoenix-1.oraclecloudapps.com/ords/miso/syndata/svy_v_synd_PKI_COOKING_OIL	svy_v_synd_PKI_COOKING_OIL	PKI_COOKING_OIL	PKI_COOKING_OIL',
'curl --ssl-no-revoke --request "GET" "https://gd49ef7d5e3cd2d-db202110212330.adb.us-phoenix-1.oraclecloudapps.com/ords/miso/syndata/svy_v_synd_PKI_COOKING_OIL" > svy_v_synd_PKI_COOKING_OIL.json	svy_v_synd_PKI_COOKING_OIL	PKI_COOKING_OIL	PKI_COOKING_O'
||'IL',
'',
'https://gd49ef7d5e3cd2d-db202110212330.adb.us-phoenix-1.oraclecloudapps.com/ords/miso/syndata/svy_v_synd_PKI_RESTAURANT_SUPP	svy_v_synd_PKI_RESTAURANT_SUPP	PKI_RESTAURANT_SUPPLIER	PKI_RESTAURANT_SUPP',
'curl --ssl-no-revoke --request "GET" "https://gd49ef7d5e3cd2d-db202110212330.adb.us-phoenix-1.oraclecloudapps.com/ords/miso/syndata/svy_v_synd_PKI_RESTAURANT_SUPP" > svy_v_synd_PKI_RESTAURANT_SUPP.json	svy_v_synd_PKI_RESTAURANT_SUPP	PKI_RESTAURANT_SU'
||'PPLIER	PKI_RESTAURANT_SUPP',
'',
'https://gd49ef7d5e3cd2d-db202110212330.adb.us-phoenix-1.oraclecloudapps.com/ords/miso/syndata/svy_v_synd_PKI_PRODUCT	svy_v_synd_PKI_PRODUCT	PKI_PRODUCT	PKI_PRODUCT',
'curl --ssl-no-revoke --request "GET" "https://gd49ef7d5e3cd2d-db202110212330.adb.us-phoenix-1.oraclecloudapps.com/ords/miso/syndata/svy_v_synd_PKI_PRODUCT" > svy_v_synd_PKI_PRODUCT.json	svy_v_synd_PKI_PRODUCT	PKI_PRODUCT	PKI_PRODUCT',
'',
'https://gd49ef7d5e3cd2d-db202110212330.adb.us-phoenix-1.oraclecloudapps.com/ords/miso/syndata/svy_v_synd_PKI_FAHRENHEIT_CELS	svy_v_synd_PKI_FAHRENHEIT_CELS	PKI_FAHRENHEIT_CELSIUS_KELVIN	PKI_FAHRENHEIT_CELS',
'curl --ssl-no-revoke --request "GET" "https://gd49ef7d5e3cd2d-db202110212330.adb.us-phoenix-1.oraclecloudapps.com/ords/miso/syndata/svy_v_synd_PKI_FAHRENHEIT_CELS" > svy_v_synd_PKI_FAHRENHEIT_CELS.json	svy_v_synd_PKI_FAHRENHEIT_CELS	PKI_FAHRENHEIT_CE'
||'LSIUS_KELVIN	PKI_FAHRENHEIT_CELS',
'',
'https://gd49ef7d5e3cd2d-db202110212330.adb.us-phoenix-1.oraclecloudapps.com/ords/miso/syndata/svy_v_synd_PKI_FRYER	svy_v_synd_PKI_FRYER	PKI_FRYER	PKI_FRYER',
'curl --ssl-no-revoke --request "GET" "https://gd49ef7d5e3cd2d-db202110212330.adb.us-phoenix-1.oraclecloudapps.com/ords/miso/syndata/svy_v_synd_PKI_FRYER" > svy_v_synd_PKI_FRYER.json	svy_v_synd_PKI_FRYER	PKI_FRYER	PKI_FRYER',
'',
'https://gd49ef7d5e3cd2d-db202110212330.adb.us-phoenix-1.oraclecloudapps.com/ords/miso/syndata/svy_v_synd_PKI_COOK_TIMES	svy_v_synd_PKI_COOK_TIMES	PKI_COOK_TIMES	PKI_COOK_TIMES',
'curl --ssl-no-revoke --request "GET" "https://gd49ef7d5e3cd2d-db202110212330.adb.us-phoenix-1.oraclecloudapps.com/ords/miso/syndata/svy_v_synd_PKI_COOK_TIMES" > svy_v_synd_PKI_COOK_TIMES.json	svy_v_synd_PKI_COOK_TIMES	PKI_COOK_TIMES	PKI_COOK_TIMES',
'</PRE>',
'',
'#APP_IMAGES#kitchen_kpi.png',
'<pre> Quick Model  #APP_IMAGES#kitchen_kpi.png  </pre>',
'<img src="#APP_IMAGES#kitchen_kpi.png" alt="image">'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.component_end;
end;
/
