prompt --application/shared_components/user_interface/lovs/categories_with_projects
begin
--   Manifest
--     CATEGORIES WITH PROJECTS
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
 p_id=>wwv_flow_api.id(6928403842756415227)
,p_lov_name=>'CATEGORIES WITH PROJECTS'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select CATEGORY display_value, ID return_value ',
'from EBA_PROJ_STATUS_CATS c',
'where is_active_yn = ''Y'' and exists (select 1 from eba_proj_status p where p.cat_id = c.id)',
'order by display_sequence nulls last, 1'))
,p_source_type=>'LEGACY_SQL'
,p_location=>'LOCAL'
);
wwv_flow_api.component_end;
end;
/
