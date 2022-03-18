prompt --application/deployment/install/install_create_table_eba_proj_status_links
begin
--   Manifest
--     INSTALL: INSTALL-create table eba_proj_status_links
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
 p_id=>wwv_flow_api.id(6169341479845279870)
,p_install_id=>wwv_flow_api.id(9012014618759672631)
,p_name=>'create table eba_proj_status_links'
,p_sequence=>220
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'create table eba_proj_status_links$ (',
'    id                      number primary key,',
'    row_version_number      number,',
'    project_id              number references EBA_proj_status$(id) on delete cascade,',
'    link_target             varchar2(4000),',
'    link_text               varchar2(255),',
'    link_comments           varchar2(4000),',
'    include_by_default_yn   varchar2(1),',
'    gold_yn                 varchar2(1)     default ''N'',',
'    tags                    varchar2(4000),',
'    --',
'    created                timestamp(6) with local time zone,',
'    created_by             varchar2(255),',
'    updated                timestamp(6) with local time zone,',
'    updated_by             varchar2(255)',
'    )',
'/',
'',
'create index eba_proj_status_links_i1 on eba_proj_status_links$(project_id);',
'create index eba_proj_status_links_i2 on eba_proj_status_links$(created);',
'',
'create or replace view eba_proj_status_links as',
'select id, ',
'    row_version_number, ',
'    project_id, ',
'    link_target, ',
'    link_text, ',
'    link_comments, ',
'    include_by_default_yn,',
'    gold_yn,',
'    tags, ',
'    created, ',
'    created_by, ',
'    updated, ',
'    updated_by ',
'from eba_proj_status_links$ l',
'where exists ( select null from eba_proj_status ps where ps.id = l.project_id );'))
);
wwv_flow_api.component_end;
end;
/
