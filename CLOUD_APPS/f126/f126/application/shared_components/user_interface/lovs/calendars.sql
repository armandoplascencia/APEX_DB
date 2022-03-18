prompt --application/shared_components/user_interface/lovs/calendars
begin
--   Manifest
--     CALENDARS
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
 p_id=>wwv_flow_api.id(1938896976341493348)
,p_lov_name=>'CALENDARS'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select short_name || '' - '' || calendar_name || decode(public_view_yn, ''Y'', null, '' (Private)'') d',
', calendar_id r',
'from eba_ca_calendars c',
'where public_view_yn = ''Y''',
'or    exists (select ''x''',
'              from eba_ca_users u',
'              where u.username = :APP_USER',
'              and   (   instr(u.restricted_to, c.calendar_id) > 0',
'                     or (access_level_id = 3 and restricted_to is null)',
'                    )',
'             ) ',
'order by 1'))
,p_source_type=>'LEGACY_SQL'
,p_location=>'LOCAL'
);
wwv_flow_api.component_end;
end;
/
