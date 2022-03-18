prompt --application/shared_components/user_interface/lovs/project_details_scope_options
begin
--   Manifest
--     PROJECT DETAILS SCOPE OPTIONS
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
 p_id=>wwv_flow_api.id(17578872970668459180)
,p_lov_name=>'PROJECT DETAILS SCOPE OPTIONS'
,p_lov_query=>'.'||wwv_flow_api.id(17578872970668459180)||'.'
,p_location=>'STATIC'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(17578873241884459188)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'All Projects'
,p_lov_return_value=>'ALL'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(17578873709256459191)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Projects I''m Following'
,p_lov_return_value=>'FOLLOW'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(17578874044347459192)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Projects I''m a Member of'
,p_lov_return_value=>'MEMBER'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(17578874492516459192)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'Projects I''m a Member of and I''m Following'
,p_lov_return_value=>'BOTH'
);
wwv_flow_api.component_end;
end;
/
