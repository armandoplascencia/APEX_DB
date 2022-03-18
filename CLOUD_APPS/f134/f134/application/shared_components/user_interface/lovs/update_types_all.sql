prompt --application/shared_components/user_interface/lovs/update_types_all
begin
--   Manifest
--     UPDATE TYPES (ALL)
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
 p_id=>wwv_flow_api.id(6777533092923234586)
,p_lov_name=>'UPDATE TYPES (ALL)'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select status_update_type||decode(is_active_yn,''Y'','''','' (Inactive)'') d, id r',
'from   EBA_PROJ_STATUS_UPDATE_TYPES',
'order by is_active_yn desc, display_sequence'))
,p_source_type=>'LEGACY_SQL'
,p_location=>'LOCAL'
);
wwv_flow_api.component_end;
end;
/
