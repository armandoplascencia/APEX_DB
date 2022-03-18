prompt --application/shared_components/user_interface/lovs/date_format_opt
begin
--   Manifest
--     DATE_FORMAT_OPT
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>102
,p_default_id_offset=>0
,p_default_owner=>'MISO'
);
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(78018546133760712)
,p_lov_name=>'DATE_FORMAT_OPT'
,p_lov_query=>'.'||wwv_flow_api.id(78018546133760712)||'.'
,p_location=>'STATIC'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(78018904023760712)
,p_lov_disp_sequence=>10
,p_lov_disp_value=>'Use application standard format masks'
,p_lov_return_value=>'Y'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(78019381397760712)
,p_lov_disp_sequence=>20
,p_lov_disp_value=>'Provide custom formats for uploaded columns'
,p_lov_return_value=>'N'
);
wwv_flow_api.component_end;
end;
/
