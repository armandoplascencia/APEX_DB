prompt --application/shared_components/user_interface/lovs/status_reports_sort_order
begin
--   Manifest
--     STATUS REPORTS SORT ORDER
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
 p_id=>wwv_flow_api.id(6175759103598412741)
,p_lov_name=>'STATUS REPORTS SORT ORDER'
,p_lov_query=>'.'||wwv_flow_api.id(6175759103598412741)||'.'
,p_location=>'STATIC'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(6175759394976412747)
,p_lov_disp_sequence=>10
,p_lov_disp_value=>'Submission Date, Project'
,p_lov_return_value=>'DATE'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(6175759700909412752)
,p_lov_disp_sequence=>20
,p_lov_disp_value=>'Project, Submission Date'
,p_lov_return_value=>'PROJECT'
);
wwv_flow_api.component_end;
end;
/
