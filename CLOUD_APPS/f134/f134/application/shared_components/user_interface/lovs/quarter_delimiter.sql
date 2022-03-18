prompt --application/shared_components/user_interface/lovs/quarter_delimiter
begin
--   Manifest
--     QUARTER DELIMITER
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>134
,p_default_id_offset=>172493832712964115
,p_default_owner=>'MISO'
);
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(3490201062286789313)
,p_lov_name=>'QUARTER DELIMITER'
,p_lov_query=>'.'||wwv_flow_api.id(3490201062286789313)||'.'
,p_location=>'STATIC'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(3490201373967789314)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Hyphen'
,p_lov_return_value=>' - '
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(3490201756888789314)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'FY (for Fiscal Year)'
,p_lov_return_value=>'FY'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(3490202125435789314)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'CY (for Calendar Year)'
,p_lov_return_value=>'CY'
);
wwv_flow_api.component_end;
end;
/
