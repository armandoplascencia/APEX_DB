prompt --application/shared_components/user_interface/lovs/year_format
begin
--   Manifest
--     YEAR_FORMAT
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
 p_id=>wwv_flow_api.id(3490194900613773514)
,p_lov_name=>'YEAR_FORMAT'
,p_lov_query=>'.'||wwv_flow_api.id(3490194900613773514)||'.'
,p_location=>'STATIC'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(3490195169560773514)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'2 Digit Year'
,p_lov_return_value=>'YY'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(3490195523114773515)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'4 Digit Year'
,p_lov_return_value=>'YYYY'
);
wwv_flow_api.component_end;
end;
/
