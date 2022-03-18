prompt --application/shared_components/user_interface/lovs/access_control_scope1
begin
--   Manifest
--     ACCESS CONTROL SCOPE1
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>110
,p_default_id_offset=>101599614921830918
,p_default_owner=>'MISO'
);
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(7265468430639302882)
,p_lov_name=>'ACCESS CONTROL SCOPE1'
,p_lov_query=>'.'||wwv_flow_api.id(7265468430639302882)||'.'
,p_location=>'STATIC'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(7265468806819302884)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Readers'
,p_lov_return_value=>'PUBLIC_READONLY'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(7265469152113302885)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Contributors'
,p_lov_return_value=>'PUBLIC_CONTRIBUTE'
);
wwv_flow_api.component_end;
end;
/
