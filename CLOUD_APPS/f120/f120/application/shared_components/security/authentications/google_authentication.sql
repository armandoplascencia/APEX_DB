prompt --application/shared_components/security/authentications/google_authentication
begin
--   Manifest
--     AUTHENTICATION: google authentication
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>120
,p_default_id_offset=>0
,p_default_owner=>'MISO'
);
wwv_flow_api.create_authentication(
 p_id=>wwv_flow_api.id(95959459914989026)
,p_name=>'google authentication'
,p_scheme_type=>'NATIVE_SOCIAL'
,p_attribute_01=>wwv_flow_api.id(95959086811964750)
,p_attribute_02=>'GOOGLE'
,p_attribute_07=>'profile,email'
,p_attribute_09=>'#sub# (#APEX_AUTH_NAME#)'
,p_attribute_10=>'email,name'
,p_attribute_11=>'N'
,p_attribute_13=>'Y'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
);
wwv_flow_api.component_end;
end;
/
