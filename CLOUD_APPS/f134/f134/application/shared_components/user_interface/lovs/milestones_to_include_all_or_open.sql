prompt --application/shared_components/user_interface/lovs/milestones_to_include_all_or_open
begin
--   Manifest
--     MILESTONES TO INCLUDE ALL OR OPEN
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
 p_id=>wwv_flow_api.id(12485856085396125117)
,p_lov_name=>'MILESTONES TO INCLUDE ALL OR OPEN'
,p_lov_query=>'.'||wwv_flow_api.id(12485856085396125117)||'.'
,p_location=>'STATIC'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(12485856296933125121)
,p_lov_disp_sequence=>10
,p_lov_disp_value=>'All Milestones'
,p_lov_return_value=>'ALL'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(12485856636394125125)
,p_lov_disp_sequence=>20
,p_lov_disp_value=>'Open Milestones'
,p_lov_return_value=>'OPEN'
);
wwv_flow_api.component_end;
end;
/
