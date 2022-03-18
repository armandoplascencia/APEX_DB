prompt --application/deployment/install/upgrade_rebuild_template_triggers
begin
--   Manifest
--     INSTALL: UPGRADE-Rebuild template triggers
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
 p_id=>wwv_flow_api.id(4154946079896149354)
,p_install_id=>wwv_flow_api.id(9012014618759672631)
,p_name=>'Rebuild template triggers'
,p_sequence=>1280
,p_script_type=>'UPGRADE'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'create or replace trigger biu_eba_proj_template_ms',
'    before insert or update on eba_proj_template_ms',
'    for each row',
'begin',
'    if :new.id is null then',
'        :new.id := to_number(sys_guid(),''XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'');',
'    end if;',
'    if inserting then',
'        if :new.created is null then',
'            :new.created := localtimestamp;',
'        end if;',
'        if :new.created_by is null then',
'            :new.created_by := nvl(wwv_flow.g_user, user);',
'        end if;',
'        :new.row_version := 1;',
'    else',
'        :new.row_version := nvl(:old.row_version, 1) + 1;',
'    end if;',
'    :new.updated := localtimestamp;',
'    :new.updated_by := nvl(wwv_flow.g_user, user);',
'    update eba_proj_templates set updated = localtimestamp, updated_by = nvl(wwv_flow.g_user, user) where id = nvl(:new.template_id, :old.template_id);',
'end;',
'/',
'',
'alter trigger biu_eba_proj_template_ms enable',
'/',
'',
'create or replace trigger biu_eba_proj_template_ai',
'    before insert or update on eba_proj_template_ai',
'    for each row',
'begin',
'    if :new.id is null then',
'        :new.id := to_number(sys_guid(),''XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'');',
'    end if;',
'    if inserting then',
'        if :new.created is null then',
'            :new.created := localtimestamp;',
'        end if;',
'        if :new.created_by is null then',
'            :new.created_by := nvl(wwv_flow.g_user, user);',
'        end if;',
'        :new.row_version := 1;',
'    else',
'        :new.row_version := nvl(:old.row_version, 1) + 1;',
'    end if;',
'    :new.updated := localtimestamp;',
'    :new.updated_by := nvl(wwv_flow.g_user, user);',
'    update eba_proj_templates set updated = localtimestamp, updated_by = nvl(wwv_flow.g_user, user) where id = nvl(:new.template_id, :old.template_id);',
'end;',
'/',
'',
'alter trigger biu_eba_proj_template_ai enable',
'/'))
);
wwv_flow_api.component_end;
end;
/
