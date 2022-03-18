prompt --application/shared_components/user_interface/lovs/invite_method
begin
--   Manifest
--     INVITE METHOD
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>110
,p_default_id_offset=>101599614921830918
,p_default_owner=>'MISO'
);
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(14093623905099484369)
,p_lov_name=>'INVITE METHOD'
,p_lov_query=>'.'||wwv_flow_api.id(14093623905099484369)||'.'
,p_location=>'STATIC'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(14093624081904484369)
,p_lov_disp_sequence=>10
,p_lov_disp_value=>'Automated Email'
,p_lov_return_value=>'EMAIL'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(14093624398937484369)
,p_lov_disp_sequence=>20
,p_lov_disp_value=>'Manual'
,p_lov_return_value=>'MANUAL'
);
wwv_flow_api.component_end;
end;
/
