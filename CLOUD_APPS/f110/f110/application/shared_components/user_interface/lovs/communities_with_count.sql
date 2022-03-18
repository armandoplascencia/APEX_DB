prompt --application/shared_components/user_interface/lovs/communities_with_count
begin
--   Manifest
--     COMMUNITIES, WITH COUNT
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
 p_id=>wwv_flow_api.id(14026493999213308697)
,p_lov_name=>'COMMUNITIES, WITH COUNT'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select d, r',
'from',
'(',
'select name || ',
'       (select count(*) ',
'          from eba_qpoll_resp_comm_ref',
'         where community_id = c.id) d,',
'     id r',
'from EBA_QPOLL_RESP_COMMUNITIES c',
')',
'order by 1'))
,p_source_type=>'LEGACY_SQL'
,p_location=>'LOCAL'
);
wwv_flow_api.component_end;
end;
/
