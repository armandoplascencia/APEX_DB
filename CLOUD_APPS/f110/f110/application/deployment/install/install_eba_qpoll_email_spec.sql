prompt --application/deployment/install/install_eba_qpoll_email_spec
begin
--   Manifest
--     INSTALL: INSTALL-eba_qpoll_email spec
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
 p_id=>wwv_flow_api.id(14004404098459921339)
,p_install_id=>wwv_flow_api.id(16006903818735772086)
,p_name=>'eba_qpoll_email spec'
,p_sequence=>35
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'create or replace package eba_qpoll_email as',
'',
'procedure send (',
'   p_app_id              in   number,',
'   p_template_static_id  in   varchar2,',
'   p_placeholders        in   clob,',
'   p_to                  in   varchar2,',
'   p_from                in   varchar2,',
'   p_cc                  in   varchar2  default null,',
'   p_poll_id             in   number    default null,',
'   p_community_id        in   number    default null,',
'   p_respondent_id       in   number    default null,',
'   p_email_id            out  number );',
'   ',
'end eba_qpoll_email;',
'/'))
);
wwv_flow_api.component_end;
end;
/
