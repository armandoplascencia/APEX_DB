prompt --application/shared_components/user_interface/lovs/distinct_project_owners_lower
begin
--   Manifest
--     DISTINCT PROJECT OWNERS LOWER
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
 p_id=>wwv_flow_api.id(6181361696245081401)
,p_lov_name=>'DISTINCT PROJECT OWNERS LOWER'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select lower(u.username) d, lower(u.username) r',
'from eba_proj_status_users u',
'where exists (select null',
'              from eba_proj_user_ref rf,',
'                  eba_proj_status p',
'              where rf.user_id = u.id',
'                  and rf.project_id = p.id',
'                  and eba_proj_fw.is_edit_authorized( u.username, rf.project_id ) = ''Y''',
'                  and p.project_status not in ( select id from eba_proj_status_codes where is_closed_status = ''Y'' )',
'             )',
'order by lower(u.username)'))
,p_source_type=>'LEGACY_SQL'
,p_location=>'LOCAL'
);
wwv_flow_api.component_end;
end;
/
