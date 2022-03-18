prompt --application/shared_components/user_interface/lovs/select_project
begin
--   Manifest
--     SELECT PROJECT
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
 p_id=>wwv_flow_api.id(9012961522650589079)
,p_lov_name=>'SELECT PROJECT'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select d, r',
'from ( select ltrim(replace(SYS_CONNECT_BY_PATH(project, '':TREESEP:''), '':TREESEP:'','' / ''), ''/ '') d,',
'           id r',
'       from eba_proj_status',
'       start with parent_project_id is null',
'           connect by prior id = parent_project_id',
'           order siblings by project )',
'union all',
'select ps.project d, ps.id r',
'from eba_proj_status ps',
'where ps.parent_project_id is not null',
'    and not exists ( select null',
'                     from eba_proj_status p2',
'                     where p2.id = ps.parent_project_id );'))
,p_source_type=>'LEGACY_SQL'
,p_location=>'LOCAL'
);
wwv_flow_api.component_end;
end;
/
