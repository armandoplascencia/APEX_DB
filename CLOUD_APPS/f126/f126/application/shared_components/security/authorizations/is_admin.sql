prompt --application/shared_components/security/authorizations/is_admin
begin
--   Manifest
--     SECURITY SCHEME: is Admin
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>126
,p_default_id_offset=>101651461840938715
,p_default_owner=>'MISO'
);
wwv_flow_api.create_security_scheme(
 p_id=>wwv_flow_api.id(9022065915697396767)
,p_name=>'is Admin'
,p_scheme_type=>'NATIVE_FUNCTION_BODY'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'for c1 in (',
'   select admin_username',
'     from EBA_ca_admins',
'    where upper(admin_username) = upper(:APP_USER) )',
'loop',
'   return true;',
'end loop;',
'',
'for c2 in (',
'   select count(*) admin_cnt',
'     from EBA_ca_admins )',
'loop',
'   if c2.admin_cnt = 0',
'      then return true;',
'   else return false;',
'   end if;',
'end loop;'))
,p_error_message=>'Only Administrators can access these features.'
,p_caching=>'BY_USER_BY_SESSION'
);
wwv_flow_api.component_end;
end;
/
