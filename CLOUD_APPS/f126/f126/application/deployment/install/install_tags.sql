prompt --application/deployment/install/install_tags
begin
--   Manifest
--     INSTALL: INSTALL-tags
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>126
,p_default_id_offset=>101651461840938715
,p_default_owner=>'MISO'
);
wwv_flow_api.create_install_script(
 p_id=>wwv_flow_api.id(3337832064191086729)
,p_install_id=>wwv_flow_api.id(7488934904666529534)
,p_name=>'tags'
,p_sequence=>206
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'CREATE TABLE eba_ca_tags (',
'    id                      number primary key,',
'    tag                     varchar2(255) not null,',
'    content_id              number,',
'    content_type            varchar2(30)',
'                            constraint eba_ca_tags_ck check',
'                            (content_type in (''EVENT'',''NOTES'',''FILE'')),',
'    --',
'    created                 timestamp with time zone,',
'    created_by              varchar2(255),',
'    updated                 timestamp with time zone,',
'    updated_by              varchar2(255)',
'    )',
'/',
'',
'create or replace trigger biu_eba_ca_tags',
'   before insert or update on eba_ca_tags',
'   for each row',
'   begin',
'      if inserting then',
'         if :NEW.ID is null then',
'           select to_number(sys_guid(),''XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'')',
'           into :new.id',
'           from dual;',
'         end if;',
'         :NEW.CREATED := current_timestamp;',
'         :NEW.CREATED_BY := nvl(v(''APP_USER''),USER);',
'      end if;',
'',
'      if updating then',
'         :NEW.UPDATED := current_timestamp;',
'         :NEW.UPDATED_BY := nvl(v(''APP_USER''),USER);',
'      end if;',
'end;',
'/',
'show errors',
'',
'create table eba_ca_tags_type_sum (',
'    tag                             varchar2(255),',
'    content_type                    varchar2(30),',
'    tag_count                       number,',
'    constraint eba_ca_tags_type_sum_pk primary key (tag,content_type)',
'    )',
'/',
'',
'create table eba_ca_tags_sum (',
'    tag                             varchar2(255),',
'    tag_count                       number,',
'    constraint eba_ca_tags_sum_pk   primary key (tag)',
'    )',
'/',
''))
);
wwv_flow_api.component_end;
end;
/
