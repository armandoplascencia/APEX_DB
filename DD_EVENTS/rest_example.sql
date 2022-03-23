create table "EBA_RESTDEMO_SAMPLE_EMP" (
    EMPNO     NUMBER,
    ENAME     VARCHAR2(4000),
    JOB       VARCHAR2(4000),
    MGR       NUMBER,
    HIREDATE  DATE,
    SAL       NUMBER,
    DEPTNO    NUMBER,
    RN        NUMBER
);

create table eba_restdemo_sample_github(
    name          varchar2(255),
    language      varchar2(50),
    description   varchar2(4000),
    updated_on    timestamp,
    created_on    timestamp,
    issues_cnt    number 
);

create table eba_restdemo_sample_urls(
    name         varchar2(255) not null primary key,
    url          varchar2(500) not null,
    https_host   varchar2(500),
    last_status  varchar2(500));
    
insert into eba_restdemo_sample_urls ( name, url ) values ('Github API', 'https://api.github.com');

create table eba_restdemo_sample_lang (
    name  varchar2(50) not null primary key,
    created_by varchar2(50) not null );
    
    
insert into eba_restdemo_sample_lang values ('Java', 'James Gosling');
insert into eba_restdemo_sample_lang values ('PLSQL', 'Oracle Corporation');
insert into eba_restdemo_sample_lang values ('Ruby', 'Yukihiro Matsumoto' );
insert into eba_restdemo_sample_lang values ('Python', 'Guido van Rossum');
insert into eba_restdemo_sample_lang values ('CSS', 'Håkon Wium Lie');
insert into eba_restdemo_sample_lang values ('C#', 'Microsoft Corporation' );
insert into eba_restdemo_sample_lang values ('Go', 'Google');
insert into eba_restdemo_sample_lang values ('Shell', 'N/A');
insert into eba_restdemo_sample_lang values ('SQLPL', 'N/A');

Create Package

create or replace type eba_restdemo_github_repo_t as object(
    name          varchar2(255),
    language      varchar2(50),
    description   varchar2(4000),
    updated_on    timestamp with time zone,
    created_on    timestamp with time zone,
    issues_cnt    number )
/
    
create or replace type eba_restdemo_github_repo_ct as table of eba_restdemo_github_repo_t
/

create or replace package eba_restdemo_sample_pkg is

function get_github_repos(
    p_max_rows in number default 10000 ) return eba_restdemo_github_repo_ct pipelined;

function test_url( p_url in varchar2, p_https_host in varchar2 ) return varchar2;

procedure test_all;

end eba_restdemo_sample_pkg;
/

create or replace package body eba_restdemo_sample_pkg is

function get_github_repos(
    p_max_rows in number default 10000 ) return eba_restdemo_github_repo_ct pipelined
is
    l_context     apex_exec.t_context;
    l_filters     apex_exec.t_filters;
    l_columns     apex_exec.t_columns;
     
    l_row         pls_integer := 1;

    l_name_idx    pls_integer;
    l_lang_idx    pls_integer;
    l_desc_idx    pls_integer;
    l_upd_idx     pls_integer;
    l_cr_idx      pls_integer;
    l_issues_idx  pls_integer;
begin
    apex_exec.add_column(
        p_columns        => l_columns,
        p_column_name    => 'NAME'        );
    apex_exec.add_column(
        p_columns        => l_columns,
        p_column_name    => 'LANGUAGE'    );
    apex_exec.add_column(
        p_columns        => l_columns,
        p_column_name    => 'DESCRIPTION' );
    apex_exec.add_column(
        p_columns        => l_columns,
        p_column_name    => 'UPDATED_AT'  );
    apex_exec.add_column(
        p_columns        => l_columns,
        p_column_name    => 'CREATED_AT'  );
    apex_exec.add_column(
        p_columns        => l_columns,
        p_column_name    => 'OPEN_ISSUES_COUNT'  );

    l_context := apex_exec.open_web_source_query(
        p_module_static_id  => 'Sample_Application_Github_Repositories',
        p_columns           => l_columns,
        p_max_rows          => p_max_rows );

    l_name_idx   := apex_exec.get_column_position( l_context, 'NAME'        );
    l_lang_idx   := apex_exec.get_column_position( l_context, 'LANGUAGE'    );
    l_desc_idx   := apex_exec.get_column_position( l_context, 'DESCRIPTION' );
    l_upd_idx    := apex_exec.get_column_position( l_context, 'UPDATED_AT'  );
    l_cr_idx     := apex_exec.get_column_position( l_context, 'CREATED_AT'  );
    l_issues_idx := apex_exec.get_column_position( l_context, 'OPEN_ISSUES_COUNT'  );

    while apex_exec.next_row( l_context ) loop

        pipe row( eba_restdemo_github_repo_t( 
            apex_exec.get_varchar2    ( l_context, l_name_idx ), 
            apex_exec.get_varchar2    ( l_context, l_lang_idx ), 
            apex_exec.get_varchar2    ( l_context, l_desc_idx ), 
            apex_exec.get_timestamp_tz( l_context, l_upd_idx ), 
            apex_exec.get_timestamp_tz( l_context, l_cr_idx ), 
            apex_exec.get_number      ( l_context, l_issues_idx )));

        l_row := l_row + 1;

    end loop;
    
    apex_exec.close( l_context );
    return;
exception
    when others then
    apex_exec.close( l_context );
    raise;    
end get_github_repos;

procedure test_all is
begin
   for i in (select name, url, https_host from eba_restdemo_sample_urls ) loop
       update eba_restdemo_sample_urls 
          set last_status = test_url( i.url, i.https_host )
        where name = i.name;
   end loop;
end test_all;

function test_url( p_url in varchar2, p_https_host in varchar2 ) return varchar2 is
    l_clob clob;
    l_result varchar2(255);
begin
    begin
        sys.utl_http.set_detailed_excp_support(true);
        apex_web_service.g_request_headers.delete;
        apex_web_service.g_request_headers( 1 ).name  := 'User-Agent';
        apex_web_service.g_request_headers( 1 ).value := 'Oracle Application Express';
    
        l_clob := apex_web_service.make_rest_request( p_url, 'GET', p_https_host => p_https_host, p_transfer_timeout => 15 );
        if apex_web_service.g_status_code between 200 and 399 then
            l_result := 'OK';
        else
            l_result := 'ERROR_HTTP-' || apex_web_service.g_status_code;
        end if;
    exception
        when others then
            if sqlcode = -24247 then l_result := 'ERROR_ACL';
            elsif sqlcode = -29024 then l_result := 'ERROR_CERT';
            elsif sqlcode = -12535 then l_result := 'ERROR_NETWORK';
            else l_result := 'ERROR_OTHER_' || sqlerrm;
            end if;
    end;
    return l_result;
end test_url;

end eba_restdemo_sample_pkg;
/

CONN / AS SYSDBA
BEGIN
  DBMS_NETWORK_ACL_ADMIN.create_acl (
    acl          => 'apex21_MISO_open_acl_file.xml', 
    description  => 'A test of the ACL functionality',
    principal    => 'APEX_210100',
    is_grant     => TRUE, 
    privilege    => 'connect',
    start_date   => SYSTIMESTAMP,
    end_date     => NULL);

  DBMS_NETWORK_ACL_ADMIN.assign_acl (
    acl         => 'apex21_MISO_open_acl_file.xml', 
    host        => '*', 
    lower_port  => 1,
    upper_port  => 9999); 

  COMMIT;
END;
/
BEGIN
  DBMS_NETWORK_ACL_ADMIN.create_acl (
    acl          => 'MISO_open_acl_file.xml', 
    description  => 'A test of the ACL functionality',
    principal    => 'MISO',
    is_grant     => TRUE, 
    privilege    => 'connect',
    start_date   => SYSTIMESTAMP,
    end_date     => NULL);

  DBMS_NETWORK_ACL_ADMIN.assign_acl (
    acl         => 'apex21_MISO_open_acl_file.xml', 
    host        => '*', 
    lower_port  => 1,
    upper_port  => 9999); 

  COMMIT;
END;
/