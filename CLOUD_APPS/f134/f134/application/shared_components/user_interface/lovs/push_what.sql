prompt --application/shared_components/user_interface/lovs/push_what
begin
--   Manifest
--     PUSH WHAT
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
 p_id=>wwv_flow_api.id(8136932339461692358)
,p_lov_name=>'PUSH WHAT'
,p_lov_query=>'.'||wwv_flow_api.id(8136932339461692358)||'.'
,p_location=>'STATIC'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(8136932530903692359)
,p_lov_disp_sequence=>10
,p_lov_disp_value=>'Push All Open'
,p_lov_return_value=>'ALL'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(8136932735207692360)
,p_lov_disp_sequence=>20
,p_lov_disp_value=>'Push Overdue'
,p_lov_return_value=>'OVERDUE'
);
wwv_flow_api.component_end;
end;
/
