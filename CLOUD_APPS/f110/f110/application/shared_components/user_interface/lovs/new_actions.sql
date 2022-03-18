prompt --application/shared_components/user_interface/lovs/new_actions
begin
--   Manifest
--     NEW ACTIONS
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>110
,p_default_id_offset=>101599614921830918
,p_default_owner=>'MISO'
);
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(14044468004064549598)
,p_lov_name=>'NEW ACTIONS'
,p_lov_query=>'.'||wwv_flow_api.id(14044468004064549598)||'.'
,p_location=>'STATIC'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(14044468206197549599)
,p_lov_disp_sequence=>10
,p_lov_disp_value=>'Create a New Question Set'
,p_lov_return_value=>'QS'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(14044469709525565574)
,p_lov_disp_sequence=>20
,p_lov_disp_value=>'Create a new community of poll recipients'
,p_lov_return_value=>'C'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(14044471400240585065)
,p_lov_disp_sequence=>30
,p_lov_disp_value=>'Publish a question set as a Poll'
,p_lov_return_value=>'P'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(14044473692463603811)
,p_lov_disp_sequence=>40
,p_lov_disp_value=>'Send invitations to a community to take a published poll'
,p_lov_return_value=>'I'
);
wwv_flow_api.component_end;
end;
/
