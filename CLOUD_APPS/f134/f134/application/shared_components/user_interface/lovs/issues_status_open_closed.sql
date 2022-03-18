prompt --application/shared_components/user_interface/lovs/issues_status_open_closed
begin
--   Manifest
--     ISSUES STATUS OPEN CLOSED
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
 p_id=>wwv_flow_api.id(19976168381673757918)
,p_lov_name=>'ISSUES STATUS OPEN CLOSED'
,p_lov_query=>'.'||wwv_flow_api.id(19976168381673757918)||'.'
,p_location=>'STATIC'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(19976168666716757923)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Open'
,p_lov_return_value=>'Y'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(19976169038233757924)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Closed'
,p_lov_return_value=>'N'
);
wwv_flow_api.component_end;
end;
/
