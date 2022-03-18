prompt --application/shared_components/user_interface/lovs/start_time_selector
begin
--   Manifest
--     START TIME SELECTOR
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
 p_id=>wwv_flow_api.id(9022154422108786526)
,p_lov_name=>'START TIME SELECTOR'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select to_char(trunc(sysdate)+((i-1)/48),v(''APP_TIME_FORMAT'')) d,',
'       to_char(trunc(sysdate)+((i-1)/48),v(''APP_TIME_FORMAT'')) r',
'  from wwv_flow_dual100',
' where i < 49',
'order by i',
''))
,p_source_type=>'LEGACY_SQL'
,p_location=>'LOCAL'
);
wwv_flow_api.component_end;
end;
/
