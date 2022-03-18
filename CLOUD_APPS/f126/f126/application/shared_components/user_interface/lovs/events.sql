prompt --application/shared_components/user_interface/lovs/events
begin
--   Manifest
--     EVENTS
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
 p_id=>wwv_flow_api.id(3337987470123517186)
,p_lov_name=>'EVENTS'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select event_name d, event_id r',
'from   eba_ca_events',
'order by 1'))
,p_source_type=>'LEGACY_SQL'
,p_location=>'LOCAL'
);
wwv_flow_api.component_end;
end;
/
