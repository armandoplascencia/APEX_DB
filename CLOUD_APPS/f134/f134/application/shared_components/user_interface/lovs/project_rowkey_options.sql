prompt --application/shared_components/user_interface/lovs/project_rowkey_options
begin
--   Manifest
--     PROJECT ROWKEY OPTIONS
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
 p_id=>wwv_flow_api.id(19852423492326522947)
,p_lov_name=>'PROJECT ROWKEY OPTIONS'
,p_lov_query=>'.'||wwv_flow_api.id(19852423492326522947)||'.'
,p_location=>'STATIC'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(19852423825705522949)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Project Name Only'
,p_lov_return_value=>'DO_NOT_DISPLAY'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(19852424264998522950)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Project Name and System-Generated Unique Identifier'
,p_lov_return_value=>'ROWKEY'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(19852424664104522951)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Project Name and Code Name'
,p_lov_return_value=>'CODE_NAME'
,p_required_patch=>wwv_flow_api.id(19245436446324471171)
);
wwv_flow_api.component_end;
end;
/
