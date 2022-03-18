prompt --application/deployment/install/upgrade_flex_static_lovs_table_and_trigger
begin
--   Manifest
--     INSTALL: UPGRADE-Flex Static LOVs table and trigger
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
 p_id=>wwv_flow_api.id(6243874883828757400)
,p_install_id=>wwv_flow_api.id(9012014618759672631)
,p_name=>'Flex Static LOVs table and trigger'
,p_sequence=>350
,p_script_type=>'UPGRADE'
,p_condition_type=>'NOT_EXISTS'
,p_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'from user_tables',
'where table_name = ''EBA_PROJ_FLEX_STATIC_LOVS'''))
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'create table eba_proj_flex_static_lovs (',
'    id                 number primary key,',
'    row_version_number integer,',
'    flex_table         varchar2(128)  not null,',
'    flex_column        varchar2(128)  not null,',
'    display_sequence   number,',
'    display_value      varchar2(255)  not null,',
'    return_value       varchar2(4000) not null,',
'    --',
'    created_by         varchar2(255),',
'    created            timestamp with local time zone,',
'    updated_by         varchar2(255),',
'    updated            timestamp with local time zone',
');',
'',
'create or replace trigger eba_proj_flex_static_lovs_biu',
'    before insert or update on eba_proj_flex_static_lovs',
'    for each row',
'begin',
'    if inserting and :new.id is null then',
'        :new.id := to_number(sys_guid(),''XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'');',
'    end if;',
'    if inserting then',
'        :new.row_version_number := 1;',
'        :new.created_by := nvl(wwv_flow.g_user,user);',
'        :new.created := localtimestamp;',
'    end if;',
'    if updating then',
'        :new.row_version_number := nvl(:old.row_version_number,1) + 1;',
'    end if;',
'    :new.updated_by := nvl(wwv_flow.g_user,user);',
'    :new.updated := localtimestamp;',
'end eba_proj_flex_static_lovs_biu;',
'/',
'show errors',
'',
'alter trigger eba_proj_flex_static_lovs_biu enable;',
''))
);
wwv_flow_api.component_end;
end;
/
