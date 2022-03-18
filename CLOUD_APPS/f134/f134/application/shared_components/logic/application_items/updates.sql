prompt --application/shared_components/logic/application_items/updates
begin
--   Manifest
--     APPLICATION ITEM: UPDATES
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>134
,p_default_id_offset=>172493832712964115
,p_default_owner=>'MISO'
);
wwv_flow_api.create_flow_item(
 p_id=>wwv_flow_api.id(6816943786975272962)
,p_name=>'UPDATES'
,p_protection_level=>'I'
,p_escape_on_http_output=>'N'
);
wwv_flow_api.component_end;
end;
/
