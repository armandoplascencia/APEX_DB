prompt --application/deployment/install/install_create_table_eba_proj_status_files
begin
--   Manifest
--     INSTALL: INSTALL-create table eba_proj_status_files
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
 p_id=>wwv_flow_api.id(6169342591405292695)
,p_install_id=>wwv_flow_api.id(9012014618759672631)
,p_name=>'create table eba_proj_status_files'
,p_sequence=>300
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'create table eba_proj_status_files$ (',
'    id                      number primary key,',
'    row_version_number      number,',
'    project_id              number references EBA_proj_status$(id) on delete cascade,',
'    --',
'    filename                varchar2(4000),',
'    file_mimetype           varchar2(512),',
'    file_charset            varchar2(512),',
'    file_blob               blob,',
'    file_comments           varchar2(4000),',
'    tags                    varchar2(4000),',
'    gold_yn                 varchar2(1)     default ''N'',',
'    --',
'    associated_milestone    number,',
'    associated_action_item  number,',
'    --',
'    created                 timestamp(6) with local time zone,',
'    created_by              varchar2(255),',
'    updated                 timestamp(6) with local time zone,',
'    updated_by              varchar2(255)',
'    )',
'/',
'',
'create index eba_proj_status_files_i1 on eba_proj_status_files$ (project_id);',
'create index eba_proj_status_files_i2 on eba_proj_status_files$(created);',
'',
'create or replace view eba_proj_status_files as',
'select id, ',
'    row_version_number, ',
'    project_id, ',
'    filename, ',
'    file_mimetype, ',
'    file_charset, ',
'    file_blob, ',
'    file_comments, ',
'    tags,',
'    gold_yn,',
'    associated_milestone, ',
'    associated_action_item, ',
'    created, ',
'    created_by, ',
'    updated, ',
'    updated_by ',
'from eba_proj_status_files$ f',
'where exists ( select null from eba_proj_status ps where ps.id = f.project_id );'))
);
wwv_flow_api.component_end;
end;
/
