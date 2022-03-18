prompt --application/shared_components/user_interface/lovs/data_load_tab_status
begin
--   Manifest
--     DATA_LOAD_TAB_STATUS
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>112
,p_default_id_offset=>101618418936909290
,p_default_owner=>'MISO'
);
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(17903568617731094391)
,p_lov_name=>'DATA_LOAD_TAB_STATUS'
,p_lov_query=>'.'||wwv_flow_api.id(17903568617731094391)||'.'
,p_location=>'STATIC'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(17903568826913094398)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Enable'
,p_lov_return_value=>'ENABLE'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(17903569013163094404)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Disable'
,p_lov_return_value=>'DISABLE'
);
wwv_flow_api.component_end;
end;
/
