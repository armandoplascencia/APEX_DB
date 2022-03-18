prompt --application/shared_components/user_interface/lovs/milestone_or_project_owner_two_values
begin
--   Manifest
--     MILESTONE OR PROJECT OWNER TWO VALUES
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
 p_id=>wwv_flow_api.id(8151676441355581069)
,p_lov_name=>'MILESTONE OR PROJECT OWNER TWO VALUES'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct display_owner d, lower(owner) r',
'from (',
'    select eba_proj_fw.get_name_from_email_address(u.username) as display_owner, u.username as owner',
'    from eba_proj_status_users u,',
'        eba_proj_user_ref rf,',
'        eba_proj_roles r,',
'        eba_proj_status p',
'    where rf.user_id = u.id',
'        and rf.role_id = r.id',
'        and eba_proj_fw.is_edit_authorized( u.username, rf.project_id ) = ''Y''',
'        and rf.project_id = p.id',
'    union all',
'    select eba_proj_fw.get_name_from_email_address(milestone_owner) as display_owner, milestone_owner as owner',
'    from eba_proj_status_ms',
'    where milestone_owner is not null',
'        and owner_role_id is null',
'    union all',
'    select eba_proj_fw.get_name_from_email_address(u.username) as display_owner, u.username as owner',
'    from eba_proj_user_ref rf,',
'        eba_proj_status_users u,',
'        eba_proj_roles r,',
'        eba_proj_status_ms m',
'    where m.owner_role_id is not null',
'        and rf.role_id = m.owner_role_id',
'        and rf.project_id = m.project_id',
'        and u.id = rf.user_id',
'        and r.id = rf.role_id',
')',
'order by 1'))
,p_source_type=>'LEGACY_SQL'
,p_location=>'LOCAL'
);
wwv_flow_api.component_end;
end;
/
