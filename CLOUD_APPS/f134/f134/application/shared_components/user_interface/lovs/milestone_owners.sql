prompt --application/shared_components/user_interface/lovs/milestone_owners
begin
--   Manifest
--     MILESTONE OWNERS
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
 p_id=>wwv_flow_api.id(15403619940600518770)
,p_lov_name=>'MILESTONE OWNERS'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct owner d, owner r',
'from (',
'    select lower(x.milestone_owner) owner',
'    from eba_proj_status_ms x',
'    where x.owner_role_id is null',
'    union all',
'    select lower(u.username) owner',
'    from eba_proj_status_ms x,',
'        eba_proj_user_ref rf,',
'        eba_proj_status_users u',
'    where rf.role_id = x.owner_role_id',
'        and rf.project_id = x.project_id',
'        and u.id = rf.user_id',
')',
'where owner is not null',
'order by owner'))
,p_source_type=>'LEGACY_SQL'
,p_location=>'LOCAL'
);
wwv_flow_api.component_end;
end;
/
