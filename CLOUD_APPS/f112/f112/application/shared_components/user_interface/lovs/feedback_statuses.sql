prompt --application/shared_components/user_interface/lovs/feedback_statuses
begin
--   Manifest
--     FEEDBACK STATUSES
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>112
,p_default_id_offset=>101618418936909290
,p_default_owner=>'MISO'
);
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(18831821590390561480)
,p_lov_name=>'FEEDBACK STATUSES'
,p_lov_query=>'.'||wwv_flow_api.id(18831821590390561480)||'.'
,p_location=>'STATIC'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(18831821905883561487)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'In Progress'
,p_lov_return_value=>'IN_PROGRESS'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(18831822309228561490)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'No Action'
,p_lov_return_value=>'NO_ACTION'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(18831822739963561490)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Open'
,p_lov_return_value=>'OPEN'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(18831823169621561491)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'Resolved'
,p_lov_return_value=>'RESOLVED'
);
wwv_flow_api.component_end;
end;
/
