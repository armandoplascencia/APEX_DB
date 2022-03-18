prompt --application/deployment/install/install_eba_qpoll_preferences_table
begin
--   Manifest
--     INSTALL: INSTALL-eba_qpoll_preferences table
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
 p_id=>wwv_flow_api.id(16485642112452502743)
,p_install_id=>wwv_flow_api.id(16006903818735772086)
,p_name=>'eba_qpoll_preferences table'
,p_sequence=>50
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'create table eba_qpoll_preferences (',
'    id                      number              not null',
'                                                constraint eba_qpoll_preferences_pk',
'                                                primary key,',
'    preference_name         varchar2(255)       not null',
'                                                constraint eba_qp_prefs_prefname_ck',
'                                                check (upper(preference_name)=preference_name),',
'    preference_value        varchar2(255)       not null,',
'    created_by              varchar2(255)       not null,',
'    created_on              timestamp with time zone,',
'    updated_by              varchar2(255),',
'    updated_on              timestamp with time zone )',
'/',
'create unique index eba_qpoll_preferences_uk on eba_qpoll_preferences (preference_name);',
'/',
'',
'create or replace trigger eba_qpoll_preferences_biu',
'before insert or update on eba_qpoll_preferences',
'    for each row',
'begin',
'    if inserting and :new.id is null then',
'        :new.id := to_number(sys_guid(),''XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'');',
'    end if;',
'    if inserting then',
'        :new.created_by := nvl(v(''APP_USER''),USER);',
'        :new.created_on := current_timestamp;',
'    end if;',
'    if updating then',
'        :new.updated_by := nvl(v(''APP_USER''),USER);',
'        :new.updated_on := current_timestamp;',
'    end if;',
'    :new.preference_name := upper(:new.preference_name);',
'end;',
'/',
'alter trigger eba_qpoll_preferences_biu enable;',
'/',
'',
''))
);
wwv_flow_api.component_end;
end;
/
