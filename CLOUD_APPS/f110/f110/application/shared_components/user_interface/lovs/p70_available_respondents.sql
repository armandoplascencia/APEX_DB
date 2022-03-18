prompt --application/shared_components/user_interface/lovs/p70_available_respondents
begin
--   Manifest
--     P70 AVAILABLE RESPONDENTS
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>110
,p_default_id_offset=>101599614921830918
,p_default_owner=>'MISO'
);
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(14026751405080382493)
,p_lov_name=>'P70 AVAILABLE RESPONDENTS'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select nvl(name,email) || '' ('' || lower(email) || '')'' d, id r',
'from   EBA_QPOLL_RESPONDENTS',
'where id not in (select respondent_id from EBA_QPOLL_RESP_COMM_REF where community_id = :P70_COMMUNITY_ID_TO)',
'order by lower(nvl(name,email))'))
,p_source_type=>'LEGACY_SQL'
,p_location=>'LOCAL'
);
wwv_flow_api.component_end;
end;
/
