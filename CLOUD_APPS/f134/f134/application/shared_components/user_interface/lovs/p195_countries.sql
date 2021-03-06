prompt --application/shared_components/user_interface/lovs/p195_countries
begin
--   Manifest
--     P195_COUNTRIES
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
 p_id=>wwv_flow_api.id(2770264629563215652)
,p_lov_name=>'P195_COUNTRIES'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select country_name d, id r',
'from eba_proj_countries',
'where (region_id = :P195_REGION_ID and :P195_REGION_ID is not null)',
'or (region_id is not null and :P195_REGION_ID is null)',
'order by lower(country_name)'))
,p_source_type=>'LEGACY_SQL'
,p_location=>'LOCAL'
);
wwv_flow_api.component_end;
end;
/
