prompt --application/shared_components/user_interface/lovs/project_status_email_ms_options
begin
--   Manifest
--     PROJECT STATUS EMAIL MS OPTIONS
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
 p_id=>wwv_flow_api.id(19978238635696439646)
,p_lov_name=>'PROJECT STATUS EMAIL MS OPTIONS'
,p_lov_query=>'.'||wwv_flow_api.id(19978238635696439646)||'.'
,p_location=>'STATIC'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(19978238925825439649)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Major Milestones Only'
,p_lov_return_value=>'MAJOR'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(19978239360752439650)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'All Milestones'
,p_lov_return_value=>'ALL'
);
wwv_flow_api.component_end;
end;
/
