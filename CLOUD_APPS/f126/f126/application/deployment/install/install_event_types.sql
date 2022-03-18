prompt --application/deployment/install/install_event_types
begin
--   Manifest
--     INSTALL: INSTALL-event types
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
 p_id=>wwv_flow_api.id(7488940807391537668)
,p_install_id=>wwv_flow_api.id(7488934904666529534)
,p_name=>'event types'
,p_sequence=>200
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'create table eba_ca_event_types (',
'   type_id          number         not null,',
'   type_name        varchar2(60)   not null,',
'   display_color    varchar2(60),',
'   border_color     varchar2(30),',
'   text_color       varchar2(30),',
'   internal_yn      varchar2(1),',
'   is_active_yn     varchar2(1),',
'   color_pref_id    number',
'                    constraint eba_ca_et_cp_ck',
'                    references eba_ca_color_prefs (id),',
'   --',
'   created_on       timestamp with time zone  not null,',
'   created_by       varchar2(255)  not null,',
'   last_updated_on  timestamp with time zone,',
'   last_updated_by  varchar2(255) )',
'/',
'',
'-- Add index on foreign key columns',
'create index eba_ca_event_types_cp_idx on eba_ca_event_types(color_pref_id);',
'',
'alter table eba_ca_event_types',
'   add constraint eba_ca_event_types_pk primary key (type_id)',
'/',
'    ',
'alter table eba_ca_event_types',
'   add constraint eba_ca_event_types_uk unique (type_name)',
'/',
'    ',
'    ',
'create or replace trigger eba_ca_event_types_biu',
'  before insert or update on eba_ca_event_types               ',
'  for each row  ',
'begin   ',
'  if inserting then',
'     if :NEW.type_id is null ',
'        then :NEW.type_id := eba_ca_api.gen_id; ',
'     end if;',
'     :NEW.CREATED_ON := CURRENT_TIMESTAMP;',
'     :NEW.CREATED_BY := nvl(v(''APP_USER''),USER);',
'   end if;',
'',
'   if updating then',
'      :NEW.LAST_UPDATED_ON := CURRENT_TIMESTAMP;',
'      :NEW.LAST_UPDATED_BY := nvl(v(''APP_USER''),USER);',
'   end if; ',
'   if :new.is_active_yn is null then',
'       if :new.type_name is null then',
'          :new.is_active_yn := ''N'';',
'       else',
'          :new.is_active_yn := ''Y'';',
'       end if;',
'   end if;',
'end; ',
'/',
'show errors',
'    ',
' ',
'alter trigger eba_ca_event_types_biu enable',
'/',
'',
'commit;',
'',
''))
);
wwv_flow_api.component_end;
end;
/
