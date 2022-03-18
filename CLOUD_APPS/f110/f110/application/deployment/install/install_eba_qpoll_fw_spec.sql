prompt --application/deployment/install/install_eba_qpoll_fw_spec
begin
--   Manifest
--     INSTALL: INSTALL-eba_qpoll_fw spec
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
 p_id=>wwv_flow_api.id(16597656222831379344)
,p_install_id=>wwv_flow_api.id(16006903818735772086)
,p_name=>'eba_qpoll_fw spec'
,p_sequence=>15
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'create or replace package eba_qpoll_fw as',
'    function conv_txt_html (',
'        p_txt_message in varchar2 )',
'        return varchar2;',
'    function conv_urls_links (',
'        p_string in varchar2 )',
'        return varchar2;',
'    function selective_escape (',
'        p_text  in varchar2,',
'        p_tags  in varchar2 default ''<h2>,</h2>,<p>,</p>,<b>,</b>,<li>,</li>,<ul>,</ul>,<br />,<i>,</i>,<h3>,</h3>'' )',
'        return varchar2;',
'    function get_preference_value (',
'        p_preference_name in varchar2 )',
'        return varchar2;',
'    procedure set_preference_value (',
'        p_preference_name  in varchar2, ',
'        p_preference_value in varchar2 );',
'    function compress_int (',
'        n in integer )',
'        return varchar2;',
'    procedure add_error_log ( ',
'        p_error           in apex_error.t_error,',
'        p_procedure_name  in varchar2 default null,',
'        p_error_text      in varchar2 default null,',
'        p_arg1_name       in varchar2 default null,',
'        p_arg1_val        in varchar2 default null,',
'        p_arg2_name       in varchar2 default null,',
'        p_arg2_val        in varchar2 default null,',
'        p_arg3_name       in varchar2 default null,',
'        p_arg3_val        in varchar2 default null,',
'        p_arg4_name       in varchar2 default null,',
'        p_arg4_val        in varchar2 default null );',
'    function apex_error_handling (',
'        p_error in apex_error.t_error )',
'        return apex_error.t_error_result;',
'end eba_qpoll_fw;',
'/',
'show errors'))
);
wwv_flow_api.create_install_object(
 p_id=>wwv_flow_api.id(14756826424063683650)
,p_script_id=>wwv_flow_api.id(16597656222831379344)
,p_object_owner=>'#OWNER#'
,p_object_type=>'PACKAGE'
,p_object_name=>'EBA_QPOLL_FW'
,p_last_updated_on=>to_date('20141219062055','YYYYMMDDHH24MISS')
,p_created_on=>to_date('20141219062055','YYYYMMDDHH24MISS')
);
wwv_flow_api.component_end;
end;
/
