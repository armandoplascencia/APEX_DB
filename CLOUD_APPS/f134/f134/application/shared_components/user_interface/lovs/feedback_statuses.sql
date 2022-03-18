prompt --application/shared_components/user_interface/lovs/feedback_statuses
begin
--   Manifest
--     FEEDBACK STATUSES
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
 p_id=>wwv_flow_api.id(17043396404757592086)
,p_lov_name=>'FEEDBACK STATUSES'
,p_lov_query=>'.'||wwv_flow_api.id(17043396404757592086)||'.'
,p_location=>'STATIC'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(17043396614726592091)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'In Progress'
,p_lov_return_value=>'IN_PROGRESS'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(17043397092974592092)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'No Action'
,p_lov_return_value=>'NO_ACTION'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(17043397433597592092)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Open'
,p_lov_return_value=>'OPEN'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(17043397858530592093)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'Resolved'
,p_lov_return_value=>'RESOLVED'
);
wwv_flow_api.component_end;
end;
/
