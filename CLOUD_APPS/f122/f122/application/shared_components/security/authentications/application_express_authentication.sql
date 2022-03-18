prompt --application/shared_components/security/authentications/application_express_authentication
begin
--   Manifest
--     AUTHENTICATION: Application Express Authentication
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>122
,p_default_id_offset=>95867510745092563
,p_default_owner=>'MISO'
);
wwv_flow_api.create_authentication(
 p_id=>wwv_flow_api.id(123593189015158043)
,p_name=>'Application Express Authentication'
,p_scheme_type=>'NATIVE_APEX_ACCOUNTS'
,p_invalid_session_type=>'LOGIN'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
);
wwv_flow_api.component_end;
end;
/
