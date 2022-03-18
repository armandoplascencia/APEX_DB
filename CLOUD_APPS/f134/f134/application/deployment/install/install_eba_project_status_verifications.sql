prompt --application/deployment/install/install_eba_project_status_verifications
begin
--   Manifest
--     INSTALL: INSTALL-eba_project_status_verifications
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
 p_id=>wwv_flow_api.id(6172838008600089571)
,p_install_id=>wwv_flow_api.id(9012014618759672631)
,p_name=>'eba_project_status_verifications'
,p_sequence=>630
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'create table eba_proj_status_verifications (',
'    id                   number primary key,',
'    project_id           number references eba_proj_status$ ( id ) on delete cascade,',
'    verified_by          varchar2(255) not null,',
'    verification_comment varchar2(4000),',
'    created              timestamp(6) with local time zone,',
'    created_by           varchar2(255),',
'    updated              timestamp(6) with local time zone,',
'    updated_by           varchar2(255)',
')',
'/',
'',
'create index eba_proj_status_ver_i1 on eba_proj_status_verifications (project_id)',
'/',
'',
'create or replace trigger eba_eba_proj_status_ver',
'    before insert or update on eba_proj_status_verifications',
'    for each row',
'begin',
'    if :new.id is null then',
'        :new.id := to_number(sys_guid(),''XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'');',
'    end if;',
'    if inserting then',
'        :new.created := localtimestamp;',
'        :new.created_by := nvl(apex_application.g_user,user);',
'    end if;',
'    if inserting or updating then',
'        :new.updated := localtimestamp;',
'        :new.updated_by := nvl(apex_application.g_user,user);',
'    end if;',
'end;',
'/',
'alter trigger eba_eba_proj_status_ver enable',
'/',
'',
'create or replace trigger aiu_eba_proj_status_ver',
'    after insert or update on eba_proj_status_verifications',
'    for each row',
'begin',
'    --',
'    -- cascade update to project',
'    --',
'    update eba_proj_status set updated = localtimestamp',
'    where  id = :new.project_id;',
'end;',
'/',
'alter trigger aiu_eba_proj_status_ver enable',
'/'))
);
wwv_flow_api.component_end;
end;
/
