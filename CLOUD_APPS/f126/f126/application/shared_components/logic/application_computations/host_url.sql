prompt --application/shared_components/logic/application_computations/host_url
begin
--   Manifest
--     APPLICATION COMPUTATION: HOST_URL
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>126
,p_default_id_offset=>101651461840938715
,p_default_owner=>'MISO'
);
wwv_flow_api.create_flow_computation(
 p_id=>wwv_flow_api.id(8108510849036481011)
,p_computation_sequence=>10
,p_computation_item=>'HOST_URL'
,p_computation_point=>'ON_NEW_INSTANCE'
,p_computation_type=>'EXPRESSION'
,p_computation_language=>'PLSQL'
,p_computation_processed=>'REPLACE_EXISTING'
,p_computation=>'wwv_flow_utilities.host_url(''SCRIPT'');'
);
wwv_flow_api.component_end;
end;
/
