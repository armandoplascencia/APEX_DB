prompt --application/shared_components/security/authorizations/can_view_your_response
begin
--   Manifest
--     SECURITY SCHEME: Can View Your Response
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
 p_id=>wwv_flow_api.id(14022969497914526396)
,p_name=>'Can View Your Response'
,p_scheme_type=>'NATIVE_EXISTS'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from eba_qpoll_polls p',
' where id = :POLL_ID',
'  and ( (anonymous_yn = ''Y'' and',
'         exists (select 1',
'                   from eba_qpoll_results',
'                  where poll_id = p.id',
'                    and APEX_SESSION_ID = :APP_SESSION) ) ',
'         or',
'         (anonymous_yn = ''N'' and',
'          exists (select 1',
'                    from eba_qpoll_results',
'                   where poll_id = p.id',
'                     and apex_user = :APP_USER) ) )'))
,p_error_message=>'You cannot view your results.'
,p_caching=>'BY_USER_BY_PAGE_VIEW'
);
wwv_flow_api.component_end;
end;
/
