prompt --application/deployment/install/upgrade_add_label_template_name_to_flex_registry
begin
--   Manifest
--     INSTALL: UPGRADE-Add label_template_name to flex registry
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
 p_id=>wwv_flow_api.id(4344112810562040602)
,p_install_id=>wwv_flow_api.id(9012014618759672631)
,p_name=>'Add label_template_name to flex registry'
,p_sequence=>1340
,p_script_type=>'UPGRADE'
,p_condition_type=>'NOT_EXISTS'
,p_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'from user_tab_cols',
'where table_name = ''EBA_PROJ_FLEX_REGISTRY''',
'    and column_name = ''LABEL_TEMPLATE_NAME'''))
,p_script_clob=>'alter table eba_proj_flex_registry add label_template_name varchar2(255);'
);
wwv_flow_api.component_end;
end;
/
