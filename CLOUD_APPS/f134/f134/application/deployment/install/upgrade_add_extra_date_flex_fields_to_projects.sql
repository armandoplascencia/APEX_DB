prompt --application/deployment/install/upgrade_add_extra_date_flex_fields_to_projects
begin
--   Manifest
--     INSTALL: UPGRADE-add extra date flex fields to projects
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
 p_id=>wwv_flow_api.id(4112873132862484790)
,p_install_id=>wwv_flow_api.id(9012014618759672631)
,p_name=>'add extra date flex fields to projects'
,p_sequence=>770
,p_script_type=>'UPGRADE'
,p_condition_type=>'NOT_EXISTS'
,p_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'  from user_tab_cols',
' where table_name = ''EBA_PROJ_STATUS$''',
'   and column_name = ''PROJECT_FLEX_D12'''))
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'alter table eba_proj_status$ add (',
'    project_flex_d05          timestamp with local time zone,',
'    project_flex_d06          timestamp with local time zone,',
'    project_flex_d07          timestamp with local time zone,',
'    project_flex_d08          timestamp with local time zone,',
'    project_flex_d09          timestamp with local time zone,',
'    project_flex_d10          timestamp with local time zone,',
'    project_flex_d11          timestamp with local time zone,',
'    project_flex_d12          timestamp with local time zone',
');',
'/'))
);
wwv_flow_api.component_end;
end;
/
