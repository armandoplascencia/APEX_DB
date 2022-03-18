prompt --application/shared_components/user_interface/lovs/status_report_submitter
begin
--   Manifest
--     STATUS REPORT SUBMITTER
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>134
,p_default_id_offset=>172493832712964115
,p_default_owner=>'MISO'
);
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(6181446911043696254)
,p_lov_name=>'STATUS REPORT SUBMITTER'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'     distinct',
'     case',
'         when instr(u.update_owner,''@'') > 0 then',
'             case',
'                 when instr( replace( substr( u.update_owner, 1, instr(u.update_owner,''@'' ) - 1), ''.'', '' '' ), '' '', 1, 2 ) > 0 then',
'                     substr( replace( substr( initcap(u.update_owner), 1, instr(initcap(u.update_owner),''@'' ) - 1), ''.'', '' '' ), 1, instr( replace( substr( initcap(u.update_owner), 1, instr(initcap(u.update_owner),''@'' ) - 1), ''.'', '' '' ), '' '', 1, 1 ) )'
||' ||',
'                     substr( replace( substr( initcap(u.update_owner), 1, instr(initcap(u.update_owner),''@'' ) - 1), ''.'', '' '' ), instr( replace( substr( initcap(u.update_owner), 1, instr(initcap(u.update_owner),''@'' ) - 1), ''.'', '' '' ), '' '', 1, 2 ) )',
'             else',
'                 replace( substr( initcap(u.update_owner), 1, instr(initcap(u.update_owner),''@'' ) - 1), ''.'', '' '' )',
'             end',
'     else',
'         lower(u.update_owner)',
'     end d,',
'     lower(u.update_owner) r',
'from EBA_PROJ_STATUS_RPTS u,',
'     EBA_PROJ_STATUS p',
'where p.id = u.project_id ',
'order by 1'))
,p_source_type=>'LEGACY_SQL'
,p_location=>'LOCAL'
);
wwv_flow_api.component_end;
end;
/
