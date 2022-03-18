prompt --application/shared_components/user_interface/lovs/project_updates_sort_order
begin
--   Manifest
--     PROJECT UPDATES SORT ORDER
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
 p_id=>wwv_flow_api.id(6913790996811990107)
,p_lov_name=>'PROJECT UPDATES SORT ORDER'
,p_lov_query=>'.'||wwv_flow_api.id(6913790996811990107)||'.'
,p_location=>'STATIC'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(6913791287907990108)
,p_lov_disp_sequence=>10
,p_lov_disp_value=>'Update Date, Project'
,p_lov_return_value=>'DATE'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(6913791490676990109)
,p_lov_disp_sequence=>20
,p_lov_disp_value=>'Project, Update Date'
,p_lov_return_value=>'PROJECT'
);
wwv_flow_api.component_end;
end;
/
