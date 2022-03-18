prompt --application/shared_components/user_interface/lovs/communities_p72
begin
--   Manifest
--     COMMUNITIES, P72
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
 p_id=>wwv_flow_api.id(14098505586391840556)
,p_lov_name=>'COMMUNITIES, P72'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select d, r',
'  from',
'(',
'select name || '' (member count: ''|| (select count(*) ',
'                                       from eba_qpoll_resp_comm_ref rc',
'                                      where rc.community_id = c.id) ||'')'' d,',
'       id r',
'from EBA_QPOLL_RESP_COMMUNITIES c',
'where publish_yn = ''Y''',
'  and id not in',
'      (select community_id',
'         from eba_qpoll_comm_invites',
'        where poll_id = :P72_POLL_ID',
'          and community_id is not null)',
'union',
'select name ||'' (added since last invitation: ''|| cnt ||'')'' d,',
'       id r',
'from',
'(',
'select c.id, c.name, count(*) cnt',
'  from eba_qpoll_resp_communities c,',
'       eba_qpoll_resp_comm_ref rc',
' where exists (select 1 from eba_qpoll_comm_invites ci',
'                where ci.poll_id = :P72_POLL_ID',
'                  and ci.community_id = c.id)',
'   and c.id = rc.community_id',
'   and c.publish_yn = ''Y''',
'   and rc.respondent_id not in ',
'       (select respondent_id',
'          from eba_qpoll_invites i,',
'               eba_qpoll_comm_invites ci2',
'         where i.comm_invite_id = ci2.id',
'           and ci2.community_id = c.id',
'           and ci2.poll_id = :P72_POLL_ID',
'           and ci2.community_id is not null)',
'group by c.id, c.name',
')',
'where cnt > 0',
')',
'order by 1'))
,p_source_type=>'LEGACY_SQL'
,p_location=>'LOCAL'
);
wwv_flow_api.component_end;
end;
/
