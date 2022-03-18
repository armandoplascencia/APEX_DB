prompt --application/deployment/install/upgrade_add_inc_in_status_eml_yn_to_template_ais
begin
--   Manifest
--     INSTALL: UPGRADE-add inc_in_status_eml_yn to template AIs
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
 p_id=>wwv_flow_api.id(18915987591117972927)
,p_install_id=>wwv_flow_api.id(9012014618759672631)
,p_name=>'add inc_in_status_eml_yn to template AIs'
,p_sequence=>690
,p_script_type=>'UPGRADE'
,p_condition_type=>'NOT_EXISTS'
,p_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'  from user_tab_cols',
' where table_name = ''EBA_PROJ_TEMPLATE_AI''',
'   and column_name = ''INC_IN_STATUS_EML_YN'''))
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'alter table eba_proj_template_ai add inc_in_status_eml_yn varchar2(1)',
'/'))
);
wwv_flow_api.component_end;
end;
/
