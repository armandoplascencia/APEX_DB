prompt --application/shared_components/user_interface/lovs/notification_type
begin
--   Manifest
--     NOTIFICATION TYPE
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
 p_id=>wwv_flow_api.id(16447198306927852319)
,p_lov_name=>'NOTIFICATION TYPE'
,p_lov_query=>'.'||wwv_flow_api.id(16447198306927852319)||'.'
,p_location=>'STATIC'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(16447198598959852321)
,p_lov_disp_sequence=>10
,p_lov_disp_value=>'Alert (Yellow)'
,p_lov_return_value=>'YELLOW'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(16447198824589852322)
,p_lov_disp_sequence=>20
,p_lov_disp_value=>'Error (Red)'
,p_lov_return_value=>'RED'
);
wwv_flow_api.component_end;
end;
/
