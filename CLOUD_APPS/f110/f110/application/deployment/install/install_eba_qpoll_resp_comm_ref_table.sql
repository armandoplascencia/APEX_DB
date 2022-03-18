prompt --application/deployment/install/install_eba_qpoll_resp_comm_ref_table
begin
--   Manifest
--     INSTALL: INSTALL-eba_qpoll_resp_comm_ref table
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
 p_id=>wwv_flow_api.id(14022921410530241884)
,p_install_id=>wwv_flow_api.id(16006903818735772086)
,p_name=>'eba_qpoll_resp_comm_ref table'
,p_sequence=>170
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'create table eba_qpoll_resp_comm_ref (',
'    id            number primary key,',
'    respondent_id number not null,',
'    community_id  number not null,',
'    created       timestamp with time zone,',
'    created_by    varchar2(255),',
'    constraint eba_qpoll_rep_comm_ref_fk1',
'        foreign key ( respondent_id )',
'        references eba_qpoll_respondents( id )',
'        on delete cascade,',
'    constraint eba_qpoll_rep_comm_ref_fk2',
'        foreign key ( community_id )',
'        references eba_qpoll_RESP_COMMUNITIES( id )',
'        on delete cascade',
')',
'/',
'',
'create unique index eba_qpoll_resp_comm_ref_UK on eba_qpoll_resp_comm_ref ( respondent_id,community_id )',
'/',
'create index eba_qpoll_resp_comm_ref_I1 on eba_qpoll_resp_comm_ref( community_id )',
'/',
'',
'create or replace trigger eba_qpoll_resp_comm_ref_bi',
'   before insert on eba_qpoll_resp_comm_ref',
'   for each row',
'begin',
'   if :NEW.ID is null then',
'      :new.id := to_number(sys_guid(),''XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'');',
'   end if;',
'   :new.created := current_timestamp;',
'   :new.created_by := nvl(wwv_flow.g_user,user);',
'end;',
'/',
'',
'ALTER TRIGGER eba_qpoll_resp_comm_ref_bi ENABLE;'))
);
wwv_flow_api.component_end;
end;
/
