prompt --application/deployment/install/install_load_acl_data
begin
--   Manifest
--     INSTALL: INSTALL-load acl data
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>112
,p_default_id_offset=>101618418936909290
,p_default_owner=>'MISO'
);
wwv_flow_api.create_install_script(
 p_id=>wwv_flow_api.id(16026808496544010848)
,p_install_id=>wwv_flow_api.id(17893718049487094920)
,p_name=>'load acl data'
,p_sequence=>410
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Checklist access levels */',
'insert into eba_cust_access_levels (id, access_level) values (1, ''Reader'');',
'insert into eba_cust_access_levels (id, access_level) values (2, ''Contributor'');',
'insert into eba_cust_access_levels (id, access_level) values (3, ''Administrator'');',
'',
'/* Checklist preferences */',
'insert into eba_cust_preferences (id, preference_name, preference_value) values (1, ''ACCESS_CONTROL_ENABLED'', ''N'');',
'insert into eba_cust_preferences (id, preference_name, preference_value) values (2, ''ACCESS_CONTROL_SCOPE'', ''ACL_ONLY'');',
'insert into eba_cust_preferences (id, preference_name, preference_value) values (3, ''USERNAME_FORMAT'', ''EMAIL'');',
'',
'/* Constraint error lookups */',
'insert into eba_cust_error_lookup (constraint_name, message, language_code) values (''EBA_CUST_USERS_UK'', ''Username must be unique.'', ''en'');',
'',
'',
'commit;',
'/',
'show errors'))
);
wwv_flow_api.component_end;
end;
/
