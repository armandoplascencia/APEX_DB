prompt --application/deployment/install/install_history_table
begin
--   Manifest
--     INSTALL: INSTALL-History Table
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
 p_id=>wwv_flow_api.id(7851786899810752537)
,p_install_id=>wwv_flow_api.id(9012014618759672631)
,p_name=>'History Table'
,p_sequence=>350
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'create table eba_proj_history$ (',
'    id                 number constraint eba_proj_history_pk primary key,',
'    row_version_number number,',
'    component_id       number,',
'    component_rowkey   varchar2(30 byte),',
'    table_name varchar2(60) default ''STATUS'' not null,',
'    column_name        varchar2(60 byte) not null,',
'    old_value          varchar2(4000 byte),',
'    new_value          varchar2(4000 byte),',
'    change_date        timestamp with local time zone,',
'    changed_by         varchar2(255 byte)',
');',
'',
'create index eba_proj_history_i1 on eba_proj_history$(component_id);',
'create index eba_proj_history_i2 on eba_proj_history$(change_date, component_id);',
'',
'create or replace trigger biu_eba_proj_history',
'    before insert or update on eba_proj_history$',
'    for each row',
'begin',
'    if :new.id is null then',
'        :new.id := to_number(sys_guid(),''XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'');',
'    end if;',
'    if inserting then',
'        :new.change_date := localtimestamp;',
'        :new.changed_by := nvl(wwv_flow.g_user,user);',
'        :new.row_version_number := 1;',
'    elsif updating then',
'        :new.row_version_number := :new.row_version_number + 1;',
'    end if;',
'end;',
'/',
'alter trigger biu_eba_proj_history enable;',
'',
'create or replace view eba_proj_history as',
'    select id,',
'        row_version_number,',
'        component_id,',
'        component_rowkey,',
'        table_name,',
'        column_name,',
'        old_value,',
'        new_value,',
'        change_date,',
'        changed_by',
'    from eba_proj_history$;'))
);
wwv_flow_api.component_end;
end;
/
