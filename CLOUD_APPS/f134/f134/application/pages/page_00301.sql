prompt --application/pages/page_00301
begin
--   Manifest
--     PAGE: 00301
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
 p_id=>301
,p_user_interface_id=>wwv_flow_api.id(5783577205373975152)
,p_name=>'Create Project Wizard Step 2'
,p_page_mode=>'MODAL'
,p_step_title=>'Create a Project'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_api.id(6781101375889890768)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(7306166303644991446)
,p_dialog_attributes=>'resizable:true'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'SHAKEEB'
,p_last_upd_yyyymmddhh24miss=>'20191029063224'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(11347038881609087550)
,p_plug_name=>'Wizard Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(6781104860657890779)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(11676660410898615935)
,p_plug_name=>'Create Project Wizard Container'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-WizardSteps--displayLabels'
,p_plug_template=>wwv_flow_api.id(6781104626075890777)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_01'
,p_list_id=>wwv_flow_api.id(11676590063018682874)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(6781133859764890851)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(11676661520777615941)
,p_plug_name=>'Form Items'
,p_region_template_options=>'#DEFAULT#:t-Form--stretchInputs'
,p_plug_template=>wwv_flow_api.id(6781104626075890777)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(11712647523376445219)
,p_plug_name=>'Owner(s)'
,p_region_template_options=>'#DEFAULT#:t-Form--stretchInputs'
,p_plug_template=>wwv_flow_api.id(6781104626075890777)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(11676660797673615939)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(11347038881609087550)
,p_button_name=>'Cancel'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(6781135529450890864)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(11676661138805615940)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(11347038881609087550)
,p_button_name=>'Next'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--gapLeft'
,p_button_template_id=>wwv_flow_api.id(6781134954745890861)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Next'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_icon_css_classes=>'fa-chevron-right'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(11347038351838087545)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(11347038881609087550)
,p_button_name=>'Previous'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(6781134785393890859)
,p_button_image_alt=>'Previous'
,p_button_position=>'REGION_TEMPLATE_PREVIOUS'
,p_button_redirect_url=>'f?p=&APP_ID.:300:&SESSION.::&DEBUG.:RP::'
,p_icon_css_classes=>'fa-chevron-left'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(11676662814857615944)
,p_branch_name=>'Go to Next Step'
,p_branch_action=>'f?p=&APP_ID.:302:&SESSION.::&DEBUG.:RP::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(11676661138805615940)
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(11710400167010998229)
,p_name=>'P301_ACL_STATUS_LEVEL'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(11676661520777615941)
,p_prompt=>'Access Control'
,p_source=>'eba_proj_fw.get_preference_value(p_preference_name => ''DEFAULT_PROJECT_ACL'');'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'PROJECT ACL LEVELS'
,p_lov=>'.'||wwv_flow_api.id(11154171524619972300)||'.'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(6899231939251612225)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(11712647815385445223)
,p_name=>'P301_PROJECT_OWNER'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(11712647523376445219)
,p_item_default=>'lower(:app_user)'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Person'
,p_display_as=>'NATIVE_AUTO_COMPLETE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select username',
'from eba_proj_status_users',
'order by lower(username)'))
,p_cSize=>64
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(6899231939251612225)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_help_text=>'Identify project owners.'
,p_attribute_01=>'CONTAINS_IGNORE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(11712648804119445227)
,p_name=>'P301_PROJECT_OWNER2'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_api.id(11712647523376445219)
,p_prompt=>'Project Owner 2'
,p_display_as=>'NATIVE_AUTO_COMPLETE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select username',
'from eba_proj_status_users',
'order by lower(username)'))
,p_cSize=>64
,p_cMaxlength=>255
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_api.id(6781134578441890854)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_attribute_01=>'CONTAINS_IGNORE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(11712649635701445229)
,p_name=>'P301_PROJECT_OWNER3'
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_api.id(11712647523376445219)
,p_prompt=>'Project Owner 3'
,p_display_as=>'NATIVE_AUTO_COMPLETE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select username',
'from eba_proj_status_users',
'order by lower(username)'))
,p_cSize=>64
,p_cMaxlength=>255
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_api.id(6781134578441890854)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_attribute_01=>'CONTAINS_IGNORE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(11712650635092445230)
,p_name=>'P301_PROJECT_OWNER4'
,p_item_sequence=>330
,p_item_plug_id=>wwv_flow_api.id(11712647523376445219)
,p_prompt=>'Project Owner 4'
,p_display_as=>'NATIVE_AUTO_COMPLETE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select username',
'from eba_proj_status_users',
'order by lower(username)'))
,p_cSize=>64
,p_cMaxlength=>255
,p_cattributes_element=>'style="display: none"'
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_api.id(6781134578441890854)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_attribute_01=>'CONTAINS_IGNORE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(11712651527439445231)
,p_name=>'P301_PROJECT_OWNER5'
,p_item_sequence=>360
,p_item_plug_id=>wwv_flow_api.id(11712647523376445219)
,p_prompt=>'Project Owner 5'
,p_display_as=>'NATIVE_AUTO_COMPLETE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select username',
'from eba_proj_status_users',
'order by lower(username)'))
,p_cSize=>64
,p_cMaxlength=>255
,p_cattributes_element=>'style="display: none"'
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_api.id(6781134578441890854)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_attribute_01=>'CONTAINS_IGNORE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(11712652468506445232)
,p_name=>'P301_PROJECT_OWNER6'
,p_item_sequence=>390
,p_item_plug_id=>wwv_flow_api.id(11712647523376445219)
,p_prompt=>'Project Owner 6'
,p_display_as=>'NATIVE_AUTO_COMPLETE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select username',
'from eba_proj_status_users',
'order by lower(username)'))
,p_cSize=>64
,p_cMaxlength=>255
,p_cattributes_element=>'style="display: none"'
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_api.id(6781134578441890854)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_attribute_01=>'CONTAINS_IGNORE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(11712653340702445234)
,p_name=>'P301_PROJECT_OWNER7'
,p_item_sequence=>420
,p_item_plug_id=>wwv_flow_api.id(11712647523376445219)
,p_prompt=>'Project Owner 7'
,p_display_as=>'NATIVE_AUTO_COMPLETE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select username',
'from eba_proj_status_users',
'order by lower(username)'))
,p_cSize=>64
,p_cMaxlength=>255
,p_cattributes_element=>'style="display: none"'
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_api.id(6781134578441890854)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_attribute_01=>'CONTAINS_IGNORE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(11712664219978445236)
,p_name=>'P301_PROJECT_OWNER8'
,p_item_sequence=>450
,p_item_plug_id=>wwv_flow_api.id(11712647523376445219)
,p_prompt=>'Project Owner 8'
,p_display_as=>'NATIVE_AUTO_COMPLETE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select username',
'from eba_proj_status_users',
'order by lower(username)'))
,p_cSize=>64
,p_cMaxlength=>255
,p_cattributes_element=>'style="display: none"'
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_api.id(6781134578441890854)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_attribute_01=>'CONTAINS_IGNORE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(11712665156927445237)
,p_name=>'P301_PROJECT_OWNER9'
,p_item_sequence=>480
,p_item_plug_id=>wwv_flow_api.id(11712647523376445219)
,p_prompt=>'Project Owner 9'
,p_display_as=>'NATIVE_AUTO_COMPLETE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select username',
'from eba_proj_status_users',
'order by lower(username)'))
,p_cSize=>64
,p_cMaxlength=>255
,p_cattributes_element=>'style="display: none"'
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_api.id(6781134578441890854)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_attribute_01=>'CONTAINS_IGNORE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(11712666024880445239)
,p_name=>'P301_PROJECT_OWNER10'
,p_item_sequence=>510
,p_item_plug_id=>wwv_flow_api.id(11712647523376445219)
,p_prompt=>'Project Owner 10'
,p_display_as=>'NATIVE_AUTO_COMPLETE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select username',
'from eba_proj_status_users',
'order by lower(username)'))
,p_cSize=>64
,p_cMaxlength=>255
,p_cattributes_element=>'style="display: none"'
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_api.id(6781134578441890854)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_attribute_01=>'CONTAINS_IGNORE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(11712666947911445241)
,p_name=>'P301_PROJECT_OWNER11'
,p_item_sequence=>540
,p_item_plug_id=>wwv_flow_api.id(11712647523376445219)
,p_prompt=>'Project Owner 11'
,p_display_as=>'NATIVE_AUTO_COMPLETE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select username',
'from eba_proj_status_users',
'order by lower(username)'))
,p_cSize=>64
,p_cMaxlength=>255
,p_cattributes_element=>'style="display: none"'
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_api.id(6781134578441890854)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_attribute_01=>'CONTAINS_IGNORE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(11712667890826445242)
,p_name=>'P301_PROJECT_OWNER12'
,p_item_sequence=>570
,p_item_plug_id=>wwv_flow_api.id(11712647523376445219)
,p_prompt=>'Project Owner 12'
,p_display_as=>'NATIVE_AUTO_COMPLETE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select username',
'from eba_proj_status_users',
'order by lower(username)'))
,p_cSize=>64
,p_cMaxlength=>255
,p_cattributes_element=>'style="display: none"'
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_api.id(6781134578441890854)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_attribute_01=>'CONTAINS_IGNORE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(11717562728533674562)
,p_name=>'P301_OWNER_ROLE'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(11712647523376445219)
,p_prompt=>'Project Role'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select id',
'  from eba_proj_roles',
' where name = ''Project Manager'''))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'PROJECT ROLES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select name as d,',
'       id as r',
'  from eba_proj_roles',
' order by 1'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(6899231939251612225)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Select the appropriate role for this project owner. Contact your application administrator to add new role(s).'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(11717562912398674563)
,p_name=>'P301_OWNER_ROLE2'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_api.id(11712647523376445219)
,p_prompt=>'Owner role'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'PROJECT ROLES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select name as d,',
'       id as r',
'  from eba_proj_roles',
' order by 1'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_api.id(6781134578441890854)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(11717562919761674564)
,p_name=>'P301_OWNER_ACL'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_api.id(11712647523376445219)
,p_item_default=>'3'
,p_prompt=>'Access Level'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'ROLE ACCESS LEVELS'
,p_lov=>'.'||wwv_flow_api.id(11727021805039159216)||'.'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(6899231939251612225)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_help_text=>'Select the appropriate access level for this project owner. Contact your application administrator to add new access level(s).'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(11717563032192674565)
,p_name=>'P301_OWNER_ACL2'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_api.id(11712647523376445219)
,p_prompt=>'Owner acl'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'ROLE ACCESS LEVELS'
,p_lov=>'.'||wwv_flow_api.id(11727021805039159216)||'.'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_api.id(6781134578441890854)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(11717563209228674566)
,p_name=>'P301_OWNER_ROLE3'
,p_item_sequence=>310
,p_item_plug_id=>wwv_flow_api.id(11712647523376445219)
,p_prompt=>'Owner role'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'PROJECT ROLES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select name as d,',
'       id as r',
'  from eba_proj_roles',
' order by 1'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_api.id(6781134578441890854)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(11717563268830674567)
,p_name=>'P301_OWNER_ACL3'
,p_item_sequence=>320
,p_item_plug_id=>wwv_flow_api.id(11712647523376445219)
,p_prompt=>'Owner acl'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'ROLE ACCESS LEVELS'
,p_lov=>'.'||wwv_flow_api.id(11727021805039159216)||'.'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_api.id(6781134578441890854)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(11717563402285674568)
,p_name=>'P301_OWNER_ROLE4'
,p_item_sequence=>340
,p_item_plug_id=>wwv_flow_api.id(11712647523376445219)
,p_prompt=>'Owner role'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'PROJECT ROLES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select name as d,',
'       id as r',
'  from eba_proj_roles',
' order by 1'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_cattributes_element=>'style="display: none"'
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_api.id(6781134578441890854)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(11717563489093674569)
,p_name=>'P301_OWNER_ROLE5'
,p_item_sequence=>370
,p_item_plug_id=>wwv_flow_api.id(11712647523376445219)
,p_prompt=>'Owner role'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'PROJECT ROLES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select name as d,',
'       id as r',
'  from eba_proj_roles',
' order by 1'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_cattributes_element=>'style="display: none"'
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_api.id(6781134578441890854)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(11717563607474674570)
,p_name=>'P301_OWNER_ROLE6'
,p_item_sequence=>400
,p_item_plug_id=>wwv_flow_api.id(11712647523376445219)
,p_prompt=>'Owner role'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'PROJECT ROLES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select name as d,',
'       id as r',
'  from eba_proj_roles',
' order by 1'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_cattributes_element=>'style="display: none"'
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_api.id(6781134578441890854)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(11717563701863674571)
,p_name=>'P301_OWNER_ROLE7'
,p_item_sequence=>430
,p_item_plug_id=>wwv_flow_api.id(11712647523376445219)
,p_prompt=>'Owner role'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'PROJECT ROLES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select name as d,',
'       id as r',
'  from eba_proj_roles',
' order by 1'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_cattributes_element=>'style="display: none"'
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_api.id(6781134578441890854)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(11717563783917674572)
,p_name=>'P301_OWNER_ROLE8'
,p_item_sequence=>460
,p_item_plug_id=>wwv_flow_api.id(11712647523376445219)
,p_prompt=>'Owner role'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'PROJECT ROLES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select name as d,',
'       id as r',
'  from eba_proj_roles',
' order by 1'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_cattributes_element=>'style="display: none"'
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_api.id(6781134578441890854)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(11717563847945674573)
,p_name=>'P301_OWNER_ROLE9'
,p_item_sequence=>490
,p_item_plug_id=>wwv_flow_api.id(11712647523376445219)
,p_prompt=>'Owner role'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'PROJECT ROLES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select name as d,',
'       id as r',
'  from eba_proj_roles',
' order by 1'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_cattributes_element=>'style="display: none"'
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_api.id(6781134578441890854)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(11717563933152674574)
,p_name=>'P301_OWNER_ROLE10'
,p_item_sequence=>520
,p_item_plug_id=>wwv_flow_api.id(11712647523376445219)
,p_prompt=>'Owner role'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'PROJECT ROLES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select name as d,',
'       id as r',
'  from eba_proj_roles',
' order by 1'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_cattributes_element=>'style="display: none"'
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_api.id(6781134578441890854)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(11717564085375674575)
,p_name=>'P301_OWNER_ROLE11'
,p_item_sequence=>550
,p_item_plug_id=>wwv_flow_api.id(11712647523376445219)
,p_prompt=>'Owner role'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'PROJECT ROLES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select name as d,',
'       id as r',
'  from eba_proj_roles',
' order by 1'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_cattributes_element=>'style="display: none"'
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_api.id(6781134578441890854)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(11717564135906674576)
,p_name=>'P301_OWNER_ROLE12'
,p_item_sequence=>580
,p_item_plug_id=>wwv_flow_api.id(11712647523376445219)
,p_prompt=>'Owner role'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'PROJECT ROLES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select name as d,',
'       id as r',
'  from eba_proj_roles',
' order by 1'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_cattributes_element=>'style="display: none"'
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_api.id(6781134578441890854)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(11717564303749674577)
,p_name=>'P301_OWNER_ACL4'
,p_item_sequence=>350
,p_item_plug_id=>wwv_flow_api.id(11712647523376445219)
,p_prompt=>'Owner acl'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'ROLE ACCESS LEVELS'
,p_lov=>'.'||wwv_flow_api.id(11727021805039159216)||'.'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_cattributes_element=>'style="display: none"'
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_api.id(6781134578441890854)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(11717564405516674578)
,p_name=>'P301_OWNER_ACL5'
,p_item_sequence=>380
,p_item_plug_id=>wwv_flow_api.id(11712647523376445219)
,p_prompt=>'Owner acl'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'ROLE ACCESS LEVELS'
,p_lov=>'.'||wwv_flow_api.id(11727021805039159216)||'.'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_cattributes_element=>'style="display: none"'
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_api.id(6781134578441890854)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(11730656670393656429)
,p_name=>'P301_OWNER_ACL6'
,p_item_sequence=>410
,p_item_plug_id=>wwv_flow_api.id(11712647523376445219)
,p_prompt=>'Owner acl'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'ROLE ACCESS LEVELS'
,p_lov=>'.'||wwv_flow_api.id(11727021805039159216)||'.'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_cattributes_element=>'style="display: none"'
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_api.id(6781134578441890854)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(11730656795435656430)
,p_name=>'P301_OWNER_ACL7'
,p_item_sequence=>440
,p_item_plug_id=>wwv_flow_api.id(11712647523376445219)
,p_prompt=>'Owner acl'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'ROLE ACCESS LEVELS'
,p_lov=>'.'||wwv_flow_api.id(11727021805039159216)||'.'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_cattributes_element=>'style="display: none"'
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_api.id(6781134578441890854)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(11730656862445656431)
,p_name=>'P301_OWNER_ACL8'
,p_item_sequence=>470
,p_item_plug_id=>wwv_flow_api.id(11712647523376445219)
,p_prompt=>'Owner acl'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'ROLE ACCESS LEVELS'
,p_lov=>'.'||wwv_flow_api.id(11727021805039159216)||'.'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_cattributes_element=>'style="display: none"'
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_api.id(6781134578441890854)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(11730657009529656432)
,p_name=>'P301_OWNER_ACL9'
,p_item_sequence=>500
,p_item_plug_id=>wwv_flow_api.id(11712647523376445219)
,p_prompt=>'Owner acl'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'ROLE ACCESS LEVELS'
,p_lov=>'.'||wwv_flow_api.id(11727021805039159216)||'.'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_cattributes_element=>'style="display: none"'
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_api.id(6781134578441890854)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(11730657095994656433)
,p_name=>'P301_OWNER_ACL10'
,p_item_sequence=>530
,p_item_plug_id=>wwv_flow_api.id(11712647523376445219)
,p_prompt=>'Owner acl'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'ROLE ACCESS LEVELS'
,p_lov=>'.'||wwv_flow_api.id(11727021805039159216)||'.'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_cattributes_element=>'style="display: none"'
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_api.id(6781134578441890854)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(11730657188868656434)
,p_name=>'P301_OWNER_ACL11'
,p_item_sequence=>560
,p_item_plug_id=>wwv_flow_api.id(11712647523376445219)
,p_prompt=>'Owner acl'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'ROLE ACCESS LEVELS'
,p_lov=>'.'||wwv_flow_api.id(11727021805039159216)||'.'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_cattributes_element=>'style="display: none"'
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_api.id(6781134578441890854)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(11730657262041656435)
,p_name=>'P301_OWNER_ACL12'
,p_item_sequence=>590
,p_item_plug_id=>wwv_flow_api.id(11712647523376445219)
,p_prompt=>'Owner acl'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'ROLE ACCESS LEVELS'
,p_lov=>'.'||wwv_flow_api.id(11727021805039159216)||'.'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_cattributes_element=>'style="display: none"'
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_api.id(6781134578441890854)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(17877351673197695368)
,p_name=>'P301_RESTRICT_MS_AI_MGT'
,p_item_sequence=>600
,p_item_plug_id=>wwv_flow_api.id(11676661520777615941)
,p_prompt=>'Prevent Changes'
,p_source=>'eba_proj_fw.get_preference_value(p_preference_name => ''DEFAULT_PJCT_RESTRICT_CHANGES'');'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_YES_NO'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(6899231939251612225)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_protection_level=>'S'
,p_required_patch=>wwv_flow_api.id(16977114217035413845)
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'If this is a restricted project, setting this to Yes will prevent users who only have Edit privileges on the project (either explicitly or through their assigned role) from editing project details and most aspects of milestones and action items.',
'</p>',
'<p>',
'For an open project, setting this to Yes will require users to have Admin rights to the application in order to edit project details and most aspects of milestones and action items.',
'</p>'))
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(11916208514071762836)
,p_validation_name=>'Check Required Fields'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    if :P301_PROJECT_OWNER is not null and (:P301_OWNER_ROLE is null or :P301_OWNER_ACL is null) then',
'        return false;',
'    elsif :P301_PROJECT_OWNER2 is not null and (:P301_OWNER_ROLE2 is null or :P301_OWNER_ACL2 is null) then',
'        return false;',
'    elsif :P301_PROJECT_OWNER3 is not null and (:P301_OWNER_ROLE3 is null or :P301_OWNER_ACL3 is null) then',
'        return false;',
'    elsif :P301_PROJECT_OWNER4 is not null and (:P301_OWNER_ROLE4 is null or :P301_OWNER_ACL4 is null) then',
'        return false;',
'    elsif :P301_PROJECT_OWNER5 is not null and (:P301_OWNER_ROLE5 is null or :P301_OWNER_ACL5 is null) then',
'        return false;',
'    elsif :P301_PROJECT_OWNER6 is not null and (:P301_OWNER_ROLE6 is null or :P301_OWNER_ACL6 is null) then',
'        return false;',
'    elsif :P301_PROJECT_OWNER7 is not null and (:P301_OWNER_ROLE7 is null or :P301_OWNER_ACL7 is null) then',
'        return false;',
'    elsif :P301_PROJECT_OWNER8 is not null and (:P301_OWNER_ROLE8 is null or :P301_OWNER_ACL8 is null) then',
'        return false;',
'    elsif :P301_PROJECT_OWNER9 is not null and (:P301_OWNER_ROLE9 is null or :P301_OWNER_ACL9 is null) then',
'        return false;',
'    elsif :P301_PROJECT_OWNER10 is not null and (:P301_OWNER_ROLE10 is null or :P301_OWNER_ACL10 is null) then',
'        return false;',
'    elsif :P301_PROJECT_OWNER11 is not null and (:P301_OWNER_ROLE11 is null or :P301_OWNER_ACL11 is null) then',
'        return false;',
'    elsif :P301_PROJECT_OWNER12 is not null and (:P301_OWNER_ROLE12 is null or :P301_OWNER_ACL12 is null) then',
'        return false;',
'    else',
'        return true;',
'    end if;',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'A role and access level must be specified for each user.'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
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
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(20718036621167235257)
,p_validation_name=>'P301_PROJECT_OWNER Email Username is valid'
,p_validation_sequence=>20
,p_validation=>'P301_PROJECT_OWNER'
,p_validation2=>'^[-!#$%&''''''''*+/0-9=?A-Z^_a-z{|}~](\.?[-!#$%&''''''''*+/0-9=?A-Z^_a-z{|}~])*@(-?[a-zA-Z0-9+])+(\.(-?[a-zA-Z0-9+])*)+$'
,p_validation_type=>'REGULAR_EXPRESSION'
,p_error_message=>'Username is not in a valid email address format. Either enter an email address or have your application administrator change the application''s username format to "Non-Email Address".'
,p_validation_condition=>':P301_PROJECT_OWNER is not null and eba_proj_fw.get_preference_value (''USERNAME_FORMAT'') = ''EMAIL'''
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'EXPRESSION'
,p_when_button_pressed=>wwv_flow_api.id(11676661138805615940)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(20398325314146735555)
,p_validation_name=>'P301_PROJECT_OWNER2 Email Username is valid'
,p_validation_sequence=>30
,p_validation=>'P301_PROJECT_OWNER2'
,p_validation2=>'^[-!#$%&''''''''*+/0-9=?A-Z^_a-z{|}~](\.?[-!#$%&''''''''*+/0-9=?A-Z^_a-z{|}~])*@(-?[a-zA-Z0-9+])+(\.(-?[a-zA-Z0-9+])*)+$'
,p_validation_type=>'REGULAR_EXPRESSION'
,p_error_message=>'Username is not in a valid email address format. Either enter an email address or have your application administrator change the application''s username format to "Non-Email Address".'
,p_validation_condition=>':P301_PROJECT_OWNER2 is not null and eba_proj_fw.get_preference_value (''USERNAME_FORMAT'') = ''EMAIL'''
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'EXPRESSION'
,p_when_button_pressed=>wwv_flow_api.id(11676661138805615940)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(20398325508795735556)
,p_validation_name=>'P301_PROJECT_OWNER3 Email Username is valid'
,p_validation_sequence=>40
,p_validation=>'P301_PROJECT_OWNER3'
,p_validation2=>'^[-!#$%&''''''''*+/0-9=?A-Z^_a-z{|}~](\.?[-!#$%&''''''''*+/0-9=?A-Z^_a-z{|}~])*@(-?[a-zA-Z0-9+])+(\.(-?[a-zA-Z0-9+])*)+$'
,p_validation_type=>'REGULAR_EXPRESSION'
,p_error_message=>'Username is not in a valid email address format. Either enter an email address or have your application administrator change the application''s username format to "Non-Email Address".'
,p_validation_condition=>':P301_PROJECT_OWNER3 is not null and eba_proj_fw.get_preference_value (''USERNAME_FORMAT'') = ''EMAIL'''
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'EXPRESSION'
,p_when_button_pressed=>wwv_flow_api.id(11676661138805615940)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(20398325591599735557)
,p_validation_name=>'P301_PROJECT_OWNER4 Email Username is valid'
,p_validation_sequence=>50
,p_validation=>'P301_PROJECT_OWNER4'
,p_validation2=>'^[-!#$%&''''''''*+/0-9=?A-Z^_a-z{|}~](\.?[-!#$%&''''''''*+/0-9=?A-Z^_a-z{|}~])*@(-?[a-zA-Z0-9+])+(\.(-?[a-zA-Z0-9+])*)+$'
,p_validation_type=>'REGULAR_EXPRESSION'
,p_error_message=>'Username is not in a valid email address format. Either enter an email address or have your application administrator change the application''s username format to "Non-Email Address".'
,p_validation_condition=>':P301_PROJECT_OWNER4 is not null and eba_proj_fw.get_preference_value (''USERNAME_FORMAT'') = ''EMAIL'''
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'EXPRESSION'
,p_when_button_pressed=>wwv_flow_api.id(11676661138805615940)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(20398325710932735558)
,p_validation_name=>'P301_PROJECT_OWNER5 Email Username is valid'
,p_validation_sequence=>60
,p_validation=>'P301_PROJECT_OWNER5'
,p_validation2=>'^[-!#$%&''''''''*+/0-9=?A-Z^_a-z{|}~](\.?[-!#$%&''''''''*+/0-9=?A-Z^_a-z{|}~])*@(-?[a-zA-Z0-9+])+(\.(-?[a-zA-Z0-9+])*)+$'
,p_validation_type=>'REGULAR_EXPRESSION'
,p_error_message=>'Username is not in a valid email address format. Either enter an email address or have your application administrator change the application''s username format to "Non-Email Address".'
,p_validation_condition=>':P301_PROJECT_OWNER5 is not null and eba_proj_fw.get_preference_value (''USERNAME_FORMAT'') = ''EMAIL'''
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'EXPRESSION'
,p_when_button_pressed=>wwv_flow_api.id(11676661138805615940)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(20398325751247735559)
,p_validation_name=>'P301_PROJECT_OWNER6 Email Username is valid'
,p_validation_sequence=>70
,p_validation=>'P301_PROJECT_OWNER6'
,p_validation2=>'^[-!#$%&''''''''*+/0-9=?A-Z^_a-z{|}~](\.?[-!#$%&''''''''*+/0-9=?A-Z^_a-z{|}~])*@(-?[a-zA-Z0-9+])+(\.(-?[a-zA-Z0-9+])*)+$'
,p_validation_type=>'REGULAR_EXPRESSION'
,p_error_message=>'Username is not in a valid email address format. Either enter an email address or have your application administrator change the application''s username format to "Non-Email Address".'
,p_validation_condition=>':P301_PROJECT_OWNER6 is not null and eba_proj_fw.get_preference_value (''USERNAME_FORMAT'') = ''EMAIL'''
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'EXPRESSION'
,p_when_button_pressed=>wwv_flow_api.id(11676661138805615940)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(20398325881576735560)
,p_validation_name=>'P301_PROJECT_OWNER7 Email Username is valid'
,p_validation_sequence=>80
,p_validation=>'P301_PROJECT_OWNER7'
,p_validation2=>'^[-!#$%&''''''''*+/0-9=?A-Z^_a-z{|}~](\.?[-!#$%&''''''''*+/0-9=?A-Z^_a-z{|}~])*@(-?[a-zA-Z0-9+])+(\.(-?[a-zA-Z0-9+])*)+$'
,p_validation_type=>'REGULAR_EXPRESSION'
,p_error_message=>'Username is not in a valid email address format. Either enter an email address or have your application administrator change the application''s username format to "Non-Email Address".'
,p_validation_condition=>':P301_PROJECT_OWNER7 is not null and eba_proj_fw.get_preference_value (''USERNAME_FORMAT'') = ''EMAIL'''
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'EXPRESSION'
,p_when_button_pressed=>wwv_flow_api.id(11676661138805615940)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(20398325924656735561)
,p_validation_name=>'P301_PROJECT_OWNER8 Email Username is valid'
,p_validation_sequence=>90
,p_validation=>'P301_PROJECT_OWNER8'
,p_validation2=>'^[-!#$%&''''''''*+/0-9=?A-Z^_a-z{|}~](\.?[-!#$%&''''''''*+/0-9=?A-Z^_a-z{|}~])*@(-?[a-zA-Z0-9+])+(\.(-?[a-zA-Z0-9+])*)+$'
,p_validation_type=>'REGULAR_EXPRESSION'
,p_error_message=>'Username is not in a valid email address format. Either enter an email address or have your application administrator change the application''s username format to "Non-Email Address".'
,p_validation_condition=>':P301_PROJECT_OWNER8 is not null and eba_proj_fw.get_preference_value (''USERNAME_FORMAT'') = ''EMAIL'''
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'EXPRESSION'
,p_when_button_pressed=>wwv_flow_api.id(11676661138805615940)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(20398326091302735562)
,p_validation_name=>'P301_PROJECT_OWNER9 Email Username is valid'
,p_validation_sequence=>100
,p_validation=>'P301_PROJECT_OWNER9'
,p_validation2=>'^[-!#$%&''''''''*+/0-9=?A-Z^_a-z{|}~](\.?[-!#$%&''''''''*+/0-9=?A-Z^_a-z{|}~])*@(-?[a-zA-Z0-9+])+(\.(-?[a-zA-Z0-9+])*)+$'
,p_validation_type=>'REGULAR_EXPRESSION'
,p_error_message=>'Username is not in a valid email address format. Either enter an email address or have your application administrator change the application''s username format to "Non-Email Address".'
,p_validation_condition=>':P301_PROJECT_OWNER9 is not null and eba_proj_fw.get_preference_value (''USERNAME_FORMAT'') = ''EMAIL'''
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'EXPRESSION'
,p_when_button_pressed=>wwv_flow_api.id(11676661138805615940)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(20398326250697735564)
,p_validation_name=>'P301_PROJECT_OWNER10 Email Username is valid'
,p_validation_sequence=>110
,p_validation=>'P301_PROJECT_OWNER10'
,p_validation2=>'^[-!#$%&''''''''*+/0-9=?A-Z^_a-z{|}~](\.?[-!#$%&''''''''*+/0-9=?A-Z^_a-z{|}~])*@(-?[a-zA-Z0-9+])+(\.(-?[a-zA-Z0-9+])*)+$'
,p_validation_type=>'REGULAR_EXPRESSION'
,p_error_message=>'Username is not in a valid email address format. Either enter an email address or have your application administrator change the application''s username format to "Non-Email Address".'
,p_validation_condition=>':P301_PROJECT_OWNER10 is not null and eba_proj_fw.get_preference_value (''USERNAME_FORMAT'') = ''EMAIL'''
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'EXPRESSION'
,p_when_button_pressed=>wwv_flow_api.id(11676661138805615940)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(20398326362013735565)
,p_validation_name=>'P301_PROJECT_OWNER11 Email Username is valid'
,p_validation_sequence=>120
,p_validation=>'P301_PROJECT_OWNER11'
,p_validation2=>'^[-!#$%&''''''''*+/0-9=?A-Z^_a-z{|}~](\.?[-!#$%&''''''''*+/0-9=?A-Z^_a-z{|}~])*@(-?[a-zA-Z0-9+])+(\.(-?[a-zA-Z0-9+])*)+$'
,p_validation_type=>'REGULAR_EXPRESSION'
,p_error_message=>'Username is not in a valid email address format. Either enter an email address or have your application administrator change the application''s username format to "Non-Email Address".'
,p_validation_condition=>':P301_PROJECT_OWNER11 is not null and eba_proj_fw.get_preference_value (''USERNAME_FORMAT'') = ''EMAIL'''
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'EXPRESSION'
,p_when_button_pressed=>wwv_flow_api.id(11676661138805615940)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(20398326522937735567)
,p_validation_name=>'P301_PROJECT_OWNER12 Email Username is valid'
,p_validation_sequence=>130
,p_validation=>'P301_PROJECT_OWNER12'
,p_validation2=>'^[-!#$%&''''''''*+/0-9=?A-Z^_a-z{|}~](\.?[-!#$%&''''''''*+/0-9=?A-Z^_a-z{|}~])*@(-?[a-zA-Z0-9+])+(\.(-?[a-zA-Z0-9+])*)+$'
,p_validation_type=>'REGULAR_EXPRESSION'
,p_error_message=>'Username is not in a valid email address format. Either enter an email address or have your application administrator change the application''s username format to "Non-Email Address".'
,p_validation_condition=>':P301_PROJECT_OWNER12 is not null and eba_proj_fw.get_preference_value (''USERNAME_FORMAT'') = ''EMAIL'''
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'EXPRESSION'
,p_when_button_pressed=>wwv_flow_api.id(11676661138805615940)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(11575123268968865360)
,p_name=>'Set ACL Level 1'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P301_OWNER_ROLE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(11575123315204865361)
,p_event_id=>wwv_flow_api.id(11575123268968865360)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P301_OWNER_ACL'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select default_acl_status_level',
'from eba_proj_roles',
'where id = :P301_OWNER_ROLE'))
,p_attribute_07=>'P301_OWNER_ROLE'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(11575133670660865364)
,p_name=>'Set ACL Level 2'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P301_OWNER_ROLE2'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(11575133765241865365)
,p_event_id=>wwv_flow_api.id(11575133670660865364)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P301_OWNER_ACL2'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select default_acl_status_level',
'from eba_proj_roles',
'where id = :P301_OWNER_ROLE2'))
,p_attribute_07=>'P301_OWNER_ROLE2'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(11575133864713865366)
,p_name=>'Set ACL Level 3'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P301_OWNER_ROLE3'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(11575133943676865367)
,p_event_id=>wwv_flow_api.id(11575133864713865366)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P301_OWNER_ACL3'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select default_acl_status_level',
'from eba_proj_roles',
'where id = :P301_OWNER_ROLE3'))
,p_attribute_07=>'P301_OWNER_ROLE3'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(11717560234189674537)
,p_name=>'Cancel Wizard'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(11676660797673615939)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(11717560403099674538)
,p_event_id=>wwv_flow_api.id(11717560234189674537)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(11575134015285865368)
,p_name=>'Set ACL Level 4'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P301_OWNER_ROLE4'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(11575134181113865369)
,p_event_id=>wwv_flow_api.id(11575134015285865368)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P301_OWNER_ACL4'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select default_acl_status_level',
'from eba_proj_roles',
'where id = :P301_OWNER_ROLE4'))
,p_attribute_07=>'P301_OWNER_ROLE4'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(11575134299677865370)
,p_name=>'Set ACL Level 5'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P301_OWNER_ROLE5'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(11575134395475865371)
,p_event_id=>wwv_flow_api.id(11575134299677865370)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P301_OWNER_ACL5'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select default_acl_status_level',
'from eba_proj_roles',
'where id = :P301_OWNER_ROLE5'))
,p_attribute_07=>'P301_OWNER_ROLE5'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(11575134485739865372)
,p_name=>'Set ACL Level 6'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P301_OWNER_ROLE6'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(11575134546267865373)
,p_event_id=>wwv_flow_api.id(11575134485739865372)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P301_OWNER_ACL6'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select default_acl_status_level',
'from eba_proj_roles',
'where id = :P301_OWNER_ROLE6'))
,p_attribute_07=>'P301_OWNER_ROLE6'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(11575134646465865374)
,p_name=>'Set ACL Level 7'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P301_OWNER_ROLE7'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(11575134720137865375)
,p_event_id=>wwv_flow_api.id(11575134646465865374)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P301_OWNER_ACL7'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select default_acl_status_level',
'from eba_proj_roles',
'where id = :P301_OWNER_ROLE7'))
,p_attribute_07=>'P301_OWNER_ROLE7'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(11575134840857865376)
,p_name=>'Set ACL Level 8'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P301_OWNER_ROLE8'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(11575134965246865377)
,p_event_id=>wwv_flow_api.id(11575134840857865376)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P301_OWNER_ACL8'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select default_acl_status_level',
'from eba_proj_roles',
'where id = :P301_OWNER_ROLE8'))
,p_attribute_07=>'P301_OWNER_ROLE8'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(11575135061296865378)
,p_name=>'Set ACL Level 90'
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P301_OWNER_ROLE9'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(11916207904705762829)
,p_event_id=>wwv_flow_api.id(11575135061296865378)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P301_OWNER_ACL9'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select default_acl_status_level',
'from eba_proj_roles',
'where id = :P301_OWNER_ROLE9'))
,p_attribute_07=>'P301_OWNER_ROLE9'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(11916207968368762830)
,p_name=>'Set ACL Level 10'
,p_event_sequence=>100
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P301_OWNER_ROLE10'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(11916208047703762831)
,p_event_id=>wwv_flow_api.id(11916207968368762830)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P301_OWNER_ACL10'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select default_acl_status_level',
'from eba_proj_roles',
'where id = :P301_OWNER_ROLE10'))
,p_attribute_07=>'P301_OWNER_ROLE10'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(11916208162050762832)
,p_name=>'Set ACL Level 11'
,p_event_sequence=>110
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P301_OWNER_ROLE11'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(11916208308599762833)
,p_event_id=>wwv_flow_api.id(11916208162050762832)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P301_OWNER_ACL11'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select default_acl_status_level',
'from eba_proj_roles',
'where id = :P301_OWNER_ROLE11'))
,p_attribute_07=>'P301_OWNER_ROLE11'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(11916208343946762834)
,p_name=>'Set ACL Level 12'
,p_event_sequence=>120
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P301_OWNER_ROLE12'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(11916208487336762835)
,p_event_id=>wwv_flow_api.id(11916208343946762834)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P301_OWNER_ACL12'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select default_acl_status_level',
'from eba_proj_roles',
'where id = :P301_OWNER_ROLE12'))
,p_attribute_07=>'P301_OWNER_ROLE12'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(12851573409635955451)
,p_name=>'Show Next User Row'
,p_event_sequence=>130
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P301_PROJECT_OWNER3, P301_PROJECT_OWNER4, P301_PROJECT_OWNER5, P301_PROJECT_OWNER6, P301_PROJECT_OWNER7, P301_PROJECT_OWNER8, P301_PROJECT_OWNER9, P301_PROJECT_OWNER10, P301_PROJECT_OWNER11'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'$v(this.triggeringElement).length > 0'
,p_bind_type=>'bind'
,p_bind_event_type=>'keyup'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(12851573438623955452)
,p_event_id=>wwv_flow_api.id(12851573409635955451)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(this.triggeringElement).closest(''.row'').next().find(''.col'').show();'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(13725713751697265774)
,p_name=>'Show/Hide Access Levels'
,p_event_sequence=>140
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P301_ACL_STATUS_LEVEL'
,p_condition_element=>'P301_ACL_STATUS_LEVEL'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'1'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(13725713839713265775)
,p_event_id=>wwv_flow_api.id(13725713751697265774)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P301_OWNER_ACL,P301_OWNER_ACL2,P301_OWNER_ACL3,P301_OWNER_ACL4,P301_OWNER_ACL5,P301_OWNER_ACL6,P301_OWNER_ACL7,P301_OWNER_ACL8,P301_OWNER_ACL9,P301_OWNER_ACL10,P301_OWNER_ACL11,P301_OWNER_ACL12'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(13725713925198265776)
,p_event_id=>wwv_flow_api.id(13725713751697265774)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P301_OWNER_ACL,P301_OWNER_ACL2,P301_OWNER_ACL3,P301_OWNER_ACL4,P301_OWNER_ACL5,P301_OWNER_ACL6,P301_OWNER_ACL7,P301_OWNER_ACL8,P301_OWNER_ACL9,P301_OWNER_ACL10,P301_OWNER_ACL11,P301_OWNER_ACL12'
,p_attribute_01=>'N'
);
wwv_flow_api.component_end;
end;
/
