prompt --application/deployment/install/install_create_table_eba_proj_status_searches
begin
--   Manifest
--     INSTALL: INSTALL-create table eba_proj_status_searches
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
 p_id=>wwv_flow_api.id(6169336282569252259)
,p_install_id=>wwv_flow_api.id(9012014618759672631)
,p_name=>'create table eba_proj_status_searches'
,p_sequence=>110
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'create table eba_proj_status_searches (',
'    id                      number primary key,',
'    row_version_number      number,',
'    search_date             timestamp(6) with local time zone,',
'    search_string           varchar2(4000),',
'    search_user             varchar2(255),',
'    hits                    number,',
'    parms                   varchar2(255)',
'    )',
'/',
'',
'    '))
);
wwv_flow_api.component_end;
end;
/
