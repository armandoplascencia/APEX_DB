prompt --application/deployment/install/install_favorites_table
begin
--   Manifest
--     INSTALL: INSTALL-Favorites Table
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
 p_id=>wwv_flow_api.id(5864396793468123869)
,p_install_id=>wwv_flow_api.id(9012014618759672631)
,p_name=>'Favorites Table'
,p_sequence=>410
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'create table eba_proj_status_favorites (',
'    id           number primary key,',
'    user_name    varchar2(255) not null,',
'    content_id   number not null,',
'    content_type varchar2(30) not null',
'                 constraint eba_proj_status_fav_ck check',
'                     (content_type in (''PROJECT'',''ACTION ITEM''))',
'    )',
'/',
'create unique index eba_proj_status_fav_u1',
'    on eba_proj_status_favorites ( user_name, content_id, content_type );',
'/',
'',
'create or replace trigger biu_eba_proj_status_favorites',
'    before insert or update on eba_proj_status_favorites',
'    for each row',
'begin',
'    if :new.id is null then',
'        :new.id := to_number(sys_guid(),''XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'');',
'    end if;',
'',
'    if :new.user_name is null then',
'        :new.user_name := nvl(v(''APP_USER''),USER);',
'    end if;',
'    :new.user_name := upper(:new.user_name);',
'end;',
'/',
'show errors',
''))
);
wwv_flow_api.component_end;
end;
/
