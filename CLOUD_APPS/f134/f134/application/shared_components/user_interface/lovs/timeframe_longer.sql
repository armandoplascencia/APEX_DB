prompt --application/shared_components/user_interface/lovs/timeframe_longer
begin
--   Manifest
--     TIMEFRAME - LONGER
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
 p_id=>wwv_flow_api.id(6181237391042603740)
,p_lov_name=>'TIMEFRAME - LONGER'
,p_lov_query=>'.'||wwv_flow_api.id(6181237391042603740)||'.'
,p_location=>'STATIC'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(6181241899635623123)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'1 Day'
,p_lov_return_value=>'1'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(6181242198341623697)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'2 Days'
,p_lov_return_value=>'2'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(6181242495537624930)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'3 Days'
,p_lov_return_value=>'3'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(6181242793812625826)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'4 Days'
,p_lov_return_value=>'4'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(6181243092302626466)
,p_lov_disp_sequence=>5
,p_lov_disp_value=>'5 Days'
,p_lov_return_value=>'5'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(6181243391008627074)
,p_lov_disp_sequence=>6
,p_lov_disp_value=>'6 Days'
,p_lov_return_value=>'6'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(6181237683252603741)
,p_lov_disp_sequence=>10
,p_lov_disp_value=>'1 Week'
,p_lov_return_value=>'7'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(6181237998137603742)
,p_lov_disp_sequence=>20
,p_lov_disp_value=>'2 Weeks'
,p_lov_return_value=>'14'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(6181238288392603742)
,p_lov_disp_sequence=>30
,p_lov_disp_value=>'3 Weeks'
,p_lov_return_value=>'21'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(6181238593597603743)
,p_lov_disp_sequence=>40
,p_lov_disp_value=>'4 Weeks'
,p_lov_return_value=>'28'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(6181280009407800905)
,p_lov_disp_sequence=>41
,p_lov_disp_value=>'5 Weeks'
,p_lov_return_value=>'35'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(6195384200674446955)
,p_lov_disp_sequence=>42
,p_lov_disp_value=>'90 Days'
,p_lov_return_value=>'90'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(6181238899030603743)
,p_lov_disp_sequence=>50
,p_lov_disp_value=>'6 Months'
,p_lov_return_value=>'183'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(6181239206277603743)
,p_lov_disp_sequence=>60
,p_lov_disp_value=>'1 Year'
,p_lov_return_value=>'365'
);
wwv_flow_api.component_end;
end;
/
