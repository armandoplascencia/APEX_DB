prompt --application/shared_components/user_interface/lovs/action_items_sort_order
begin
--   Manifest
--     ACTION ITEMS SORT ORDER
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
 p_id=>wwv_flow_api.id(9068392934720183774)
,p_lov_name=>'ACTION ITEMS SORT ORDER'
,p_lov_query=>'.'||wwv_flow_api.id(9068392934720183774)||'.'
,p_location=>'STATIC'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(9068393142983183786)
,p_lov_disp_sequence=>10
,p_lov_disp_value=>'Due Date Asc'
,p_lov_return_value=>'DUE_DATE'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(9068393315714183791)
,p_lov_disp_sequence=>20
,p_lov_disp_value=>'Due Date Desc'
,p_lov_return_value=>'DUE_DATE2'
);
wwv_flow_api.component_end;
end;
/
