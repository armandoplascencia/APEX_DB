prompt --application/pages/page_00048
begin
--   Manifest
--     PAGE: 00048
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
 p_id=>48
,p_user_interface_id=>wwv_flow_api.id(5783577205373975152)
,p_name=>'Milestone'
,p_page_mode=>'MODAL'
,p_step_title=>'Milestone'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_api.id(5956244298529599071)
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_step_template=>wwv_flow_api.id(6781101375889890768)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(7306166303644991446)
,p_dialog_attributes=>'resizable:true'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_last_upd_yyyymmddhh24miss=>'20190913120615'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(6783414127166096420)
,p_plug_name=>'button bar'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--noUI'
,p_plug_template=>wwv_flow_api.id(6781104860657890779)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(9065637843420193391)
,p_plug_name=>'Milestone'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--noBorder:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(6781115417665890803)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(6265486202495380456)
,p_plug_name=>'Additional Data'
,p_parent_plug_id=>wwv_flow_api.id(9065637843420193391)
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(6781111273838890791)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'from eba_proj_flex_registry',
'where flexible_table = ''EBA_PROJ_STATUS_MS''',
'    and active_yn = ''Y''',
'    and assigned_yn = ''Y''',
'    and eba_proj_fw.are_ms_ai_restricted( :APP_ID, :APP_USER, :P48_PROJECT_ID ) = ''N''',
'    and eba_proj_fw.template_lock_yn( :APP_ID, :APP_USER, p_milestone_id => :P48_ID ) = ''N'''))
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_required_patch=>wwv_flow_api.id(6252446509804687380)
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(9065641029967193443)
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
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(19167488793895858472)
,p_plug_name=>'Created and Due Date'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(6781104626075890777)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'for c1 in',
'(',
'    select created, created_by, updated, updated_by, project_id, original_due_date, milestone_date',
'      from eba_proj_status_ms',
'     where id = :P48_ID',
')',
'loop',
'    sys.htp.p(''Created ''||apex_util.get_since(c1.created)||'' by ''||apex_escape.html(eba_proj_fw.get_name_from_email_address(c1.created_by)));',
'    sys.htp.p(''<br>Last updated ''||apex_util.get_since(c1.updated)||'' by ''||apex_escape.html(eba_proj_fw.get_name_from_email_address(c1.updated_by)));',
'    sys.htp.p(''<br><a href="''||apex_util.prepare_url(''f?p=''||:app_id||'':200:''||:app_session||'':::200:P200_ID,P2_ID:''||',
'     c1.project_id||'',''||c1.project_id)||''">View Project</a>'');',
'    if nvl(c1.original_due_date, c1.milestone_date) < c1.milestone_date then',
'        sys.htp.p(''<br><strong>Due On:</strong> '' || ''<span style="text-decoration:line-through;">'' || to_char(c1.original_due_date, ''fmDD-MON-YYYY'') || ''</span> '' || to_char(c1.milestone_date, ''fmDD-MON-YYYY''));',
'    else',
'        sys.htp.p(''<br><strong>Due On:</strong> '' || to_char(c1.milestone_date, ''fmDD-MON-YYYY''));',
'    end if;',
'end loop;'))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(9065638321338193394)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(6783414127166096420)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(6781135529450890864)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(9065638225875193394)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(6783414127166096420)
,p_button_name=>'DELETE_REDIRECT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>wwv_flow_api.id(6781135529450890864)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:221:&SESSION.::&DEBUG.:221:P221_MS_ID,P221_PRJ_ID:&P48_ID.,&P48_PROJECT_ID.'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P48_ID is not null',
'and eba_proj_fw.template_lock_yn (',
'    p_application_id => :APP_ID,',
'    p_username   => upper(:APP_USER),',
'    p_milestone_id => :P48_ID ) = ''N''',
'and eba_proj_fw.are_ms_ai_restricted(',
'    p_application_id => :APP_ID,',
'    p_username   => upper(:APP_USER),',
'    p_project_id => :P48_PROJECT_ID ) = ''N''',
'and :P48_OPEN_AI_CNT > 0'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_security_scheme=>wwv_flow_api.id(7306166303644991446)
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(18082897294028524634)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(6783414127166096420)
,p_button_name=>'PUSH'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--simple:t-Button--warning'
,p_button_template_id=>wwv_flow_api.id(6781135529450890864)
,p_button_image_alt=>'Adjust Dates'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>':P48_ID is not null and eba_proj_fw.are_ms_ai_restricted( :APP_ID, :APP_USER, :P48_PROJECT_ID ) = ''N'''
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_security_scheme=>wwv_flow_api.id(7306166303644991446)
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(9065638135957193394)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(6783414127166096420)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--gapLeft'
,p_button_template_id=>wwv_flow_api.id(6781135529450890864)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'P48_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_security_scheme=>wwv_flow_api.id(7306166303644991446)
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(6931264905401144286)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_api.id(6783414127166096420)
,p_button_name=>'CREATE_ANOTHER'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(6781135529450890864)
,p_button_image_alt=>'Add and Add Another'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P48_ID is null',
'and eba_proj_fw.are_ms_ai_restricted(',
'    p_application_id => :APP_ID,',
'    p_username   => upper(:APP_USER),',
'    p_project_id => :P48_PROJECT_ID ) = ''N'''))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_security_scheme=>wwv_flow_api.id(7306166303644991446)
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(9065638028690193394)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_api.id(6783414127166096420)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--gapLeft'
,p_button_template_id=>wwv_flow_api.id(6781135529450890864)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Milestone'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P48_ID is null',
'and eba_proj_fw.are_ms_ai_restricted(',
'    p_application_id => :APP_ID,',
'    p_username   => upper(:APP_USER),',
'    p_project_id => :P48_PROJECT_ID ) = ''N'''))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_security_scheme=>wwv_flow_api.id(7306166303644991446)
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(856786998489717563)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(6783414127166096420)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>wwv_flow_api.id(6781135529450890864)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P48_ID is not null',
'and eba_proj_fw.template_lock_yn (',
'    p_application_id => :APP_ID,',
'    p_username   => upper(:APP_USER),',
'    p_milestone_id => :P48_ID ) = ''N''',
'and eba_proj_fw.are_ms_ai_restricted(',
'    p_application_id => :APP_ID,',
'    p_username   => upper(:APP_USER),',
'    p_project_id => :P48_PROJECT_ID ) = ''N''',
'and :P48_OPEN_AI_CNT = 0'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_security_scheme=>wwv_flow_api.id(7306166303644991446)
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(13193035266252755060)
,p_branch_name=>'Stay on Page for create another'
,p_branch_action=>'f?p=&APP_ID.:&APP_PAGE_ID.:&SESSION.::&DEBUG.:RP,&APP_PAGE_ID.::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(6931264905401144286)
,p_branch_sequence=>10
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(13193034935739755057)
,p_branch_name=>'Go To Page &LAST_VIEW.'
,p_branch_action=>'f?p=&APP_ID.:&LAST_VIEW.:&SESSION.::&DEBUG.:RP::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(9065638225875193394)
,p_branch_sequence=>20
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(3464856143643033904)
,p_branch_name=>'Push Milestones'
,p_branch_action=>'f?p=&APP_ID.:85:&SESSION.::&DEBUG.:RP,85:P85_ID,P85_PROJECT_ID,P85_ORIG_MS_START_DATE,LAST_VIEW,P85_MILESTONE_DATE,P85_MILESTONE_START_DATE,P85_ORIG_MS_DUE_DATE:&P48_ID.,&P48_PROJECT_ID.,&P48_ORIG_MS_START_DATE.,&APP_PAGE_ID.,&P48_MILESTONE_DATE.,&P48_MILESTONE_START_DATE.,&P48_ORIG_MS_DUE_DATE.'
,p_branch_point=>'BEFORE_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(18082897294028524634)
,p_branch_sequence=>30
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(4112885348526300498)
,p_name=>'P48_ORIG_MS_START_DATE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(9065637843420193391)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare d date;',
'begin',
'for c1 in (',
'select current_date x from dual) loop',
'   d := c1.x;',
'end loop;',
'return d;',
'end;'))
,p_item_default_type=>'FUNCTION_BODY'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_restricted_characters=>'WEB_SAFE'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Select the date by which you would like to start this Milestone. Changing this date only affects this Milestone. If you would like to change the start dates of all other future Milestones in this project and/or their dependent action items, click '
||'the <strong>Push</strong> button at the bottom of this page instead.</p>',
'<p><em>NOTE: The <strong>Push</strong> button is dependent upon an existing Milestone, the project''s access level and prevent changes settings, and the project member''s privileges. This button will never appear when creating a Milestone and may not a'
||'ppear to certain project members when editing an existing Milestone.</em></p>'))
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(4112885934825300504)
,p_name=>'P48_ORIG_MS_DUE_DATE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(9065637843420193391)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare d date;',
'begin',
'for c1 in (',
'select current_date x from dual) loop',
'   d := c1.x;',
'end loop;',
'return d;',
'end;'))
,p_item_default_type=>'FUNCTION_BODY'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_restricted_characters=>'WEB_SAFE'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Select the date by which you would like to start this Milestone. Changing this date only affects this Milestone. If you would like to change the start dates of all other future Milestones in this project and/or their dependent action items, click '
||'the <strong>Push</strong> button at the bottom of this page instead.</p>',
'<p><em>NOTE: The <strong>Push</strong> button is dependent upon an existing Milestone, the project''s access level and prevent changes settings, and the project member''s privileges. This button will never appear when creating a Milestone and may not a'
||'ppear to certain project members when editing an existing Milestone.</em></p>'))
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6094322302310290566)
,p_name=>'P48_TAGS'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_api.id(9065637843420193391)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Tags'
,p_source=>'TAGS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select tag',
'  from eba_proj_tags_type_sum',
' where content_type = ''STATUS''',
' order by 1'))
,p_lov_display_null=>'YES'
,p_cSize=>75
,p_cMaxlength=>4000
,p_tag_attributes=>'placeholder="Enter tags separated by commas"'
,p_read_only_when=>'eba_proj_fw.are_ms_ai_restricted( :APP_ID, :APP_USER, :P48_PROJECT_ID ) = ''Y'''
,p_read_only_when2=>'PLSQL'
,p_read_only_when_type=>'EXPRESSION'
,p_field_template=>wwv_flow_api.id(6781134673650890856)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_restricted_characters=>'WEB_SAFE'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'Y'
,p_attribute_04=>'Y'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
,p_attribute_11=>','
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6265486383033380457)
,p_name=>'P48_MILESTONE_FLEX_05'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_api.id(6265486202495380456)
,p_use_cache_before_default=>'NO'
,p_prompt=>'MILESTONE Flex 05'
,p_source=>'MILESTONE_FLEX_05'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'PLUGIN_COM.ORACLE.APEX.FLEX_FIELD'
,p_cSize=>64
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'from eba_proj_flex_registry',
'where flexible_table = ''EBA_PROJ_STATUS_MS''',
'    and active_yn = ''Y''',
'    and flexible_column = ''MILESTONE_FLEX_05'''))
,p_display_when_type=>'EXISTS'
,p_field_template=>wwv_flow_api.id(6781134673650890856)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_required_patch=>wwv_flow_api.id(6252446509804687380)
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6265486609365380458)
,p_name=>'P48_MILESTONE_FLEX_06'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_api.id(6265486202495380456)
,p_use_cache_before_default=>'NO'
,p_prompt=>'MILESTONE Flex 06'
,p_source=>'MILESTONE_FLEX_06'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'PLUGIN_COM.ORACLE.APEX.FLEX_FIELD'
,p_cSize=>64
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'from eba_proj_flex_registry',
'where flexible_table = ''EBA_PROJ_STATUS_MS''',
'    and active_yn = ''Y''',
'    and flexible_column = ''MILESTONE_FLEX_06'''))
,p_display_when_type=>'EXISTS'
,p_field_template=>wwv_flow_api.id(6781134673650890856)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_required_patch=>wwv_flow_api.id(6252446509804687380)
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6265486787861380458)
,p_name=>'P48_MILESTONE_FLEX_07'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_api.id(6265486202495380456)
,p_use_cache_before_default=>'NO'
,p_prompt=>'MILESTONE Flex 07'
,p_source=>'MILESTONE_FLEX_07'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'PLUGIN_COM.ORACLE.APEX.FLEX_FIELD'
,p_cSize=>64
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'from eba_proj_flex_registry',
'where flexible_table = ''EBA_PROJ_STATUS_MS''',
'    and active_yn = ''Y''',
'    and flexible_column = ''MILESTONE_FLEX_07'''))
,p_display_when_type=>'EXISTS'
,p_field_template=>wwv_flow_api.id(6781134673650890856)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_required_patch=>wwv_flow_api.id(6252446509804687380)
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6265487000716380458)
,p_name=>'P48_MILESTONE_FLEX_08'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_api.id(6265486202495380456)
,p_use_cache_before_default=>'NO'
,p_prompt=>'MILESTONE Flex 08'
,p_source=>'MILESTONE_FLEX_08'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'PLUGIN_COM.ORACLE.APEX.FLEX_FIELD'
,p_cSize=>64
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'from eba_proj_flex_registry',
'where flexible_table = ''EBA_PROJ_STATUS_MS''',
'    and active_yn = ''Y''',
'    and flexible_column = ''MILESTONE_FLEX_08'''))
,p_display_when_type=>'EXISTS'
,p_field_template=>wwv_flow_api.id(6781134673650890856)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_required_patch=>wwv_flow_api.id(6252446509804687380)
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6265487183938380458)
,p_name=>'P48_MILESTONE_FLEX_N01'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(6265486202495380456)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Estimated Cost (in Man Hours)'
,p_source=>'MILESTONE_FLEX_N01'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'PLUGIN_COM.ORACLE.APEX.FLEX_FIELD'
,p_cSize=>64
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'from eba_proj_flex_registry',
'where flexible_table = ''EBA_PROJ_STATUS_MS''',
'    and active_yn = ''Y''',
'    and flexible_column = ''MILESTONE_FLEX_N01'''))
,p_display_when_type=>'EXISTS'
,p_field_template=>wwv_flow_api.id(6781134673650890856)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_required_patch=>wwv_flow_api.id(6252446509804687380)
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6265487382135380458)
,p_name=>'P48_MILESTONE_FLEX_N02'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(6265486202495380456)
,p_use_cache_before_default=>'NO'
,p_prompt=>'MILESTONE Flex N02'
,p_source=>'MILESTONE_FLEX_N02'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'PLUGIN_COM.ORACLE.APEX.FLEX_FIELD'
,p_cSize=>64
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'from eba_proj_flex_registry',
'where flexible_table = ''EBA_PROJ_STATUS_MS''',
'    and active_yn = ''Y''',
'    and flexible_column = ''MILESTONE_FLEX_N02'''))
,p_display_when_type=>'EXISTS'
,p_field_template=>wwv_flow_api.id(6781134673650890856)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_required_patch=>wwv_flow_api.id(6252446509804687380)
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6265487598545380458)
,p_name=>'P48_MILESTONE_FLEX_N03'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(6265486202495380456)
,p_use_cache_before_default=>'NO'
,p_prompt=>'MILESTONE Flex N03'
,p_source=>'MILESTONE_FLEX_N03'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'PLUGIN_COM.ORACLE.APEX.FLEX_FIELD'
,p_cSize=>64
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'from eba_proj_flex_registry',
'where flexible_table = ''EBA_PROJ_STATUS_MS''',
'    and active_yn = ''Y''',
'    and flexible_column = ''MILESTONE_FLEX_N03'''))
,p_display_when_type=>'EXISTS'
,p_field_template=>wwv_flow_api.id(6781134673650890856)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_required_patch=>wwv_flow_api.id(6252446509804687380)
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6265487789143380458)
,p_name=>'P48_MILESTONE_FLEX_N04'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(6265486202495380456)
,p_use_cache_before_default=>'NO'
,p_prompt=>'MILESTONE Flex N04'
,p_source=>'MILESTONE_FLEX_N04'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'PLUGIN_COM.ORACLE.APEX.FLEX_FIELD'
,p_cSize=>64
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'from eba_proj_flex_registry',
'where flexible_table = ''EBA_PROJ_STATUS_MS''',
'    and active_yn = ''Y''',
'    and flexible_column = ''MILESTONE_FLEX_N04'''))
,p_display_when_type=>'EXISTS'
,p_field_template=>wwv_flow_api.id(6781134673650890856)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_required_patch=>wwv_flow_api.id(6252446509804687380)
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6265488011149380458)
,p_name=>'P48_MILESTONE_FLEX_D01'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(6265486202495380456)
,p_use_cache_before_default=>'NO'
,p_prompt=>'MILESTONE Flex D01'
,p_format_mask=>'DD-MON-YYYY'
,p_source=>'MILESTONE_FLEX_D01'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'PLUGIN_COM.ORACLE.APEX.FLEX_FIELD'
,p_cSize=>64
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'from eba_proj_flex_registry',
'where flexible_table = ''EBA_PROJ_STATUS_MS''',
'    and active_yn = ''Y''',
'    and flexible_column = ''MILESTONE_FLEX_D01'''))
,p_display_when_type=>'EXISTS'
,p_field_template=>wwv_flow_api.id(6781134673650890856)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_required_patch=>wwv_flow_api.id(6252446509804687380)
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6265488197128380460)
,p_name=>'P48_MILESTONE_FLEX_D02'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(6265486202495380456)
,p_use_cache_before_default=>'NO'
,p_prompt=>'MILESTONE Flex D02'
,p_source=>'MILESTONE_FLEX_D02'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'PLUGIN_COM.ORACLE.APEX.FLEX_FIELD'
,p_cSize=>64
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'from eba_proj_flex_registry',
'where flexible_table = ''EBA_PROJ_STATUS_MS''',
'    and active_yn = ''Y''',
'    and flexible_column = ''MILESTONE_FLEX_D02'''))
,p_display_when_type=>'EXISTS'
,p_field_template=>wwv_flow_api.id(6781134673650890856)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_required_patch=>wwv_flow_api.id(6252446509804687380)
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6265488390989380461)
,p_name=>'P48_MILESTONE_FLEX_D03'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(6265486202495380456)
,p_use_cache_before_default=>'NO'
,p_prompt=>'MILESTONE Flex D03'
,p_source=>'MILESTONE_FLEX_D03'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'PLUGIN_COM.ORACLE.APEX.FLEX_FIELD'
,p_cSize=>64
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'from eba_proj_flex_registry',
'where flexible_table = ''EBA_PROJ_STATUS_MS''',
'    and active_yn = ''Y''',
'    and flexible_column = ''MILESTONE_FLEX_D03'''))
,p_display_when_type=>'EXISTS'
,p_field_template=>wwv_flow_api.id(6781134673650890856)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_required_patch=>wwv_flow_api.id(6252446509804687380)
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6265488607466380461)
,p_name=>'P48_MILESTONE_FLEX_D04'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(6265486202495380456)
,p_use_cache_before_default=>'NO'
,p_prompt=>'MILESTONE Flex D04'
,p_source=>'MILESTONE_FLEX_D04'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'PLUGIN_COM.ORACLE.APEX.FLEX_FIELD'
,p_cSize=>64
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'from eba_proj_flex_registry',
'where flexible_table = ''EBA_PROJ_STATUS_MS''',
'    and active_yn = ''Y''',
'    and flexible_column = ''MILESTONE_FLEX_D04'''))
,p_display_when_type=>'EXISTS'
,p_field_template=>wwv_flow_api.id(6781134673650890856)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_required_patch=>wwv_flow_api.id(6252446509804687380)
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6265488795642380462)
,p_name=>'P48_MILESTONE_FLEX_CLOB'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_api.id(6265486202495380456)
,p_use_cache_before_default=>'NO'
,p_prompt=>'MILESTONE Flex CLOB'
,p_source=>'MILESTONE_FLEX_CLOB'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'PLUGIN_COM.ORACLE.APEX.FLEX_FIELD'
,p_cSize=>64
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'from eba_proj_flex_registry',
'where flexible_table = ''EBA_PROJ_STATUS_MS''',
'    and active_yn = ''Y''',
'    and flexible_column = ''MILESTONE_FLEX_CLOB'''))
,p_display_when_type=>'EXISTS'
,p_field_template=>wwv_flow_api.id(6781134673650890856)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_required_patch=>wwv_flow_api.id(6252446509804687380)
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6265488985235380462)
,p_name=>'P48_MILESTONE_FLEX_01'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(6265486202495380456)
,p_use_cache_before_default=>'NO'
,p_prompt=>'MILESTONE Flex 01'
,p_source=>'MILESTONE_FLEX_01'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'PLUGIN_COM.ORACLE.APEX.FLEX_FIELD'
,p_cSize=>64
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'from eba_proj_flex_registry',
'where flexible_table = ''EBA_PROJ_STATUS_MS''',
'    and active_yn = ''Y''',
'    and flexible_column = ''MILESTONE_FLEX_01'''))
,p_display_when_type=>'EXISTS'
,p_field_template=>wwv_flow_api.id(6781134673650890856)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_required_patch=>wwv_flow_api.id(6252446509804687380)
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6265489181404380462)
,p_name=>'P48_MILESTONE_FLEX_02'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_api.id(6265486202495380456)
,p_use_cache_before_default=>'NO'
,p_prompt=>'MILESTONE Flex 02'
,p_source=>'MILESTONE_FLEX_02'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'PLUGIN_COM.ORACLE.APEX.FLEX_FIELD'
,p_cSize=>64
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'from eba_proj_flex_registry',
'where flexible_table = ''EBA_PROJ_STATUS_MS''',
'    and active_yn = ''Y''',
'    and flexible_column = ''MILESTONE_FLEX_02'''))
,p_display_when_type=>'EXISTS'
,p_field_template=>wwv_flow_api.id(6781134673650890856)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_required_patch=>wwv_flow_api.id(6252446509804687380)
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6265489395635380462)
,p_name=>'P48_MILESTONE_FLEX_03'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_api.id(6265486202495380456)
,p_use_cache_before_default=>'NO'
,p_prompt=>'MILESTONE Flex 03'
,p_source=>'MILESTONE_FLEX_03'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'PLUGIN_COM.ORACLE.APEX.FLEX_FIELD'
,p_cSize=>64
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'from eba_proj_flex_registry',
'where flexible_table = ''EBA_PROJ_STATUS_MS''',
'    and active_yn = ''Y''',
'    and flexible_column = ''MILESTONE_FLEX_03'''))
,p_display_when_type=>'EXISTS'
,p_field_template=>wwv_flow_api.id(6781134673650890856)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_required_patch=>wwv_flow_api.id(6252446509804687380)
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6265489608489380462)
,p_name=>'P48_MILESTONE_FLEX_04'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_api.id(6265486202495380456)
,p_use_cache_before_default=>'NO'
,p_prompt=>'MILESTONE Flex 04'
,p_source=>'MILESTONE_FLEX_04'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'PLUGIN_COM.ORACLE.APEX.FLEX_FIELD'
,p_cSize=>64
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'from eba_proj_flex_registry',
'where flexible_table = ''EBA_PROJ_STATUS_MS''',
'    and active_yn = ''Y''',
'    and flexible_column = ''MILESTONE_FLEX_04'''))
,p_display_when_type=>'EXISTS'
,p_field_template=>wwv_flow_api.id(6781134673650890856)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_required_patch=>wwv_flow_api.id(6252446509804687380)
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8138740537364325210)
,p_name=>'P48_MILESTONE_OWNER'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(9065637843420193391)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Owner'
,p_post_element_text=>' <small>[<a href="javascript:$s(''P48_MILESTONE_OWNER'',$v(''P48_CURRENT_USER''));">Me</a>]</small>'
,p_source=>'MILESTONE_OWNER'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_AUTO_COMPLETE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct lower(u.username) d',
'from eba_proj_status_users u,',
'    eba_proj_user_ref rf,',
'    eba_proj_status p',
'where rf.user_id = u.id',
'    and rf.project_id = p.id',
'union',
'select distinct lower(milestone_owner) d',
'from EBA_PROJ_STATUS_MS',
'where milestone_owner is not null',
'order by 1'))
,p_cSize=>64
,p_cMaxlength=>255
,p_tag_attributes=>'onchange="htmldb_item_change(this)"'
,p_read_only_when=>'eba_proj_fw.are_ms_ai_restricted( :APP_ID, :APP_USER, :P48_PROJECT_ID ) = ''Y'''
,p_read_only_when2=>'PLSQL'
,p_read_only_when_type=>'EXPRESSION'
,p_field_template=>wwv_flow_api.id(6781134673650890856)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_restricted_characters=>'WEB_SAFE'
,p_help_text=>'Identifies the milestone''s owner. The person assigned here is responsible for seeing the milestone is reached by it''s due date.'
,p_attribute_01=>'CONTAINS_IGNORE'
,p_attribute_04=>'N'
,p_attribute_06=>'N'
,p_attribute_07=>'Y'
,p_attribute_08=>'Y'
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
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8139005027274400378)
,p_name=>'P48_IS_MAJOR_YN'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(9065637843420193391)
,p_use_cache_before_default=>'NO'
,p_item_default=>'N'
,p_prompt=>'Is Major Milestone'
,p_source=>'IS_MAJOR_YN'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES NO RETURNS Y N'
,p_lov=>'.'||wwv_flow_api.id(9019252630556871632)||'.'
,p_cHeight=>1
,p_read_only_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'eba_proj_fw.template_lock_yn (',
'    p_application_id => :APP_ID,',
'    p_username   => upper(:APP_USER),',
'    p_milestone_id => :P48_ID ) = ''Y''',
'or',
'eba_proj_fw.are_ms_ai_restricted( :APP_ID, :APP_USER, :P48_PROJECT_ID ) = ''Y'''))
,p_read_only_when2=>'PLSQL'
,p_read_only_when_type=>'EXPRESSION'
,p_field_template=>wwv_flow_api.id(6781134673650890856)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(9065639230778193404)
,p_name=>'P48_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(9065637843420193391)
,p_use_cache_before_default=>'NO'
,p_source=>'ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(9065639444220193428)
,p_name=>'P48_PROJECT_ID'
,p_is_required=>true
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(9065637843420193391)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Project'
,p_source=>'PROJECT_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'PROJECTS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select project d, id r',
'from eba_proj_status',
'order by upper(project)'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select -'
,p_cHeight=>1
,p_read_only_when=>'P48_PROJECT_ID'
,p_read_only_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_api.id(6781134744367890857)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(9065639625967193430)
,p_name=>'P48_MILESTONE_NAME'
,p_is_required=>true
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(9065637843420193391)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Milestone'
,p_source=>'MILESTONE_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>64
,p_cMaxlength=>255
,p_read_only_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'eba_proj_fw.template_lock_yn (',
'    p_application_id => :APP_ID,',
'    p_username   => upper(:APP_USER),',
'    p_milestone_id => :P48_ID ) = ''Y''',
'or',
'eba_proj_fw.are_ms_ai_restricted( :APP_ID, :APP_USER, :P48_PROJECT_ID ) = ''Y'''))
,p_read_only_when2=>'PLSQL'
,p_read_only_when_type=>'EXPRESSION'
,p_field_template=>wwv_flow_api.id(6781134744367890857)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(9065639820923193430)
,p_name=>'P48_MILESTONE_DESCRIPTION'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_api.id(9065637843420193391)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Description'
,p_source=>'MILESTONE_DESCRIPTION'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>64
,p_cMaxlength=>4000
,p_cHeight=>4
,p_read_only_when=>'eba_proj_fw.are_ms_ai_restricted( :APP_ID, :APP_USER, :P48_PROJECT_ID ) = ''Y'''
,p_read_only_when2=>'PLSQL'
,p_read_only_when_type=>'EXPRESSION'
,p_field_template=>wwv_flow_api.id(6781134673650890856)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(9065640037087193431)
,p_name=>'P48_MILESTONE_DATE'
,p_is_required=>true
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(9065637843420193391)
,p_use_cache_before_default=>'NO'
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare d date;',
'begin',
'for c1 in (',
'select current_date + 7 x from dual) loop',
'   d := c1.x;',
'end loop;',
'return d;',
'end;'))
,p_item_default_type=>'FUNCTION_BODY'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Due Date'
,p_format_mask=>'DD-MON-YYYY'
,p_source=>'MILESTONE_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>64
,p_cMaxlength=>255
,p_read_only_when=>'eba_proj_fw.are_ms_ai_restricted( :APP_ID, :APP_USER, :P48_PROJECT_ID ) = ''Y'''
,p_read_only_when2=>'PLSQL'
,p_read_only_when_type=>'EXPRESSION'
,p_field_template=>wwv_flow_api.id(6781134744367890857)
,p_item_template_options=>'#DEFAULT#'
,p_restricted_characters=>'WEB_SAFE'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Select the date by which you would like to reach this Milestone. Changing this date only affects this Milestone. If you would like to change the due dates of all other future Milestones in this project and/or their dependent action items, click th'
||'e <strong>Push</strong> button at the bottom of this page instead.</p>',
'<p><em>NOTE: The <strong>Push</strong> button is dependent upon an existing Milestone, the project''s access level and prevent changes settings, and the project member''s privileges. This button will never appear when creating a Milestone and may not a'
||'ppear to certain project members when editing an existing Milestone.</em></p>'))
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(9065640231393193431)
,p_name=>'P48_MILESTONE_STATUS'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(9065637843420193391)
,p_use_cache_before_default=>'NO'
,p_item_default=>'Open'
,p_prompt=>'Status'
,p_source=>'MILESTONE_STATUS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'MILESTONE STATUS VALUES'
,p_lov=>'.'||wwv_flow_api.id(17697882807035038360)||'.'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(6781134744367890857)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(9068458037497304742)
,p_name=>'P48_MILESTONE_START_DATE'
,p_is_required=>true
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(9065637843420193391)
,p_use_cache_before_default=>'NO'
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare d date;',
'begin',
'for c1 in (',
'select current_date x from dual) loop',
'   d := c1.x;',
'end loop;',
'return d;',
'end;'))
,p_item_default_type=>'FUNCTION_BODY'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Milestone Start Date'
,p_format_mask=>'DD-MON-YYYY'
,p_source=>'MILESTONE_START_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>64
,p_cMaxlength=>255
,p_read_only_when=>'eba_proj_fw.are_ms_ai_restricted( :APP_ID, :APP_USER, :P48_PROJECT_ID ) = ''Y'''
,p_read_only_when2=>'PLSQL'
,p_read_only_when_type=>'EXPRESSION'
,p_field_template=>wwv_flow_api.id(6781134744367890857)
,p_item_template_options=>'#DEFAULT#'
,p_restricted_characters=>'WEB_SAFE'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Select the date by which you would like to start this Milestone. Changing this date only affects this Milestone. If you would like to change the start dates of all other future Milestones in this project and/or their dependent action items, click '
||'the <strong>Push</strong> button at the bottom of this page instead.</p>',
'<p><em>NOTE: The <strong>Push</strong> button is dependent upon an existing Milestone, the project''s access level and prevent changes settings, and the project member''s privileges. This button will never appear when creating a Milestone and may not a'
||'ppear to certain project members when editing an existing Milestone.</em></p>'))
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15119498031544788936)
,p_name=>'P48_OWNER_ROLE_ID'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(9065637843420193391)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Assign to Role'
,p_source=>'OWNER_ROLE_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'PROJECT ROLES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select name as d,',
'       id as r',
'  from eba_proj_roles',
' order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- No Role -'
,p_cHeight=>1
,p_read_only_when=>'eba_proj_fw.are_ms_ai_restricted( :APP_ID, :APP_USER, :P48_PROJECT_ID ) = ''Y'''
,p_read_only_when2=>'PLSQL'
,p_read_only_when_type=>'EXPRESSION'
,p_field_template=>wwv_flow_api.id(6781134673650890856)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Use this to assign a milestone''s owner based on the roles of the people associated with the project. If a role is selected here, any people with that role for this project will be listed as this milestone''s owner(s).</p>',
'<p>Leave blank to manually assign an owner to the milestone.</p>'))
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(19313140270000735048)
,p_name=>'P48_COMPLETED_DATE'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(9065637843420193391)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Completed Date'
,p_format_mask=>'DD-MON-YYYY'
,p_source=>'COMPLETED_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>64
,p_field_template=>wwv_flow_api.id(6781134673650890856)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'<p>Enter the date on which the Milestone was reached.</p>'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(19974071176053191834)
,p_name=>'P48_CURRENT_USER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(9065637843420193391)
,p_use_cache_before_default=>'NO'
,p_source=>'lower(:APP_USER)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(20233639784272250541)
,p_name=>'P48_ORIGINAL_DUE_DATE'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_api.id(9065637843420193391)
,p_use_cache_before_default=>'NO'
,p_source=>'ORIGINAL_DUE_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(20233640869072250552)
,p_name=>'P48_OPEN_AI_CNT'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(9065637843420193391)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(20233641230801250556)
,p_name=>'P48_CLOSE_ASSOC_AIS'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(9065637843420193391)
,p_item_default=>'N'
,p_prompt=>'Close Associated Open Action Item(s)'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'YES NO RETURNS Y N'
,p_lov=>'.'||wwv_flow_api.id(9019252630556871632)||'.'
,p_field_template=>wwv_flow_api.id(6781134673650890856)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'If "Yes" is selected, any/all open Action Item(s) associated with Milestone will be closed. If "No" is selected, this Milestone and any/all open Action Item(s) associated with Milestone will remain open.'
,p_attribute_01=>'2'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(20398324276979735544)
,p_name=>'P48_COMPLETED_BY'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(9065637843420193391)
,p_use_cache_before_default=>'NO'
,p_source=>'COMPLETED_BY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(21157150201469596448)
,p_name=>'P48_OPEN_ACTION_ITEMS'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(9065637843420193391)
,p_prompt=>'Associated Open Action Item(s)'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select action d, id r',
'  from eba_proj_status_ais',
' where milestone_id = :P48_ID',
'   and action_status != ''Closed''',
' order by 1'))
,p_tag_css_classes=>'displayOnlyAI'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(6781134673650890856)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'1'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(20398324489196735546)
,p_computation_sequence=>10
,p_computation_item=>'P48_COMPLETED_BY'
,p_computation_type=>'EXPRESSION'
,p_computation_language=>'PLSQL'
,p_computation=>'null'
,p_compute_when=>'P48_MILESTONE_STATUS'
,p_compute_when_text=>'Completed'
,p_compute_when_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(20398324581497735547)
,p_computation_sequence=>20
,p_computation_item=>'P48_COMPLETED_DATE'
,p_computation_type=>'EXPRESSION'
,p_computation_language=>'PLSQL'
,p_computation=>'null'
,p_compute_when=>'P48_MILESTONE_STATUS'
,p_compute_when_text=>'Completed'
,p_compute_when_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(1111077724392831183)
,p_computation_sequence=>30
,p_computation_item=>'P48_ORIGINAL_DUE_DATE'
,p_computation_type=>'EXPRESSION'
,p_computation_language=>'PLSQL'
,p_computation=>'substr(:P48_ORIGINAL_DUE_DATE,1,9)'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(20233640926474250553)
,p_computation_sequence=>10
,p_computation_item=>'P48_OPEN_AI_CNT'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'QUERY'
,p_computation=>'select count(*) from eba_proj_status_ais where milestone_id = :P48_ID and project_id = :P48_PROJECT_ID and action_status = ''Open'''
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(4112885459151300499)
,p_computation_sequence=>20
,p_computation_item=>'P48_ORIG_MS_START_DATE'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'ITEM_VALUE'
,p_computation=>'P48_MILESTONE_START_DATE'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(4145548665944246157)
,p_computation_sequence=>30
,p_computation_item=>'P48_ORIG_MS_DUE_DATE'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'ITEM_VALUE'
,p_computation=>'P48_MILESTONE_DATE'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(7213545491169745486)
,p_validation_name=>'Due after start'
,p_validation_sequence=>10
,p_validation=>'to_date(:P48_MILESTONE_START_DATE) <= to_date(:P48_MILESTONE_DATE)'
,p_validation2=>'SQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>'Start date must not be after milestone due date.'
,p_associated_item=>wwv_flow_api.id(9065640037087193431)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(20233643012508250573)
,p_validation_name=>'Open Action Items Must Be Closed'
,p_validation_sequence=>20
,p_validation=>'P48_CLOSE_ASSOC_AIS'
,p_validation2=>'Y'
,p_validation_type=>'ITEM_IN_VALIDATION_EQ_STRING2'
,p_error_message=>'Milestones cannot be closed until all associated Action Items have been closed.'
,p_validation_condition=>':P48_OPEN_AI_CNT != ''0'' and :P48_MILESTONE_STATUS = ''Completed'''
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'EXPRESSION'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(446344063865566698)
,p_validation_name=>'Valid Characters in Tags'
,p_validation_sequence=>30
,p_validation=>'not regexp_like( :P48_TAGS, ''[:;#\/\\\?\&]'' )'
,p_validation2=>'PLSQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>'Tags may not contain the following characters: : ; \ / ? &'
,p_validation_condition=>'CREATE,SAVE,CREATE_ANOTHER,PUSH'
,p_validation_condition_type=>'REQUEST_IN_CONDITION'
,p_associated_item=>wwv_flow_api.id(6094322302310290566)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(12288020901386109833)
,p_name=>'Cancel Modal'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(9065638321338193394)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(12288020980910109834)
,p_event_id=>wwv_flow_api.id(12288020901386109833)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(15119498158029788937)
,p_name=>'Show/Hide Owner'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P48_OWNER_ROLE_ID'
,p_condition_element=>'P48_OWNER_ROLE_ID'
,p_triggering_condition_type=>'NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(15119498250343788938)
,p_event_id=>wwv_flow_api.id(15119498158029788937)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P48_MILESTONE_OWNER'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(15119498370979788939)
,p_event_id=>wwv_flow_api.id(15119498158029788937)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P48_MILESTONE_OWNER'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(18631838882540306063)
,p_name=>'Close Milestone'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P48_MILESTONE_STATUS'
,p_condition_element=>'P48_MILESTONE_STATUS'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'Completed'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(20233641666425250560)
,p_event_id=>wwv_flow_api.id(18631838882540306063)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P48_MILESTONE_STATUS'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(20233641738304250561)
,p_event_id=>wwv_flow_api.id(18631838882540306063)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P48_MILESTONE_STATUS'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(19313140741857735053)
,p_event_id=>wwv_flow_api.id(18631838882540306063)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P48_COMPLETED_DATE'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>'null'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(18631839007741306064)
,p_event_id=>wwv_flow_api.id(18631838882540306063)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P48_COMPLETED_DATE'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>'to_char(trunc(localtimestamp),:APP_DATE_FORMAT)'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(19313140479103735050)
,p_event_id=>wwv_flow_api.id(18631838882540306063)
,p_event_result=>'FALSE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P48_COMPLETED_DATE'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(20398324364350735545)
,p_event_id=>wwv_flow_api.id(18631838882540306063)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P48_COMPLETED_BY'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>':APP_USER'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(19313140375064735049)
,p_event_id=>wwv_flow_api.id(18631838882540306063)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P48_COMPLETED_DATE'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(20233642574483250569)
,p_name=>'Show Hide Close Associated Action Items'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P48_MILESTONE_STATUS'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'$v(''P48_OPEN_AI_CNT'') > 0 && $v(''P48_MILESTONE_STATUS'') == ''Completed'''
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(20233642698365250570)
,p_event_id=>wwv_flow_api.id(20233642574483250569)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P48_CLOSE_ASSOC_AIS,P48_OPEN_ACTION_ITEMS'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(20233642723008250571)
,p_event_id=>wwv_flow_api.id(20233642574483250569)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P48_CLOSE_ASSOC_AIS,P48_OPEN_ACTION_ITEMS'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(21157150397418596450)
,p_event_id=>wwv_flow_api.id(20233642574483250569)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(''.displayOnlyAI input[type=radio]'').remove();'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(856786790157717561)
,p_name=>'Close self'
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(9065638225875193394)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(856786857941717562)
,p_event_id=>wwv_flow_api.id(856786790157717561)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(9065640424036193437)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from EBA_PROJ_STATUS_MS'
,p_attribute_02=>'EBA_PROJ_STATUS_MS'
,p_attribute_03=>'P48_ID'
,p_attribute_04=>'ID'
,p_attribute_11=>'I:U:D'
,p_process_error_message=>'Unable to fetch row.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(19239061064537424132)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Delete Milestone'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'update eba_proj_status_ms$',
'set is_deleted_yn = ''Y'',',
'    deleted_by = :APP_USER,',
'    deleted_on = localtimestamp',
'where id = :P48_ID;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'DELETE,DELETE_REDIRECT'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_process_success_message=>'Milestone deleted.'
,p_security_scheme=>wwv_flow_api.id(7306166303644991446)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(9065640630284193443)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of EBA_PROJ_STATUS_MS'
,p_attribute_02=>'EBA_PROJ_STATUS_MS'
,p_attribute_03=>'P48_ID'
,p_attribute_04=>'ID'
,p_attribute_09=>'P48_ID'
,p_attribute_11=>'I:U'
,p_attribute_12=>'Y'
,p_process_error_message=>'Unable to process row of table EBA_PROJ_STATUS_MS.'
,p_process_when=>'DELETE'
,p_process_when_type=>'REQUEST_NOT_EQUAL_CONDITION'
,p_process_success_message=>'Action Processed.'
,p_security_scheme=>wwv_flow_api.id(7306166303644991446)
,p_return_key_into_item1=>'P48_ID'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(20233641498884250558)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Close Associated Action Items (No Resolution Text Required)'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'update eba_proj_status_ais ',
'   set completed_date = nvl(to_date(:P48_COMPLETED_DATE,''DD-MON-YYYY''),to_date(sysdate,''DD-MON-YYYY'')), ',
'       action_status = ''Closed''',
' where milestone_id = :P48_ID',
'   and action_status = ''Open'';'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(9065638135957193394)
,p_process_when=>':P48_CLOSE_ASSOC_AIS = ''Y'' and :P48_MILESTONE_STATUS = ''Completed'' and :P48_OPEN_AI_CNT != ''0'''
,p_process_when_type=>'EXPRESSION'
,p_process_when2=>'PLSQL'
,p_security_scheme=>wwv_flow_api.id(7306166303644991446)
,p_required_patch=>-wwv_flow_api.id(18227432720253979239)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(20233643086105250574)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Close Associated Action Items with Resolution Text'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'update eba_proj_status_ais ',
'   set completed_date = nvl(to_date(:P48_COMPLETED_DATE,''DD-MON-YYYY''),to_date(sysdate,''DD-MON-YYYY'')),',
'       action_status = ''Closed'',',
'       resolution = ''Closed as a result of completing associated Milestone.''',
' where milestone_id = :P48_ID',
'   and action_status = ''Open'';'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(9065638135957193394)
,p_process_when=>':P48_CLOSE_ASSOC_AIS = ''Y'' and :P48_MILESTONE_STATUS = ''Completed'' and :P48_OPEN_AI_CNT != ''0'''
,p_process_when_type=>'EXPRESSION'
,p_process_when2=>'PLSQL'
,p_security_scheme=>wwv_flow_api.id(7306166303644991446)
,p_required_patch=>wwv_flow_api.id(18227432720253979239)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(12771733272607219938)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE, SAVE, DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_api.component_end;
end;
/
