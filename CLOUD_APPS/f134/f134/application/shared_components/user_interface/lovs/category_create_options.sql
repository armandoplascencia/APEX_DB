prompt --application/shared_components/user_interface/lovs/category_create_options
begin
--   Manifest
--     CATEGORY CREATE OPTIONS
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
 p_id=>wwv_flow_api.id(495494166676798264)
,p_lov_name=>'CATEGORY CREATE OPTIONS'
,p_lov_query=>'.'||wwv_flow_api.id(495494166676798264)||'.'
,p_location=>'STATIC'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(495494498973798264)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Administrators Only'
,p_lov_return_value=>'ADMIN'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(495494910114798265)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Contributors'
,p_lov_return_value=>'CONTRIB'
);
wwv_flow_api.component_end;
end;
/
