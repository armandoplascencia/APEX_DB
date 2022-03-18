prompt --application/deployment/install/install_calendars
begin
--   Manifest
--     INSTALL: INSTALL-calendars
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
 p_id=>wwv_flow_api.id(1938231201698693891)
,p_install_id=>wwv_flow_api.id(7488934904666529534)
,p_name=>'calendars'
,p_sequence=>207
,p_script_type=>'INSTALL'
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
'   if updating then',
'      :NEW.LAST_UPDATED_ON := CURRENT_TIMESTAMP;',
'      :NEW.LAST_UPDATED_BY := nvl(v(''APP_USER''),USER);',
'   end if; ',
'end; ',
'/',
'show errors',
'    ',
' ',
'alter trigger eba_ca_calendars_biu enable',
'/'))
);
wwv_flow_api.component_end;
end;
/
