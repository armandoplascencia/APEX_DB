prompt --application/shared_components/remote_servers/apex_oracle_com_pls_apex
begin
--   Manifest
--     REMOTE SERVER: apex-oracle-com-pls-apex
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>103
,p_default_id_offset=>0
,p_default_owner=>'MISO'
);
wwv_flow_api.create_remote_server(
 p_id=>wwv_flow_api.id(21485301391230403)
,p_name=>'apex-oracle-com-pls-apex'
,p_static_id=>'apex_oracle_com_pls_apex'
,p_base_url=>nvl(wwv_flow_application_install.get_remote_server_base_url('apex_oracle_com_pls_apex'),'https://apex.oracle.com/pls/apex/')
,p_https_host=>nvl(wwv_flow_application_install.get_remote_server_https_host('apex_oracle_com_pls_apex'),'')
,p_server_type=>'WEB_SERVICE'
,p_ords_timezone=>nvl(wwv_flow_application_install.get_remote_server_ords_tz('apex_oracle_com_pls_apex'),'')
,p_prompt_on_install=>false
);
wwv_flow_api.component_end;
end;
/
