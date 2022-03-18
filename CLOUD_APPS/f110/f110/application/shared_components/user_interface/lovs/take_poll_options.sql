prompt --application/shared_components/user_interface/lovs/take_poll_options
begin
--   Manifest
--     TAKE POLL OPTIONS
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
 p_id=>wwv_flow_api.id(14087221994116175016)
,p_lov_name=>'TAKE POLL OPTIONS'
,p_lov_query=>'.'||wwv_flow_api.id(14087221994116175016)||'.'
,p_location=>'STATIC'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(14087222288634175017)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Take It'
,p_lov_return_value=>'Take It'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(14087222607916175020)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Update'
,p_lov_return_value=>'Update'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(14087222879203175021)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Has Errors'
,p_lov_return_value=>'Has Errors'
);
wwv_flow_api.component_end;
end;
/
