prompt --application/pages/page_00050
begin
--   Manifest
--     PAGE: 00050
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
 p_id=>50
,p_user_interface_id=>wwv_flow_api.id(14434115216807266717)
,p_name=>'&POLL_NAME.'
,p_alias=>'POLL-FORM'
,p_step_title=>'&POLL_NAME.'
,p_allow_duplicate_submissions=>'N'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(14008957981820441125)
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#JQUERYUI_DIRECTORY#ui/widgets/slider.js',
'#JQUERYUI_DIRECTORY#ui/widgets/sortable.js',
'#APP_IMAGES#sortableList/sortableList.js',
'#APP_IMAGES#allocation/allocation.js'))
,p_css_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#APP_IMAGES#allocation/allocation.css',
'#APP_IMAGES#sortableList/sortableList.css'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
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
'  background-color: #F8F8F8;',
'  border-radius: 2px;',
'  margin-bottom: 16px;',
'  overflow: hidden;',
'  -webkit-transition: background-color .2s;',
'  transition: background-color .2s;',
'}',
'.lp-Question:hover {',
'  background-color: #FFFFFF;',
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
'}',
'.lp-Question-inputRadio input,',
'.lp-Question-inputCheckbox input {',
'  display: inline-block;',
'  margin: 4px 0;',
'  padding: 0;',
'  vertical-align: top;',
'}',
'.lp-Question-inputRadio input:focus,',
'.lp-Question-inputCheckbox input:focus {',
'  box-shadow: 0 0 4px 2px rgba(90, 146, 218, 0.82);',
'  border-radius: 100%;',
'}',
'.lp-Question-inputCheckbox input {',
'  display: inline;',
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
'',
'section.uSuccessRegion p.desc {',
'font-size: 14px;',
'line-height: 1.5;',
'font-weight: normal;',
'margin-bottom: 16px;',
'color: #404040;',
'text-align: left;',
'}'))
,p_step_template=>wwv_flow_api.id(14690156334092251112)
,p_page_template_options=>'#DEFAULT#'
,p_overwrite_navigation_list=>'Y'
,p_page_is_public_y_n=>'Y'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'ALLAN'
,p_last_upd_yyyymmddhh24miss=>'20210526075241'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1330730696217421620)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(14690171167000251156)
,p_plug_display_sequence=>80
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY_3'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!-- Checkbox -->',
'<label id="Q1_LABEL" for="Q1_QUESTION_INPUT">#Q1 LABEL text#</label>',
'<div tabindex="-1" id="Q1_QUESTION_INPUT" aria-labelledby="Q1_LABEL" role="group">',
'    <div class="lp-Question-inputRadio">',
'        <input type="checkbox" id="Q_RD_1" name="Q1_QUESTION_INPUT" value="Radio 1">',
'        <label class="lp-Question-label" for="Q_RD_1">Radio 1</label>',
'    </div>',
'    <div class="lp-Question-inputRadio">',
'        <input type="checkbox" id="Q_RD_2" name="Q1_QUESTION_INPUT" value="Radio 2">',
'        <label class="lp-Question-label" for="Q_RD_2">Radio 2</label>',
'    </div>',
'    <div class="lp-Question-inputRadio">',
'        <input type="checkbox" id="Q_RD_3" name="Q1_QUESTION_INPUT" value="Radio 3">',
'        <label class="lp-Question-label" for="Q_RD_3">Radio 3</label>',
'    </div>',
'</div>',
'',
'',
'<!-- Text Field -->',
'<label for="Q_TEXT_INPUT_ITEM">#Q1 LABEL text#</label>',
'<div class="lp-Question-inputText">',
'    <input type="text" id="Q_TEXT_INPUT_ITEM" name="Q_TEXT_INPUT_ITEM">',
'</div>',
''))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NEVER'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(14015353699552620041)
,p_plug_name=>'Render Poll'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(14690161967644251135)
,p_plug_display_sequence=>50
,p_plug_display_point=>'BODY_3'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    c               integer := 0;',
'    l_respondent_id number;',
'    l_v01           varchar2(4000);',
'    l_v02           varchar2(4000);',
'    l_v03           varchar2(4000);',
'    l_v04           varchar2(4000);',
'    l_v05           varchar2(4000);',
'    l_v06           varchar2(4000);',
'    l_v07           varchar2(4000);',
'    l_v08           varchar2(4000);',
'    l_v09           varchar2(4000);',
'    l_v10           varchar2(4000);',
'    l_v11           varchar2(4000);',
'    l_v12           varchar2(4000);',
'    l_mand          varchar2(1) := ''N'';',
'    g_cnt           integer := 0;',
'    l_use_sections_yn   varchar2(1);',
'    l_section_id        number;',
'    l_max_question_seq  number;',
'    l_vc_arr2       APEX_APPLICATION_GLOBAL.VC_ARR2;',
'',
'    procedure display_checkbox (',
'       p_id       in number, ',
'       p_answer   in varchar2 default null, ',
'       p_value_01 in varchar2 default null,',
'       p_value_02 in varchar2 default null,',
'       p_value_03 in varchar2 default null,',
'       p_value_04 in varchar2 default null,',
'       p_value_05 in varchar2 default null,',
'       p_value_06 in varchar2 default null,',
'       p_value_07 in varchar2 default null,',
'       p_value_08 in varchar2 default null,',
'       p_value_09 in varchar2 default null,',
'       p_value_10 in varchar2 default null,',
'       p_value_11 in varchar2 default null,',
'       p_value_12 in varchar2 default null',
'       )',
'    is ',
'        l_id varchar2(30);',
'    begin',
'        g_cnt := g_cnt + 1;',
'        l_id := ''Q''||to_char((p_id * 20) + g_cnt);',
'        if p_answer is not null then',
'            sys.htp.p(''<div class="lp-Question-inputCheckbox">'');',
'            sys.htp.p(''<input type="checkbox" id="''||l_id||',
'                ''" name="F''||lpad(to_char(p_id),2,''00'')||',
'                ''" value="''||apex_escape.html(p_answer)||''" '');',
'            if p_answer = nvl(p_value_01,''mJh63'') or ',
'               p_answer = nvl(p_value_02,''mJh63'') or',
'               p_answer = nvl(p_value_03,''mJh63'') or',
'               p_answer = nvl(p_value_04,''mJh63'') or',
'               p_answer = nvl(p_value_05,''mJh63'') or',
'               p_answer = nvl(p_value_06,''mJh63'') or',
'               p_answer = nvl(p_value_07,''mJh63'') or',
'               p_answer = nvl(p_value_08,''mJh63'') or',
'               p_answer = nvl(p_value_09,''mJh63'') or',
'               p_answer = nvl(p_value_10,''mJh63'') or',
'               p_answer = nvl(p_value_11,''mJh63'') or',
'               p_answer = nvl(p_value_12,''mJh63'') ',
'               then',
'                sys.htp.prn('' checked="checked" '');',
'            end if;',
'            sys.htp.prn(''>'');',
'            sys.htp.prn(''<label class="lp-Question-label" for="''||l_id||''">'');',
'            sys.htp.prn(apex_escape.html(p_answer));',
'            sys.htp.prn(''</label></div>'');',
'        end if;',
'    end display_checkbox;',
'',
'--',
'    procedure display_stack_rank (',
'       p_id     in number, ',
'       p_answer in varchar2 default null, ',
'       p_value  in varchar2 default null)',
'    is ',
'        l_id varchar2(30);',
'    begin',
'        g_cnt := g_cnt + 1;',
'        l_id := ''Q''||to_char((p_id * 10) + g_cnt);',
'        if p_answer is not null then',
'            sys.htp.p(''<li data-value="''||g_cnt||''"'');',
'            if p_value is not null then',
'               l_vc_arr2 := APEX_UTIL.STRING_TO_TABLE(p_value,'','');',
'               FOR z IN 1..l_vc_arr2.count LOOP',
'                  if g_cnt = l_vc_arr2(z) then ',
'                     sys.htp.p('' data-sortable-index="'' || to_char(z-1) ||''"'');',
'                  end if;',
'               END LOOP;',
'            end if;',
'            sys.htp.p(''>''||apex_escape.html(p_answer)||''</li>'');',
'        end if;',
'    end display_stack_rank;',
'--',
'    procedure display_allocation (',
'       p_id     in number, ',
'       p_answer in varchar2 default null, ',
'       p_value  in varchar2 default null)',
'    is ',
'        l_id varchar2(30);',
'    begin',
'        g_cnt := g_cnt + 1;',
'        l_id := ''Q''||to_char((p_id * 10) + g_cnt);',
'        if p_answer is not null then',
'            sys.htp.p(''<li data-allocate-value="''||apex_escape.html(nvl(p_value,0))||''">''||apex_escape.html(p_answer)||''</li>'');',
'        end if;',
'    end display_allocation;',
'-- ',
'    procedure display_radio_group (',
'       p_id     in number, ',
'       p_answer in varchar2 default null, ',
'       p_value  in varchar2 default null)',
'    is ',
'        l_id varchar2(30);',
'    begin',
'        g_cnt := g_cnt + 1;',
'        l_id := ''Q''||to_char((p_id * 20) + g_cnt);',
'        if p_answer is not null then',
'            sys.htp.p(''<div class="lp-Question-inputRadio">'');',
'            sys.htp.p(''<input type="radio" id="''||l_id||',
'                ''" name="F''||lpad(to_char(p_id),2,''00'')||',
'                ''" value="''||apex_escape.html(p_answer)||''" '');',
'            if p_answer = nvl(p_value,''mjh63'') then',
'                sys.htp.prn('' checked="checked" '');',
'            end if;',
'            sys.htp.prn(''>'');',
'            sys.htp.prn(''<label class="lp-Question-label" for="''||l_id||''">'');',
'            sys.htp.prn(apex_escape.html(p_answer));',
'            sys.htp.prn(''</label></div>'');',
'        end if;',
'    end display_radio_group;',
'',
'',
'    procedure display_textarea (p_id in number, p_answer in varchar2 default null, p_value in varchar2 default null)',
'    is ',
'    begin',
'        if p_answer is not null then',
'            sys.htp.p(''<div class="lp-Question-inputTextarea"><textarea name="F''||lpad(to_char(c),2,''00'')||',
'                ''" rows="8" cols="80" maxlength="4000" wrap="virtual" id="F''||lpad(to_char(c),2,''00'')||',
'                ''" class="textarea" style="resize: both;">'');',
'            sys.htp.prn(apex_escape.html(p_value));',
'            sys.htp.prn(''</textarea></div>'');',
'        end if;',
'    end display_textarea;',
'',
'    procedure display_text (p_id in number, p_answer in varchar2 default null, p_value in varchar2 default null)',
'    is ',
'    begin',
'        if p_answer is not null then',
'            sys.htp.p(''<div class="lp-Question-inputText">'');',
'            sys.htp.p(''<input type="text" id="F''||lpad(to_char(c),2,''00'')||',
'                ''" name="F''||lpad(to_char(c),2,''00'')||',
'                ''" class="text_field" size="32" maxlength="255" '');',
'            sys.htp.p(''value="''|| apex_escape.html(p_value) ||''" />'');',
'            sys.htp.p(''</div>'');',
'        end if;',
'    end display_text;',
'',
'begin',
'for c1 in (',
'    select poll_name, anonymous_yn, intro_text, image_filename, image_height, image_width, use_sections_yn',
'    from eba_qpoll_polls p',
'    where (status_id = 3 or ',
'           (status_id = 2 and',
'            eba_qpoll.get_access_role (',
'               p_app_id   => :APP_ID,',
'               p_username => :APP_USER) in (''CONTRIBUTOR'',''ADMINISTRATOR'')))',
'      and id = :POLL_ID',
'   ) loop',
'      if c1.image_filename is not null then',
'         sys.htp.p(''<p><img src="''||apex_util.get_blob_file_src(''P48_IMAGE_BLOB'',:POLL_ID)||''"'');',
'         if c1.image_height is not null then',
'           sys.htp.p('' height="''|| apex_escape.html(c1.image_height) ||''"'');',
'         end if;',
'         if c1.image_width is not null then',
'            sys.htp.p('' width="''|| apex_escape.html(c1.image_width) ||''"'');',
'        end if;',
'         sys.htp.p('' /></p>'');',
'      end if;',
'      l_use_sections_yn := c1.use_sections_yn;',
'',
'      if c1.intro_text is not null then',
'         sys.htp.p(''<p>''||apex_escape.html(c1.intro_text)||''</p><br/>'');',
'      end if;',
'',
'      for c2 in (',
'         select max(display_sequence) disp_seq',
'           from EBA_QPOLL_QUESTIONS',
'          where poll_id = :POLL_ID',
'      ) loop',
'         l_max_question_seq := c2.disp_seq + 10;',
'      end loop;',
'      --',
'      for c2 in (',
'           select q.id question_id,',
'                  s.id section_id,',
'                  s.title section_title,',
'                  s.section_text,',
'                  s.image_filename,',
'                  s.image_width,',
'                  s.image_height,',
'                  q.question,',
'                  q.QUESTION_TYPE, q.mandatory_yn,',
'                  nvl(a.answer_01,q.answer_01) answer_01,',
'                  nvl(a.answer_02,q.answer_02) answer_02,',
'                  nvl(a.answer_03,q.answer_03) answer_03,',
'                  nvl(a.answer_04,q.answer_04) answer_04,',
'                  nvl(a.answer_05,q.answer_05) answer_05,',
'                  nvl(a.answer_06,q.answer_06) answer_06,',
'                  nvl(a.answer_07,q.answer_07) answer_07,',
'                  nvl(a.answer_08,q.answer_08) answer_08,',
'                  nvl(a.answer_09,q.answer_09) answer_09,',
'                  nvl(a.answer_10,q.answer_10) answer_10,',
'                  nvl(a.answer_11,q.answer_11) answer_11,',
'                  nvl(a.answer_12,q.answer_12) answer_12',
'           from EBA_QPOLL_QUESTIONS q,',
'                EBA_QPOLL_CANNED_ANSWERS a,',
'                eba_qpoll_sections s',
'           where q.question_type = a.code (+) and',
'                 q.POLL_ID = :POLL_ID and',
'                 q.section_id = s.id (+)',
'           order by  nvl(s.display_sequence,l_max_question_seq), s.title nulls last, q.display_sequence',
'      ) loop',
'           c := c + 1;',
'',
'           -- fetch answer values',
'           l_v01 := null;',
'           l_v02 := null;',
'           l_v03 := null;',
'           l_v04 := null;',
'           l_v05 := null;',
'',
'           for c3 in (',
'              select answer_01 , answer_02, answer_03, answer_04, answer_05,',
'                     answer_06 , answer_07, answer_08, answer_09, answer_10, answer_11, answer_12',
'              from EBA_QPOLL_RESULT_DETAILS ',
'              where result_id = :P50_RESULT_ID and',
'                    QUESTION_ID = c2.question_id',
'           ) loop',
'              if c2.QUESTION_TYPE in (''ALLOCATION'') then',
'                 l_vc_arr2 := APEX_UTIL.STRING_TO_TABLE(c3.answer_01,'','');',
'                 FOR z IN 1..l_vc_arr2.count LOOP',
'                    if z=1 then l_v01 := l_vc_arr2(z);',
'                    elsif z=2 then l_v02 := l_vc_arr2(z);',
'                    elsif z=3 then l_v03 := l_vc_arr2(z);',
'                    elsif z=4 then l_v04 := l_vc_arr2(z);',
'                    elsif z=5 then l_v05 := l_vc_arr2(z);',
'                    elsif z=6 then l_v06 := l_vc_arr2(z);',
'                    elsif z=7 then l_v07 := l_vc_arr2(z);',
'                    elsif z=8 then l_v08 := l_vc_arr2(z);',
'                    elsif z=9 then l_v09 := l_vc_arr2(z);',
'                    elsif z=10 then l_v10 := l_vc_arr2(z);',
'                    elsif z=11 then l_v11 := l_vc_arr2(z);',
'                    elsif z=12 then l_v12 := l_vc_arr2(z);',
'                    end if;',
'                 END LOOP;',
'              else',
'                 l_v01 := c3.answer_01;',
'                 l_v02 := c3.answer_02;',
'                 l_v03 := c3.answer_03;',
'                 l_v04 := c3.answer_04;',
'                 l_v05 := c3.answer_05;',
'                 l_v06 := c3.answer_06;',
'                 l_v07 := c3.answer_07;',
'                 l_v08 := c3.answer_08;',
'                 l_v09 := c3.answer_09;',
'                 l_v10 := c3.answer_10;',
'                 l_v11 := c3.answer_11;',
'                 l_v12 := c3.answer_12;',
'              end if;',
'           end loop;',
'',
'           if l_use_sections_yn = ''Y'' then',
'              if nvl(c2.section_id,-1) != nvl(l_section_id,0) then',
'                 if l_section_id is not null then',
'                    sys.htp.p(''</div>'');',
'                 end if;',
'                 sys.htp.p(''<div class="lp-Question"><p class="lp-Question-questionText">'');',
'                 sys.htp.p(apex_escape.html(nvl(c2.section_title,''Additional Questions'')));',
'                 sys.htp.p(''</p>'');',
'                 if c2.section_text is not null then',
'                    sys.htp.p(''<p>'');',
'                    sys.htp.prn(replace(sys.htf.escape_sc(replace(c2.section_text,''<br>'',''++'')),''++'',''<br>''));',
'                    sys.htp.p(''</p>'');',
'                 end if;',
'                 if c2.image_filename is not null then',
'                    sys.htp.p(''<p><img src="''||apex_util.get_blob_file_src(''P380_IMAGE_BLOB'',c2.section_id)||''"'');',
'                    if c2.image_height is not null then',
'                       sys.htp.p('' height="''|| apex_escape.html(c2.image_height) ||''"'');',
'                    end if;',
'                    if c2.image_width is not null then',
'                       sys.htp.p('' width="''|| apex_escape.html(c2.image_width) ||''"'');',
'                    end if;',
'                    sys.htp.p('' /></p>'');',
'                 end if;',
'              end if;',
'              l_section_id := c2.section_id;',
'           end if;',
'',
'           --F20 holds array of question IDs',
'           sys.htp.p(''<input type="hidden" name="F50" value="''||c2.question_id||''">'');',
'           ',
'           if c2.QUESTION_TYPE in (''TEXTAREA'',''TEXT'') then',
'               sys.htp.p(''<div class="lp-Question"><p class="lp-Question-questionText">'');',
'               sys.htp.p(''<label for="F''||lpad(to_char(c),2,''00'')||''">'');',
'           else',
'               sys.htp.p(''<div class="lp-Question" aria-labelledby="Q_''||c2.question_id||''_LABEL" role="group"><p class="lp-Question-questionText" id="Q_''||c2.question_id||''_LABEL">'');',
'           end if;',
'',
'           sys.htp.prn(replace(sys.htf.escape_sc(replace(c2.question,''<br>'',''++'')),''++'',''<br>''));',
'',
'           -- this needs to be changed to something better',
'           if c2.mandatory_yn = ''Y'' then ',
'              sys.htp.p('' *'');',
'              l_mand := ''Y'';',
'           end if;',
'           ',
'           if c2.QUESTION_TYPE in (''TEXTAREA'',''TEXT'') then',
'               sys.htp.p(''</label>'');',
'           end if;',
'           ',
'           sys.htp.prn(''</p>'');',
'',
'           for c3 in (',
'              select image_height, image_width',
'                from eba_qpoll_questions',
'               where id = c2.question_id',
'                 and image_filename is not null',
'           ) loop',
'              sys.htp.p(''<p><img src="''||apex_util.get_blob_file_src(''P180_IMAGE_BLOB'',c2.question_id)||''"'');',
'              if c3.image_height is not null then',
'                 sys.htp.p('' height="''|| apex_escape.html(c3.image_height) ||''"'');',
'              end if;',
'              if c3.image_width is not null then',
'                 sys.htp.p('' width="''|| apex_escape.html(c3.image_width) ||''"'');',
'              end if;',
'              sys.htp.p('' /></p>'');',
'           end loop;',
'',
'           if c2.QUESTION_TYPE = ''TEXTAREA'' then',
'               display_textarea (p_id => c, p_answer => c2.ANSWER_01, p_value=>l_v01);',
'           elsif c2.QUESTION_TYPE = ''TEXT'' then',
'               display_text (p_id => c, p_answer => c2.ANSWER_01, p_value=>l_v01);',
'           elsif c2.QUESTION_TYPE in (''STACK'', ''STACK_RANK'') then',
'               g_cnt := 0;',
'               sys.htp.prn(''<ul data-sortable-name="F''||lpad(to_char(c),2,''00'')||''" data-sortable-second="true">'');',
'               display_stack_rank (p_id => c, p_answer => c2.ANSWER_01, p_value => l_v01);',
'               display_stack_rank (p_id => c, p_answer => c2.ANSWER_02, p_value => l_v01);',
'               display_stack_rank (p_id => c, p_answer => c2.ANSWER_03, p_value => l_v01);',
'               display_stack_rank (p_id => c, p_answer => c2.ANSWER_04, p_value => l_v01);',
'               display_stack_rank (p_id => c, p_answer => c2.ANSWER_05, p_value => l_v01);',
'               display_stack_rank (p_id => c, p_answer => c2.ANSWER_06, p_value => l_v01);',
'               display_stack_rank (p_id => c, p_answer => c2.ANSWER_07, p_value => l_v01);',
'               display_stack_rank (p_id => c, p_answer => c2.ANSWER_08, p_value => l_v01);',
'               display_stack_rank (p_id => c, p_answer => c2.ANSWER_09, p_value => l_v01);',
'               display_stack_rank (p_id => c, p_answer => c2.ANSWER_10, p_value => l_v01);',
'               display_stack_rank (p_id => c, p_answer => c2.ANSWER_11, p_value => l_v01);',
'               display_stack_rank (p_id => c, p_answer => c2.ANSWER_12, p_value => l_v01);',
'               sys.htp.p(''</ul>'');',
'           elsif c2.QUESTION_TYPE in (''ALLOCATION'') then',
'               g_cnt := 0;',
'               sys.htp.prn(''<ul data-allocate-name="F''||lpad(to_char(c),2,''00'')||''" data-allocate-max="100" data-allocate-suffix="dollar" data-allocate-step="1" data-allocate-restrict="proportion">'');',
'               display_allocation (p_id => c, p_answer => c2.ANSWER_01, p_value => l_v01);',
'               display_allocation (p_id => c, p_answer => c2.ANSWER_02, p_value => l_v02);',
'               display_allocation (p_id => c, p_answer => c2.ANSWER_03, p_value => l_v03);',
'               display_allocation (p_id => c, p_answer => c2.ANSWER_04, p_value => l_v04);',
'               display_allocation (p_id => c, p_answer => c2.ANSWER_05, p_value => l_v05);',
'               display_allocation (p_id => c, p_answer => c2.ANSWER_06, p_value => l_v06);',
'               display_allocation (p_id => c, p_answer => c2.ANSWER_07, p_value => l_v07);',
'               display_allocation (p_id => c, p_answer => c2.ANSWER_08, p_value => l_v08);',
'               display_allocation (p_id => c, p_answer => c2.ANSWER_09, p_value => l_v09);',
'               display_allocation (p_id => c, p_answer => c2.ANSWER_10, p_value => l_v10);',
'               display_allocation (p_id => c, p_answer => c2.ANSWER_11, p_value => l_v11);',
'               display_allocation (p_id => c, p_answer => c2.ANSWER_12, p_value => l_v12);',
'               sys.htp.p(''</ul>'');',
'           elsif c2.QUESTION_TYPE = ''RADIO_GROUP'' then',
'               g_cnt := 0;',
'               display_radio_group (p_id => c, p_answer => c2.ANSWER_01, p_value => l_v01);',
'               display_radio_group (p_id => c, p_answer => c2.ANSWER_02, p_value => l_v01);',
'               display_radio_group (p_id => c, p_answer => c2.ANSWER_03, p_value => l_v01);',
'               display_radio_group (p_id => c, p_answer => c2.ANSWER_04, p_value => l_v01);',
'               display_radio_group (p_id => c, p_answer => c2.ANSWER_05, p_value => l_v01);',
'               display_radio_group (p_id => c, p_answer => c2.ANSWER_06, p_value => l_v01);',
'               display_radio_group (p_id => c, p_answer => c2.ANSWER_07, p_value => l_v01);',
'               display_radio_group (p_id => c, p_answer => c2.ANSWER_08, p_value => l_v01);',
'               display_radio_group (p_id => c, p_answer => c2.ANSWER_09, p_value => l_v01);',
'               display_radio_group (p_id => c, p_answer => c2.ANSWER_10, p_value => l_v01);',
'               display_radio_group (p_id => c, p_answer => c2.ANSWER_11, p_value => l_v01);',
'               display_radio_group (p_id => c, p_answer => c2.ANSWER_12, p_value => l_v01);',
'               ',
'           elsif c2.QUESTION_TYPE = ''CHECKBOX'' then',
'               g_cnt := 0;',
'               display_checkbox (p_id => c, p_answer => c2.ANSWER_01, ',
'                    p_value_01 => l_v01, ',
'                    p_value_02 => l_v02, ',
'                    p_value_03 => l_v03, ',
'                    p_value_04 => l_v04, ',
'                    p_value_05 => l_v05,',
'                    p_value_06 => l_v06, ',
'                    p_value_07 => l_v07, ',
'                    p_value_08 => l_v08, ',
'                    p_value_09 => l_v09, ',
'                    p_value_10 => l_v10, ',
'                    p_value_11 => l_v11, ',
'                    p_value_12 => l_v12);',
'               display_checkbox (p_id => c, p_answer => c2.ANSWER_02, ',
'                    p_value_01 => l_v01, ',
'                    p_value_02 => l_v02, ',
'                    p_value_03 => l_v03, ',
'                    p_value_04 => l_v04, ',
'                    p_value_05 => l_v05,',
'                    p_value_06 => l_v06, ',
'                    p_value_07 => l_v07, ',
'                    p_value_08 => l_v08, ',
'                    p_value_09 => l_v09, ',
'                    p_value_10 => l_v10, ',
'                    p_value_11 => l_v11, ',
'                    p_value_12 => l_v12);',
'               display_checkbox (p_id => c, p_answer => c2.ANSWER_03, ',
'                    p_value_01 => l_v01, ',
'                    p_value_02 => l_v02, ',
'                    p_value_03 => l_v03, ',
'                    p_value_04 => l_v04, ',
'                    p_value_05 => l_v05,',
'                    p_value_06 => l_v06, ',
'                    p_value_07 => l_v07, ',
'                    p_value_08 => l_v08, ',
'                    p_value_09 => l_v09, ',
'                    p_value_10 => l_v10, ',
'                    p_value_11 => l_v11, ',
'                    p_value_12 => l_v12);',
'               display_checkbox (p_id => c, p_answer => c2.ANSWER_04, ',
'                    p_value_01 => l_v01, ',
'                    p_value_02 => l_v02, ',
'                    p_value_03 => l_v03, ',
'                    p_value_04 => l_v04, ',
'                    p_value_05 => l_v05,',
'                    p_value_06 => l_v06, ',
'                    p_value_07 => l_v07, ',
'                    p_value_08 => l_v08, ',
'                    p_value_09 => l_v09, ',
'                    p_value_10 => l_v10, ',
'                    p_value_11 => l_v11, ',
'                    p_value_12 => l_v12);',
'               display_checkbox (p_id => c, p_answer => c2.ANSWER_05, ',
'                    p_value_01 => l_v01, ',
'                    p_value_02 => l_v02, ',
'                    p_value_03 => l_v03, ',
'                    p_value_04 => l_v04, ',
'                    p_value_05 => l_v05,',
'                    p_value_06 => l_v06, ',
'                    p_value_07 => l_v07, ',
'                    p_value_08 => l_v08, ',
'                    p_value_09 => l_v09, ',
'                    p_value_10 => l_v10, ',
'                    p_value_11 => l_v11, ',
'                    p_value_12 => l_v12);',
'               display_checkbox (p_id => c, p_answer => c2.ANSWER_06, ',
'                    p_value_01 => l_v01, ',
'                    p_value_02 => l_v02, ',
'                    p_value_03 => l_v03, ',
'                    p_value_04 => l_v04, ',
'                    p_value_05 => l_v05,',
'                    p_value_06 => l_v06, ',
'                    p_value_07 => l_v07, ',
'                    p_value_08 => l_v08, ',
'                    p_value_09 => l_v09, ',
'                    p_value_10 => l_v10, ',
'                    p_value_11 => l_v11, ',
'                    p_value_12 => l_v12);',
'               display_checkbox (p_id => c, p_answer => c2.ANSWER_07, ',
'                    p_value_01 => l_v01, ',
'                    p_value_02 => l_v02, ',
'                    p_value_03 => l_v03, ',
'                    p_value_04 => l_v04, ',
'                    p_value_05 => l_v05,',
'                    p_value_06 => l_v06, ',
'                    p_value_07 => l_v07, ',
'                    p_value_08 => l_v08, ',
'                    p_value_09 => l_v09, ',
'                    p_value_10 => l_v10, ',
'                    p_value_11 => l_v11, ',
'                    p_value_12 => l_v12);',
'               display_checkbox (p_id => c, p_answer => c2.ANSWER_08, ',
'                    p_value_01 => l_v01, ',
'                    p_value_02 => l_v02, ',
'                    p_value_03 => l_v03, ',
'                    p_value_04 => l_v04, ',
'                    p_value_05 => l_v05,',
'                    p_value_06 => l_v06, ',
'                    p_value_07 => l_v07, ',
'                    p_value_08 => l_v08, ',
'                    p_value_09 => l_v09, ',
'                    p_value_10 => l_v10, ',
'                    p_value_11 => l_v11, ',
'                    p_value_12 => l_v12);',
'               display_checkbox (p_id => c, p_answer => c2.ANSWER_09, ',
'                    p_value_01 => l_v01, ',
'                    p_value_02 => l_v02, ',
'                    p_value_03 => l_v03, ',
'                    p_value_04 => l_v04, ',
'                    p_value_05 => l_v05,',
'                    p_value_06 => l_v06, ',
'                    p_value_07 => l_v07, ',
'                    p_value_08 => l_v08, ',
'                    p_value_09 => l_v09, ',
'                    p_value_10 => l_v10, ',
'                    p_value_11 => l_v11, ',
'                    p_value_12 => l_v12);',
'               display_checkbox (p_id => c, p_answer => c2.ANSWER_10, ',
'                    p_value_01 => l_v01, ',
'                    p_value_02 => l_v02, ',
'                    p_value_03 => l_v03, ',
'                    p_value_04 => l_v04, ',
'                    p_value_05 => l_v05,',
'                    p_value_06 => l_v06, ',
'                    p_value_07 => l_v07, ',
'                    p_value_08 => l_v08, ',
'                    p_value_09 => l_v09, ',
'                    p_value_10 => l_v10, ',
'                    p_value_11 => l_v11, ',
'                    p_value_12 => l_v12);',
'               display_checkbox (p_id => c, p_answer => c2.ANSWER_11, ',
'                    p_value_01 => l_v01, ',
'                    p_value_02 => l_v02, ',
'                    p_value_03 => l_v03, ',
'                    p_value_04 => l_v04, ',
'                    p_value_05 => l_v05,',
'                    p_value_06 => l_v06, ',
'                    p_value_07 => l_v07, ',
'                    p_value_08 => l_v08, ',
'                    p_value_09 => l_v09, ',
'                    p_value_10 => l_v10, ',
'                    p_value_11 => l_v11, ',
'                    p_value_12 => l_v12);',
'               display_checkbox (p_id => c, p_answer => c2.ANSWER_12, ',
'                    p_value_01 => l_v01, ',
'                    p_value_02 => l_v02, ',
'                    p_value_03 => l_v03, ',
'                    p_value_04 => l_v04, ',
'                    p_value_05 => l_v05,',
'                    p_value_06 => l_v06, ',
'                    p_value_07 => l_v07, ',
'                    p_value_08 => l_v08, ',
'                    p_value_09 => l_v09, ',
'                    p_value_10 => l_v10, ',
'                    p_value_11 => l_v11, ',
'                    p_value_12 => l_v12);',
'           else',
'               g_cnt := 0;',
'               display_radio_group (p_id => c, p_answer => c2.ANSWER_01, p_value => l_v01);',
'               display_radio_group (p_id => c, p_answer => c2.ANSWER_02, p_value => l_v01);',
'               display_radio_group (p_id => c, p_answer => c2.ANSWER_03, p_value => l_v01);',
'               display_radio_group (p_id => c, p_answer => c2.ANSWER_04, p_value => l_v01);',
'               display_radio_group (p_id => c, p_answer => c2.ANSWER_05, p_value => l_v01);',
'               display_radio_group (p_id => c, p_answer => c2.ANSWER_06, p_value => l_v01);',
'               display_radio_group (p_id => c, p_answer => c2.ANSWER_07, p_value => l_v01);',
'               display_radio_group (p_id => c, p_answer => c2.ANSWER_08, p_value => l_v01);',
'               display_radio_group (p_id => c, p_answer => c2.ANSWER_09, p_value => l_v01);',
'               display_radio_group (p_id => c, p_answer => c2.ANSWER_10, p_value => l_v01);',
'               display_radio_group (p_id => c, p_answer => c2.ANSWER_11, p_value => l_v01);',
'               display_radio_group (p_id => c, p_answer => c2.ANSWER_12, p_value => l_v01);',
'           end if;',
'',
'           -- Close lp-Question div',
'           htp.p(''</div>'');',
'           --',
'',
'           if c = 20 then',
'              exit;',
'           end if;',
'       end loop; -- c2',
'',
'       if l_use_sections_yn = ''Y'' then',
'          sys.htp.p(''</div>'');',
'       end if;',
'',
'       if l_mand = ''Y'' then',
'          sys.htp.p(''<p>* indicates mandatory questions</p>'');',
'       end if;',
'',
'end loop; -- c1',
'end;'))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P50_CAN_TAKE_YN'
,p_plug_display_when_cond2=>'Y'
,p_pagination_display_position=>'BOTTOM_RIGHT'
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
 p_id=>wwv_flow_api.id(14016752502824308224)
,p_plug_name=>'Hidden Items'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(14690161967644251135)
,p_plug_display_sequence=>60
,p_plug_display_point=>'BODY_3'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(14021629295237620309)
,p_plug_name=>'Bottom Bar'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(14690162135548251137)
,p_plug_display_sequence=>70
,p_plug_display_point=>'BODY_3'
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P50_CAN_TAKE_YN = ''Y'' and',
'to_number(:P50_NBR_QUESTIONS) >= 4'))
,p_plug_display_when_cond2=>'PLSQL'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(14033782084403186964)
,p_plug_name=>'Error'
,p_region_template_options=>'#DEFAULT#:t-Alert--wizard:t-Alert--defaultIcons:t-Alert--danger'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(14690160537466251126)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY_3'
,p_plug_source=>'sys.htp.p(''<p>''||apex_escape.html(:P50_WARNING_MESSAGE)||''</p>'');'
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P50_WARNING_MESSAGE is not null and',
':P50_CAN_TAKE_YN = ''N'''))
,p_plug_display_when_cond2=>'PLSQL'
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(14093333501529193343)
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
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(14099915490425865013)
,p_plug_name=>'Warnings'
,p_region_template_options=>'#DEFAULT#:t-Alert--colorBG:t-Alert--horizontal:t-Alert--defaultIcons:t-Alert--warning'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(14690160537466251126)
,p_plug_display_sequence=>30
,p_plug_display_point=>'BODY_3'
,p_plug_source=>'sys.htp.p(''    <p>''||apex_escape.html(:P50_WARNING_MESSAGE)||''</p>'');'
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P50_WARNING_MESSAGE is not null and',
':P50_CAN_TAKE_YN = ''Y'''))
,p_plug_display_when_cond2=>'PLSQL'
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(14022910385390969739)
,p_plug_name=>'Errors in Submission'
,p_parent_plug_id=>wwv_flow_api.id(14099915490425865013)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(14690161967644251135)
,p_plug_display_sequence=>40
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'',
'   for c1 in (',
'      select r.validation_errors',
'        from eba_qpoll_polls p,',
'             EBA_QPOLL_RESULTS r',
'       where p.id = :POLL_ID',
'         and p.id = r.poll_id',
'         and ( (p.anonymous_yn = ''Y'' and r.APEX_SESSION_ID = :APP_SESSION) or',
'                r.APEX_USER = :APP_USER )',
'   ) loop',
'      if c1.validation_errors is not null then',
'         sys.htp.p(''<small>''||apex_escape.html(c1.validation_errors)||''</small>'');',
'      end if;',
'   end loop;',
'',
'end;'))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(14961288174583085523)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(14690173773848251160)
,p_plug_display_sequence=>80
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(17689949455017337264)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(14690191633551251224)
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(14015563103062649470)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(14961288174583085523)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(14690191414518251222)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:&LAST_VIEW.:&SESSION.::&DEBUG.:::'
,p_security_scheme=>wwv_flow_api.id(250464227793234829)
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(14021629705187620311)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(14961288174583085523)
,p_button_name=>'submit_poll'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(14690191414518251222)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Submit'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'P50_CAN_TAKE_YN'
,p_button_condition2=>'Y'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(14022910686622972610)
,p_branch_name=>'on error'
,p_branch_action=>'f?p=&APP_ID.:50:&SESSION.::&DEBUG.:::'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_branch_condition_type=>'EXPRESSION'
,p_branch_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P50_HAS_ERROR = ''Y'' and',
':REQUEST = ''submit_poll'''))
,p_branch_condition_text=>'PLSQL'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(14017841785895786385)
,p_branch_name=>'on success'
,p_branch_action=>'f?p=&APP_ID.:63:&SESSION.::&DEBUG.:::'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>20
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14021630990155646974)
,p_name=>'P50_NBR_QUESTIONS'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(14016752502824308224)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select count(*) cnt',
'  from eba_qpoll_polls p,',
'       EBA_QPOLL_QUESTIONS q',
' where p.id = :POLL_ID',
'   and p.id = q.poll_id'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14022909202187919839)
,p_name=>'P50_HAS_ERROR'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(14016752502824308224)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14022932997897808747)
,p_name=>'P50_RESULT_ID'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(14016752502824308224)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14085624000438799193)
,p_name=>'P50_CAN_TAKE_YN'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(14033782084403186964)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14085624294830801779)
,p_name=>'P50_WARNING_MESSAGE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(14033782084403186964)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14093334609232242819)
,p_name=>'PID'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(14016752502824308224)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(14085576508148670492)
,p_computation_sequence=>10
,p_computation_item=>'LAST_VIEW'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'1'
,p_compute_when=>'LAST_VIEW'
,p_compute_when_type=>'ITEM_IS_NULL'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(14135343404280148015)
,p_name=>'Validate Textareas Less than 4000'
,p_event_sequence=>10
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.lp-Question-inputTextarea textarea'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'$(".lp-Question-inputTextarea textarea").val().length > 4000'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusout'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(14135343691017148033)
,p_event_id=>wwv_flow_api.id(14135343404280148015)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Your response for this field cannot be larger than 4000 characters.'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(14135343980538151792)
,p_event_id=>wwv_flow_api.id(14135343404280148015)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'TRIGGERING_ELEMENT'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(13208652316647526000)
,p_process_sequence=>5
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Remove null Allocations'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'   x           varchar2(32767);',
'begin',
'',
'   for i in 1..20 loop',
'       begin x := wwv_flow.g_f01(i); exception when others then wwv_flow.g_f01(i) := ''''; end;',
'       begin x := wwv_flow.g_f02(i); exception when others then wwv_flow.g_f02(i) := ''''; end;',
'       begin x := wwv_flow.g_f03(i); exception when others then wwv_flow.g_f03(i) := ''''; end;',
'       begin x := wwv_flow.g_f04(i); exception when others then wwv_flow.g_f04(i) := ''''; end;',
'       begin x := wwv_flow.g_f05(i); exception when others then wwv_flow.g_f05(i) := ''''; end;',
'       begin x := wwv_flow.g_f06(i); exception when others then wwv_flow.g_f06(i) := ''''; end;',
'       begin x := wwv_flow.g_f07(i); exception when others then wwv_flow.g_f07(i) := ''''; end;',
'       begin x := wwv_flow.g_f08(i); exception when others then wwv_flow.g_f08(i) := ''''; end;',
'       begin x := wwv_flow.g_f09(i); exception when others then wwv_flow.g_f09(i) := ''''; end;',
'       begin x := wwv_flow.g_f10(i); exception when others then wwv_flow.g_f10(i) := ''''; end;',
'       begin x := wwv_flow.g_f11(i); exception when others then wwv_flow.g_f11(i) := ''''; end;',
'       begin x := wwv_flow.g_f12(i); exception when others then wwv_flow.g_f12(i) := ''''; end;',
'       begin x := wwv_flow.g_f13(i); exception when others then wwv_flow.g_f13(i) := ''''; end;',
'       begin x := wwv_flow.g_f14(i); exception when others then wwv_flow.g_f14(i) := ''''; end;',
'       begin x := wwv_flow.g_f15(i); exception when others then wwv_flow.g_f15(i) := ''''; end;',
'       begin x := wwv_flow.g_f16(i); exception when others then wwv_flow.g_f16(i) := ''''; end;',
'       begin x := wwv_flow.g_f17(i); exception when others then wwv_flow.g_f17(i) := ''''; end;',
'       begin x := wwv_flow.g_f18(i); exception when others then wwv_flow.g_f18(i) := ''''; end;',
'       begin x := wwv_flow.g_f19(i); exception when others then wwv_flow.g_f19(i) := ''''; end;',
'       begin x := wwv_flow.g_f20(i); exception when others then wwv_flow.g_f20(i) := ''''; end;',
'       --',
'       begin x := wwv_flow.g_f50(i); exception when others then wwv_flow.g_f50(i) := ''''; end;',
'   end loop;',
'',
'for j in 1..20 loop',
'    if length(apex_application.g_f50(j)) > 0 then',
'       for c1 in (',
'           select question_type',
'             from EBA_QPOLL_QUESTIONS',
'            where id = apex_application.g_f50(j)',
'       ) loop',
'          if c1.question_type = ''ALLOCATION'' then',
'             if j = 1 then',
'                if to_number(replace(apex_application.g_f01(1),'','')) = 0 then',
'                   apex_application.g_f01(1) := null;',
'                end if;',
'             elsif j = 2 then',
'                if to_number(replace(apex_application.g_f02(1),'','')) = 0 then',
'                   apex_application.g_f02(1) := null;',
'                end if;',
'             elsif j = 3 then',
'                if to_number(replace(apex_application.g_f03(1),'','')) = 0 then',
'                   apex_application.g_f03(1) := null;',
'                end if;',
'             elsif j = 4 then',
'                if to_number(replace(apex_application.g_f04(1),'','')) = 0 then',
'                   apex_application.g_f04(1) := null;',
'                end if;',
'             elsif j = 5 then',
'                if to_number(replace(apex_application.g_f05(1),'','')) = 0 then',
'                   apex_application.g_f05(1) := null;',
'                end if;',
'             elsif j = 6 then',
'                if to_number(replace(apex_application.g_f06(1),'','')) = 0 then',
'                   apex_application.g_f06(1) := null;',
'                end if;',
'             elsif j = 7 then',
'                if to_number(replace(apex_application.g_f07(1),'','')) = 0 then',
'                   apex_application.g_f07(1) := null;',
'                end if;',
'             elsif j = 8 then',
'                if to_number(replace(apex_application.g_f08(1),'','')) = 0 then',
'                   apex_application.g_f08(1) := null;',
'                end if;',
'             elsif j = 9 then',
'                if to_number(replace(apex_application.g_f09(1),'','')) = 0 then',
'                   apex_application.g_f09(1) := null;',
'                end if;',
'             elsif j = 10 then',
'                if to_number(replace(apex_application.g_f10(1),'','')) = 0 then',
'                   apex_application.g_f10(1) := null;',
'                end if;',
'             elsif j = 11 then',
'                if to_number(replace(apex_application.g_f11(1),'','')) = 0 then',
'                   apex_application.g_f11(1) := null;',
'                end if;',
'             elsif j = 12 then',
'                if to_number(replace(apex_application.g_f12(1),'','')) = 0 then',
'                   apex_application.g_f12(1) := null;',
'                end if;',
'             elsif j = 13 then',
'                if to_number(replace(apex_application.g_f13(1),'','')) = 0 then',
'                   apex_application.g_f13(1) := null;',
'                end if;',
'             elsif j = 14 then',
'                if to_number(replace(apex_application.g_f14(1),'','')) = 0 then',
'                   apex_application.g_f14(1) := null;',
'                end if;',
'             elsif j = 15 then',
'                if to_number(replace(apex_application.g_f15(1),'','')) = 0 then',
'                   apex_application.g_f15(1) := null;',
'                end if;',
'             elsif j = 16 then',
'                if to_number(replace(apex_application.g_f16(1),'','')) = 0 then',
'                   apex_application.g_f16(1) := null;',
'                end if;',
'             elsif j = 17 then',
'                if to_number(replace(apex_application.g_f17(1),'','')) = 0 then',
'                   apex_application.g_f17(1) := null;',
'                end if;',
'             elsif j = 18 then',
'                if to_number(replace(apex_application.g_f18(1),'','')) = 0 then',
'                   apex_application.g_f18(1) := null;',
'                end if;',
'             elsif j = 19 then',
'                if to_number(replace(apex_application.g_f19(1),'','')) = 0 then',
'                   apex_application.g_f19(1) := null;',
'                end if;',
'             elsif j = 20 then',
'                if to_number(replace(apex_application.g_f20(1),'','')) = 0 then',
'                   apex_application.g_f20(1) := null;',
'                end if;',
'             end if;',
'          end if;',
'       end loop; -- c1',
'    end if;',
'end loop; --j',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Error clearing null allocations.',
'#SQLERRM#'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'P50_CAN_TAKE_YN'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_process_when2=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(14016752291265295465)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'process poll'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'   l_error_text     varchar2(4000) := null;',
'   l_is_valid_yn    varchar2(1) := null;',
'   l_respondent_id  number := null;',
'   l_result_id      number := null;',
'   c                integer := 0;',
'   x                varchar2(32767);',
'   l_PK             number;',
'   l_poll_id        number := :POLL_ID;',
'   a01              varchar2(4000) := null;',
'   a02              varchar2(4000) := null;',
'   a03              varchar2(4000) := null;',
'   a04              varchar2(4000) := null;',
'   a05              varchar2(4000) := null;',
'   a06              varchar2(4000) := null;',
'   a07              varchar2(4000) := null;',
'   a08              varchar2(4000) := null;',
'   a09              varchar2(4000) := null;',
'   a10              varchar2(4000) := null;',
'   a11              varchar2(4000) := null;',
'   a12              varchar2(4000) := null;',
'   l_question_id    number := null;',
'   l_question       varchar2(4000) := null;',
'   l_question_type  varchar2(30) := null;',
'   l_correct_answer varchar2(4000) := null;',
'   l_use_custom_answers_yn  varchar2(1) := null;',
'   l_delim          varchar2(1) := null;',
'   l_answers        varchar2(4000) := null;',
'   l_correct_yn     varchar2(1) := null;',
'   l_question_found varchar2(1) := null;',
'',
'   l_score_type     varchar2(1) := null;',
'   l_qscore         number := null;',
'   l_email          varchar2(512) := null;',
'   l_app_user       varchar2(255) := null;',
'',
'   function check_length ',
'      (p_response  varchar2)',
'      return varchar2',
'   is',
'   begin',
'      if length(p_response) > 4000 then ',
'         return substr(p_response,1,3997)||''...'';',
'      else ',
'         return p_response;',
'      end if;',
'   end;',
'',
'begin',
'',
'   if :POLL_OR_QUIZ = ''P'' then',
'      l_error_text := eba_qpoll.validate_submission;',
'   end if;',
'',
'   if l_error_text is not null then',
'      l_is_valid_yn := ''N'';',
'      :P50_HAS_ERROR := ''Y'';',
'   else',
'      l_is_valid_yn := ''Y'';',
'      :P50_HAS_ERROR := ''N'';',
'   end if;',
'',
'   l_email := ''unkonwn''; --mike',
'   l_app_user := upper(:APP_USER);',
'   -- have PID and not authenticated',
'   if :PID is not null and instr(:APP_USER,''@'') = 0 then',
'       for c1 in (select id, email from EBA_QPOLL_RESPONDENTS where id = :PID) loop',
'           if not apex_authentication.is_authenticated then',
'                l_app_user := upper(c1.email);',
'           end if;',
'           l_email := lower(c1.email);',
'           l_respondent_id := c1.id;',
'       end loop;',
'   else',
'       l_email := lower(:APP_USER);',
'   end if;',
'',
'   for i in 1..20 loop',
'       begin x := wwv_flow.g_f01(i); exception when others then wwv_flow.g_f01(i) := ''''; end;',
'       begin x := wwv_flow.g_f02(i); exception when others then wwv_flow.g_f02(i) := ''''; end;',
'       begin x := wwv_flow.g_f03(i); exception when others then wwv_flow.g_f03(i) := ''''; end;',
'       begin x := wwv_flow.g_f04(i); exception when others then wwv_flow.g_f04(i) := ''''; end;',
'       begin x := wwv_flow.g_f05(i); exception when others then wwv_flow.g_f05(i) := ''''; end;',
'       begin x := wwv_flow.g_f06(i); exception when others then wwv_flow.g_f06(i) := ''''; end;',
'       begin x := wwv_flow.g_f07(i); exception when others then wwv_flow.g_f07(i) := ''''; end;',
'       begin x := wwv_flow.g_f08(i); exception when others then wwv_flow.g_f08(i) := ''''; end;',
'       begin x := wwv_flow.g_f09(i); exception when others then wwv_flow.g_f09(i) := ''''; end;',
'       begin x := wwv_flow.g_f10(i); exception when others then wwv_flow.g_f10(i) := ''''; end;',
'       begin x := wwv_flow.g_f11(i); exception when others then wwv_flow.g_f11(i) := ''''; end;',
'       begin x := wwv_flow.g_f12(i); exception when others then wwv_flow.g_f12(i) := ''''; end;',
'       begin x := wwv_flow.g_f13(i); exception when others then wwv_flow.g_f13(i) := ''''; end;',
'       begin x := wwv_flow.g_f14(i); exception when others then wwv_flow.g_f14(i) := ''''; end;',
'       begin x := wwv_flow.g_f15(i); exception when others then wwv_flow.g_f15(i) := ''''; end;',
'       begin x := wwv_flow.g_f16(i); exception when others then wwv_flow.g_f16(i) := ''''; end;',
'       begin x := wwv_flow.g_f17(i); exception when others then wwv_flow.g_f17(i) := ''''; end;',
'       begin x := wwv_flow.g_f18(i); exception when others then wwv_flow.g_f18(i) := ''''; end;',
'       begin x := wwv_flow.g_f19(i); exception when others then wwv_flow.g_f19(i) := ''''; end;',
'       begin x := wwv_flow.g_f20(i); exception when others then wwv_flow.g_f20(i) := ''''; end;',
'       --',
'       begin x := wwv_flow.g_f50(i); exception when others then wwv_flow.g_f50(i) := ''''; end;',
'   end loop;',
'',
'   for c1 in (',
'      select anonymous_yn, score_type, status_id',
'        from eba_qpoll_polls',
'       where id = l_poll_id',
'   ) loop',
'',
'      l_score_type := c1.score_type;',
'',
'      -- see if need to create respondent id',
'      if l_respondent_id is null then',
'         select max(id), count(*) c ',
'           into l_respondent_id, c',
'           from EBA_QPOLL_RESPONDENTS ',
'          where email = lower(:APP_USER);',
'         if c = 0 then',
'             insert into EBA_QPOLL_RESPONDENTS (EMAIL) values (lower(:APP_USER))',
'             returning id into l_respondent_id;',
'         end if;',
'      end if;',
'',
'      -- check if update',
'      for c2 in (',
'         select id',
'           from EBA_QPOLL_RESULTS',
'          where poll_id = l_poll_id',
'            and respondent_id = l_respondent_id',
'      ) loop',
'        l_result_id := c2.id;',
'      end loop;',
'',
'      -- if update',
'      if l_result_id is not null then',
'         update EBA_QPOLL_RESULTS',
'            set APEX_SESSION_ID = :APP_SESSION,',
'                is_valid_yn = l_is_valid_yn,',
'                validation_errors = l_error_text,',
'                preactive_yn = case when c1.status_id = 3 then ''N'' else ''Y'' end',
'          where id = l_result_id;',
'         commit;',
'      else',
'         -- insert result header',
'         insert into EBA_QPOLL_RESULTS (',
'             poll_id,',
'             APEX_SESSION_ID,',
'             APEX_USER,',
'             email,',
'             --',
'             RESPONDENT_ID,',
'             created_by,',
'             updated_by,',
'             is_valid_yn,',
'             validation_errors,',
'             preactive_yn',
'             ) ',
'          values (',
'             l_poll_id,',
'             :APP_SESSION,',
'             l_app_user,   -- case when c1.anonymous_yn = ''Y'' then ''ANONYMOUS'' else l_app_user end,',
'             l_email,      -- case when c1.anonymous_yn = ''Y'' then ''ANONYMOUS'' else l_email end,',
'             --',
'             l_respondent_id,',
'             case when c1.anonymous_yn = ''Y'' then null else l_app_user end,',
'             case when c1.anonymous_yn = ''Y'' then ''ANONYMOUS'' else l_app_user end,',
'             l_is_valid_yn,',
'             l_error_text,',
'             case when c1.status_id = 3 then ''N'' else ''Y'' end',
'             ) returning ID into l_PK;',
'         commit;',
'',
'      end if;',
'   end loop;',
'   ',
'   -- insert poll answers',
'   ',
'   for j in 1..20 loop',
'       if length(wwv_flow.g_f50(j)) > 0 then',
'           l_question_id := wwv_flow.g_f50(j);',
'           if j = 1 then',
'              a01 := check_length(wwv_flow.g_f01(1));',
'              a02 := check_length(wwv_flow.g_f01(2));',
'              a03 := check_length(wwv_flow.g_f01(3));',
'              a04 := check_length(wwv_flow.g_f01(4));',
'              a05 := check_length(wwv_flow.g_f01(5));',
'              a06 := check_length(wwv_flow.g_f01(6));',
'              a07 := check_length(wwv_flow.g_f01(7));',
'              a08 := check_length(wwv_flow.g_f01(8));',
'              a09 := check_length(wwv_flow.g_f01(9));',
'              a10 := check_length(wwv_flow.g_f01(10));',
'              a11 := check_length(wwv_flow.g_f01(11));',
'              a12 := check_length(wwv_flow.g_f01(12));',
'           elsif j = 2 then',
'              a01 := check_length(wwv_flow.g_f02(1));',
'              a02 := check_length(wwv_flow.g_f02(2));',
'              a03 := check_length(wwv_flow.g_f02(3));',
'              a04 := check_length(wwv_flow.g_f02(4));',
'              a05 := check_length(wwv_flow.g_f02(5));',
'              a06 := check_length(wwv_flow.g_f02(6));',
'              a07 := check_length(wwv_flow.g_f02(7));',
'              a08 := check_length(wwv_flow.g_f02(8));',
'              a09 := check_length(wwv_flow.g_f02(9));',
'              a10 := check_length(wwv_flow.g_f02(10));',
'              a11 := check_length(wwv_flow.g_f01(11));',
'              a12 := check_length(wwv_flow.g_f01(12));',
'           elsif j = 3 then',
'              a01 := check_length(wwv_flow.g_f03(1));',
'              a02 := check_length(wwv_flow.g_f03(2));',
'              a03 := check_length(wwv_flow.g_f03(3));',
'              a04 := check_length(wwv_flow.g_f03(4));',
'              a05 := check_length(wwv_flow.g_f03(5));',
'              a06 := check_length(wwv_flow.g_f03(6));',
'              a07 := check_length(wwv_flow.g_f03(7));',
'              a08 := check_length(wwv_flow.g_f03(8));',
'              a09 := check_length(wwv_flow.g_f03(9));',
'              a10 := check_length(wwv_flow.g_f03(10));',
'              a11 := check_length(wwv_flow.g_f01(11));',
'              a12 := check_length(wwv_flow.g_f01(12));',
'           elsif j = 4 then',
'              a01 := check_length(wwv_flow.g_f04(1));',
'              a02 := check_length(wwv_flow.g_f04(2));',
'              a03 := check_length(wwv_flow.g_f04(3));',
'              a04 := check_length(wwv_flow.g_f04(4));',
'              a05 := check_length(wwv_flow.g_f04(5));',
'              a06 := check_length(wwv_flow.g_f04(6));',
'              a07 := check_length(wwv_flow.g_f04(7));',
'              a08 := check_length(wwv_flow.g_f04(8));',
'              a09 := check_length(wwv_flow.g_f04(9));',
'              a10 := check_length(wwv_flow.g_f04(10));',
'              a11 := check_length(wwv_flow.g_f01(11));',
'              a12 := check_length(wwv_flow.g_f01(12));',
'           elsif j = 5 then',
'              a01 := check_length(wwv_flow.g_f05(1));',
'              a02 := check_length(wwv_flow.g_f05(2));',
'              a03 := check_length(wwv_flow.g_f05(3));',
'              a04 := check_length(wwv_flow.g_f05(4));',
'              a05 := check_length(wwv_flow.g_f05(5));',
'              a06 := check_length(wwv_flow.g_f05(6));',
'              a07 := check_length(wwv_flow.g_f05(7));',
'              a08 := check_length(wwv_flow.g_f05(8));',
'              a09 := check_length(wwv_flow.g_f05(9));',
'              a10 := check_length(wwv_flow.g_f05(10));',
'              a11 := check_length(wwv_flow.g_f01(11));',
'              a12 := check_length(wwv_flow.g_f01(12));',
'           elsif j = 6 then',
'              a01 := check_length(wwv_flow.g_f06(1));',
'              a02 := check_length(wwv_flow.g_f06(2));',
'              a03 := check_length(wwv_flow.g_f06(3));',
'              a04 := check_length(wwv_flow.g_f06(4));',
'              a05 := check_length(wwv_flow.g_f06(5));',
'              a06 := check_length(wwv_flow.g_f06(6));',
'              a07 := check_length(wwv_flow.g_f06(7));',
'              a08 := check_length(wwv_flow.g_f06(8));',
'              a09 := check_length(wwv_flow.g_f06(9));',
'              a10 := check_length(wwv_flow.g_f06(10));',
'              a11 := check_length(wwv_flow.g_f01(11));',
'              a12 := check_length(wwv_flow.g_f01(12));',
'           elsif j = 7 then',
'              a01 := check_length(wwv_flow.g_f07(1));',
'              a02 := check_length(wwv_flow.g_f07(2));',
'              a03 := check_length(wwv_flow.g_f07(3));',
'              a04 := check_length(wwv_flow.g_f07(4));',
'              a05 := check_length(wwv_flow.g_f07(5));',
'              a06 := check_length(wwv_flow.g_f07(6));',
'              a07 := check_length(wwv_flow.g_f07(7));',
'              a08 := check_length(wwv_flow.g_f07(8));',
'              a09 := check_length(wwv_flow.g_f07(9));',
'              a10 := check_length(wwv_flow.g_f07(10));',
'              a11 := check_length(wwv_flow.g_f01(11));',
'              a12 := check_length(wwv_flow.g_f01(12));',
'           elsif j = 8 then',
'              a01 := check_length(wwv_flow.g_f08(1));',
'              a02 := check_length(wwv_flow.g_f08(2));',
'              a03 := check_length(wwv_flow.g_f08(3));',
'              a04 := check_length(wwv_flow.g_f08(4));',
'              a05 := check_length(wwv_flow.g_f08(5));',
'              a06 := check_length(wwv_flow.g_f08(6));',
'              a07 := check_length(wwv_flow.g_f08(7));',
'              a08 := check_length(wwv_flow.g_f08(8));',
'              a09 := check_length(wwv_flow.g_f08(9));',
'              a10 := check_length(wwv_flow.g_f08(10));',
'              a11 := check_length(wwv_flow.g_f01(11));',
'              a12 := check_length(wwv_flow.g_f01(12));',
'           elsif j = 9 then',
'              a01 := check_length(wwv_flow.g_f09(1));',
'              a02 := check_length(wwv_flow.g_f09(2));',
'              a03 := check_length(wwv_flow.g_f09(3));',
'              a04 := check_length(wwv_flow.g_f09(4));',
'              a05 := check_length(wwv_flow.g_f09(5));',
'              a06 := check_length(wwv_flow.g_f09(6));',
'              a07 := check_length(wwv_flow.g_f09(7));',
'              a08 := check_length(wwv_flow.g_f09(8));',
'              a09 := check_length(wwv_flow.g_f09(9));',
'              a10 := check_length(wwv_flow.g_f09(10));',
'              a11 := check_length(wwv_flow.g_f01(11));',
'              a12 := check_length(wwv_flow.g_f01(12));',
'           elsif j = 10 then',
'              a01 := check_length(wwv_flow.g_f10(1));',
'              a02 := check_length(wwv_flow.g_f10(2));',
'              a03 := check_length(wwv_flow.g_f10(3));',
'              a04 := check_length(wwv_flow.g_f10(4));',
'              a05 := check_length(wwv_flow.g_f10(5));',
'              a06 := check_length(wwv_flow.g_f10(6));',
'              a07 := check_length(wwv_flow.g_f10(7));',
'              a08 := check_length(wwv_flow.g_f10(8));',
'              a09 := check_length(wwv_flow.g_f10(9));',
'              a10 := check_length(wwv_flow.g_f10(10));',
'              a11 := check_length(wwv_flow.g_f01(11));',
'              a12 := check_length(wwv_flow.g_f01(12));',
'           elsif j = 11 then',
'              a01 := check_length(wwv_flow.g_f11(1));',
'              a02 := check_length(wwv_flow.g_f11(2));',
'              a03 := check_length(wwv_flow.g_f11(3));',
'              a04 := check_length(wwv_flow.g_f11(4));',
'              a05 := check_length(wwv_flow.g_f11(5));',
'              a06 := check_length(wwv_flow.g_f11(6));',
'              a07 := check_length(wwv_flow.g_f11(7));',
'              a08 := check_length(wwv_flow.g_f11(8));',
'              a09 := check_length(wwv_flow.g_f11(9));',
'              a10 := check_length(wwv_flow.g_f11(10));',
'              a11 := check_length(wwv_flow.g_f01(11));',
'              a12 := check_length(wwv_flow.g_f01(12));',
'           elsif j = 12 then',
'              a01 := check_length(wwv_flow.g_f12(1));',
'              a02 := check_length(wwv_flow.g_f12(2));',
'              a03 := check_length(wwv_flow.g_f12(3));',
'              a04 := check_length(wwv_flow.g_f12(4));',
'              a05 := check_length(wwv_flow.g_f12(5));',
'              a06 := check_length(wwv_flow.g_f12(6));',
'              a07 := check_length(wwv_flow.g_f12(7));',
'              a08 := check_length(wwv_flow.g_f12(8));',
'              a09 := check_length(wwv_flow.g_f12(9));',
'              a10 := check_length(wwv_flow.g_f12(10));',
'              a11 := check_length(wwv_flow.g_f01(11));',
'              a12 := check_length(wwv_flow.g_f01(12));',
'           elsif j = 13 then',
'              a01 := check_length(wwv_flow.g_f13(1));',
'              a02 := check_length(wwv_flow.g_f13(2));',
'              a03 := check_length(wwv_flow.g_f13(3));',
'              a04 := check_length(wwv_flow.g_f13(4));',
'              a05 := check_length(wwv_flow.g_f13(5));',
'              a06 := check_length(wwv_flow.g_f13(6));',
'              a07 := check_length(wwv_flow.g_f13(7));',
'              a08 := check_length(wwv_flow.g_f13(8));',
'              a09 := check_length(wwv_flow.g_f13(9));',
'              a10 := check_length(wwv_flow.g_f13(10));',
'              a11 := check_length(wwv_flow.g_f01(11));',
'              a12 := check_length(wwv_flow.g_f01(12));',
'           elsif j = 14 then',
'              a01 := check_length(wwv_flow.g_f14(1));',
'              a02 := check_length(wwv_flow.g_f14(2));',
'              a03 := check_length(wwv_flow.g_f14(3));',
'              a04 := check_length(wwv_flow.g_f14(4));',
'              a05 := check_length(wwv_flow.g_f14(5));',
'              a06 := check_length(wwv_flow.g_f14(6));',
'              a07 := check_length(wwv_flow.g_f14(7));',
'              a08 := check_length(wwv_flow.g_f14(8));',
'              a09 := check_length(wwv_flow.g_f14(9));',
'              a10 := check_length(wwv_flow.g_f14(10));',
'              a11 := check_length(wwv_flow.g_f01(11));',
'              a12 := check_length(wwv_flow.g_f01(12));',
'           elsif j = 15 then',
'              a01 := check_length(wwv_flow.g_f15(1));',
'              a02 := check_length(wwv_flow.g_f15(2));',
'              a03 := check_length(wwv_flow.g_f15(3));',
'              a04 := check_length(wwv_flow.g_f15(4));',
'              a05 := check_length(wwv_flow.g_f15(5));',
'              a06 := check_length(wwv_flow.g_f15(6));',
'              a07 := check_length(wwv_flow.g_f15(7));',
'              a08 := check_length(wwv_flow.g_f15(8));',
'              a09 := check_length(wwv_flow.g_f15(9));',
'              a10 := check_length(wwv_flow.g_f15(10));',
'              a11 := check_length(wwv_flow.g_f01(11));',
'              a12 := check_length(wwv_flow.g_f01(12));',
'           elsif j = 16 then',
'              a01 := check_length(wwv_flow.g_f16(1));',
'              a02 := check_length(wwv_flow.g_f16(2));',
'              a03 := check_length(wwv_flow.g_f16(3));',
'              a04 := check_length(wwv_flow.g_f16(4));',
'              a05 := check_length(wwv_flow.g_f16(5));',
'              a06 := check_length(wwv_flow.g_f16(6));',
'              a07 := check_length(wwv_flow.g_f16(7));',
'              a08 := check_length(wwv_flow.g_f16(8));',
'              a09 := check_length(wwv_flow.g_f16(9));',
'              a10 := check_length(wwv_flow.g_f16(10));',
'              a11 := check_length(wwv_flow.g_f01(11));',
'              a12 := check_length(wwv_flow.g_f01(12));',
'           elsif j = 17 then',
'              a01 := check_length(wwv_flow.g_f17(1));',
'              a02 := check_length(wwv_flow.g_f17(2));',
'              a03 := check_length(wwv_flow.g_f17(3));',
'              a04 := check_length(wwv_flow.g_f17(4));',
'              a05 := check_length(wwv_flow.g_f17(5));',
'              a06 := check_length(wwv_flow.g_f17(6));',
'              a07 := check_length(wwv_flow.g_f17(7));',
'              a08 := check_length(wwv_flow.g_f17(8));',
'              a09 := check_length(wwv_flow.g_f17(9));',
'              a10 := check_length(wwv_flow.g_f17(10));',
'              a11 := check_length(wwv_flow.g_f01(11));',
'              a12 := check_length(wwv_flow.g_f01(12));',
'           elsif j = 18 then',
'              a01 := check_length(wwv_flow.g_f18(1));',
'              a02 := check_length(wwv_flow.g_f18(2));',
'              a03 := check_length(wwv_flow.g_f18(3));',
'              a04 := check_length(wwv_flow.g_f18(4));',
'              a05 := check_length(wwv_flow.g_f18(5));',
'              a06 := check_length(wwv_flow.g_f18(6));',
'              a07 := check_length(wwv_flow.g_f18(7));',
'              a08 := check_length(wwv_flow.g_f18(8));',
'              a09 := check_length(wwv_flow.g_f18(9));',
'              a10 := check_length(wwv_flow.g_f18(10));',
'              a11 := check_length(wwv_flow.g_f01(11));',
'              a12 := check_length(wwv_flow.g_f01(12));',
'           elsif j = 19 then',
'              a01 := check_length(wwv_flow.g_f19(1));',
'              a02 := check_length(wwv_flow.g_f19(2));',
'              a03 := check_length(wwv_flow.g_f19(3));',
'              a04 := check_length(wwv_flow.g_f19(4));',
'              a05 := check_length(wwv_flow.g_f19(5));',
'              a06 := check_length(wwv_flow.g_f19(6));',
'              a07 := check_length(wwv_flow.g_f19(7));',
'              a08 := check_length(wwv_flow.g_f19(8));',
'              a09 := check_length(wwv_flow.g_f19(9));',
'              a10 := check_length(wwv_flow.g_f19(10));',
'              a11 := check_length(wwv_flow.g_f01(11));',
'              a12 := check_length(wwv_flow.g_f01(12));',
'           elsif j = 20 then',
'              a01 := check_length(wwv_flow.g_f20(1));',
'              a02 := check_length(wwv_flow.g_f20(2));',
'              a03 := check_length(wwv_flow.g_f20(3));',
'              a04 := check_length(wwv_flow.g_f20(4));',
'              a05 := check_length(wwv_flow.g_f20(5));',
'              a06 := check_length(wwv_flow.g_f20(6));',
'              a07 := check_length(wwv_flow.g_f20(7));',
'              a08 := check_length(wwv_flow.g_f20(8));',
'              a09 := check_length(wwv_flow.g_f20(9));',
'              a10 := check_length(wwv_flow.g_f20(10));',
'              a11 := check_length(wwv_flow.g_f01(11));',
'              a12 := check_length(wwv_flow.g_f01(12));',
'           end if;',
'          ',
'           begin        ',
'               select q.question, q.correct_answer, q.question_type, q.use_custom_answers_yn,',
'                      case when l_score_type in (''C'',''A'') and q.enable_score_yn = ''Y'' then',
'                           case when nvl(a.answer_01,q.answer_01) = a01',
'                                then q.answer_01_score',
'                                when nvl(a.answer_02,q.answer_02) = a01',
'                                then q.answer_02_score',
'                                when nvl(a.answer_03,q.answer_03) = a01',
'                                then q.answer_03_score',
'                                when nvl(a.answer_04,q.answer_04) = a01',
'                                then q.answer_04_score',
'                                when nvl(a.answer_05,q.answer_05) = a01',
'                                then q.answer_05_score',
'                                when nvl(a.answer_06,q.answer_06) = a01',
'                                then q.answer_06_score',
'                                when nvl(a.answer_07,q.answer_07) = a01',
'                                then q.answer_07_score',
'                                when nvl(a.answer_08,q.answer_08) = a01',
'                                then q.answer_08_score',
'                                when nvl(a.answer_09,q.answer_09) = a01',
'                                then q.answer_09_score',
'                                when nvl(a.answer_10,q.answer_10) = a01',
'                                then q.answer_10_score',
'                                when nvl(a.answer_11,q.answer_11) = a01',
'                                then q.answer_11_score',
'                                when nvl(a.answer_12,q.answer_12) = a01',
'                                then q.answer_12_score',
'                                end',
'                            end qscore',
'                 into l_question, l_correct_answer, l_question_type, l_use_custom_answers_yn,',
'                      l_qscore',
'                 from EBA_QPOLL_QUESTIONS q,',
'                      EBA_QPOLL_CANNED_ANSWERS a',
'                where q.id = l_question_id',
'                  and q.question_type = a.code(+);',
'           exception when others then',
'               l_question := sqlerrm;',
'           end;',
'           ',
'           if :POLL_OR_QUIZ = ''Q'' then',
'              l_correct_yn := null;',
'              if l_question_type = ''CHECKBOX'' then',
'                 l_delim := substr(l_correct_answer,1,1);',
'                 if trim(a01) is not null then',
'                    l_answers := trim(a01);',
'                 end if;',
'                 if trim(a02) is not null then',
'                    l_answers := l_answers || l_delim || trim(a02);',
'                 end if;',
'                 if trim(a03) is not null then',
'                    l_answers := l_answers || l_delim || trim(a03);',
'                 end if;',
'                 if trim(a04) is not null then',
'                    l_answers := l_answers || l_delim || trim(a04);',
'                 end if;',
'                 if trim(a05) is not null then',
'                    l_answers := l_answers || l_delim || trim(a05);',
'                 end if;',
'                 if trim(a06) is not null then',
'                    l_answers := l_answers || l_delim || trim(a06);',
'                 end if;',
'                 if trim(a07) is not null then',
'                    l_answers := l_answers || l_delim || trim(a07);',
'                 end if;',
'                 if trim(a08) is not null then',
'                    l_answers := l_answers || l_delim || trim(a08);',
'                 end if;',
'                 if trim(a09) is not null then',
'                    l_answers := l_answers || l_delim || trim(a09);',
'                 end if;',
'                 if trim(a10) is not null then',
'                    l_answers := l_answers || l_delim || trim(a10);',
'                 end if;',
'                 if trim(a11) is not null then',
'                    l_answers := l_answers || l_delim || trim(a11);',
'                 end if;',
'                 if trim(a12) is not null then',
'                    l_answers := l_answers || l_delim || trim(a12);',
'                 end if;',
'                 l_answers := l_delim || l_answers || l_delim;',
'',
'                 if lower(l_answers) = lower(l_correct_answer) then',
'                    l_correct_yn := ''Y'';',
'                 else',
'                    l_correct_yn := ''N'';',
'                 end if;',
'              elsif l_use_custom_answers_yn = ''Y'' then',
'                 if lower(trim(a01)) = lower(l_correct_answer) then',
'                    l_correct_yn := ''Y'';',
'                 else',
'                    l_correct_yn := ''N'';',
'                 end if;',
'              else',
'                 if a01 = l_correct_answer then',
'                    l_correct_yn := ''Y'';',
'                 else',
'                    l_correct_yn := ''N'';',
'                 end if;',
'              end if;',
'           end if;',
'',
'           -- if update ',
'           if l_result_id is not null then',
'              l_question_found := ''N'';',
'              for c1 in (',
'                 select id',
'                   from eba_qpoll_result_details',
'                  where result_id = l_result_id',
'                 and question_id = l_question_id',
'              ) loop',
'                 update EBA_QPOLL_RESULT_DETAILS',
'                    set display_sequence = j,',
'                        question = l_question,',
'                        ANSWER_01 = a01, ANSWER_02 = a02,',
'                        ANSWER_03 = a03, ANSWER_04 = a04,',
'                        ANSWER_05 = a05, ANSWER_06 = a06,',
'                        ANSWER_07 = a07, ANSWER_08 = a08,',
'                        ANSWER_09 = a09, ANSWER_10 = a10,',
'                        ANSWER_11 = a11, ANSWER_12 = a12,',
'                        answer_correct_yn = l_correct_yn,',
'                        score = l_qscore',
'                  where id = c1.id;',
'                 l_question_found := ''Y'';',
'                 commit;',
'              end loop;',
'           end if;',
'           ',
'           if l_result_id is null or l_question_found = ''N'' then',
'              -- if insert',
'              insert into EBA_QPOLL_RESULT_DETAILS (',
'                 result_id,',
'                 display_sequence,',
'                 QUESTION_ID,',
'                 question,',
'                 --',
'                 ANSWER_01, ANSWER_02, ANSWER_03, ANSWER_04, ANSWER_05, ',
'                 ANSWER_06, ANSWER_07, ANSWER_08, ANSWER_09, ANSWER_10, ANSWER_11, ANSWER_12,',
'                 answer_correct_yn, score',
'                 ) values (',
'                 nvl(l_result_id,l_pk),',
'                 j,',
'                 l_question_id,',
'                 l_question,',
'                 a01, a02, a03, a04, a05,',
'                 a06, a07, a08, a09, a10, a11, a12,',
'                 l_correct_yn, l_qscore',
'                 );',
'              commit;',
'           end if;',
'       end if;',
'   end loop;',
'',
'   -- quiz grade',
'   if :POLL_OR_QUIZ = ''Q'' then',
'      for c1 in (',
'         select count(*) total_cnt, sum(decode(d.answer_correct_yn,''Y'',1,0)) total_correct',
'           from eba_qpoll_polls p,',
'                eba_qpoll_questions q,',
'                EBA_QPOLL_RESULT_DETAILS d',
'         where p.id = l_poll_id',
'           and p.id = q.poll_id',
'           and q.id = d.question_id (+)',
'           and nvl(l_result_id,l_pk) = d.result_id (+)',
'      ) loop',
'         update EBA_QPOLL_RESULTS',
'            set grade = (c1.total_correct/c1.total_cnt)*100',
'          where id = nvl(l_result_id,l_pk);',
'         commit;',
'      end loop;',
'   end if;',
'',
'   -- poll score',
'   if l_score_type = ''C'' then',
'      for c1 in (',
'         select sum(d.score) sum_score',
'           from eba_qpoll_polls p,',
'                eba_qpoll_questions q,',
'                EBA_QPOLL_RESULT_DETAILS d',
'         where p.id = l_poll_id',
'           and p.id = q.poll_id',
'           and q.id = d.question_id (+)',
'           and nvl(l_result_id,l_pk) = d.result_id (+)',
'           and q.enable_score_yn = ''Y''',
'           and d.score is not null',
'      ) loop',
'         update EBA_QPOLL_RESULTS',
'            set score = c1.sum_score',
'          where id = nvl(l_result_id,l_pk);',
'         commit;',
'      end loop;',
'   elsif l_score_type = ''A'' then',
'      for c1 in (',
'         select avg(d.score) avg_score',
'           from eba_qpoll_polls p,',
'                eba_qpoll_questions q,',
'                EBA_QPOLL_RESULT_DETAILS d',
'         where p.id = l_poll_id',
'           and p.id = q.poll_id',
'           and q.id = d.question_id (+)',
'           and nvl(l_result_id,l_pk) = d.result_id (+)',
'           and q.enable_score_yn = ''Y''',
'           and d.score is not null',
'      ) loop',
'         update EBA_QPOLL_RESULTS',
'            set score = c1.avg_score',
'          where id = nvl(l_result_id,l_pk);',
'         commit;',
'      end loop;',
'   end if;',
'',
'   -- remove all invalid results, older than 7 days (cascade constraint on EBA_QPOLL_RESULT_DETAILS)',
'   delete from EBA_QPOLL_RESULTS',
'     where nvl(is_valid_yn,''Y'') = ''N''',
'       and updated < sysdate - 7;',
'   commit;',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Unable to process results'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'P50_CAN_TAKE_YN'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_process_when2=>'Y'
,p_process_success_message=>'Results Saved.'
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
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(14085624391079810560)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'See if Warnings'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  l_can_take_yn  varchar2(1);',
'  l_message      varchar2(4000);',
'  l_app_user     varchar2(255); --mike',
'  l_status_id    number;',
'begin',
'',
'-- is there a valid poll',
'if :POLL_ID is null then',
'   l_can_take_yn := ''N'';',
'   l_message := ''Poll ID was missing or invalid.'';',
'else',
'',
'-- closed',
'for c1 in (',
'   select status_id',
'     from eba_qpoll_polls p',
'    where id = :POLL_ID',
') loop',
'   if c1.status_id = 4 then',
'      l_can_take_yn  := ''N'';',
'      l_message      := ''This poll is closed and can no longer be taken.'';',
'   end if;',
'   l_status_id := c1.status_id;',
'end loop;',
'',
'-- setting user, if poll required auth, user was sent to page 500 to force login',
'if apex_authentication.is_authenticated then',
'   l_app_user := :APP_USER;',
'else',
'   if :PID is not null then',
'       for c1 in (select email from EBA_QPOLL_RESPONDENTS where id = :PID) loop',
'           l_app_user := upper(c1.email);',
'       end loop;',
'   end if;',
'end if;',
'',
'-- you already took it, maybe can update your response',
'if nvl(l_can_take_yn,''M'') != ''N'' then',
'   for c1 in (',
'      select status_id, p.anonymous_yn, p.can_update_answers_yn, r.is_valid_yn, r.id',
'        from eba_qpoll_polls p,',
'             eba_qpoll_results r',
'       where p.id = :POLL_ID',
'         and (status_id = 3 or ',
'              (status_id = 2 and',
'               eba_qpoll.get_access_role(',
'                  p_app_id   => :APP_ID,',
'                  p_username => :APP_USER) in (''CONTRIBUTOR'',''ADMINISTRATOR'')))',
'         and p.id = r.poll_id',
'         and r.apex_user = l_app_user',
'        and ( invite_only_yn = ''N'' or ',
'              (status_id = 2 and ',
'               eba_qpoll.get_access_role (',
'                  p_app_id   => :APP_ID,',
'                  p_username => :APP_USER) in (''CONTRIBUTOR'',''ADMINISTRATOR'')) or',
'              exists (select 1 ',
'                        from eba_qpoll_comm_invites c,',
'                             eba_qpoll_invites i',
'                       where c.poll_id = :POLL_ID',
'                         and c.id = i.comm_invite_id',
'                         and upper(respondent_email) = l_app_user))',
'   ) loop',
'      if c1.is_valid_yn = ''N'' then',
'         l_can_take_yn  := ''Y'';',
'         l_message      := ''You have taken this poll but have errors in your submission.  Without correction, your responses will not be considered.'';',
'         :P50_RESULT_ID := c1.id;',
'      end if;',
'      if c1.is_valid_yn = ''Y'' and c1.can_update_answers_yn = ''Y'' then',
'         l_can_take_yn  := ''Y'';',
'         l_message      := ''You have already taken this poll but can update your responses.'';',
'         :P50_RESULT_ID := c1.id;',
'      end if;',
'      if c1.is_valid_yn = ''Y'' and c1.can_update_answers_yn = ''N'' then',
'         l_can_take_yn := ''N'';',
'         if apex_authentication.is_authenticated then',
'            l_message := ''You have already taken this poll.'';',
'         else',
'            l_message := ''This poll link has already been used and cannot be used again.'';',
'         end if;',
'      end if;',
'      if c1.status_id = 2 then',
'         l_message := l_message || ''<br/>This poll is in the testing phase.  You can remove testing data before you publish your poll if desired.'';',
'      end if;',
'   end loop;',
'end if;',
'',
'',
'-- you can take',
'if nvl(l_can_take_yn,''M'') not in (''N'',''Y'') and',
'   eba_qpoll.poll_take_status (',
'      p_app_id   => :APP_ID,',
'      p_poll_id  => :POLL_ID,',
'      p_app_user => l_app_user,',
'      p_app_session => :APP_SESSION) = ''CAN_TAKE_IT''',
'then',
'      l_can_take_yn := ''Y'';',
'      if l_status_id = 2 then',
'         l_message := ''This poll is in the testing phase.  You can remove testing data before you publish your poll if desired.'';',
'      end if;',
'end if;',
'',
'',
'-- staged and you cannot take it (not contributor)',
'if nvl(l_can_take_yn,''M'') = ''M'' and',
'   l_status_id = 2 then',
'      l_can_take_yn := ''N'';',
'      l_message     := ''This poll is in the testing phase. You can only take it if you are a Contributor or Administrator of this Application.'';',
'end if;',
'',
'',
'',
'if nvl(l_can_take_yn,''M'') = ''M'' then',
'   l_can_take_yn := ''N'';',
'   l_message     := ''You cannot take this poll.'';',
'end if;',
'',
'end if;',
'',
':P50_CAN_TAKE_YN     := l_can_take_yn;',
':P50_WARNING_MESSAGE := l_message;',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(14117414102185208653)
,p_process_sequence=>30
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'if poll requires authentication but you are not authenticated'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'owa_util.redirect_url(apex_util.prepare_url(p_url => ''f?p=''||:APP_ID||'':500:0::::LPOLL_ID:''||:POLL_ID,',
'                                            p_checksum_type => ''SESSION'',',
'                                            p_plain_url => TRUE));'))
,p_process_clob_language=>'PLSQL'
,p_process_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_authentication.is_public_user and',
':POLL_AUTHENTICATION_REQ_YN = ''Y'''))
,p_process_when_type=>'EXPRESSION'
,p_process_when2=>'PLSQL'
);
wwv_flow_api.component_end;
end;
/
