prompt --application/deployment/install/install_feedback_tables_data_and_triggers
begin
--   Manifest
--     INSTALL: INSTALL-Feedback tables, data, and triggers
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>112
,p_default_id_offset=>101618418936909290
,p_default_owner=>'MISO'
);
wwv_flow_api.create_install_script(
 p_id=>wwv_flow_api.id(18830591341954287770)
,p_install_id=>wwv_flow_api.id(17893718049487094920)
,p_name=>'Feedback tables, data, and triggers'
,p_sequence=>520
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'create table eba_cust_feedback_types',
'(',
'    id             number constraint eba_cust_feedback_types_pk not null primary key,',
'    type           varchar2(30),',
'    created        timestamp with time zone,',
'    created_by     varchar2(255),',
'    updated        timestamp with time zone,',
'    updated_by     varchar2(255)',
');',
'',
'create or replace trigger eba_cust_feedback_types_biu',
'    before insert or update ',
'    on eba_cust_feedback_types',
'    for each row',
'begin',
'    if :new.id is null then',
'        :new.id := to_number(sys_guid(),''XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'');',
'    end if;',
'    if inserting then',
'        :new.created := current_timestamp;',
'        :new.created_by := NVL(V(''APP_USER''),user);',
'    end if;',
'    :new.updated := current_timestamp;',
'    :new.updated_by := NVL(V(''APP_USER''),user);',
'end;',
'/',
'',
'alter trigger eba_cust_feedback_types_biu enable',
'/',
'',
'insert into eba_cust_feedback_types (id, type) values (1, ''General Comment'');',
'insert into eba_cust_feedback_types (id, type) values (2, ''Enhancement Request'');',
'insert into eba_cust_feedback_types (id, type) values (3, ''Bug'');',
'commit;',
'',
'create table eba_cust_feedback',
'(',
'    id             number constraint eba_cust_feedback_pk not null primary key,',
'    application_id number not null,',
'    page_id        number not null,',
'    feedback       varchar2(4000),',
'    response       varchar2(4000),',
'    type_id        number,',
'    status         varchar2(30),',
'    created        timestamp with time zone,',
'    created_by     varchar2(255),',
'    updated        timestamp with time zone,',
'    updated_by     varchar2(255),',
'    constraint eba_cust_feedback_type_fk foreign key (type_id) references eba_cust_feedback_types (id)',
');',
'',
'create index eba_cust_feedback_type_idx on eba_cust_feedback (type_id);',
'',
'create or replace trigger eba_cust_feedback_biu',
'    before insert or update ',
'    on eba_cust_feedback',
'    for each row',
'begin',
'    if :new.id is null then',
'        :new.id := to_number(sys_guid(),''XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'');',
'    end if;',
'    if inserting then',
'        :new.created := current_timestamp;',
'        :new.created_by := NVL(V(''APP_USER''),user);',
'    end if;',
'    :new.updated := current_timestamp;',
'    :new.updated_by := NVL(V(''APP_USER''),user);',
'end;',
'/',
'',
'alter trigger eba_cust_feedback_biu enable',
'/'))
);
wwv_flow_api.component_end;
end;
/
