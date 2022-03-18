prompt --application/shared_components/user_interface/lovs/page_2_project_status
begin
--   Manifest
--     PAGE 2 PROJECT_STATUS
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
 p_id=>wwv_flow_api.id(6172832987382026683)
,p_lov_name=>'PAGE 2 PROJECT_STATUS'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select STATUS_short_desc display_value, ID return_value ',
'from EBA_PROJ_STATUS_CODES s',
'where s.is_active_yn = ''Y'' or id = :P2_PROJECT_STATUS',
'order by s.is_active_yn desc, s.display_sequence'))
,p_source_type=>'LEGACY_SQL'
,p_location=>'LOCAL'
);
wwv_flow_api.component_end;
end;
/
