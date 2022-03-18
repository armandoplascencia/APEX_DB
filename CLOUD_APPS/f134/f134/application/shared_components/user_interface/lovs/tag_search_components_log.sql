prompt --application/shared_components/user_interface/lovs/tag_search_components_log
begin
--   Manifest
--     TAG SEARCH COMPONENTS LOG
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
 p_id=>wwv_flow_api.id(6094128298272085722)
,p_lov_name=>'TAG SEARCH COMPONENTS LOG'
,p_lov_query=>'.'||wwv_flow_api.id(6094128298272085722)||'.'
,p_location=>'STATIC'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(6094128604524085732)
,p_lov_disp_sequence=>10
,p_lov_disp_value=>'Projects'
,p_lov_return_value=>'P'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(6094128899113085736)
,p_lov_disp_sequence=>10
,p_lov_disp_value=>'Action Items'
,p_lov_return_value=>'I'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(6094129493235085736)
,p_lov_disp_sequence=>30
,p_lov_disp_value=>'Links'
,p_lov_return_value=>'L'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(6094130082747085737)
,p_lov_disp_sequence=>50
,p_lov_disp_value=>'Milestones'
,p_lov_return_value=>'M'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(6094130702357085737)
,p_lov_disp_sequence=>70
,p_lov_disp_value=>'Files'
,p_lov_return_value=>'F'
);
wwv_flow_api.component_end;
end;
/
