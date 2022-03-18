prompt --application/deployment/install/install_eba_qpoll_application_log_table
begin
--   Manifest
--     INSTALL: INSTALL-eba_qpoll_application_log table
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
 p_id=>wwv_flow_api.id(14004368184197319538)
,p_install_id=>wwv_flow_api.id(16006903818735772086)
,p_name=>'eba_qpoll_application_log table'
,p_sequence=>300
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'create table eba_qpoll_application_log ',
'(',
'   id             number not null enable, ',
'   activity       varchar2(255) not null enable, ',
'   details        varchar2(4000), ',
'   created        timestamp (6) with time zone not null enable, ',
'   created_trunc  date not null enable, ',
'   created_by    varchar2(255) not null enable, ',
'   constraint eba_qpoll_app_log_pk primary key (id)',
'   using index  enable',
');',
'',
'create index eba_qpoll_app_log_i1 on eba_qpoll_application_log (created_trunc);',
'',
'create or replace trigger eba_qpoll_app_log_bi ',
'   before insert on eba_qpoll_application_log',
'   for each row',
'begin',
'   if :new.id is null then',
'      :new.id := to_number(sys_guid(),''XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'');',
'   end if;',
'   :new.created       := current_timestamp;',
'   :new.created_trunc := trunc(current_timestamp);',
'   :new.created_by    := lower(nvl(wwv_flow.g_user,user));',
'end;',
'/',
'',
'alter trigger eba_qpoll_app_log_bi enable;'))
);
wwv_flow_api.component_end;
end;
/
