prompt --application/pages/page_00020
begin
--   Manifest
--     PAGE: 00020
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
 p_id=>20
,p_user_interface_id=>wwv_flow_api.id(5783577205373975152)
,p_name=>'Email Project'
,p_step_title=>'Email Project'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_api.id(5956243887448595899)
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.complete { color : #009900 !important;  }',
'.late { color : #dd0000 !important;  }',
'.done { color : #000000 !important; }',
'#mmTable td, #aiTable td, #msTable td, #issTable td { font-size: 12px; }'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'Select the type of email you want to send, who want to send it to and click the <strong>Send Email</strong> button to send the email. Click the <strong>Cancel</strong> button to return to the project details page. You can also optionally add carbon-c'
||'opied recipients and personalized message text.'
,p_last_upd_yyyymmddhh24miss=>'20190904141935'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(7904082104488154725)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(6781117976757890807)
,p_plug_display_sequence=>30
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(8972392840601050532)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(6781135716305890867)
,p_plug_display_condition_type=>'NEVER'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(9013014626167094443)
,p_plug_name=>'Email'
,p_region_template_options=>'#DEFAULT#:t-Region--hiddenOverflow:t-Form--labelsAbove:t-Region--hideHeader'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(6781115417665890803)
,p_plug_display_sequence=>10
,p_plug_new_grid_column=>false
,p_plug_display_point=>'BODY'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_plug_header=>'<p>Send email with HTML attachment (see below).</p>'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(18405128597459962941)
,p_plug_name=>'Preview Project Status Email'
,p_region_name=>'previewStatus'
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(6781111273838890791)
,p_plug_display_sequence=>15
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_email varchar2(255);',
'begin',
'    if instr(:APP_USER,''@'') > 0 then',
'        l_email := lower(:APP_USER);',
'    else',
'        select email_address into l_email from eba_proj_status_users where id = :CURRENT_USER_ID;',
'    end if;',
'    ',
'    eba_proj_stat_email.print_message (',
'        p_id          => :P20_ID, ',
'        p_app_id      => :APP_ID,',
'        p_email       => l_email,',
'        p_session     => :APP_SESSION,',
'        p_app_name    => :APPLICATION_TITLE || '': Status Report '' || to_char(sysdate, ''Month fmDD, YYYY''),',
'        p_reply_email => eba_proj_status_pref_api.get_email,',
'        p_email_type  => ''STATUS''',
'    );',
'end;'))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(19167486136878858446)
,p_plug_name=>'Preview Project Details Email'
,p_region_name=>'previewSummary'
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(6781111273838890791)
,p_plug_display_sequence=>25
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_email varchar2(255);',
'begin',
'    if instr(:APP_USER,''@'') > 0 then',
'        l_email := lower(:APP_USER);',
'    else',
'        select email_address into l_email from eba_proj_status_users where id = :CURRENT_USER_ID;',
'    end if;',
'    ',
'    eba_proj_stat_email.print_message (',
'        p_id          => :P20_ID, ',
'        p_app_id      => :APP_ID,',
'        p_email       => l_email,',
'        p_session     => :APP_SESSION,',
'        p_app_name    => :APPLICATION_TITLE,',
'        p_reply_email => eba_proj_status_pref_api.get_email,',
'        p_email_type  => ''SUMMARY''',
'    );',
'end;'))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(9013015228722104561)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(6212459901559585507)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(6781135529450890864)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:&LAST_VIEW.:&SESSION.::&DEBUG.:2:P2_ID,P200_ID:&P20_ID.,&P20_ID.'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(9013014813831100249)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(6212459901559585507)
,p_button_name=>'SEND_EMAIL'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(6781135529450890864)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Send Email'
,p_button_position=>'REGION_TEMPLATE_CREATE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(9017689225315593635)
,p_branch_name=>'return to last view'
,p_branch_action=>'f?p=&APP_ID.:&LAST_VIEW.:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_save_state_before_branch_yn=>'Y'
,p_branch_comment=>'Created 19-OCT-2010 16:28 by MIKE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(9013013315684034607)
,p_name=>'P20_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(9013014626167094443)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(9013015542921108670)
,p_name=>'P20_TO'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(9013014626167094443)
,p_prompt=>'To'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>80
,p_cMaxlength=>4000
,p_cHeight=>3
,p_field_template=>wwv_flow_api.id(6781134744367890857)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Add a comma-separated list of your recipients'' email addresses here.'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(9013015737192108671)
,p_name=>'P20_FROM'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(9013014626167094443)
,p_prompt=>'From'
,p_source=>'lower(:APP_USER)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(6781134673650890856)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(9013015934934108671)
,p_name=>'P20_CC'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(9013014626167094443)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Cc'
,p_display_as=>'NATIVE_AUTO_COMPLETE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct',
'    case when u.email_address is not null then',
'            lower(u.email_address)',
'        when instr(u.username,''@'') > 0 and instr(u.username,''.'') > 0 then',
'            lower(u.username)',
'    end as email',
'from eba_proj_status_users u,',
'    eba_proj_user_ref rf,',
'    eba_proj_roles r',
'where upper(u.username) != upper(:APP_USER)',
'    and ( u.email_address is not null',
'        or (instr(u.username,''@'') > 0 and instr(u.username,''.'') > 0))',
'    and rf.project_id = :P20_ID',
'    and rf.user_id = u.id',
'    and rf.role_id = r.id',
'    and eba_proj_fw.is_edit_authorized( u.username, rf.project_id ) = ''Y''',
'order by 1'))
,p_cSize=>80
,p_cMaxlength=>4000
,p_field_template=>wwv_flow_api.id(6781134673650890856)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'CONTAINS_IGNORE'
,p_attribute_04=>'Y'
,p_attribute_05=>'100'
,p_attribute_06=>'Y'
,p_attribute_07=>'N'
,p_attribute_08=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(9013016134816108671)
,p_name=>'P20_MESSAGE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(9013014626167094443)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Message'
,p_source=>'replace(eba_proj_fw.get_preference_value( p_preference_name => ''EMAIL_MSG_BODY'' ), ''Preference does not exist'', null);'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>80
,p_cMaxlength=>4000
,p_cHeight=>4
,p_field_template=>wwv_flow_api.id(6781134673650890856)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Choose the type of email you would like to send ("Project Details" or "Project Status"), supply the email''s recipients (project members'' email addresses are pre-filled in the "To" text area but any other valid email addresses can be added here or in '
||'the "CC" text field), and click the <strong>Send Email</strong> button.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'Y'
,p_attribute_04=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(9013016915478119651)
,p_name=>'P20_SUBJECT'
,p_is_required=>true
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(9013014626167094443)
,p_prompt=>'Subject'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>80
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(6781134744367890857)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(17173483371797348971)
,p_name=>'P20_RECIPIENT_OPTIONS'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(9013014626167094443)
,p_item_default=>'MEMBERS'
,p_prompt=>'Click to Populate Recipients'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'PROJECT DETAILS RECIPIENT OPTIONS'
,p_lov=>'.'||wwv_flow_api.id(17312946905365269084)||'.'
,p_field_template=>wwv_flow_api.id(6899231875758612224)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'3'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18175886999538760656)
,p_name=>'P20_EMAIL_TYPE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(9013014626167094443)
,p_item_default=>'nvl(:P20_EMAIL_TYPE,''STATUS'')'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Email Type'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'SUMMARY_OR_STATUS'
,p_lov=>'.'||wwv_flow_api.id(18909040981002011782)||'.'
,p_field_template=>wwv_flow_api.id(6781134673650890856)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Choose the type of email you would like to send (Details or Status).</p>',
'<p>The "Project Details" Email sends a longer, more comprehensive summary of project details that have transpired over the last 90 days.</p>',
'<p>The "Project Status" Email sends a shorter, more concise summary of project details that have transpired over the last 7 days and the next (upcoming) 7 days.</p>'))
,p_attribute_01=>'2'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18405129151650962947)
,p_name=>'P20_APP_TITLE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(9013014626167094443)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18405129399713962949)
,p_name=>'P20_PROJECT'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(9013014626167094443)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(9017689841722607808)
,p_computation_sequence=>10
,p_computation_item=>'P20_FROM'
,p_computation_type=>'QUERY'
,p_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    case',
'        when instr(username,''@'') > 0 then',
'            lower(username)',
'        when instr(username,''@'') = 0 and instr(email_address,''@'') > 0 then',
'            lower(email_address)',
'        else',
'            trim(lower(substr(:P20_TO,1,instr(:P20_TO,'','') - 1)))',
'    end as email_address',
'from',
'    eba_proj_status_users',
'where',
'    upper(username) = :APP_USER;'))
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(18405129268035962948)
,p_computation_sequence=>10
,p_computation_item=>'P20_APP_TITLE'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'EXPRESSION'
,p_computation_language=>'PLSQL'
,p_computation=>':APPLICATION_TITLE'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(18405129498339962950)
,p_computation_sequence=>20
,p_computation_item=>'P20_PROJECT'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'QUERY'
,p_computation=>'select project from eba_proj_status where id = :P20_ID;'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(17173482053977348958)
,p_name=>'Add Members'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P20_ADD_MEMBERS'
,p_condition_element=>'P20_ADD_MEMBERS'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(17173482518791348963)
,p_event_id=>wwv_flow_api.id(17173482053977348958)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P20_ADD_MEMBERS'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(17173482922894348967)
,p_event_id=>wwv_flow_api.id(17173482053977348958)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P20_TO'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(17173482298319348960)
,p_event_id=>wwv_flow_api.id(17173482053977348958)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P20_TO'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-- Members',
'select listagg( x.email, '', '' )',
'    within group (order by x.email) email_addresses into :P20_TO',
'from (  -- Get all valid project members',
'        select distinct',
'            case when u.email_address is not null then',
'                    lower(u.email_address)',
'                when instr(u.username,''@'') > 0 and instr(u.username,''.'') > 0 then',
'                    lower(u.username)',
'            end as email',
'        from eba_proj_status_users u,',
'            eba_proj_user_ref rf,',
'            eba_proj_roles r',
'        where upper(u.username) != upper(:APP_USER)',
'            and ( u.email_address is not null',
'                or (instr(u.username,''@'') > 0 and instr(u.username,''.'') > 0))',
'            and instr(upper(:P20_TO),nvl(upper(u.email_address),upper(u.username))) = 0',
'            and rf.project_id = :P20_ID',
'            and rf.user_id = u.id',
'            and rf.role_id = r.id',
') x'))
,p_attribute_07=>'P20_ID,P20_TO'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(17173483025925348968)
,p_event_id=>wwv_flow_api.id(17173482053977348958)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P20_TO'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(17173482789840348965)
,p_event_id=>wwv_flow_api.id(17173482053977348958)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P20_TO'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(17173482326881348961)
,p_name=>'Add Followers'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P20_ADD_FOLLOWERS'
,p_condition_element=>'P20_ADD_FOLLOWERS'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(17173482613689348964)
,p_event_id=>wwv_flow_api.id(17173482326881348961)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P20_ADD_FOLLOWERS'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(17173483178388348969)
,p_event_id=>wwv_flow_api.id(17173482326881348961)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P20_TO'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(17173482487224348962)
,p_event_id=>wwv_flow_api.id(17173482326881348961)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P20_TO'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-- Followers',
'select listagg( x.email, '', '' )',
'    within group (order by x.email) email_addresses into :P20_TO',
'from (  -- Add any project followers (if this is an open project or it''s a restricted project and the follower has a super admin account)',
'        select distinct',
'            case when u.email_address is not null then',
'                    lower(u.email_address)',
'                when instr(u.username,''@'') > 0 and instr(u.username,''.'') > 0 then',
'                    lower(u.username)',
'            end as email',
'        from eba_proj_status_users u,',
'            eba_proj_status_favorites f,',
'            eba_proj_status s',
'        where f.content_id = :P20_ID',
'            and s.id = f.content_id',
'            and upper(f.user_name) = upper(u.username)',
'            and ( u.email_address is not null',
'                or (instr(u.username,''@'') > 0 and instr(u.username,''.'') > 0))',
'            and instr(upper(:P20_TO),nvl(upper(u.email_address),upper(u.username))) = 0',
'            and f.content_type = ''PROJECT''',
'            and (',
'                    s.acl_status_level = 1 --OPEN',
'                    or',
'                    (',
'                        s.acl_status_level > 1 -- RESTRICTED',
'                        and',
'                        u.access_level_id = 4 -- USER is a Super Admin',
'',
'                    )',
'                )',
'',
') x'))
,p_attribute_07=>'P20_ID,P20_TO'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(17173483263167348970)
,p_event_id=>wwv_flow_api.id(17173482326881348961)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P20_TO'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(17173482900436348966)
,p_event_id=>wwv_flow_api.id(17173482326881348961)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P20_TO'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(17173483432490348972)
,p_name=>'Both'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P20_RECIPIENT_OPTIONS'
,p_condition_element=>'P20_RECIPIENT_OPTIONS'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'BOTH'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(17313136182593353029)
,p_event_id=>wwv_flow_api.id(17173483432490348972)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P20_TO'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(17173493581245348973)
,p_event_id=>wwv_flow_api.id(17173483432490348972)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P20_TO'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-- Both',
'select listagg( x.email, '', '' )',
'    within group (order by x.email) email_addresses',
'from (  -- Get all valid project members',
'        select distinct',
'            case when u.email_address is not null then',
'                    lower(u.email_address)',
'                when instr(u.username,''@'') > 0 and instr(u.username,''.'') > 0 then',
'                    lower(u.username)',
'            end as email',
'        from eba_proj_status_users u,',
'            eba_proj_user_ref rf,',
'            eba_proj_roles r',
'        where ( u.email_address is not null',
'                or (instr(u.username,''@'') > 0 and instr(u.username,''.'') > 0))',
'            and rf.project_id = :P20_ID',
'            and rf.user_id = u.id',
'            and rf.role_id = r.id',
'        union',
'        -- Add any project followers (if this is an open project or it''s a restricted project and the follower has a super admin account)',
'        select distinct',
'            case when u.email_address is not null then',
'                    lower(u.email_address)',
'                when instr(u.username,''@'') > 0 and instr(u.username,''.'') > 0 then',
'                    lower(u.username)',
'            end as email',
'        from eba_proj_status_users u,',
'            eba_proj_status_favorites f,',
'            eba_proj_status s',
'        where f.content_id = :P20_ID',
'            and s.id = f.content_id',
'            and upper(f.user_name) = upper(u.username)',
'            and ( u.email_address is not null',
'                or (instr(u.username,''@'') > 0 and instr(u.username,''.'') > 0))',
'            and f.content_type = ''PROJECT''',
'            and (',
'                    s.acl_status_level = 1 --OPEN',
'                    or',
'                    (',
'                        s.acl_status_level > 1 -- RESTRICTED',
'                        and',
'                        u.access_level_id = 4 -- USER is a Super Admin',
'',
'                    )',
'                )',
') x'))
,p_attribute_07=>'P20_ID'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(17173493692822348974)
,p_name=>'Members Only'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P20_RECIPIENT_OPTIONS'
,p_condition_element=>'P20_RECIPIENT_OPTIONS'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'MEMBERS'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(17313136271614353030)
,p_event_id=>wwv_flow_api.id(17173493692822348974)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P20_TO'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(17173493737209348975)
,p_event_id=>wwv_flow_api.id(17173493692822348974)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P20_TO'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-- Members',
'select listagg( x.email, '', '' )',
'    within group (order by x.email) email_addresses',
'from (  -- Get all valid project members',
'        select distinct',
'            case when u.email_address is not null then',
'                    lower(u.email_address)',
'                when instr(u.username,''@'') > 0 and instr(u.username,''.'') > 0 then',
'                    lower(u.username)',
'            end as email',
'        from eba_proj_status_users u,',
'            eba_proj_user_ref rf,',
'            eba_proj_roles r',
'        where ( u.email_address is not null',
'                or (instr(u.username,''@'') > 0 and instr(u.username,''.'') > 0))',
'            and rf.project_id = :P20_ID',
'            and rf.user_id = u.id',
'            and rf.role_id = r.id',
') x'))
,p_attribute_07=>'P20_ID'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(17173493894288348976)
,p_name=>'Followers Only'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P20_RECIPIENT_OPTIONS'
,p_condition_element=>'P20_RECIPIENT_OPTIONS'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'FOLLOWERS'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(17313136367986353031)
,p_event_id=>wwv_flow_api.id(17173493894288348976)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P20_TO'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(17173494011797348977)
,p_event_id=>wwv_flow_api.id(17173493894288348976)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P20_TO'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-- Followers',
'select listagg( x.email, '', '' )',
'    within group (order by x.email) email_addresses',
'from (  -- Add any project followers (if this is an open project or it''s a restricted project and the follower has a super admin account)',
'        select distinct',
'            case when u.email_address is not null then',
'                    lower(u.email_address)',
'                when instr(u.username,''@'') > 0 and instr(u.username,''.'') > 0 then',
'                    lower(u.username)',
'            end as email',
'        from eba_proj_status_users u,',
'            eba_proj_status_favorites f,',
'            eba_proj_status s',
'        where f.content_id = :P20_ID',
'            and s.id = f.content_id',
'            and upper(f.user_name) = upper(u.username)',
'            and ( u.email_address is not null',
'                or (instr(u.username,''@'') > 0 and instr(u.username,''.'') > 0))',
'            and f.content_type = ''PROJECT''',
'            and (',
'                    s.acl_status_level = 1 --OPEN',
'                    or',
'                    (',
'                        s.acl_status_level > 1 -- RESTRICTED',
'                        and',
'                        u.access_level_id = 4 -- USER is a Super Admin',
'',
'                    )',
'                )',
') x'))
,p_attribute_07=>'P20_ID'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(18175887094400760657)
,p_name=>'Refresh Preview'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P20_EMAIL_TYPE'
,p_condition_element=>'P20_EMAIL_TYPE'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'STATUS'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(18405128995303962945)
,p_event_id=>wwv_flow_api.id(18175887094400760657)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P20_ID,P20_APP_TITLE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(18405129079330962946)
,p_event_id=>wwv_flow_api.id(18175887094400760657)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P20_ID,P20_APP_TITLE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(19167484555406858430)
,p_event_id=>wwv_flow_api.id(18175887094400760657)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P20_SUBJECT'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>'select :P20_APP_TITLE || '': '' || :P20_PROJECT || '' Status Report '' || to_char(sysdate,''fmDD-Mon-YYYY'') from eba_proj_status where id = :P20_ID'
,p_attribute_07=>'P20_ID,P20_APP_TITLE,P20_PROJECT'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(19167486472600858449)
,p_event_id=>wwv_flow_api.id(18175887094400760657)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P20_SUBJECT'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>'select :P20_APP_TITLE || '': '' || :P20_PROJECT from eba_proj_status where id = :P20_ID'
,p_attribute_07=>'P20_ID,P20_APP_TITLE,P20_PROJECT'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(18405128756626962943)
,p_event_id=>wwv_flow_api.id(18175887094400760657)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(''div#previewSummary'').hide();',
'$(''div#previewStatus'').show();',
'',
''))
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(18405128880327962944)
,p_event_id=>wwv_flow_api.id(18175887094400760657)
,p_event_result=>'FALSE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(''div#previewStatus'').hide();',
'$(''div#previewSummary'').show();'))
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(9017947230846586513)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'send email'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'   l_clob          clob;',
'   l_body          clob := '' '';',
'   l_message       varchar2(4000);',
'   l_from_address  varchar2(255);',
'   l_email         varchar2(255);',
'begin',
'    if instr(:APP_USER,''@'') > 0 then',
'        l_email := lower(:APP_USER);',
'    else',
'        select email_address into l_email from eba_proj_status_users where id = :CURRENT_USER_ID;',
'    end if;',
'    ',
'    if :P20_EMAIL_TYPE = ''SUMMARY'' then',
'        eba_proj_stat_email.print_message (',
'            p_id          => :P20_ID, ',
'            p_app_id      => :APP_ID,',
'            p_email       => l_email,',
'            p_session     => :APP_SESSION,',
'            p_app_name    => :APPLICATION_TITLE,',
'            p_reply_email => eba_proj_status_pref_api.get_email,',
'            p_email_type  => :P20_EMAIL_TYPE ',
'        );',
'    else',
'        eba_proj_stat_email.print_message (',
'            p_id          => :P20_ID, ',
'            p_app_id      => :APP_ID,',
'            p_email       => l_email,',
'            p_session     => :APP_SESSION,',
'            p_app_name    => :APPLICATION_TITLE || '': Status Report '' || to_char(sysdate, ''Month fmDD, YYYY''),',
'            p_reply_email => eba_proj_status_pref_api.get_email,',
'            p_email_type  => :P20_EMAIL_TYPE ',
'        );',
'    end if;',
'',
'    for c1 in (select clob001 from apex_collections where collection_name = ''EMAIL'')',
'    loop',
'        l_clob := c1.clob001;',
'        ',
'        if :P20_MESSAGE is not null then',
'            l_clob := replace(l_clob, ''<!-- Content Wrapper -->'', ''<center><div style="padding: 8px; color: #404040; font-size: 14px; line-height: 20px; border-top: 2px solid #D0D0D0; border-bottom: 2px solid #D0D0D0; margin-bottom: 8px; padding-bott'
||'om: 8px;">''||:P20_MESSAGE||''</div></center>'');',
'        end if;',
'',
'        l_from_address := :P20_FROM;',
'',
'        if l_from_address is not null and instr(:P20_TO,''@'') > 0 then',
'            APEX_MAIL.SEND(',
'                p_to => :P20_TO,',
'                p_from => l_from_address,',
'                p_body => l_body,',
'                p_body_html => l_clob,',
'                p_subj => :P20_SUBJECT,',
'                p_cc  => :P20_CC,',
'                p_bcc   => null,',
'                p_replyto => null);',
'',
'            apex_mail.push_queue;',
'',
'            eba_proj_stat_email.log_sent_email',
'            (',
'                p_email_to   => :P20_TO,',
'                p_email_from => :P20_FROM,',
'                p_body_size  => dbms_lob.getlength(l_clob),',
'                p_type       => ''PROJECT_'' || :P20_EMAIL_TYPE,',
'                p_project_id => :P20_ID',
'            );',
'        end if;',
'    end loop;',
'    commit;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_success_message=>'Message sent'
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
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(9035890125996796538)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'log email request'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_email_first_to varchar2(255) := null;',
'begin',
'    if instr(:P20_TO,'','') > 2 then',
'       l_email_first_to := substr(l_email_first_to,1,instr(:P20_TO,'','') - 1);',
'    else',
'       l_email_first_to := :P20_TO;',
'    end if;',
'',
'    insert into eba_proj_status_email_log (',
'        email_first_to,',
'        email_to,',
'        email_from,',
'        body_size )',
'    values (',
'         trim(l_email_first_to),',
'         trim(:P20_TO),',
'         trim(:P20_FROM),',
'         length(:P20_MESSAGE) );',
'    commit;',
'end;'))
,p_process_clob_language=>'PLSQL'
);
null;
wwv_flow_api.component_end;
end;
/
