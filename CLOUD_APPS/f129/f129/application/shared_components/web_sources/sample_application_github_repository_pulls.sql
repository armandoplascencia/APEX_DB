prompt --application/shared_components/web_sources/sample_application_github_repository_pulls
begin
--   Manifest
--     WEB SOURCE: Sample Application - Github Repository Pulls
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>129
,p_default_id_offset=>101668256384016436
,p_default_owner=>'MISO'
);
wwv_flow_api.create_web_source_module(
 p_id=>wwv_flow_api.id(823593203780799348)
,p_name=>'Sample Application - Github Repository Pulls'
,p_static_id=>'Sample_Application_Github_Repository_Pulls'
,p_web_source_type=>'NATIVE_HTTP'
,p_data_profile_id=>wwv_flow_api.id(823480653172799217)
,p_remote_server_id=>wwv_flow_api.id(833467853127763239)
,p_url_path_prefix=>'repos/oracle/:repo/pulls'
);
wwv_flow_api.create_web_source_param(
 p_id=>wwv_flow_api.id(823593925311799349)
,p_web_src_module_id=>wwv_flow_api.id(823593203780799348)
,p_name=>'repo'
,p_param_type=>'URL_PATTERN'
,p_is_required=>false
,p_value=>'docker-images'
);
wwv_flow_api.create_web_source_operation(
 p_id=>wwv_flow_api.id(823593451017799349)
,p_web_src_module_id=>wwv_flow_api.id(823593203780799348)
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
