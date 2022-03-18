prompt --application/shared_components/security/authorizations/application_sentry
begin
--   Manifest
--     SECURITY SCHEME: APPLICATION SENTRY
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
 p_id=>wwv_flow_api.id(16485644720875760829)
,p_name=>'APPLICATION SENTRY'
,p_scheme_type=>'NATIVE_FUNCTION_BODY'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :APP_PAGE_ID in (14,50,51,63,64,65,66,68,69,500,101,1000,170,180) then',
'    return true;',
'elsif eba_qpoll.get_access_role (',
'         p_app_id   => :APP_ID,',
'         p_username => :APP_USER) != ''NONE'' then',
'      return true;',
'else ',
'   return false;',
'end if;',
''))
,p_error_message=>'You are not authorized to view this application, either because you have not been granted access, or your account has been locked. Please contact the application administrator.'
,p_caching=>'BY_USER_BY_PAGE_VIEW'
);
wwv_flow_api.component_end;
end;
/
