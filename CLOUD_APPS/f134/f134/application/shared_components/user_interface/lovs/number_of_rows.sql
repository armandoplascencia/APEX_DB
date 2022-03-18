prompt --application/shared_components/user_interface/lovs/number_of_rows
begin
--   Manifest
--     NUMBER OF ROWS
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
 p_id=>wwv_flow_api.id(6946138101745024023)
,p_lov_name=>'NUMBER OF ROWS'
,p_lov_query=>'.'||wwv_flow_api.id(6946138101745024023)||'.'
,p_location=>'STATIC'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(6946138394215024024)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'5'
,p_lov_return_value=>'5'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(6946138608859024025)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'10'
,p_lov_return_value=>'10'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(6946138781784024025)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'20'
,p_lov_return_value=>'20'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(6835720420249140150)
,p_lov_disp_sequence=>3.5
,p_lov_disp_value=>'30'
,p_lov_return_value=>'30'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(6946138991780024025)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'50'
,p_lov_return_value=>'50'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(6946139195467024025)
,p_lov_disp_sequence=>5
,p_lov_disp_value=>'100'
,p_lov_return_value=>'100'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(6946139384566024025)
,p_lov_disp_sequence=>6
,p_lov_disp_value=>'500'
,p_lov_return_value=>'500'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(6823797754853651399)
,p_lov_disp_sequence=>7
,p_lov_disp_value=>'1000'
,p_lov_return_value=>'1000'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(6946139589773024025)
,p_lov_disp_sequence=>70
,p_lov_disp_value=>'- All Rows -'
,p_lov_return_value=>'50000'
);
wwv_flow_api.component_end;
end;
/
