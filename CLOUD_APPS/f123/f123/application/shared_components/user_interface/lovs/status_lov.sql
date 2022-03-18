prompt --application/shared_components/user_interface/lovs/status_lov
begin
--   Manifest
--     STATUS LOV
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>123
,p_default_id_offset=>111717178695017138
,p_default_owner=>'MISO'
);
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(3258136894769542159)
,p_lov_name=>'STATUS LOV'
,p_lov_query=>'.'||wwv_flow_api.id(3258136894769542159)||'.'
,p_location=>'STATIC'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(3258137169655542159)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Deleted'
,p_lov_return_value=>'D'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(3258137466381542162)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'New'
,p_lov_return_value=>'N'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(3258137767821542162)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Original'
,p_lov_return_value=>'O'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(3258138084296542162)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'Updated'
,p_lov_return_value=>'U'
);
wwv_flow_api.component_end;
end;
/
