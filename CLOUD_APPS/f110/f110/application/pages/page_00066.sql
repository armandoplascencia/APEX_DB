prompt --application/pages/page_00066
begin
--   Manifest
--     PAGE: 00066
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>110
,p_default_id_offset=>101599614921830918
,p_default_owner=>'MISO'
);
wwv_flow_api.create_page(
 p_id=>66
,p_user_interface_id=>wwv_flow_api.id(14434115216807266717)
,p_name=>'&POLL_NAME.'
,p_alias=>'POLL-NAME3'
,p_step_title=>'&POLL_NAME.'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(14008957981820441125)
,p_css_file_urls=>'#IMAGE_PREFIX#plugins/com.oracle.apex.html5_bar_chart/1.0/com_oracle_apex_html5_bar_chart.css'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.permalink { margin: 10px; text-align: center;}',
'.permalink a {color: #606060; font: 11px/12px Arial, sans-serif;}',
'',
'',
'',
'.lp-Question-title {',
'  font-size: 20px;',
'  line-height: 36px;',
'  display: block;',
'  color: #202020;',
'  margin-bottom: 8px;',
'  font-weight: bold;',
'}',
'',
'.lp-Question {',
'  display: block;',
'  padding: 12px;',
'  border: 1px solid #D0D0D0;',
'  background-color: #FFFFFF;',
'  border-radius: 2px;',
'  margin-bottom: 16px;',
'  overflow: hidden;',
'  -webkit-transition: background-color .2s;',
'  transition: background-color .2s;',
'}',
'.lp-Question:hover {',
'  background-color: #F8F8F8;',
'}',
'.lp-Question * {',
'  -webkit-box-sizing: border-box;',
'  -moz-box-sizing: border-box;',
'  box-sizing: border-box;',
'}',
'.lp-Question-questionText {',
'  font-size: 16px;',
'  font-weight: bold;',
'  line-height: 20px;',
'  color: #202020;',
'  margin-bottom: 8px;',
'}',
'.lp-Question-inputRadio,',
'.lp-Question-inputCheckbox {',
'  display: block;',
'  margin-bottom: 4px;',
'  margin-left: 16px;',
'}',
'.lp-Question-inputCheckbox {',
'  width: 30%;',
'  float: left;',
'}',
'.lp-Question-inputRadio input,',
'.lp-Question-inputCheckbox input {',
'  display: inline-block;',
'  margin: 4px 0;',
'  padding: 0;',
'  vertical-align: top;',
'}',
'.lp-Question-inputTextarea textarea {',
'  border: 1px solid #C0C0C0;',
'  border-radius: 2px;',
'  box-shadow: 0 1px 2px rgba(0,0,0,.1) inset;',
'  font-size: 14px;',
'  line-height: 20px;',
'  width: 100%;',
'  padding: 8px;',
'}',
'.lp-Question input[type=radio]:checked + .lp-Question-label,',
'.lp-Question input[type=checkbox]:checked + .lp-Question-label  {',
'  font-weight: bold;',
'  border-color: #A0BADA;',
'  background-color: #DBEBFF;',
'  margin-left: 8px;',
'  padding: 4px 8px;',
'  color: #202020;',
'}',
'.lp-Question-label {',
'  display: inline-block;',
'  font-size: 14px;',
'  line-height: 1;',
'  vertical-align: top;',
'  margin: 0 4px;',
'  border: 1px solid transparent;',
'  padding: 4px 4px;',
'  border-radius: 2px;',
'  color: #404040;',
'}',
'.a-TextResponse li {',
'    margin: 0 0 0 24px;',
'    font-size: 14px;',
'    line-height: 20px;',
'    color: #404040;',
'}',
'',
'.answers-region {',
'margin: 12px;',
'}',
'',
'',
'/* Project Status */',
'.proj-status-label {',
'  display: inline-block;',
'}',
'.proj-status-color {',
'    display: inline-block;',
'    width: 20px;',
'    height: 20px;',
'    vertical-align: top;',
'    border-radius: 100%;',
'    margin-right: 8px;',
'    box-shadow: 0 0 0 1px rgba(0,0,0,.1) inset;',
'}',
'',
'body div.cbc table.cbc th span.cbc_label {',
'max-width: 100%; ',
'}',
'',
'',
'/* Make page more responsive */',
'',
'@media only screen and (max-width: 640px) {',
'section.uRegionFrame>div.uFrameContent {',
'  display: block;',
'}',
'#uOneCol div.uFrameContent > div.uFrameSide {',
'    display: block;',
'    width: auto;',
'    padding-top: 8px;',
'    border-top: 1px solid #AAA;',
'    border-left: none;',
'}',
'#uOneCol div.uFrameContent > div.uFrameMain {',
'    display: block;',
'}',
'#uOneCol div.uFrameSide > div.uniqueKey {',
'    width: 80%;',
'}',
'}',
'',
''))
,p_step_template=>wwv_flow_api.id(14690153255754251108)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(250464535289234829)
,p_overwrite_navigation_list=>'Y'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'ALLAN'
,p_last_upd_yyyymmddhh24miss=>'20210518113749'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(14019790209673170038)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(14690173773848251160)
,p_plug_display_sequence=>50
,p_plug_new_grid_column=>false
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(17689949455017337264)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(14690191633551251224)
,p_plug_required_role=>wwv_flow_api.id(14021638908096383157)
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(14020667608141337465)
,p_plug_name=>'Hidden Items'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(14690161967644251135)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY_3'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(14021574998926501740)
,p_plug_name=>'Summarized Answers'
,p_region_css_classes=>'answers-region'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(14690161967644251135)
,p_plug_display_sequence=>30
,p_plug_display_point=>'BODY_3'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'   l_found              boolean := false;',
'   c                    integer := 0;',
'   a                    integer := 0;',
'   l_max                number;',
'   l_Pct2               number;',
'   l_label              wwv_flow_global.vc_arr2;',
'   l_answer             wwv_flow_global.vc_arr2;',
'   l_answer_score       wwv_flow_global.vc_arr2;',
'   l_count              wwv_flow_global.n_arr;',
'   l_respondents        integer := 0;',
'   l_app_id             varchar2(255) := :APP_ID;',
'   l_app_session        varchar2(255) := :APP_SESSION;',
'   l_correct_answer_yn  varchar2(1) := ''N'';',
'   l_use_sections_yn    varchar2(1);',
'   l_section_id         number;',
'   l_max_question_seq   number;',
'   l_responses          APEX_APPLICATION_GLOBAL.VC_ARR2;',
'   l_answers            APEX_APPLICATION_GLOBAL.VC_ARR2;',
'   m integer;',
'   l_num_answers integer;',
'   l_a_count integer;',
'   x integer;',
'   y integer;',
'   t integer;',
'',
'   procedure paint_stack (',
'	    p_count           in number    default null, ',
'        p_pct             in number    default null, ',
'        p_label           in varchar2  default null)',
'   is ',
'   begin',
'     sys.htp.p(''<li class="a-BarChart-item"><h3 class="a-BarChart-label">'');',
'     sys.htp.prn(p_count||''. '');',
'     sys.htp.prn(apex_escape.html(p_label));',
'     sys.htp.prn(''</h3><span class="a-BarChart-barLink"><div class="a-BarChart-bar"><div class="a-BarChart-filled" style="width: '');',
'     sys.htp.prn(p_pct||''%;"></div></div></span><span class="a-BarChart-value">''||p_pct||''%</li>'');',
'   end;',
'',
'',
'   procedure paint_answer (',
'      p_count           in number    default null, ',
'      p_pct             in number    default null, ',
'      p_label           in varchar2  default null,',
'      p_correct_answer  in varchar2  default null) ',
'   is',
'   begin',
'      if p_label is not null then',
'        l_pct2 := round(100 * (p_count/l_respondents));',
'        sys.htp.p(''<li class="a-BarChart-item">'');',
'        sys.htp.p(''<h3 class="a-BarChart-label">'');',
'        if p_correct_answer = ''Y'' then',
'           sys.htp.p(''<span class="fa fa-check"></span> '');',
'        end if;',
'        sys.htp.prn(apex_escape.html(p_label));',
'        sys.htp.prn(''</h3>'');',
'        sys.htp.prn(''<span class="a-BarChart-barLink">'');',
'        sys.htp.p(''<div class="a-BarChart-bar"><div class="a-BarChart-filled" style="width: ''||to_char(l_pct2)||''%;"></div></div>'');',
'        sys.htp.p(''</span>'');',
'        sys.htp.p(''<span class="a-BarChart-value">''||to_char(p_count)||'' (''||to_char(l_pct2)||''%)<span class="u-VisuallyHidden">(''||to_char(l_pct2)||''%)</span></span>'');',
'        sys.htp.p(''</li>'');',
'      end if;',
'   end;',
'',
'begin',
'',
'--',
'-- count respondents',
'--',
'for c1 in (',
'   select count(*) c , ',
'          count(distinct APEX_USER) respondents, ',
'          min(created) first_submission,',
'          max(created) last_submission',
'     from EBA_QPOLL_RESULTS',
'    where poll_id = :POLL_ID',
'      and nvl(is_valid_yn,''Y'') = ''Y''',
') loop',
'   l_respondents := c1.c;',
'end loop;',
'',
'if l_respondents = 0 then',
'  sys.htp.p(''This poll has no responses.'');',
'  ',
'else',
'',
'for c2 in (',
'   select max(q.display_sequence) disp_seq',
'     from EBA_QPOLL_QUESTIONS q,',
'          EBA_QPOLL_POLLS p',
'    where p.id = :POLL_ID and',
'          q.poll_id = p.id',
') loop',
'   l_max_question_seq := c2.disp_seq + 10;',
'end loop;',
'',
'--',
'-- query questions',
'--',
'',
'for c2 in (',
'  select',
'      q.ID question_id,',
'      p.use_sections_yn,',
'      s.id section_id,',
'      s.title section_title,',
'      s.section_text,',
'      s.image_filename,',
'      s.image_width,',
'      s.image_height,',
'      q.QUESTION,',
'      q.CREATED,',
'      q.UPDATED,',
'      q.display_sequence, ',
'      q.QUESTION_TYPE, q.mandatory_yn,',
'      case when q.mandatory_yn = ''N'' then',
'           (select count(*)',
'              from eba_qpoll_results r,',
'                   eba_qpoll_result_details d',
'             where r.poll_id = :POLL_ID',
'               and r.id = d.result_id',
'               and d.question_id = q.id',
'               and nvl(r.is_valid_yn,''Y'') = ''Y''',
'               and d.answer_01 is not null) end cnt_answers,',
'      nvl(decode(USE_CUSTOM_ANSWERS_YN,''N'',a.answer_01,q.answer_01),q.answer_01) answer_01,',
'      nvl(decode(USE_CUSTOM_ANSWERS_YN,''N'',a.answer_02,q.answer_02),q.answer_02) answer_02,',
'      nvl(decode(USE_CUSTOM_ANSWERS_YN,''N'',a.answer_03,q.answer_03),q.answer_03) answer_03,',
'      nvl(decode(USE_CUSTOM_ANSWERS_YN,''N'',a.answer_04,q.answer_04),q.answer_04) answer_04,',
'      nvl(decode(USE_CUSTOM_ANSWERS_YN,''N'',a.answer_05,q.answer_05),q.answer_05) answer_05,',
'      nvl(decode(USE_CUSTOM_ANSWERS_YN,''N'',a.answer_06,q.answer_06),q.answer_06) answer_06,',
'      nvl(decode(USE_CUSTOM_ANSWERS_YN,''N'',a.answer_07,q.answer_07),q.answer_07) answer_07,',
'      nvl(decode(USE_CUSTOM_ANSWERS_YN,''N'',a.answer_08,q.answer_08),q.answer_08) answer_08,',
'      nvl(decode(USE_CUSTOM_ANSWERS_YN,''N'',a.answer_09,q.answer_09),q.answer_09) answer_09,',
'      nvl(decode(USE_CUSTOM_ANSWERS_YN,''N'',a.answer_10,q.answer_10),q.answer_10) answer_10,',
'      nvl(decode(USE_CUSTOM_ANSWERS_YN,''N'',a.answer_11,q.answer_11),q.answer_11) answer_11,',
'      nvl(decode(USE_CUSTOM_ANSWERS_YN,''N'',a.answer_12,q.answer_12),q.answer_12) answer_12,',
'      answer_01_score,',
'      answer_02_score,',
'      answer_03_score,',
'      answer_04_score,',
'      answer_05_score,',
'      answer_06_score,',
'      answer_07_score,',
'      answer_08_score,',
'      answer_09_score,',
'      answer_10_score,',
'      answer_11_score,',
'      answer_12_score,',
'      q.correct_answer,',
'      q.use_custom_answers_yn,',
'      p.score_type,',
'      q.enable_score_yn q_enable_score,',
'      p.enable_score_yn p_enable_score',
'  from EBA_QPOLL_QUESTIONS q,',
'       EBA_QPOLL_CANNED_ANSWERS a,',
'       EBA_QPOLL_POLLS p,',
'       eba_qpoll_sections s',
'  where q.POLL_ID = p.id and',
'        q.question_type = a.code(+) and',
'        p.id = :POLL_ID and',
'        q.section_id = s.id (+)',
'  order by nvl(s.display_sequence,l_max_question_seq), s.title nulls last, q.display_sequence',
') loop',
'c := c + 1;',
'if    c2.answer_12 is not null then l_num_answers := 12; ',
'elsif c2.answer_11 is not null then l_num_answers := 11;',
'elsif c2.answer_10 is not null then l_num_answers := 10; ',
'elsif c2.answer_09 is not null then l_num_answers := 9; ',
'elsif c2.answer_08 is not null then l_num_answers := 8; ',
'elsif c2.answer_07 is not null then l_num_answers := 7; ',
'elsif c2.answer_06 is not null then l_num_answers := 6; ',
'elsif c2.answer_05 is not null then l_num_answers := 5; ',
'elsif c2.answer_04 is not null then l_num_answers := 4; ',
'elsif c2.answer_03 is not null then l_num_answers := 3; ',
'elsif c2.answer_02 is not null then l_num_answers := 2; ',
'else l_num_answers := 1; ',
'end if;',
'',
'if c2.use_sections_yn = ''Y'' then',
'   if nvl(c2.section_id,-1) != nvl(l_section_id,0) then',
'      if l_section_id is not null then',
'         sys.htp.p(''</div>'');',
'      end if;',
'      sys.htp.p(''<div class="lp-Question"><p class="lp-Question-questionText">'');',
'      sys.htp.p(nvl(c2.section_title,''Additional Questions''));',
'      sys.htp.p(''</p>'');',
'      if c2.section_text is not null then',
'         sys.htp.p(''<p>'');',
'         sys.htp.prn(replace(apex_escape.html(replace(c2.section_text,''<br>'',''++'')),''++'',''<br>''));',
'         sys.htp.p(''</p>'');',
'      end if;',
'      if c2.image_filename is not null then',
'         sys.htp.p(''<p><img src="''||apex_util.get_blob_file_src(''P380_IMAGE_BLOB'',c2.section_id)||''"'');',
'         if c2.image_height is not null then',
'            sys.htp.p('' height="''|| apex_escape.html(c2.image_height) ||''"'');',
'         end if;',
'         if c2.image_width is not null then',
'            sys.htp.p('' width="''|| apex_escape.html(c2.image_width) ||''"'');',
'         end if;',
'         sys.htp.p('' /></p>'');',
'      end if;',
'   end if;',
'   l_section_id := c2.section_id;',
'end if;',
'',
'sys.htp.p(''<div class="lp-Question">'');',
'sys.htp.p(''<p class="lp-Question-questionText"><a href="''||apex_util.prepare_url(''f?p=''||l_app_id||'':68:''||l_app_session||',
'    '':::68,RP:P68_QUESTION_ID:''||',
'    c2.question_id)||',
'    ''">Q''||c||''</a>: <strong>''||apex_escape.html(c2.question));',
'',
'-- this needs to be changed to something better',
'if c2.mandatory_yn = ''Y'' then ',
'   sys.htp.p('' *'');',
'end if;',
'',
'sys.htp.prn(''</strong></p>'');',
'',
'for c3 in (',
'    select image_height, image_width',
'      from eba_qpoll_questions',
'     where id = c2.question_id',
'       and image_filename is not null',
') loop',
'   sys.htp.p(''<p><img src="''||apex_util.get_blob_file_src(''P18_IMAGE_BLOB'',c2.question_id)||''"'');',
'   if c3.image_height is not null then',
'      sys.htp.p('' height="''|| apex_escape.html(c3.image_height) ||''"'');',
'   end if;',
'   if c3.image_width is not null then',
'      sys.htp.p('' width="''|| apex_escape.html(c3.image_width) ||''"'');',
'   end if;',
'   sys.htp.p('' /></p>'');',
'end loop;',
'',
'-- if quiz, show average per question',
'if :POLL_OR_QUIZ = ''Q'' then',
'   for c4 in (',
'      select count(*) total_cnt, sum(decode(d.answer_correct_yn,''Y'',1,0)) total_right',
'        from eba_qpoll_result_details d,',
'             eba_qpoll_results r',
'       where d.question_id = c2.question_id',
'         and r.id = d.result_id',
'         and r.poll_id = :POLL_ID',
'   ) loop',
'      sys.htp.p(''<p>Average Score: ''|| round(((c4.total_right/c4.total_cnt)*100),1) || '' %</p>'');',
'   end loop;',
'end if;',
'',
'-- if scored poll, show average/cumulative per question',
'if c2.score_type = ''A'' and c2.p_enable_score = ''Y'' and c2.q_enable_score = ''Y'' then',
'   for c4 in (',
'      select round(avg(d.score),1) avg_score',
'        from eba_qpoll_result_details d,',
'             eba_qpoll_results r',
'       where d.question_id = c2.question_id',
'         and r.id = d.result_id',
'         and r.poll_id = :POLL_ID',
'         and d.score is not null',
'   ) loop',
'      sys.htp.p(''<p>Average Score: ''|| c4.avg_score || ''</p>'');',
'   end loop;',
'elsif c2.score_type = ''C'' and c2.p_enable_score = ''Y'' and c2.q_enable_score = ''Y'' then',
'   for c4 in (',
'      select round(sum(d.score),1) sum_score',
'        from eba_qpoll_result_details d,',
'             eba_qpoll_results r',
'       where d.question_id = c2.question_id',
'         and r.id = d.result_id',
'         and r.poll_id = :POLL_ID',
'         and d.score is not null',
'   ) loop',
'      sys.htp.p(''<p>Cumulative Score: ''|| c4.sum_score || ''</p>'');',
'   end loop;',
'end if;',
'',
'-- if quiz and textarea, show correct answer',
'if :POLL_OR_QUIZ = ''Q'' and c2.QUESTION_TYPE in (''TEXT'',''TEXTAREA'') then',
'      sys.htp.p(''<p>Correct Answer: ''|| apex_escape.html(c2.correct_answer) || ''</p>'');',
'end if;',
'',
'-- if optional, show number that answered, if not all',
'if c2.mandatory_yn = ''N'' and c2.cnt_answers < l_respondents then',
'   sys.htp.p(''<p>'' || c2.cnt_answers || '' out of '' || l_respondents || '' answered this question.</p>'');',
'end if;',
'',
'--',
'-- query answer responses ',
'--',
'if c2.QUESTION_TYPE in (''TEXT'',''TEXTAREA'') then',
'    --',
'    -- show each answer',
'    --',
'    sys.htp.p(''<ul class="a-TextResponse">'');',
'    for c3 in (',
'    select ',
'         d.ANSWER_01 answer,',
'         count(*) cnt',
'    from EBA_QPOLL_RESULT_DETAILS d, ',
'         EBA_QPOLL_RESULTS r',
'    where d.result_id = r.id and ',
'          d.question_id = c2.question_id and',
'          r.poll_id = :POLL_ID and',
'          nvl(r.is_valid_yn,''Y'') = ''Y'' and',
'          d.answer_01 is not null',
'    group by d.ANSWER_01',
'    order by d.ANSWER_01',
'    ) loop',
'      sys.htp.p(''<li>'');',
'      if lower(trim(c3.answer)) = lower(c2.correct_answer) then',
'         sys.htp.p(''<span class="fa fa-check"></span> '');',
'      end if;',
'      sys.htp.p(apex_escape.html(c3.answer)||'' (''|| c3.cnt ||'')'');',
'      sys.htp.p(''</li>'');',
'    end loop; -- c3',
'    sys.htp.p(''</ul>'');',
'    sys.htp.prn(''</div>'');',
'',
'elsif c2.QUESTION_TYPE = ''STACK'' then',
'    l_a_count := 0;',
'    for z in 1..12 loop l_answers(z) := ''0''; end loop;',
'',
'    for c3 in (',
'	    select d.ANSWER_01 answer',
'          from EBA_QPOLL_RESULT_DETAILS d, EBA_QPOLL_RESULTS r',
'         where d.result_id = r.id and ',
'               d.question_id = c2.question_id and',
'               r.poll_id = :POLL_ID and',
'               d.answer_01 is not null and',
'               nvl(r.is_valid_yn,''Y'') = ''Y''',
'         order by r.created, r.apex_user',
'    ) loop',
'        l_a_count := l_a_count + 1;',
'        if not regexp_like(replace(c3.answer,'','',''0''),''[0-9]'') then',
'           sys.htp.p(''BAD DATA AS STACK RANK RESULT: '' || apex_escape.html(c3.answer) ||''<br/>'');',
'        else ',
'           l_responses := APEX_STRING.STRING_TO_TABLE(c3.answer,'','');',
'           m := l_responses.count;',
'           FOR z IN 1..m LOOP',
'               x := (l_num_answers - z);',
'               x := x * x;',
'               y := to_number(l_responses(z));',
'               l_answers(y) := to_char(to_number(l_answers(y)) + x);',
'               --sys.htp.p(''<br>Debug: Rank order=''||z||'', points=''||x||'', Question#=''||y||'', l_answers(y)=''||l_answers(y)||'', c3.answer=''||c3.answer);',
'           END LOOP;',
'        end if;',
'    end loop;',
'    t := 0;',
'    for z in 1..12 loop if to_number(l_answers(z)) > t then t := to_number(l_answers(z)); end if; end loop;',
'    if t != 0 then for z in 1..12 loop l_answers(z) := trunc(100 * (to_number(l_answers(z)) / t)); end loop; end if;',
'    sys.htp.prn(''<ul class="a-BarChart a-BarChart--classic">'');',
'    m := l_num_answers;',
'    if m > 0 then paint_stack( 1,l_answers( 1),c2.answer_01); end if;',
'    if m > 1 then paint_stack( 2,l_answers( 2),c2.answer_02); end if;',
'    if m > 2 then paint_stack( 3,l_answers( 3),c2.answer_03); end if;',
'    if m > 3 then paint_stack( 4,l_answers( 4),c2.answer_04); end if;',
'    if m > 4 then paint_stack( 5,l_answers( 5),c2.answer_05); end if;',
'    if m > 5 then paint_stack( 6,l_answers( 6),c2.answer_06); end if;',
'    if m > 6 then paint_stack( 7,l_answers( 7),c2.answer_07); end if;',
'    if m > 7 then paint_stack( 8,l_answers( 8),c2.answer_08); end if;',
'    if m > 8 then paint_stack( 9,l_answers( 9),c2.answer_09); end if;',
'    if m > 9 then paint_stack(10,l_answers(10),c2.answer_10); end if;',
'    if m >10 then paint_stack(11,l_answers(11),c2.answer_11); end if;',
'    if m >11 then paint_stack(12,l_answers(12),c2.answer_12); end if;',
'    sys.htp.prn(''</ul>'');',
'    sys.htp.p(''<h3 class="a-BarChart-label">Point allocation by rank: '');',
'    for j in 1..l_num_answers loop',
'       if j > 1 then sys.htp.prn('', ''); end if;',
'       sys.htp.prn(to_char(j)||'' = ''||to_char((l_num_answers - j)*(l_num_answers - j)));',
'    end loop;',
'    sys.htp.p(''</h3>'');',
'    sys.htp.prn(''</div>'');',
'',
'elsif c2.QUESTION_TYPE = ''ALLOCATION'' then',
'    l_a_count := 0;',
'    for z in 1..12 loop l_answers(z) := ''0''; end loop;',
'    for c3 in (',
'	    select d.ANSWER_01 answer',
'    from EBA_QPOLL_RESULT_DETAILS d, ',
'         EBA_QPOLL_RESULTS r',
'    where d.result_id = r.id and ',
'          d.question_id = c2.question_id and',
'          r.poll_id = :POLL_ID and',
'          d.answer_01 is not null and',
'          nvl(r.is_valid_yn,''Y'') = ''Y''',
'    order by r.created, r.apex_user) loop',
'        l_a_count := l_a_count + 1;',
'        l_responses := APEX_UTIL.STRING_TO_TABLE(c3.answer,'','');',
'        m := l_responses.count;',
'        FOR z IN 1..m LOOP',
'            y := to_number(l_responses(z));',
'            l_answers(z) := to_number(NVL(l_answers(z),0)) + y;',
'        END LOOP;',
'    end loop;',
'    for z in 1..m loop if to_number(l_answers(z)) > 0 then l_answers(z) := trunc(to_number(l_answers(z)/l_a_count)); end if; end loop;',
'',
'    sys.htp.prn(''<ul class="a-BarChart a-BarChart--classic">'');',
'    if m > 0 then paint_stack( 1,l_answers( 1),c2.answer_01); end if;',
'    if m > 1 then paint_stack( 2,l_answers( 2),c2.answer_02); end if;',
'    if m > 2 then paint_stack( 3,l_answers( 3),c2.answer_03); end if;',
'    if m > 3 then paint_stack( 4,l_answers( 4),c2.answer_04); end if;',
'    if m > 4 then paint_stack( 5,l_answers( 5),c2.answer_05); end if;',
'    if m > 5 then paint_stack( 6,l_answers( 6),c2.answer_06); end if;',
'    if m > 6 then paint_stack( 7,l_answers( 7),c2.answer_07); end if;',
'    if m > 7 then paint_stack( 8,l_answers( 8),c2.answer_08); end if;',
'    if m > 8 then paint_stack( 9,l_answers( 9),c2.answer_09); end if;',
'    if m > 9 then paint_stack(10,l_answers(10),c2.answer_10); end if;',
'    if m >10 then paint_stack(11,l_answers(11),c2.answer_11); end if;',
'    if m >11 then paint_stack(12,l_answers(12),c2.answer_12); end if;',
'    sys.htp.prn(''</ul>'');',
'    sys.htp.prn(''</div>'');',
'',
'else',
'    --',
'    -- show chart of aggregated answers',
'    --',
'    a := 0;',
'    l_max := 0;',
'    for c3 in (',
'    select answer, count(*) c',
'    from ',
'    (',
'    select  d.ANSWER_01 answer',
'    from EBA_QPOLL_RESULT_DETAILS d,  EBA_QPOLL_RESULTS r',
'    where d.result_id = r.id and d.question_id = c2.question_id and',
'          r.poll_id = :POLL_ID and d.answer_01 is not null and',
'          nvl(r.is_valid_yn,''Y'') = ''Y''',
'    union all',
'    select  d.ANSWER_02 answer',
'    from EBA_QPOLL_RESULT_DETAILS d, EBA_QPOLL_RESULTS r',
'    where d.result_id = r.id and d.question_id = c2.question_id and',
'          r.poll_id = :POLL_ID and d.answer_02 is not null and',
'          nvl(r.is_valid_yn,''Y'') = ''Y''',
'    union all',
'    select  d.ANSWER_03 answer',
'    from EBA_QPOLL_RESULT_DETAILS d, EBA_QPOLL_RESULTS r',
'    where d.result_id = r.id and d.question_id = c2.question_id and',
'          r.poll_id = :POLL_ID and d.answer_03 is not null and',
'          nvl(r.is_valid_yn,''Y'') = ''Y''',
'    union all',
'    select  d.ANSWER_04 answer',
'    from EBA_QPOLL_RESULT_DETAILS d, EBA_QPOLL_RESULTS r',
'    where d.result_id = r.id and d.question_id = c2.question_id and',
'         r.poll_id = :POLL_ID and d.answer_04 is not null and',
'         nvl(r.is_valid_yn,''Y'') = ''Y''',
'    union all',
'    select  d.ANSWER_05 answer',
'    from EBA_QPOLL_RESULT_DETAILS d, EBA_QPOLL_RESULTS r',
'    where d.result_id = r.id and d.question_id = c2.question_id and',
'          r.poll_id = :POLL_ID and d.answer_05 is not null and',
'          nvl(r.is_valid_yn,''Y'') = ''Y''',
'    union all',
'    select  d.ANSWER_06 answer',
'    from EBA_QPOLL_RESULT_DETAILS d, EBA_QPOLL_RESULTS r',
'    where d.result_id = r.id and d.question_id = c2.question_id and',
'          r.poll_id = :POLL_ID and d.answer_06 is not null and',
'          nvl(r.is_valid_yn,''Y'') = ''Y''',
'    union all',
'    select  d.ANSWER_07 answer',
'    from EBA_QPOLL_RESULT_DETAILS d, EBA_QPOLL_RESULTS r',
'    where d.result_id = r.id and d.question_id = c2.question_id and',
'          r.poll_id = :POLL_ID and d.answer_07 is not null and',
'          nvl(r.is_valid_yn,''Y'') = ''Y''',
'    union all',
'    select  d.ANSWER_08 answer',
'    from EBA_QPOLL_RESULT_DETAILS d, EBA_QPOLL_RESULTS r',
'    where d.result_id = r.id and d.question_id = c2.question_id and',
'          r.poll_id = :POLL_ID and d.answer_08 is not null and',
'          nvl(r.is_valid_yn,''Y'') = ''Y''',
'    union all',
'    select  d.ANSWER_09 answer',
'    from EBA_QPOLL_RESULT_DETAILS d, EBA_QPOLL_RESULTS r',
'    where d.result_id = r.id and d.question_id = c2.question_id and',
'          r.poll_id = :POLL_ID and d.answer_09 is not null and',
'          nvl(r.is_valid_yn,''Y'') = ''Y''',
'    union all',
'    select  d.ANSWER_10 answer',
'    from EBA_QPOLL_RESULT_DETAILS d, EBA_QPOLL_RESULTS r',
'    where d.result_id = r.id and d.question_id = c2.question_id and',
'          r.poll_id = :POLL_ID and d.answer_10 is not null and',
'          nvl(r.is_valid_yn,''Y'') = ''Y''',
'    union all',
'    select  d.ANSWER_11 answer',
'    from EBA_QPOLL_RESULT_DETAILS d, EBA_QPOLL_RESULTS r',
'    where d.result_id = r.id and d.question_id = c2.question_id and',
'          r.poll_id = :POLL_ID and d.answer_11 is not null and',
'          nvl(r.is_valid_yn,''Y'') = ''Y''',
'    union all',
'    select  d.ANSWER_12 answer',
'    from EBA_QPOLL_RESULT_DETAILS d, EBA_QPOLL_RESULTS r',
'    where d.result_id = r.id and d.question_id = c2.question_id and',
'          r.poll_id = :POLL_ID and d.answer_12 is not null and',
'          nvl(r.is_valid_yn,''Y'') = ''Y''',
'    ) x',
'    group by answer',
'    order by 2 desc',
'    ) loop',
'        a := a + 1;',
'        l_label(a) := c3.answer;',
'      l_count(a) := c3.c;',
'      if c3.c > l_max then ',
'          l_max := c3.c; ',
'      end if;',
'      ',
'    end loop; ',
'   ',
'    sys.htp.p(''<ul class="a-BarChart a-BarChart--classic">'');',
'',
'    l_answer(1) := c2.answer_01;',
'    l_answer(2) := c2.answer_02;',
'    l_answer(3) := c2.answer_03;',
'    l_answer(4) := c2.answer_04;',
'    l_answer(5) := c2.answer_05;',
'    l_answer(6) := c2.answer_06;',
'    l_answer(7) := c2.answer_07;',
'    l_answer(8) := c2.answer_08;',
'    l_answer(9) := c2.answer_09;',
'    l_answer(10) := c2.answer_10;',
'    l_answer(11) := c2.answer_11;',
'    l_answer(12) := c2.answer_12;',
'',
'    l_answer_score(1) := c2.answer_01_score;',
'    l_answer_score(2) := c2.answer_02_score;',
'    l_answer_score(3) := c2.answer_03_score;',
'    l_answer_score(4) := c2.answer_04_score;',
'    l_answer_score(5) := c2.answer_05_score;',
'    l_answer_score(6) := c2.answer_06_score;',
'    l_answer_score(7) := c2.answer_07_score;',
'    l_answer_score(8) := c2.answer_08_score;',
'    l_answer_score(9) := c2.answer_09_score;',
'    l_answer_score(10) := c2.answer_10_score;',
'    l_answer_score(11) := c2.answer_11_score;',
'    l_answer_score(12) := c2.answer_12_score;    ',
'',
'    for m in 1..12 loop',
'        if l_answer(m) is null then exit; end if;',
'        l_found := false;',
'        for j in 1..a loop',
'            if l_answer(m) = l_label(j) then',
'               if :POLL_OR_QUIZ = ''Q'' then',
'                  l_correct_answer_yn := ''N'';',
'                  if c2.question_type = ''CHECKBOX'' then',
'                     if instr(c2.correct_answer, ',
'                        substr(c2.correct_answer,1,1)||l_label(j)||substr(c2.correct_answer,1,1)) > 0 then',
'                        l_correct_answer_yn := ''Y'';',
'                     end if;',
'                  elsif c2.use_custom_answers_yn = ''Y'' then',
'                     if lower(l_label(j)) = lower(c2.correct_answer) then',
'                        l_correct_answer_yn := ''Y'';',
'                     end if;',
'                  else',
'                     if l_label(j) = c2.correct_answer then',
'                        l_correct_answer_yn := ''Y'';',
'                     end if;',
'                  end if;',
'                end if;',
'                paint_answer (',
'                   p_count => l_count(j), ',
'                   p_pct   => l_pct2, ',
'                   p_label => l_label(j) || case when c2.score_type in (''A'',''C'') and c2.p_enable_score = ''Y'' and',
'                                             c2.q_enable_score = ''Y'' then '' (score:''||l_answer_score(m)||'')'' end,',
'                   p_correct_answer => l_correct_answer_yn );',
'                l_found := true;',
'                exit;',
'            end if;',
'        end loop; ',
'        if not l_found then ',
'           if :POLL_OR_QUIZ = ''Q'' then',
'              l_correct_answer_yn := ''N'';',
'              if c2.question_type = ''CHECKBOX'' then',
'                 if instr(c2.correct_answer, ',
'                    substr(c2.correct_answer,1,1)||l_answer(m)||substr(c2.correct_answer,1,1)) > 0 then',
'                    l_correct_answer_yn := ''Y'';',
'                 end if;',
'              elsif c2.use_custom_answers_yn = ''Y'' then',
'                 if lower(l_answer(m)) = lower(c2.correct_answer) then',
'                    l_correct_answer_yn := ''Y'';',
'                 end if;',
'              else',
'                  if l_answer(m) = c2.correct_answer then',
'                     l_correct_answer_yn := ''Y'';',
'                  end if;',
'              end if;',
'            end if;',
'            paint_answer (',
'              p_count => 0, ',
'              p_pct   => 0, ',
'              p_label => l_answer(m) || case when c2.score_type in (''A'',''C'') and c2.p_enable_score = ''Y'' and',
'                                        c2.q_enable_score = ''Y'' then '' (score:''||l_answer_score(m)||'')'' end,',
'              p_correct_answer => l_correct_answer_yn );',
'        end if;',
'    end loop;',
'',
'    sys.htp.p(''</div>'');',
'end if;',
'',
'-- sys.htp.p(''</div>'');',
'',
'if c = 20 then',
'   exit;',
'end if;',
'',
'if l_use_sections_yn = ''Y'' then',
'   sys.htp.p(''</div>'');',
'end if;',
'',
'end loop; -- c2',
'',
'end if;',
'end;'))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_required_role=>wwv_flow_api.id(14021638908096383157)
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(14093459402020805035)
,p_plug_name=>'hide nobody'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY_3'
,p_plug_source=>'<style>.userBlock{display: none !important} .logoBarNav {padding-top: 8px;visibility: hidden;}</style>'
,p_translate_title=>'N'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'FUNCTION_BODY'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if apex_authentication.is_authenticated then',
'   return false;',
'else',
'   return true;',
'end if;'))
,p_plug_display_when_cond2=>'PLSQL'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.component_end;
end;
/
begin
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>110
,p_default_id_offset=>101599614921830918
,p_default_owner=>'MISO'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(14134528298834753092)
,p_plug_name=>'side region'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_display_sequence=>60
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_required_role=>wwv_flow_api.id(14021638908096383157)
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(922145135587445535)
,p_name=>'Average Score'
,p_region_name=>'average_score'
,p_parent_plug_id=>wwv_flow_api.id(14134528298834753092)
,p_template=>wwv_flow_api.id(14690171167000251156)
,p_display_sequence=>110
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-BadgeList--large:t-BadgeList--fixed:t-BadgeList--circular'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'    round(avg(score),1) "Average Score"',
'from',
'    EBA_QPOLL_RESULTS r',
'where',
'    poll_id = :POLL_ID',
'and nvl(r.is_valid_yn,''Y'') = ''Y''',
'and score is not null'))
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from EBA_QPOLL_QUESTIONS q,',
'       EBA_QPOLL_POLLS p,',
'       EBA_QPOLL_RESULTS r',
'  where q.poll_id = p.id and',
'        p.id = :POLL_ID and',
'        p.score_type in (''A'',''C'') and ',
'        p.enable_score_yn = ''Y'' and',
'        q.enable_score_yn = ''Y'' and',
'        r.poll_id = p.id and',
'        nvl(r.is_valid_yn,''Y'') = ''Y'' and',
'        r.score is not null'))
,p_display_condition_type=>'EXISTS'
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(14690175061901251167)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(689170304790122598)
,p_query_column_id=>1
,p_column_alias=>'Average Score'
,p_column_display_sequence=>1
,p_column_heading=>'Average Score'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(922601637682568263)
,p_name=>'Quiz Average'
,p_region_name=>'quiz_average'
,p_parent_plug_id=>wwv_flow_api.id(14134528298834753092)
,p_template=>wwv_flow_api.id(14690171167000251156)
,p_display_sequence=>100
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-BadgeList--large:t-BadgeList--fixed:t-BadgeList--circular'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'    round(avg(grade),1) ||''%'' "Average Score"',
'from',
'    EBA_QPOLL_RESULTS r',
'where',
'    poll_id = :POLL_ID',
'and nvl(r.is_valid_yn,''Y'') = ''Y'''))
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from eba_qpoll_results',
' where poll_id = :POLL_ID',
'   and :POLL_OR_QUIZ = ''Q'''))
,p_display_condition_type=>'EXISTS'
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(14690175061901251167)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(689627177128245324)
,p_query_column_id=>1
,p_column_alias=>'Average Score'
,p_column_display_sequence=>1
,p_column_heading=>'Average Score'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(14021664089403473236)
,p_plug_name=>'Button Region'
,p_parent_plug_id=>wwv_flow_api.id(14134528298834753092)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(14690162135548251137)
,p_plug_display_sequence=>70
,p_plug_display_point=>'BODY'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(14025186705759908441)
,p_name=>'Poll Attributes'
,p_parent_plug_id=>wwv_flow_api.id(14134528298834753092)
,p_template=>wwv_flow_api.id(14690171167000251156)
,p_display_sequence=>120
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#:t-AVPList--rightAligned'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select l, v',
'  from',
'(',
'select 1 ob, ''Login Required'' l, ',
'       decode(authentication_req_yn,''N'',''No'',''Yes'') v',
'  from eba_qpoll_polls',
' where id = :POLL_ID',
'union',
'select 2 ob, ''Anonymous'' l, ',
'       decode(anonymous_yn,''N'',''No'',''Yes'') v',
'  from eba_qpoll_polls',
' where id = :POLL_ID',
'   and :POLL_AUTHENTICATION_REQ_YN = ''Y''',
'union',
'select 3 ob, ''Can Update Answers'' l, ',
'       decode(can_update_answers_yn,''N'',''No'',''Yes'') v',
'  from eba_qpoll_polls',
' where id = :POLL_ID',
'   and :POLL_AUTHENTICATION_REQ_YN = ''Y''',
'   and exists (select 1 from eba_qpoll_polls',
'                where id = :POLL_ID',
'                  and anonymous_yn = ''N'')',
'union',
'select 4 ob, ''Invitees View Results'' l,',
'       decode(all_view_results_yn,''N'',''No'',''Yes'') v',
'  from eba_qpoll_polls',
' where id = :POLL_ID',
')',
'order by ob'))
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(14690180910121251181)
,p_query_headings_type=>'NO_HEADINGS'
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_no_data_found=>'no data found'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14025187002091908480)
,p_query_column_id=>1
,p_column_alias=>'L'
,p_column_display_sequence=>1
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14025187109881908483)
,p_query_column_id=>2
,p_column_alias=>'V'
,p_column_display_sequence=>2
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(14093616402825294445)
,p_plug_name=>'Refresh'
,p_parent_plug_id=>wwv_flow_api.id(14134528298834753092)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody:t-Form--stretchInputs'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(14690171167000251156)
,p_plug_display_sequence=>130
,p_plug_display_point=>'BODY'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(14249865114659797557)
,p_plug_name=>'Summary'
,p_region_name=>'summary'
,p_parent_plug_id=>wwv_flow_api.id(14134528298834753092)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(14690171167000251156)
,p_plug_display_sequence=>80
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from eba_qpoll_comm_invites',
' where poll_id = :POLL_ID',
'union',
'select 1',
'  from eba_qpoll_results',
' where poll_id = :POLL_ID',
'   and nvl(is_valid_yn,''Y'') = ''Y'''))
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(922151012483540781)
,p_name=>'Invites'
,p_region_name=>'invites'
,p_parent_plug_id=>wwv_flow_api.id(14249865114659797557)
,p_template=>wwv_flow_api.id(14690161967644251135)
,p_display_sequence=>150
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-BadgeList--large:t-BadgeList--fixed:t-BadgeList--circular'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select c "Unique Invitations", c invite_for_readers',
'from',
'(',
'select count (unique respondent_id) c',
'  from eba_qpoll_comm_invites c,',
'       eba_qpoll_invites i',
' where c.poll_id = :POLL_ID',
'   and c.id = i.comm_invite_id',
')'))
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from eba_qpoll_comm_invites',
' where poll_id = :POLL_ID'))
,p_display_condition_type=>'EXISTS'
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(14690175061901251167)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(689178575302217861)
,p_query_column_id=>1
,p_column_alias=>'Unique Invitations'
,p_column_display_sequence=>1
,p_column_heading=>'Unique Invitations'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G999G999G990'
,p_column_link=>'f?p=&APP_ID.:16:&SESSION.::&DEBUG.:RP,16,RIR,CIR:IR_POLL_ID:&POLL_ID.'
,p_column_linktext=>'#Unique Invitations#'
,p_disable_sort_column=>'N'
,p_report_column_required_role=>wwv_flow_api.id(250464227793234829)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(108124755272357246)
,p_query_column_id=>2
,p_column_alias=>'INVITE_FOR_READERS'
,p_column_display_sequence=>2
,p_column_heading=>'Unique Invitations'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G999G999G990'
,p_disable_sort_column=>'N'
,p_report_column_required_role=>'!'||wwv_flow_api.id(250464227793234829)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(922152178490541899)
,p_name=>'Results'
,p_region_name=>'results'
,p_parent_plug_id=>wwv_flow_api.id(14249865114659797557)
,p_template=>wwv_flow_api.id(14690161967644251135)
,p_display_sequence=>160
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-BadgeList--large:t-BadgeList--fixed:t-BadgeList--circular'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select c "Responses", c responses_for_readers',
'from',
'(',
'select count(*) c',
'  from EBA_QPOLL_RESULTS ',
' where POLL_ID = :POLL_ID',
'   and nvl(is_valid_yn,''Y'') = ''Y''',
')',
''))
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from eba_qpoll_results',
' where poll_id = :POLL_ID',
'   and nvl(is_valid_yn,''Y'') = ''Y'''))
,p_display_condition_type=>'EXISTS'
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(14690175061901251167)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(689179229614218975)
,p_query_column_id=>1
,p_column_alias=>'Responses'
,p_column_display_sequence=>1
,p_column_heading=>'Responses'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G999G999G990'
,p_column_link=>'f?p=&APP_ID.:66:&SESSION.::&DEBUG.:RP,66:LPOLL_ID:&POLL_ID.'
,p_column_linktext=>'#Responses#'
,p_disable_sort_column=>'N'
,p_report_column_required_role=>wwv_flow_api.id(250464227793234829)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(108124904877357247)
,p_query_column_id=>2
,p_column_alias=>'RESPONSES_FOR_READERS'
,p_column_display_sequence=>2
,p_column_heading=>'Responses'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G999G999G990'
,p_disable_sort_column=>'N'
,p_report_column_required_role=>'!'||wwv_flow_api.id(250464227793234829)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(29108586108369952644)
,p_plug_name=>'Outstanding Invitations'
,p_parent_plug_id=>wwv_flow_api.id(14134528298834753092)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(14690171167000251156)
,p_plug_display_sequence=>90
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :OUTSTANDING_INVITES = 1 then',
'   sys.htp.p(''<p class="u-tC" style="font-size: 11px"><a href="''||apex_util.prepare_url(''f?p=''||:APP_ID||'':16:''||:APP_SESSION||''::NO:CIR,RIR:IR_HAS_RESPONDED,IR_POLL_ID:No,''||:POLL_ID)||''">''||:OUTSTANDING_INVITES||'' Oustanding Invitation</a></p>'');',
'else',
'   sys.htp.p(''<p class="u-tC" style="font-size: 11px"><a href="''||apex_util.prepare_url(''f?p=''||:APP_ID||'':16:''||:APP_SESSION||''::NO:CIR,RIR:IR_HAS_RESPONDED,IR_POLL_ID:No,''||:POLL_ID)||''">''||:OUTSTANDING_INVITES||'' Oustanding Invitations</a></p>'');',
'end if;'))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_required_role=>wwv_flow_api.id(250464227793234829)
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from eba_qpoll_comm_invites',
' where poll_id = :POLL_ID',
'   and nvl(:OUTSTANDING_INVITES,0) > 0'))
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(14134529704683802163)
,p_plug_name=>'No Access'
,p_region_template_options=>'#DEFAULT#:t-Alert--warning:t-Alert--horizontal'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(14690160537466251126)
,p_plug_display_sequence=>40
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_source=>'<p>You do not have access to view the results of the requested poll.</p>'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_required_role=>'!'||wwv_flow_api.id(14021638908096383157)
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(14021578184577036957)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(14019790209673170038)
,p_button_name=>'REFRESH_RESULTS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(14690191013111251220)
,p_button_image_alt=>'Refresh Results'
,p_button_position=>'BOTTOM'
,p_button_redirect_url=>'f?p=&APP_ID.:66:&SESSION.::&DEBUG.::LPOLL_ID:&POLL_ID.'
,p_icon_css_classes=>'fa-refresh'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(15515832957756804358)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(14021664089403473236)
,p_button_name=>'PERMALINK'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(14690191013111251220)
,p_button_image_alt=>'Permalink'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:66:&SESSION.::&DEBUG.:RP,66:LPOLL_ID:&POLL_ID.'
,p_icon_css_classes=>'fa-bookmark'
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(14125174600109284753)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(14021664089403473236)
,p_button_name=>'VIEW_DETAILED_RESULTS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(14690191414518251222)
,p_button_image_alt=>'View Detailed Results'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:17:&SESSION.::&DEBUG.:RP::'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from EBA_QPOLL_RESULTS',
' where poll_id = :POLL_ID',
'   and nvl(is_valid_yn,''Y'') = ''Y'''))
,p_button_condition_type=>'EXISTS'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(14135358285891014390)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(14021664089403473236)
,p_button_name=>'EMAIL_RESULTS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(14690191414518251222)
,p_button_image_alt=>'Email Results'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:90:&SESSION.::&DEBUG.:90::'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from EBA_QPOLL_RESULTS',
' where poll_id = :POLL_ID',
'   and nvl(is_valid_yn,''Y'') = ''Y'''))
,p_button_condition_type=>'EXISTS'
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(29110593861995523457)
,p_button_sequence=>45
,p_button_plug_id=>wwv_flow_api.id(14021664089403473236)
,p_button_name=>'REMINDER'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(14690191414518251222)
,p_button_image_alt=>'Send Reminders'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:1072:&SESSION.::&DEBUG.:1072:P1072_POLL_ID:&POLL_ID.'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 ',
'  from eba_qpoll_polls p,',
'       eba_qpoll_comm_invites c,',
'       eba_qpoll_invites i',
' where p.id = :POLL_ID',
'   and p.status_id = 3',
'   and p.id = c.poll_id',
'   and c.id = i.comm_invite_id',
'   and i.email_sent = ''YES''',
'   and i.respondent_id not in',
'       (select respondent_id',
'          from eba_qpoll_results',
'         where poll_id = :POLL_ID',
'           and IS_VALID_YN = ''Y'')'))
,p_button_condition_type=>'EXISTS'
,p_security_scheme=>wwv_flow_api.id(250464227793234829)
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(14034247708302906043)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(14021664089403473236)
,p_button_name=>'MANAGE_POLL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(14690191414518251222)
,p_button_image_alt=>'Manage Poll'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:100:&SESSION.::&DEBUG.:::'
,p_security_scheme=>wwv_flow_api.id(250464227793234829)
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(14021578380899045367)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_api.id(14021664089403473236)
,p_button_name=>'TAKE_THIS_POLL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(14690191414518251222)
,p_button_image_alt=>'Take this Poll'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:50:&SESSION.::&DEBUG.:50::'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'APEX_AUTHORIZATION.IS_AUTHORIZED(p_authorization_name => ''Can Take Poll'') and not',
'APEX_AUTHORIZATION.IS_AUTHORIZED(p_authorization_name => ''Can Update Your Response'')'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(14022992385756896659)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_api.id(14021664089403473236)
,p_button_name=>'TAKE_THIS_POLL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(14690191414518251222)
,p_button_image_alt=>'Update Your Response'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:50:&SESSION.::&DEBUG.:50::'
,p_security_scheme=>wwv_flow_api.id(14022992806231902412)
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(14021894496778675595)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_api.id(14021664089403473236)
,p_button_name=>'VIEW_YOUR_RESPONSE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(14690191414518251222)
,p_button_image_alt=>'View Your Response'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:69:&SESSION.::&DEBUG.:69::'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
,p_security_scheme=>wwv_flow_api.id(14022969497914526396)
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14093616707232314752)
,p_name=>'P66_AUTO_REFRESH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(14093616402825294445)
,p_item_default=>'N'
,p_prompt=>'Auto Page Refresh'
,p_source=>'N'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'AUTO REFRESH'
,p_lov=>'.'||wwv_flow_api.id(14093616778977315985)||'.'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(14690190640308251212)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'SUBMIT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(334570894341153824)
,p_computation_sequence=>10
,p_computation_item=>'LAST_VIEW'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'66'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(14093615683170269809)
,p_name=>'Refresh page'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_display_when_cond=>'P66_AUTO_REFRESH'
,p_display_when_cond2=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(14093615999152269812)
,p_event_id=>wwv_flow_api.id(14093615683170269809)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'setTimeout(function(){',
'   window.location.reload(1);',
'}, 5000);'))
);
wwv_flow_api.component_end;
end;
/
