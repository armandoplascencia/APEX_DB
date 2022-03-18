prompt --application/deployment/install/eba_qpoll_quiz_spec
begin
--   Manifest
--     INSTALL: -eba_qpoll_quiz spec
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
 p_id=>wwv_flow_api.id(14029557492028007324)
,p_install_id=>wwv_flow_api.id(16006903818735772086)
,p_name=>'eba_qpoll_quiz spec'
,p_sequence=>30
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'create or replace package eba_qpoll_quiz is',
'',
'',
'function delim_answers (',
'   p_answer_01  in  varchar2,',
'   p_answer_02  in  varchar2,',
'   p_answer_03  in  varchar2,',
'   p_answer_04  in  varchar2,',
'   p_answer_05  in  varchar2,',
'   p_answer_06  in  varchar2,',
'   p_answer_07  in  varchar2,',
'   p_answer_08  in  varchar2,',
'   p_answer_09  in  varchar2,',
'   p_answer_10  in  varchar2,',
'   p_answer_11  in  varchar2,',
'   p_answer_12  in  varchar2',
'   )',
'   return varchar2;',
'',
'',
'function delim_answers_disp (',
'   p_correct_answer  in  varchar2',
'   )',
'   return varchar2;',
'',
'',
'end eba_qpoll_quiz;',
'/'))
);
wwv_flow_api.create_install_object(
 p_id=>wwv_flow_api.id(14756825911825683626)
,p_script_id=>wwv_flow_api.id(14029557492028007324)
,p_object_owner=>'#OWNER#'
,p_object_type=>'PACKAGE'
,p_object_name=>'EBA_QPOLL_QUIZ'
,p_last_updated_on=>to_date('20141219062055','YYYYMMDDHH24MISS')
,p_created_on=>to_date('20141219062055','YYYYMMDDHH24MISS')
);
wwv_flow_api.component_end;
end;
/
