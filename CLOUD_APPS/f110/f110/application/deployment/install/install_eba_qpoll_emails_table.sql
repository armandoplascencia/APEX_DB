prompt --application/deployment/install/install_eba_qpoll_emails_table
begin
--   Manifest
--     INSTALL: INSTALL-eba_qpoll_emails table
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
 p_id=>wwv_flow_api.id(658001145532229668)
,p_install_id=>wwv_flow_api.id(16006903818735772086)
,p_name=>'eba_qpoll_emails table'
,p_sequence=>190
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'create table eba_qpoll_emails (',
'    id                     number         not null,',
'    subject                varchar2(400),',
'    sent_time              timestamp with time zone,',
'    sent_by                varchar2(255)  not null,',
'    sent_to                varchar2(4000) not null,',
'    cc                     varchar2(4000),',
'    template_static_id     varchar2(255), -- no fk as uses APEX-based templates',
'    placeholders           clob,',
'    text_body              clob,',
'    html_body              clob,',
'    --',
'    email_status           varchar2(30),   -- SUCCESS or FAILURE',
'    error_message          varchar2(4000), -- only populated if failure',
'    --',
'    poll_id                number,',
'    community_id           number,',
'    respondent_id          number,',
'    constraint eba_qpoll_emails_pk primary key (id)',
')',
'/',
'',
'create or replace trigger eba_qpoll_emails_bi',
'    before insert on eba_qpoll_emails',
'    for each row',
'begin',
'    if :new.id is null then',
'        :new.id := to_number(sys_guid(),''XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'');',
'    end if;',
'    :new.sent_to := lower(:new.sent_to);',
'    :new.sent_time := current_timestamp;',
'end;',
'/',
'',
'alter trigger eba_qpoll_emails_bi enable',
'/',
'    ',
'    ',
'create index eba_qpoll_emails_i1 on eba_qpoll_emails (community_id);',
'create index eba_qpoll_emails_i2 on eba_qpoll_emails (poll_id);',
'create index eba_qpoll_emails_i3 on eba_qpoll_emails (respondent_id);',
'create index eba_qpoll_emails_i4 on eba_qpoll_emails (sent_to);'))
);
wwv_flow_api.component_end;
end;
/
