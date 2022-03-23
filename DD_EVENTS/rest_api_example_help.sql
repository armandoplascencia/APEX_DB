create or replace function RESTAPI_DD_GET_events return clob
as   
v_max_time  number := 2764800-1;
--- {"errors": ["Trying to query too large a timeframe (max: 2764800)"]}
--- {"errors": ["start param must be greater than end param"]}
v_end_get     number := 1641070800;  -- Saturday, January 1, 2022 1:00:00 PM GMT-08:00
v_start_get   number := 1644528396;  -- Date and time (GMT): Thursday, February 10, 2022 9:26:36 PM
-- v_url      varchar2(4000) := 'https://api.datadoghq.com/api/v1/events?start=<TOKEN_START>&end=<TOKEN_END>';
 v_url      varchar2(4000) := 'https://api.datadoghq.com/api/v1/events?start=<TOKEN_END>&end=<TOKEN_START>';
 v_body     clob; 
 l_response clob;
begin  
if ( (v_end_get > (v_start_get)) )
then
    dbms_output.put_line(' warning !! (v_end_get > (v_start_get)) '||to_char(v_end_get)||'~'||to_char(v_start_get));
    v_end_get := (v_start_get - v_max_time);
end if;

if ( (v_start_get - v_end_get ) > v_max_time )
then
    dbms_output.put_line(' warning !!  (v_start_get - v_end_get ) > v_max_time  '||to_char(v_end_get)||'~'||to_char(v_start_get) );
    v_end_get := (v_start_get - v_max_time);
end if;

/*
--BEGIN
--  DBMS_NETWORK_ACL_ADMIN.create_acl (
--    acl          => 'MISO_open_acl_file.xml', 
--    description  => 'A test of the ACL functionality',
--    principal    => 'MISO',
--    is_grant     => TRUE, 
--    privilege    => 'connect',
--    start_date   => SYSTIMESTAMP,
--    end_date     => NULL);
--
--  DBMS_NETWORK_ACL_ADMIN.assign_acl (
--    acl         => 'apex21_MISO_open_acl_file.xml', 
--    host        => '*', 
--    lower_port  => 1,
--    upper_port  => 9999); 
--
--  COMMIT;
--END;
*/
apex_web_service.g_request_headers.delete;  

apex_web_service.g_request_headers(1).name := 'Content-Type';  
apex_web_service.g_request_headers(1).value := 'application/json';  

apex_web_service.g_request_headers(2).name := 'DD-API-KEY';  
apex_web_service.g_request_headers(2).value := '7d708b093319ed02d93adbb5bf694889';  

apex_web_service.g_request_headers(3).name := 'DD-APPLICATION-KEY';  
apex_web_service.g_request_headers(3).value := '12a419878abd82a6790373d42576544f8d9d3650';  

--apex_web_service.g_request_headers(4).name := 'Authorization';  
--apex_web_service.g_request_headers(4 ).value := 'Bearer XXX API KEY XXX';  

v_url := replace(v_url,'<TOKEN_START>',v_start_get);
v_url := replace(v_url,'<TOKEN_END>'  ,v_end_get);

l_response := apex_web_service.make_rest_request(p_url        => v_url,
                                                  p_http_method => 'GET',
                                                  p_body        => v_body);

if (apex_web_service.g_status_code = 200 )
 then    --OK    --do something with the response    
    null;
    --insert into visits_response      (source, abandonment)    values      ('TEST_URL', l_response);  
   else    --the call failed, inspect the response and fix the code :-)    
    null;
    --insert into errors values (...);  
 end if;
return (l_response);
exception when others then 
raise;
end;

create table json_serialize_test as select json_serialize( (select RESTAPI_DD_GET_events from dual) pretty) somedata from dual;
select * from json_serialize_test;


with abc as ( select RESTAPI_DD_GET_events JSONDATA 
                from dual 
            )
select xutl_json.json_to_xml( /*json_serialize(*/ abc.JSONDATA /*pretty)*/ ) from abc;




select t.* gtp, 
RESTAPI_DD_GET_events  from dual;

with abc as ( select  RESTAPI_DD_GET_events JSONDATA from dual )
select t.* from
abc,  
JSON_TABLE(abc.JSONDATA, '$'
           COLUMNS (
                    start               NUMBER              PATH start,
                    end                 NUMBER              PATH end,
                    priority            varchar2(4000)      PATH priority,
                    sources             VARCHAR2(4000 CHAR) PATH sources,
                    tags                VARCHAR2(4000 CHAR) PATH tags,
                    unaggregated        VARCHAR2(4000 CHAR) PATH unaggregated,
                    exclude_aggregate   VARCHAR2(4000 CHAR) PATH exclude_aggregate,
                    page                number              PATH page
                   )
          ) t;