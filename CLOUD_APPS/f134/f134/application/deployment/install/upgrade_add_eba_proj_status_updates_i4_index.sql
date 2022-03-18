prompt --application/deployment/install/upgrade_add_eba_proj_status_updates_i4_index
begin
--   Manifest
--     INSTALL: UPGRADE-add EBA_PROJ_STATUS_UPDATES_i4 index 
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
 p_id=>wwv_flow_api.id(4340202234146947237)
,p_install_id=>wwv_flow_api.id(9012014618759672631)
,p_name=>'add EBA_PROJ_STATUS_UPDATES_i4 index '
,p_sequence=>1330
,p_script_type=>'UPGRADE'
,p_condition_type=>'NOT_EXISTS'
,p_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'from user_indexes',
'where index_name = ''EBA_PROJ_STATUS_UPDATES_I4'';'))
,p_script_clob=>'create index EBA_PROJ_STATUS_UPDATES_I4 on EBA_PROJ_STATUS_UPDATES$ (updated, id);'
);
wwv_flow_api.component_end;
end;
/
