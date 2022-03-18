prompt --application/shared_components/logic/application_processes/set_poll_details
begin
--   Manifest
--     APPLICATION PROCESS: Set POLL Details
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>110
,p_default_id_offset=>101599614921830918
,p_default_owner=>'MISO'
);
wwv_flow_api.create_flow_process(
 p_id=>wwv_flow_api.id(14025733506940073146)
,p_process_sequence=>1
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set POLL Details'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':POLL_ID         := null;',
':POLL_NAME       := null;',
':POLL_OR_QUIZ    := null;',
':POLL_AUTHENTICATION_REQ_YN := null;',
'',
'for c1 in (',
'   select id, apex_escape.html(poll_name) as poll_name, poll_or_quiz, authentication_req_yn',
'     from eba_qpoll_polls',
'    where id = :LPOLL_ID',
') loop',
'   :POLL_ID         := c1.id;',
'   :POLL_NAME       := c1.poll_name;',
'   :POLL_OR_QUIZ    := c1.poll_or_quiz;',
'   :POLL_AUTHENTICATION_REQ_YN := c1.authentication_req_yn;',
'end loop;',
'',
':LPOLL_ID := null;'))
,p_process_clob_language=>'PLSQL'
,p_process_when=>'LPOLL_ID'
,p_process_when_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_api.component_end;
end;
/
