prompt --application/shared_components/user_interface/lovs/summary_or_status
begin
--   Manifest
--     SUMMARY_OR_STATUS
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
 p_id=>wwv_flow_api.id(18909040981002011782)
,p_lov_name=>'SUMMARY_OR_STATUS'
,p_lov_query=>'.'||wwv_flow_api.id(18909040981002011782)||'.'
,p_location=>'STATIC'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(18909041306334011786)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Project Details Email'
,p_lov_return_value=>'SUMMARY'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(18909041635879011790)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Project Status Email'
,p_lov_return_value=>'STATUS'
);
wwv_flow_api.component_end;
end;
/
