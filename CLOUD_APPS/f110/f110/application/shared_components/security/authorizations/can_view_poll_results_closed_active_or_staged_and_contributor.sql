prompt --application/shared_components/security/authorizations/can_view_poll_results_closed_active_or_staged_and_contributor
begin
--   Manifest
--     SECURITY SCHEME: Can View Poll Results (closed, active, or staged and contributor)
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>110
,p_default_id_offset=>101599614921830918
,p_default_owner=>'MISO'
);
wwv_flow_api.create_security_scheme(
 p_id=>wwv_flow_api.id(14021638908096383157)
,p_name=>'Can View Poll Results (closed, active, or staged and contributor)'
,p_scheme_type=>'NATIVE_FUNCTION_BODY'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'',
'if eba_qpoll.get_access_role (',
'      p_app_id   => :APP_ID,',
'      p_username => :APP_USER) in (''CONTRIBUTOR'',''ADMINISTRATOR'') then',
'   return true;',
'end if;',
'',
'for c1 in (',
'   select all_view_results_yn',
'     from eba_qpoll_polls',
'    where id = :POLL_ID ',
'      and status_id in (3,4)',
') loop',
'   if eba_qpoll.get_access_role (',
'         p_app_id   => :APP_ID,',
'         p_username => :APP_USER) != ''NONE'' then',
'      return true;',
'   elsif c1.all_view_results_yn = ''Y'' then -- invitees can view',
'      for c2 in (',
'         select 1',
'          from eba_qpoll_comm_invites c,',
'               eba_qpoll_invites i',
'        where c.poll_id = :POLL_ID',
'            and c.id = i.comm_invite_id',
'            and upper(respondent_email) = :APP_USER',
'      ) loop',
'         return true;',
'      end loop;',
'   end if;',
'end loop;',
'',
'return false;',
'',
'end;'))
,p_error_message=>'You do not have access to view the results for this poll.'
,p_caching=>'BY_USER_BY_PAGE_VIEW'
);
wwv_flow_api.component_end;
end;
/
