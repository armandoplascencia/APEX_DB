prompt --application/pages/page_00001
begin
--   Manifest
--     PAGE: 00001
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
 p_id=>1
,p_user_interface_id=>wwv_flow_api.id(14434115216807266717)
,p_name=>'&APPLICATION_TITLE.'
,p_alias=>'HOME_DESKTOP'
,p_step_title=>'&APPLICATION_TITLE.'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(14607213532130162358)
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* This should all be removed later */',
'.qa-ContentRowReport-items{',
'  list-style-type:none;',
'  margin: 0 !important;',
'}',
'',
'.qa-ContentRowReport-item:not(:only-child):not(:last-child) {',
'  border-bottom: 1px solid rgba(0, 0, 0, 0.075);',
'}',
'',
'.qa-ContentRowReport + .t-Report-pagination {',
'  border-top: 1px solid rgba(0, 0, 0, 0.075);',
'}',
'',
'.qa-ContentRowReport-itemWrap {',
'  padding: 16px;',
'  display: flex;',
'  flex-wrap: nowrap;',
'}',
'',
'a.qa-ContentRowReport-itemWrap {',
'  text-decoration: none !important;',
'  outline: none;',
'}',
'',
'.qa-ContentRowReport-itemSelection {',
'  margin-right: 16px;',
'  font-size: 16px;',
'  flex-grow: 0;',
'  flex-shrink: 0;',
'  flex-basis: auto;',
'  align-self: center;',
'  -webkit-user-select: none;',
'  -moz-user-select: none;',
'  -ms-user-select: none;',
'  user-select: none;',
'}',
'',
'.u-RTL .qa-ContentRowReport-itemSelection {',
'  margin-right: 0;',
'  margin-left: 16px;',
'}',
'',
'.qa-ContentRowReport-itemSelection input {',
'  font-size: 16px;',
'  margin: 0;',
'}',
'',
'.qa-ContentRowReport-itemSelection:empty {',
'  display: none;',
'}',
'',
'.qa-ContentRowReport-itemIconWrap {',
'  margin-right: 12px;',
'  flex-grow: 0;',
'  flex-shrink: 0;',
'  flex-basis: auto;',
'  padding-top: 2px;',
'  padding-bottom: 2px;',
'  align-self: center;',
'  color: rgba(0, 0, 0, 0.25);',
'}',
'',
'.u-RTL .qa-ContentRowReport-itemIconWrap {',
'  margin-right: 0;',
'  margin-left: 12px;',
'}',
'',
'.qa-ContentRowReport-itemIconWrap:empty {',
'  display: none;',
'}',
'',
'.qa-ContentRowReport-itemBody {',
'  flex-grow: 1;',
'  flex-shrink: 1;',
'  flex-basis: auto;',
'  display: flex;',
'  flex-wrap: nowrap;',
'}',
'',
'.qa-ContentRowReport-itemBody p:empty {',
'  display: none;',
'}',
'',
'.qa-ContentRowReport-itemContent {',
'  flex-grow: 1;',
'  flex-shrink: 1;',
'  flex-basis: auto;',
'  align-self: center;',
'}',
'',
'.qa-ContentRowReport-itemTitle {',
'  margin-bottom: 0;',
'  font-size: 16px;',
'  line-height: 20px;',
'  font-weight: 700;',
'  margin-right: 8px;',
'  display: inline-block;',
'  vertical-align: top;',
'}',
'',
'.qa-ContentRowReport-itemTitle > label {',
'  display: block;',
'  cursor: pointer;',
'}',
'',
'.qa-ContentRowReport-itemTitle a:not([class]):hover {',
'  text-decoration: underline;',
'}',
'',
'.qa-QuestionList-badge + .qa-ContentRowReport-itemTitle {',
'  margin-left: 4px;',
'}',
'',
'.u-RTL .qa-QuestionList-badge + .qa-ContentRowReport-itemTitle {',
'  margin-left: 0;',
'  margin-right: 4px;',
'}',
'',
'.is-read .qa-ContentRowReport-itemTitle {',
'  font-weight: 400;',
'}',
'',
'.qa-ContentRowReport-itemDescription {',
'  margin: 4px 0 0;',
'  font-size: 12px;',
'  color: rgba(0, 0, 0, 0.55);',
'}',
'',
'.qa-ContentRowReport-itemDescription:empty {',
'  display: none;',
'}',
'',
'.qa-ContentRowReport-itemDescription .qa-QuestionList-badges {',
'  margin-top: 4px;',
'}',
'',
'.qa-ContentRowReport-itemDescription .qa-QuestionList-author {',
'  color: black;',
'  font-weight: 500;',
'}',
'',
'.qa-QuestionList-tag {',
'  display: inline-block;',
'  padding: 3px 0;',
'  font-size: 11px;',
'  line-height: 12px;',
'  margin: 2px 8px 2px 0;',
'  border-radius: 2px;',
'}',
'',
'.u-RTL .qa-QuestionList-tag {',
'  margin: 2px 0 2px 8px;',
'}',
'',
'.qa-QuestionList-tag:before {',
'  content: '''';',
'  width: 12px;',
'  height: 12px;',
'  margin-right: 4px;',
'  display: inline-block;',
'  vertical-align: top;',
'  background-image: url(''data:image/svg+xml,<svg xmlns=!string!width=!string!height=!string!viewBox=!string!><path fill=!string!d=!string!/></svg>'');',
'  background-position: 50%;',
'  background-repeat: no-repeat;',
'  opacity: .5;',
'}',
'',
'.u-RTL .qa-QuestionList-tag:before {',
'  margin-right: 0;',
'  margin-left: 4px;',
'}',
'',
'.qa-QuestionList-tag.is-category:before {',
'  opacity: 1;',
'  background-image: url(''data:image/svg+xml,<svg xmlns=!string!width=!string!height=!string!viewBox=!string!><path fill=!string!d=!string!/></svg>'');',
'}',
'',
'.qa-ContentRowReport-itemMisc {',
'  margin-left: 20px;',
'  margin-right: 20px;',
'  flex-grow: 0;',
'  flex-shrink: 0;',
'  flex-basis: auto;',
'  align-self: center;',
'}',
'',
'.qa-ContentRowReport-itemMisc:empty {',
'  display: none;',
'}',
'',
'.qa-QuestionList-stats {',
'  padding-right: 20px;',
'}',
'',
'.u-RTL .qa-QuestionList-stats {',
'  padding-right: 0;',
'  padding-left: 20px;',
'}',
'',
'.qa-QuestionList-stat {',
'  font-size: 12px;',
'  line-height: 18px;',
'}',
'',
'.qa-QuestionList-stat .qa-QuestionList-value,',
'.qa-QuestionList-stat .qa-QuestionList-label {',
'  font-size: inherit;',
'  line-height: inherit;',
'  display: inline-block;',
'  vertical-align: top;',
'}',
'',
'.qa-QuestionList-stat .qa-QuestionList-value {',
'  min-width: 40px;',
'  text-align: right;',
'}',
'',
'.qa-QuestionList-stat .qa-QuestionList-label {',
'  color: rgba(0, 0, 0, 0.55);',
'}',
'',
'.qa-ContentRowReport-itemActions {',
'  flex-grow: 0;',
'  flex-shrink: 0;',
'  flex-basis: auto;',
'  align-self: center;',
'}',
'',
'.qa-ContentRowReport-itemActions:empty {',
'  display: none;',
'}',
'',
'.qa-ContentRowReport-itemActions .qa-User {',
'  width: 160px;',
'}',
'',
'.qa-ContentRowReport-itemActions .qa-User-name {',
'  font-weight: 500;',
'  font-size: 12px;',
'}',
'',
'.qa-ContentRowReport .qa-Report-percentChart {',
'  width: 100%;',
'  margin: 4px 0;',
'  height: 8px;',
'  border-radius: 8px;',
'}',
'',
'.qa-ContentRowReport--hideIcons .qa-ContentRowReport-itemIconWrap {',
'  display: none;',
'}',
'',
'.qa-ContentRowReport--hideBorders .qa-ContentRowReport-item {',
'  border-bottom: 0 !important;',
'}',
'',
'.qa-ContentRowReport--removePadding .qa-ContentRowReport-itemWrap {',
'  padding-left: 0;',
'  padding-right: 0;',
'  padding-top: 8px;',
'  padding-bottom: 8px;',
'}',
'',
'.qa-ContentRowReport--removePadding .qa-ContentRowReport-item:first-child .qa-ContentRowReport-itemWrap {',
'  padding-top: 0;',
'}',
'',
'.qa-ContentRowReport--removePadding .qa-ContentRowReport-item:last-child .qa-ContentRowReport-itemWrap {',
'  padding-bottom: 0;',
'}',
'',
'',
'.qp-Stats {',
'  display: flex;',
'}',
'',
'.qp-Stats-item {',
'  display: flex;',
'  flex-direction: column;',
'  align-items: center;',
'  margin: 0 8px 0 0;',
'}',
'',
'.u-RTL .qp-Stats-item {',
'  margin: 0 0 0 8px;',
'}',
'',
'.qp-Stats-label {',
'  font-size: 11px;',
'}',
'',
'.qp-Stats-item:last-child {',
'  margin-right: 0;',
'}',
'',
'.u-RTL .qp-Stats-item:last-child {',
'  margin-left: 0;',
'  margin-right: 8px;',
'}',
'',
'.tag-badge {',
'  display: inline-block;',
'  padding: 0 6px;',
'  margin: 2px 4px 2px 0;',
'  border-radius: 2px;',
'  font-size: 11px;',
'  font-weight: bold;',
'  box-shadow: 0 1px 1px -1px rgba(0, 0, 0, .05), 0 0 0 1px rgba(0, 0, 0, .075) inset;',
'}',
'',
'.u-RTL .tag-badge {',
'  margin: 2px 0 2px 4px;',
'}',
''))
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(250464535289234829)
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'   This application allows you to conduct a simple poll or quiz. Results can be reviewed in real time. You can use this &APPLICATION_TITLE. application during meetings or presentations to get instant feedback and to facilitate discussions.   ',
'</p>',
'<p>',
'Users of this application who have the Contributor or Administrator access level can create and manage polls and quizzes.',
'</p>'))
,p_page_comment=>'<link rel="stylesheet" href="#IMAGE_PREFIX#themes/oracle/pdbss/css/oow.css">'
,p_last_updated_by=>'ALLAN'
,p_last_upd_yyyymmddhh24miss=>'20210518090926'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(317215149780793447)
,p_plug_name=>'Side Column'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(14690161967644251135)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>3
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>'select 1 from EBA_QPOLL_POLLS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(356232629807239849)
,p_plug_name=>'Filters'
,p_region_name=>'filters'
,p_parent_plug_id=>wwv_flow_api.id(317215149780793447)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader:t-Region--scrollBody:t-Form--stretchInputs'
,p_plug_template=>wwv_flow_api.id(14690171167000251156)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(307847185416051828)
,p_plug_name=>'Contrib Filters'
,p_parent_plug_id=>wwv_flow_api.id(356232629807239849)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--stacked:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(14690171167000251156)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_required_role=>wwv_flow_api.id(250464227793234829)
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 ',
'  from eba_qpoll_polls',
' where nvl(:P1_VIEW_SELECTOR,''R'') = ''C'''))
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(329633620810789742)
,p_plug_name=>'Reader Filters'
,p_parent_plug_id=>wwv_flow_api.id(356232629807239849)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--stacked:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(14690171167000251156)
,p_plug_display_sequence=>30
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>'nvl(:P1_VIEW_SELECTOR,''R'') = ''R'''
,p_plug_display_when_cond2=>'SQL'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1255018607848779757)
,p_plug_name=>'View Selector'
,p_parent_plug_id=>wwv_flow_api.id(356232629807239849)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--stacked:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(14690171167000251156)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(317215291968793448)
,p_plug_name=>'Main Column'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(14690161967644251135)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(239226456475312963)
,p_name=>'Contributor View'
,p_parent_plug_id=>wwv_flow_api.id(317215291968793448)
,p_template=>wwv_flow_api.id(14690171167000251156)
,p_display_sequence=>90
,p_region_css_classes=>'report_polls'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT poll_id,',
'       poll item_title, ',
'       case when invitations > 0 then ',
'                 ''<a href="''||apex_util.prepare_url(''f?p=''||:APP_ID||'':16:''||:APP_SESSION||'':::RIR,CIR:IR_POLL_ID:''||poll_id)||',
'                 ''">''||invitations||''</a>''',
'            else ''0'' end invitations,',
'       case when responses > 0 then ',
'                 ''<a href="''||apex_util.prepare_url(''f?p=''||:APP_ID||'':66:''||:APP_SESSION||'':::RP,66:LPOLL_ID:''||poll_id)||',
'                 ''">''||responses||''</a>''',
'            else ''0'' end responses,',
'       ''<a href="''||apex_util.prepare_url(''f?p=''||:APP_ID||'':100:''||:APP_SESSION||'':::100:LPOLL_ID:''||poll_id)||',
'                 ''">''||questions||''</a>'' questions,',
'       null item_selection,',
'       null item_icon,',
'       apex_util.prepare_url(''f?p=''||:APP_ID||'':100:''||:APP_SESSION||'':::100:LPOLL_ID:''||poll_id) ITEM_LINK,',
'       apex_escape.html(POLL_DETAILS) || ',
'          case when poll_details is not null then ''<br>'' end ||',
'          case status_id when 1 then ''<span class="tag-badge u-hot" title="Status: Being Authored">Being Authored</span>''',
'                         when 2 then ''<span class="tag-badge u-warning" title="Status: Testing">Testing</span>''',
'                         when 3 then ''<span class="tag-badge u-success" title="Status: Published">Published</span>''',
'                         when 4 then ''<span class="tag-badge u-color-15" title="Status: Closed">Closed</span>''',
'                         end || ',
'          '' created by ''||lower(created_by) ||',
'          case status_id when 1 then '' ''||apex_util.get_since(created)',
'                         when 2 then '' ''||apex_util.get_since(created)',
'                         when 3 then '', published ''|| apex_util.get_since(start_time) ',
'                         when 4 then '', closed ''|| apex_util.get_since(stop_time)',
'                         end item_description,',
'       case when responses > 0 then ''<a class="t-Button t-Button--small t-Button--hot t-Button--simple t-Button--stretch" href="''||',
'       apex_util.prepare_url(''f?p=''||:APP_ID||'':66:''||:APP_SESSION||'':::RP,66:LPOLL_ID:''||poll_id)||',
'               ''">View Results</a>''',
'            end item_actions,',
'      case when take_status in (''CAN_TAKE_IT'',''HAS_ERRORS'',''CAN_UPDATE'') and questions > 0',
'           then ''<a class="t-Button t-Button--small t-Button--simple t-Button--stretch" href="''',
'               ||apex_util.prepare_url(''f?p=''||:APP_ID||'':50:''||:APP_SESSION||'':::50:LPOLL_ID:''||poll_id)',
'               ||''">''||apex_lang.message(take_status)||''</a>''',
'           else '''' end item_misc',
'from',
'(SELECT id poll_id,',
'        POLL_NAME poll, ',
'        POLL_DETAILS,',
'        created,',
'        lower(created_by) created_by,',
'        updated,',
'        lower(updated_by) updated_by,',
'        status_id,',
'        start_time, stop_time,',
'        decode(POLL_OR_QUIZ,''P'',''Poll'',''Q'',''Quiz'',p.POLL_OR_QUIZ) poll_type,',
'        nvl((select count(*) from EBA_QPOLL_QUESTIONS qu where qu.POLL_ID = p.id),0) questions,',
'        nvl((select count(distinct respondent_id)',
'              from eba_qpoll_comm_invites c,',
'                   eba_qpoll_invites i',
'             where c.poll_id = p.id',
'               and c.id = i.comm_invite_id),0) invitations,',
'        nvl((select count(*)',
'               from eba_qpoll_results r',
'              where r.poll_ID = p.id',
'                and nvl(r.is_valid_yn,''Y'') = ''Y''),0)  responses,',
'        eba_qpoll.poll_take_status (',
'           p_app_id      => :APP_ID,',
'           p_poll_id     => id,',
'           p_app_user    => :APP_USER,',
'           p_app_session => :APP_SESSION) take_status',
'  from EBA_QPOLL_POLLS p',
' where (:P1_SEARCH is null or lower(poll_name) like ''%''||lower(:P1_SEARCH)||''%'')',
'   and (:P1_STATUS_ID is null or instr('':''||:P1_STATUS_ID||'':'','':''||p.status_id||'':'') > 0)',
'   and (:P1_CREATED_BY is null or created_by = :P1_CREATED_BY)',
')',
'order by case when nvl(:P1_SORT,''UD'') = ''UD'' then updated end desc,',
'         case when :P1_SORT = ''UA'' then updated end,',
'         case when :P1_SORT = ''CD'' then created end desc,',
'         case when :P1_SORT = ''CA'' then created end,',
'         case when :P1_SORT = ''P'' then poll end',
'         ',
''))
,p_required_role=>wwv_flow_api.id(250464227793234829)
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from eba_qpoll_polls',
' where nvl(:P1_VIEW_SELECTOR,''R'') = ''C'''))
,p_display_condition_type=>'EXISTS'
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P1_SEARCH,P1_STATUS_ID,P1_SORT,P1_CREATED_BY'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(317211898351773752)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'None found meeting your search criteria.'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(307850807866051864)
,p_query_column_id=>1
,p_column_alias=>'POLL_ID'
,p_column_display_sequence=>3
,p_column_heading=>'Poll Id'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(317212617575793422)
,p_query_column_id=>2
,p_column_alias=>'ITEM_TITLE'
,p_column_display_sequence=>2
,p_column_heading=>'Item Title'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(329631574703789721)
,p_query_column_id=>3
,p_column_alias=>'INVITATIONS'
,p_column_display_sequence=>6
,p_column_heading=>'Invitations'
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(329631659504789722)
,p_query_column_id=>4
,p_column_alias=>'RESPONSES'
,p_column_display_sequence=>7
,p_column_heading=>'Responses'
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(334571178455153827)
,p_query_column_id=>5
,p_column_alias=>'QUESTIONS'
,p_column_display_sequence=>8
,p_column_heading=>'Questions'
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(329631405280789719)
,p_query_column_id=>6
,p_column_alias=>'ITEM_SELECTION'
,p_column_display_sequence=>4
,p_column_heading=>'Item Selection'
,p_use_as_row_header=>'N'
,p_column_html_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="qp-Stats">',
'<span class="qp-Stats-item">',
'    <span class="qp-Stats-num">#RESPONSES#</span>',
'    <span class="qp-Stats-label">responses</span>',
'</span>',
'<span class="qp-Stats-item">',
'    <span class="qp-Stats-num">#INVITATIONS#</span>',
'    <span class="qp-Stats-label">invites</span>',
'',
'</span>',
'<span class="qp-Stats-item">',
'    <span class="qp-Stats-num">#QUESTIONS#</span>',
'    <span class="qp-Stats-label">questions</span>',
'',
'</span>',
'</div>'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(329631491037789720)
,p_query_column_id=>7
,p_column_alias=>'ITEM_ICON'
,p_column_display_sequence=>5
,p_column_heading=>'Item Icon'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(329631934793789725)
,p_query_column_id=>8
,p_column_alias=>'ITEM_LINK'
,p_column_display_sequence=>11
,p_column_heading=>'Item Link'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(239226826376312967)
,p_query_column_id=>9
,p_column_alias=>'ITEM_DESCRIPTION'
,p_column_display_sequence=>1
,p_column_heading=>'Item Description'
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(329631772109789723)
,p_query_column_id=>10
,p_column_alias=>'ITEM_ACTIONS'
,p_column_display_sequence=>9
,p_column_heading=>'Item Actions'
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(329631847046789724)
,p_query_column_id=>11
,p_column_alias=>'ITEM_MISC'
,p_column_display_sequence=>10
,p_column_heading=>'Item Misc'
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(14023381879265394818)
,p_plug_name=>'Warning'
,p_parent_plug_id=>wwv_flow_api.id(317215291968793448)
,p_region_template_options=>'#DEFAULT#:t-Alert--colorBG:t-Alert--horizontal:t-Alert--defaultIcons:t-Alert--warning'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(14690160537466251126)
,p_plug_display_sequence=>50
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>You have Responses with Errors.  If these are not resubmitted, they will not be considered.</p>',
''))
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'from EBA_QPOLL_POLLS p,',
'     eba_qpoll_results r',
'where p.id = r.poll_id',
'  and p.status_id = 3 ',
'  and ((p.anonymous_yn = ''Y'' and r.APEX_SESSION_ID = :APP_SESSION) or',
'       r.apex_user = :APP_USER) ',
'  and nvl(r.is_valid_yn,''Y'') = ''N'''))
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(14117384191938172698)
,p_plug_name=>'Email Address Not Set'
,p_parent_plug_id=>wwv_flow_api.id(317215291968793448)
,p_region_template_options=>'#DEFAULT#:t-Alert--colorBG:t-Alert--defaultIcons:t-Alert--danger:t-Alert--horizontal'
,p_plug_template=>wwv_flow_api.id(14690160537466251126)
,p_plug_display_sequence=>70
,p_plug_display_point=>'BODY'
,p_plug_source=>'<p>You have not defined the EMAIL FROM address (in Administration > Default Email Addresses).</p>'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_required_role=>wwv_flow_api.id(250463977822234829)
,p_plug_display_condition_type=>'FUNCTION_BODY'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare x varchar2(4000) := null;',
'begin',
'  x := trim(replace(eba_qpoll_fw.get_preference_value(''NOTIFICATION_EMAIL_FROM''),''N/A'',null));',
'  if x is null or instr(x,''@'') = 0  or instr(x,''.'') = 0 then ',
'     return true; ',
'  else ',
'     return false; ',
'  end if;',
'end;'))
,p_plug_display_when_cond2=>'PLSQL'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(14942380075253853645)
,p_plug_name=>'ACL Warning'
,p_parent_plug_id=>wwv_flow_api.id(317215291968793448)
,p_region_template_options=>'#DEFAULT#:t-Alert--colorBG:t-Alert--horizontal:t-Alert--defaultIcons:t-Alert--warning:margin-top-md'
,p_plug_template=>wwv_flow_api.id(14690160537466251126)
,p_plug_display_sequence=>30
,p_plug_display_point=>'BODY'
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.ACL_WARNING'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>'eba_qpoll_fw.get_preference_value(''ACCESS_CONTROL_ENABLED'') = ''N'''
,p_plug_display_when_cond2=>'PLSQL'
,p_attribute_01=>'f?p=&APP_ID.:SETTINGS:&SESSION.::&DEBUG.:RP::'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(108085706901684119276)
,p_name=>'Reader View'
,p_parent_plug_id=>wwv_flow_api.id(317215291968793448)
,p_template=>wwv_flow_api.id(14690171167000251156)
,p_display_sequence=>100
,p_region_css_classes=>'report_polls'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select poll_name item_title, ',
'       case when action in (''TAKE'',''UPDATE'',''ERRORS'')',
'            then apex_util.prepare_url(''f?p=''||:APP_ID||'':50:''||:APP_SESSION||'':::50:LPOLL_ID:''||id) ',
'            end item_link,',
'       case when intro_text is not null',
'            then apex_escape.html(intro_text) ||''<br/>'' ',
'            end || case when poll_or_quiz = ''Q''',
'                        then ''<span class="tag-badge-yellow">''||apex_lang.message(''QUIZ_INITCAP'')||''</span> ''',
'                        end ||',
'            ''published ''|| apex_util.get_since(start_time) || ',
'               case when status_id = 3 then '', still accepting responses''',
'                    when status_id = 4 then '', closed ''|| apex_util.get_since(stop_time)',
'                    end item_description,',
'       nbr_results responses,',
'       nbr_questions,',
'       null item_selection,',
'       null item_icon,',
'       null item_misc,',
'       case when action not in (''TAKEN'',''CLOSED'')',
'            then ''<a class="t-Button t-Button--small t-Button--hot t-Button--simple t-Button--stretch" href="''||',
'                 apex_util.prepare_url(''f?p=''||:APP_ID||'':50:''||:APP_SESSION||'':::50:LPOLL_ID:''||id)||''">''||',
'                 case action when ''TAKE'' then ''Take''',
'                             when ''UPDATE'' then ''Update Response''',
'                             when ''ERRORS'' then ''Fix Errors''',
'                      end ||''</a>'' ',
'            end ||',
'            case when all_view_results_yn = ''Y'' and nbr_results > 0 and status_id in (3,4)',
'                 then case when action != ''TAKEN'' then ''<br/>'' end ||',
'                      ''<a class="t-Button t-Button--small t-Button--simple t-Button--stretch" href="''||',
'                      apex_util.prepare_url(''f?p=''||:APP_ID||'':66:''||:APP_SESSION||'':::RP,66:LPOLL_ID:''||id)||''">View Results</a>''',
'                 end item_actions,',
'       created, updated',
'from',
'(',
'select id,',
'       poll_name, ',
'       intro_text,',
'       start_time,',
'       poll_or_quiz,',
'       (select count(*) from eba_qpoll_questions',
'         where poll_id = p.id',
'           and publish_yn = ''Y'') nbr_questions,',
'       nvl((select count(*) from eba_qpoll_results',
'             where p.id = poll_id ',
'               and nvl(is_valid_yn,''Y'') = ''Y''),0) nbr_results,',
'       ''TAKE'' action,',
'       p.status_id,',
'       p.stop_time,',
'       all_view_results_yn,',
'       created, updated',
'  from EBA_QPOLL_POLLS p',
' where p.status_id = 3 ',
'  and not exists (select 1',
'                    from eba_qpoll_results',
'                   where poll_id = p.id',
'                     and ((p.anonymous_yn = ''Y'' and ',
'                           APEX_SESSION_ID = :APP_SESSION and',
'                           is_valid_yn = ''N'') or',
'                          apex_user = :APP_USER) )',
'  and ( invite_only_yn = ''N'' or ',
'        exists (select 1 ',
'                  from eba_qpoll_comm_invites c, eba_qpoll_invites i',
'                 where c.poll_id = p.ID and c.id = i.comm_invite_id',
'                   and upper(respondent_email) = :APP_USER))',
'union all',
'select p.id,',
'       p.poll_name,  ',
'       p.intro_text,',
'       p.start_time,',
'       p.poll_or_quiz,',
'       (select count(*) from eba_qpoll_questions',
'         where poll_id = p.id',
'           and publish_yn = ''Y'') nbr_questions,',
'       (select count(*) from eba_qpoll_results',
'         where p.id = poll_id ',
'           and nvl(is_valid_yn,''Y'') = ''Y'') nbr_results,',
'       ''UPDATE'' action,',
'       p.status_id,',
'       p.stop_time,',
'       all_view_results_yn,',
'       p.created, p.updated',
'  from eba_qpoll_polls p,',
'       eba_qpoll_results r',
' where p.id = r.poll_id',
'   and p.status_id = 3',
'   and r.apex_user = :APP_USER',
'   and p.can_update_answers_yn = ''Y''',
'   and nvl(r.is_valid_yn,''Y'') = ''Y''',
'union all',
'select p.id,',
'       p.poll_name,  ',
'       p.intro_text,',
'       p.start_time,',
'       p.poll_or_quiz,',
'       (select count(*) from eba_qpoll_questions',
'         where poll_id = p.id',
'           and publish_yn = ''Y'') nbr_questions,',
'       (select count(*) from eba_qpoll_results',
'         where p.id = poll_id ',
'           and nvl(is_valid_yn,''Y'') = ''Y'') nbr_results,',
'       ''ERRORS'' action,',
'       p.status_id,',
'       p.stop_time,',
'       all_view_results_yn,',
'       p.created, p.updated',
'  from eba_qpoll_polls p,',
'       eba_qpoll_results r',
' where p.id = r.poll_id',
'   and p.status_id = 3',
'   and ((p.anonymous_yn = ''Y'' and ',
'         r.APEX_SESSION_ID = :APP_SESSION and',
'         is_valid_yn = ''N'') or',
'        r.apex_user = :APP_USER) ',
'   and nvl(r.is_valid_yn,''Y'') = ''N''',
'union all',
'select p.id,',
'       p.poll_name,  ',
'       p.intro_text,',
'       p.start_time,',
'       p.poll_or_quiz,',
'       (select count(*) from eba_qpoll_questions',
'         where poll_id = p.id',
'           and publish_yn = ''Y'') nbr_questions,',
'       (select count(*) from eba_qpoll_results',
'         where p.id = poll_id ',
'           and nvl(is_valid_yn,''Y'') = ''Y'') nbr_results,',
'       ''TAKEN'' action,',
'       p.status_id,',
'       p.stop_time,',
'       all_view_results_yn,',
'       p.created, p.updated',
'  from eba_qpoll_polls p,',
'       eba_qpoll_results r',
' where p.id = r.poll_id',
'   and ((p.anonymous_yn = ''Y'' and ',
'         r.APEX_SESSION_ID = :APP_SESSION and',
'         is_valid_yn = ''Y'') or',
'        r.apex_user = :APP_USER) ',
'   and nvl(r.is_valid_yn,''Y'') = ''Y''',
'   and p.can_update_answers_yn = ''N'' ',
'   and p.status_id = 3',
'union all',
'select id,',
'       poll_name,  ',
'       intro_text,',
'       start_time,',
'       poll_or_quiz,',
'       nbr_questions,',
'       nbr_results,',
'       case when user_took > 0 then ''TAKEN'' else ''CLOSED'' end action,',
'       status_id,',
'       stop_time,',
'       all_view_results_yn,',
'       created, updated',
'  from ',
'    (select p.id,',
'            p.poll_name,  ',
'',
'            p.intro_text,',
'            p.start_time,',
'            p.poll_or_quiz,',
'            (select count(*) from eba_qpoll_questions',
'              where poll_id = p.id',
'                and publish_yn = ''Y'') nbr_questions,',
'            (select count(*) from eba_qpoll_results',
'              where p.id = poll_id ',
'                and nvl(is_valid_yn,''Y'') = ''Y'') nbr_results,',
'            p.status_id,',
'            p.stop_time,',
'            p.all_view_results_yn,',
'            p.created, p.updated,',
'            (select count(*)',
'               from eba_qpoll_results r',
'              where p.id = r.poll_id',
'                and ((p.anonymous_yn = ''Y'' and ',
'                      r.APEX_SESSION_ID = :APP_SESSION and',
'                      is_valid_yn = ''Y'') or',
'                     r.apex_user = :APP_USER) ',
'                and nvl(r.is_valid_yn,''Y'') = ''Y'') user_took',
'       from eba_qpoll_polls p',
'      where exists (select 1 from eba_qpoll_results where poll_id = p.id and nvl(is_valid_yn,''Y'') = ''Y'')',
'        and p.status_id = 4',
'    )',
')',
' where (:P1_SEARCH_READER is null or lower(poll_name) like ''%''||lower(:P1_SEARCH_READER)||''%'')',
'   and (:P1_STATUS_READER is null or instr('':''||:P1_STATUS_READER||'':'', '':''||action||'':'') > 0 or ',
'         ((instr('':''||:P1_STATUS_READER||'':'', '':TAKE:'') > 0 or instr('':UPDATE:'', '':''||action||'':'') > 0) and action = ''ERRORS''))',
'order by case when nvl(:P1_SORT_READER,''UD'') = ''UD'' then start_time end desc,',
'         case when :P1_SORT_READER = ''UA'' then start_time end,',
'         case when :P1_SORT_READER = ''P'' then poll_name end'))
,p_display_when_condition=>'nvl(:P1_VIEW_SELECTOR,''R'') = ''R'''
,p_display_when_cond2=>'SQL'
,p_display_condition_type=>'EXPRESSION'
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P1_SEARCH_READER,P1_STATUS_READER,P1_SORT_READER'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(317211898351773752)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'None found meeting your search criteria.'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
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
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(329634654787789752)
,p_query_column_id=>1
,p_column_alias=>'ITEM_TITLE'
,p_column_display_sequence=>1
,p_column_heading=>'Item Title'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(329634802929789753)
,p_query_column_id=>2
,p_column_alias=>'ITEM_LINK'
,p_column_display_sequence=>2
,p_column_heading=>'Item Link'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(329634912459789754)
,p_query_column_id=>3
,p_column_alias=>'ITEM_DESCRIPTION'
,p_column_display_sequence=>3
,p_column_heading=>'Item Description'
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(356233337464239856)
,p_query_column_id=>4
,p_column_alias=>'RESPONSES'
,p_column_display_sequence=>5
,p_column_heading=>'Responses'
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(329635152592789757)
,p_query_column_id=>5
,p_column_alias=>'NBR_QUESTIONS'
,p_column_display_sequence=>6
,p_column_heading=>'Nbr Questions'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(329635012217789755)
,p_query_column_id=>6
,p_column_alias=>'ITEM_SELECTION'
,p_column_display_sequence=>4
,p_column_heading=>'Item Selection'
,p_use_as_row_header=>'N'
,p_column_html_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="qp-Stats">',
'<span class="qp-Stats-item">',
'    <span class="qp-Stats-num">#RESPONSES#</span>',
'    <span class="qp-Stats-label">responses</span>',
'</span>',
'<span class="qp-Stats-item">',
'    <span class="qp-Stats-num">#NBR_QUESTIONS#</span>',
'    <span class="qp-Stats-label">questions</span>',
'',
'</span>',
'</div>'))
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(329635304408789758)
,p_query_column_id=>7
,p_column_alias=>'ITEM_ICON'
,p_column_display_sequence=>7
,p_column_heading=>'Item Icon'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(329635514622789760)
,p_query_column_id=>8
,p_column_alias=>'ITEM_MISC'
,p_column_display_sequence=>9
,p_column_heading=>'Item Misc'
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(329635363095789759)
,p_query_column_id=>9
,p_column_alias=>'ITEM_ACTIONS'
,p_column_display_sequence=>8
,p_column_heading=>'Item Actions'
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(329635785542789763)
,p_query_column_id=>10
,p_column_alias=>'CREATED'
,p_column_display_sequence=>10
,p_column_heading=>'Created'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(329635905501789764)
,p_query_column_id=>11
,p_column_alias=>'UPDATED'
,p_column_display_sequence=>11
,p_column_heading=>'Updated'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(8327700661737114732)
,p_plug_name=>'Getting Started'
,p_icon_css_classes=>'fa-mouse-pointer'
,p_region_template_options=>'#DEFAULT#:t-Alert--wizard:t-Alert--customIcons:t-Alert--info'
,p_plug_template=>wwv_flow_api.id(14690160537466251126)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_source=>'<p>&APPLICATION_TITLE. makes it easy to create polls, distribute them, and analyze the results.</p>'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NOT_EXISTS'
,p_plug_display_when_condition=>'select 1 from EBA_QPOLL_POLLS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(14509697739939918514)
,p_name=>'Notifications'
,p_template=>wwv_flow_api.id(14690161967644251135)
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:margin-top-md'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'REGION_POSITION_01'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select     id,',
'    decode(lower(NOTIFICATION_TYPE),''yellow'',''warning'',''red'',''danger'',lower(NOTIFICATION_TYPE)) as ALERT_TYPE,',
'    NOTIFICATION_NAME as ALERT_TITLE,',
'    NOTIFICATION_DESCRIPTION as ALERT_DESC,',
'    '''' alert_action',
'  from EBA_QPOLL_NOTIFICATIONS',
' where (DISPLAY_FROM is null or DISPLAY_FROM <= current_date) and',
'       (DISPLAY_UNTIL is null or DISPLAY_UNTIL >= current_date)',
' order by nvl(DISPLAY_SEQUENCE,0),NOTIFICATION_NAME'))
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'  from EBA_QPOLL_NOTIFICATIONS',
' where (DISPLAY_FROM is null or DISPLAY_FROM <= current_date) and',
'       (DISPLAY_UNTIL is null or DISPLAY_UNTIL >= current_date)'))
,p_display_condition_type=>'EXISTS'
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(14690174874370251164)
,p_query_num_rows=>100
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' '
,p_query_break_cols=>'0'
,p_query_num_rows_type=>'0'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14509698036639918519)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>1
,p_column_heading=>'ID'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14987583246893272217)
,p_query_column_id=>2
,p_column_alias=>'ALERT_TYPE'
,p_column_display_sequence=>2
,p_column_heading=>'Alert Type'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14987584052468272224)
,p_query_column_id=>3
,p_column_alias=>'ALERT_TITLE'
,p_column_display_sequence=>4
,p_column_heading=>'Alert Title'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14987584465665272225)
,p_query_column_id=>4
,p_column_alias=>'ALERT_DESC'
,p_column_display_sequence=>5
,p_column_heading=>'Alert Desc'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14987583625054272224)
,p_query_column_id=>5
,p_column_alias=>'ALERT_ACTION'
,p_column_display_sequence=>3
,p_column_heading=>'Alert Action'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(17689950050569337270)
,p_plug_name=>'&APPLICATION_TITLE.'
,p_icon_css_classes=>'app-live-poll'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(14690166820479251144)
,p_plug_display_sequence=>100
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_source=>'<p>Create, distribute, take, and review polls</p>'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>'select 1 from EBA_QPOLL_POLLS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(329634242058789748)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(329633620810789742)
,p_button_name=>'reset_reader'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--small:t-Button--link:t-Button--iconLeft:t-Button--stretch'
,p_button_template_id=>wwv_flow_api.id(14690191013111251220)
,p_button_image_alt=>'Reset Filters'
,p_button_position=>'BODY'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:RP,1:P1_VIEW_SELECTOR:&P1_VIEW_SELECTOR.'
,p_icon_css_classes=>'fa-box-arrow-in-west'
,p_grid_new_row=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(307848836134051845)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_api.id(307847185416051828)
,p_button_name=>'reset'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--small:t-Button--link:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(14690191013111251220)
,p_button_image_alt=>'Reset Filters'
,p_button_position=>'BODY'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:RP,1::'
,p_icon_css_classes=>'fa-undo-alt'
,p_grid_column_css_classes=>'u-textCenter'
,p_grid_new_row=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(307758849759519763)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_api.id(307847185416051828)
,p_button_name=>'Advanced_Search'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--small:t-Button--link:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(14690191013111251220)
,p_button_image_alt=>'Advanced Search'
,p_button_position=>'BODY'
,p_button_redirect_url=>'f?p=&APP_ID.:200:&SESSION.::&DEBUG.:RP::'
,p_icon_css_classes=>'fa-chevron-right'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
,p_security_scheme=>wwv_flow_api.id(250464227793234829)
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(8327700902794114734)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(8327700661737114732)
,p_button_name=>'LEARN_MORE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--link'
,p_button_template_id=>wwv_flow_api.id(14690191414518251222)
,p_button_image_alt=>'Learn More'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:ABOUT:&SESSION.::&DEBUG.:RP::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(8327700818598114733)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(8327700661737114732)
,p_button_name=>'CREATE_Poll'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--large'
,p_button_template_id=>wwv_flow_api.id(14690191414518251222)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create a Poll'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:19:&SESSION.::&DEBUG.:RP,19:LAST_VIEW:1'
,p_security_scheme=>wwv_flow_api.id(250464227793234829)
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(4635725473720686815)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(17689950050569337270)
,p_button_name=>'Create'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(14690191013111251220)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create a Poll'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:19:&SESSION.::&DEBUG.:RP,19:LAST_VIEW:1'
,p_icon_css_classes=>'fa-plus'
,p_security_scheme=>wwv_flow_api.id(250464227793234829)
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(8143321169314702731)
,p_branch_name=>'Go to Getting Started Page'
,p_branch_action=>'f?p=&APP_ID.:1000:&SESSION.::&DEBUG.:RP::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_HEADER'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_branch_condition_type=>'EXPRESSION'
,p_branch_condition=>'eba_qpoll_fw.get_preference_value(''FIRST_RUN'') = ''YES'''
,p_branch_condition_text=>'PLSQL'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(307847296962051829)
,p_name=>'P1_STATUS_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(307847185416051828)
,p_prompt=>'Status'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'POLL STATUSES (SHORT)'
,p_lov=>'.'||wwv_flow_api.id(315068070902733020)||'.'
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_api.id(14690190146706251208)
,p_item_template_options=>'#DEFAULT#:margin-left-sm:margin-right-sm'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'1'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(307847412413051830)
,p_name=>'P1_CREATED_BY'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(307847185416051828)
,p_prompt=>'Created By'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select unique created_by d, created_by r',
'from   eba_qpoll_polls',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'Created By'
,p_cHeight=>1
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_api.id(14690190146706251208)
,p_item_icon_css_classes=>'fa-user'
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large:margin-left-sm:margin-right-sm'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(329632015239789726)
,p_name=>'P1_SEARCH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(307847185416051828)
,p_prompt=>'Search'
,p_placeholder=>'Search polls...'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_api.id(14690190146706251208)
,p_item_icon_css_classes=>'fa-search'
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large:margin-left-sm:margin-right-sm'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(329633573310789741)
,p_name=>'P1_SORT'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(307847185416051828)
,p_item_default=>'UD'
,p_prompt=>'Sort By'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC2:Last Updated First;UD,Last Updated Last;UA,Last Created First;CD,Last Created Last;CA,by Poll Name;P'
,p_cHeight=>1
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_api.id(14690190146706251208)
,p_item_icon_css_classes=>'fa-sort'
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large:margin-left-sm:margin-right-sm'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(329633811787789743)
,p_name=>'P1_SEARCH_READER'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(329633620810789742)
,p_prompt=>'Search'
,p_placeholder=>'Search polls...'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_api.id(14690190146706251208)
,p_item_icon_css_classes=>'fa-search'
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(329633954707789745)
,p_name=>'P1_SORT_READER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(329633620810789742)
,p_item_default=>'UD'
,p_prompt=>'Sort By'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC2:Newest First;UD,Newest Last;UA,by Poll Name;P'
,p_cHeight=>1
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_api.id(14690190146706251208)
,p_item_icon_css_classes=>'fa-sort'
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(329634393822789749)
,p_name=>'P1_VIEW_SELECTOR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(1255018607848779757)
,p_prompt=>'View Mode'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'P1_CONTRIB_READER_VIEW'
,p_lov=>'.'||wwv_flow_api.id(655885347244592141)||'.'
,p_cHeight=>1
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_api.id(14690190146706251208)
,p_item_icon_css_classes=>'fa-glasses'
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large:margin-left-sm:margin-right-sm'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'SUBMIT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(329634522340789751)
,p_name=>'P1_STATUS_READER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(329633620810789742)
,p_prompt=>'Status'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov=>'STATIC2:To Take;TAKE,Update Your Response;UPDATE,Already Taken;TAKEN'
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_api.id(14690190146706251208)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'1'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(17708517072332199512)
,p_computation_sequence=>10
,p_computation_item=>'LAST_VIEW'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'1'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(108124658097357245)
,p_computation_sequence=>20
,p_computation_item=>'P1_VIEW_SELECTOR'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'C'
,p_security_scheme=>wwv_flow_api.id(250464227793234829)
,p_compute_when=>'P1_VIEW_SELECTOR'
,p_compute_when_type=>'ITEM_IS_NULL'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(307848405281051840)
,p_name=>'Refresh Reports on Filter Change'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1_STATUS_ID,P1_SORT,P1_CREATED_BY,P1_SEARCH_READER,P1_STATUS_READER,P1_SORT_READER'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(307848437506051841)
,p_event_id=>wwv_flow_api.id(307848405281051840)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'JQUERY_SELECTOR'
,p_affected_elements=>'.report_polls'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(522472943081574123)
,p_name=>'set view selector for Readers'
,p_event_sequence=>50
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_security_scheme=>'!'||wwv_flow_api.id(250464227793234829)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(108124518793357244)
,p_event_id=>wwv_flow_api.id(522472943081574123)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(1255018607848779757)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(522473195621574125)
,p_event_id=>wwv_flow_api.id(522472943081574123)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1_VIEW_SELECTOR'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'R'
,p_attribute_09=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(117023974756085845)
,p_name=>'Perform Search on Enter'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1_SEARCH,P1_SEARCH_READER'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'this.browserEvent.keyCode === 13'
,p_bind_type=>'bind'
,p_bind_event_type=>'keypress'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(117024338084085849)
,p_event_id=>wwv_flow_api.id(117023974756085845)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'JQUERY_SELECTOR'
,p_affected_elements=>'.report_polls'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(117024416714085850)
,p_event_id=>wwv_flow_api.id(117023974756085845)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'this.browserEvent.preventDefault();'
);
wwv_flow_api.component_end;
end;
/
