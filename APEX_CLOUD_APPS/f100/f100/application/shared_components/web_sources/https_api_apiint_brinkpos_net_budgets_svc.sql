prompt --application/shared_components/web_sources/https_api_apiint_brinkpos_net_budgets_svc
begin
--   Manifest
--     WEB SOURCE: https://api-apiint.brinkpos.net/budgets.svc
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>100
,p_default_id_offset=>0
,p_default_owner=>'MISO'
);
wwv_flow_api.create_web_source_module(
 p_id=>wwv_flow_api.id(46724304797424543)
,p_name=>'https://api-apiint.brinkpos.net/budgets.svc'
,p_static_id=>'https___api_apiint_brinkpos_net_budgets_svc'
,p_web_source_type=>'NATIVE_HTTP'
,p_data_profile_id=>wwv_flow_api.id(46722348830424535)
,p_remote_server_id=>wwv_flow_api.id(46722105485424533)
,p_url_path_prefix=>'/budgets.svc'
,p_credential_id=>wwv_flow_api.id(46721832200424532)
);
wwv_flow_api.create_web_source_param(
 p_id=>wwv_flow_api.id(46724907863424555)
,p_web_src_module_id=>wwv_flow_api.id(46724304797424543)
,p_name=>'AccessToken'
,p_param_type=>'HEADER'
,p_value=>'uj2TW2YVC0KxklRwBAfihg=='
,p_is_static=>true
);
wwv_flow_api.create_web_source_param(
 p_id=>wwv_flow_api.id(46725381464424560)
,p_web_src_module_id=>wwv_flow_api.id(46724304797424543)
,p_name=>'LocationToken'
,p_param_type=>'HEADER'
,p_value=>'***API LAB-01***'
,p_is_static=>true
);
wwv_flow_api.create_web_source_operation(
 p_id=>wwv_flow_api.id(46724552132424553)
,p_web_src_module_id=>wwv_flow_api.id(46724304797424543)
,p_operation=>'GET'
,p_database_operation=>'FETCH_COLLECTION'
,p_url_pattern=>'.'
,p_force_error_for_http_404=>false
,p_allow_fetch_all_rows=>false
);
wwv_flow_api.component_end;
end;
/
