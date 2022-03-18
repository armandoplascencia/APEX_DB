prompt --application/deployment/install/install_events_triggers
begin
--   Manifest
--     INSTALL: INSTALL-events triggers
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
 p_id=>wwv_flow_api.id(3338036075168058037)
,p_install_id=>wwv_flow_api.id(7488934904666529534)
,p_name=>'events triggers'
,p_sequence=>400
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'create or replace trigger EBA_ca_events_biu',
'  before insert or update on EBA_ca_events               ',
'  for each row  ',
'begin   ',
'  if inserting then',
'     if :NEW.event_id is null ',
'        then :NEW.event_id := EBA_ca_api.gen_id;',
'     end if;',
'     :NEW.CREATED_ON := CURRENT_TIMESTAMP;',
'     :NEW.CREATED_BY := nvl(v(''APP_USER''),USER);',
'     :new.row_version_number := 1;',
'   end if;',
'',
'   if updating then',
'      :NEW.LAST_UPDATED_ON := CURRENT_TIMESTAMP;',
'      :NEW.LAST_UPDATED_BY := nvl(v(''APP_USER''),USER);',
'      :new.row_version_number := nvl(:old.row_version_number,1) + 1;',
'   end if; ',
'',
'   if :new.row_key is null then',
'       select eba_ca_fw.compress_int(eba_ca_seq.nextval) into :new.row_key from dual;',
'   end if;',
'',
'   eba_ca_fw.tag_sync(',
'         p_new_tags      => :new.tags,',
'         p_old_tags      => :old.tags,',
'         p_content_type  => ''EVENT'',',
'         p_content_id    => :new.event_id );',
'end; ',
'/',
'show errors    ',
'',
'alter trigger EBA_ca_events_biu enable',
'/',
'    ',
'    ',
'create or replace trigger BD_EBA_ca_events',
'    before delete on EBA_ca_events',
'    for each row',
'begin',
'    eba_ca_fw.tag_sync(',
'        p_new_tags      => null,',
'        p_old_tags      => :old.tags,',
'        p_content_type  => ''EVENT'',',
'        p_content_id    => :old.event_id );',
'',
'end;',
'/',
'show errors',
'    ',
'alter trigger BD_EBA_ca_events enable',
'/',
''))
);
wwv_flow_api.component_end;
end;
/
