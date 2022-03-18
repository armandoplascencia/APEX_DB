prompt --application/shared_components/user_interface/lovs/required_pages
begin
--   Manifest
--     REQUIRED PAGES
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
 p_id=>wwv_flow_api.id(737166732853069036)
,p_lov_name=>'REQUIRED PAGES'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct page_id || '' - '' || apex_escape.html(page_name) d, page_id r',
'  from  apex_application_page_items',
' where application_id = :APP_ID',
'   and is_required = ''No''',
'  and item_label_template not in (''Hidden'',''Required'')',
'order by page_id asc;'))
,p_source_type=>'LEGACY_SQL'
,p_location=>'LOCAL'
);
wwv_flow_api.component_end;
end;
/
