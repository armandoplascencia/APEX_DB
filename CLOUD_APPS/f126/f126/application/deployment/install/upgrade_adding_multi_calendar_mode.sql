prompt --application/deployment/install/upgrade_adding_multi_calendar_mode
begin
--   Manifest
--     INSTALL: UPGRADE-Adding Multi-Calendar Mode
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
 p_id=>wwv_flow_api.id(1938074983484583122)
,p_install_id=>wwv_flow_api.id(7488934904666529534)
,p_name=>'Adding Multi-Calendar Mode'
,p_sequence=>35
,p_script_type=>'UPGRADE'
,p_condition_type=>'NOT_EXISTS'
,p_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'from user_tables',
'where table_name = ''EBA_CA_CALENDARS'';'))
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'create table eba_ca_calendars (',
'   calendar_id      number         not null,',
'   short_name       varchar2(10)   not null,',
'   calendar_name    varchar2(60)   not null,',
'   public_view_yn   varchar2(1)    default ''Y'',',
'   description      varchar2(4000),',
'   is_active_yn     varchar2(1)    default ''Y'',',
'   --',
'   created_on       timestamp with time zone  not null,',
'   created_by       varchar2(255)  not null,',
'   last_updated_on  timestamp with time zone,',
'   last_updated_by  varchar2(255) )',
'/',
'',
'alter table eba_ca_calendars',
'   add constraint eba_ca_calendars_pk primary key (calendar_id)',
'/',
'    ',
'alter table eba_ca_calendars',
'   add constraint eba_ca_calendars_uk1 unique (short_name)',
'/',
'alter table eba_ca_calendars',
'   add constraint eba_ca_calendars_uk2 unique (calendar_name)',
'/',
'alter table eba_ca_calendars',
'   add constraint eba_ca_calendar_cc1 ',
'   check ( public_view_yn in (''Y'',''N'') )',
'/',
'alter table eba_ca_calendars',
'   add constraint eba_ca_calendar_cc2 ',
'   check ( is_active_yn in (''Y'',''N'') )',
'/',
'    ',
'    ',
'create or replace trigger eba_ca_calendars_biu',
'  before insert or update on eba_ca_calendars               ',
'  for each row  ',
'begin   ',
'  if inserting then',
'     if :new.calendar_id is null ',
'        then :new.calendar_id := eba_ca_api.gen_id; ',
'     end if;',
'     :NEW.CREATED_ON := CURRENT_TIMESTAMP;',
'     :NEW.CREATED_BY := nvl(v(''APP_USER''),USER);',
'   end if;',
'',
'   :NEW.LAST_UPDATED_ON := CURRENT_TIMESTAMP;',
'   :NEW.LAST_UPDATED_BY := nvl(v(''APP_USER''),USER);',
'end; ',
'/',
'    ',
'alter trigger eba_ca_calendars_biu enable',
'/',
'',
'-- Add constraint error messages',
'insert into eba_ca_error_lookup (constraint_name, message, language_code) values (''EBA_CA_CALENDAR_UK1'', ''Calendar Short Name must be unique.'', ''en'');',
'insert into eba_ca_error_lookup (constraint_name, message, language_code) values (''EBA_CA_CALENDAR_UK2'', ''Calendar Name must be unique.'', ''en'');',
'',
'-- Update Events table',
'alter table eba_ca_events add (calendar_id number)',
'/',
'alter table eba_ca_events add constraint eba_ca_events_fk3',
'   foreign key (calendar_id)',
'   references eba_ca_calendars (calendar_id)',
'/',
'create index eba_ca_events_i3',
'   on eba_ca_events (calendar_id)',
'/',
'',
'-- comma separated list of calendar_ids, for contributor (access_level_id 2)',
'alter table eba_ca_users add (restricted_to varchar2(4000)); ',
'',
''))
);
wwv_flow_api.component_end;
end;
/
