prompt --application/shared_components/user_interface/lovs/rows
begin
--   Manifest
--     ROWS
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>126
,p_default_id_offset=>101651461840938715
,p_default_owner=>'MISO'
);
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(3338915972160596774)
,p_lov_name=>'ROWS'
,p_lov_query=>'.'||wwv_flow_api.id(3338915972160596774)||'.'
,p_location=>'STATIC'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(3338916169402596775)
,p_lov_disp_sequence=>10
,p_lov_disp_value=>'10'
,p_lov_return_value=>'10'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(3338916349968596776)
,p_lov_disp_sequence=>20
,p_lov_disp_value=>'20'
,p_lov_return_value=>'20'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(3338916549911596776)
,p_lov_disp_sequence=>30
,p_lov_disp_value=>'100'
,p_lov_return_value=>'100'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(3338916770640596776)
,p_lov_disp_sequence=>40
,p_lov_disp_value=>'1000'
,p_lov_return_value=>'1000'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(3338916973349596776)
,p_lov_disp_sequence=>50
,p_lov_disp_value=>'5000'
,p_lov_return_value=>'5000'
);
wwv_flow_api.component_end;
end;
/
