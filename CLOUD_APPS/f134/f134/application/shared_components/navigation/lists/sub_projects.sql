prompt --application/shared_components/navigation/lists/sub_projects
begin
--   Manifest
--     LIST: Sub-Projects
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
 p_id=>wwv_flow_api.id(6175187904782279528)
,p_name=>'Sub-Projects'
,p_list_type=>'SQL_QUERY'
,p_list_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select lvl,',
'   project,',
'    target,',
'   is_current_list_entry,',
'   image,',
'   image_attrib,',
'   image_alt,',
'   attribute1,',
'   attribute2,',
'   attribute3',
'from (',
'select  null lvl,',
'        project,',
'        ''f?p=&APP_ID.:200:''||:APP_SESSION||''::::P200_ID:''||s.id target,',
'        null is_current_list_entry,',
'        null image,',
'        null image_attrib,',
'        null image_alt,',
'        ''Status: ''||nvl((select status_short_desc ',
'           from EBA_PROJ_STATUS_CODES c ',
'           where c.id = s.PROJECT_STATUS),''unknown'')||'', Owners: ''||',
'               (   select listagg(lower(u.username),'', '') within group',
'                       (order by nvl(rf.acl_status_level,r.default_acl_status_level) desc, lower(u.username))',
'                   from eba_proj_user_ref rf,',
'                       eba_proj_status_users u,',
'                       eba_proj_roles r',
'                   where rf.project_id = s.id',
'                       and rf.user_id = u.id',
'                       and rf.role_id = r.id',
'                       and eba_proj_fw.is_edit_authorized( u.username, rf.project_id ) = ''Y'' )',
'         as attribute1,',
'       null attribute2,',
'       NVL(upper(',
'          decode(instr(s.PROJECT,'' ''),',
'                 0, ',
'                 substr(s.PROJECT,1,2),',
'                 substr(s.PROJECT,1,1)||substr(s.PROJECT,instr(s.PROJECT,'' '')+1,1)',
'           )),''CP'')  attribute3',
'from eba_proj_status s',
'where parent_project_id = :P200_ID',
'order by lower(project)',
') x'))
,p_list_status=>'PUBLIC'
);
wwv_flow_api.component_end;
end;
/
