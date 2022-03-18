prompt --application/shared_components/security/authentications/collections_built_in_auth
begin
--   Manifest
--     AUTHENTICATION: Collections Built-In Auth
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>129
,p_default_id_offset=>101668256384016436
,p_default_owner=>'MISO'
);
wwv_flow_api.create_authentication(
 p_id=>wwv_flow_api.id(10624319252984848471)
,p_name=>'Collections Built-In Auth'
,p_scheme_type=>'NATIVE_APEX_ACCOUNTS'
,p_invalid_session_type=>'URL'
,p_invalid_session_url=>'f?p=&APP_ID.:101:&SESSION.'
,p_cookie_name=>'ORA_WWV_PACKAGED_APPLICATIONS'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
);
wwv_flow_api.component_end;
end;
/
