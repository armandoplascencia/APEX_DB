prompt --application/shared_components/user_interface/lovs/email_schedule_options
begin
--   Manifest
--     EMAIL SCHEDULE OPTIONS
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
 p_id=>wwv_flow_api.id(16146676932810625263)
,p_lov_name=>'EMAIL SCHEDULE OPTIONS'
,p_lov_query=>'.'||wwv_flow_api.id(16146676932810625263)||'.'
,p_location=>'STATIC'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(16146677226712625265)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Quarterly'
,p_lov_return_value=>'QUARTERLY'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(16146678070868625268)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Monthly'
,p_lov_return_value=>'MONTHLY'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(16146677643392625267)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Bi-Monthly'
,p_lov_return_value=>'BIMONTHLY'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(16146678477763625268)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'Weekly'
,p_lov_return_value=>'WEEKLY'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(16168564978888807012)
,p_lov_disp_sequence=>5
,p_lov_disp_value=>'Daily'
,p_lov_return_value=>'DAILY'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(17067962747303167000)
,p_lov_disp_sequence=>6
,p_lov_disp_value=>'Never (Opted-Out)'
,p_lov_return_value=>'NEVER'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(18082646887949444419)
,p_lov_disp_sequence=>16
,p_lov_disp_value=>'No preference set'
,p_lov_return_value=>'UNSET'
,p_lov_disp_cond_type=>'EXPRESSION'
,p_lov_disp_cond=>'eba_proj_stat_ui.get_authorization_level(:APP_USER) >= 3'
,p_lov_disp_cond2=>'PLSQL'
);
wwv_flow_api.component_end;
end;
/
