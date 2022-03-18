prompt --application/deployment/install/install_notifications
begin
--   Manifest
--     INSTALL: INSTALL-notifications
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
 p_id=>wwv_flow_api.id(3337733257105180692)
,p_install_id=>wwv_flow_api.id(7488934904666529534)
,p_name=>'notifications'
,p_sequence=>235
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'create table EBA_CA_notifications (',
'    id                        number            not null',
'                                                constraint EBA_CA_note_pk',
'                                                primary key,',
'    row_version_number        number,',
'    notification_name         varchar2(255)     not null,',
'    notification_description  varchar2(4000)    null,',
'    --',
'    notification_type         varchar2(30)      not null',
'                                                constraint EBA_CA_note_tp_cc',
'                                                check (notification_type in (''RED'',''YELLOW'')),',
'    --',
'    display_sequence          number,',
'    display_from              timestamp with time zone,',
'    display_until             timestamp with time zone,',
'    --',
'    created_by                varchar2(255)       not null,',
'    created                   timestamp with time zone,',
'    updated_by                varchar2(255)       not null,',
'    updated                   timestamp with time zone )',
'/',
'create unique index EBA_CA_note_uk on EBA_CA_notifications (notification_name);',
'/',
'',
'create or replace trigger EBA_CA_note_biu',
'before insert or update on EBA_CA_notifications',
'    for each row',
'begin',
'    if inserting and :new.id is null then',
'        select to_number(sys_guid(),''XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'')',
'        into :new.id',
'        from dual;',
'    end if;',
'    if inserting then',
'        :new.created_by := nvl(v(''APP_USER''),USER);',
'        :new.created := current_timestamp;',
'        :new.updated_by := nvl(v(''APP_USER''),USER);',
'        :new.updated := current_timestamp;',
'        :new.row_version_number := 1;',
'    end if;',
'    if updating then',
'        :new.row_version_number := nvl(:old.row_version_number,1) + 1;',
'        :new.updated_by := nvl(v(''APP_USER''),USER);',
'        :new.updated    := current_timestamp;',
'    end if;',
'    if :new.notification_type is null then',
'       :new.notification_type := ''MANUAL'';',
'    end if;',
'    if :new.display_sequence is null then',
'       :new.display_sequence := 10;',
'    end if;',
'end;',
'/',
'show errors',
'',
'alter trigger EBA_CA_note_biu enable;',
'/'))
);
wwv_flow_api.component_end;
end;
/
