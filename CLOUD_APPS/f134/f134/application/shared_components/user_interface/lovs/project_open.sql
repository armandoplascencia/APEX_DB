prompt --application/shared_components/user_interface/lovs/project_open
begin
--   Manifest
--     PROJECT OPEN
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
 p_id=>wwv_flow_api.id(19040890182135671433)
,p_lov_name=>'PROJECT OPEN'
,p_lov_query=>'.'||wwv_flow_api.id(19040890182135671433)||'.'
,p_location=>'STATIC'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(19040890465192671435)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Open'
,p_lov_return_value=>'Open'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(19040890886514671436)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Closed'
,p_lov_return_value=>'Closed'
);
wwv_flow_api.component_end;
end;
/
