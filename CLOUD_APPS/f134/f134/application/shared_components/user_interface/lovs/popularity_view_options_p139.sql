prompt --application/shared_components/user_interface/lovs/popularity_view_options_p139
begin
--   Manifest
--     POPULARITY VIEW OPTIONS P139
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
 p_id=>wwv_flow_api.id(6987368897445092297)
,p_lov_name=>'POPULARITY VIEW OPTIONS P139'
,p_lov_query=>'.'||wwv_flow_api.id(6987368897445092297)||'.'
,p_location=>'STATIC'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(3845114427186077515)
,p_lov_disp_sequence=>15
,p_lov_disp_value=>'Cards'
,p_lov_return_value=>'CARDS'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(6987369557429092309)
,p_lov_disp_sequence=>20
,p_lov_disp_value=>'Interactive Report'
,p_lov_return_value=>'IR'
);
wwv_flow_api.component_end;
end;
/
