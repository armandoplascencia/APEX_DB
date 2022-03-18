prompt --application/deployment/install/upgrade_eba_proj_status_issues_view
begin
--   Manifest
--     INSTALL: UPGRADE-eba_proj_status_issues view
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>134
,p_default_id_offset=>172493832712964115
,p_default_owner=>'MISO'
);
wwv_flow_api.create_install_script(
 p_id=>wwv_flow_api.id(252033380324883099)
,p_install_id=>wwv_flow_api.id(9012014618759672631)
,p_name=>'eba_proj_status_issues view'
,p_sequence=>1410
,p_script_type=>'UPGRADE'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'create or replace view eba_proj_status_issues as',
'select id,',
'    row_version_number,',
'    row_key,',
'    resolution,',
'    project_id,',
'    cat_id,',
'    ref_num,',
'    issue,',
'    issue_detail,',
'    owner_role_id,',
'    issue_owner,',
'    issue_level,',
'    link_01,',
'    link_02,',
'    link_03,',
'    link_04,',
'    link_05,',
'    link_06,',
'    link_07,',
'    link_08,',
'    link_name_01,',
'    link_name_02,',
'    link_name_03,',
'    link_name_04,',
'    link_name_05,',
'    link_name_06,',
'    link_name_07,',
'    link_name_08,',
'    is_open,',
'    resolved_on,',
'    tags,',
'    created,',
'    created_by,',
'    updated,',
'    updated_by',
'from eba_proj_status_issues$ i',
'where exists ( select null from eba_proj_status ps where ps.id = i.project_id );',
'/'))
);
wwv_flow_api.component_end;
end;
/
