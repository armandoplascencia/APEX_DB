prompt --application/shared_components/logic/application_computations/multiple_cal_bo
begin
--   Manifest
--     APPLICATION COMPUTATION: MULTIPLE_CAL_BO
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
 p_id=>wwv_flow_api.id(1938768257776388700)
,p_computation_sequence=>10
,p_computation_item=>'MULTIPLE_CAL_BO'
,p_computation_point=>'ON_NEW_INSTANCE'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation_processed=>'REPLACE_EXISTING'
,p_computation=>'Include'
,p_required_patch=>wwv_flow_api.id(1938766493817367015)
);
wwv_flow_api.component_end;
end;
/
