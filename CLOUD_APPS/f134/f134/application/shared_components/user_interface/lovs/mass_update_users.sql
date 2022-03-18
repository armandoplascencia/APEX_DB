prompt --application/shared_components/user_interface/lovs/mass_update_users
begin
--   Manifest
--     MASS_UPDATE_USERS
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
 p_id=>wwv_flow_api.id(2825248930329001554)
,p_lov_name=>'MASS_UPDATE_USERS'
,p_lov_query=>'.'||wwv_flow_api.id(2825248930329001554)||'.'
,p_location=>'STATIC'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(2825249241538001563)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Change Access Level'
,p_lov_return_value=>'CHANGE_ACL'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(2825252445282047618)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Change Background Check(s)'
,p_lov_return_value=>'CHANGE_BG_CHKS'
,p_required_patch=>wwv_flow_api.id(2770587737367599922)
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(2825249652629001565)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Change Country'
,p_lov_return_value=>'CHANGE_COUNTRY'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(2825250447620001565)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'Change Home Timezone'
,p_lov_return_value=>'CHANGE_TZ'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(2835196405764011159)
,p_lov_disp_sequence=>5
,p_lov_disp_value=>'Change Locked Status'
,p_lov_return_value=>'CHANGE_LOCKED_STATUS'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(2825252794879052218)
,p_lov_disp_sequence=>6
,p_lov_disp_value=>'Change Skillsets'
,p_lov_return_value=>'CHANGE_SKILLSETS'
,p_required_patch=>wwv_flow_api.id(2770587552010580829)
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(2825253173113055160)
,p_lov_disp_sequence=>7
,p_lov_disp_value=>'Change Team Group(s)'
,p_lov_return_value=>'CHANGE_TEAM_GRPS'
,p_required_patch=>wwv_flow_api.id(2770587393234575801)
);
wwv_flow_api.component_end;
end;
/
