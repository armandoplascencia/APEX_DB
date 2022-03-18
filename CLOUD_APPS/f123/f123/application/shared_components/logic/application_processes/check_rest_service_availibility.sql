prompt --application/shared_components/logic/application_processes/check_rest_service_availibility
begin
--   Manifest
--     APPLICATION PROCESS: Check REST Service Availibility
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>123
,p_default_id_offset=>111717178695017138
,p_default_owner=>'MISO'
);
wwv_flow_api.create_flow_process(
 p_id=>wwv_flow_api.id(1939081601804355341)
,p_process_sequence=>2
,p_process_point=>'ON_NEW_INSTANCE'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Check REST Service Availibility'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  l_response    clob;',
'  l_version_url varchar2(500);',
'',
'  l_parsed_json apex_json.t_values;',
'begin',
'  :SAMPLE_SERVICE_AVAILABLE := ''OK'';',
'  ',
'  l_version_url := replace( :SAMPLE_ENDPOINT_URL, ''/employees'', ''/version'' );',
'  l_response := apex_web_service.make_rest_request( l_version_url, ''GET'' );',
'  ',
'  if apex_web_service.g_status_code not between 200 and 299 then',
'    :SAMPLE_SERVICE_AVAILABLE := ''HTTP-''|| apex_web_service.g_status_code;',
'  else',
'    begin',
'      apex_json.parse(',
'        p_values => l_parsed_json,',
'        p_source => l_response',
'      );',
'      if apex_json.get_varchar2( p_values => l_parsed_json, p_path => ''version'' ) = ''21.1''',
'      then',
'        null;',
'      else ',
'        :SAMPLE_SERVICE_AVAILABLE := ''WRONG_SERVICE'';',
'      end if;   ',
'    exception when others then ',
'      :SAMPLE_SERVICE_AVAILABLE := ''WRONG_SERVICE'';',
'    end;',
'  end if;',
'  ',
'exception',
'  when others then',
'    if sqlcode = -29273 then',
'      if instr(sqlerrm, ''24247'') > 0 then ',
'        :SAMPLE_SERVICE_AVAILABLE := ''NO_ACL'';',
'      elsif instr(sqlerrm, ''29024'') > 0 then',
'        :SAMPLE_SERVICE_AVAILABLE := ''NO_WALLET'';',
'      else ',
'        :SAMPLE_SERVICE_AVAILABLE := ''NO_NETWORK'';',
'      end if;',
'    end if;',
'end;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_api.component_end;
end;
/
