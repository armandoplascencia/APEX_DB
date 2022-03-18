prompt --application/shared_components/user_interface/lovs/contacts
begin
--   Manifest
--     CONTACTS
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>126
,p_default_id_offset=>101651461840938715
,p_default_owner=>'MISO'
);
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(1713320957050003221)
,p_lov_name=>'CONTACTS'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select initcap(replace(decode(instr(username, ''@''), 0, username, substr(username, 1, instr(username, ''@'') - 1)), ''.'', '' ''))  d, upper(username) r',
'from eba_ca_users u',
'where exists (select ''x''',
'              from eba_ca_events e',
'              where instr(upper(e.contact_email), u.username) > 0',
'             )',
'order by 1',
''))
,p_source_type=>'LEGACY_SQL'
,p_location=>'LOCAL'
);
wwv_flow_api.component_end;
end;
/
