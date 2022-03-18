prompt --application/shared_components/user_interface/lovs/email_groups_with_cnt
begin
--   Manifest
--     EMAIL GROUPS WITH CNT
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
 p_id=>wwv_flow_api.id(8108515424364492870)
,p_lov_name=>'EMAIL GROUPS WITH CNT'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select name || '' ('' || cnt  || ',
'          case when cnt = 1 then '' member)''',
'               else '' members)'' end d, ',
'       group_id r ',
'  from (',
'select g.group_id,',
'       g.group_name name,',
'       count(*) cnt    ',
'  from EBA_ca_email_groups g, ',
'       EBA_ca_email_group_mbrs m',
' where m.group_id = g.group_id',
' group by g.group_id, g.group_name',
')',
'order by name'))
,p_source_type=>'LEGACY_SQL'
,p_location=>'LOCAL'
);
wwv_flow_api.component_end;
end;
/
