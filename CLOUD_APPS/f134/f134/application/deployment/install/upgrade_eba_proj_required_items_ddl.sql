prompt --application/deployment/install/upgrade_eba_proj_required_items_ddl
begin
--   Manifest
--     INSTALL: UPGRADE-eba_proj_required_items DDL
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
 p_id=>wwv_flow_api.id(725061446570413112)
,p_install_id=>wwv_flow_api.id(9012014618759672631)
,p_name=>'eba_proj_required_items DDL'
,p_sequence=>1360
,p_script_type=>'UPGRADE'
,p_condition_type=>'NOT_EXISTS'
,p_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'from user_tables',
'where table_name = ''EBA_PROJ_REQUIRED_ITEMS'''))
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'create table eba_proj_required_items (',
'    id                             number not null constraint eba_proj_required_id_pk primary key,',
'    page_id                        number,',
'    item_name                      varchar2(255),',
'    created                        date not null,',
'    created_by                     varchar2(255) not null,',
'    updated                        date not null,',
'    updated_by                     varchar2(255) not null',
');',
'',
'',
'-- triggers',
'create or replace trigger eba_proj_required_items_bi',
'    before insert or update ',
'    on eba_proj_required_items',
'    for each row',
'begin',
'    if :new.id is null then',
'        :new.id := to_number(sys_guid(), ''XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'');',
'    end if;',
'    if inserting then',
'        :new.created := sysdate;',
'        :new.created_by := user;',
'    end if;',
'    :new.updated := sysdate;',
'    :new.updated_by := user;',
'end eba_proj_required_items_bi;',
'/'))
);
wwv_flow_api.component_end;
end;
/
