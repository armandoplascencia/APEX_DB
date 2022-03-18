prompt --application/deployment/install/eba_qpoll_quiz_body
begin
--   Manifest
--     INSTALL: -eba_qpoll_quiz body
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
 p_id=>wwv_flow_api.id(14029557703802010744)
,p_install_id=>wwv_flow_api.id(16006903818735772086)
,p_name=>'eba_qpoll_quiz body'
,p_sequence=>520
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'create or replace package body eba_qpoll_quiz is',
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
'   return varchar2',
'is',
'   l_concat   varchar2(4000);',
'   l_delim    varchar2(1);',
'   l_answers  varchar2(4000);',
'begin',
'',
'   l_concat := p_answer_01 || p_answer_02 || p_answer_03 || p_answer_04 ||',
'               p_answer_05 || p_answer_06 || p_answer_07 || p_answer_08 ||',
'               p_answer_09 || p_answer_10 || p_answer_11 || p_answer_12;',
'',
'   if instr(l_concat,'','') = 0 then',
'      l_delim := '','';',
'   elsif instr(l_concat,'':'') = 0 then',
'      l_delim := '':'';',
'   elsif instr(l_concat,''/'') = 0 then',
'      l_delim := ''/'';',
'   elsif instr(l_concat,''~'') = 0 then',
'      l_delim := ''~'';',
'   elsif instr(l_concat,''!'') = 0 then',
'      l_delim := ''!'';',
'   elsif instr(l_concat,''$'') = 0 then',
'      l_delim := ''$'';',
'   elsif instr(l_concat,''%'') = 0 then',
'      l_delim := ''%'';',
'   elsif instr(l_concat,''^'') = 0 then',
'      l_delim := ''^'';',
'   elsif instr(l_concat,''a'') = 0 then',
'      l_delim := ''a'';',
'   elsif instr(l_concat,''x'') = 0 then',
'      l_delim := ''x'';',
'   end if;',
'',
'   if trim(p_answer_01) is not null then',
'      l_answers := trim(p_answer_01);',
'   end if;',
'   if trim(p_answer_02) is not null then',
'      l_answers := l_answers || l_delim || trim(p_answer_02);',
'   end if;',
'   if trim(p_answer_03) is not null then',
'      l_answers := l_answers || l_delim || trim(p_answer_03);',
'   end if;',
'   if trim(p_answer_04) is not null then',
'      l_answers := l_answers || l_delim || trim(p_answer_04);',
'   end if;',
'   if trim(p_answer_05) is not null then',
'      l_answers := l_answers || l_delim || trim(p_answer_05);',
'   end if;',
'   if trim(p_answer_06) is not null then',
'      l_answers := l_answers || l_delim || trim(p_answer_06);',
'   end if;',
'   if trim(p_answer_07) is not null then',
'      l_answers := l_answers || l_delim || trim(p_answer_07);',
'   end if;',
'   if trim(p_answer_08) is not null then',
'      l_answers := l_answers || l_delim || trim(p_answer_08);',
'   end if;',
'   if trim(p_answer_09) is not null then',
'      l_answers := l_answers || l_delim || trim(p_answer_09);',
'   end if;',
'   if trim(p_answer_10) is not null then',
'      l_answers := l_answers || l_delim || trim(p_answer_10);',
'   end if;',
'   if trim(p_answer_11) is not null then',
'      l_answers := l_answers || l_delim || trim(p_answer_11);',
'   end if;',
'   if trim(p_answer_12) is not null then',
'      l_answers := l_answers || l_delim || trim(p_answer_12);',
'   end if;',
'',
'   l_answers := l_delim || l_answers || l_delim;',
'',
'   return l_answers;',
'',
'end delim_answers;',
'',
'',
'',
'function delim_answers_disp (',
'   p_correct_answer  in  varchar2',
'   )',
'   return varchar2',
'is',
'   l_delim        varchar2(1);',
'   l_answer_disp  varchar2(4000);',
'begin',
'',
'   l_delim := substr(p_correct_answer,1,1);',
'',
'   l_answer_disp := trim(both l_delim from p_correct_answer);',
'',
'   l_answer_disp := replace(l_answer_disp,l_delim, '', '');',
'',
'   return l_answer_disp;',
'',
'end delim_answers_disp;',
'',
'',
'end eba_qpoll_quiz;',
'/'))
);
wwv_flow_api.create_install_object(
 p_id=>wwv_flow_api.id(14756831893037683824)
,p_script_id=>wwv_flow_api.id(14029557703802010744)
,p_object_owner=>'#OWNER#'
,p_object_type=>'PACKAGE BODY'
,p_object_name=>'EBA_QPOLL_QUIZ'
,p_last_updated_on=>to_date('20141219062057','YYYYMMDDHH24MISS')
,p_created_on=>to_date('20141219062057','YYYYMMDDHH24MISS')
);
wwv_flow_api.component_end;
end;
/
