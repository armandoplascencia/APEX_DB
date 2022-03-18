prompt --application/pages/page_00139
begin
--   Manifest
--     PAGE: 00139
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>134
,p_default_id_offset=>172493832712964115
,p_default_owner=>'MISO'
);
wwv_flow_api.create_page(
 p_id=>139
,p_user_interface_id=>wwv_flow_api.id(5783577205373975152)
,p_name=>'&CAT_TITLE_PL.'
,p_step_title=>'&CAT_TITLE_PL.'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(5956243887448595899)
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.t-Region--scrollBody > .t-Region-bodyWrap > .t-Region-body { overflow: hidden; }',
'',
'.pa-Cards .t-Card .t-Card-titleWrap { padding: 16px 12px; }',
'.pa-Cards .t-Card .t-Card-title { text-align: left; }',
'.pa-Cards .t-Card .t-Card-title .fa { vertical-align: top; line-height: 24px; color: rgba(0, 0, 0, 0.50); margin-right: 4px; }',
'.pa-Cards .t-Card .t-Card-body { padding: 0px; border-top-width: 0; }',
'.pa-Cards-body { display: block; }',
'.pa-Cards-body-row { display: flex; padding: 12px; }',
'.pa-Cards-body-title { flex-grow: 1; font-size: 14px; line-height: 24px; color: rgba(0, 0, 0, 0.65); }',
'.pa-Cards-body-header { background: rgba(0, 0, 0, .05); align-items: flex-end; }',
'.pa-Cards-body-header .pa-Cards-body-title { color: rgba(0, 0, 0, 0.85); }',
'.pa-Cards-body-badgeContainer { flex-shrink: 0; min-width: 15%; text-align: center; margin-left: 4px; }',
'.pa-Cards-body-badgeLabel { display: block; font-size: 11px; line-height: 16px; color: rgba(0, 0, 0, .55); margin-bottom: 4px; }',
'.pa-Cards-body-badge { display: inline-block; background: rgba(0, 0, 0, .075); padding: 4px 8px; line-height: 16px; border-radius: 16px; font-size: 12px; min-width: 32px; text-align: center; color: rgba(0, 0, 0, .65); }',
'.pa-Cards-body-badge:hover, .pa-Cards-body-badge:focus { box-shadow: 0 0 0 2px rgba(5, 114, 206, 0.50); }',
'.pa-Cards-body-badge--hot { background-color: #0572ce; color: #FFF; }',
'.pa-Cards .t-Card-colorFill { display: none; }',
'.pa-Cards--hideInfo .t-Card-info { display: none; }'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'This pages allows you to view a projects relative activity with an option to filter by view, &CAT_TITLE_LC., and/or status.  Note that each project can be associated with only one &CAT_TITLE_LC..',
'',
''))
,p_last_upd_yyyymmddhh24miss=>'20190905151924'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(3801934673801381193)
,p_name=>'Cards Categories'
,p_template=>wwv_flow_api.id(6781115417665890803)
,p_display_sequence=>50
,p_region_sub_css_classes=>'pa-Cards pa-Cards--hideInfo'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader:t-Region--noUI:t-Region--scrollBody:margin-top-sm'
,p_component_template_options=>'#DEFAULT#:t-Cards--featured force-fa-lg:t-Cards--3cols:t-Cards--animColorFill'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    v1.id,',
'    v1.card_title,',
'    v1.card_text,',
'    v1.card_subtext,',
'    v1.category,',
'    v1.ai_display,',
'    v1.ms_display,',
'    v1.pi_display,',
'    v1.ap_me_url,',
'    v1.ap_tm_url,',
'    v1.ai_me_url,',
'    v1.ai_tm_url,',
'    v1.ms_me_url,',
'    v1.ms_tm_url,',
'    v1.pi_me_url,',
'    v1.pi_tm_url,',
'    v1.ap_me_cnt,',
'    v1.ap_tm_cnt,',
'    v1.ai_me_cnt,',
'    v1.ai_tm_cnt,',
'    v1.ms_me_cnt,',
'    v1.ms_tm_cnt,',
'    v1.pi_me_cnt,',
'    v1.pi_tm_cnt',
'from',
'(',
'  select',
'      c.id,',
'      null as card_title,',
'      null as card_text,',
'      null as card_subtext,',
'      c.category,',
'      case when apex_util.get_build_option_status(',
'                    p_application_id    => :APP_ID,',
'                    p_build_option_name => ''Project Action Items''',
'                ) = ''INCLUDE'' then',
'          '' ''',
'      else',
'          ''style="display: none"''',
'      end AI_DISPLAY,',
'      case when apex_util.get_build_option_status(',
'                    p_application_id    => :APP_ID,',
'                    p_build_option_name => ''Project Milestones''',
'                ) = ''INCLUDE'' then',
'          '' ''',
'      else',
'          ''style="display: none"''',
'      end MS_DISPLAY,',
'      case when apex_util.get_build_option_status(',
'                    p_application_id    => :APP_ID,',
'                    p_build_option_name => ''Project Issues''',
'                ) = ''INCLUDE'' then',
'          '' ''',
'      else',
'          ''style="display: none"''',
'      end PI_DISPLAY,',
'      apex_util.prepare_url(''f?p='' || :APP_ID || '':1:'' || :APP_SESSION || '':IR_36741475:NO:RP,RIR:IR_CATEGORY,IRC_USERS:'' || c.category || '','' || lower(:APP_USER)) as ap_me_url,',
'      apex_util.prepare_url(''f?p='' || :APP_ID || '':1:'' || :APP_SESSION || '':IR_36741475:NO:RP,RIR:IR_CATEGORY:'' || c.category) as ap_tm_url,',
'      apex_util.prepare_url(''f?p='' || :APP_ID || '':49:'' || :APP_SESSION || ''::NO:RP,RIR:IR_CATEGORY,IRC_OWNER,IR_ACTION_STATUS,IR_OPEN_CLOSED:'' || c.category || '','' || :NICE_USERNAME || '',Open,Open'') as ai_me_url,',
'      apex_util.prepare_url(''f?p='' || :APP_ID || '':49:'' || :APP_SESSION || ''::NO:RP,RIR:IR_CATEGORY,IR_ACTION_STATUS,IR_OPEN_CLOSED:'' || c.category || '',Open,Open'') as ai_tm_url,',
'      apex_util.prepare_url(''f?p='' || :APP_ID || '':63:'' || :APP_SESSION || '':IR_178123270:NO:RP,RIR:IR_CATEGORY,IRC_MILESTONE_OWNER,IR_MILESTONE_STATUS:'' || c.category || '','' || :NICE_USERNAME || '',Open'') as ms_me_url,',
'      apex_util.prepare_url(''f?p='' || :APP_ID || '':63:'' || :APP_SESSION || '':IR_178123270:NO:RP,RIR:IR_CATEGORY,IR_ACTION_STATUS:'' || c.category || '',Open'') as ms_tm_url,',
'      apex_util.prepare_url(''f?p='' || :APP_ID || '':22:'' || :APP_SESSION || ''::NO:RP,RIR:IR_CATEGORY,IRC_ISSUE_OWNER,IR_IS_OPEN,IR_PROJECT_OPEN_STATUS:'' || c.category || '','' || :NICE_USERNAME || '',Yes,Open'') as pi_me_url,',
'      apex_util.prepare_url(''f?p='' || :APP_ID || '':22:'' || :APP_SESSION || ''::NO:RP,RIR:IR_CATEGORY,IR_IS_OPEN,IR_PROJECT_OPEN_STATUS:'' || c.category || '',Yes,Open'') as pi_tm_url,',
'      (select count(*) from eba_proj_status s where cat_id = c.id and project_status in (select id from eba_proj_status_codes where is_closed_status = ''N'') and s.id in (select distinct project_id from eba_proj_user_ref where user_id = :CURRENT_USER_I'
||'D)) as ap_me_cnt,',
'      (select count(*) from eba_proj_status s where cat_id = c.id and project_status in (select id from eba_proj_status_codes where is_closed_status = ''N'')) as ap_tm_cnt,',
'      (select count(*) from eba_proj_status_ais ai where ai.action_status = ''Open'' and (upper(ai.action_owner_01) = :APP_USER or upper(ai.action_owner_02) = :APP_USER or upper(ai.action_owner_03) = :APP_USER or upper(ai.action_owner_04) = :APP_USER o'
||'r exists (select null from eba_proj_user_ref rf where rf.project_id = ai.project_id and rf.user_id = :CURRENT_USER_ID and rf.role_id = ai.owner_role_id)) and ai.project_id in (select distinct id from eba_proj_status s where s.cat_id = c.id and projec'
||'t_status in (select id from eba_proj_status_codes where is_closed_status = ''N''))) as ai_me_cnt,',
'      (select count(*) from eba_proj_status_ais where action_status = ''Open'' and project_id in (select distinct id from eba_proj_status s where cat_id = c.id and project_status in (select id from eba_proj_status_codes where is_closed_status = ''N''))) '
||'as ai_tm_cnt,',
'      (select count(*) from eba_proj_status_ms ms where ms.milestone_status = ''Open'' and (upper(ms.milestone_owner) = :APP_USER or exists (select null from eba_proj_user_ref rf where rf.project_id = ms.project_id and rf.user_id = :CURRENT_USER_ID and'
||' rf.role_id = ms.owner_role_id)) and ms.project_id in (select distinct id from eba_proj_status s where cat_id = c.id and project_status in (select id from eba_proj_status_codes where is_closed_status = ''N''))) as ms_me_cnt,',
'      (select count(*) from eba_proj_status_ms where milestone_status = ''Open'' and project_id in (select distinct id from eba_proj_status s where cat_id = c.id and project_status in (select id from eba_proj_status_codes where is_closed_status = ''N''))'
||') as ms_tm_cnt,',
'      (select count(*) from eba_proj_status_issues i where i.is_open = ''Y'' and (upper(i.issue_owner) = :APP_USER or exists (select null from eba_proj_user_ref rf where rf.project_id = i.project_id and rf.user_id = :CURRENT_USER_ID and rf.role_id = i.'
||'owner_role_id)) and i.project_id in (select distinct id from eba_proj_status s where cat_id = c.id and project_status in (select id from eba_proj_status_codes where is_closed_status = ''N''))) as pi_me_cnt,',
'      (select count(*) from eba_proj_status_issues where is_open = ''Y'' and project_id in (select distinct id from eba_proj_status s where cat_id = c.id and project_status in (select id from eba_proj_status_codes where is_closed_status = ''N''))) as pi_'
||'tm_cnt',
'  from',
'      eba_proj_status_cats c',
'  where',
'      (NVL(:P139_CATEGORY,0) = 0 or NVL(:P139_CATEGORY,0) = c.id)',
') v1',
'where v1.ap_tm_cnt > 0'))
,p_display_when_condition=>'P139_VIEW'
,p_display_when_cond2=>'CARDS'
,p_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(6834801944438429013)
,p_query_num_rows=>10000
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3801935481284381201)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>1
,p_column_heading=>'Id'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3845115634114116857)
,p_query_column_id=>2
,p_column_alias=>'CARD_TITLE'
,p_column_display_sequence=>3
,p_column_heading=>'Card title'
,p_use_as_row_header=>'N'
,p_column_html_expression=>'<span class="t-Icon fa fa-folder-o" aria-hidden="true"></span> #CATEGORY#'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3845115709267116858)
,p_query_column_id=>3
,p_column_alias=>'CARD_TEXT'
,p_column_display_sequence=>4
,p_column_heading=>'Card text'
,p_use_as_row_header=>'N'
,p_column_html_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="pa-Cards-body">',
'  <div class="pa-Cards-body-row pa-Cards-body-header">',
'    <span class="pa-Cards-body-title">Active Projects</span>',
'    <span class="pa-Cards-body-badgeContainer">',
'      <span class="pa-Cards-body-badgeLabel">Me</span>',
'      <a href="#AP_ME_URL#" class="pa-Cards-body-badge pa-Cards-body-badge--hot">#AP_ME_CNT#</a>',
'    </span>',
'    <span class="pa-Cards-body-badgeContainer">',
'      <span class="pa-Cards-body-badgeLabel">Total</span>',
'      <a href="#AP_TM_URL#" class="pa-Cards-body-badge">#AP_TM_CNT#</a>',
'    </span>',
'  </div>',
'  <div class="pa-Cards-body-row" #AI_DISPLAY#>',
'    <span class="pa-Cards-body-title">Action Items</span>',
'    <span class="pa-Cards-body-badgeContainer">',
'      <a href="#AI_ME_URL#" class="pa-Cards-body-badge pa-Cards-body-badge--hot">#AI_ME_CNT#</a>',
'    </span>',
'    <span class="pa-Cards-body-badgeContainer">',
'      <a href="#AI_TM_URL#" class="pa-Cards-body-badge">#AI_TM_CNT#</a>',
'    </span>',
'  </div>',
'  <div class="pa-Cards-body-row" #MS_DISPLAY#>',
'    <span class="pa-Cards-body-title">Milestones</span>',
'    <span class="pa-Cards-body-badgeContainer">',
'      <a href="#MS_ME_URL#" class="pa-Cards-body-badge pa-Cards-body-badge--hot">#MS_ME_CNT#</a>',
'    </span>',
'    <span class="pa-Cards-body-badgeContainer">',
'      <a href="#MS_TM_URL#" class="pa-Cards-body-badge">#MS_TM_CNT#</a>',
'    </span>',
'  </div>',
'  <div class="pa-Cards-body-row" #PI_DISPLAY#>',
'    <span class="pa-Cards-body-title">Issues</span>',
'    <span class="pa-Cards-body-badgeContainer">',
'      <a href="#PI_ME_URL#" class="pa-Cards-body-badge pa-Cards-body-badge--hot">#PI_ME_CNT#</a>',
'    </span>',
'    <span class="pa-Cards-body-badgeContainer">',
'      <a href="#PI_TM_URL#" class="pa-Cards-body-badge">#PI_TM_CNT#</a>',
'    </span>',
'  </div>',
'</div>'))
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3845115869229116859)
,p_query_column_id=>4
,p_column_alias=>'CARD_SUBTEXT'
,p_column_display_sequence=>5
,p_column_heading=>'Card subtext'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3801935662273381203)
,p_query_column_id=>5
,p_column_alias=>'CATEGORY'
,p_column_display_sequence=>2
,p_column_heading=>'Category'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3845118534503116886)
,p_query_column_id=>6
,p_column_alias=>'AI_DISPLAY'
,p_column_display_sequence=>22
,p_column_heading=>'Ai display'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3845118631353116887)
,p_query_column_id=>7
,p_column_alias=>'MS_DISPLAY'
,p_column_display_sequence=>23
,p_column_heading=>'Ms display'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3845118722169116888)
,p_query_column_id=>8
,p_column_alias=>'PI_DISPLAY'
,p_column_display_sequence=>24
,p_column_heading=>'Pi display'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3845117383734116874)
,p_query_column_id=>9
,p_column_alias=>'AP_ME_URL'
,p_column_display_sequence=>14
,p_column_heading=>'Ap me url'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3845117441031116875)
,p_query_column_id=>10
,p_column_alias=>'AP_TM_URL'
,p_column_display_sequence=>15
,p_column_heading=>'Ap tm url'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3845117599560116876)
,p_query_column_id=>11
,p_column_alias=>'AI_ME_URL'
,p_column_display_sequence=>16
,p_column_heading=>'Ai me url'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3845117611981116877)
,p_query_column_id=>12
,p_column_alias=>'AI_TM_URL'
,p_column_display_sequence=>17
,p_column_heading=>'Ai tm url'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3845118075115116881)
,p_query_column_id=>13
,p_column_alias=>'MS_ME_URL'
,p_column_display_sequence=>18
,p_column_heading=>'Ms me url'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3845118197449116882)
,p_query_column_id=>14
,p_column_alias=>'MS_TM_URL'
,p_column_display_sequence=>19
,p_column_heading=>'Ms tm url'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3845118344289116884)
,p_query_column_id=>15
,p_column_alias=>'PI_ME_URL'
,p_column_display_sequence=>20
,p_column_heading=>'Pi me url'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3845118464972116885)
,p_query_column_id=>16
,p_column_alias=>'PI_TM_URL'
,p_column_display_sequence=>21
,p_column_heading=>'Pi tm url'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3845115919076116860)
,p_query_column_id=>17
,p_column_alias=>'AP_ME_CNT'
,p_column_display_sequence=>6
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3845116081608116861)
,p_query_column_id=>18
,p_column_alias=>'AP_TM_CNT'
,p_column_display_sequence=>7
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3845116125471116862)
,p_query_column_id=>19
,p_column_alias=>'AI_ME_CNT'
,p_column_display_sequence=>8
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3845116282154116863)
,p_query_column_id=>20
,p_column_alias=>'AI_TM_CNT'
,p_column_display_sequence=>9
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3845116309836116864)
,p_query_column_id=>21
,p_column_alias=>'MS_ME_CNT'
,p_column_display_sequence=>10
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3845116434912116865)
,p_query_column_id=>22
,p_column_alias=>'MS_TM_CNT'
,p_column_display_sequence=>11
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3845116562237116866)
,p_query_column_id=>23
,p_column_alias=>'PI_ME_CNT'
,p_column_display_sequence=>12
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3845116635113116867)
,p_query_column_id=>24
,p_column_alias=>'PI_TM_CNT'
,p_column_display_sequence=>13
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(3845117788869116878)
,p_plug_name=>'Cards Information'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(6781104626075890777)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_05'
,p_plug_source=>'<em>Counts of action items, milestones, and issues represent the number that are open. Categories with no active projects are not displayed.</em>'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(6923340440044561076)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--showBreadcrumb:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_plug_template=>wwv_flow_api.id(6781117976757890807)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(8972392840601050532)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(6781135716305890867)
,p_plug_display_condition_type=>'NEVER'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(6924191578999200966)
,p_plug_name=>'Popular Projects'
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton'
,p_plug_template=>wwv_flow_api.id(6781113968619890797)
,p_plug_display_sequence=>40
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    id,',
'    cat_id,',
'    (select CATEGORY from eba_proj_status_cats c where c.id = x.cat_id) category,',
'    (select STATUS_SHORT_DESC  from eba_proj_status_codes c where x.project_status = c.id) status,',
'    project,',
'    --',
'    greatest(',
'    (nvl(followers,0)*5) + ',
'    nvl(status_reports,0) +',
'    (nvl(status_reports_2w,0) * 5) +',
'    nvl(attachments,0) +',
'    (nvl(attachments_2w,0) * 5) +',
'    nvl(links,0) +',
'    nvl(updates,0) + ',
'    (nvl(updates_2w,0) * 5) + ',
'    (3 * nvl(updating_users,0)) +',
'    nvl(open_action_items,0) +',
'    nvl(action_items,0) + ',
'    nvl(open_milestones,0) + ',
'    nvl(milestones,0) + ',
'    (nvl(is_open,0) * 100) + ',
'    (nvl(verifications,0) * 5) +',
'    nvl(clicks,0) +',
'    nvl(viewers,0) +',
'    (nvl(has_goal,0) * 10) +',
'    (nvl(has_owner,0) * 10) +',
'    nvl(s1,0) +',
'    nvl(s2,0) +',
'    case when upd_hours_ago < 12 then 100 ',
'         when upd_hours_ago < 48 then 80',
'         when upd_hours_ago < 72 then 50',
'         when upd_hours_ago < 240 then 25',
'         when upd_hours_ago < 720 then 10',
'         when upd_hours_ago < 1440 then -10',
'         when upd_hours_ago < 2880 then -20',
'         else -30 end ',
'    ,0)',
'    as weight',
'from (',
'select',
'    s.ID,',
'    s.cat_id cat_id,',
'    s.PROJECT  project,',
'    s.project_status,',
'    NVL(24 * (sysdate - to_date(to_char(s.updated,''YYYYMMDDHH24MI''),''YYYYMMDDHH24MI'') ),0) upd_hours_ago,',
'    (select count(*) from EBA_PROJ_STATUS_FAVORITES f where f.content_id = s.id ) followers,',
'    (select count(*) from EBA_PROJ_STATUS_RPTS r where s.id = r.project_id) status_reports,',
'    (select count(*) from EBA_PROJ_STATUS_RPTS r where s.id = r.project_id and created > systimestamp - 14) status_reports_2w,',
'    (select count(*) from EBA_PROJ_STATUS_FILES f where f.project_id = s.id) attachments,',
'    (select count(*) from EBA_PROJ_STATUS_FILES f where f.project_id = s.id and created > systimestamp - 14) attachments_2w,',
'    (select count(*) from EBA_PROJ_STATUS_LINKS l where l.project_id = s.id) links,',
'    (select count(*) from EBA_PROJ_STATUS_UPDATES u where u.project_id = s.id) updates,',
'    (select count(*) from EBA_PROJ_STATUS_UPDATES u where u.project_id = s.id and created > current_date- 14) updates_2w,',
'    (select count(distinct created_by) from eba_proj_status_updates u where u.project_id = s.id) updating_users,',
'    (select count(*) from EBA_PROJ_STATUS_AIS a where a.project_id = s.id and a.action_status = ''Open'') open_action_items,',
'    (select count(*) from EBA_PROJ_STATUS_AIS a where a.project_id = s.id ) action_items,',
'    (select count(*) from eba_proj_status_ms m where m.project_id = s.id and m.milestone_status = ''Open'') open_milestones,',
'    (select count(*) from eba_proj_status_ms m where m.project_id = s.id) milestones,',
'    eba_proj_stat_ui.is_project_open(s.id) is_open,',
'    (select count(*) from EBA_PROJ_STATUS_VERIFICATIONS v where v.project_id = s.id) verifications,',
'    (select count(*) from eba_proj_status_clicks c where c.project_id = s.id) clicks,',
'    (select count(distinct app_username) from eba_proj_status_clicks c where c.project_id = s.id) viewers,',
'    decode(s.goal,null,0,1) has_goal,',
'    case when exists (select null',
'                      from eba_proj_user_ref rf,',
'                          eba_proj_status_users u',
'                      where rf.project_id = s.id',
'                          and u.id = rf.user_id',
'                          and eba_proj_fw.is_edit_authorized( u.username, rf.project_id ) = ''Y'')',
'        then 1 else 0 end as has_owner,',
'    (select 100 from EBA_PROJ_STATUS_CODES c where display_sequence = 1 and s.project_status = c.id) s1,',
'    (select 20 from EBA_PROJ_STATUS_CODES c where display_sequence = 2 and s.project_status = c.id) s2',
'from EBA_PROJ_STATUS s',
') x'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P139_VIEW'
,p_plug_display_when_cond2=>'IR'
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(6924191645943200966)
,p_name=>'Hot'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_save_rpt_public=>'Y'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLSX:PDF:RTF'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="">'
,p_icon_view_columns_per_row=>1
,p_owner=>'MIKE'
,p_internal_uid=>1619207266410063293
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(6924192231626200979)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(6924192675372200988)
,p_db_column_name=>'CAT_ID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Cat Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(6924193010285200989)
,p_db_column_name=>'PROJECT'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Project'
,p_column_link=>'f?p=&APP_ID.:200:&SESSION.::&DEBUG.:RP,200:P200_ID:#ID#'
,p_column_linktext=>'#PROJECT#'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(6924193434450200989)
,p_db_column_name=>'WEIGHT'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Weight'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(6924206573103485655)
,p_db_column_name=>'CATEGORY'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'&CAT_TITLE.'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(6928475895697754543)
,p_db_column_name=>'STATUS'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(6924193853397201435)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'16192095'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ID:CAT_ID:PROJECT:WEIGHT:CATEGORY:STATUS'
,p_sort_column_1=>'WEIGHT'
,p_sort_direction_1=>'DESC'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(6928286537744210756)
,p_plug_name=>'Button Bar'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--noPadding:t-ButtonRegion--noUI'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(6781104860657890779)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(6924215398467608553)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(6212459901559585507)
,p_button_name=>'RESET'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(6781134954745890861)
,p_button_image_alt=>'Reset'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&SESSION.:RIR:&DEBUG.:RP,&APP_PAGE_ID.::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6928286954460219346)
,p_name=>'P139_CATEGORY'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(6928286537744210756)
,p_item_default=>'0'
,p_prompt=>'&CAT_TITLE.'
,p_source=>'0'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'CATEGORIES WITH PROJECTS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select CATEGORY display_value, ID return_value ',
'from EBA_PROJ_STATUS_CATS c',
'where is_active_yn = ''Y'' and exists (select 1 from eba_proj_status p where p.cat_id = c.id)',
'order by display_sequence nulls last, 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- all - '
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_display_when=>'P139_VIEW'
,p_display_when2=>'IR'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_field_template=>wwv_flow_api.id(6781134673650890856)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'U'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6928396272386371797)
,p_name=>'P139_STATUS'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(6928286537744210756)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare r varchar2(400) := null; ',
'begin',
'for c1 in (select ID from EBA_PROJ_STATUS_CODES where is_active_yn = ''Y''',
'order by display_sequence) loop',
'r := r||c1.id||'':'';',
'end loop;',
'return r;',
'exception when others then return ''0'';',
'end;'))
,p_item_default_type=>'FUNCTION_BODY'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Status'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare r varchar2(400) := null; ',
'begin',
'for c1 in (select ID from EBA_PROJ_STATUS_CODES where is_active_yn = ''Y''',
'order by display_sequence) loop',
'r := r||c1.id||'':'';',
'end loop;',
'return r;',
'exception when others then return ''0'';',
'end;'))
,p_source_type=>'FUNCTION_BODY'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'STATUS CODES WITH COUNTS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select display_value, return_value',
'from',
'(',
'select STATUS_short_desc || '' (''||count(*)||'')'' display_value, ',
'       sc.ID return_value ,',
'       sc.display_sequence',
'from EBA_PROJ_STATUS_CODES sc, eba_proj_status s',
'where is_active_yn = ''Y'' and ',
'      status_short_desc is not null and',
'      s.project_status = sc.id',
'group by sc.STATUS_short_desc, sc.id, sc. display_sequence',
'order by 3,1',
') x'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- all - '
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_display_when=>'P139_VIEW'
,p_display_when2=>'IR'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_field_template=>wwv_flow_api.id(6781134673650890856)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'U'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6928469476325697648)
,p_name=>'P139_VIEW'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(6928286537744210756)
,p_item_default=>'B'
,p_prompt=>'View'
,p_source=>'CARDS'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'POPULARITY VIEW OPTIONS P139'
,p_lov=>'.'||wwv_flow_api.id(6987368897445092297)||'.'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(6781134673650890856)
,p_is_persistent=>'U'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(6924292559714325868)
,p_computation_sequence=>10
,p_computation_item=>'LAST_VIEW'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'&APP_PAGE_ID.'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(13193036747170755075)
,p_computation_sequence=>20
,p_computation_item=>'PROJECT_CAME_FROM'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'&APP_PAGE_ID.'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(3212701253556322885)
,p_name=>'Change View'
,p_event_sequence=>1
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P139_VIEW'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.component_end;
end;
/
begin
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>134
,p_default_id_offset=>172493832712964115
,p_default_owner=>'MISO'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(3477340065696769074)
,p_event_id=>wwv_flow_api.id(3212701253556322885)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(6932139573716180817)
,p_name=>'refresh bubbles on cat change and status'
,p_event_sequence=>31
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P139_CATEGORY,P139_STATUS'
,p_condition_element=>'P139_VIEW'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'B'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(3845116853563116869)
,p_name=>'refresh cards on cat change and status'
,p_event_sequence=>41
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P139_CATEGORY,P139_STATUS'
,p_condition_element=>'P139_VIEW'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'CARDS'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(3845117052453116871)
,p_event_id=>wwv_flow_api.id(3845116853563116869)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P139_CATEGORY'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(3845116992178116870)
,p_event_id=>wwv_flow_api.id(3845116853563116869)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(3801934673801381193)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(3477339566362769069)
,p_name=>'refresh tree on cat change and status_1'
,p_event_sequence=>51
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P139_CATEGORY,P139_STATUS'
,p_condition_element=>'P139_VIEW'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'T'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(3477339101727769064)
,p_name=>'refresh on cat change and status_1'
,p_event_sequence=>61
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P139_CATEGORY,P139_STATUS'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(3477339135512769065)
,p_event_id=>wwv_flow_api.id(3477339101727769064)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(6924191578999200966)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(3845116712907116868)
,p_event_id=>wwv_flow_api.id(3477339101727769064)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(3801934673801381193)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(3477339486997769068)
,p_event_id=>wwv_flow_api.id(3477339101727769064)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P139_CATEGORY,P139_STATUS,P139_VIEW'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(3845117113016116872)
,p_name=>'Show/Hide Status'
,p_event_sequence=>71
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P139_VIEW'
,p_condition_element=>'P139_VIEW'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'CARDS'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(3845117261399116873)
,p_event_id=>wwv_flow_api.id(3845117113016116872)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P139_STATUS'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(3845117916195116880)
,p_event_id=>wwv_flow_api.id(3845117113016116872)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(3845117788869116878)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(3845117854654116879)
,p_event_id=>wwv_flow_api.id(3845117113016116872)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(3845117788869116878)
,p_attribute_01=>'N'
);
wwv_flow_api.component_end;
end;
/
