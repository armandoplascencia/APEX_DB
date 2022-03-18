prompt --application/shared_components/user_interface/lovs/upd_request_fo
begin
--   Manifest
--     UPD_REQUEST_FO
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>126
,p_default_id_offset=>101651461840938715
,p_default_owner=>'MISO'
);
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(8095430247485418165)
,p_lov_name=>'UPD_REQUEST_FO'
,p_lov_query=>'.'||wwv_flow_api.id(8095430247485418165)||'.'
,p_location=>'STATIC'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(8095430739241418168)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Future Events'
,p_lov_return_value=>'F'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(8095430524737418166)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Only this Event'
,p_lov_return_value=>'O'
);
wwv_flow_api.component_end;
end;
/
