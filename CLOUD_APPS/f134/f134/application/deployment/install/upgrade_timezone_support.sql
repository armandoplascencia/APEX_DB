prompt --application/deployment/install/upgrade_timezone_support
begin
--   Manifest
--     INSTALL: UPGRADE-Timezone Support
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
 p_id=>wwv_flow_api.id(6072261901113175923)
,p_install_id=>wwv_flow_api.id(9012014618759672631)
,p_name=>'Timezone Support'
,p_sequence=>250
,p_script_type=>'UPGRADE'
,p_condition_type=>'NOT_EXISTS'
,p_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select table_name',
'from user_tables',
'where table_name = ''EBA_PROJ_TZ_PREF'''))
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'create table eba_proj_tz_pref (',
'    id                       number        not null',
'                             constraint eba_proj_tz_pref_pk',
'                             primary key,',
'    username                 varchar2(255) not null',
'                             constraint eba_proj_tz_pref_uk',
'                             unique,',
'    timezone_preference      varchar2(255) not null,',
'    --',
'    row_version_number       number                          not null,',
'    created                  timestamp with local time zone  not null,',
'    created_by               varchar2(255)                   not null,',
'    updated                  timestamp with local time zone  not null,',
'    updated_by               varchar2(255)                   not null )',
'/',
'  ',
'create or replace trigger eba_proj_tz_pref_biu',
'    before insert or update on eba_proj_tz_pref',
'    for each row',
'begin',
'    if :new.id is null then',
'        :new.id := to_number(sys_guid(),''XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'');',
'    end if;',
'    if inserting then',
'        :new.created    := localtimestamp;',
'        :new.created_by := nvl(wwv_flow.g_user,user);',
'        :new.row_version_number := 1;',
'    elsif updating then',
'        :new.row_version_number := nvl(:old.row_version_number,1) + 1;',
'    end if;',
'    if :new.timezone_preference is null then',
'        :new.timezone_preference := ''UTC'';',
'    end if;',
'    :new.updated    := localtimestamp;',
'    :new.updated_by := nvl(wwv_flow.g_user,user);',
'    :new.username   := upper(:new.username);',
'end;',
'/',
'',
'alter trigger eba_proj_tz_pref_biu enable;'))
);
wwv_flow_api.component_end;
end;
/
