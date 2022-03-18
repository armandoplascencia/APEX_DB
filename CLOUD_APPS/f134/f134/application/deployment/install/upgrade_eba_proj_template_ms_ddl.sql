prompt --application/deployment/install/upgrade_eba_proj_template_ms_ddl
begin
--   Manifest
--     INSTALL: UPGRADE-eba_proj_template_ms DDL
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
 p_id=>wwv_flow_api.id(13597212196997845698)
,p_install_id=>wwv_flow_api.id(9012014618759672631)
,p_name=>'eba_proj_template_ms DDL'
,p_sequence=>500
,p_script_type=>'UPGRADE'
,p_condition_type=>'NOT_EXISTS'
,p_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'from user_tables',
'where table_name = ''EBA_PROJ_TEMPLATE_MS'''))
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'create table eba_proj_template_ms',
'(',
'    id                  number,',
'    parent_milestone_id number,',
'    template_id         number                          not null,',
'    name                varchar2(255)                   not null,',
'    row_version         number,',
'    description         varchar2(4000),',
'    owner               varchar2(255),',
'    start_date_offset   number                          not null,',
'    due_date_offset     number                          not null,',
'    is_major_yn         varchar2(1),',
'    created             timestamp with local time zone,',
'    created_by          varchar2(255),',
'    updated             timestamp with local time zone,',
'    updated_by          varchar2(255),',
'    constraint eba_proj_templates_ms_pk primary key (id),',
'    constraint eba_proj_template_ms_tmpl_fk',
'        foreign key (template_id)',
'        references eba_proj_templates (id)',
'        on delete cascade,',
'    constraint eba_proj_template_ms_tmplms_fk',
'        foreign key (parent_milestone_id)',
'        references eba_proj_template_ms(id)',
'        on delete set null',
')',
'/',
'',
'create or replace trigger biu_eba_proj_template_ms',
'    before insert or update on eba_proj_template_ms',
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
'    :new.updated_by := nvl(wwv_flow.g_user, user);',
'end;',
'/',
'',
'alter trigger biu_eba_proj_template_ms enable',
'/',
'',
'alter table eba_proj_status_ms$',
'add ( template_id number,',
'    constraint eba_proj_status_ms_temp_fk foreign key ( template_id )',
'        references eba_proj_template_ms(id) on delete set null );',
'/'))
);
wwv_flow_api.component_end;
end;
/
