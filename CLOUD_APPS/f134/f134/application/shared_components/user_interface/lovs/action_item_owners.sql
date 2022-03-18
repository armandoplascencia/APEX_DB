prompt --application/shared_components/user_interface/lovs/action_item_owners
begin
--   Manifest
--     ACTION ITEM OWNERS
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
 p_id=>wwv_flow_api.id(9066923115258057045)
,p_lov_name=>'ACTION ITEM OWNERS'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct v1.owner d, lower(v1.username) r',
'from (',
'    select eba_proj_fw.get_name_from_email_address(action_owner_01) owner, action_owner_01 username from eba_proj_status_ais',
'    union all',
'    select eba_proj_fw.get_name_from_email_address(action_owner_02) owner, action_owner_02 username from eba_proj_status_ais',
'    union all',
'    select eba_proj_fw.get_name_from_email_address(action_owner_03) owner, action_owner_03 username from eba_proj_status_ais',
'    union all',
'    select eba_proj_fw.get_name_from_email_address(action_owner_04) owner, action_owner_04 username from eba_proj_status_ais',
'    union all',
'    select eba_proj_fw.get_name_from_email_address(u.username) owner, u.username username',
'    from eba_proj_status_users u',
'    where exists (  select null',
'                      from eba_proj_status_ais a,',
'                           eba_proj_user_ref rf',
'                     where rf.role_id = a.owner_role_id',
'                       and rf.project_id = a.project_id',
'                       and rf.user_id = u.id',
'                 )',
'    ) v1',
'where v1.owner is not null',
'order by 1'))
,p_source_type=>'LEGACY_SQL'
,p_location=>'LOCAL'
);
wwv_flow_api.component_end;
end;
/
