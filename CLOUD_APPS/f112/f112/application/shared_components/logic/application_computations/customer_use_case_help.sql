prompt --application/shared_components/logic/application_computations/customer_use_case_help
begin
--   Manifest
--     APPLICATION COMPUTATION: CUSTOMER_USE_CASE_HELP
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>112
,p_default_id_offset=>101618418936909290
,p_default_owner=>'MISO'
);
wwv_flow_api.create_flow_computation(
 p_id=>wwv_flow_api.id(17226779366479754593)
,p_computation_sequence=>10
,p_computation_item=>'CUSTOMER_USE_CASE_HELP'
,p_computation_point=>'ON_NEW_INSTANCE'
,p_computation_type=>'EXPRESSION'
,p_computation_language=>'PLSQL'
,p_computation_processed=>'REPLACE_EXISTING'
,p_computation=>'htmldb_lang.message(''CONTACT_USE_CASE_HELP'');'
);
wwv_flow_api.component_end;
end;
/
