prompt --application/shared_components/user_interface/lovs/remove_age_in_days
begin
--   Manifest
--     REMOVE AGE IN DAYS
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
 p_id=>wwv_flow_api.id(6338190096173100810)
,p_lov_name=>'REMOVE AGE IN DAYS'
,p_lov_query=>'.'||wwv_flow_api.id(6338190096173100810)||'.'
,p_location=>'STATIC'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(6338190302054100817)
,p_lov_disp_sequence=>10
,p_lov_disp_value=>'90 (~ 3 months)'
,p_lov_return_value=>'90'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(6338190583850100826)
,p_lov_disp_sequence=>20
,p_lov_disp_value=>'180 (~ 6 months)'
,p_lov_return_value=>'180'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(6338190897812100826)
,p_lov_disp_sequence=>30
,p_lov_disp_value=>'365 (1 Year)'
,p_lov_return_value=>'365'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(6338191211331100826)
,p_lov_disp_sequence=>40
,p_lov_disp_value=>'730 (2 Years)'
,p_lov_return_value=>'730'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(6338191483874100826)
,p_lov_disp_sequence=>50
,p_lov_disp_value=>'1095 (3 years)'
,p_lov_return_value=>'1095'
);
wwv_flow_api.component_end;
end;
/
