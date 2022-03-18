prompt --application/shared_components/logic/application_computations/current_user_id
begin
--   Manifest
--     APPLICATION COMPUTATION: CURRENT_USER_ID
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>134
,p_default_id_offset=>172493832712964115
,p_default_owner=>'MISO'
);
wwv_flow_api.create_flow_computation(
 p_id=>wwv_flow_api.id(17040176318350563369)
,p_computation_sequence=>10
,p_computation_item=>'CURRENT_USER_ID'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'QUERY'
,p_computation_processed=>'REPLACE_EXISTING'
,p_computation=>'select id from eba_proj_status_users where username = upper(:APP_USER)'
);
wwv_flow_api.component_end;
end;
/
