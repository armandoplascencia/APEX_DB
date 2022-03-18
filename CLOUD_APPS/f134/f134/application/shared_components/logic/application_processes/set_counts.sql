prompt --application/shared_components/logic/application_processes/set_counts
begin
--   Manifest
--     APPLICATION PROCESS: set counts
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>134
,p_default_id_offset=>172493832712964115
,p_default_owner=>'MISO'
);
wwv_flow_api.create_flow_process(
 p_id=>wwv_flow_api.id(6816938098961210876)
,p_process_sequence=>3
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'set counts'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    function fmt (p_number in number default 0) return varchar2',
'    as ',
'    begin',
'         if p_number >= 1000000 then',
'            return trim(to_char(trunc(p_number/1000000),''999G999G999G990''))||''M'';',
'         elsif p_number >= 1000 then',
'            return trim(to_char(trunc(p_number/1000),''999G999G999G990''))||''K'';',
'         else',
'            return trim(to_char(p_number,''999G999G999G990''));',
'         end if;',
'    end fmt;',
'begin',
'for c1 in (select count(*) c from EBA_PROJ_STATUS_FILES) loop',
'   :attachments := fmt(c1.c);',
'end loop;',
'',
'for c1 in (',
'select count(*) c  ',
'from eba_proj_status p, EBA_PROJ_STATUS_CODES s ',
'where p.PROJECT_STATUS = s.id(+) ',
'      and nvl(IS_CLOSED_STATUS,''N'') != ''Y'') loop',
'    :PROJECTS := fmt(c1.c);',
'end loop;',
'',
'for c1 in (select count(*) c  from eba_proj_status_ms) loop',
'    :MILESTONES := fmt(c1.c);',
'end loop;',
'for c1 in (select count(*) c  from eba_proj_status_ais) loop',
'    :AI := fmt(c1.c);',
'end loop;',
'for c1 in (select count(*) c  from EBA_PROJ_STATUS_RPTS) loop',
'    :SR := fmt(c1.c);',
'end loop;',
'for c1 in (select count(*) c  from eba_proj_status_updates) loop',
'    :UPDATES := fmt(c1.c);',
'end loop;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_when_type=>'NEVER'
);
wwv_flow_api.component_end;
end;
/
