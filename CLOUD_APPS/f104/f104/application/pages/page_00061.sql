prompt --application/pages/page_00061
begin
--   Manifest
--     PAGE: 00061
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>104
,p_default_id_offset=>0
,p_default_owner=>'MISO'
);
wwv_flow_api.create_page(
 p_id=>61
,p_user_interface_id=>wwv_flow_api.id(41820330279533220)
,p_name=>'blank'
,p_alias=>'BLANK'
,p_step_title=>'blank'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'MISO'
,p_last_upd_yyyymmddhh24miss=>'20211029234028'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(44746077706826601)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(41730750648533116)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
' l_prefix varchar2(100) := ''EBA_DBTOOLS'';     ',
' l_spaces varchar2(100) := ''  '';          ',
' l_enter  varchar2(100) := CHR(10);       ',
'begin ',
'  for t in (select t.table_name, ',
'                   case when m.comments is not null then '' ['' || replace(replace(replace(m.comments,''['',''{''),'']'',''}''),CHR(10)) ||'']'' end as comments',
'              from user_tables t, user_tab_comments m,                                       ',
'                   (select max(lvl) as lvl, table_name',
'                      from ',
'                      (select level as lvl, table_name, rpad(''_'', (level-1)*2, ''_'') || table_name as tbl ',
'                        from (',
'                          select a.table_name, a.constraint_name pkey_constraint, b.constraint_name fkey_constraint, b.r_constraint_name ',
'                            from user_constraints a, user_constraints b ',
'                          where a.table_name = b.table_name (+)',
'                            and a.constraint_type = ''P'' ',
'                            and b.constraint_type (+) = ''R'' ',
'                            and a.table_name like l_prefix || ''%''',
'                        )',
'                        start with fkey_constraint is null ',
'                        connect by prior pkey_constraint = r_constraint_name ',
'                      )',
'                     group by table_name  ',
'                   ) o ',
'             where t.table_name = m.table_name (+)',
'               and t.table_name = o.table_name (+)',
'               and t.table_name like l_prefix || ''%''',
'             order by o.lvl, t.table_name ',
'           )',
'  loop',
'    sys.htp.prn(l_enter || l_enter || lower(replace(t.table_name,l_prefix||''_'')) || t.comments );',
'    for c in (select c.column_name, c.data_type, c.data_length, c.data_precision, c.data_scale, ',
'                     c.nullable, c.default_length, c.data_default,',
'                     case when to_char(c.data_length) is not null and (c.data_type = ''NUMBER'')',
'                          then c.data_type || ''('' || to_char(c.data_length) || '','' || nvl(c.data_precision,0) ||'')''',
'                          when c.data_type in (''BLOB'',''CLOB'',''DATE'')',
'                          then c.data_type',
'                          when to_char(c.data_length) is not null ',
'                          then c.data_type || ''('' || to_char(c.data_length) ||'')''',
'                          else c.data_type',
'                     end as data_type_length,',
'                     case when m.comments is not null then '' ['' || replace(replace(replace(m.comments,''['',''{''),'']'',''}''),CHR(10))  ||'']'' end as comments',
'                from user_tab_columns c, user_col_comments m',
'               where c.table_name = t.table_name               ',
'                 and c.column_name not in (''ID'', ''CREATED_BY'', ''CREATION_DATE'', ''UPDATED_BY'', ''UPDATE_DATE'')',
'                 and c.table_name = m.table_name (+)',
'                 and c.column_name = m.column_name (+)',
'               order by c.column_id',
'             )',
'    loop',
'      pkg_gen_quicksql.localvar := '''';',
'      for u in (select b.table_name, b.column_name, a.constraint_type, a.search_condition, ',
'                       replace(a.r_constraint_name,''_PK'') as r_constraint_name, ',
'                       (select replace(i.table_name,l_prefix||''_'','''') from user_constraints i where i.constraint_name = a.r_constraint_name) as pk_table_name',
'                  from user_constraints a, user_cons_columns b',
'                 where a.constraint_name = b.constraint_name',
'                   and b.table_name = t.table_name ',
'                   and b.column_name = c.column_name',
'                   and a.constraint_type in (''U'',''R'',''C'')',
'               )',
'      loop',
'        if u.constraint_type = ''U''',
'        then',
'          pkg_gen_quicksql.localvar := pkg_gen_quicksql.localvar || '' /unique'';',
'        elsif u.constraint_type = ''R''',
'        then',
'          pkg_gen_quicksql.localvar := pkg_gen_quicksql.localvar || '' /fk '' || u.pk_table_name;',
'        elsif u.constraint_type = ''C'' and u.search_condition like ''%NOT NULL%''',
'        then',
'          pkg_gen_quicksql.localvar := pkg_gen_quicksql.localvar || '' /nn'';',
'        elsif u.constraint_type = ''C'' ',
'        then',
'          pkg_gen_quicksql.localvar := pkg_gen_quicksql.localvar || '' /check '' || replace(substr(replace(replace(replace(u.search_condition,CHR(10),'' ''),CHR(13),'' ''),''  '', '' ''),instr(replace(replace(replace(u.search_condition,CHR(10),'' ''),CHR(13),'' '''
||'),''  '', '' ''),''('')+1),'')'','''');',
'        end if;          ',
'      end loop;         ',
'      sys.htp.prn(l_enter || l_spaces || rpad(lower(c.column_name),30, '' '') || '' '' || lower(c.data_type_length) || '' '' || pkg_gen_quicksql.localvar || c.comments);         ',
'    end loop;  ',
'  end loop;          ',
'end;',
''))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.component_end;
end;
/
