prompt --application/shared_components/navigation/lists/p85_child_projects
begin
--   Manifest
--     LIST: p85 child projects
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>134
,p_default_id_offset=>172493832712964115
,p_default_owner=>'MISO'
);
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(7783480676934159466)
,p_name=>'p85 child projects'
,p_list_type=>'SQL_QUERY'
,p_list_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'    null      the_level,',
'    project the_label, ',
'    apex_util.prepare_url(''f?p=''||:APP_ID||'':85:''||:APP_SESSION',
'        ||'':::85:P85_ID,PROJECT_CAME_FROM:''||id||'',85'') target,',
'    ''NO'' is_current_list_entry,',
'    null image,',
'    null image_alt_attributes',
'from eba_proj_status',
'where parent_project_id = :P85_ID',
'order by lower(project), id'))
,p_list_status=>'PUBLIC'
);
wwv_flow_api.component_end;
end;
/
