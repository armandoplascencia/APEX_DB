prompt --application/shared_components/logic/application_processes/determine_endpoint_url
begin
--   Manifest
--     APPLICATION PROCESS: Determine Endpoint URL
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>129
,p_default_id_offset=>101668256384016436
,p_default_owner=>'MISO'
);
wwv_flow_api.create_flow_process(
 p_id=>wwv_flow_api.id(1919899975947214561)
,p_process_sequence=>1
,p_process_point=>'ON_NEW_INSTANCE'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Determine Endpoint URL'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_path_prefix apex_applications.workspace%type;',
'begin',
'    begin',
'        select url into :SAMPLE_ENDPOINT_URL',
'          from eba_restdemo_sample_urls',
'         where name = ''ORDS EMP'';',
'    exception ',
'        when NO_DATA_FOUND then',
'            if not apex_application_global.g_cloud then',
'                select rtrim( w.path_prefix, ''/'' ) || ''/''',
'                  into l_path_prefix',
'                  from apex_applications a, apex_workspaces w',
'                 where a.workspace_id = w.workspace_id',
'                   and a.application_id = v( ''APP_ID'' );',
'            end if;',
'',
'            :SAMPLE_ENDPOINT_URL := apex_util.host_url(''APEX_PATH'') ||',
'                lower( l_path_prefix ) ||',
'               ''hr/employees/'';',
'    end;',
'end;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_api.component_end;
end;
/
