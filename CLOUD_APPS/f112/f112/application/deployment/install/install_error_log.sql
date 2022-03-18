prompt --application/deployment/install/install_error_log
begin
--   Manifest
--     INSTALL: INSTALL-error log
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>112
,p_default_id_offset=>101618418936909290
,p_default_owner=>'MISO'
);
wwv_flow_api.create_install_script(
 p_id=>wwv_flow_api.id(16807468801436452148)
,p_install_id=>wwv_flow_api.id(17893718049487094920)
,p_name=>'error log'
,p_sequence=>20
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'create table eba_cust_errors (',
'    id                 number not null',
'                       constraint eba_cust_errors_pk',
'                       primary key,',
'    err_time           timestamp with time zone',
'                       default current_timestamp',
'                       not null,',
'    app_id             number,',
'    app_page_id        number,',
'    app_user           varchar2(512),',
'    user_agent         varchar2(4000),',
'    ip_address         varchar2(512), -- As reported by owa_util.get_cgi_env',
'    ip_address2       varchar2(512), -- As reported by sys_context',
'    -- From APEX_ERROR.T_ERROR:',
'    message           varchar2(4000), /* Displayed error message */',
'    page_item_name    varchar2(255),  /* Associated page item name */',
'    region_id         number,         /* Associated tabular form region id of the primary application */',
'    column_alias      varchar2(255),  /* Associated tabular form column alias */',
'    row_num           number,         /* Associated tabular form row */',
'    apex_error_code   varchar2(255),  /* Contains the system message code if it''''s an error raised by APEX */',
'    ora_sqlcode       number,         /* SQLCODE on exception stack which triggered the error, NULL if the error was not raised by an ORA error */',
'    ora_sqlerrm       varchar2(4000), /* SQLERRM which triggered the error, NULL if the error was not raised by an ORA error */',
'    error_backtrace   varchar2(4000)  /* Output of dbms_utility.format_error_backtrace or dbms_utility.format_call_stack */',
'    -- END APEX_ERROR.T_ERROR',
');',
'',
'create index eba_cust_errors_i1 on eba_cust_errors( err_time );',
'',
'create or replace trigger bi_eba_cust_errors',
'    before insert or update on eba_cust_errors',
'    for each row',
'begin',
'    if :new.id is null then',
'        select to_number(sys_guid(),''XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'') into :new.id from dual;',
'    end if;',
'end;',
'/',
'show errors',
''))
);
wwv_flow_api.component_end;
end;
/
