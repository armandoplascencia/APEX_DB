prompt --application/shared_components/logic/application_items/fsp_after_login_url
begin
--   Manifest
--     APPLICATION ITEM: FSP_AFTER_LOGIN_URL
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>129
,p_default_id_offset=>101668256384016436
,p_default_owner=>'MISO'
);
wwv_flow_api.create_flow_item(
 p_id=>wwv_flow_api.id(10622076609863678646)
,p_name=>'FSP_AFTER_LOGIN_URL'
,p_escape_on_http_output=>'N'
);
wwv_flow_api.component_end;
end;
/
