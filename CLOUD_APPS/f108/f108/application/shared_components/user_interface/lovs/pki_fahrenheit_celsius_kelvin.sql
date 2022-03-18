prompt --application/shared_components/user_interface/lovs/pki_fahrenheit_celsius_kelvin
begin
--   Manifest
--     PKI_FAHRENHEIT_CELSIUS_KELVIN
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>108
,p_default_id_offset=>0
,p_default_owner=>'MISO'
);
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(76948764592171107)
,p_lov_name=>'PKI_FAHRENHEIT_CELSIUS_KELVIN'
,p_lov_query=>'select id r, ''fahrenheit=>''||to_char(fahrenheit)||'' Celsius=>''||to_char(celsius)||'' Kelvin=>''||to_char(kelvin) d from PKI_FAHRENHEIT_CELSIUS_KELVIN'
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_query_table=>'PKI_FAHRENHEIT_CELSIUS_KELVIN'
,p_return_column_name=>'R'
,p_display_column_name=>'D'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
);
wwv_flow_api.component_end;
end;
/
