prompt --application/deployment/install/install_create_table_eba_proj_status_email_log
begin
--   Manifest
--     INSTALL: INSTALL-create table eba_proj_status_email_log
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
 p_id=>wwv_flow_api.id(6169347005041306028)
,p_install_id=>wwv_flow_api.id(9012014618759672631)
,p_name=>'create table eba_proj_status_email_log'
,p_sequence=>330
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'create table  eba_proj_status_email_log (',
'    id number,',
'    row_version_number number,',
'    email_first_to varchar2(255),',
'    email_to varchar2(4000),',
'    email_from varchar2(255),',
'    body_size number,',
'    project_id number,',
'    email_type varchar2(30),',
'    --',
'    created timestamp (6) with local time zone,',
'    created_by varchar2(255),',
'    updated timestamp (6) with local time zone,',
'    updated_by varchar2(255),',
'    primary key (id) using index enable',
')',
'/',
'',
'create index  eba_proj_status_email_log_n1 on eba_proj_status_email_log (email_first_to)',
'/',
'',
'create index  eba_proj_status_email_log_n2 on eba_proj_status_email_log (email_from)',
'/',
'',
'create or replace trigger  biu_eba_proj_status_email_log',
'    before insert or update on eba_proj_status_email_log',
'    for each row',
'begin',
'    if :new.id is null then',
'        :new.id := to_number(sys_guid(),''XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'');',
'    end if;',
'    if inserting then',
'        :new.created := localtimestamp;',
'        :new.created_by := nvl(wwv_flow.g_user,user);',
'        :new.row_version_number := 1;',
'    elsif updating then',
'        :new.row_version_number := nvl(:old.row_version_number,1) + 1;',
'    end if;',
'',
'    :new.updated := localtimestamp;',
'    :new.updated_by := nvl(wwv_flow.g_user,user);',
'    :new.email_first_to := lower(:new.email_first_to);',
'    :new.email_from := lower(:new.email_from);',
'end;',
'/',
'alter trigger  biu_eba_proj_status_email_log enable',
'/'))
);
wwv_flow_api.component_end;
end;
/
