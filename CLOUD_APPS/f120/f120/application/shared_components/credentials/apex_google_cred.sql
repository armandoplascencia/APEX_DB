prompt --application/shared_components/credentials/apex_google_cred
begin
--   Manifest
--     CREDENTIAL: apex google cred
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>120
,p_default_id_offset=>0
,p_default_owner=>'MISO'
);
wwv_flow_api.create_credential(
 p_id=>wwv_flow_api.id(95959086811964750)
,p_name=>'apex google cred'
,p_static_id=>'apex_google_cred'
,p_authentication_type=>'OAUTH2_CLIENT_CREDENTIALS'
,p_prompt_on_install=>true
);
wwv_flow_api.component_end;
end;
/
