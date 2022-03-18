prompt --application/shared_components/logic/application_processes/set_globals
begin
--   Manifest
--     APPLICATION PROCESS: set globals
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>112
,p_default_id_offset=>101618418936909290
,p_default_owner=>'MISO'
);
wwv_flow_api.create_flow_process(
 p_id=>wwv_flow_api.id(14959731146644144004)
,p_process_sequence=>4
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'set globals'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select trim(to_char(count(*),''999G999G999G999G990'')) into :CUSTOMERS from eba_cust_customers;',
'select trim(to_char(count(*),''999G999G999G999G990'')) into :PRODUCTS from eba_cust_products;',
'select trim(to_char(count(*),''999G999G999G999G990'')) into :CONTACTS from eba_cust_contacts;',
'select trim(to_char(count(*),''999G999G999G999G990'')) into :ACTIVITIES from eba_cust_activities;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_api.component_end;
end;
/
