prompt --application/shared_components/security/authorizations/can_delete_test_data
begin
--   Manifest
--     SECURITY SCHEME: Can Delete Test Data
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
 p_id=>wwv_flow_api.id(14054680584521521322)
,p_name=>'Can Delete Test Data'
,p_scheme_type=>'NATIVE_EXISTS'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from eba_qpoll_results',
' where poll_id = :POLL_ID',
'   and nvl(is_valid_yn,''Y'') = ''Y''',
'   and preactive_yn = ''Y''',
'   and eba_qpoll.get_access_role (',
'           p_app_id   => :APP_ID,',
'           p_username => :APP_USER) in (''CONTRIBUTOR'',''ADMINISTRATOR'')'))
,p_error_message=>'There is no test data for this poll.'
,p_caching=>'BY_USER_BY_PAGE_VIEW'
);
wwv_flow_api.component_end;
end;
/
