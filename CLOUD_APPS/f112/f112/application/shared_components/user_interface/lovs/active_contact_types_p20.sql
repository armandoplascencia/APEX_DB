prompt --application/shared_components/user_interface/lovs/active_contact_types_p20
begin
--   Manifest
--     ACTIVE_CONTACT_TYPES_P20
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>112
,p_default_id_offset=>101618418936909290
,p_default_owner=>'MISO'
);
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(17928101040427975921)
,p_lov_name=>'ACTIVE_CONTACT_TYPES_P20'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select contact_type d, id r',
'  from EBA_CUST_CONTACT_TYPES',
' where is_active = ''Y''',
'    or ID = :P20_CONTACT_TYPE_ID',
'order by 1'))
,p_source_type=>'LEGACY_SQL'
,p_location=>'LOCAL'
);
wwv_flow_api.component_end;
end;
/
