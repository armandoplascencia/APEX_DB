prompt --application/shared_components/user_interface/lovs/project_acl_levels
begin
--   Manifest
--     PROJECT ACL LEVELS
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
 p_id=>wwv_flow_api.id(11154171524619972300)
,p_lov_name=>'PROJECT ACL LEVELS'
,p_lov_query=>'.'||wwv_flow_api.id(11154171524619972300)||'.'
,p_location=>'STATIC'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(11154171849745972302)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Open'
,p_lov_return_value=>'1'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(11154172233685972304)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Project Restricted: Editable by Associated People; Readable by All'
,p_lov_return_value=>'2'
,p_lov_disp_cond_type=>'NEVER'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(11154172562757972305)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Restricted - Only Accessible by Associated People'
,p_lov_return_value=>'3'
);
wwv_flow_api.component_end;
end;
/
