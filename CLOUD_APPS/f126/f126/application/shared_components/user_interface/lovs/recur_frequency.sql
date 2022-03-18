prompt --application/shared_components/user_interface/lovs/recur_frequency
begin
--   Manifest
--     RECUR FREQUENCY
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
 p_id=>wwv_flow_api.id(9240770001967885879)
,p_lov_name=>'RECUR FREQUENCY'
,p_lov_query=>'.'||wwv_flow_api.id(9240770001967885879)||'.'
,p_location=>'STATIC'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(9240770315204885891)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Daily'
,p_lov_return_value=>'D'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(9240770517616885902)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'every Weekday (M-F)'
,p_lov_return_value=>'WD'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(9240770708681885902)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'every Week (same day of week)'
,p_lov_return_value=>'W'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(9240770897053885902)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'every 2 Weeks (same day of week)'
,p_lov_return_value=>'2W'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(9240771121202885902)
,p_lov_disp_sequence=>5
,p_lov_disp_value=>'each Month (same date)'
,p_lov_return_value=>'M'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(4175105287753947255)
,p_lov_disp_sequence=>6
,p_lov_disp_value=>'every 3 Months (same date)'
,p_lov_return_value=>'Q'
);
wwv_flow_api.component_end;
end;
/
