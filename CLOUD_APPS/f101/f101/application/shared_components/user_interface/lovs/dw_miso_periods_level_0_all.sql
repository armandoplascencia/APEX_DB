prompt --application/shared_components/user_interface/lovs/dw_miso_periods_level_0_all
begin
--   Manifest
--     DW_MISO_PERIODS.LEVEL_0_ALL
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>101
,p_default_id_offset=>0
,p_default_owner=>'MISO'
);
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(57590131184067539)
,p_lov_name=>'DW_MISO_PERIODS.LEVEL_0_ALL'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'DW_MISO_PERIODS'
,p_return_column_name=>'DW_MISO_PERIOD_ID'
,p_display_column_name=>'LEVEL_0_ALL'
,p_default_sort_column_name=>'LEVEL_0_ALL'
,p_default_sort_direction=>'ASC'
);
wwv_flow_api.component_end;
end;
/
