prompt --application/deployment/install/install_create_table_eba_proj_status_update_types
begin
--   Manifest
--     INSTALL: INSTALL-create table eba_proj_status_update_types 
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
 p_id=>wwv_flow_api.id(6169341093913274498)
,p_install_id=>wwv_flow_api.id(9012014618759672631)
,p_name=>'create table eba_proj_status_update_types '
,p_sequence=>190
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'create table eba_proj_status_update_types (',
'    id                     number primary key,',
'    row_version_number     number,',
'    status_update_type     varchar2(255) unique not null,',
'    is_active_yn           varchar2(1),',
'    display_sequence       number,',
'    type_short_desc        varchar2(255),',
'    --',
'    created                timestamp(6) with local time zone,',
'    created_by             varchar2(255),',
'    updated                timestamp(6) with local time zone,',
'    updated_by             varchar2(255)',
'    )',
'/',
'',
''))
);
wwv_flow_api.component_end;
end;
/
