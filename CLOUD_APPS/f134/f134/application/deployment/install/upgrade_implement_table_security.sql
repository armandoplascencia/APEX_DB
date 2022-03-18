prompt --application/deployment/install/upgrade_implement_table_security
begin
--   Manifest
--     INSTALL: UPGRADE-Implement table security
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
 p_id=>wwv_flow_api.id(11140481911738632376)
,p_install_id=>wwv_flow_api.id(9012014618759672631)
,p_name=>'Implement table security'
,p_sequence=>10
,p_script_type=>'UPGRADE'
,p_condition_type=>'EXISTS'
,p_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'from user_tables',
'where table_name = ''EBA_PROJ_STATUS'''))
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-- Create New ACL Tables',
'create table eba_proj_roles (',
'    id                       number primary key,',
'    name                     varchar2(32) not null,',
'    default_acl_status_level number default 1 not null,',
'    --',
'    created            timestamp(6) with local time zone,',
'    created_by         varchar2(255),',
'    updated            timestamp(6) with local time zone,',
'    updated_by         varchar2(255)',
')',
'/',
'',
'create unique index eba_proj_roles_u1 on eba_proj_roles( upper(name) );',
'',
'create or replace trigger eba_proj_roles_biu',
'    before insert or update on eba_proj_roles',
'    for each row',
'begin',
'    if :new.id is null then',
'        :new.id := to_number(sys_guid(),''XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'');',
'    end if;',
'    if inserting then',
'        :new.created := localtimestamp;',
'        :new.created_by := nvl(wwv_flow.g_user,user);',
'    end if;',
'    :new.updated := localtimestamp;',
'    :new.updated_by := nvl(wwv_flow.g_user,user);    ',
'end;',
'/',
'alter trigger eba_proj_roles_biu enable',
'/',
'',
'insert into eba_proj_roles (id, name, default_acl_status_level) values (1, ''Achitect'', 1);',
'insert into eba_proj_roles (id, name, default_acl_status_level) values (2, ''Contributor'', 1);',
'insert into eba_proj_roles (id, name, default_acl_status_level) values (3, ''Developer'', 1);',
'insert into eba_proj_roles (id, name, default_acl_status_level) values (4, ''Development Lead'', 1);',
'insert into eba_proj_roles (id, name, default_acl_status_level) values (5, ''Interested Party'', 1);',
'insert into eba_proj_roles (id, name, default_acl_status_level) values (6, ''Integrator'', 1); ',
'insert into eba_proj_roles (id, name, default_acl_status_level) values (7, ''Product Manager'', 1);',
'insert into eba_proj_roles (id, name, default_acl_status_level) values (8, ''Project Manager'', 1);',
'insert into eba_proj_roles (id, name, default_acl_status_level) values (9, ''Release manager'', 1);',
'insert into eba_proj_roles (id, name, default_acl_status_level) values (10, ''Legal'', 1); ',
'insert into eba_proj_roles (id, name, default_acl_status_level) values (11, ''QA / Test'', 1);',
'insert into eba_proj_roles (id, name, default_acl_status_level) values (12, ''Unknown'', 1);',
'commit;',
'',
'-- Involvement Levels',
'create table eba_proj_involvement_levels (',
'    id                      number primary key,',
'    involvement_level       varchar2(50),',
'    involvement_description varchar2(4000),',
'    percentage              number not null,',
'    display_sequence        number,',
'    --',
'    created                timestamp(6) with local time zone,',
'    created_by             varchar2(255),',
'    updated                timestamp(6) with local time zone,',
'    updated_by             varchar2(255)',
'    )',
'/',
'',
'create or replace trigger eba_proj_invlvmnt_levels_biu',
'    before insert or update on eba_proj_involvement_levels',
'    for each row',
'begin',
'    if :new.id is null then',
'        :new.id := to_number(sys_guid(),''XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'');',
'    end if;',
'    if inserting then',
'        :new.created := localtimestamp;',
'        :new.created_by := nvl(wwv_flow.g_user,user);',
'    end if;',
'    :new.updated := localtimestamp;',
'    :new.updated_by := nvl(wwv_flow.g_user,user);    ',
'end;',
'/',
'',
'alter trigger eba_proj_invlvmnt_levels_biu enable',
'/',
'',
'insert into eba_proj_involvement_levels (involvement_level, involvement_description, percentage, display_sequence)',
'values (''Full'', '''', 100, 10);',
'insert into eba_proj_involvement_levels (involvement_level, involvement_description, percentage, display_sequence)',
'values (''Half'', '''', 50, 20);',
'insert into eba_proj_involvement_levels (involvement_level, involvement_description, percentage, display_sequence)',
'values (''Quarter'', '''', 25, 30);',
'insert into eba_proj_involvement_levels (involvement_level, involvement_description, percentage, display_sequence)',
'values (''Partial'', '''', 10, 40);',
'',
'-- Project/User Reference table',
'create table eba_proj_user_ref (',
'    id number primary key,',
'    user_id    number not null,',
'    project_id number not null,',
'    role_id    number not null,',
'    acl_status_level  number',
'        constraint eba_proj_user_ref_ck_acl',
'            check( acl_status_level in (1, 2, 3) ),',
'    involvement_level_id number,',
'    notes      varchar2(4000),',
'    --',
'    created    timestamp(6) with local time zone,',
'    created_by varchar2(255),',
'    updated    timestamp(6) with local time zone,',
'    updated_by varchar2(255),',
'    --',
'    constraint eba_proj_user_ref_user_fk',
'        foreign key ( user_id )',
'        references eba_proj_status_users( id ) on delete cascade,',
'    constraint eba_proj_user_ref_proj_fk',
'        foreign key ( project_id )',
'        references eba_proj_status( id ) on delete cascade,',
'    constraint eba_proj_user_ref_inv_fk',
'        foreign key ( involvement_level_id )',
'        references eba_proj_involvement_levels( id ),',
'    -- We don''t want to allow a role to be deleted if it''s assigned.',
'    constraint eba_proj_user_ref_role_fk',
'        foreign key ( role_id )',
'        references eba_proj_roles( id )',
')',
'/',
'',
'create unique index eba_proj_user_ref_u1 on eba_proj_user_ref( user_id, project_id, role_id );',
'create index eba_proj_user_ref_n1 on eba_proj_user_ref( user_id );',
'create index eba_proj_user_ref_n2 on eba_proj_user_ref( project_id );',
'create index eba_proj_user_ref_n3 on eba_proj_user_ref( role_id );',
'',
'create or replace trigger eba_proj_user_ref_biu',
'    before insert or update on eba_proj_user_ref',
'    for each row',
'begin',
'    if :new.id is null then',
'        :new.id := to_number(sys_guid(),''XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'');',
'    end if;',
'    if inserting then',
'        :new.created := localtimestamp;',
'        :new.created_by := nvl(wwv_flow.g_user,user);',
'    end if;',
'    if :new.project_id is not null then',
'        update eba_proj_status set updated = localtimestamp where id = :new.project_id;',
'    end if;',
'    :new.updated := localtimestamp;',
'    :new.updated_by := nvl(wwv_flow.g_user,user);    ',
'end;',
'/',
'alter trigger eba_proj_user_ref_biu enable',
'/',
'',
'-- Update Old Tables',
'begin',
'    for c1 in ( select table_name t',
'                from user_tables',
'                where table_name in (',
'                        ''EBA_PROJ_HISTORY'',',
'                        ''EBA_PROJ_RESOURCES'',',
'                        ''EBA_PROJ_STATUS'',',
'                        ''EBA_PROJ_STATUS_AIS'',',
'                        ''EBA_PROJ_STATUS_AI_CMNTS'',',
'                        ''EBA_PROJ_STATUS_CLICKS'',',
'                        ''EBA_PROJ_STATUS_FILES'',',
'                        ''EBA_PROJ_STATUS_ISSUES'',',
'                        ''EBA_PROJ_STATUS_LINKS'',',
'                        ''EBA_PROJ_STATUS_MS'',',
'                        ''EBA_PROJ_STATUS_REPORTS'',',
'                        ''EBA_PROJ_STATUS_RPTS'',',
'                        ''EBA_PROJ_STATUS_RPT_PROJ_UPD'',',
'                        ''EBA_PROJ_STATUS_UPDATES'',',
'                        ''EBA_PROJ_TAGS''',
'                    ) ) loop',
'        execute immediate ''alter table ''||c1.t||'' rename to ''||c1.t||''$'';',
'    end loop;',
'end;',
'/',
'',
'drop  table eba_proj_tags_type_sum;',
'drop  table eba_proj_tags_sum;',
'',
'alter table eba_proj_status$',
'    add (acl_status_level       number default 1 not null',
'             constraint eba_proj_status_ck_acl',
'                 check ( acl_status_level in (1, 2, 3) ),',
'         is_deleted_yn varchar2(1) default ''N'' not null',
'             constraint eba_proj_status_ck_del',
'                 check ( is_deleted_yn in (''Y'',''N'') )',
'    );'))
);
wwv_flow_api.component_end;
end;
/
