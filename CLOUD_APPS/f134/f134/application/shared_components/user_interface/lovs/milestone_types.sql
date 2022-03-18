prompt --application/shared_components/user_interface/lovs/milestone_types
begin
--   Manifest
--     MILESTONE TYPES
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
 p_id=>wwv_flow_api.id(20755113550749814964)
,p_lov_name=>'MILESTONE TYPES'
,p_lov_query=>'.'||wwv_flow_api.id(20755113550749814964)||'.'
,p_location=>'STATIC'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(20755113870538814968)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Major'
,p_lov_return_value=>'MAJOR'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(20755114259519814970)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Minor'
,p_lov_return_value=>'MINOR'
);
wwv_flow_api.component_end;
end;
/
