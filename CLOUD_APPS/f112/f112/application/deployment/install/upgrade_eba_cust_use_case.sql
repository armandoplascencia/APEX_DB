prompt --application/deployment/install/upgrade_eba_cust_use_case
begin
--   Manifest
--     INSTALL: UPGRADE-eba_cust_use_case
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
 p_id=>wwv_flow_api.id(17217726381259534594)
,p_install_id=>wwv_flow_api.id(17893718049487094920)
,p_name=>'eba_cust_use_case'
,p_sequence=>320
,p_script_type=>'UPGRADE'
,p_condition_type=>'NOT_EXISTS'
,p_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'from user_tables',
'where table_name = ''EBA_CUST_USE_CASE'''))
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'create table eba_cust_use_case (',
'   id                      number       not null,',
'   row_version_number      number,',
'   use_case                varchar2(60) not null,',
'   description             varchar2(4000) ,',
'   is_active               varchar2(1)  default ''Y'',',
'',
'   --',
'   created               timestamp with time zone not null,',
'   created_by            varchar2(255) not null,',
'   updated               timestamp with time zone,',
'   updated_by            varchar2(255)',
'  )',
'/',
'alter table eba_cust_use_case',
'   add constraint eba_cust_use_case_pk',
'       primary key (id)',
'/',
'create unique index eba_cust_use_case_uk on eba_cust_use_case(use_case)',
'/',
'alter table eba_cust_use_case',
'   add constraint eba_cust_use_case_uk',
'       unique (use_case)',
'       using index eba_cust_use_case_uk',
'/',
'',
'create or replace trigger biu_eba_cust_use_case',
'   before insert or update on eba_cust_use_case',
'   for each row',
'   begin',
'      if inserting then',
'         if :NEW.ID is null then',
'            select to_number(sys_guid(),''XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'')',
'            into :new.id',
'           from dual;',
'         end if;',
'         :NEW.CREATED := current_timestamp;',
'         :NEW.CREATED_BY := nvl(v(''APP_USER''),USER);',
'         :NEW.UPDATED := current_timestamp;',
'         :NEW.UPDATED_BY := nvl(v(''APP_USER''),USER);',
'         :new.row_version_number := 1;',
'      end if;',
'',
'      if updating then',
'         :NEW.UPDATED := current_timestamp;',
'         :NEW.UPDATED_BY := nvl(v(''APP_USER''),USER);',
'         :new.row_version_number := nvl(:new.row_version_number,0) + 1;',
'      end if;',
'   end;',
'/',
'show errors',
'',
'insert into eba_cust_use_case (id, use_case, description ) values (1,''Development'', ''Development'');',
'insert into eba_cust_use_case (id, use_case, description ) values (2,''Test / Stage'', ''Test / Stage'');',
'insert into eba_cust_use_case (id, use_case, description ) values (3,''Production'', ''Production'');',
'commit;'))
);
wwv_flow_api.component_end;
end;
/
