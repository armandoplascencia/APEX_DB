prompt --application/deployment/install/install_eba_proj_user_preferences
begin
--   Manifest
--     INSTALL: INSTALL-eba_proj_user_preferences
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
 p_id=>wwv_flow_api.id(5413076158589880157)
,p_install_id=>wwv_flow_api.id(9012014618759672631)
,p_name=>'eba_proj_user_preferences'
,p_sequence=>720
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'create table eba_proj_user_preferences (',
'    id                     number primary key,',
'    username               varchar2(255) not null,',
'    row_version_number     number,',
'    preference_name        varchar2(100) not null,',
'    preference_value       varchar2(4000),',
'    --',
'    created                timestamp(6) with local time zone,',
'    created_by             varchar2(255),',
'    updated                timestamp(6) with local time zone,',
'    updated_by             varchar2(255)',
')',
'/',
'',
'create unique index eba_proj_user_prefs_idx on eba_proj_user_preferences(username, preference_name);',
'',
'create or replace trigger eba_proj_user_preferences_biu',
'   before insert or update on eba_proj_user_preferences',
'   for each row',
'begin',
'    if :new.ID is null then',
'        :new.id := to_number(sys_guid(),''XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'');',
'    end if;',
'    if inserting then',
'       :new.created := localtimestamp;',
'       :new.created_by := nvl(apex_application.g_user,user);',
'       :new.row_version_number := 1;',
'    else',
'       :new.row_version_number := nvl(:old.row_version_number,1) + 1;',
'    end if;',
'',
'    :new.updated := localtimestamp;',
'    :new.updated_by := nvl(apex_application.g_user,user);',
'end;',
'/'))
);
wwv_flow_api.component_end;
end;
/
