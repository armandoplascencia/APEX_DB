prompt --application/shared_components/user_interface/lovs/attachment_sort_options
begin
--   Manifest
--     ATTACHMENT SORT OPTIONS
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
 p_id=>wwv_flow_api.id(6835144492685550761)
,p_lov_name=>'ATTACHMENT SORT OPTIONS'
,p_lov_query=>'.'||wwv_flow_api.id(6835144492685550761)||'.'
,p_location=>'STATIC'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(6835144864611550771)
,p_lov_disp_sequence=>10
,p_lov_disp_value=>'Filename'
,p_lov_return_value=>'FILE'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(6835145417450550776)
,p_lov_disp_sequence=>30
,p_lov_disp_value=>'Created Descending'
,p_lov_return_value=>'DATE'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(6835665386046741479)
,p_lov_disp_sequence=>40
,p_lov_disp_value=>'Contributor'
,p_lov_return_value=>'CONT'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(6835666603309770518)
,p_lov_disp_sequence=>50
,p_lov_disp_value=>'Size'
,p_lov_return_value=>'SIZE'
);
wwv_flow_api.component_end;
end;
/
