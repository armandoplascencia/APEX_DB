prompt --application/shared_components/user_interface/lovs/mailtype
begin
--   Manifest
--     MAILTYPE
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>115
,p_default_id_offset=>358200981570066140
,p_default_owner=>'MISO'
);
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(188385936260738175)
,p_lov_name=>'MAILTYPE'
,p_lov_query=>'.'||wwv_flow_api.id(188385936260738175)||'.'
,p_location=>'STATIC'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(188386170765738178)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Initial Mail'
,p_lov_return_value=>'1'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(188386567926738179)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Correction Mail'
,p_lov_return_value=>'2'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(188387026386738179)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Reminder Mail'
,p_lov_return_value=>'3'
);
wwv_flow_api.component_end;
end;
/
