prompt --application/shared_components/user_interface/lovs/mass_update_milestone_statuses
begin
--   Manifest
--     MASS UPDATE MILESTONE STATUSES
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
 p_id=>wwv_flow_api.id(21386035770086241967)
,p_lov_name=>'MASS UPDATE MILESTONE STATUSES'
,p_lov_query=>'.'||wwv_flow_api.id(21386035770086241967)||'.'
,p_location=>'STATIC'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(21386036019964241970)
,p_lov_disp_sequence=>20
,p_lov_disp_value=>'Closed / Completed'
,p_lov_return_value=>'Completed'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(21386036673822241972)
,p_lov_disp_sequence=>30
,p_lov_disp_value=>'Not Applicable'
,p_lov_return_value=>'Not Applicable'
);
wwv_flow_api.component_end;
end;
/
