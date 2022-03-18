prompt --application/deployment/definition
begin
--   Manifest
--     INSTALL: 123
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>123
,p_default_id_offset=>111717178695017138
,p_default_owner=>'MISO'
);
wwv_flow_api.create_install(
 p_id=>wwv_flow_api.id(271680818526105301)
,p_deinstall_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'drop table eba_restdemo_sample_emp',
'/',
'',
'drop package eba_restdemo_sample_pkg',
'/',
'',
'drop table eba_restdemo_sample_github',
'/',
'',
'drop type eba_restdemo_github_repo_ct',
'/',
'',
'drop type eba_restdemo_github_repo_t',
'/',
'',
'drop table eba_restdemo_sample_urls',
'/',
'',
'drop table eba_restdemo_sample_lang',
'/'))
);
wwv_flow_api.component_end;
end;
/
