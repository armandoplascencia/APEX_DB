prompt --application/shared_components/user_interface/lovs/enabled_or_disabled
begin
--   Manifest
--     ENABLED OR DISABLED
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
 p_id=>wwv_flow_api.id(12093720776695516894)
,p_lov_name=>'ENABLED OR DISABLED'
,p_lov_query=>'.'||wwv_flow_api.id(12093720776695516894)||'.'
,p_location=>'STATIC'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(12093721097840516897)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Enabled'
,p_lov_return_value=>'ENABLED'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(12093721502886516899)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Disabled'
,p_lov_return_value=>'DISABLED'
);
wwv_flow_api.component_end;
end;
/
