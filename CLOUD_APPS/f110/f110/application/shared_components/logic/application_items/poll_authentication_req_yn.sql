prompt --application/shared_components/logic/application_items/poll_authentication_req_yn
begin
--   Manifest
--     APPLICATION ITEM: POLL_AUTHENTICATION_REQ_YN
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>110
,p_default_id_offset=>101599614921830918
,p_default_owner=>'MISO'
);
wwv_flow_api.create_flow_item(
 p_id=>wwv_flow_api.id(14094309683445179125)
,p_name=>'POLL_AUTHENTICATION_REQ_YN'
,p_protection_level=>'I'
,p_escape_on_http_output=>'N'
);
wwv_flow_api.component_end;
end;
/
