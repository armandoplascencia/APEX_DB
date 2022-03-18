prompt --application/deployment/install/install_eba_qpoll_email_opt_out_table
begin
--   Manifest
--     INSTALL: INSTALL-eba_qpoll_email_opt_out table
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
 p_id=>wwv_flow_api.id(14058271898129500664)
,p_install_id=>wwv_flow_api.id(16006903818735772086)
,p_name=>'eba_qpoll_email_opt_out table'
,p_sequence=>420
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'create table eba_qpoll_email_opt_out',
'(',
'    id            number not null,',
'    respondent_id number not null enable,',
'    created       timestamp (6) with time zone,',
'    created_by    varchar2(255),',
'    constraint eba_qpoll_email_opt_out_pk primary key (id) enable,',
'    constraint eba_qpoll_email_opt_out_fk foreign key (respondent_id) references eba_qpoll_respondents (id) on delete cascade enable',
');',
'/',
'create index eba_qpoll_email_opt_out_i1 on eba_qpoll_email_opt_out( respondent_id );',
'',
'create or replace trigger eba_qpoll_email_opt_out_biu',
'   before insert on eba_qpoll_email_opt_out',
'   for each row',
'begin',
'    if :new.id is null then',
'       :new.id := to_number(sys_guid(),''XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'');',
'    end if;',
'   :new.created := current_timestamp;',
'   :new.created_by := nvl(wwv_flow.g_user,user);',
'end;',
'/',
'',
'alter trigger eba_qpoll_email_opt_out_biu enable;',
''))
);
wwv_flow_api.component_end;
end;
/
