prompt --application/deployment/install/upgrade_username_format_preference
begin
--   Manifest
--     INSTALL: UPGRADE-Username Format Preference
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
 p_id=>wwv_flow_api.id(1519413046923675720)
,p_install_id=>wwv_flow_api.id(7488934904666529534)
,p_name=>'Username Format Preference'
,p_sequence=>20
,p_script_type=>'UPGRADE'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    insert into eba_ca_preferences (id, preference_name, preference_value) values (3, ''USERNAME_FORMAT'', ''EMAIL'');',
'exception',
'    when others then',
'        null;',
'end;',
'/'))
);
wwv_flow_api.component_end;
end;
/
