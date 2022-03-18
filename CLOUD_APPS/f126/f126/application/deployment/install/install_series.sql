prompt --application/deployment/install/install_series
begin
--   Manifest
--     INSTALL: INSTALL-series
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
 p_id=>wwv_flow_api.id(3336045075713728878)
,p_install_id=>wwv_flow_api.id(7488934904666529534)
,p_name=>'series'
,p_sequence=>205
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'create table eba_ca_series (',
'   series_id        number        not null,',
'   --',
'   start_date       timestamp with time zone  not null,',
'   end_date         timestamp with time zone  not null,',
'   recur_freq       varchar2(10)  not null,',
'   --',
'   created_on       timestamp with time zone  not null,',
'   created_by       varchar2(255)  not null,',
'   last_updated_on  timestamp with time zone,',
'   last_updated_by  varchar2(255) )',
'/',
'alter table eba_ca_series ',
'   add constraint eba_ca_series_pk primary key (series_id)',
'/',
'create or replace trigger eba_ca_series_biu',
'  before insert or update on eba_ca_series               ',
'  for each row  ',
'begin   ',
'  if inserting then',
'     if :NEW.series_id is null ',
'        then :NEW.series_id := eba_ca_api.gen_id;',
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
'alter trigger eba_ca_series_biu enable',
'/',
'',
'',
'',
''))
);
wwv_flow_api.component_end;
end;
/
