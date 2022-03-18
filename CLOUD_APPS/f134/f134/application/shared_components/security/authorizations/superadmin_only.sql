prompt --application/shared_components/security/authorizations/superadmin_only
begin
--   Manifest
--     SECURITY SCHEME: SUPERADMIN ONLY
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>134
,p_default_id_offset=>172493832712964115
,p_default_owner=>'MISO'
);
wwv_flow_api.create_security_scheme(
 p_id=>wwv_flow_api.id(17067500296549068444)
,p_name=>'SUPERADMIN ONLY'
,p_scheme_type=>'NATIVE_FUNCTION_BODY'
,p_attribute_01=>'return eba_proj_stat_ui.get_authorization_level(:APP_USER) >= 4;'
,p_error_message=>'Insufficient privileges, user is not a Super Administrator'
,p_caching=>'BY_USER_BY_SESSION'
);
wwv_flow_api.component_end;
end;
/
