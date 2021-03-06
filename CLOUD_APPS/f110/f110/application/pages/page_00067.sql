prompt --application/pages/page_00067
begin
--   Manifest
--     PAGE: 00067
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
 p_id=>67
,p_user_interface_id=>wwv_flow_api.id(14434115216807266717)
,p_name=>'Preview Poll'
,p_alias=>'PREVIEW-POLL'
,p_page_mode=>'MODAL'
,p_step_title=>'Preview Poll'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(14008957981820441125)
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#JQUERYUI_DIRECTORY#ui/widgets/slider.js',
'#JQUERYUI_DIRECTORY#ui/widgets/sortable.js',
'#APP_IMAGES#sortableList/sortableList.js',
'#APP_IMAGES#allocation/allocation.js'))
,p_css_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#APP_IMAGES#sortableList/sortableList.css',
'#APP_IMAGES#allocation/allocation.css'))
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
'  background-color: #F0F0F0;',
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
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch'
,p_required_role=>wwv_flow_api.id(250464227793234829)
,p_overwrite_navigation_list=>'Y'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'ALLAN'
,p_last_upd_yyyymmddhh24miss=>'20210518153808'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(14117420502609754953)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(14690173773848251160)
,p_plug_display_sequence=>40
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(17689949455017337264)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(14690191633551251224)
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(14117422989744782238)
,p_plug_name=>'Hidden Items'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(14690161967644251135)
,p_plug_display_sequence=>30
,p_plug_display_point=>'BODY_3'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(14117423600264794699)
,p_plug_name=>'Poll Preview'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(14690161967644251135)
,p_plug_display_sequence=>20
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
'    l_use_sections_yn  varchar2(1);',
'    l_section_id    number;',
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
'        l_id := ''Q''||to_char((p_id * 10) + g_cnt);',
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
'-- ',
'    procedure display_stack_rank (',
'       p_id     in number, ',
'       p_answer in varchar2 default null, ',
'       p_value  in varchar2 default null)',
'    is ',
'        l_id varchar2(30);',
'    begin',
'        g_cnt := g_cnt + 1;',
'        l_id := ''Q''||to_char((p_id * 10) + g_cnt);',
'        if NVL(p_answer,p_value) is not null then',
'            sys.htp.p(''<li data-value="''||g_cnt||''">''||apex_escape.html(nvl(p_answer,p_value))||''</li>'');',
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
'        if NVL(p_answer,p_value) is not null then',
'            sys.htp.p(''<li data-allocate-value="''||''0''||''">''||apex_escape.html(nvl(p_answer,p_value))||''</li>'');',
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
'        l_id := ''Q''||to_char((p_id * 10) + g_cnt);',
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
'    procedure display_textarea (p_id in number, p_answer in varchar2 default null, p_value in varchar2 default null)',
'    is ',
'    begin',
'        if p_answer is not null then',
'            sys.htp.p(''<div class="lp-Question-inputTextarea"><textarea name="F''||lpad(to_char(c),2,''00'')||',
'                ''" rows="8" cols="80" wrap="virtual" id="''||c||',
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
'            sys.htp.p(''<input type="text" id="''||c||',
'                ''" name="F''||lpad(to_char(c),2,''00'')||',
'                ''" class="text_field" size="32" maxlength="255" '');',
'            sys.htp.p(''value="''|| apex_escape.html(p_value) ||''" />'');',
'            sys.htp.p(''</div>'');',
'        end if;',
'    end display_text;',
'',
'begin',
'',
'   for c2 in (',
'      select image_filename, image_height, image_width, use_sections_yn',
'        from eba_qpoll_polls',
'       where id = :POLL_ID',
'   ) loop',
'      if c2.image_filename is not null then',
'         sys.htp.p(''<p><img src="''||apex_util.get_blob_file_src(''P17_IMAGE_BLOB'',:P67_ID)||''"'');',
'         if c2.image_height is not null then',
'            sys.htp.p('' height="''|| apex_escape.html(c2.image_height) ||''"'');',
'         end if;',
'         if c2.image_width is not null then',
'            sys.htp.p('' width="''|| apex_escape.html(c2.image_width) ||''"'');',
'         end if;',
'         sys.htp.p('' /></p>'');',
'      end if;',
'      l_use_sections_yn := c2.use_sections_yn;',
'   end loop;',
'',
'',
'   for c2 in (',
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
'           where q.question_type = a.code(+) and',
'                 q.POLL_ID = :POLL_ID and',
'                 q.section_id = s.id (+)',
'           order by s.display_sequence, s.title nulls last, q.display_sequence',
'   ) loop',
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
'                    QUESTION_ID = c2.question_id) loop',
'              l_v01 := c3.answer_01;',
'              l_v02 := c3.answer_02;',
'              l_v03 := c3.answer_03;',
'              l_v04 := c3.answer_04;',
'              l_v05 := c3.answer_05;',
'              l_v06 := c3.answer_06;',
'              l_v07 := c3.answer_07;',
'              l_v08 := c3.answer_08;',
'              l_v09 := c3.answer_09;',
'              l_v10 := c3.answer_10;',
'              l_v11 := c3.answer_11;',
'              l_v12 := c3.answer_12;',
'           end loop;',
'',
'           if l_use_sections_yn = ''Y'' then',
'              if nvl(c2.section_id,-1) != nvl(l_section_id,0) then',
'                 if l_section_id is not null then',
'                    sys.htp.p(''</div>'');',
'                 end if;',
'                 sys.htp.p(''<div class="lp-Question"><p class="lp-Question-questionText">'');',
'                 sys.htp.p(nvl(c2.section_title,''Additional Questions''));',
'                 sys.htp.p(''</p>'');',
'                 if c2.section_text is not null then',
'                    sys.htp.p(''<p>'');',
'                    sys.htp.prn(replace(apex_escape.html(replace(c2.section_text,''<br>'',''++'')),''++'',''<br>''));',
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
'           ',
'           --F20 holds array of question IDs',
'           sys.htp.p(''<input type="hidden" name="F50" value="''||c2.question_id||''">'');',
'           ',
'           sys.htp.p(''<div class="lp-Question"><p class="lp-Question-questionText">'');',
'           ',
'           sys.htp.prn(replace(apex_escape.html(replace(c2.question,''<br>'',''++'')),''++'',''<br>''));',
'',
'           -- this needs to be changed to something better',
'           if c2.mandatory_yn = ''Y'' then ',
'              sys.htp.p('' *'');',
'              l_mand := ''Y'';',
'           end if;',
'',
'           sys.htp.prn(''</p>'');',
'',
'           for c3 in (',
'              select image_height, image_width',
'                from eba_qpoll_questions',
'               where id = c2.question_id',
'                 and image_filename is not null',
'           ) loop',
'              sys.htp.p(''<p><img src="''||apex_util.get_blob_file_src(''P18_IMAGE_BLOB'',c2.question_id)||''"'');',
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
'               display_allocation (p_id => c, p_answer => c2.ANSWER_02, p_value => l_v01);',
'               display_allocation (p_id => c, p_answer => c2.ANSWER_03, p_value => l_v01);',
'               display_allocation (p_id => c, p_answer => c2.ANSWER_04, p_value => l_v01);',
'               display_allocation (p_id => c, p_answer => c2.ANSWER_05, p_value => l_v01);',
'               display_allocation (p_id => c, p_answer => c2.ANSWER_06, p_value => l_v01);',
'               display_allocation (p_id => c, p_answer => c2.ANSWER_07, p_value => l_v01);',
'               display_allocation (p_id => c, p_answer => c2.ANSWER_08, p_value => l_v01);',
'               display_allocation (p_id => c, p_answer => c2.ANSWER_09, p_value => l_v01);',
'               display_allocation (p_id => c, p_answer => c2.ANSWER_10, p_value => l_v01);',
'               display_allocation (p_id => c, p_answer => c2.ANSWER_11, p_value => l_v01);',
'               display_allocation (p_id => c, p_answer => c2.ANSWER_12, p_value => l_v01);',
'               sys.htp.p(''</ul>'');',
'',
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
'    end loop; -- c2',
'',
'    if l_use_sections_yn = ''Y'' then',
'       sys.htp.p(''</div>'');',
'    end if;',
'',
'    if l_mand = ''Y'' then',
'       sys.htp.p(''<p>* indicates mandatory questions</p>'');',
'    end if;',
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
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(14117424188406810237)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(14117420502609754953)
,p_button_name=>'close'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(14690191013111251220)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Close'
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-window-close-o'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(4635723434686686794)
,p_name=>'P67_POLL_NAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(14117420502609754953)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(4635723463957686795)
,p_computation_sequence=>10
,p_computation_item=>'P67_POLL_NAME'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'QUERY'
,p_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select poll_name ',
'  from eba_qpoll_polls',
' where id = :POLL_ID'))
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
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(317215376874793449)
,p_name=>'Close'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(14117424188406810237)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(317215416760793450)
,p_event_id=>wwv_flow_api.id(317215376874793449)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_api.component_end;
end;
/
