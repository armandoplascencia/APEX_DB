prompt --application/deployment/install/upgrade_eba_proj_tags_ck_check_constraint
begin
--   Manifest
--     INSTALL: UPGRADE-eba_proj_tags_ck check constraint
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
 p_id=>wwv_flow_api.id(6091916682557790647)
,p_install_id=>wwv_flow_api.id(9012014618759672631)
,p_name=>'eba_proj_tags_ck check constraint'
,p_sequence=>280
,p_script_type=>'UPGRADE'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'alter table eba_proj_tags$ drop constraint  eba_proj_tags_ck;',
'alter table eba_proj_tags$ add constraint eba_proj_tags_ck check',
'                            (content_type in (''STATUS'',''FILE'',''AI'',''MILESTONE'',''LINK'',''UPDATES''));',
'',
''))
);
wwv_flow_api.component_end;
end;
/
