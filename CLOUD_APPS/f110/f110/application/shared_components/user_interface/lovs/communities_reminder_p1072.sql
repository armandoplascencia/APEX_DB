prompt --application/shared_components/user_interface/lovs/communities_reminder_p1072
begin
--   Manifest
--     COMMUNITIES, REMINDER, P1072
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
 p_id=>wwv_flow_api.id(14131689502216795913)
,p_lov_name=>'COMMUNITIES, REMINDER, P1072'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select name || '' (''|| not_resp || ''  not responded)'' d,',
'       community_id r',
'  from',
'(',
'select nvl(ci.community_id,0) community_id,',
'       nvl(ci.community_name,''Individual Invitations'') name,',
'       count(*) not_resp',
'  from eba_qpoll_comm_invites ci,',
'       eba_qpoll_invites i',
' where ci.poll_id = :P1072_POLL_ID',
'   and ci.id = i.comm_invite_id',
'   and i.respondent_id not in',
'       (select respondent_id',
'          from eba_qpoll_results r',
'         where r.poll_id = :P1072_POLL_ID',
'           and r.IS_VALID_YN = ''Y'')',
' group by community_id, nvl(community_name,''Individual Invitations'')',
')',
' order by 1'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'R'
,p_display_column_name=>'D'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
);
wwv_flow_api.component_end;
end;
/
