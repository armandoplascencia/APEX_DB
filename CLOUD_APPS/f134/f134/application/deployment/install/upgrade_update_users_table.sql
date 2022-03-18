prompt --application/deployment/install/upgrade_update_users_table
begin
--   Manifest
--     INSTALL: UPGRADE-Update Users Table
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
 p_id=>wwv_flow_api.id(2770574741263431425)
,p_install_id=>wwv_flow_api.id(9012014618759672631)
,p_name=>'Update Users Table'
,p_sequence=>1220
,p_script_type=>'UPGRADE'
,p_condition_type=>'NOT_EXISTS'
,p_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'from user_tab_cols',
'where table_name = ''EBA_PROJ_STATUS_USERS''',
'    and column_name = ''HIPPA_CERT_DATE'''))
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'alter table eba_proj_status_users add (',
'    country_id      number        references eba_proj_countries on delete set null,',
'    region_id       number        references eba_proj_regions   on delete set null,',
'    home_timezone   varchar2(50),',
'    team_groups     varchar2(255),',
'    skillsets       varchar2(255),',
'    bg_checks       varchar2(255),',
'    hippa_cert_date timestamp with local time zone',
');'))
);
wwv_flow_api.component_end;
end;
/
