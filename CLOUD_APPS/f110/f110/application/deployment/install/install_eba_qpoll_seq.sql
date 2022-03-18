prompt --application/deployment/install/install_eba_qpoll_seq
begin
--   Manifest
--     INSTALL: INSTALL-eba_qpoll_seq
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>110
,p_default_id_offset=>101599614921830918
,p_default_owner=>'MISO'
);
wwv_flow_api.create_install_script(
 p_id=>wwv_flow_api.id(16163719820699673841)
,p_install_id=>wwv_flow_api.id(16006903818735772086)
,p_name=>'eba_qpoll_seq'
,p_sequence=>40
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'create sequence eba_qpoll_seq  minvalue 1000 maxvalue 999999999999999999999999999 increment by 1 start with 1000 cache 20 noorder  nocycle;',
'    ',
''))
);
wwv_flow_api.component_end;
end;
/
