prompt --application/deployment/install/install_status_rpts_table
begin
--   Manifest
--     INSTALL: INSTALL-Status_rpts table
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
 p_id=>wwv_flow_api.id(6170163410125663389)
,p_install_id=>wwv_flow_api.id(9012014618759672631)
,p_name=>'Status_rpts table'
,p_sequence=>420
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'create table eba_proj_status_rpts$ (',
'    id                      number primary key,',
'    row_version_number      number,',
'    row_key                 varchar2(30),',
'    project_id              number references eba_proj_status$(id) on delete cascade not null,',
'    status_title            varchar2(255)  not null,',
'    status_update           clob,',
'    update_date             timestamp(6) with local time zone not null,',
'    update_owner            varchar2(255)  not null,',
'    viewable_by             varchar2(255)  not null,',
'    editable_by             varchar2(255)  not null,',
'    --',
'    created                 timestamp(6) with local time zone,',
'    created_by              varchar2(255),',
'    updated                 timestamp(6) with local time zone,',
'    updated_by              varchar2(255)',
'    )',
'/',
'',
'create index eba_proj_status_rpts_i1 on eba_proj_status_rpts$(project_id);',
'create index eba_proj_status_rpts_i2 on eba_proj_status_rpts$(update_owner);',
'create index eba_proj_status_rpts_i3 on eba_proj_status_rpts$(created);',
'',
'create or replace view eba_proj_status_rpts as',
'select id, ',
'    row_version_number, ',
'    row_key, ',
'    project_id, ',
'    status_title, ',
'    status_update, ',
'    update_date, ',
'    update_owner, ',
'    viewable_by, ',
'    editable_by, ',
'    created, ',
'    created_by, ',
'    updated, ',
'    updated_by ',
'from eba_proj_status_rpts$ r',
'where exists ( select null from eba_proj_status ps where ps.id = r.project_id );'))
);
wwv_flow_api.component_end;
end;
/
