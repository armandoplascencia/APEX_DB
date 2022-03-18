prompt --application/shared_components/remote_servers/sample_application_github_repositories
begin
--   Manifest
--     REMOTE SERVER: Sample Application - Github Repositories
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>123
,p_default_id_offset=>111717178695017138
,p_default_owner=>'MISO'
);
wwv_flow_api.create_remote_server(
 p_id=>wwv_flow_api.id(833467853127763239)
,p_name=>'Sample Application - Github Repositories'
,p_static_id=>'Sample_Application___Github_Repositories'
,p_base_url=>nvl(wwv_flow_application_install.get_remote_server_base_url('Sample_Application___Github_Repositories'),'https://api.github.com/')
,p_https_host=>nvl(wwv_flow_application_install.get_remote_server_https_host('Sample_Application___Github_Repositories'),'')
,p_server_type=>'WEB_SERVICE'
,p_ords_timezone=>nvl(wwv_flow_application_install.get_remote_server_ords_tz('Sample_Application___Github_Repositories'),'')
,p_prompt_on_install=>false
);
wwv_flow_api.component_end;
end;
/
