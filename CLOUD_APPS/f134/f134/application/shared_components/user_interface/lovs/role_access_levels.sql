prompt --application/shared_components/user_interface/lovs/role_access_levels
begin
--   Manifest
--     ROLE ACCESS LEVELS
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
 p_id=>wwv_flow_api.id(11727021805039159216)
,p_lov_name=>'ROLE ACCESS LEVELS'
,p_lov_query=>'.'||wwv_flow_api.id(11727021805039159216)||'.'
,p_location=>'STATIC'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(11727022068140159220)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Read Only'
,p_lov_return_value=>'1'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(11727022467729159222)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Read / Write'
,p_lov_return_value=>'2'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(11727022889782159222)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Read / Write (with Admin)'
,p_lov_return_value=>'3'
);
wwv_flow_api.component_end;
end;
/
