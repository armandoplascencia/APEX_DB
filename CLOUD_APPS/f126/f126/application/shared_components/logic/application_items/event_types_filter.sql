prompt --application/shared_components/logic/application_items/event_types_filter
begin
--   Manifest
--     APPLICATION ITEM: EVENT_TYPES_FILTER
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>126
,p_default_id_offset=>101651461840938715
,p_default_owner=>'MISO'
);
wwv_flow_api.create_flow_item(
 p_id=>wwv_flow_api.id(1938863353037975112)
,p_name=>'EVENT_TYPES_FILTER'
,p_protection_level=>'B'
,p_escape_on_http_output=>'N'
);
wwv_flow_api.component_end;
end;
/
