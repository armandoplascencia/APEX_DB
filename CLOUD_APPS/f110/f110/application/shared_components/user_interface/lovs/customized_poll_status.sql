prompt --application/shared_components/user_interface/lovs/customized_poll_status
begin
--   Manifest
--     CUSTOMIZED POLL STATUS
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
 p_id=>wwv_flow_api.id(14118298699457917683)
,p_lov_name=>'CUSTOMIZED POLL STATUS'
,p_lov_query=>'.'||wwv_flow_api.id(14118298699457917683)||'.'
,p_location=>'STATIC'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(14118299008091917689)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Published'
,p_lov_return_value=>'3N'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(14118299310448917692)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Published, Invitees only'
,p_lov_return_value=>'3Y'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(14118299591225917692)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Testing, Contributors only'
,p_lov_return_value=>'2'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(14118299903311917692)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'Closed'
,p_lov_return_value=>'4'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(308653817958672857)
,p_lov_disp_sequence=>14
,p_lov_disp_value=>'Being Authored'
,p_lov_return_value=>'1'
);
wwv_flow_api.component_end;
end;
/
