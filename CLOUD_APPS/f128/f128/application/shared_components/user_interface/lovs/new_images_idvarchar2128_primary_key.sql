prompt --application/shared_components/user_interface/lovs/new_images_idvarchar2128_primary_key
begin
--   Manifest
--     NEW_IMAGES.IDVARCHAR2128_PRIMARY_KEY
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>128
,p_default_id_offset=>101063537470361591
,p_default_owner=>'MISO'
);
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(114290477153693879)
,p_lov_name=>'NEW_IMAGES.IDVARCHAR2128_PRIMARY_KEY'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'NEW_IMAGES'
,p_return_column_name=>'ID'
,p_display_column_name=>'IDVARCHAR2128_PRIMARY_KEY'
,p_default_sort_column_name=>'IDVARCHAR2128_PRIMARY_KEY'
,p_default_sort_direction=>'ASC'
);
wwv_flow_api.component_end;
end;
/
