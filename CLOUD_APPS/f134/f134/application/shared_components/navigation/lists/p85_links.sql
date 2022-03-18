prompt --application/shared_components/navigation/lists/p85_links
begin
--   Manifest
--     LIST: p85 links
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
 p_id=>wwv_flow_api.id(7783490685040226521)
,p_name=>'p85 links'
,p_list_type=>'SQL_QUERY'
,p_list_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT null the_target, ',
'        nvl(link_text, link_target)  label, ',
'       link_target target, ',
'       ''NO'' is_current, ',
'       '''' image, ',
'       '''' image_attrib, ',
'       null image_alt,',
'      null attribute1,',
'      ''target="_blank"'' attribute2',
'FROM  EBA_PROJ_STATUS_LINKS',
'where PROJECT_ID = :P85_ID and link_target is not null ',
'ORDER BY 2'))
,p_list_status=>'PUBLIC'
);
wwv_flow_api.component_end;
end;
/
