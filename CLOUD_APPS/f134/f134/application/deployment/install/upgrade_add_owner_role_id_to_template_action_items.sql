prompt --application/deployment/install/upgrade_add_owner_role_id_to_template_action_items
begin
--   Manifest
--     INSTALL: UPGRADE-Add owner_role_id to Template Action Items
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
 p_id=>wwv_flow_api.id(15338482116730998556)
,p_install_id=>wwv_flow_api.id(9012014618759672631)
,p_name=>'Add owner_role_id to Template Action Items'
,p_sequence=>560
,p_script_type=>'UPGRADE'
,p_condition_type=>'NOT_EXISTS'
,p_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'from user_tab_cols',
'where table_name = ''EBA_PROJ_TEMPLATE_AI''',
'    and column_name = ''OWNER_ROLE_ID'''))
,p_script_clob=>'alter table EBA_PROJ_TEMPLATE_AI add owner_role_id number;'
);
wwv_flow_api.component_end;
end;
/
