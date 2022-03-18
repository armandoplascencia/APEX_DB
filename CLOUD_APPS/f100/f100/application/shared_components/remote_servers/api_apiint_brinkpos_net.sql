prompt --application/shared_components/remote_servers/api_apiint_brinkpos_net
begin
--   Manifest
--     REMOTE SERVER: api-apiint-brinkpos-net
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>100
,p_default_id_offset=>0
,p_default_owner=>'MISO'
);
wwv_flow_api.create_remote_server(
 p_id=>wwv_flow_api.id(46722105485424533)
,p_name=>'api-apiint-brinkpos-net'
,p_static_id=>'api_apiint_brinkpos_net'
,p_base_url=>nvl(wwv_flow_application_install.get_remote_server_base_url('api_apiint_brinkpos_net'),'https://api-apiint.brinkpos.net/')
,p_https_host=>nvl(wwv_flow_application_install.get_remote_server_https_host('api_apiint_brinkpos_net'),'')
,p_server_type=>'WEB_SERVICE'
,p_ords_timezone=>nvl(wwv_flow_application_install.get_remote_server_ords_tz('api_apiint_brinkpos_net'),'')
,p_prompt_on_install=>false
);
wwv_flow_api.component_end;
end;
/
