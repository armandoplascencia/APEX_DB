prompt --application/shared_components/user_interface/lovs/wb_bus_process_event_possible_retired_state
begin
--   Manifest
--     WB_BUS_PROCESS_EVENT_POSSIBLE.RETIRED_STATE
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>104
,p_default_id_offset=>0
,p_default_owner=>'MISO'
);
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(42186891081534932)
,p_lov_name=>'WB_BUS_PROCESS_EVENT_POSSIBLE.RETIRED_STATE'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'WB_BUS_PROCESS_EVENT_POSSIBLE'
,p_return_column_name=>'BUS_PROCESS_EVENT_POSSIBLE_ID'
,p_display_column_name=>'RETIRED_STATE'
,p_default_sort_column_name=>'RETIRED_STATE'
,p_default_sort_direction=>'ASC'
);
wwv_flow_api.component_end;
end;
/
