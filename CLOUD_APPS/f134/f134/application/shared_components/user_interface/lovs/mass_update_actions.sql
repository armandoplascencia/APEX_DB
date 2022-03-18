prompt --application/shared_components/user_interface/lovs/mass_update_actions
begin
--   Manifest
--     MASS_UPDATE_ACTIONS
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
 p_id=>wwv_flow_api.id(20529543973304045222)
,p_lov_name=>'MASS_UPDATE_ACTIONS'
,p_lov_query=>'.'||wwv_flow_api.id(20529543973304045222)||'.'
,p_location=>'STATIC'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(20529544258285045226)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Change Status'
,p_lov_return_value=>'CHANGE_STATUS'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(20529544694993045228)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Change Due Date'
,p_lov_return_value=>'CHANGE_DUE_DATE'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(20529545024160045228)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Change Owner'
,p_lov_return_value=>'CHANGE_OWNER'
,p_lov_disp_cond_type=>'NEVER'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(20529545460694045228)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'Change Type'
,p_lov_return_value=>'CHANGE_TYPE'
,p_lov_disp_cond_type=>'NEVER'
);
wwv_flow_api.component_end;
end;
/
