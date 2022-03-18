prompt --application/shared_components/logic/application_computations/poll_cnt
begin
--   Manifest
--     APPLICATION COMPUTATION: POLL_CNT
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>110
,p_default_id_offset=>101599614921830918
,p_default_owner=>'MISO'
);
wwv_flow_api.create_flow_computation(
 p_id=>wwv_flow_api.id(15541266044694681639)
,p_computation_sequence=>10
,p_computation_item=>'POLL_CNT'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'QUERY'
,p_computation_processed=>'REPLACE_EXISTING'
,p_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select count(*)',
'  from eba_qpoll_polls'))
);
wwv_flow_api.component_end;
end;
/
