prompt --application/deployment/install/upgrade_add_issue_levels
begin
--   Manifest
--     INSTALL: UPGRADE-Add Issue Levels
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
 p_id=>wwv_flow_api.id(228678018774337836)
,p_install_id=>wwv_flow_api.id(9012014618759672631)
,p_name=>'Add Issue Levels'
,p_sequence=>1380
,p_script_type=>'UPGRADE'
,p_condition_type=>'NOT_EXISTS'
,p_condition=>'select null from user_tables where table_name = ''EBA_PROJ_ISSUE_LEVELS'''
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-- Create the new issue level look-up table',
'create table eba_proj_issue_levels (',
'    id                     number primary key,',
'    name                   varchar2(255) unique not null,',
'    description            varchar2(4000),',
'    is_active_yn           varchar2(1),',
'    --',
'    created                timestamp(6) with local time zone,',
'    created_by             varchar2(255),',
'    updated                timestamp(6) with local time zone,',
'    updated_by             varchar2(255)',
')',
'/',
'',
'-- Create the new issue level biu trigger',
'create or replace trigger biu_eba_proj_issue_levels',
'    before insert or update on eba_proj_issue_levels',
'    for each row',
'begin',
'    if :new.id is null then',
'        :new.id := to_number(sys_guid(),''XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'');',
'    end if;',
'    if inserting then',
'        :new.created := localtimestamp;',
'        :new.created_by := nvl(wwv_flow.g_user,user);',
'    end if;',
'    if inserting or updating then',
'        :new.updated := localtimestamp;',
'        :new.updated_by := nvl(wwv_flow.g_user,user);',
'    end if;',
'end;',
'/',
'',
'-- Enable the new issue category biu trigger',
'alter trigger biu_eba_proj_issue_levels enable',
'/',
'',
'-- Populate the issue category new look-up table',
'begin',
'    insert into eba_proj_issue_levels (id, name, description, is_active_yn) values (1,''Critical'','''',''Y'');',
'    insert into eba_proj_issue_levels (id, name, description, is_active_yn) values (2,''Elevated'','''',''Y'');',
'    insert into eba_proj_issue_levels (id, name, description, is_active_yn) values (3,''Important'','''',''Y'');',
'    insert into eba_proj_issue_levels (id, name, description, is_active_yn) values (4,''Tracking'','''',''Y'');',
'end;',
'/'))
);
wwv_flow_api.component_end;
end;
/
