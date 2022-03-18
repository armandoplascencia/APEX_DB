prompt --application/deployment/install/install_eba_qpoll_history_table
begin
--   Manifest
--     INSTALL: INSTALL-eba_qpoll_history table
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>110
,p_default_id_offset=>101599614921830918
,p_default_owner=>'MISO'
);
wwv_flow_api.create_install_script(
 p_id=>wwv_flow_api.id(14118004687324544074)
,p_install_id=>wwv_flow_api.id(16006903818735772086)
,p_name=>'eba_qpoll_history table'
,p_sequence=>430
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'create table eba_qpoll_history (',
'    id                  number,',
'    row_version_number  number,',
'    component_id        number,',
'    poll_id             number,',
'    component_rowkey    varchar2(30),',
'    table_name          varchar2(60) not null enable,',
'    column_name         varchar2(60) not null enable,',
'    old_value           varchar2(4000),',
'    new_value           varchar2(4000),',
'    change_date         timestamp (6) with time zone,',
'    changed_by          varchar2(255),',
'    constraint eba_qpoll_history_pk primary key (id) enable',
')',
'/',
'',
'create index eba_qpoll_history_i1 on eba_qpoll_history (component_id)',
'/',
'',
'create or replace trigger eba_qpoll_history_biu',
'    before insert or update on eba_qpoll_history',
'    for each row',
'begin',
'    if :new.id is null then',
'       :new.id := to_number(sys_guid(),''XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'');',
'    end if;',
'    if inserting then',
'        :new.change_date := current_timestamp;',
'        :new.changed_by := nvl(wwv_flow.g_user,user);',
'        :new.row_version_number := 1;',
'    elsif updating then',
'        :new.row_version_number := :new.row_version_number + 1;',
'    end if;',
'end;',
'/',
'alter trigger eba_qpoll_history_biu enable',
'/'))
);
wwv_flow_api.component_end;
end;
/
