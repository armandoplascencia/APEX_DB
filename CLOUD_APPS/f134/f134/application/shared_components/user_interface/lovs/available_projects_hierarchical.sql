prompt --application/shared_components/user_interface/lovs/available_projects_hierarchical
begin
--   Manifest
--     AVAILABLE PROJECTS (HIERARCHICAL)
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
 p_id=>wwv_flow_api.id(8149572237263948402)
,p_lov_name=>'AVAILABLE PROJECTS (HIERARCHICAL)'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'with data as (',
'    select parent_project_id, id, project',
'    from eba_proj_status',
'    where project_status not in ( select id',
'                                  from eba_proj_status_codes',
'                                  where is_closed_status = ''Y''',
'                            )',
'        and eba_proj_fw.is_edit_authorized( p_username => ''APP_USER'',',
'                                            p_project_id => id ) = ''Y''',
'',
')',
'select d, r',
'from ( select ltrim(replace(SYS_CONNECT_BY_PATH(project, '':TREESEP:''), '':TREESEP:'','' / ''), ''/ '') d,',
'           id r',
'       from data',
'       start with parent_project_id is null',
'           connect by prior id = parent_project_id',
'           order siblings by project )',
'union all',
'select ps.project d, ps.id r',
'from data ps',
'where ps.parent_project_id is not null',
'    and not exists ( select null',
'                     from data p2',
'                     where p2.id = ps.parent_project_id );'))
,p_source_type=>'LEGACY_SQL'
,p_location=>'LOCAL'
);
wwv_flow_api.component_end;
end;
/
