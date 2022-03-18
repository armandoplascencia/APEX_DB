prompt --application/shared_components/security/authorizations/not_all_endpoints_successfully_tested
begin
--   Manifest
--     SECURITY SCHEME: Not all Endpoints Successfully tested
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>129
,p_default_id_offset=>101668256384016436
,p_default_owner=>'MISO'
);
wwv_flow_api.create_security_scheme(
 p_id=>wwv_flow_api.id(162149133081190316)
,p_name=>'Not all Endpoints Successfully tested'
,p_scheme_type=>'NATIVE_EXISTS'
,p_attribute_01=>'select 1 from eba_restdemo_sample_urls where last_status is null or last_status !=''OK'''
,p_error_message=>'Not all REST endpoints successfully tested.'
,p_caching=>'BY_USER_BY_SESSION'
);
wwv_flow_api.component_end;
end;
/
