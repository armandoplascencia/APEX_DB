prompt --application/shared_components/user_interface/lovs/project_sort_options
begin
--   Manifest
--     PROJECT SORT OPTIONS
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
 p_id=>wwv_flow_api.id(9068195017577130138)
,p_lov_name=>'PROJECT SORT OPTIONS'
,p_lov_query=>'.'||wwv_flow_api.id(9068195017577130138)||'.'
,p_location=>'STATIC'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(9068195232302130147)
,p_lov_disp_sequence=>10
,p_lov_disp_value=>'Project Name'
,p_lov_return_value=>'PROJECT'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(9068195436171130155)
,p_lov_disp_sequence=>20
,p_lov_disp_value=>'Last Updated Descending'
,p_lov_return_value=>'DATE'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(9068195643761130155)
,p_lov_disp_sequence=>30
,p_lov_disp_value=>'Created Descending'
,p_lov_return_value=>'CREATED'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(9068195818907130155)
,p_lov_disp_sequence=>40
,p_lov_disp_value=>'Next Milestone'
,p_lov_return_value=>'MILESTONE'
);
wwv_flow_api.component_end;
end;
/
