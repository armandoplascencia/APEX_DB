prompt --application/shared_components/user_interface/lovs/risk_verbosity_in_status_emails
begin
--   Manifest
--     RISK_VERBOSITY_IN_STATUS_EMAILS
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
 p_id=>wwv_flow_api.id(19198597233292758215)
,p_lov_name=>'RISK_VERBOSITY_IN_STATUS_EMAILS'
,p_lov_query=>'.'||wwv_flow_api.id(19198597233292758215)||'.'
,p_location=>'STATIC'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(19198597595543758225)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Terse'
,p_lov_return_value=>'TERSE'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(19198597918762758229)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Verbose'
,p_lov_return_value=>'VERBOSE'
);
wwv_flow_api.component_end;
end;
/
