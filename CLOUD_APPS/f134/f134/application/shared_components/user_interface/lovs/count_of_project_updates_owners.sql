prompt --application/shared_components/user_interface/lovs/count_of_project_updates_owners
begin
--   Manifest
--     COUNT OF PROJECT UPDATES OWNERS
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
 p_id=>wwv_flow_api.id(6195384583265458848)
,p_lov_name=>'COUNT OF PROJECT UPDATES OWNERS'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select eba_proj_fw.get_name_from_email_address(u.update_owner) || '' (''||count(*)||'')'' d,',
'       lower(u.update_owner) r',
'from eba_proj_status_updates u',
'where u.update_owner is not null ',
'group by eba_proj_fw.get_name_from_email_address(u.update_owner), lower(u.update_owner)',
'order by 1'))
,p_source_type=>'LEGACY_SQL'
,p_location=>'LOCAL'
);
wwv_flow_api.component_end;
end;
/
