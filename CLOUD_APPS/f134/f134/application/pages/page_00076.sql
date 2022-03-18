prompt --application/pages/page_00076
begin
--   Manifest
--     PAGE: 00076
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
 p_id=>76
,p_user_interface_id=>wwv_flow_api.id(5783577205373975152)
,p_name=>'Edit Project Update'
,p_step_title=>'Edit Project Update'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_api.id(5956244094027597768)
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(7306166303644991446)
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_last_upd_yyyymmddhh24miss=>'20190830165055'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(6778423801947703630)
,p_plug_name=>'Edit Project Update'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(6781115417665890803)
,p_plug_display_sequence=>10
,p_plug_new_grid_column=>false
,p_plug_display_point=>'BODY'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(6778426405907703641)
,p_plug_name=>'Edit Update'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(6781117976757890807)
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(8972392840601050532)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(6781135716305890867)
,p_plug_display_condition_type=>'NEVER'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(6778423994523703634)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(6212459901559585507)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(6781135529450890864)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_condition=>'P76_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_security_scheme=>wwv_flow_api.id(7306166303644991446)
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(6778424199895703635)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(6212459901559585507)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(6781135529450890864)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:&LAST_VIEW.:&SESSION.::&DEBUG.:::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(6778424399043703635)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(6212459901559585507)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(6781135529450890864)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save Update'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'P76_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_security_scheme=>wwv_flow_api.id(7306166303644991446)
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(6778424603764703635)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(6212459901559585507)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>wwv_flow_api.id(6781135529450890864)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P76_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_security_scheme=>wwv_flow_api.id(7306166303644991446)
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(6778427796792703656)
,p_branch_action=>'f?p=&APP_ID.:&LAST_VIEW.:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_save_state_before_branch_yn=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6778424812135703636)
,p_name=>'P76_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(6778423801947703630)
,p_use_cache_before_default=>'NO'
,p_source=>'ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6778424999073703638)
,p_name=>'P76_PROJECT_ID'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(6778423801947703630)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Project'
,p_source=>'PROJECT_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'SELECT PROJECT'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select d, r',
'from ( select ltrim(replace(SYS_CONNECT_BY_PATH(project, '':TREESEP:''), '':TREESEP:'','' / ''), ''/ '') d,',
'           id r',
'       from eba_proj_status',
'       start with parent_project_id is null',
'           connect by prior id = parent_project_id',
'           order siblings by project )',
'union all',
'select ps.project d, ps.id r',
'from eba_proj_status ps',
'where ps.parent_project_id is not null',
'    and not exists ( select null',
'                     from eba_proj_status p2',
'                     where p2.id = ps.parent_project_id );'))
,p_cSize=>80
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'ABOVE'
,p_field_template=>wwv_flow_api.id(6781134673650890856)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6778425180791703638)
,p_name=>'P76_STATUS_UPDATE'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(6778423801947703630)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Status Update'
,p_source=>'STATUS_UPDATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>80
,p_cMaxlength=>32000
,p_cHeight=>14
,p_label_alignment=>'ABOVE'
,p_field_template=>wwv_flow_api.id(6781134744367890857)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6778425395722703638)
,p_name=>'P76_UPDATE_OWNER'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(6778423801947703630)
,p_use_cache_before_default=>'NO'
,p_item_default=>'return lower( :APP_USER);'
,p_item_default_type=>'FUNCTION_BODY'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Update Owner'
,p_source=>'UPDATE_OWNER'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_AUTO_COMPLETE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select lower(u.username) d',
'from eba_proj_user_ref rf,',
'    eba_proj_status_users u,',
'    eba_proj_roles r,',
'    eba_proj_status p',
'where rf.user_id = u.id',
'    and rf.role_id = r.id',
'    and rf.project_id = p.id',
'    and eba_proj_fw.is_edit_authorized( u.username, rf.project_id ) = ''Y'''))
,p_cSize=>64
,p_cMaxlength=>4000
,p_field_template=>wwv_flow_api.id(6781134673650890856)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'CONTAINS_IGNORE'
,p_attribute_04=>'N'
,p_attribute_06=>'N'
,p_attribute_07=>'Y'
,p_attribute_08=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6778425600992703638)
,p_name=>'P76_UPDATE_DATE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(6778423801947703630)
,p_use_cache_before_default=>'NO'
,p_item_default=>'current_date'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Update Current as of'
,p_format_mask=>'DD-MON-RR HH24:MI'
,p_source=>'UPDATE_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>64
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'ABOVE'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>'P76_ID'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_api.id(6781134673650890856)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6778425806510703639)
,p_name=>'P76_INCLUDE_ON_STATUS_RPT'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(6778423801947703630)
,p_use_cache_before_default=>'NO'
,p_item_default=>'Y'
,p_prompt=>'Status Reports'
,p_source=>'INCLUDE_ON_STATUS_RPT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov=>'STATIC2:Appropriate for Status Report;Y'
,p_cSize=>64
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'ABOVE'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(6781134673650890856)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'1'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6778425987306703639)
,p_name=>'P76_UPDATE_TYPE'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(6778423801947703630)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Update Type'
,p_source=>'UPDATE_TYPE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select status_update_type||decode(is_active_yn,''Y'','''','' (Inactive)'') d, id r',
'from   EBA_PROJ_STATUS_UPDATE_TYPES',
'where is_active_yn = ''Y''',
'    or id = :P76_UPDATE_TYPE',
'order by is_active_yn desc, display_sequence'))
,p_label_alignment=>'ABOVE'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(6781134744367890857)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'4'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(6778426997025703652)
,p_computation_sequence=>10
,p_computation_item=>'P76_INCLUDE_ON_STATUS_RPT'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'N'
,p_compute_when=>'P76_INCLUDE_ON_STATUS_RPT'
,p_compute_when_type=>'ITEM_IS_NULL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(6778427084900703652)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from EBA_PROJ_STATUS_UPDATES'
,p_attribute_02=>'EBA_PROJ_STATUS_UPDATES'
,p_attribute_03=>'P76_ID'
,p_attribute_04=>'ID'
,p_attribute_11=>'I:U:D'
,p_process_error_message=>'Unable to fetch row.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(6778427283261703654)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of EBA_PROJ_STATUS_UPDATES'
,p_attribute_02=>'EBA_PROJ_STATUS_UPDATES'
,p_attribute_03=>'P76_ID'
,p_attribute_04=>'ID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_process_error_message=>'Unable to process row of table EBA_PROJ_STATUS_UPDATES.'
,p_process_success_message=>'Action Processed.'
,p_security_scheme=>wwv_flow_api.id(7306166303644991446)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(6778427507102703654)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_FOR_PAGES'
,p_attribute_04=>'12'
,p_process_when_button_id=>wwv_flow_api.id(6778424603764703635)
,p_security_scheme=>wwv_flow_api.id(7306166303644991446)
);
wwv_flow_api.component_end;
end;
/
