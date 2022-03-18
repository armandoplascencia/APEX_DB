prompt --application/deployment/install/upgrade_recreate_user_ref_uq_idx
begin
--   Manifest
--     INSTALL: UPGRADE-recreate user ref uq idx
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
 p_id=>wwv_flow_api.id(3590182923865629185)
,p_install_id=>wwv_flow_api.id(9012014618759672631)
,p_name=>'recreate user ref uq idx'
,p_sequence=>1230
,p_script_type=>'UPGRADE'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'drop index EBA_PROJ_USER_REF_U1',
'/',
'',
'create UNIQUE INDEX EBA_PROJ_USER_REF_U1 ON EBA_PROJ_USER_REF (USER_ID, PROJECT_ID, ROLE_ID)',
'/'))
);
wwv_flow_api.component_end;
end;
/
