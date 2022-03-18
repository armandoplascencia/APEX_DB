prompt --application/deployment/install/upgrade_add_photo_columns_to_user_table
begin
--   Manifest
--     INSTALL: UPGRADE-Add photo columns to user table
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
 p_id=>wwv_flow_api.id(15289209921621069562)
,p_install_id=>wwv_flow_api.id(9012014618759672631)
,p_name=>'Add photo columns to user table'
,p_sequence=>530
,p_script_type=>'UPGRADE'
,p_condition_type=>'NOT_EXISTS'
,p_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'from user_tab_cols',
'where table_name = ''EBA_PROJ_STATUS_USERS''',
'    and column_name = ''PHOTO_BLOB'''))
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'alter table EBA_PROJ_STATUS_USERS add (',
'   photo_blob         blob,',
'   photo_name         varchar2(512),',
'   photo_mimetype     varchar2(512),',
'   photo_charset      varchar2(512),',
'   photo_lastupd      date,',
'   first_name         varchar2(100),',
'   last_name          varchar2(100)',
');'))
);
wwv_flow_api.component_end;
end;
/
