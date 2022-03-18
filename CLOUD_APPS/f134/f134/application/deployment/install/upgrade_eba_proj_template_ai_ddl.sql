prompt --application/deployment/install/upgrade_eba_proj_template_ai_ddl
begin
--   Manifest
--     INSTALL: UPGRADE-eba_proj_template_ai DDL
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
 p_id=>wwv_flow_api.id(13597239941415902491)
,p_install_id=>wwv_flow_api.id(9012014618759672631)
,p_name=>'eba_proj_template_ai DDL'
,p_sequence=>510
,p_script_type=>'UPGRADE'
,p_condition_type=>'NOT_EXISTS'
,p_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'from user_tables',
'where table_name = ''EBA_PROJ_TEMPLATE_AI'''))
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'create table eba_proj_template_ai',
'(',
'    id                   number,',
'    template_id          number                          not null,',
'    name                 varchar2(255)                   not null,',
'    row_version          number,',
'    description          varchar2(4000),',
'    owner                varchar2(255),',
'    due_date_offset      number                          not null,',
'    type_id              number,',
'    milestone_id         number,',
'    link_url             varchar2(255),',
'    link_text            varchar2(255),',
'    created              timestamp with local time zone,',
'    created_by           varchar2(255),',
'    updated              timestamp with local time zone,',
'    updated_by           varchar2(255),',
'    inc_in_status_eml_yn varchar2(1)                     default ''Y'',',
'    constraint eba_proj_templates_ai_pk primary key (id),',
'    constraint eba_proj_template_ai_tmpl_fk',
'        foreign key (template_id)',
'        references eba_proj_templates (id)',
'        on delete cascade,',
'    constraint eba_proj_template_ai_ms_fk',
'        foreign key (milestone_id)',
'        references eba_proj_template_ms (id)',
'        on delete set null,',
'    constraint eba_proj_template_ai_type_fk',
'        foreign key (type_id)',
'        references eba_proj_status_ais_types (id)',
')',
'/',
'',
'create or replace trigger biu_eba_proj_template_ai',
'    before insert or update on eba_proj_template_ai',
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
'alter trigger biu_eba_proj_template_ai enable',
'/',
'',
'alter table eba_proj_status_ais$ add (template_id number)',
'/',
'',
'/*',
'-- Removing this foreign key constraint to resolve bug 28011908',
'-- Allan 19-JUN-2018',
'alter table eba_proj_status_ais$',
'add ( template_id number,',
'    constraint eba_proj_status_ai_temp_fk foreign key ( template_id )',
'        references eba_proj_template_ai(id) on delete set null );',
'*/'))
);
wwv_flow_api.component_end;
end;
/
