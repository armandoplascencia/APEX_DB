prompt --application/deployment/install/install_create_package
begin
--   Manifest
--     INSTALL: INSTALL-Create Package
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>129
,p_default_id_offset=>101668256384016436
,p_default_owner=>'MISO'
);
wwv_flow_api.create_install_script(
 p_id=>wwv_flow_api.id(264251399528130571)
,p_install_id=>wwv_flow_api.id(261631896215104599)
,p_name=>'Create Package'
,p_sequence=>20
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'create or replace type eba_restdemo_github_repo_t as object(',
'    name          varchar2(255),',
'    language      varchar2(50),',
'    description   varchar2(4000),',
'    updated_on    timestamp with time zone,',
'    created_on    timestamp with time zone,',
'    issues_cnt    number )',
'/',
'    ',
'create or replace type eba_restdemo_github_repo_ct as table of eba_restdemo_github_repo_t',
'/',
'',
'create or replace package eba_restdemo_sample_pkg is',
'',
'function get_github_repos(',
'    p_max_rows in number default 10000 ) return eba_restdemo_github_repo_ct pipelined;',
'',
'function test_url( p_url in varchar2, p_https_host in varchar2 ) return varchar2;',
'',
'procedure test_all;',
'',
'end eba_restdemo_sample_pkg;',
'/',
'',
'create or replace package body eba_restdemo_sample_pkg is',
'',
'function get_github_repos(',
'    p_max_rows in number default 10000 ) return eba_restdemo_github_repo_ct pipelined',
'is',
'    l_context     apex_exec.t_context;',
'    l_filters     apex_exec.t_filters;',
'    l_columns     apex_exec.t_columns;',
'     ',
'    l_row         pls_integer := 1;',
'',
'    l_name_idx    pls_integer;',
'    l_lang_idx    pls_integer;',
'    l_desc_idx    pls_integer;',
'    l_upd_idx     pls_integer;',
'    l_cr_idx      pls_integer;',
'    l_issues_idx  pls_integer;',
'begin',
'    apex_exec.add_column(',
'        p_columns        => l_columns,',
'        p_column_name    => ''NAME''        );',
'    apex_exec.add_column(',
'        p_columns        => l_columns,',
'        p_column_name    => ''LANGUAGE''    );',
'    apex_exec.add_column(',
'        p_columns        => l_columns,',
'        p_column_name    => ''DESCRIPTION'' );',
'    apex_exec.add_column(',
'        p_columns        => l_columns,',
'        p_column_name    => ''UPDATED_AT''  );',
'    apex_exec.add_column(',
'        p_columns        => l_columns,',
'        p_column_name    => ''CREATED_AT''  );',
'    apex_exec.add_column(',
'        p_columns        => l_columns,',
'        p_column_name    => ''OPEN_ISSUES_COUNT''  );',
'',
'    l_context := apex_exec.open_web_source_query(',
'        p_module_static_id  => ''Sample_Application_Github_Repositories'',',
'        p_columns           => l_columns,',
'        p_max_rows          => p_max_rows );',
'',
'    l_name_idx   := apex_exec.get_column_position( l_context, ''NAME''        );',
'    l_lang_idx   := apex_exec.get_column_position( l_context, ''LANGUAGE''    );',
'    l_desc_idx   := apex_exec.get_column_position( l_context, ''DESCRIPTION'' );',
'    l_upd_idx    := apex_exec.get_column_position( l_context, ''UPDATED_AT''  );',
'    l_cr_idx     := apex_exec.get_column_position( l_context, ''CREATED_AT''  );',
'    l_issues_idx := apex_exec.get_column_position( l_context, ''OPEN_ISSUES_COUNT''  );',
'',
'    while apex_exec.next_row( l_context ) loop',
'',
'        pipe row( eba_restdemo_github_repo_t( ',
'            apex_exec.get_varchar2    ( l_context, l_name_idx ), ',
'            apex_exec.get_varchar2    ( l_context, l_lang_idx ), ',
'            apex_exec.get_varchar2    ( l_context, l_desc_idx ), ',
'            apex_exec.get_timestamp_tz( l_context, l_upd_idx ), ',
'            apex_exec.get_timestamp_tz( l_context, l_cr_idx ), ',
'            apex_exec.get_number      ( l_context, l_issues_idx )));',
'',
'        l_row := l_row + 1;',
'',
'    end loop;',
'    ',
'    apex_exec.close( l_context );',
'    return;',
'exception',
'    when others then',
'    apex_exec.close( l_context );',
'    raise;    ',
'end get_github_repos;',
'',
'procedure test_all is',
'begin',
'   for i in (select name, url, https_host from eba_restdemo_sample_urls ) loop',
'       update eba_restdemo_sample_urls ',
'          set last_status = test_url( i.url, i.https_host )',
'        where name = i.name;',
'   end loop;',
'end test_all;',
'',
'function test_url( p_url in varchar2, p_https_host in varchar2 ) return varchar2 is',
'    l_clob clob;',
'    l_result varchar2(255);',
'begin',
'    begin',
'        sys.utl_http.set_detailed_excp_support(true);',
'        apex_web_service.g_request_headers.delete;',
'        apex_web_service.g_request_headers( 1 ).name  := ''User-Agent'';',
'        apex_web_service.g_request_headers( 1 ).value := ''Oracle Application Express'';',
'    ',
'        l_clob := apex_web_service.make_rest_request( p_url, ''GET'', p_https_host => p_https_host, p_transfer_timeout => 15 );',
'        if apex_web_service.g_status_code between 200 and 399 then',
'            l_result := ''OK'';',
'        else',
'            l_result := ''ERROR_HTTP-'' || apex_web_service.g_status_code;',
'        end if;',
'    exception',
'        when others then',
'            if sqlcode = -24247 then l_result := ''ERROR_ACL'';',
'            elsif sqlcode = -29024 then l_result := ''ERROR_CERT'';',
'            elsif sqlcode = -12535 then l_result := ''ERROR_NETWORK'';',
'            else l_result := ''ERROR_OTHER_'' || sqlerrm;',
'            end if;',
'    end;',
'    return l_result;',
'end test_url;',
'',
'end eba_restdemo_sample_pkg;',
'/'))
);
wwv_flow_api.component_end;
end;
/
