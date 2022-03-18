prompt --application/shared_components/user_interface/lovs/p195_regions
begin
--   Manifest
--     P195_REGIONS
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
 p_id=>wwv_flow_api.id(2770349530575666274)
,p_lov_name=>'P195_REGIONS'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct r.region_name d, c.region_id r',
'  from eba_proj_countries c,',
'       eba_proj_regions r',
' where c.region_id = r.id',
'   and ((c.id = :P195_COUNTRY_ID and :P195_COUNTRY_ID is not null)',
'or (c.id is not null and :P195_COUNTRY_ID is null))',
'order by lower(r.region_name)'))
,p_source_type=>'LEGACY_SQL'
,p_location=>'LOCAL'
);
wwv_flow_api.component_end;
end;
/
