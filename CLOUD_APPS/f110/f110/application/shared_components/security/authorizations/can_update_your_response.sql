prompt --application/shared_components/security/authorizations/can_update_your_response
begin
--   Manifest
--     SECURITY SCHEME: Can Update Your Response
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
 p_id=>wwv_flow_api.id(14022992806231902412)
,p_name=>'Can Update Your Response'
,p_scheme_type=>'NATIVE_FUNCTION_BODY'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if eba_qpoll.poll_take_status (',
'                p_app_id   => :APP_ID,',
'                p_poll_id  => :POLL_ID,',
'                p_app_user => :APP_USER,',
'                p_app_session => :APP_SESSION) = ''CAN_UPDATE''',
'then return true;',
'else return false;',
'end if;'))
,p_error_message=>'Your cannot update your response.'
,p_caching=>'BY_USER_BY_PAGE_VIEW'
);
wwv_flow_api.component_end;
end;
/
