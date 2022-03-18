prompt --application/shared_components/user_interface/lovs/event_types_for_main_cal
begin
--   Manifest
--     EVENT TYPES FOR MAIN CAL
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
 p_id=>wwv_flow_api.id(8049865235926809051)
,p_lov_name=>'EVENT TYPES FOR MAIN CAL'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select type_name || decode(:EXTERNAL_INTERNAL_BO, ''Include'', decode(internal_yn, ''Y'', '' (Internal Only)'', null), null) d, type_id r',
'  from EBA_ca_event_types',
'where (:EXTERNAL_INTERNAL_BO = ''Exclude''',
'       or (   nvl(internal_yn, ''N'') = ''N''',
'           or upper(:APP_USER) in (select upper(username) from eba_ca_users)',
'          )',
'      )',
' order by type_name'))
,p_source_type=>'LEGACY_SQL'
,p_location=>'LOCAL'
);
wwv_flow_api.component_end;
end;
/
