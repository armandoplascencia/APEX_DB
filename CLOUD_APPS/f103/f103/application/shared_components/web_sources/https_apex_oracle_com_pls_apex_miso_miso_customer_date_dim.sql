prompt --application/shared_components/web_sources/https_apex_oracle_com_pls_apex_miso_miso_customer_date_dim
begin
--   Manifest
--     WEB SOURCE: https://apex.oracle.com/pls/apex/miso/miso_customer_date_dim/
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>103
,p_default_id_offset=>0
,p_default_owner=>'MISO'
);
wwv_flow_api.create_web_source_module(
 p_id=>wwv_flow_api.id(21491464718230416)
,p_name=>'https://apex.oracle.com/pls/apex/miso/miso_customer_date_dim/'
,p_static_id=>'https___apex_oracle_com_pls_apex_miso_miso_customer_date_dim_'
,p_web_source_type=>'NATIVE_ORDS'
,p_data_profile_id=>wwv_flow_api.id(21485599892230408)
,p_remote_server_id=>wwv_flow_api.id(21485301391230403)
,p_url_path_prefix=>'/miso/miso_customer_date_dim/'
,p_sync_is_active=>true
,p_sync_table_owner=>'MISO'
,p_sync_table_name=>'MISO_DATE_DIM'
,p_sync_type=>'APPEND'
,p_sync_interval=>'FREQ=WEEKLY;INTERVAL=1;BYDAY=MON;BYHOUR=0;BYMINUTE=0;BYSECOND=0'
,p_sync_max_http_requests=>1000
,p_attribute_01=>'N'
);
wwv_flow_api.create_web_source_operation(
 p_id=>wwv_flow_api.id(21491663502230422)
,p_web_src_module_id=>wwv_flow_api.id(21491464718230416)
,p_operation=>'GET'
,p_database_operation=>'FETCH_COLLECTION'
,p_url_pattern=>'.'
,p_force_error_for_http_404=>false
,p_allow_fetch_all_rows=>false
);
wwv_flow_api.create_web_source_operation(
 p_id=>wwv_flow_api.id(21492092764230424)
,p_web_src_module_id=>wwv_flow_api.id(21491464718230416)
,p_operation=>'POST'
,p_database_operation=>'INSERT'
,p_url_pattern=>'.'
,p_allow_fetch_all_rows=>false
);
wwv_flow_api.component_end;
end;
/
