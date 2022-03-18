prompt --application/shared_components/credentials/credentials_for_https_api_apiint_brinkpos_net_budgets_svc
begin
--   Manifest
--     CREDENTIAL: Credentials for https://api-apiint.brinkpos.net/budgets.svc
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>100
,p_default_id_offset=>0
,p_default_owner=>'MISO'
);
wwv_flow_api.create_credential(
 p_id=>wwv_flow_api.id(46721832200424532)
,p_name=>'Credentials for https://api-apiint.brinkpos.net/budgets.svc'
,p_static_id=>'Credentials_for_https___api_apiint_brinkpos_net_budgets_svc'
,p_authentication_type=>'HTTP_HEADER'
,p_valid_for_urls=>'https://api-apiint.brinkpos.net/'
,p_prompt_on_install=>true
);
wwv_flow_api.component_end;
end;
/
