prompt --application/shared_components/user_interface/lovs/logo_sizes
begin
--   Manifest
--     LOGO SIZES
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
 p_id=>wwv_flow_api.id(15144238896538155541)
,p_lov_name=>'LOGO SIZES'
,p_lov_query=>'.'||wwv_flow_api.id(15144238896538155541)||'.'
,p_location=>'STATIC'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(15144239192732155543)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Small'
,p_lov_return_value=>'S'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(15144239595460155544)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Medium'
,p_lov_return_value=>'M'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(15144240040920155545)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Large'
,p_lov_return_value=>'L'
);
wwv_flow_api.component_end;
end;
/
