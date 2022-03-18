prompt --application/shared_components/logic/application_computations/cals_restricted_to
begin
--   Manifest
--     APPLICATION COMPUTATION: CALS_RESTRICTED_TO
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>126
,p_default_id_offset=>101651461840938715
,p_default_owner=>'MISO'
);
wwv_flow_api.create_flow_computation(
 p_id=>wwv_flow_api.id(1958923919928466469)
,p_computation_sequence=>10
,p_computation_item=>'CALS_RESTRICTED_TO'
,p_computation_point=>'ON_NEW_INSTANCE'
,p_computation_type=>'QUERY'
,p_computation_processed=>'REPLACE_EXISTING'
,p_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select nvl(restricted_to, decode(access_level_id, 3, ''All'', null)) ',
'from eba_ca_users',
'where username = :APP_USER'))
,p_required_patch=>wwv_flow_api.id(1938766493817367015)
);
wwv_flow_api.component_end;
end;
/
