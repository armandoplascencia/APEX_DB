prompt --application/deployment/install/upgrade_eba_proj_status_rpts_table_and_trigger
begin
--   Manifest
--     INSTALL: UPGRADE-eba_proj_status_rpts$ table and trigger
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
 p_id=>wwv_flow_api.id(6170163794457677761)
,p_install_id=>wwv_flow_api.id(9012014618759672631)
,p_name=>'eba_proj_status_rpts$ table and trigger'
,p_sequence=>110
,p_script_type=>'UPGRADE'
,p_condition_type=>'NOT_EXISTS'
,p_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'from user_tables',
'where table_name = ''EBA_PROJ_STATUS_RPTS$'''))
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'create table eba_proj_status_rpts$ (',
'    id                      number primary key,',
'    row_version_number      number,',
'    row_key                 varchar2(30),',
'    project_id              number references eba_proj_status$(id) on delete cascade not null,',
'    status_title            varchar2(255)  not null,',
'    status_update           clob,',
'    update_date             timestamp(6) with local time zone not null,',
'    update_owner            varchar2(255)  not null,',
'    viewable_by             varchar2(255)  not null,',
'    editable_by             varchar2(255)  not null,',
'    --',
'    created                 timestamp(6) with local time zone,',
'    created_by              varchar2(255),',
'    updated                 timestamp(6) with local time zone,',
'    updated_by              varchar2(255)',
'    )',
'/',
'',
'create index eba_proj_status_rpts_i1 on eba_proj_status_rpts$(project_id);',
'create index eba_proj_status_rpts_i2 on eba_proj_status_rpts$(update_owner);',
'',
'create or replace trigger  bi_eba_proj_status_rpts',
'    before insert or update on eba_proj_status_rpts$',
'    for each row',
'begin',
'    if :new.id is null then',
'        :new.id := to_number(sys_guid(),''XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'');',
'    end if;',
'    if inserting then',
'        :new.created := localtimestamp;',
'        :new.created_by := nvl(wwv_flow.g_user,user);',
'        :new.row_version_number := 1;',
'    elsif updating then',
'        :new.row_version_number := nvl(:old.row_version_number,1) + 1;',
'    end if;',
'    if inserting or updating then',
'        :new.updated := localtimestamp;',
'        :new.updated_by := nvl(wwv_flow.g_user,user);',
'    end if;',
'    if :new.project_id is not null then',
'        update eba_proj_status$ set updated = localtimestamp where id = :new.project_id;',
'    end if;',
'    if :new.row_key is null then',
'        select eba_proj_fw.compress_int(eba_proj_seq.nextval) into :new.row_key from dual;',
'    end if;',
'    if :new.update_date is null then',
'        :new.update_date := localtimestamp;',
'    end if;',
'    if :new.update_owner is null then',
'        :new.update_owner := nvl(wwv_flow.g_user,user);',
'    end if;',
'    :new.update_owner := lower(:new.update_owner);',
'end;',
'/',
'alter trigger bi_eba_proj_status_rpts enable',
'/',
''))
);
wwv_flow_api.component_end;
end;
/
