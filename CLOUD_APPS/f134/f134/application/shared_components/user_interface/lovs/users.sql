prompt --application/shared_components/user_interface/lovs/users
begin
--   Manifest
--     USERS
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
 p_id=>wwv_flow_api.id(11677307740938890831)
,p_lov_name=>'USERS'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select u.username d, u.id r',
'from eba_proj_status_users u',
'order by upper(u.username)'))
,p_source_type=>'LEGACY_SQL'
,p_location=>'LOCAL'
);
wwv_flow_api.component_end;
end;
/
