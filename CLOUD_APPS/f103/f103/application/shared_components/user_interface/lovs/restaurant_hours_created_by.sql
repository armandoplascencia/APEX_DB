prompt --application/shared_components/user_interface/lovs/restaurant_hours_created_by
begin
--   Manifest
--     RESTAURANT_HOURS.CREATED_BY
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>103
,p_default_id_offset=>0
,p_default_owner=>'MISO'
);
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(20235649850790508)
,p_lov_name=>'RESTAURANT_HOURS.CREATED_BY'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'RESTAURANT_HOURS'
,p_return_column_name=>'ID'
,p_display_column_name=>'CREATED_BY'
,p_default_sort_column_name=>'CREATED_BY'
,p_default_sort_direction=>'ASC'
);
wwv_flow_api.component_end;
end;
/
