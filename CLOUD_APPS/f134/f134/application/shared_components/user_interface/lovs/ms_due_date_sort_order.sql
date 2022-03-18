prompt --application/shared_components/user_interface/lovs/ms_due_date_sort_order
begin
--   Manifest
--     MS_DUE_DATE_SORT_ORDER
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
 p_id=>wwv_flow_api.id(495493029649785314)
,p_lov_name=>'MS_DUE_DATE_SORT_ORDER'
,p_lov_query=>'.'||wwv_flow_api.id(495493029649785314)||'.'
,p_location=>'STATIC'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(495493298724785314)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Start Date'
,p_lov_return_value=>'START'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(495493716370785315)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Due Date'
,p_lov_return_value=>'END'
);
wwv_flow_api.component_end;
end;
/
