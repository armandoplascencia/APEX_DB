prompt --application/shared_components/user_interface/lovs/project_creation_roles
begin
--   Manifest
--     PROJECT CREATION ROLES
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
 p_id=>wwv_flow_api.id(20463403342486916307)
,p_lov_name=>'PROJECT CREATION ROLES'
,p_lov_query=>'.'||wwv_flow_api.id(20463403342486916307)||'.'
,p_location=>'STATIC'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(20463413680136916312)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Contributors (and above)'
,p_lov_return_value=>'CONTRIBUTORS'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(20463414050488916316)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Application Administrators (and above)'
,p_lov_return_value=>'ADMINS'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(20463414497550916316)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Super Admins'
,p_lov_return_value=>'SUPER_ADMINS'
);
wwv_flow_api.component_end;
end;
/
