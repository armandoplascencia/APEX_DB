prompt --application/shared_components/logic/application_computations/outstanding_invites
begin
--   Manifest
--     APPLICATION COMPUTATION: OUTSTANDING_INVITES
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
 p_id=>wwv_flow_api.id(8319090063160836970)
,p_computation_sequence=>10
,p_computation_item=>'OUTSTANDING_INVITES'
,p_computation_point=>'AFTER_HEADER'
,p_computation_type=>'QUERY'
,p_computation_processed=>'REPLACE_EXISTING'
,p_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select count (unique i.respondent_id) cnt',
'  from eba_qpoll_comm_invites c,',
'       eba_qpoll_invites i',
' where c.poll_id = :POLL_ID',
'   and c.id = i.comm_invite_id',
'   and i.respondent_id not in',
'           (select respondent_id',
'              from EBA_QPOLL_RESULTS ',
'             where POLL_ID = :POLL_ID',
'               and nvl(is_valid_yn,''Y'') = ''Y'')'))
,p_compute_when=>'100,66,68'
,p_compute_when_type=>'CURRENT_PAGE_IN_CONDITION'
);
wwv_flow_api.component_end;
end;
/
