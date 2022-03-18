prompt --application/shared_components/logic/application_items/get_id
begin
--   Manifest
--     APPLICATION ITEM: GET_ID
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>112
,p_default_id_offset=>101618418936909290
,p_default_owner=>'MISO'
);
wwv_flow_api.create_flow_item(
 p_id=>wwv_flow_api.id(15131347330339117812)
,p_name=>'GET_ID'
,p_protection_level=>'N'
,p_escape_on_http_output=>'N'
,p_item_comment=>'This is a generic item used to fetch things via ajax. Used for fetching image for customer Logos.'
);
wwv_flow_api.component_end;
end;
/
