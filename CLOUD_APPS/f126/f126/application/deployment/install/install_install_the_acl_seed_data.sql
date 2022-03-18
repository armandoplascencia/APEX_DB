prompt --application/deployment/install/install_install_the_acl_seed_data
begin
--   Manifest
--     INSTALL: INSTALL-install the acl seed data
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>126
,p_default_id_offset=>101651461840938715
,p_default_owner=>'MISO'
);
wwv_flow_api.create_install_script(
 p_id=>wwv_flow_api.id(3336059876705050921)
,p_install_id=>wwv_flow_api.id(7488934904666529534)
,p_name=>'install the acl seed data'
,p_sequence=>630
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Bug tracker access levels */',
'insert into eba_ca_access_levels (id, access_level) values (1, ''Reader'');',
'insert into eba_ca_access_levels (id, access_level) values (2, ''Contributor'');',
'insert into eba_ca_access_levels (id, access_level) values (3, ''Administrator'');',
'',
'/* Bug Tracker preferences */',
'insert into eba_ca_preferences (id, preference_name, preference_value) values (1, ''ACCESS_CONTROL_ENABLED'', ''N'');',
'insert into eba_ca_preferences (id, preference_name, preference_value) values (2, ''ACCESS_CONTROL_SCOPE'', ''ACL_ONLY'');',
'insert into eba_ca_preferences (id, preference_name, preference_value) values (3, ''USERNAME_FORMAT'', ''EMAIL'');',
'',
'/* Constraint error lookups */',
'insert into eba_ca_error_lookup (constraint_name, message, language_code) values (''EBA_CA_USERS_UK'', ''Username must be unique.'', ''en'');',
'insert into eba_ca_error_lookup (constraint_name, message, language_code) values (''EBA_CA_CALENDAR_UK1'', ''Calendar Short Name must be unique.'', ''en'');',
'insert into eba_ca_error_lookup (constraint_name, message, language_code) values (''EBA_CA_CALENDAR_UK2'', ''Calendar Name must be unique.'', ''en'');',
'',
'commit;',
'/',
'show errors'))
);
wwv_flow_api.component_end;
end;
/
