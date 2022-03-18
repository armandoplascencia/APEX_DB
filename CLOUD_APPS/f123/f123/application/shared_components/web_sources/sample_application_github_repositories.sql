prompt --application/shared_components/web_sources/sample_application_github_repositories
begin
--   Manifest
--     WEB SOURCE: Sample Application - Github Repositories
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>123
,p_default_id_offset=>111717178695017138
,p_default_owner=>'MISO'
);
wwv_flow_api.create_web_source_module(
 p_id=>wwv_flow_api.id(833504622187763336)
,p_name=>'Sample Application - Github Repositories'
,p_static_id=>'Sample_Application_Github_Repositories'
,p_web_source_type=>'NATIVE_HTTP'
,p_data_profile_id=>wwv_flow_api.id(833468088871763239)
,p_remote_server_id=>wwv_flow_api.id(833467853127763239)
,p_url_path_prefix=>'users/oracle/repos'
);
wwv_flow_api.create_web_source_operation(
 p_id=>wwv_flow_api.id(833504848582763336)
,p_web_src_module_id=>wwv_flow_api.id(833504622187763336)
,p_operation=>'GET'
,p_database_operation=>'FETCH_COLLECTION'
,p_url_pattern=>'.'
,p_force_error_for_http_404=>false
,p_caching=>'ALL_USERS'
,p_invalidate_when=>'FREQ=DAILY;BYHOUR=0;BYMINUTE=0;BYSECOND=0'
);
wwv_flow_api.component_end;
end;
/
