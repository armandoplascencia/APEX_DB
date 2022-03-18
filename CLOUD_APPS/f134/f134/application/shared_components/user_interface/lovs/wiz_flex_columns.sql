prompt --application/shared_components/user_interface/lovs/wiz_flex_columns
begin
--   Manifest
--     WIZ_FLEX_COLUMNS
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
 p_id=>wwv_flow_api.id(6252405407142601796)
,p_lov_name=>'WIZ_FLEX_COLUMNS'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'with cols as (',
'    select flexible_column,',
'        case',
'             when flexible_column like ''%FLEX_N%'' then ''Number''',
'             when flexible_column like ''%FLEX_D%'' then ''Date''',
'             when flexible_column like ''%FLEX_CLOB'' then ''Large Text''',
'             else ''Text''',
'        end as col_type',
'    from eba_proj_flex_registry',
'    where flexible_table = :P143_FLEX_TABLE',
'        and assigned_yn = ''N''',
')',
'select col_type as dv,',
'    min( flexible_column ) as rv',
'from cols',
'group by col_type',
'order by col_type'))
,p_source_type=>'LEGACY_SQL'
,p_location=>'LOCAL'
);
wwv_flow_api.component_end;
end;
/
