prompt --application/deployment/install/install_biu_eba_proj_status_ais_ty
begin
--   Manifest
--     INSTALL: INSTALL-biu_eba_proj_status_ais_ty
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
 p_id=>wwv_flow_api.id(4303434894004028488)
,p_install_id=>wwv_flow_api.id(9012014618759672631)
,p_name=>'biu_eba_proj_status_ais_ty'
,p_sequence=>760
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'create or replace trigger biu_eba_proj_status_ais_ty',
'    before insert or update on eba_proj_status_ais_types',
'    for each row',
'begin',
'    if :new.id is null then',
'        :new.id := to_number(sys_guid(),''XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'');',
'    end if;',
'    if inserting then',
'        :new.created := localtimestamp;',
'        :new.created_by := nvl(sys_context(''APEX$SESSION'',''APP_USER''),user);',
'        :new.row_version_number := 1;',
'    elsif updating then',
'        :new.row_version_number := nvl(:old.row_version_number,1) + 1;',
'    end if;',
'    if inserting or updating then',
'        :new.updated := localtimestamp;',
'        :new.updated_by := nvl(sys_context(''APEX$SESSION'',''APP_USER''),user);',
'    end if;',
'end;',
'/'))
);
wwv_flow_api.component_end;
end;
/
