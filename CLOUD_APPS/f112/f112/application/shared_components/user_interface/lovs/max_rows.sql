prompt --application/shared_components/user_interface/lovs/max_rows
begin
--   Manifest
--     MAX ROWS
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
 p_id=>wwv_flow_api.id(14964917898750120661)
,p_lov_name=>'MAX ROWS'
,p_lov_query=>'.'||wwv_flow_api.id(14964917898750120661)||'.'
,p_location=>'STATIC'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(14964918062379120663)
,p_lov_disp_sequence=>10
,p_lov_disp_value=>'20'
,p_lov_return_value=>'20'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(14964918400042120667)
,p_lov_disp_sequence=>20
,p_lov_disp_value=>'50'
,p_lov_return_value=>'50'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(14964918672190120667)
,p_lov_disp_sequence=>30
,p_lov_disp_value=>'100'
,p_lov_return_value=>'100'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(14964918992274120667)
,p_lov_disp_sequence=>40
,p_lov_disp_value=>'200'
,p_lov_return_value=>'200'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(14964919310773120667)
,p_lov_disp_sequence=>50
,p_lov_disp_value=>'500'
,p_lov_return_value=>'500'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(14964919571078120667)
,p_lov_disp_sequence=>60
,p_lov_disp_value=>'1000'
,p_lov_return_value=>'1000'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(14964919875340120667)
,p_lov_disp_sequence=>70
,p_lov_disp_value=>'All'
,p_lov_return_value=>'100000000'
);
wwv_flow_api.component_end;
end;
/
