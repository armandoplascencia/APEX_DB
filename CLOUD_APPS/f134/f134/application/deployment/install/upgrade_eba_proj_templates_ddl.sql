prompt --application/deployment/install/upgrade_eba_proj_templates_ddl
begin
--   Manifest
--     INSTALL: UPGRADE-eba_proj_templates DDL
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
 p_id=>wwv_flow_api.id(13596654140031652120)
,p_install_id=>wwv_flow_api.id(9012014618759672631)
,p_name=>'eba_proj_templates DDL'
,p_sequence=>490
,p_script_type=>'UPGRADE'
,p_condition_type=>'NOT_EXISTS'
,p_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'from user_tables',
'where table_name = ''EBA_PROJ_TEMPLATES'''))
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'create table eba_proj_templates',
'(',
'    id                number,',
'    name              varchar2(255) not null,',
'    restrict_edits_yn varchar2(1) default ''N'' not null,',
'    row_version       number,',
'    --',
'    created           timestamp with local time zone,',
'    created_by        varchar2(255),',
'    updated           timestamp with local time zone,',
'    updated_by        varchar2(255),',
'    constraint eba_proj_templates_pk primary key (id)',
')',
'/',
'',
'create or replace trigger biu_eba_proj_templates',
'    before insert or update on eba_proj_templates',
'    for each row',
'begin',
'    if :new.id is null then',
'        :new.id := to_number(sys_guid(),''XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'');',
'    end if;',
'    if inserting then',
'        if :new.created is null then',
'            :new.created := localtimestamp;',
'        end if;',
'        if :new.created_by is null then',
'            :new.created_by := nvl(wwv_flow.g_user, user);',
'        end if;',
'        :new.row_version := 1;',
'    else',
'        :new.row_version := nvl(:old.row_version, 1) + 1;',
'    end if;',
'    :new.updated := localtimestamp;',
'    :new.updated_by := nvl(wwv_flow.g_user,user);',
'end;',
'/',
'',
'alter trigger biu_eba_proj_templates enable;',
'/',
'',
'alter table eba_proj_status$',
'add ( template_id number,',
'    constraint eba_proj_status_temp_fk foreign key ( template_id )',
'        references eba_proj_templates(id) on delete set null );',
'/'))
);
wwv_flow_api.component_end;
end;
/
