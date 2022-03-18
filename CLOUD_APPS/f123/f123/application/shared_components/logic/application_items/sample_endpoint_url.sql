prompt --application/shared_components/logic/application_items/sample_endpoint_url
begin
--   Manifest
--     APPLICATION ITEM: SAMPLE_ENDPOINT_URL
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>123
,p_default_id_offset=>111717178695017138
,p_default_owner=>'MISO'
);
wwv_flow_api.create_flow_item(
 p_id=>wwv_flow_api.id(1929948550164180556)
,p_name=>'SAMPLE_ENDPOINT_URL'
,p_protection_level=>'I'
,p_escape_on_http_output=>'N'
);
wwv_flow_api.component_end;
end;
/
