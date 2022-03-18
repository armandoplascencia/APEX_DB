prompt --application/shared_components/security/authorizations/response_has_errors
begin
--   Manifest
--     SECURITY SCHEME: Response Has Errors
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
 p_id=>wwv_flow_api.id(14054676383276461072)
,p_name=>'Response Has Errors'
,p_scheme_type=>'NATIVE_FUNCTION_BODY'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if eba_qpoll.poll_take_status(',
'                p_app_id   => :APP_ID,',
'                p_poll_id  => :POLL_ID,',
'                p_app_user => :APP_USER,',
'                p_app_session => :APP_SESSION) = ''HAS_ERRORS''',
'then return true;',
'else return false;',
'end if;'))
,p_error_message=>'You have already taken this poll.'
,p_caching=>'BY_USER_BY_PAGE_VIEW'
);
wwv_flow_api.component_end;
end;
/
