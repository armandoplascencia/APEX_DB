prompt --application/shared_components/remote_servers/app_datadoghq_com_api_v1_monitor
begin
--   Manifest
--     REMOTE SERVER: app-datadoghq-com-api-v1-monitor
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>121
,p_default_id_offset=>0
,p_default_owner=>'MISO'
);
wwv_flow_api.create_remote_server(
 p_id=>wwv_flow_api.id(96185049141253601)
,p_name=>'app-datadoghq-com-api-v1-monitor'
,p_static_id=>'app_datadoghq_com_api_v1_monitor'
,p_base_url=>nvl(wwv_flow_application_install.get_remote_server_base_url('app_datadoghq_com_api_v1_monitor'),'https://api.datadoghq.com/api/v1/monitor')
,p_https_host=>nvl(wwv_flow_application_install.get_remote_server_https_host('app_datadoghq_com_api_v1_monitor'),'')
,p_server_type=>'WEB_SERVICE'
,p_ords_timezone=>nvl(wwv_flow_application_install.get_remote_server_ords_tz('app_datadoghq_com_api_v1_monitor'),'')
,p_prompt_on_install=>true
,p_server_comment=>'( curl -X GET "https://api.datadoghq.com/api/v1/monitor/${ijk}" -H "Content-Type: application/json" -H "DD-API-KEY: 7d708b093319ed02d93adbb5bf694889" -H "DD-APPLICATION-KEY: 12a419878abd82a6790373d42576544f8d9d3650" ) > ${file_ts}__${ijk}__DD_monitor'
||'_items.json'
);
wwv_flow_api.component_end;
end;
/
