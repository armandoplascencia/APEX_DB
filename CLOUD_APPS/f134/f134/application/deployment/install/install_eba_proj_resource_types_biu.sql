prompt --application/deployment/install/install_eba_proj_resource_types_biu
begin
--   Manifest
--     INSTALL: INSTALL-EBA_PROJ_RESOURCE_TYPES_BIU
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
 p_id=>wwv_flow_api.id(4303444582365040780)
,p_install_id=>wwv_flow_api.id(9012014618759672631)
,p_name=>'EBA_PROJ_RESOURCE_TYPES_BIU'
,p_sequence=>780
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'create or replace trigger eba_proj_resource_types_biu',
'    before insert or update on eba_proj_resource_types',
'    for each row',
'begin',
'    if :new.id is null then',
'        :new.id := to_number(sys_guid(),''XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'');',
'    end if;',
'    if inserting then',
'        :new.created := localtimestamp;',
'        :new.created_by := nvl(wwv_flow.g_user,user);',
'    end if;',
'    :new.updated := localtimestamp;',
'    :new.updated_by := nvl(wwv_flow.g_user,user);',
'end;',
'/'))
);
wwv_flow_api.component_end;
end;
/
