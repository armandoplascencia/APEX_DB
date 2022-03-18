prompt --application/shared_components/user_interface/lovs/timeframes_for_ir_col_headings
begin
--   Manifest
--     TIMEFRAMES (FOR IR COL HEADINGS)
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>126
,p_default_id_offset=>101651461840938715
,p_default_owner=>'MISO'
);
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(8120994840174740009)
,p_lov_name=>'TIMEFRAMES (FOR IR COL HEADINGS)'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select tf_name d, ',
'       tf_name r',
'  from EBA_ca_timeframes',
' where sysdate <= end_date',
' order by start_date',
''))
,p_source_type=>'LEGACY_SQL'
,p_location=>'LOCAL'
);
wwv_flow_api.component_end;
end;
/
