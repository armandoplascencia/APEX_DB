prompt --application/shared_components/logic/application_items/fil_id
begin
--   Manifest
--     APPLICATION ITEM: FIL_ID
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>115
,p_default_id_offset=>358200981570066140
,p_default_owner=>'MISO'
);
wwv_flow_api.create_flow_item(
 p_id=>wwv_flow_api.id(188433883497999363)
,p_name=>'FIL_ID'
,p_protection_level=>'N'
,p_escape_on_http_output=>'N'
);
wwv_flow_api.component_end;
end;
/
