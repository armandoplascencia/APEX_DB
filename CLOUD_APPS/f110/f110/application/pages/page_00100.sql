prompt --application/pages/page_00100
begin
--   Manifest
--     PAGE: 00100
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
 p_id=>100
,p_user_interface_id=>wwv_flow_api.id(14434115216807266717)
,p_name=>'Poll Details'
,p_alias=>'POLL-DETAILS'
,p_step_title=>'Poll Details'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(14008957981820441125)
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.center-button {',
'    padding: 8px;',
'}',
'.center-button .uButton {',
'    display: block;',
'    margin: 0 8px;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(250464227793234829)
,p_protection_level=>'C'
,p_help_text=>'Use this page to manage the selected poll. You can edit the attributes to change who can take the poll and if login will be required.  You can Invite users to take the poll, and view the results.'
,p_last_updated_by=>'ALLAN'
,p_last_upd_yyyymmddhh24miss=>'20210518144730'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(334571834213153834)
,p_plug_name=>'Main Content'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(14690161967644251135)
,p_plug_display_sequence=>140
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(307756331013519738)
,p_plug_name=>'RDS'
,p_parent_plug_id=>wwv_flow_api.id(334571834213153834)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(14690161967644251135)
,p_plug_display_sequence=>50
,p_plug_display_point=>'BODY'
,p_plug_source_type=>'NATIVE_DISPLAY_SELECTOR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from eba_qpoll_comm_invites c',
' where poll_id = :POLL_ID',
' union',
'select 1',
'  from eba_qpoll_results',
' where poll_id = :POLL_ID',
'   and nvl(is_valid_yn,''Y'') = ''Y'''))
,p_attribute_01=>'STANDARD'
,p_attribute_02=>'Y'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(334575229412153868)
,p_plug_name=>'no sections yet'
,p_parent_plug_id=>wwv_flow_api.id(334571834213153834)
,p_region_template_options=>'#DEFAULT#:t-Alert--horizontal:t-Alert--defaultIcons:t-Alert--info:t-Alert--removeHeading js-removeLandmark'
,p_plug_template=>wwv_flow_api.id(14690160537466251126)
,p_plug_display_sequence=>70
,p_plug_display_point=>'BODY'
,p_plug_source=>'No sections defined yet.'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'FUNCTION_BODY'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P100_USE_SECTIONS_YN = ''Y'' then',
'   for c1 in (',
'      select count(*) c',
'        from EBA_QPOLL_SECTIONS',
'       where POLL_ID = :POLL_ID',
'   ) loop',
'      if c1.c = 0 then',
'         return TRUE;',
'      end if;',
'   end loop;',
'end if;',
'return FALSE;'))
,p_plug_display_when_cond2=>'PLSQL'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(356229775160239820)
,p_plug_name=>'no questions yet'
,p_parent_plug_id=>wwv_flow_api.id(334571834213153834)
,p_region_template_options=>'#DEFAULT#:t-Alert--horizontal:t-Alert--defaultIcons:t-Alert--info:t-Alert--removeHeading js-removeLandmark'
,p_plug_template=>wwv_flow_api.id(14690160537466251126)
,p_plug_display_sequence=>80
,p_plug_display_point=>'BODY'
,p_plug_source=>'No questions defined yet.'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'FUNCTION_BODY'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P100_USE_SECTIONS_YN = ''Y'' then',
'   for c1 in (',
'      select count(*) c',
'        from EBA_QPOLL_SECTIONS',
'       where POLL_ID = :POLL_ID',
'   ) loop',
'      if c1.c = 0 then',
'         return FALSE;',
'      end if;',
'   end loop;',
'end if;',
'',
'for c1 in (',
'   select count(*) c',
'     from EBA_QPOLL_QUESTIONS',
'    where POLL_ID = :POLL_ID',
') loop',
'   if c1.c = 0 then',
'      return TRUE;',
'   end if;',
'end loop;',
'',
'return FALSE;'))
,p_plug_display_when_cond2=>'PLSQL'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(13964673481132172628)
,p_plug_name=>'Hidden Items'
,p_parent_plug_id=>wwv_flow_api.id(334571834213153834)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(14690161967644251135)
,p_plug_display_sequence=>40
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(13964698197050801745)
,p_name=>'Respondents'
,p_region_name=>'respondents'
,p_parent_plug_id=>wwv_flow_api.id(334571834213153834)
,p_template=>wwv_flow_api.id(14690171167000251156)
,p_display_sequence=>100
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--inline:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select r.id, ',
'       case when p.anonymous_yn = ''Y'' then ''anonymous'' else lower(r.EMAIL) end email, ',
'       round(r.grade,1) || case when r.grade is not null then '' %'' end grade, ',
'       r.score,',
'       r.created, ',
'       r.updated,',
'       r.preactive_yn,',
'       (select listagg(c.community_name,'', '') within group (order by c.community_name)',
'          from eba_qpoll_comm_invites c,',
'               eba_qpoll_invites i',
'         where p.id = c.poll_id',
'           and c.id = i.comm_invite_id',
'           and r.respondent_id = i.respondent_id) community',
'from EBA_QPOLL_RESULTS r,',
'     eba_qpoll_polls p',
'where p.id = :POLL_ID',
'  and p.id = r.POLL_ID',
'  and nvl(r.is_valid_yn,''Y'') = ''Y''',
'order by 3 desc'))
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from EBA_QPOLL_RESULTS r,',
'     eba_qpoll_polls p',
'where p.id = :POLL_ID',
'  and p.id = r.POLL_ID',
'  and nvl(r.is_valid_yn,''Y'') = ''Y'''))
,p_display_condition_type=>'EXISTS'
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(14690179856222251179)
,p_query_num_rows=>20
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_break_cols=>'0'
,p_query_no_data_found=>'No responses have been submitted. '
,p_query_num_rows_type=>'ROW_RANGES_WITH_LINKS'
,p_query_row_count_max=>5000
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
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
 p_id=>wwv_flow_api.id(14025208387774840250)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>1
,p_column_heading=>'ID'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(13964698497763801746)
,p_query_column_id=>2
,p_column_alias=>'EMAIL'
,p_column_display_sequence=>2
,p_column_heading=>'Respondent'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:73:&SESSION.::&DEBUG.:73:P73_RESULT_ID:#ID#'
,p_column_linktext=>'#EMAIL#'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14029441991987413230)
,p_query_column_id=>3
,p_column_alias=>'GRADE'
,p_column_display_sequence=>4
,p_column_heading=>'Score'
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_display_when_cond_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_display_when_condition=>'POLL_OR_QUIZ'
,p_display_when_condition2=>'Q'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14034682982133926646)
,p_query_column_id=>4
,p_column_alias=>'SCORE'
,p_column_display_sequence=>5
,p_column_heading=>'Score'
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from EBA_QPOLL_QUESTIONS q,',
'       EBA_QPOLL_POLLS p',
'  where q.poll_ID = p.id and',
'        p.id = :POLL_ID and',
'        p.score_type in (''A'',''C'') and ',
'        p.enable_score_yn = ''Y'' and',
'        q.enable_score_yn = ''Y'''))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14025207397503805331)
,p_query_column_id=>5
,p_column_alias=>'CREATED'
,p_column_display_sequence=>7
,p_column_heading=>'Submitted'
,p_use_as_row_header=>'N'
,p_column_format=>'SINCE'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14025207492923805332)
,p_query_column_id=>6
,p_column_alias=>'UPDATED'
,p_column_display_sequence=>8
,p_column_heading=>'Updated'
,p_use_as_row_header=>'N'
,p_column_format=>'SINCE'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from eba_qpoll_polls',
' where id = :POLL_ID',
'   and can_update_answers_yn = ''Y'''))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14054684087694595801)
,p_query_column_id=>7
,p_column_alias=>'PREACTIVE_YN'
,p_column_display_sequence=>6
,p_column_heading=>'Test Data'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from eba_qpoll_results',
'  where poll_id = :POLL_ID and',
'        preactive_yn = ''Y'''))
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_api.id(14019794485937333448)
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(8315719532729628235)
,p_query_column_id=>8
,p_column_alias=>'COMMUNITY'
,p_column_display_sequence=>3
,p_column_heading=>'Communities'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from eba_qpoll_comm_invites',
' where poll_id = :POLL_ID'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(14027343897474789151)
,p_name=>'Community Invitations'
,p_parent_plug_id=>wwv_flow_api.id(334571834213153834)
,p_template=>wwv_flow_api.id(14690171167000251156)
,p_display_sequence=>110
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight:t-Report--inline'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    v1.num_responses,',
'    v1.num_requests,',
'    v1.invite_date,',
'    case when v1.num_requests = 0 then null',
'         else to_char((v1.num_responses/v1.num_requests) * 100,''999G999G999G990'')||''%''',
'         end as pct_responded,',
'    ''<a href="f?p=''||:APP_ID||'':16:''||:APP_SESSION||'':::RIR,CIR:IR_POLL_ID,IR_COMM_INVITE_ID:''||:POLL_ID||'',''||comm_invite_id||''">''',
'        ||apex_escape.html(v1.community_name)||''</a>'' community_name,',
'    invite_method',
'from',
'(',
'    select ID comm_invite_id,',
'           community_name,',
'           (select count(unique(r.respondent_id)) ',
'              from eba_qpoll_results r,',
'                   eba_qpoll_invites i',
'             where r.poll_id = :POLL_ID',
'               and r.IS_VALID_YN = ''Y''',
'               and i.comm_invite_id = c.id',
'               and r.respondent_id = i.respondent_id ) num_responses,',
'           (select count(unique respondent_email)',
'              from eba_qpoll_invites ',
'             where comm_invite_id = c.id) num_requests,',
'           created invite_date,',
'           initcap(invite_method) invite_method',
'      from eba_qpoll_comm_invites c',
'     where poll_id = :POLL_ID',
'       and community_name is not null',
') v1',
'order by v1.invite_date desc nulls last, upper(v1.community_name)'))
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from eba_qpoll_comm_invites ',
' where poll_id = :POLL_ID',
'   and community_name is not null'))
,p_display_condition_type=>'EXISTS'
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(14690179856222251179)
,p_query_num_rows=>10000
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_no_data_found=>'no invitations found'
,p_query_row_count_max=>10000
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
 p_id=>wwv_flow_api.id(14027344386565789195)
,p_query_column_id=>1
,p_column_alias=>'NUM_RESPONSES'
,p_column_display_sequence=>5
,p_column_heading=>'Responses'
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14027344484147789195)
,p_query_column_id=>2
,p_column_alias=>'NUM_REQUESTS'
,p_column_display_sequence=>4
,p_column_heading=>'Invitations'
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14031733984589477786)
,p_query_column_id=>3
,p_column_alias=>'INVITE_DATE'
,p_column_display_sequence=>1
,p_column_heading=>'Sent'
,p_use_as_row_header=>'N'
,p_column_format=>'SINCE'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14027344604977789195)
,p_query_column_id=>4
,p_column_alias=>'PCT_RESPONDED'
,p_column_display_sequence=>6
,p_column_heading=>'Response Rate'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14027344906219789195)
,p_query_column_id=>5
,p_column_alias=>'COMMUNITY_NAME'
,p_column_display_sequence=>2
,p_column_heading=>'Community'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14135220380502745433)
,p_query_column_id=>6
,p_column_alias=>'INVITE_METHOD'
,p_column_display_sequence=>3
,p_column_heading=>'Method'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_named_lov=>wwv_flow_api.id(14093623905099484369)
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(14135206987145405540)
,p_name=>'Individual Invitations'
,p_parent_plug_id=>wwv_flow_api.id(334571834213153834)
,p_template=>wwv_flow_api.id(14690171167000251156)
,p_display_sequence=>120
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--inline:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ''<a href="''||apex_util.prepare_url(''f?p=''||:APP_ID||'':16:''||:APP_SESSION||'':::RIR,CIR:IR_POLL_ID,IR_INVITE_ID:''||:POLL_ID||'',''||i.id)',
'        ||''">''||apex_escape.html(i.respondent_email)||''</a>'' invitee,',
'    nvl((select ''Yes'' ',
'         from eba_qpoll_results r',
'         where r.poll_id = :POLL_ID',
'             and r.IS_VALID_YN = ''Y''',
'             and r.respondent_id = i.respondent_id ),''No'') responded,',
'    c.created invite_date,',
'    initcap(c.invite_method) invite_method',
'from eba_qpoll_comm_invites c,',
'    eba_qpoll_invites i',
'where c.poll_id = :POLL_ID',
'    and c.id = i.comm_invite_id',
'    and c.community_name is null',
'order by c.created desc, upper(i.respondent_email)'))
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from eba_qpoll_comm_invites ',
' where poll_id = :POLL_ID',
'   and community_name is null'))
,p_display_condition_type=>'EXISTS'
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(14690179856222251179)
,p_query_num_rows=>10000
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'0'
,p_query_no_data_found=>'no invitations found'
,p_query_num_rows_type=>'0'
,p_query_row_count_max=>10000
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
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
 p_id=>wwv_flow_api.id(14135208307696444142)
,p_query_column_id=>1
,p_column_alias=>'INVITEE'
,p_column_display_sequence=>2
,p_column_heading=>'Invitee'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14135208396928444143)
,p_query_column_id=>2
,p_column_alias=>'RESPONDED'
,p_column_display_sequence=>4
,p_column_heading=>'Responded'
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_display_when_cond_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_display_when_condition=>'P100_ANONYMOUS_YN'
,p_display_when_condition2=>'N'
,p_lov_show_nulls=>'YES'
,p_derived_column=>'N'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14135207202409405556)
,p_query_column_id=>3
,p_column_alias=>'INVITE_DATE'
,p_column_display_sequence=>1
,p_column_heading=>'Sent'
,p_use_as_row_header=>'N'
,p_column_format=>'SINCE'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14135220703997749790)
,p_query_column_id=>4
,p_column_alias=>'INVITE_METHOD'
,p_column_display_sequence=>3
,p_column_heading=>'Method'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_named_lov=>wwv_flow_api.id(14093623905099484369)
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(14135208784683452173)
,p_name=>'Not Invited'
,p_parent_plug_id=>wwv_flow_api.id(334571834213153834)
,p_template=>wwv_flow_api.id(14690171167000251156)
,p_display_sequence=>130
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight:t-Report--inline'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select email,',
'       created',
'  from eba_qpoll_results',
' where poll_id = :POLL_ID',
'   and IS_VALID_YN = ''Y''',
'   and respondent_id not in (select i.respondent_id',
'                               from eba_qpoll_comm_invites c,',
'                                    eba_qpoll_invites i',
'                              where c.poll_id = :POLL_ID',
'                                and c.id = i.comm_invite_id)',
'order by created desc, upper(email)'))
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from eba_qpoll_results',
' where poll_id = :POLL_ID',
'   and IS_VALID_YN = ''Y''',
'   and respondent_id not in (select i.respondent_id',
'                               from eba_qpoll_comm_invites c,',
'                                    eba_qpoll_invites i',
'                              where c.poll_id = :POLL_ID',
'                                and c.id = i.comm_invite_id)'))
,p_display_condition_type=>'EXISTS'
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(14690179856222251179)
,p_query_num_rows=>10000
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_no_data_found=>'no invitations found'
,p_query_row_count_max=>10000
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
 p_id=>wwv_flow_api.id(14135210099045478533)
,p_query_column_id=>1
,p_column_alias=>'EMAIL'
,p_column_display_sequence=>1
,p_column_heading=>'Respondent'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14135210194421478533)
,p_query_column_id=>2
,p_column_alias=>'CREATED'
,p_column_display_sequence=>2
,p_column_heading=>'Responded'
,p_use_as_row_header=>'N'
,p_column_format=>'SINCE'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(28498978774910389745)
,p_plug_name=>'Published!'
,p_parent_plug_id=>wwv_flow_api.id(334571834213153834)
,p_region_template_options=>'#DEFAULT#:t-Alert--horizontal:t-Alert--defaultIcons:t-Alert--success'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(14690160537466251126)
,p_plug_display_sequence=>30
,p_plug_display_point=>'BODY'
,p_plug_source=>'<p>Now that your poll has been published, you can send invitations to pre-defined communities and/or individuals using the Invite button on the right.</p>'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'REQUEST_EQUALS_CONDITION'
,p_plug_display_when_condition=>'NEW'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(28534026127215425513)
,p_plug_name=>'No Invitations'
,p_parent_plug_id=>wwv_flow_api.id(334571834213153834)
,p_region_template_options=>'#DEFAULT#:t-Alert--horizontal:t-Alert--defaultIcons:t-Alert--warning'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(14690160537466251126)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_source=>'<p>Your poll is Invite Only but you have not invited anyone to take it.  Use the Invite button on the right to send invitations.</p>'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from eba_qpoll_polls',
' where id = :POLL_ID',
'   and invite_only_yn = ''Y''',
'   and status_id = 3',
'   and not exists (select 1',
'                     from eba_qpoll_comm_invites',
'                    where poll_id = :POLL_ID)',
'   and nvl(:REQUEST,''OLD'') != ''NEW'''))
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(31747331969541669155)
,p_name=>'Sections'
,p_region_name=>'sections_report'
,p_parent_plug_id=>wwv_flow_api.id(334571834213153834)
,p_template=>wwv_flow_api.id(14690171167000251156)
,p_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--inline:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select id, title, section_text, CREATED, display_sequence sequence',
'from EBA_QPOLL_SECTIONS',
'where POLL_ID = :POLL_ID',
'order by display_sequence, title'))
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from EBA_QPOLL_SECTIONS',
' where POLL_ID = :POLL_ID'))
,p_display_condition_type=>'EXISTS'
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(14690179856222251179)
,p_query_num_rows=>22
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_no_data_found=>'No sections have been defined for this poll yet.'
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
 p_id=>wwv_flow_api.id(18792522330422610989)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>1
,p_column_heading=>'id'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_lov_show_nulls=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18792522731387610990)
,p_query_column_id=>2
,p_column_alias=>'TITLE'
,p_column_display_sequence=>2
,p_column_heading=>'Title'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:38:&SESSION.::&DEBUG.:38:P38_ID:#ID#'
,p_column_linktext=>'#TITLE#'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18792523095464610990)
,p_query_column_id=>3
,p_column_alias=>'SECTION_TEXT'
,p_column_display_sequence=>3
,p_column_heading=>'Section Text'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18792523530775610991)
,p_query_column_id=>4
,p_column_alias=>'CREATED'
,p_column_display_sequence=>4
,p_column_heading=>'Created'
,p_use_as_row_header=>'N'
,p_column_format=>'SINCE'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18792523884141610991)
,p_query_column_id=>5
,p_column_alias=>'SEQUENCE'
,p_column_display_sequence=>5
,p_column_heading=>'Sequence'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(32578168402765674713)
,p_name=>'Questions'
,p_region_name=>'questions_report'
,p_parent_plug_id=>wwv_flow_api.id(334571834213153834)
,p_template=>wwv_flow_api.id(14690171167000251156)
,p_display_sequence=>90
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight:t-Report--inline'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    q.ID,',
'    s.title,',
'    q.QUESTION,',
'    q.CREATED,',
'    q.UPDATED,',
'    q.display_sequence, ',
'    q.mandatory_yn,',
'    case when q.QUESTION_TYPE in (''TEXTAREA'',''TEXT'') then null',
'         else decode(USE_CUSTOM_ANSWERS_YN,',
'           ''N'', a.answer_01||',
'                decode(a.answer_02,null,null,'', ''||a.answer_02)||',
'                decode(a.answer_03,null,null,'', ''||a.answer_03)||',
'                decode(a.answer_04,null,null,'', ''||a.answer_04)||',
'                decode(a.answer_05,null,null,'', ''||a.answer_05)||',
'                decode(a.answer_06,null,null,'', ''||a.answer_06)||',
'                decode(a.answer_07,null,null,'', ''||a.answer_07)||',
'                decode(a.answer_08,null,null,'', ''||a.answer_08)||',
'                decode(a.answer_09,null,null,'', ''||a.answer_09)||',
'                decode(a.answer_10,null,null,'', ''||a.answer_10)||',
'                decode(a.answer_11,null,null,'', ''||a.answer_11)||',
'                decode(a.answer_12,null,null,'', ''||a.answer_12),',
'           q.answer_01||',
'                decode(q.answer_02,null,null,'', ''||q.answer_02)||',
'                decode(q.answer_03,null,null,'', ''||q.answer_03)||',
'                decode(q.answer_04,null,null,'', ''||q.answer_04)||',
'                decode(q.answer_05,null,null,'', ''||q.answer_05)||',
'                decode(q.answer_06,null,null,'', ''||q.answer_06)||',
'                decode(q.answer_07,null,null,'', ''||q.answer_07)||',
'                decode(q.answer_08,null,null,'', ''||q.answer_08)||',
'                decode(q.answer_09,null,null,'', ''||q.answer_09)||',
'                decode(q.answer_10,null,null,'', ''||q.answer_10)||',
'                decode(q.answer_11,null,null,'', ''||q.answer_11)||',
'                decode(q.answer_12,null,null,'', ''||q.answer_12)) end answers,',
'    case when p.POLL_OR_QUIZ = ''Q'' and question_type = ''CHECKBOX''',
'         then eba_qpoll_quiz.delim_answers_disp(q.correct_answer)',
'         else q.correct_answer',
'         end correct_answer,',
'    decode(q.QUESTION_TYPE,',
'       ''RADIO_GROUP'',''Pick One'',',
'       ''CHECKBOX'',''Pick Many'',',
'       ''PICK_TWO'',''Pick Two'',',
'       ''ALLOCATION'',''Allocate $100'',',
'       ''STACK'',''Stack Rank'',',
'       ''TEXTAREA'',''Free form text'',',
'       ''TEXT'',''Text field'',',
'       ''Canned Answers'') question_type,',
'     USE_CUSTOM_ANSWERS_YN ',
'from eba_qpoll_polls p,',
'     EBA_QPOLL_QUESTIONS q,',
'     EBA_QPOLL_CANNED_ANSWERS a,',
'     eba_qpoll_sections s',
'where p.id = :POLL_ID and',
'     p.id = q.POLL_ID and',
'     q.question_type = a.code(+) and',
'     q.section_id = s.id (+)',
'order by s.display_sequence, s.title nulls last, q.display_sequence'))
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from EBA_QPOLL_QUESTIONS',
' where POLL_ID = :POLL_ID'))
,p_display_condition_type=>'EXISTS'
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(14690179856222251179)
,p_query_num_rows=>20
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_no_data_found=>'No questions.'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
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
 p_id=>wwv_flow_api.id(18792324430817599656)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>1
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18792324753726599657)
,p_query_column_id=>2
,p_column_alias=>'TITLE'
,p_column_display_sequence=>3
,p_column_heading=>'Section'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_display_when_condition=>'P100_USE_SECTIONS_YN'
,p_display_when_condition2=>'Y'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18792325211473599658)
,p_query_column_id=>3
,p_column_alias=>'QUESTION'
,p_column_display_sequence=>4
,p_column_heading=>'Question'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:88:&SESSION.::&DEBUG.:RP,88:P88_ID,P88_POLL_ID:#ID#,&POLL_ID.'
,p_column_linktext=>'#QUESTION#'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18792325614563599658)
,p_query_column_id=>4
,p_column_alias=>'CREATED'
,p_column_display_sequence=>6
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18792325965387599659)
,p_query_column_id=>5
,p_column_alias=>'UPDATED'
,p_column_display_sequence=>7
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18792326342268599660)
,p_query_column_id=>6
,p_column_alias=>'DISPLAY_SEQUENCE'
,p_column_display_sequence=>2
,p_column_heading=>'Sequence'
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18792326837781599661)
,p_query_column_id=>7
,p_column_alias=>'MANDATORY_YN'
,p_column_display_sequence=>10
,p_column_heading=>'Mandatory?'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from eba_qpoll_polls',
' where id = :POLL_ID',
'   and POLL_OR_QUIZ = ''P'''))
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_api.id(16164232820407773274)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18792327541234599662)
,p_query_column_id=>8
,p_column_alias=>'ANSWERS'
,p_column_display_sequence=>8
,p_column_heading=>'Answers'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18792328009507599663)
,p_query_column_id=>9
,p_column_alias=>'CORRECT_ANSWER'
,p_column_display_sequence=>9
,p_column_heading=>'Correct Answer'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from eba_qpoll_polls',
' where id = :POLL_ID',
'   and POLL_OR_QUIZ = ''Q'''))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18792328350369599664)
,p_query_column_id=>10
,p_column_alias=>'QUESTION_TYPE'
,p_column_display_sequence=>5
,p_column_heading=>'Type'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18792328760874599665)
,p_query_column_id=>11
,p_column_alias=>'USE_CUSTOM_ANSWERS_YN'
,p_column_display_sequence=>11
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(334572245028153838)
,p_plug_name=>'Right Content'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(14690161967644251135)
,p_plug_display_sequence=>150
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>2
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(334572109042153836)
,p_plug_name=>'Menu'
,p_region_name=>'actions'
,p_parent_plug_id=>wwv_flow_api.id(334572245028153838)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(14690161967644251135)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_list_id=>wwv_flow_api.id(355945181425779339)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(15190499231208917349)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(13964686501066717798)
,p_plug_name=>'Side Buttons'
,p_parent_plug_id=>wwv_flow_api.id(334572245028153838)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(14690161967644251135)
,p_plug_display_sequence=>20
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
 p_id=>wwv_flow_api.id(14034277283986875652)
,p_plug_name=>'Summary'
,p_region_name=>'summary'
,p_parent_plug_id=>wwv_flow_api.id(334572245028153838)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(14690171167000251156)
,p_plug_display_sequence=>40
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
'   and nvl(is_valid_yn,''Y'') = ''Y''',
'union',
'select 1',
'  from eba_qpoll_results',
' where poll_id = :POLL_ID',
'   and nvl(is_valid_yn,''Y'') = ''Y''',
'   and preactive_yn = ''Y''',
'   and eba_qpoll.get_access_role (',
'           p_app_id   => :APP_ID,',
'           p_username => :APP_USER) in (''CONTRIBUTOR'',''ADMINISTRATOR'')'))
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(334572347896153839)
,p_name=>'Invites'
,p_region_name=>'invites'
,p_parent_plug_id=>wwv_flow_api.id(14034277283986875652)
,p_template=>wwv_flow_api.id(14690161967644251135)
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-BadgeList--large:t-BadgeList--fixed:t-BadgeList--circular'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select c "Unique Invitations"',
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
 p_id=>wwv_flow_api.id(334572672570153842)
,p_query_column_id=>1
,p_column_alias=>'Unique Invitations'
,p_column_display_sequence=>1
,p_column_heading=>'Unique Invitations'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:16:&SESSION.::&DEBUG.:RP,16,RIR,CIR:IR_POLL_ID:&POLL_ID.'
,p_column_linktext=>'#Unique Invitations#'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(334572792529153843)
,p_name=>'Results'
,p_region_name=>'results'
,p_parent_plug_id=>wwv_flow_api.id(14034277283986875652)
,p_template=>wwv_flow_api.id(14690161967644251135)
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-BadgeList--large:t-BadgeList--fixed:t-BadgeList--circular'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select c "Responses"',
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
 p_id=>wwv_flow_api.id(334572901530153844)
,p_query_column_id=>1
,p_column_alias=>'Responses'
,p_column_display_sequence=>1
,p_column_heading=>'Responses'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:66:&SESSION.::&DEBUG.:RP,66:LPOLL_ID:&POLL_ID.'
,p_column_linktext=>'#Responses#'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(334573128356153847)
,p_name=>'Response Rate1'
,p_region_name=>'response_rate_a'
,p_parent_plug_id=>wwv_flow_api.id(14034277283986875652)
,p_template=>wwv_flow_api.id(14690161967644251135)
,p_display_sequence=>40
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-BadgeList--large:t-BadgeList--fixed:t-BadgeList--circular'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select round((i.num_responses/i.num_requests) * 100) ||''%'' "Response Rate"',
'from',
'(',
' select',
'        (select count (unique r.respondent_id)',
'           from eba_qpoll_results r,',
'                eba_qpoll_comm_invites c,',
'                eba_qpoll_invites i',
'          where r.poll_id = :POLL_ID',
'            and r.IS_VALID_YN = ''Y''',
'            and c.poll_id = :POLL_ID',
'            and c.id = i.comm_invite_id ',
'            and r.respondent_id = i.respondent_id ) num_responses,',
'        (select count (unique respondent_id)',
'          from eba_qpoll_comm_invites c,',
'               eba_qpoll_invites i',
'         where c.poll_id = :POLL_ID',
'           and c.id = i.comm_invite_id) num_requests',
'    from dual',
') i'))
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from eba_qpoll_comm_invites ',
' where poll_id = :POLL_ID',
'   and :P100_ANONYMOUS_YN = ''N'''))
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
 p_id=>wwv_flow_api.id(334573483191153850)
,p_query_column_id=>1
,p_column_alias=>'Response Rate'
,p_column_display_sequence=>1
,p_column_heading=>'Response Rate'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(334573523161153851)
,p_name=>'Response Rate2'
,p_region_name=>'response_rate_b'
,p_parent_plug_id=>wwv_flow_api.id(14034277283986875652)
,p_template=>wwv_flow_api.id(14690171167000251156)
,p_display_sequence=>60
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#:t-BadgeList--large:t-BadgeList--fixed:t-BadgeList--circular'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select least(round((i.num_responses/i.num_requests) * 100),100) ||''%'' "Response Rate"',
'from',
'(',
' select',
'        (select count (*)',
'           from eba_qpoll_results r',
'          where r.poll_id = :POLL_ID',
'            and r.IS_VALID_YN = ''Y'' ) num_responses,',
'        (select count (unique respondent_id)',
'          from eba_qpoll_comm_invites c,',
'               eba_qpoll_invites i',
'         where c.poll_id = :POLL_ID',
'           and c.id = i.comm_invite_id) num_requests',
'    from dual',
') i'))
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from eba_qpoll_comm_invites ',
' where poll_id = :POLL_ID',
'   and :P100_ANONYMOUS_YN = ''Y'''))
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
 p_id=>wwv_flow_api.id(334573853336153854)
,p_query_column_id=>1
,p_column_alias=>'Response Rate'
,p_column_display_sequence=>1
,p_column_heading=>'Response Rate'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(334573947541153855)
,p_name=>'Test Data'
,p_region_name=>'test_data'
,p_parent_plug_id=>wwv_flow_api.id(14034277283986875652)
,p_template=>wwv_flow_api.id(14690161967644251135)
,p_display_sequence=>80
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-BadgeList--large:t-BadgeList--fixed:t-BadgeList--circular'
,p_display_point=>'BODY'
,p_item_display_point=>'BELOW'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'    count(*) "Test Responses"',
'from',
'    EBA_QPOLL_RESULTS r',
'where',
'    poll_id = :POLL_ID',
'and nvl(r.is_valid_yn,''Y'') = ''Y''',
'and preactive_yn = ''Y'''))
,p_required_role=>wwv_flow_api.id(14054680584521521322)
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
 p_id=>wwv_flow_api.id(334575196840153867)
,p_query_column_id=>1
,p_column_alias=>'Test Responses'
,p_column_display_sequence=>1
,p_column_heading=>'Test Responses'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(334574403335153859)
,p_name=>'Quiz Average'
,p_region_name=>'quiz_average'
,p_parent_plug_id=>wwv_flow_api.id(14034277283986875652)
,p_template=>wwv_flow_api.id(14690171167000251156)
,p_display_sequence=>110
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
 p_id=>wwv_flow_api.id(334574619228153862)
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
 p_id=>wwv_flow_api.id(334574792196153863)
,p_name=>'Average Score'
,p_region_name=>'average_score'
,p_parent_plug_id=>wwv_flow_api.id(14034277283986875652)
,p_template=>wwv_flow_api.id(14690171167000251156)
,p_display_sequence=>130
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
 p_id=>wwv_flow_api.id(334575047350153866)
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
 p_id=>wwv_flow_api.id(29108224716941815469)
,p_plug_name=>'Outstanding Invitations'
,p_region_name=>'oustanding_invitations'
,p_parent_plug_id=>wwv_flow_api.id(334572245028153838)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(14690171167000251156)
,p_plug_display_sequence=>30
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :OUTSTANDING_INVITES = 1 then',
'   sys.htp.p(''<p class="u-tC" style="font-size: 11px"><a href="''||apex_util.prepare_url(''f?p=''||:APP_ID||'':16:''||:APP_SESSION||''::NO:RIR,CIR:IR_HAS_RESPONDED,IR_POLL_ID:No,''||:POLL_ID)||''">''||:OUTSTANDING_INVITES||'' Oustanding Invitation</a></p>'');',
'else',
'   sys.htp.p(''<p class="u-tC" style="font-size: 11px"><a href="''||apex_util.prepare_url(''f?p=''||:APP_ID||'':16:''||:APP_SESSION||''::NO:RIR,CIR:IR_HAS_RESPONDED,IR_POLL_ID:No,''||:POLL_ID)||''">''||:OUTSTANDING_INVITES||'' Oustanding Invitations</a></p>'');',
'end if;'))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
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
 p_id=>wwv_flow_api.id(13963963202829763280)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(14690173773848251160)
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(17689949455017337264)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(14690191633551251224)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_footer=>'&P100_POLL_STATUS.'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(356229686521239819)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(334575229412153868)
,p_button_name=>'ADD_SECTION2'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(14690191013111251220)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Section'
,p_button_position=>'BELOW_BOX'
,p_button_redirect_url=>'f?p=&APP_ID.:38:&SESSION.::&DEBUG.:RP,38:P38_POLL_ID:&POLL_ID.'
,p_icon_css_classes=>'fa-plus'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(356229847836239821)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(356229775160239820)
,p_button_name=>'ADD_QUESTION2'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(14690191013111251220)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Question'
,p_button_position=>'BELOW_BOX'
,p_button_redirect_url=>'f?p=&APP_ID.:88:&SESSION.::&DEBUG.:RP,88:P88_POLL_ID:&POLL_ID.'
,p_icon_css_classes=>'fa-plus'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(14054681798311530090)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(334573947541153855)
,p_button_name=>'DELETE_TEST_DATA'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--link:t-Button--iconLeft:t-Button--stretch'
,p_button_template_id=>wwv_flow_api.id(14690191013111251220)
,p_button_image_alt=>'Delete Test Data'
,p_button_position=>'BELOW_BOX'
,p_button_redirect_url=>'f?p=&APP_ID.:82:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-trash-o'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(334572158523153837)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(13964686501066717798)
,p_button_name=>'ACTIONS'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--primary:t-Button--iconRight:t-Button--stretch:t-Button--padBottom'
,p_button_template_id=>wwv_flow_api.id(14690191013111251220)
,p_button_image_alt=>'Actions'
,p_button_position=>'BODY'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'js-menuButton'
,p_icon_css_classes=>'fa-angle-down'
,p_button_cattributes=>'data-menu="actions_menu"'
,p_grid_new_row=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(108125064222357249)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(13964686501066717798)
,p_button_name=>'Preview'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft:t-Button--stretch:t-Button--padBottom'
,p_button_template_id=>wwv_flow_api.id(14690191013111251220)
,p_button_image_alt=>'Preview'
,p_button_position=>'BODY'
,p_button_redirect_url=>'f?p=&APP_ID.:67:&SESSION.::&DEBUG.:67::'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from EBA_QPOLL_POLLS',
' where id = :POLL_ID',
'   and status_id in (1,2)',
'   and exists (select 1 from EBA_QPOLL_QUESTIONS',
'                where POLL_ID = :POLL_ID)'))
,p_button_condition_type=>'EXISTS'
,p_icon_css_classes=>'fa-eye'
,p_grid_new_row=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(108125213021357250)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(13964686501066717798)
,p_button_name=>'Publish'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft:t-Button--stretch:t-Button--padBottom'
,p_button_template_id=>wwv_flow_api.id(14690191013111251220)
,p_button_image_alt=>'Publish'
,p_button_position=>'BODY'
,p_button_redirect_url=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.:5::'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from EBA_QPOLL_POLLS',
' where id = :POLL_ID',
'   and status_id in (1,2)',
'   and exists (select 1 from EBA_QPOLL_QUESTIONS',
'                where POLL_ID = :POLL_ID)'))
,p_button_condition_type=>'EXISTS'
,p_icon_css_classes=>'fa-box-arrow-out-east'
,p_grid_new_row=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(14031661797914665030)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(13964686501066717798)
,p_button_name=>'INVITE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft:t-Button--stretch:t-Button--padBottom'
,p_button_template_id=>wwv_flow_api.id(14690191013111251220)
,p_button_image_alt=>'Invite'
,p_button_position=>'BODY'
,p_button_redirect_url=>'f?p=&APP_ID.:72:&SESSION.::&DEBUG.:72:P72_POLL_ID:&POLL_ID.'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from EBA_QPOLL_POLLS p',
'where id = :POLL_ID',
'and status_id = 3'))
,p_button_condition_type=>'EXISTS'
,p_icon_css_classes=>'fa-send'
,p_grid_new_row=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(14131350692952724604)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(13964686501066717798)
,p_button_name=>'REMINDER'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--stretch:t-Button--padBottom'
,p_button_template_id=>wwv_flow_api.id(14690191414518251222)
,p_button_image_alt=>'Send Reminders'
,p_button_position=>'BODY'
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
'   and i.respondent_id not in',
'       (select respondent_id',
'          from eba_qpoll_results',
'         where poll_id = :POLL_ID',
'           and IS_VALID_YN = ''Y'')'))
,p_button_condition_type=>'EXISTS'
,p_grid_new_row=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(14054675305286435759)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_api.id(13964686501066717798)
,p_button_name=>'TAKE_POLL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--stretch:t-Button--padBottom'
,p_button_template_id=>wwv_flow_api.id(14690191414518251222)
,p_button_image_alt=>'Take Poll'
,p_button_position=>'BODY'
,p_button_redirect_url=>'f?p=&APP_ID.:50:&SESSION.::&DEBUG.:50::'
,p_grid_new_row=>'Y'
,p_security_scheme=>wwv_flow_api.id(14021639691478406058)
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(14054675882857446101)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_api.id(13964686501066717798)
,p_button_name=>'UPDATE_RESPONSE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--stretch:t-Button--padBottom'
,p_button_template_id=>wwv_flow_api.id(14690191414518251222)
,p_button_image_alt=>'Update Response'
,p_button_position=>'BODY'
,p_button_redirect_url=>'f?p=&APP_ID.:50:&SESSION.::&DEBUG.:50::'
,p_grid_new_row=>'Y'
,p_security_scheme=>wwv_flow_api.id(14022992806231902412)
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(14054676704170481808)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_api.id(13964686501066717798)
,p_button_name=>'RESPONSE_HAS_ERRORS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--stretch:t-Button--padBottom'
,p_button_template_id=>wwv_flow_api.id(14690191414518251222)
,p_button_image_alt=>'Response Has Errors'
,p_button_position=>'BODY'
,p_button_redirect_url=>'f?p=&APP_ID.:50:&SESSION.::&DEBUG.:50::'
,p_grid_new_row=>'Y'
,p_security_scheme=>wwv_flow_api.id(14054676383276461072)
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(14020669404652396060)
,p_button_sequence=>90
,p_button_plug_id=>wwv_flow_api.id(13964686501066717798)
,p_button_name=>'view_results'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--stretch:t-Button--padBottom'
,p_button_template_id=>wwv_flow_api.id(14690191414518251222)
,p_button_image_alt=>'View Results'
,p_button_position=>'BODY'
,p_button_redirect_url=>'f?p=&APP_ID.:66:&SESSION.::&DEBUG.:RP,66:LPOLL_ID:&POLL_ID.'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from EBA_QPOLL_RESULTS',
'where poll_id = :POLL_ID',
'  and nvl(is_valid_yn,''Y'') = ''Y'''))
,p_button_condition_type=>'EXISTS'
,p_grid_new_row=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(18792329145945599665)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(32578168402765674713)
,p_button_name=>'ADD_QUESTION'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(14690191013111251220)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Question'
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:88:&SESSION.::&DEBUG.:RP,88:P88_POLL_ID:&POLL_ID.'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from eba_qpoll_polls',
' where id = :POLL_ID',
'   and status_id = 4'))
,p_button_condition_type=>'NOT_EXISTS'
,p_icon_css_classes=>'fa-plus'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(14118339484107322164)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(13964698197050801745)
,p_button_name=>'non-respondents'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--noUI'
,p_button_template_id=>wwv_flow_api.id(14690190887630251216)
,p_button_image_alt=>'Non-Respondents'
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:16:&SESSION.::&DEBUG.:RP,CIR,RIR:IR_POLL_ID,IR_HAS_RESPONDED:&POLL_ID.,No'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from eba_qpoll_comm_invites',
' where poll_id = :POLL_ID',
'   and nvl(:OUTSTANDING_INVITES,0) > 0'))
,p_button_condition_type=>'EXISTS'
,p_icon_css_classes=>'fa-chevron-right'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(18792524334018610992)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(31747331969541669155)
,p_button_name=>'ADD_SECTION'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_api.id(14690190887630251216)
,p_button_image_alt=>'Add Section'
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:38:&SESSION.::&DEBUG.:38:P38_POLL_ID:&POLL_ID.'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from eba_qpoll_polls',
' where id = :POLL_ID',
'   and status_id = 4'))
,p_button_condition_type=>'NOT_EXISTS'
,p_icon_css_classes=>'fa-plus'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(14134470198441057694)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(14027343897474789151)
,p_button_name=>'VIEW_INVITATIONS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--noUI'
,p_button_template_id=>wwv_flow_api.id(14690190887630251216)
,p_button_image_alt=>'View Community Invitations'
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:16:&SESSION.:COMM:&DEBUG.:RIR:IR_POLL_ID:&POLL_ID.'
,p_icon_css_classes=>'fa-chevron-right'
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
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(14135207695882405561)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(14135206987145405540)
,p_button_name=>'VIEW_INVITATIONS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_api.id(14690190887630251216)
,p_button_image_alt=>'View Individual Invitations'
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:16:&SESSION.:IND:&DEBUG.:RIR,CIR:IR_POLL_ID:&POLL_ID.'
,p_icon_css_classes=>'fa-chevron-right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(108125286086357251)
,p_name=>'P100_POLL_STATUS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(13963963202829763280)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13127461550232972938)
,p_name=>'P100_USE_SECTIONS_YN'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(32578168402765674713)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(28600155048254743762)
,p_name=>'P100_ANONYMOUS_YN'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(13964673481132172628)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(14034289794666124735)
,p_computation_sequence=>10
,p_computation_item=>'LAST_VIEW'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'&APP_PAGE_ID.'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(8327701300643114738)
,p_name=>'Refresh after Deleting Test Data'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(14054681798311530090)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(8327701421008114739)
,p_event_id=>wwv_flow_api.id(8327701300643114738)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'JQUERY_SELECTOR'
,p_affected_elements=>'#respondents, #test_data, #quiz_average, #average_score'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(4635723121821686791)
,p_name=>'Refresh after questions'
,p_event_sequence=>30
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(32578168402765674713)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(4635723220339686792)
,p_event_id=>wwv_flow_api.id(4635723121821686791)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(32578168402765674713)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(669398511879738422)
,p_name=>'Refresh after actions - add question'
,p_event_sequence=>40
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'#actions_menu'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'this.data.dialogPageId === 88'
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(669398530826738423)
,p_event_id=>wwv_flow_api.id(669398511879738422)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(32578168402765674713)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(669399176522738429)
,p_name=>'Refresh after actions - add section'
,p_event_sequence=>50
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'#actions_menu'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'this.data.dialogPageId === 38'
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
,p_da_event_comment=>'need to add p38 & 48'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(669399361857738431)
,p_event_id=>wwv_flow_api.id(669399176522738429)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(31747331969541669155)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(669399777815738435)
,p_name=>'Refresh after actions - edit poll'
,p_event_sequence=>60
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'#actions_menu'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'this.data.dialogPageId === 48'
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
,p_da_event_comment=>'need to add p38 & 48'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(349283478346878132)
,p_event_id=>wwv_flow_api.id(669399777815738435)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(334570916594153825)
,p_name=>'Refresh after respondents'
,p_event_sequence=>70
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(13964698197050801745)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(334571067508153826)
,p_event_id=>wwv_flow_api.id(334570916594153825)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(13964698197050801745)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(4635722884351686789)
,p_name=>'Refresh after sections'
,p_event_sequence=>80
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(31747331969541669155)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(4635722997743686790)
,p_event_id=>wwv_flow_api.id(4635722884351686789)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(31747331969541669155)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(4635723322179686793)
,p_event_id=>wwv_flow_api.id(4635722884351686789)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(32578168402765674713)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(205229071715175568)
,p_name=>'when question added from no questions yet'
,p_event_sequence=>90
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(356229775160239820)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterrefresh'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(503365267377005819)
,p_event_id=>wwv_flow_api.id(205229071715175568)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(32578168402765674713)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(503365396705005820)
,p_event_id=>wwv_flow_api.id(205229071715175568)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(356229775160239820)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(108125327875357252)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Load Details'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'for c1 in (',
'select status_id, use_sections_yn, anonymous_yn',
'  from EBA_QPOLL_POLLS',
' where id = :POLL_ID',
') loop',
'   :P100_POLL_STATUS     := case c1.status_id when 1 then ''Being Authored''',
'                                              when 2 then ''Testing''',
'                                              when 3 then ''Published''',
'                                              when 4 then ''Completed'' end;',
'   :P100_USE_SECTIONS_YN := c1.use_sections_yn;',
'   :P100_ANONYMOUS_YN    := c1.anonymous_yn;',
'end loop;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.component_end;
end;
/
