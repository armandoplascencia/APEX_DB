prompt --application/shared_components/navigation/lists/project_global_nav
begin
--   Manifest
--     LIST: Project Global Nav
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
 p_id=>wwv_flow_api.id(5362471479791650598)
,p_name=>'Project Global Nav'
,p_list_type=>'SQL_QUERY'
,p_list_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select lvl,',
'    label,',
'    target,',
'    is_current_list_entry,',
'    image,',
'    image_attribute,',
'    image_alt_attribute',
'from eba_proj_nav_menu',
'order by attribute1, attribute2, attribute3, attribute4'))
,p_list_status=>'PUBLIC'
);
wwv_flow_api.component_end;
end;
/
