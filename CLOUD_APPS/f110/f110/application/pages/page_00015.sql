prompt --application/pages/page_00015
begin
--   Manifest
--     PAGE: 00015
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
 p_id=>15
,p_user_interface_id=>wwv_flow_api.id(14434115216807266717)
,p_name=>'Remove Extraneous Characters'
,p_alias=>'REMOVE-EXTRANEOUS-CHARACTERS'
,p_step_title=>'Remove Extraneous Characters'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(16485731932639691338)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(250463977822234829)
,p_required_patch=>wwv_flow_api.id(14132071685799448031)
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'ALLAN'
,p_last_upd_yyyymmddhh24miss=>'20210518153936'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(14132053506499849479)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(14690173773848251160)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(17689949455017337264)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(14690191633551251224)
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(14132053899785858199)
,p_plug_name=>'Remove Extraneous Characters'
,p_region_css_classes=>'infoTextRegion'
,p_region_template_options=>'#DEFAULT#:t-Alert--warning:t-Alert--horizontal'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(14690160537466251126)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY_3'
,p_plug_source=>'<p>Removes leading, non-displayed characters from Respondent email addresses that may have been injected during creation using copy and paste.</p>'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(14132054107058860310)
,p_plug_name=>'Character to scrub'
,p_parent_plug_id=>wwv_flow_api.id(14132053899785858199)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_display_sequence=>30
,p_plug_display_point=>'BODY'
,p_plug_display_condition_type=>'REQUEST_NOT_EQUAL_CONDITION'
,p_plug_display_when_condition=>'SCRUB'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(14132054603304963376)
,p_name=>'Matching Data'
,p_parent_plug_id=>wwv_flow_api.id(14132053899785858199)
,p_display_sequence=>40
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ''Total Number of Bad Respondents'' l, count(*) cnt',
'  from eba_qpoll_respondents',
' where ascii(substr(email,1,1)) = :P15_CHAR_TO_SCRUB',
'union all',
'select ''Number with Matching Good Records'' l, count(*) cnt',
'  from eba_qpoll_respondents',
' where ascii(substr(email,1,1)) = :P15_CHAR_TO_SCRUB',
'   and substr(email,2) in (select email',
'                             from eba_qpoll_respondents)',
'union all',
'select ''Number Bad Community Records'' l, count(*) cnt',
'  from eba_qpoll_resp_comm_ref c,',
'       eba_qpoll_respondents r',
' where c.respondent_id = r.id',
'   and ascii(substr(r.email,1,1)) = :P15_CHAR_TO_SCRUB',
'union all',
'select ''Number Bad Community Records with Good Matches'' l, count(*) cnt',
'  from eba_qpoll_resp_comm_ref c,',
'       eba_qpoll_respondents r',
' where c.respondent_id = r.id',
'   and ascii(substr(r.email,1,1)) = :P15_CHAR_TO_SCRUB',
'   and substr(r.email,2) in (select email',
'                               from eba_qpoll_respondents)',
'union all',
'select ''Number Bad Respondents not in Communities'' l, count(*) cnt',
'  from eba_qpoll_respondents',
' where ascii(substr(email,1,1)) = :P15_CHAR_TO_SCRUB',
'   and id not in (select respondent_id',
'                    from eba_qpoll_resp_comm_ref)',
'union all',
'select ''Number Invitations with Bad Respondents'' l, count(*) cnt',
'  from eba_qpoll_invites i,',
'       eba_qpoll_respondents r',
' where i.respondent_id = r.id',
'   and ascii(substr(r.email,1,1)) = :P15_CHAR_TO_SCRUB',
'union all',
'select ''Number Opt Out with Bad Respondents'' l, count(*) cnt',
'  from eba_qpoll_email_opt_out i,',
'       eba_qpoll_respondents r',
' where i.respondent_id = r.id',
'   and ascii(substr(r.email,1,1)) = :P15_CHAR_TO_SCRUB',
''))
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P15_CHAR_TO_SCRUB is not null and',
'nvl(:REQUEST,''null'') != ''SCRUB'''))
,p_display_when_cond2=>'PLSQL'
,p_display_condition_type=>'EXPRESSION'
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(14690180910121251181)
,p_query_headings_type=>'NO_HEADINGS'
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'0'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'0'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14132054908369963391)
,p_query_column_id=>1
,p_column_alias=>'L'
,p_column_display_sequence=>1
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14132055006988963393)
,p_query_column_id=>2
,p_column_alias=>'CNT'
,p_column_display_sequence=>2
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(14132066790950167933)
,p_plug_name=>'Updates done'
,p_parent_plug_id=>wwv_flow_api.id(14132053899785858199)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_display_sequence=>25
,p_plug_display_point=>'BODY'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'REQUEST_EQUALS_CONDITION'
,p_plug_display_when_condition=>'SCRUB'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(14132064789032053878)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(14132054107058860310)
,p_button_name=>'P15_GO'
,p_button_static_id=>'P15_GO'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(14690191414518251222)
,p_button_image_alt=>'Go'
,p_button_position=>'BODY'
,p_button_alignment=>'LEFT'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(14132069785250279874)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(14132066790950167933)
,p_button_name=>'OK'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(14690191414518251222)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'OK'
,p_button_position=>'BOTTOM'
,p_button_redirect_url=>'f?p=&APP_ID.:15:&SESSION.::&DEBUG.:15::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(14132073396229500689)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(14132053506499849479)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(14690191414518251222)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.:15::'
,p_button_condition=>'SCRUB'
,p_button_condition_type=>'REQUEST_NOT_EQUAL_CONDITION'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(14132065184577080936)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(14132053506499849479)
,p_button_name=>'SCRUB_DATA'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(14690191414518251222)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Scrub Data'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from eba_qpoll_respondents',
' where ascii(substr(email,1,1)) = :P15_CHAR_TO_SCRUB',
'   and :P15_CHAR_TO_SCRUB is not null',
'   and nvl(:REQUEST,''null'') != ''SCRUB'''))
,p_button_condition_type=>'EXISTS'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(14132066681505161331)
,p_branch_name=>'submit'
,p_branch_action=>'f?p=&APP_ID.:15:&SESSION.:SCRUB:&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(14132065184577080936)
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14132054405868891746)
,p_name=>'P15_CHAR_TO_SCRUB'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(14132054107058860310)
,p_item_default=>'49824'
,p_prompt=>'ASCII Character to Scrub'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>8
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(14690190497303251212)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14132065991032111323)
,p_name=>'P15_COMM_REF_CNT'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(14132066790950167933)
,p_prompt=>'Community References Updated'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(14690190497303251212)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14132066187797112828)
,p_name=>'P15_MATCHING_RESP_CNT'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(14132066790950167933)
,p_prompt=>'Matching Respondents Removed'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(14690190497303251212)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14132066384346114439)
,p_name=>'P15_NON_MATCH_RESP_CNT'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(14132066790950167933)
,p_prompt=>'Non-matching Respondents Updated'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(14690190497303251212)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14132110009609658956)
,p_name=>'P15_INVITE_CNT'
,p_item_sequence=>35
,p_item_plug_id=>wwv_flow_api.id(14132066790950167933)
,p_prompt=>'Invitations Updates'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(14690190497303251212)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(14132064991372073406)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Scrub data'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'   l_comm_ref_cnt        number := 0;',
'   l_invite_cnt          number := 0;',
'   l_matching_resp_cnt   number := 0;',
'   l_non_match_resp_cnt  number := 0;',
'   l_fixed_yn            varchar2(1) := ''N'';',
'begin',
'',
'-- all bad respondents',
'for c1 in (',
'   select id bad_id, email bad_email',
'     from eba_qpoll_respondents',
'   where ascii(substr(email,1,1)) = :P15_CHAR_TO_SCRUB',
') loop',
'   -- find matching good respondent',
'   for c2 in (',
'      select r2.id good_id, r2.email good_email',
'        from eba_qpoll_respondents r2',
'      where r2.email = substr(c1.bad_email,2)',
'   ) loop',
'      -- check if bad respondent in communities',
'      for c3 in (',
'         select id, community_id',
'           from eba_qpoll_resp_comm_ref',
'         where c1.bad_id = respondent_id',
'      ) loop',
'         -- put good matching person in community',
'         insert into eba_qpoll_resp_comm_ref',
'            (community_id, respondent_id)',
'         values',
'            (c3.community_id, c2.good_id);',
'',
'         l_comm_ref_cnt := l_comm_ref_cnt + 1;',
'',
'         -- take bad respondent out of community',
'         delete from eba_qpoll_resp_comm_ref',
'          where id = c3.id;',
'',
'      end loop;',
'',
'      -- check if bad respondent in invites',
'      for c3 in (',
'         select id',
'           from eba_qpoll_invites',
'         where c1.bad_id = respondent_id',
'      ) loop',
'         -- update invite',
'         update eba_qpoll_invites',
'            set respondent_id = c2.good_id,',
'                respondent_email = c2.good_email',
'          where id = c3.id;',
'',
'         l_invite_cnt := l_invite_cnt + 1;',
'      end loop;',
'',
'      -- check if bad respondent in email history',
'      for c3 in (',
'         select id',
'           from eba_qpoll_emails',
'         where c1.bad_id = respondent_id',
'      ) loop',
'         -- update invite',
'         update eba_qpoll_emails',
'            set respondent_id = c2.good_id',
'          where id = c3.id;',
'',
'         l_invite_cnt := l_invite_cnt + 1;',
'      end loop;',
'',
'      -- check if bad respondent opted out',
'      for c3 in (',
'         select id',
'           from eba_qpoll_email_opt_out',
'         where c1.bad_id = respondent_id',
'      ) loop',
'         -- check if good respondent opted out',
'         l_fixed_yn := ''N'';',
'         for c4 in (',
'            select id',
'              from eba_qpoll_email_opt_out',
'             where respondent_id = c2.good_id',
'         ) loop',
'            -- remove bad opt out',
'            delete from eba_qpoll_email_opt_out',
'             where id = c3.id;',
'',
'            l_fixed_yn := ''Y'';',
'         end loop;',
'',
'         if l_fixed_yn = ''N'' then',
'            -- update remaining opt outs',
'            update eba_qpoll_email_opt_out',
'               set respondent_id = c2.good_id',
'             where id = c3.id;',
'         end if;',
'      end loop;',
'',
'      --  remove bad matching respondent',
'      delete from eba_qpoll_respondents',
'       where id = c1.bad_id;',
'',
'      l_matching_resp_cnt := l_matching_resp_cnt + 1;',
'',
'   end loop;',
'end loop;',
'',
'-- update remaining bad respondents',
'for c1 in (',
'   select id ',
'     from eba_qpoll_respondents',
'    where ascii(substr(email,1,1)) = :P15_CHAR_TO_SCRUB',
') loop',
'   update eba_qpoll_respondents',
'      set email = substr(email,2)',
'    where id = c1.id;',
'',
'   l_non_match_resp_cnt := l_non_match_resp_cnt + 1;',
'end loop;',
'',
':P15_COMM_REF_CNT       := l_comm_ref_cnt;',
':P15_INVITE_CNT         := l_invite_cnt;',
':P15_MATCHING_RESP_CNT  := l_matching_resp_cnt;',
':P15_NON_MATCH_RESP_CNT := l_non_match_resp_cnt;',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(14132065184577080936)
,p_process_success_message=>'Data scrubbed.'
);
wwv_flow_api.component_end;
end;
/
