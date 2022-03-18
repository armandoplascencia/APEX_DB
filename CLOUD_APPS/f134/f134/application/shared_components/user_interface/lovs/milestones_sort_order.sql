prompt --application/shared_components/user_interface/lovs/milestones_sort_order
begin
--   Manifest
--     MILESTONES SORT ORDER
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
 p_id=>wwv_flow_api.id(6919541399337823465)
,p_lov_name=>'MILESTONES SORT ORDER'
,p_lov_query=>'.'||wwv_flow_api.id(6919541399337823465)||'.'
,p_location=>'STATIC'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(6919541692834823467)
,p_lov_disp_sequence=>10
,p_lov_disp_value=>'Milestone Date Desc'
,p_lov_return_value=>'DATE'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(6180583198217144602)
,p_lov_disp_sequence=>15
,p_lov_disp_value=>'Milestone Date Asc'
,p_lov_return_value=>'DATE2'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(6919541890507823467)
,p_lov_disp_sequence=>20
,p_lov_disp_value=>'Project, Milestone Date'
,p_lov_return_value=>'PROJECT'
,p_lov_disp_cond_type=>'NEVER'
);
wwv_flow_api.component_end;
end;
/
