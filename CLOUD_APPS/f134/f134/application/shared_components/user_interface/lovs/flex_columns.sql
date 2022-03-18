prompt --application/shared_components/user_interface/lovs/flex_columns
begin
--   Manifest
--     FLEX_COLUMNS
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
 p_id=>wwv_flow_api.id(6252378292611580692)
,p_lov_name=>'FLEX_COLUMNS'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct c.column_name|| '' - ''||c.data_type||',
'    decode(c.data_type,''VARCHAR2'',''(''||c.data_length||'')'',null) as dv,',
'    c.column_name as rv',
'from sys.all_tab_columns c,',
'    eba_proj_flex_registry f',
'where c.table_name = :P142_FLEXIBLE_TABLE',
'    and c.column_name = f.flexible_column (+)',
'    and nvl(f.active_yn,''N'') = ''N''',
'    and lower(c.column_name) like ''%flex%''',
'    and instr(c.table_name,''FLEX'') = 0',
'order by 1',
''))
,p_source_type=>'LEGACY_SQL'
,p_location=>'LOCAL'
);
wwv_flow_api.component_end;
end;
/
