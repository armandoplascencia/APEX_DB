prompt --application/deployment/install/upgrade_action_item_milestone_index
begin
--   Manifest
--     INSTALL: UPGRADE-Action Item Milestone index
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
 p_id=>wwv_flow_api.id(6296152686928686503)
,p_install_id=>wwv_flow_api.id(9012014618759672631)
,p_name=>'Action Item Milestone index'
,p_sequence=>380
,p_script_type=>'UPGRADE'
,p_condition_type=>'NOT_EXISTS'
,p_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select *',
'from user_indexes',
'where index_name = ''EBA_PROJ_STATUS_AIS_I7'''))
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'create index eba_proj_status_ais_i7 on eba_proj_status_ais( milestone_id );',
''))
);
wwv_flow_api.component_end;
end;
/
