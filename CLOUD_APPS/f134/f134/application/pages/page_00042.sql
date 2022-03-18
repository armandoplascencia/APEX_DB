prompt --application/pages/page_00042
begin
--   Manifest
--     PAGE: 00042
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
 p_id=>42
,p_user_interface_id=>wwv_flow_api.id(5783577205373975152)
,p_name=>'Application Settings'
,p_page_mode=>'MODAL'
,p_step_title=>'Application Settings'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_api.id(5956243783292594674)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(7306165779537991444)
,p_dialog_height=>'600'
,p_protection_level=>'C'
,p_help_text=>'<p>The preferences on this page are used to affect several aspects of the application. Click the item-level help icons to learn what each preference does.</p>'
,p_last_upd_yyyymmddhh24miss=>'20190905084716'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(480886973132115404)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(6781104860657890779)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(3582653004986568404)
,p_plug_name=>'Application Settings'
,p_region_template_options=>'#DEFAULT#:t-Form--stretchInputs'
,p_plug_template=>wwv_flow_api.id(6781104626075890777)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(3582653165080568405)
,p_plug_name=>'Project Settings'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(6781104626075890777)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(3582653262328568406)
,p_plug_name=>'Menu Settings'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(6781104626075890777)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(4032266440533222265)
,p_plug_name=>'Region Display Selector'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(2102163296972548821)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_source_type=>'NATIVE_DISPLAY_SELECTOR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'STANDARD'
,p_attribute_02=>'N'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(4379006580342736285)
,p_plug_name=>'Help Settings'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(6781104626075890777)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(5980106391612448379)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(6781117976757890807)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(8972392840601050532)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(6781135716305890867)
,p_plug_display_condition_type=>'NEVER'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(5980105389036448369)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(480886973132115404)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(6781135529450890864)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(5980105604512448371)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(480886973132115404)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--gapLeft'
,p_button_template_id=>wwv_flow_api.id(6781135529450890864)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_CREATE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(5980106986091448385)
,p_branch_action=>'f?p=&APP_ID.:settings:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(5980105604512448371)
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1654812057647185891)
,p_name=>'P42_MILESTONE_SORT_ORDER'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(3582653165080568405)
,p_item_default=>'END'
,p_prompt=>'Sort Milestones By'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select nvl(preference_value,''END'')',
'from eba_proj_preferences',
'where preference_name = ''MILESTONE_SORT_ORDER'''))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'MS_DUE_DATE_SORT_ORDER'
,p_lov=>'.'||wwv_flow_api.id(495493029649785314)||'.'
,p_field_template=>wwv_flow_api.id(748281690398960066)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--radioButtonGroup'
,p_lov_display_extra=>'NO'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>This preference controls the ordering of milestones.</p>',
'<ul>',
'    <li><B>By Start Date:</B> Milestones will be sorted by when they begin; a long-running milestone that starts before a shorter one will be listed first, even if the shorter one is due earlier.</li>',
'    <li><B>By Due Date:</B> Milestones will be sorted by when they are due; a long-running milestone that ends after a shorter one will be listed first, even if the shorter one started later.</li>',
'</ul>'))
,p_attribute_01=>'2'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(2770694924363251386)
,p_name=>'P42_CAT_TITLE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(3582653004986568404)
,p_item_default=>'Category'
,p_prompt=>'Category Title (Singular Form)'
,p_source=>'replace(eba_proj_fw.get_preference_value(''CAT_TITLE''),''Preference does not exist'',''Category'')'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(748281690398960066)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'By default projects can be assigned to various "Categories". If you would prefer to label "Categories" as something else, enter the singular form of that word here.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(2770695073841251387)
,p_name=>'P42_CAT_TITLE_PL'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(3582653004986568404)
,p_item_default=>'Categories'
,p_prompt=>'Categories Title (Plural Form)'
,p_source=>'replace(eba_proj_fw.get_preference_value(''CAT_TITLE_PL''),''Preference does not exist'',''Categories'')'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(748281690398960066)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'By default projects can be assigned to various "Categories". If you would prefer to label "Categories" as something else, enter the plural form of that word here.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(4032265604359222257)
,p_name=>'P42_CUSTOM_LINK'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(3582653262328568406)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Include Custom Menu Entry'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if eba_proj_fw.get_preference_value(''CUSTOM_MENU'') = ''Preference does not exist'' then',
'    return ''N'';',
'else',
'    return ''Y'';',
'end if;'))
,p_source_type=>'FUNCTION_BODY'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_YES_NO'
,p_field_template=>wwv_flow_api.id(748281690398960066)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(4032265776059222258)
,p_name=>'P42_CUSTOM_MENU'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(3582653262328568406)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Custom Menu Title'
,p_source=>'replace(eba_proj_fw.get_preference_value(''CUSTOM_MENU''),''Preference does not exist'',null)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(748281375605960061)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(4032265870769222259)
,p_name=>'P42_CUSTOM_MENU_URL'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(3582653262328568406)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Menu URL'
,p_source=>'replace(eba_proj_fw.get_preference_value(''CUSTOM_MENU_URL''),''Preference does not exist'',null)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(748281375605960061)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'URL'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(4032265946430222260)
,p_name=>'P42_CUSTOM_MENU_ICON'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(3582653262328568406)
,p_use_cache_before_default=>'NO'
,p_item_default=>'fa-cloud'
,p_prompt=>'Icon'
,p_source=>'replace(eba_proj_fw.get_preference_value(''CUSTOM_MENU_ICON''),''Preference does not exist'',null)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'CUSTOM_MENU_ICONS'
,p_lov=>'.'||wwv_flow_api.id(4137162278319318826)||'.'
,p_field_template=>wwv_flow_api.id(748281690398960066)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'8'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(4032266554803222266)
,p_name=>'P42_CREATE_CATEGORIES'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(3582653165080568405)
,p_use_cache_before_default=>'NO'
,p_prompt=>'&CAT_TITLE. Creation'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select preference_value',
'from eba_proj_preferences',
'where preference_name = ''CATEGORY_CREATION_LEVEL''',
'union all',
'select ''CONTRIB'' preference_value',
'from dual',
'where not exists (  select null',
'                    from eba_proj_preferences',
'                    where preference_name = ''CATEGORY_CREATION_LEVEL''',
')'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'CATEGORY CREATE OPTIONS'
,p_lov=>'.'||wwv_flow_api.id(495494166676798264)||'.'
,p_field_template=>wwv_flow_api.id(748281690398960066)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--radioButtonGroup'
,p_lov_display_extra=>'NO'
,p_help_text=>'Use this to control whether contributors can create new &CAT_TITLE_PL. during project creation/editing, or if that should be done only by administrators.'
,p_attribute_01=>'2'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(4032266735350222268)
,p_name=>'P42_CUSTOM_MENU_WARN'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(3582653262328568406)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Notice'
,p_source=>'Please note that setting the custom menu icon to "Home" will change the icon for the "Projects" menu.'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(748281690398960066)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(4379006634420736286)
,p_name=>'P42_HELP_ALT_URL'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(4379006580342736285)
,p_prompt=>'Secondary Help URL'
,p_source=>'replace(eba_proj_fw.get_preference_value( ''HELP_VIDEO_URL'' ),''Preference does not exist'',null)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(748281690398960066)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Enter the URL to the video that shows end-users how to use the application.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(4379007567718736295)
,p_name=>'P42_HELP_ALT_LINK_TEXT'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(4379006580342736285)
,p_item_default=>'&APP_TITLE. Video Tutorial'
,p_prompt=>'Secondary Help Link Text'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(748281690398960066)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Enter the text that end-users will click on to navigate to the URL (defined above).'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(5980105781149448371)
,p_name=>'P42_APPLICATION_TITLE'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(3582653004986568404)
,p_use_cache_before_default=>'NO'
,p_item_default=>'&APP_NAME.'
,p_prompt=>'Application Name'
,p_source=>'&APPLICATION_TITLE.'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>64
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(748281375605960061)
,p_item_template_options=>'#DEFAULT#'
,p_restricted_characters=>'WEB_SAFE'
,p_help_text=>'<p>The text entered here is used throughout the application, most notably, in the upper left-hand corner of every page. By default, the application name is "P-Track". The change will take effect immediately for the administrator making the change, bu'
||'t other users will only see the change when they get a new session (e.g. at next login).</p>'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6699493782930831447)
,p_name=>'P42_APPLICATION_SUBTITLE'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(3582653004986568404)
,p_use_cache_before_default=>'NO'
,p_item_default=>'Collaboratively track projects, milestones, and action items.'
,p_prompt=>'Application Subtitle'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select preference_value',
'from eba_proj_preferences',
'where preference_name = ''APPLICATION_SUBTITLE''',
'union all',
'select ''Collaboratively track projects, milestones, and action items.''',
'from dual',
'where not exists ( select null',
'                   from eba_proj_preferences',
'                   where preference_name = ''APPLICATION_SUBTITLE'')'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>64
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(748281375605960061)
,p_item_template_options=>'#DEFAULT#'
,p_restricted_characters=>'WEB_SAFE'
,p_help_text=>'<p>The text entered here is displayed under the application name on the home page of the application.</p>'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15820404928101766051)
,p_name=>'P42_APPLICATION_DISCLAIMER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(3582653004986568404)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Application Footer'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select preference_value',
'from eba_proj_preferences',
'where preference_name = ''DISCLAIMER_TEXT'''))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>64
,p_cMaxlength=>4000
,p_cHeight=>5
,p_field_template=>wwv_flow_api.id(748281690398960066)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'<p>The text entered here is displayed at the bottom of every page in the application and in all emails sent by this application.</p>'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(17313140261582353070)
,p_name=>'P42_FEEDBACK_RECIPIENTS'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(3582653004986568404)
,p_prompt=>'Feedback Recipients'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if eba_proj_fw.get_preference_value(p_preference_name  => ''FEEDBACK_RECIPIENTS'') = ''Preference does not exist'' then',
'    return null;',
'else',
'    return eba_proj_fw.get_preference_value(p_preference_name  => ''FEEDBACK_RECIPIENTS'');',
'end if;'))
,p_source_type=>'FUNCTION_BODY'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>64
,p_cMaxlength=>4000
,p_cHeight=>5
,p_field_template=>wwv_flow_api.id(748281690398960066)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'<p>Provide a comma-separated list of the email addresses you would like feedback submissions emailed to. When feedback is submitted, the feedback will be emailed to the addresses in this list.</p>'
,p_inline_help_text=>'<a href="f?p=&APP_ID.:203:&APP_SESSION.">Review/Manage Feedback</a>'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18094063968558386648)
,p_name=>'P42_MOST_IMPORTANT_ROLE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(3582653165080568405)
,p_prompt=>'Most Important Project Role'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select preference_value',
'from eba_proj_preferences',
'where preference_name = ''MOST_IMPORTANT_PROJECT_ROLE'''))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'PROJECT ROLES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select name as d,',
'       id as r',
'  from eba_proj_roles',
' order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select -'
,p_lov_cascade_parent_items=>'P42_PJCT_CREATE_REQ_AUTH_ROLE'
,p_ajax_items_to_submit=>'P42_PJCT_CREATE_REQ_AUTH_ROLE'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(748281690398960066)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'<p>Only the email addresses of project members assigned to the role that''s selected here will be displayed in the "cards" view of the application home page.</p>'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(19850569351086020730)
,p_name=>'P42_DEFAULT_PROJECT_ACL'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(3582653165080568405)
,p_item_default=>'1'
,p_prompt=>'Default Project Access Control Level'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select preference_value',
'from eba_proj_preferences',
'where preference_name = ''DEFAULT_PROJECT_ACL'''))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'PROJECT ACL LEVELS'
,p_lov=>'.'||wwv_flow_api.id(11154171524619972300)||'.'
,p_field_template=>wwv_flow_api.id(748281690398960066)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--radioButtonGroup'
,p_lov_display_extra=>'NO'
,p_help_text=>'<p>Select the access control level that the majority of projects will use in this application. The value selected here will be used for all new projects'' access control level value.</p>'
,p_attribute_01=>'2'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(19850569578151020732)
,p_name=>'P42_PROJECT_ROWKEY_OPTION'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(3582653165080568405)
,p_item_default=>'ROWKEY'
,p_prompt=>'Project Breadcrumb Display Options'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select preference_value',
'from eba_proj_preferences',
'where preference_name = ''PROJECT_ROWKEY_OPTION'''))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'PROJECT ROWKEY OPTIONS'
,p_lov=>'.'||wwv_flow_api.id(19852423492326522947)||'.'
,p_lov_cascade_parent_items=>'P42_PJCT_CREATE_REQ_AUTH_ROLE'
,p_ajax_items_to_submit=>'P42_PJCT_CREATE_REQ_AUTH_ROLE'
,p_ajax_optimize_refresh=>'Y'
,p_field_template=>wwv_flow_api.id(748281690398960066)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'<p>This preference determines if a project''s system-generated unique identifier should be displayed or not. If the "Project Code Names" build option has been enabled and there are existing projects with assigned code names then the "Show Project Code'
||' Name" option will also be available for selection here.</p>'
,p_attribute_01=>'1'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(19850573578693020772)
,p_name=>'P42_DEFAULT_RESTRICT_CHANGES'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(3582653165080568405)
,p_item_default=>'N'
,p_prompt=>'Default Project Restrict Changes Value'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select preference_value',
'from eba_proj_preferences',
'where preference_name = ''DEFAULT_PJCT_RESTRICT_CHANGES'''))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_YES_NO'
,p_field_template=>wwv_flow_api.id(748281690398960066)
,p_item_template_options=>'#DEFAULT#'
,p_required_patch=>wwv_flow_api.id(16977114217035413845)
,p_help_text=>'<p>Select the "Restrict Changes" value that the majority of projects will use in this application. The value selected here will be used for all new projects'' "Restrict Changes" value.</p>'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(20152065986293308253)
,p_name=>'P42_PJCT_CREATE_REQ_AUTH_ROLE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(3582653165080568405)
,p_prompt=>'Minimum Project Creation Role'
,p_source=>'replace(eba_proj_fw.get_preference_value( ''PROJECT_CREATE_REQ_AUTH_ROLE'' ),''Preference does not exist'',''CONTRIBUTORS'')'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'PROJECT CREATION ROLES'
,p_lov=>'.'||wwv_flow_api.id(20463403342486916307)||'.'
,p_field_template=>wwv_flow_api.id(748281690398960066)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Select the minimum application role required for an end-user to create a project in this application.'
,p_attribute_01=>'1'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(4379007613756736296)
,p_validation_name=>'Verify Help Video URL'
,p_validation_sequence=>10
,p_validation=>'return eba_proj_fw.check_url(:P42_HELP_ALT_URL)'
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'The secondary help URL entered is not valid. Please enter a valid website url to continue. If you try to navigate to the url in a browser and it works fine, ensure the site didn''t redirect from http:// to https:// after the page loaded. If you notice'
||' that happened, then change your URL to https:// here and everything should work.'
,p_validation_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_lstnr_ver varchar2(30);',
'    l_html_clob clob;',
'begin',
'    select owa_util.get_cgi_env(''APEX_LISTENER_VERSION'') into l_lstnr_ver from dual;',
'',
'    -- If ORDS is configured, check to see if https GET requests can be collected (this means an Oracle Wallet has been configured)',
'    if l_lstnr_ver is not null then',
'        begin',
'            select apex_web_service.make_rest_request(',
'                       p_url => ''https://www.oracle.com/'', ',
'                       p_http_method => ''GET'' ) ',
'              into l_html_clob',
'              from dual;',
'        exception',
'          when others then',
'            l_html_clob := null;',
'        end;',
'    end if;',
'',
'    -- If the end-user provided a url and ORDS is active and an Oracle Wallet has been configured, ',
'    -- then go ahead and check to see if the url the end-user entered is a real website',
'    -- otherwise don''t run this URL validation at all - just use whatever URL they provided',
'    if :P42_HELP_ALT_URL is not null and l_html_clob is not null then',
'        return true;',
'    else',
'        return false;',
'    end if;',
'end;'))
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'FUNCTION_BODY'
,p_when_button_pressed=>wwv_flow_api.id(5980105604512448371)
,p_associated_item=>wwv_flow_api.id(4379006634420736286)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(4379008075967736300)
,p_validation_name=>'Link Text Not Null if URL Provided'
,p_validation_sequence=>20
,p_validation=>'P42_HELP_ALT_LINK_TEXT'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#LABEL# must have some value when alternate help URL has been provided.'
,p_validation_condition=>'P42_HELP_ALT_URL'
,p_validation_condition_type=>'ITEM_IS_NOT_NULL'
,p_when_button_pressed=>wwv_flow_api.id(5980105604512448371)
,p_associated_item=>wwv_flow_api.id(4379007567718736295)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(4032266016539222261)
,p_name=>'Show/Hide Custom Menu Details'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P42_CUSTOM_LINK'
,p_condition_element=>'P42_CUSTOM_LINK'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'Y'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(4032266125113222262)
,p_event_id=>wwv_flow_api.id(4032266016539222261)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P42_CUSTOM_MENU,P42_CUSTOM_MENU_URL,P42_CUSTOM_MENU_ICON'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(4032266269977222263)
,p_event_id=>wwv_flow_api.id(4032266016539222261)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P42_CUSTOM_MENU,P42_CUSTOM_MENU_URL,P42_CUSTOM_MENU_ICON'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(4032266828394222269)
,p_name=>'Show/Hide Icon Warning'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P42_CUSTOM_MENU_ICON'
,p_condition_element=>'P42_CUSTOM_MENU_ICON'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'fa-home'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(4032266936270222270)
,p_event_id=>wwv_flow_api.id(4032266828394222269)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P42_CUSTOM_MENU_WARN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(4032267059925222271)
,p_event_id=>wwv_flow_api.id(4032266828394222269)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P42_CUSTOM_MENU_WARN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(509377652257008085)
,p_name=>'CNX'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(5980105389036448369)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(509377777577008086)
,p_event_id=>wwv_flow_api.id(509377652257008085)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(5980106711376448382)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Save Preferences'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':APPLICATION_TITLE := :P42_APPLICATION_TITLE;',
'',
'eba_proj_fw.set_preference_value(''CAT_TITLE_PL'', :P42_CAT_TITLE_PL);',
':CAT_TITLE_PL := eba_proj_fw.get_preference_value(''CAT_TITLE_PL'');',
'eba_proj_fw.set_preference_value(''CAT_TITLE'', :P42_CAT_TITLE);',
':CAT_TITLE := eba_proj_fw.get_preference_value(''CAT_TITLE'');',
'',
'eba_proj_fw.set_preference_value(''CAT_TITLE_PL_LC'', lower(:P42_CAT_TITLE_PL));',
':CAT_TITLE_PL_LC := eba_proj_fw.get_preference_value(''CAT_TITLE_PL_LC'');',
'eba_proj_fw.set_preference_value(''CAT_TITLE_LC'', lower(:P42_CAT_TITLE));',
':CAT_TITLE_LC := eba_proj_fw.get_preference_value(''CAT_TITLE_LC'');',
'',
'eba_proj_fw.set_preference_value( ''APPLICATION_TITLE'',             :P42_APPLICATION_TITLE );',
'eba_proj_fw.set_preference_value( ''APPLICATION_SUBTITLE'',          :P42_APPLICATION_SUBTITLE );',
'eba_proj_fw.set_preference_value( ''DEFAULT_PROJECT_ACL'',           :P42_DEFAULT_PROJECT_ACL );',
'eba_proj_fw.set_preference_value( ''DEFAULT_PJCT_RESTRICT_CHANGES'', :P42_DEFAULT_RESTRICT_CHANGES );',
'eba_proj_fw.set_preference_value( ''PROJECT_ROWKEY_OPTION'',         :P42_PROJECT_ROWKEY_OPTION );',
'eba_proj_fw.set_preference_value( ''MILESTONE_SORT_ORDER'',          :P42_MILESTONE_SORT_ORDER );',
'eba_proj_fw.set_preference_value( ''MOST_IMPORTANT_PROJECT_ROLE'',   :P42_MOST_IMPORTANT_ROLE );',
'eba_proj_fw.set_preference_value( ''DISCLAIMER_TEXT'',               :P42_APPLICATION_DISCLAIMER );',
'eba_proj_fw.set_preference_value( ''FEEDBACK_RECIPIENTS'',           :P42_FEEDBACK_RECIPIENTS );',
'eba_proj_fw.set_preference_value( ''PROJECT_CREATE_REQ_AUTH_ROLE'',  :P42_PJCT_CREATE_REQ_AUTH_ROLE );',
'eba_proj_fw.set_preference_value( ''HELP_ALT_URL'',                  :P42_HELP_ALT_URL );',
'eba_proj_fw.set_preference_value( ''HELP_ALT_LINK_TEXT'',            :P42_HELP_ALT_LINK_TEXT );',
''))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'#SQLERRM#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(5980105604512448371)
,p_process_success_message=>'Application settings updated.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(4032266323438222264)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Save Custom Menu'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P42_CUSTOM_LINK = ''Y'' and :P42_CUSTOM_MENU is not null and :P42_CUSTOM_MENU_URL is not null then',
'    eba_proj_fw.set_preference_value( ''CUSTOM_MENU'',      :P42_CUSTOM_MENU );',
'    eba_proj_fw.set_preference_value( ''CUSTOM_MENU_URL'',  :P42_CUSTOM_MENU_URL );',
'    eba_proj_fw.set_preference_value( ''CUSTOM_MENU_ICON'', :P42_CUSTOM_MENU_ICON );',
'else',
'    delete from eba_proj_preferences',
'    where preference_name in ( ''CUSTOM_MENU'', ''CUSTOM_MENU_URL'', ''CUSTOM_MENU_ICON'' );',
'end if;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(4032266656738222267)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Save Category Creation Pref'
,p_process_sql_clob=>'eba_proj_fw.set_preference_value( ''CATEGORY_CREATION_LEVEL'', :P42_CREATE_CATEGORIES );'
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.component_end;
end;
/
