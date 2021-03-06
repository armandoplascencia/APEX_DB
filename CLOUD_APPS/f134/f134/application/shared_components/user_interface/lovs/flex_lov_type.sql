prompt --application/shared_components/user_interface/lovs/flex_lov_type
begin
--   Manifest
--     FLEX_LOV_TYPE
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
 p_id=>wwv_flow_api.id(6252380384493580693)
,p_lov_name=>'FLEX_LOV_TYPE'
,p_lov_query=>'.'||wwv_flow_api.id(6252380384493580693)||'.'
,p_location=>'STATIC'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(6252380699984580693)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Static List of Values'
,p_lov_return_value=>'STATIC'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(6252380995279580694)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Dynamic List of Values (based on a SQL Query)'
,p_lov_return_value=>'DYNAMIC'
);
wwv_flow_api.component_end;
end;
/
