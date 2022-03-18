prompt --application/shared_components/user_interface/lovs/include_completed_projects
begin
--   Manifest
--     INCLUDE COMPLETED PROJECTS
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
 p_id=>wwv_flow_api.id(9013442233750764516)
,p_lov_name=>'INCLUDE COMPLETED PROJECTS'
,p_lov_query=>'.'||wwv_flow_api.id(9013442233750764516)||'.'
,p_location=>'STATIC'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(9013442436106764522)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Include Completed Projects'
,p_lov_return_value=>'Y'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(9016377516147128356)
,p_lov_disp_sequence=>20
,p_lov_disp_value=>'Exclude Completed Projects'
,p_lov_return_value=>'N'
);
wwv_flow_api.component_end;
end;
/
