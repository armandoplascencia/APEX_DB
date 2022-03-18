prompt --application/shared_components/user_interface/lovs/upload_action
begin
--   Manifest
--     UPLOAD_ACTION
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
 p_id=>wwv_flow_api.id(17895192334761482935)
,p_lov_name=>'UPLOAD_ACTION'
,p_lov_query=>'.'||wwv_flow_api.id(17895192334761482935)||'.'
,p_location=>'STATIC'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(17895192528119482939)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Insert'
,p_lov_return_value=>'INSERT'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(17895192715678482944)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Update'
,p_lov_return_value=>'UPDATE'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(17895192923411482944)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'No Change'
,p_lov_return_value=>'NOTHING'
,p_lov_disp_cond_type=>'CURRENT_PAGE_NOT_EQUAL_CONDITION'
,p_lov_disp_cond=>'35'
);
wwv_flow_api.component_end;
end;
/
