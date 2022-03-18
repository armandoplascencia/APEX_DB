prompt --application/deployment/install/upgrade_add_is_desirable_yn_to_eba_proj_status_codes
begin
--   Manifest
--     INSTALL: UPGRADE-add is_desirable_yn to EBA_PROJ_STATUS_CODES
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
 p_id=>wwv_flow_api.id(6172829594597924635)
,p_install_id=>wwv_flow_api.id(9012014618759672631)
,p_name=>'add is_desirable_yn to EBA_PROJ_STATUS_CODES'
,p_sequence=>320
,p_script_type=>'UPGRADE'
,p_condition_type=>'NOT_EXISTS'
,p_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'from user_tab_cols',
'where table_name in ( ''EBA_PROJ_STATUS_CODES'')',
'    and column_name = ''IS_DESIRABLE_YN'''))
,p_script_clob=>'alter table eba_proj_status_codes add is_desirable_yn varchar2(1);'
);
wwv_flow_api.component_end;
end;
/
