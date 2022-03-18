prompt --application/deployment/install/install_create_table_eba_proj_status_ai_cmnts
begin
--   Manifest
--     INSTALL: INSTALL-create table  eba_proj_status_ai_cmnts
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
 p_id=>wwv_flow_api.id(6169347179892308280)
,p_install_id=>wwv_flow_api.id(9012014618759672631)
,p_name=>'create table  eba_proj_status_ai_cmnts'
,p_sequence=>340
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'create table  eba_proj_status_ai_cmnts$ (',
'    id number primary key,',
'    row_version_number number,',
'    action_item_id number references eba_proj_status_ais$( id ) on delete cascade,',
'    comment_text clob,',
'    created timestamp(6) with local time zone,',
'    created_by varchar2(255),',
'    updated timestamp(6) with local time zone,',
'    updated_by varchar2(255)',
'   )',
'/',
'',
'create index eba_proj_status_ai_cmnts_n1 on eba_proj_status_ai_cmnts$ (action_item_id)',
'/',
'',
'create or replace view eba_proj_status_ai_cmnts as',
'select id, ',
'    row_version_number, ',
'    action_item_id, ',
'    comment_text, ',
'    created, ',
'    created_by, ',
'    updated, ',
'    updated_by ',
'from eba_proj_status_ai_cmnts$ ac',
'where exists (select null from eba_proj_status_ais ai where ai.id = ac.action_item_id );'))
);
wwv_flow_api.component_end;
end;
/
