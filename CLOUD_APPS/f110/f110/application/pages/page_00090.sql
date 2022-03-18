prompt --application/pages/page_00090
begin
--   Manifest
--     PAGE: 00090
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
 p_id=>90
,p_user_interface_id=>wwv_flow_api.id(14434115216807266717)
,p_name=>'Email Results'
,p_alias=>'EMAIL-RESULTS'
,p_page_mode=>'MODAL'
,p_step_title=>'Email Results'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(14008957981820441125)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(14021638908096383157)
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'ALLAN'
,p_last_upd_yyyymmddhh24miss=>'20210518154341'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(14135346191543340960)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(14690173773848251160)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(17689949455017337264)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(14690191633551251224)
,p_plug_display_condition_type=>'NEVER'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(14135356506300975457)
,p_plug_name=>'Email Results for &POLL_NAME.'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(14690161967644251135)
,p_plug_display_sequence=>5
,p_plug_display_point=>'BODY_3'
,p_plug_item_display_point=>'BELOW'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(14135346490699340969)
,p_plug_name=>'items 1'
,p_parent_plug_id=>wwv_flow_api.id(14135356506300975457)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(14690161967644251135)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_item_display_point=>'BELOW'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(14135357185091988279)
,p_plug_name=>'header'
,p_parent_plug_id=>wwv_flow_api.id(14135356506300975457)
,p_region_css_classes=>'infoTextRegion'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(14690161967644251135)
,p_plug_display_sequence=>7
,p_plug_display_point=>'BODY'
,p_plug_source=>'<p>You can select a community, provide email addresses or both.  A formatted summary of the poll results will be sent to all the email addresses, as long as they have not opted out of receiving email from this application.</p>'
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
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(14135666408275441668)
,p_name=>'Community Members'
,p_parent_plug_id=>wwv_flow_api.id(14135356506300975457)
,p_template=>wwv_flow_api.id(14690167327773251146)
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--staticRowColors:t-Report--noBorders:t-Report--rowHighlightOff'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select r.email',
'from eba_qpoll_respondents r,',
'     eba_qpoll_resp_comm_ref rc',
'where rc.community_id = :P90_COMMUNITY_ID',
'  and r.id = rc.respondent_id',
'order by 1'))
,p_display_when_condition=>'select null from EBA_QPOLL_RESP_COMMUNITIES'
,p_display_condition_type=>'EXISTS'
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(14690179856222251179)
,p_query_headings_type=>'NO_HEADINGS'
,p_query_num_rows=>500
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
 p_id=>wwv_flow_api.id(14135666579208441702)
,p_query_column_id=>1
,p_column_alias=>'EMAIL'
,p_column_display_sequence=>1
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(14135668108406451123)
,p_plug_name=>'items 2'
,p_parent_plug_id=>wwv_flow_api.id(14135356506300975457)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(14690161967644251135)
,p_plug_display_sequence=>30
,p_plug_display_point=>'BODY'
,p_plug_item_display_point=>'BELOW'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(14135355999804954673)
,p_button_sequence=>5
,p_button_plug_id=>wwv_flow_api.id(14135668108406451123)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(14690191414518251222)
,p_button_image_alt=>'Cancel'
,p_button_position=>'BOTTOM'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(14135355788723951460)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(14135668108406451123)
,p_button_name=>'EMAIL_RESULTS'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(14690191414518251222)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Email Results'
,p_button_position=>'BOTTOM'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(14135362385237288154)
,p_branch_action=>'f?p=&APP_ID.:91:&SESSION.::&DEBUG.:::'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(14135355788723951460)
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14135348306460352540)
,p_name=>'P90_EMAIL_TO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(14135668108406451123)
,p_prompt=>'Addresses to email results to'
,p_placeholder=>'Enter email addresses here'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>80
,p_cMaxlength=>4000
,p_cHeight=>4
,p_field_template=>wwv_flow_api.id(14690190497303251212)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14135348784679362587)
,p_name=>'P90_EMAIL_FROM'
,p_item_sequence=>5
,p_item_plug_id=>wwv_flow_api.id(14135346490699340969)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Email From'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'case when instr(:APP_USER,''@'') > 0 then lower(:APP_USER)',
'     else replace(eba_qpoll_fw.get_preference_value(''NOTIFICATION_EMAIL_FROM''), ''N/A'', null)',
'     end'))
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(14690190497303251212)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14135517505982057633)
,p_name=>'P90_INTRO_TEXT'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(14135668108406451123)
,p_prompt=>'Introduction Text'
,p_placeholder=>'If provided, this text will be included in the email before the results'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>80
,p_cMaxlength=>4000
,p_cHeight=>4
,p_field_template=>wwv_flow_api.id(14690190497303251212)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14135661005022320895)
,p_name=>'P90_COMMUNITY_ID'
,p_item_sequence=>7
,p_item_plug_id=>wwv_flow_api.id(14135346490699340969)
,p_prompt=>'Community'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'COMMUNITIES, P90'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select d, r',
'  from',
'(',
'select name || '' (member count: ''|| (select count(*) ',
'                                       from eba_qpoll_resp_comm_ref rc',
'                                      where rc.community_id = c.id) ||'')'' d,',
'       id r',
'from EBA_QPOLL_RESP_COMMUNITIES c',
'where publish_yn = ''Y''',
')',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select -'
,p_cHeight=>1
,p_tag_attributes=>'style="width:300px;"'
,p_display_when=>'select null from EBA_QPOLL_RESP_COMMUNITIES'
,p_display_when_type=>'EXISTS'
,p_field_template=>wwv_flow_api.id(14690190497303251212)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Select the community of users that you wish to send poll results to.'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(14135662586894344547)
,p_validation_name=>'P90_COMMUNITY_ID and/or emails'
,p_validation_sequence=>10
,p_validation=>':P90_COMMUNITY_ID is not null or :P90_EMAIL_TO is not null'
,p_validation2=>'SQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>'You must select a community and/or provide email addresses to send poll results to.'
,p_when_button_pressed=>wwv_flow_api.id(14135355788723951460)
,p_associated_item=>wwv_flow_api.id(14135661005022320895)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(14135666683126443793)
,p_name=>'Show Community Members Report'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P90_COMMUNITY_ID'
,p_condition_element=>'P90_COMMUNITY_ID'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(14135667191614443807)
,p_event_id=>wwv_flow_api.id(14135666683126443793)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(14135666408275441668)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(14135667402327443807)
,p_event_id=>wwv_flow_api.id(14135666683126443793)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P90_COMMUNITY_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(14135667601618443807)
,p_event_id=>wwv_flow_api.id(14135666683126443793)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(14135666408275441668)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(14135666980488443803)
,p_event_id=>wwv_flow_api.id(14135666683126443793)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(14135666408275441668)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(4635725842017686819)
,p_name=>'Cancel'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(14135355999804954673)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(4635726014662686820)
,p_event_id=>wwv_flow_api.id(4635725842017686819)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(14135352896175291260)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Load emails'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_line      varchar2(32767);',
'    l_emails    wwv_flow_global.vc_arr2;',
'    l_email     varchar2(4000);',
'    l_at        number;',
'    l_dot       number;',
'    l_valid     boolean := true;',
'    l_domain    varchar2(4000);',
'begin',
'    ---------------------',
'    -- create collections',
'    --',
'    apex_collection.CREATE_OR_TRUNCATE_COLLECTION (''EBA_QPOLL_EMAIL_RES_INVALID'');',
'    apex_collection.CREATE_OR_TRUNCATE_COLLECTION (''EBA_QPOLL_EMAIL_RES_VALID'');',
'',
'  if :P90_EMAIL_TO is not null then',
'',
'    --------------------------------------------',
'    -- replace delimiting characters with commas',
'    --',
'    l_line := :P90_EMAIL_TO;',
'    l_line := replace(l_line,chr(10),'' '');',
'    l_line := replace(l_line,chr(13),'' '');',
'    l_line := replace(l_line,chr(9),'' '');',
'    l_line := replace(l_line,''<'','' '');',
'    l_line := replace(l_line,''>'','' '');',
'    l_line := replace(l_line,'';'','' '');',
'    l_line := replace(l_line,'':'','' '');',
'    l_line := replace(l_line,''('','' '');',
'    l_line := replace(l_line,'')'','' '');',
'    l_line := replace(l_line,'' '','','');',
'',
'    -----------------------------------------',
'    -- get one comma separated line of emails',
'    --',
'    for j in 1..1000 loop',
'        if instr(l_line,'',,'') > 0 then',
'           l_line := replace(l_line,'',,'','','');',
'        else',
'           exit;',
'        end if;',
'    end loop;',
'',
'    -------------------------',
'    -- get an array of emails',
'    --',
'    l_emails := wwv_flow_utilities.string_to_table(l_line,'','');',
'',
'    -----------------------------',
'    -- add emails to a collection',
'    --',
'    l_email := null;',
'    l_domain := null;',
'    l_at := 0;',
'    l_dot := 0;',
'    for j in 1..l_emails.count loop',
'        l_valid := true;',
'        l_email := trim(l_emails(j));',
'        l_email := replace(l_email,chr(49824),null);',
'        l_email := lower(l_email);',
'',
'        if l_email is not null then',
'            -----------',
'            -- Validate',
'            --',
'            l_at := instr(nvl(l_email,''x''),''@'');',
'            l_domain := substr(l_email,l_at+1);',
'            l_dot := instr(l_domain,''.'');',
'            if l_at < 2 then',
'                -- invalid email',
'                apex_collection.add_member(',
'                    p_collection_name => ''EBA_QPOLL_EMAIL_RES_INVALID'',',
'                    p_c001            => l_email,',
'                    p_c002            => ''INVALID EMAIL'');',
'                commit;',
'                l_valid := false;',
'            end if;',
'',
'            if l_dot = 0 and l_valid then',
'                apex_collection.add_member(',
'                    p_collection_name => ''EBA_QPOLL_EMAIL_RES_INVALID'',',
'                    p_c001            => l_email,',
'                    p_c002            => ''INVALID EMAIL'');',
'                commit;',
'                l_valid := false;',
'            end if;',
'',
'',
'            l_email := trim(l_email);',
'            l_email := trim(both ''.'' from l_email);',
'            l_email := replace(l_email,'' '',null);',
'            l_email := replace(l_email,chr(10),null);',
'            l_email := replace(l_email,chr(9),null);',
'            l_email := replace(l_email,chr(13),null);',
'            l_email := replace(l_email,chr(49824),null);',
'',
'            if l_valid and length(l_email) > 255 then',
'                apex_collection.add_member(',
'                    p_collection_name => ''EBA_QPOLL_EMAIL_RES_INVALID'',',
'                    p_c001            => l_email,',
'                    p_c002            => ''INVALID EMAIL'');',
'                commit;',
'                l_valid := false;',
'            end if;',
'',
'            if l_valid then',
'                for c1 in (select /* APEXeaf772 */  c001',
'                             from wwv_flow_collections',
'                            where collection_name = ''EBA_QPOLL_EMAIL_RES_VALID''',
'                              and c001 = l_email',
'                ) loop',
'                    apex_collection.add_member(',
'                        p_collection_name => ''EBA_QPOLL_EMAIL_RES_INVALID'',',
'                        p_c001            => l_email,',
'                        p_c002            => ''DUPLICATE EMAIL'');',
'                        commit;',
'                    l_valid := false;',
'                    exit;',
'                end loop;',
'            end if;',
'',
'            if l_valid then',
'                for c1 in (select  1',
'                             from eba_qpoll_respondents r,',
'                                  eba_qpoll_email_opt_out o',
'                            where r.id = o.respondent_id',
'                              and r.email = l_email',
'                ) loop',
'                    apex_collection.add_member(',
'                        p_collection_name => ''EBA_QPOLL_EMAIL_RES_INVALID'',',
'                        p_c001            => l_email,',
'                        p_c002            => ''OPTED OUT'');',
'                        commit;',
'                    l_valid := false;',
'                    exit;',
'                end loop;',
'            end if;',
'',
'            if l_valid then',
'                apex_collection.add_member(',
'                    p_collection_name => ''EBA_QPOLL_EMAIL_RES_VALID'',',
'                    p_c001            => l_email);',
'                    commit;',
'            end if;',
'',
'        end if;',
'        l_email := null;',
'    end loop;',
'',
'  end if;',
'',
'  if :P90_COMMUNITY_ID is not null then',
'    for c0 in (',
'       select r.id respondent_id, r.email',
'         from eba_qpoll_respondents r,',
'              eba_qpoll_resp_comm_ref cr',
'        where r.id = cr.respondent_id',
'          and cr.community_id = :P90_COMMUNITY_ID',
'    ) loop',
'        l_valid := true;',
'        for c1 in (select /* APEXeaf772 */  c001',
'                     from wwv_flow_collections',
'                    where collection_name = ''EBA_QPOLL_EMAIL_RES_VALID''',
'                      and c001 = c0.email',
'        ) loop',
'            apex_collection.add_member(',
'                p_collection_name => ''EBA_QPOLL_EMAIL_RES_INVALID'',',
'                p_c001            => c0.email,',
'                p_c002            => ''DUPLICATE EMAIL'');',
'                commit;',
'            l_valid := false;',
'            exit;',
'        end loop;',
'',
'        if l_valid then',
'            for c1 in (select  1',
'                         from eba_qpoll_email_opt_out',
'                        where respondent_id = c0.respondent_id',
'            ) loop',
'                apex_collection.add_member(',
'                    p_collection_name => ''EBA_QPOLL_EMAIL_RES_INVALID'',',
'                    p_c001            => c0.email,',
'                    p_c002            => ''OPTED OUT'');',
'                    commit;',
'                l_valid := false;',
'                exit;',
'            end loop;',
'        end if;',
'',
'        if l_valid then',
'            apex_collection.add_member(',
'                p_collection_name => ''EBA_QPOLL_EMAIL_RES_VALID'',',
'                p_c001            => c0.email);',
'                commit;',
'        end if;',
'    end loop;',
'  end if;',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(14135353099947339649)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Send emails'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'   l_html_body        clob;',
'   l_email_id         number;',
'begin',
'',
'   l_html_body := eba_qpoll.prepare_poll_results(:POLL_ID);',
'',
'   for c in (',
'      select c001 as email',
'        from apex_collections',
'       where collection_name = ''EBA_QPOLL_EMAIL_RES_VALID''',
'   ) loop',
'     ',
'      eba_qpoll_email.send (',
'         p_app_id             => :APP_ID,',
'         p_template_static_id => ''RESULTS'',',
'         p_placeholders       => ''{'' || ',
'                                 ''    "POLL_NAME":''         || apex_json.stringify( :POLL_NAME ) || ',
'                                 ''   ,"APPLICATION_TITLE":'' || apex_json.stringify( apex_escape.html(:APPLICATION_TITLE) ) || ',
'                                 ''   ,"INTRO_TEXT":''        || apex_json.stringify( case when :P90_INTRO_TEXT is not null',
'                                                                                         then ''<p>''||apex_escape.html(:P90_INTRO_TEXT)||''</p>''',
'                                                                                         else null',
'                                                                                         end ) || ',
'                                 ''   ,"OPT_OUT_TEXT":''      || apex_json.stringify( apex_lang.message(''OPT_OUT_TEXT'', ',
'                                                                                    :APP_PATH ||',
'                                                                                    APEX_UTIL.PREPARE_URL(p_url => ''f?p='' ||:APP_ID || '':optout'',',
'                                                                                        p_plain_url => TRUE),',
'                                                                                    apex_escape.html(:APPLICATION_TITLE)) ) || ',
'                                 ''   ,"BODY":''  || apex_json.stringify(l_html_body) || ',
'                                          ''}'' , ',
'         p_to                  => c.email,',
'         p_from                => :P90_EMAIL_FROM,',
'         p_cc                  => null,',
'         p_poll_id             => :POLL_ID,',
'         p_email_id            => l_email_id);',
'',
'   end loop;',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'#SQLERRM#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.component_end;
end;
/
