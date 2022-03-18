prompt --application/deployment/install/install_ingest_log
begin
--   Manifest
--     INSTALL: INSTALL-ingest log
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>134
,p_default_id_offset=>172493832712964115
,p_default_owner=>'MISO'
);
wwv_flow_api.create_install_script(
 p_id=>wwv_flow_api.id(9029511437346077592)
,p_install_id=>wwv_flow_api.id(9012014618759672631)
,p_name=>'ingest log'
,p_sequence=>390
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'create table eba_proj_status_ingest_log (',
'    id                      number primary key,',
'    p_to                    varchar2(4000),',
'    p_from                  varchar2(4000),',
'    p_cc                    varchar2(4000),',
'    p_subject               varchar2(4000),',
'    p_body                  varchar2(4000),',
'    apply_date              date,',
'    rows_processed          number,',
'    row_key                 varchar2(255),',
'    component_id            number,',
'    log_info                varchar2(4000)',
'    )',
'/',
'',
'',
'CREATE OR REPLACE TRIGGER  bi_eba_proj_status_ingest_log',
'   before insert or update on eba_proj_status_ingest_log             ',
'   for each row ',
'begin  ',
'   if :new."ID" is null then',
'     select to_number(sys_guid(),''XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'') into :new.id from dual;',
'   end if;',
'   if inserting then',
'       :new.apply_date := current_date;',
'   end if;',
'end;',
'/',
'ALTER TRIGGER bi_eba_proj_status_ingest_log ENABLE',
'/'))
);
wwv_flow_api.component_end;
end;
/
