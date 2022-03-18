prompt --application/shared_components/logic/application_processes/clear_create_member_collections
begin
--   Manifest
--     APPLICATION PROCESS: Clear Create Member Collections
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
 p_id=>wwv_flow_api.id(7490691709945212259)
,p_process_sequence=>1
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Clear Create Member Collections'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_collection.delete_collection (',
'   p_collection_name => ''BULK_MBRS_CREATE'' );',
'apex_collection.delete_collection (',
'   p_collection_name => ''BULK_MBRS_INVALID'' );'))
,p_process_clob_language=>'PLSQL'
,p_security_scheme=>wwv_flow_api.id(3336588977096114584)
);
wwv_flow_api.component_end;
end;
/
