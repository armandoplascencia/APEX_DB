prompt --application/shared_components/web_sources/https_api_datadoghq_com_api_v1_monitor_62374516
begin
--   Manifest
--     WEB SOURCE: https://api.datadoghq.com/api/v1/monitor/62374516
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>121
,p_default_id_offset=>0
,p_default_owner=>'MISO'
);
wwv_flow_api.create_web_source_module(
 p_id=>wwv_flow_api.id(96303704800463274)
,p_name=>'https://api.datadoghq.com/api/v1/monitor/62374516'
,p_static_id=>'https___api_datadoghq_com_api_v1_monitor_62374516'
,p_web_source_type=>'NATIVE_HTTP'
,p_data_profile_id=>wwv_flow_api.id(96293935746463266)
,p_remote_server_id=>wwv_flow_api.id(96185049141253601)
,p_url_path_prefix=>'/62374516'
,p_sync_is_active=>true
,p_sync_table_owner=>'MISO'
,p_sync_table_name=>'DD_MONITOR_WC42_62374516'
,p_sync_type=>'APPEND'
,p_sync_interval=>'FREQ=MINUTELY;INTERVAL=10;BYSECOND=0'
,p_sync_max_http_requests=>1000
);
wwv_flow_api.create_web_source_param(
 p_id=>wwv_flow_api.id(96304340858463277)
,p_web_src_module_id=>wwv_flow_api.id(96303704800463274)
,p_name=>'Content-Type'
,p_param_type=>'HEADER'
,p_is_required=>false
,p_value=>'application/json'
,p_is_static=>true
);
wwv_flow_api.create_web_source_param(
 p_id=>wwv_flow_api.id(96304777237463277)
,p_web_src_module_id=>wwv_flow_api.id(96303704800463274)
,p_name=>'DD-API-KEY'
,p_param_type=>'HEADER'
,p_is_required=>false
,p_value=>'7d708b093319ed02d93adbb5bf694889'
);
wwv_flow_api.create_web_source_param(
 p_id=>wwv_flow_api.id(96305144321463278)
,p_web_src_module_id=>wwv_flow_api.id(96303704800463274)
,p_name=>'DD-APPLICATION-KEY'
,p_param_type=>'HEADER'
,p_is_required=>false
,p_value=>'12a419878abd82a6790373d42576544f8d9d3650'
);
wwv_flow_api.create_web_source_operation(
 p_id=>wwv_flow_api.id(96303930904463276)
,p_web_src_module_id=>wwv_flow_api.id(96303704800463274)
,p_operation=>'GET'
,p_database_operation=>'FETCH_COLLECTION'
,p_url_pattern=>'.'
,p_force_error_for_http_404=>false
,p_allow_fetch_all_rows=>false
);
wwv_flow_api.component_end;
end;
/
