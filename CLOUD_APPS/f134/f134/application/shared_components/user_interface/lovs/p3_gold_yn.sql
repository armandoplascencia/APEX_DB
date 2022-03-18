prompt --application/shared_components/user_interface/lovs/p3_gold_yn
begin
--   Manifest
--     P3_GOLD_YN
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
 p_id=>wwv_flow_api.id(524875425407597656)
,p_lov_name=>'P3_GOLD_YN'
,p_lov_query=>'.'||wwv_flow_api.id(524875425407597656)||'.'
,p_location=>'STATIC'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(524875614131597657)
,p_lov_disp_sequence=>10
,p_lov_disp_value=>'Mark as Gold'
,p_lov_return_value=>'Y'
);
wwv_flow_api.component_end;
end;
/
