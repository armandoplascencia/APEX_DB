prompt --application/deployment/install/install_data_load_spec
begin
--   Manifest
--     INSTALL: INSTALL-data load spec
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>124
,p_default_id_offset=>97439342994982660
,p_default_owner=>'MISO'
);
wwv_flow_api.create_install_script(
 p_id=>wwv_flow_api.id(3338635223870907347)
,p_install_id=>wwv_flow_api.id(3289697526761372651)
,p_name=>'data load spec'
,p_sequence=>30
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'create or replace package  EBA_DEMO_FILE_DATA',
'as',
'procedure remove_data;',
'procedure load_data;',
'end;',
'/',
'show errors'))
);
wwv_flow_api.create_install_object(
 p_id=>wwv_flow_api.id(1759805007450649109)
,p_script_id=>wwv_flow_api.id(3338635223870907347)
,p_object_owner=>'#OWNER#'
,p_object_type=>'PACKAGE'
,p_object_name=>'EBA_DEMO_FILE_DATA'
,p_last_updated_on=>to_date('20141219062104','YYYYMMDDHH24MISS')
,p_created_on=>to_date('20141219062104','YYYYMMDDHH24MISS')
);
wwv_flow_api.component_end;
end;
/
