prompt --application/shared_components/logic/application_processes/default_time_zone
begin
--   Manifest
--     APPLICATION PROCESS: Default Time Zone
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>126
,p_default_id_offset=>101651461840938715
,p_default_owner=>'MISO'
);
wwv_flow_api.create_flow_process(
 p_id=>wwv_flow_api.id(8061548130759244536)
,p_process_sequence=>1
,p_process_point=>'AFTER_LOGIN'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Default Time Zone'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  c integer := 0;',
'begin',
'for c1 in (',
'   select TIMEZONE_PREFERENCE',
'   from   eba_ca_tz_pref',
'   where  USERID = upper(:APP_USER)) loop',
'   --',
'   if c1.TIMEZONE_PREFERENCE is not null then',
'       c := c + 1;',
'       APEX_UTIL.SET_SESSION_TIME_ZONE (P_TIME_ZONE => c1.TIMEZONE_PREFERENCE ); ',
'       :P100_TIMEZONE := c1.TIMEZONE_PREFERENCE;',
'       :F855_TIMEZONE := c1.TIMEZONE_PREFERENCE;',
'   end if;',
'   exit;',
'end loop;',
'if c = 0 then',
'        APEX_UTIL.SET_SESSION_TIME_ZONE (P_TIME_ZONE => ''US/Pacific''); ',
'       :P100_TIMEZONE := ''US/Pacific'';',
'       :F855_TIMEZONE := ''US/Pacific'';',
'end if;',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Failed to default time zone'
);
wwv_flow_api.component_end;
end;
/
