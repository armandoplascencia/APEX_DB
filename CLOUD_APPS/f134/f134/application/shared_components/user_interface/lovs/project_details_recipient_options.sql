prompt --application/shared_components/user_interface/lovs/project_details_recipient_options
begin
--   Manifest
--     PROJECT DETAILS RECIPIENT OPTIONS
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
 p_id=>wwv_flow_api.id(17312946905365269084)
,p_lov_name=>'PROJECT DETAILS RECIPIENT OPTIONS'
,p_lov_query=>'.'||wwv_flow_api.id(17312946905365269084)||'.'
,p_location=>'STATIC'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(17312947124254269093)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Project Members'
,p_lov_return_value=>'MEMBERS'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(17312947524549269097)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Project Followers'
,p_lov_return_value=>'FOLLOWERS'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(17312947950029269097)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Both'
,p_lov_return_value=>'BOTH'
);
wwv_flow_api.component_end;
end;
/
