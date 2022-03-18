prompt --application/shared_components/user_interface/lovs/more_or_minor_or_all
begin
--   Manifest
--     MORE OR MINOR OR ALL
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>134
,p_default_id_offset=>172493832712964115
,p_default_owner=>'MISO'
);
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(7724138956424227820)
,p_lov_name=>'MORE OR MINOR OR ALL'
,p_lov_query=>'.'||wwv_flow_api.id(7724138956424227820)||'.'
,p_location=>'STATIC'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(7724139171929227834)
,p_lov_disp_sequence=>10
,p_lov_disp_value=>'None'
,p_lov_return_value=>'none'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(7724139571363227840)
,p_lov_disp_sequence=>20
,p_lov_disp_value=>'Major'
,p_lov_return_value=>'major'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(7724139943650227841)
,p_lov_disp_sequence=>30
,p_lov_disp_value=>'All'
,p_lov_return_value=>'all'
);
wwv_flow_api.component_end;
end;
/
