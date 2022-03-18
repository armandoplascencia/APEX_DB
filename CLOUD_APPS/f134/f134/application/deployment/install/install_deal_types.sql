prompt --application/deployment/install/install_deal_types
begin
--   Manifest
--     INSTALL: INSTALL-Deal Types
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>134
,p_default_id_offset=>172493832712964115
,p_default_owner=>'MISO'
);
wwv_flow_api.create_install_script(
 p_id=>wwv_flow_api.id(19287489987466994744)
,p_install_id=>wwv_flow_api.id(9012014618759672631)
,p_name=>'Deal Types'
,p_sequence=>150
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'create table eba_proj_deal_types',
'(',
'    id                      number primary key,',
'    row_version_number      number,',
'    deal_type               varchar2(50) not null,',
'    display_sequence        number,',
'    is_active_yn            varchar2(1) default ''Y'' not null,',
'    created                 timestamp(6) with local time zone,',
'    created_by              varchar2(255),',
'    updated                 timestamp(6) with local time zone,',
'    updated_by              varchar2(255)',
')',
'/',
'',
'create or replace trigger biu_eba_proj_deal_types',
'    before insert or update on eba_proj_deal_types',
'    for each row',
'begin',
'    if :new.id is null then',
'        :new.id := to_number(sys_guid(),''XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'');',
'    end if;',
'    if inserting then',
'        :new.created := localtimestamp;',
'        :new.created_by := nvl(apex_application.g_user,user);',
'        :new.row_version_number := 1;',
'    elsif updating then',
'        :new.row_version_number := nvl(:old.row_version_number,1) + 1;',
'    end if;',
'    if inserting or updating then',
'        :new.updated := localtimestamp;',
'        :new.updated_by := nvl(apex_application.g_user,user);',
'    end if;',
'end;',
'/',
'',
'alter trigger biu_eba_proj_deal_types enable',
'/',
'',
'insert into eba_proj_deal_types',
'(deal_type, display_sequence, is_active_yn)',
'values',
'(''To Be Determined (TBD)'', 1, ''Y'');',
'',
'insert into eba_proj_deal_types',
'(deal_type, display_sequence, is_active_yn)',
'values',
'(''Asset Purchase'', 2, ''Y'');',
'',
'insert into eba_proj_deal_types',
'(deal_type, display_sequence, is_active_yn)',
'values',
'(''Private'', 3, ''Y'');',
'',
'insert into eba_proj_deal_types',
'(deal_type, display_sequence, is_active_yn)',
'values',
'(''Public'', 4, ''Y'');',
'',
'commit;'))
);
wwv_flow_api.component_end;
end;
/
