prompt --application/pages/page_00090
begin
--   Manifest
--     PAGE: 00090
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
 p_id=>90
,p_user_interface_id=>wwv_flow_api.id(5783577205373975152)
,p_name=>'User Details'
,p_page_mode=>'MODAL'
,p_step_title=>'User Details'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_api.id(5956284394027947845)
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_inline_css=>'.t-Form-inputContainer span.display_only {font-weight: normal;}'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(7306165779537991444)
,p_dialog_chained=>'N'
,p_protection_level=>'C'
,p_help_text=>'Supply the mandatory form data and click the <strong>Add User</strong> button to add a new user. Click the <strong>Cancel</strong> button to return to the Access Control List page.'
,p_last_upd_yyyymmddhh24miss=>'20190902095201'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(525987691398977581)
,p_plug_name=>'Buttons'
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
 p_id=>wwv_flow_api.id(7868331594560200266)
,p_plug_name=>'User Details'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(6781104626075890777)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(6149506792091540375)
,p_plug_name=>'Information'
,p_parent_plug_id=>wwv_flow_api.id(7868331594560200266)
,p_region_css_classes=>'infoTextRegion'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(6781104626075890777)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if 1 = 2 then',
'-- if the user has no access indicate this; and inform admin that they need to change the access level for the use to have access',
'htp.prn(replace(',
'    apex_lang.message(''ACCESS_CONTROL_INFO''),',
'    ''#IMAGE_PREFIX''||''#'',',
'    :image_prefix));',
'end if;'))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(6149506999364542420)
,p_plug_name=>'Form Items'
,p_parent_plug_id=>wwv_flow_api.id(7868331594560200266)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(6781104626075890777)
,p_plug_display_sequence=>30
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(7868334393364200272)
,p_plug_name=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(6781117976757890807)
,p_plug_display_sequence=>60
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(8972392840601050532)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(6781135716305890867)
,p_plug_display_condition_type=>'NEVER'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(7868331982857200268)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(525987691398977581)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(6781135529450890864)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(7868331802151200268)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(525987691398977581)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--gapLeft'
,p_button_template_id=>wwv_flow_api.id(6781135529450890864)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'P90_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(7868332202392200268)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(525987691398977581)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--gapLeft'
,p_button_template_id=>wwv_flow_api.id(6781135529450890864)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add User'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'P90_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(7868332394025200268)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(525987691398977581)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>wwv_flow_api.id(6781135529450890864)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P90_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(2770634474074134245)
,p_name=>'P90_HOME_TIMEZONE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(6149506999364542420)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Home Timezone'
,p_source=>'HOME_TIMEZONE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct tzname d, tzname r',
'  from V$TIMEZONE_NAMES',
' order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select -'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(748281690398960066)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(2770634742188136733)
,p_name=>'P90_REGION_ID'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(6149506999364542420)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Region'
,p_source=>'REGION_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select d, r',
'from (  select ''- Select -'' d, null r, 1 o',
'        from dual',
'        union all',
'        select region_name d, id r, 2 o',
'        from eba_proj_regions )',
'order by o, lower(d)'))
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(748281690398960066)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(2770635008032139345)
,p_name=>'P90_COUNTRY_ID'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(6149506999364542420)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Country'
,p_source=>'COUNTRY_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select country_name||'' (''||country_code||'')'' d, id r',
'from eba_proj_countries c',
'where (nvl(:P90_REGION_ID,-1) = -1 or c.region_id = :P90_REGION_ID)'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select -'
,p_lov_cascade_parent_items=>'P90_REGION_ID'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(748281690398960066)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(2770635356805142029)
,p_name=>'P90_TEAM_GROUPS'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(6149506999364542420)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Team Groups'
,p_source=>'TEAM_GROUPS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_AUTO_COMPLETE'
,p_lov=>'select distinct team_groups from eba_proj_status_users'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(748281690398960066)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_required_patch=>wwv_flow_api.id(2770587393234575801)
,p_attribute_01=>'CONTAINS_IGNORE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(2770635667253144524)
,p_name=>'P90_SKILLSETS'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(6149506999364542420)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Skillset(s)'
,p_source=>'SKILLSETS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_AUTO_COMPLETE'
,p_lov=>'select distinct skillsets from eba_proj_status_users'
,p_cSize=>30
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(748281690398960066)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_required_patch=>wwv_flow_api.id(2770587552010580829)
,p_attribute_01=>'CONTAINS_IGNORE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(2770635938089149432)
,p_name=>'P90_BG_CHECKS'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(6149506999364542420)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Background Checks'
,p_source=>'BG_CHECKS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_AUTO_COMPLETE'
,p_lov=>'select distinct bg_checks from eba_proj_status_users'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(748281690398960066)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_required_patch=>wwv_flow_api.id(2770587737367599922)
,p_attribute_01=>'CONTAINS_IGNORE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(2770636277626151203)
,p_name=>'P90_HIPPA_CERT_DATE'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(6149506999364542420)
,p_use_cache_before_default=>'NO'
,p_prompt=>'HIPPA Certified On'
,p_source=>'HIPPA_CERT_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(748281690398960066)
,p_item_template_options=>'#DEFAULT#'
,p_required_patch=>wwv_flow_api.id(2770587954927608466)
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(7868332611297200269)
,p_name=>'P90_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(6149506999364542420)
,p_use_cache_before_default=>'NO'
,p_source=>'ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(7868332783922200270)
,p_name=>'P90_USERNAME'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(6149506999364542420)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Username'
,p_source=>'USERNAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>64
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(748281375605960061)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(7868332988682200270)
,p_name=>'P90_ACCESS_LEVEL_ID'
,p_is_required=>true
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(6149506999364542420)
,p_use_cache_before_default=>'NO'
,p_item_default=>'2'
,p_prompt=>'Access Level'
,p_source=>'ACCESS_LEVEL_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ACCESS_LEVEL as display_value, ID as return_value ',
'  from EBA_PROJ_STATUS_ACCESS_LEVELS',
'order by 2 desc'))
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(748281375605960061)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>When Access Control is enabled, Administrators have the ability to restrict access to certain application features, for authenticated users. P-Track supports the following 4 access levels; Reader, Contributor, Administrator, and Super Admin.<p>',
'<ul>',
'  <li><strong>Readers</strong> have read-only access to all project information and can also view reports.</li>',
'  <li><strong>Contributors</strong> can create, edit and delete projects and view reports.</li>',
'  <li><strong>Administrators</strong>, in addition to Contributor''s capability, can also perform configuration of access control, and installing or uninstalling sample data.</li>',
'  <li><strong>Super Admins</strong>, in addition to Administrator''s capability, can view and edit all projects, regardless of their restriction status.</li>',
'</ul>'))
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(7868333194545200270)
,p_name=>'P90_ACCOUNT_LOCKED'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(6149506999364542420)
,p_use_cache_before_default=>'NO'
,p_item_default=>'N'
,p_prompt=>'Account Locked?'
,p_source=>'ACCOUNT_LOCKED'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_YES_NO'
,p_begin_on_new_line=>'N'
,p_display_when=>'P90_ID'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_api.id(748281690398960066)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(7868333389874200270)
,p_name=>'P90_CREATED_BY'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_api.id(6149506999364542420)
,p_use_cache_before_default=>'NO'
,p_source=>'CREATED_BY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_display_when=>'P90_ID'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(7868333608979200271)
,p_name=>'P90_CREATED'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_api.id(6149506999364542420)
,p_use_cache_before_default=>'NO'
,p_source=>'CREATED'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_display_when=>'P90_ID'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(7868333801873200271)
,p_name=>'P90_UPDATED_BY'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_api.id(6149506999364542420)
,p_use_cache_before_default=>'NO'
,p_source=>'UPDATED_BY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_display_when=>'P90_ID'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(7868334010788200271)
,p_name=>'P90_UPDATED'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_api.id(6149506999364542420)
,p_use_cache_before_default=>'NO'
,p_source=>'UPDATED'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_display_when=>'P90_ID'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8331799623445072971)
,p_name=>'P90_EMAIL_ADDRESS'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(6149506999364542420)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Email'
,p_source=>'EMAIL_ADDRESS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>64
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(748281690398960066)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'EMAIL'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(11148689799135837192)
,p_name=>'P90_PHONE_01'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(6149506999364542420)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Phone 1'
,p_source=>'PHONE_01'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>64
,p_cMaxlength=>30
,p_field_template=>wwv_flow_api.id(748281690398960066)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEL'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(11148702833417758402)
,p_name=>'P90_TITLE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(6149506999364542420)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Title'
,p_source=>'TITLE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_colspan=>2
,p_field_template=>wwv_flow_api.id(748281690398960066)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(11148931919423840718)
,p_name=>'P90_PHONE_02'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(6149506999364542420)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Phone 2'
,p_source=>'PHONE_02'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>64
,p_cMaxlength=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(748281690398960066)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEL'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(11149296587259846724)
,p_name=>'P90_ADDRESS'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_api.id(6149506999364542420)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Address'
,p_source=>'ADDRESS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>255
,p_cHeight=>2
,p_field_template=>wwv_flow_api.id(748281690398960066)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(11149299953490849128)
,p_name=>'P90_NOTE'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_api.id(6149506999364542420)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Profile'
,p_source=>'NOTE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>255
,p_cHeight=>2
,p_field_template=>wwv_flow_api.id(748281690398960066)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(11149309671208771114)
,p_name=>'P90_ASSISTANT_NAME'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_api.id(6149506999364542420)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Assistant Name'
,p_source=>'ASSISTANT_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>64
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(748281690398960066)
,p_item_template_options=>'#DEFAULT#'
,p_required_patch=>wwv_flow_api.id(2814507098077253822)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(11149312183442773670)
,p_name=>'P90_ASSISTANT_PHONE'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_api.id(6149506999364542420)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Assistant Phone'
,p_source=>'ASSISTANT_PHONE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>64
,p_cMaxlength=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(748281690398960066)
,p_item_template_options=>'#DEFAULT#'
,p_required_patch=>wwv_flow_api.id(2814507098077253822)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEL'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15292068099570834589)
,p_name=>'P90_PHOTO_BLOB'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_api.id(6149506999364542420)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Image/File'
,p_source=>'PHOTO_BLOB'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_FILE'
,p_cSize=>60
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(748281690398960066)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Please upload square photos, non-square photos may appear distorted. Images should be 250 pixels wide and 250 pixels tall.'
,p_attribute_01=>'DB_COLUMN'
,p_attribute_06=>'Y'
,p_attribute_08=>'attachment'
,p_attribute_12=>'INLINE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15292098186536892316)
,p_name=>'P90_PHOTO_MIMETYPE'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_api.id(6149506999364542420)
,p_use_cache_before_default=>'NO'
,p_source=>'PHOTO_MIMETYPE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15292100791469894136)
,p_name=>'P90_PHOTO_CHARSET'
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_api.id(6149506999364542420)
,p_use_cache_before_default=>'NO'
,p_source=>'PHOTO_CHARSET'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15292102779966896214)
,p_name=>'P90_PHOTO_LASTUPD'
,p_item_sequence=>310
,p_item_plug_id=>wwv_flow_api.id(6149506999364542420)
,p_use_cache_before_default=>'NO'
,p_source=>'PHOTO_LASTUPD'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15292105026662838826)
,p_name=>'P90_PHOTO_NAME'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_api.id(6149506999364542420)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Photo Name'
,p_source=>'PHOTO_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_display_when=>'P195_PHOTO_BLOB'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_api.id(748281690398960066)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15292135600880849652)
,p_name=>'P90_PHOTO_DISPLAY'
,p_item_sequence=>320
,p_item_plug_id=>wwv_flow_api.id(6149506999364542420)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Photo'
,p_source=>'PHOTO_BLOB'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_IMAGE'
,p_tag_attributes=>'width="250" height="250"'
,p_display_when=>'select null from EBA_PROJ_STATUS_USERS where id = :P90_ID and dbms_lob.getlength(photo_blob) > 0'
,p_display_when_type=>'EXISTS'
,p_field_template=>wwv_flow_api.id(748281690398960066)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Drag and drop a new image file onto the File Browse/Choose File button above to replace this photo. Please upload square photos, non-square photos may appear distorted. Images should be 250 pixels wide and 250 pixels tall.'
,p_attribute_01=>'DB_COLUMN'
,p_attribute_04=>'PHOTO_NAME'
,p_attribute_05=>'PHOTO_LASTUPD'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15355160772075604362)
,p_name=>'P90_FIRST_NAME'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(6149506999364542420)
,p_use_cache_before_default=>'NO'
,p_prompt=>'First Name'
,p_source=>'FIRST_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(748281690398960066)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15355164893480608951)
,p_name=>'P90_LAST_NAME'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(6149506999364542420)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Last Name'
,p_source=>'LAST_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(748281690398960066)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(17635524907169690862)
,p_name=>'P90_PAST_DUE_REMINDERS_FREQ'
,p_item_sequence=>330
,p_item_plug_id=>wwv_flow_api.id(6149506999364542420)
,p_use_cache_before_default=>'NO'
,p_item_default=>'UNSET'
,p_prompt=>'Past Due Milestones and Action Items Email Delivery Schedule'
,p_source=>'PAST_DUE_REMINDERS_FREQ'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'EMAIL SCHEDULE OPTIONS'
,p_lov=>'.'||wwv_flow_api.id(16146676932810625263)||'.'
,p_cHeight=>1
,p_read_only_when=>'P90_PAST_DUE_REMINDERS_FREQ'
,p_read_only_when2=>'NEVER'
,p_read_only_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_api.id(748281690398960066)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_security_scheme=>wwv_flow_api.id(7306165779537991444)
,p_required_patch=>wwv_flow_api.id(11985127837396710533)
,p_help_text=>'This user preference can only be changed by an administrator if it has never been set or it has been previously enabled by the user that is being edited. If it is set to "Never (Opted-Out)", it cannot be changed.'
,p_inline_help_text=>'<p>The process that sends these emails is currently <strong><a href="f?p=&APP_ID.:163:&APP_SESSION.">&P90_PAST_DUE_JOB_STATUS.</a></strong>.</p>'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(17635525012084690863)
,p_name=>'P90_UPCOMING_REMINDERS_FREQ'
,p_item_sequence=>340
,p_item_plug_id=>wwv_flow_api.id(6149506999364542420)
,p_use_cache_before_default=>'NO'
,p_item_default=>'UNSET'
,p_prompt=>'Upcoming Milestones and Action Items Email Delivery Schedule'
,p_source=>'UPCOMING_REMINDERS_FREQ'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'EMAIL SCHEDULE OPTIONS'
,p_lov=>'.'||wwv_flow_api.id(16146676932810625263)||'.'
,p_cHeight=>1
,p_read_only_when=>'P90_UPCOMING_REMINDERS_FREQ'
,p_read_only_when2=>'NEVER'
,p_read_only_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_api.id(748281690398960066)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_security_scheme=>wwv_flow_api.id(7306165779537991444)
,p_required_patch=>wwv_flow_api.id(11997357717598129643)
,p_help_text=>'This user preference can only be changed by an administrator if it has never been set or it has been previously enabled by the user that is being edited. If it is set to "Never (Opted-Out)", it cannot be changed.'
,p_inline_help_text=>'<p>The process that sends these emails is currently <strong><a href="f?p=&APP_ID.:167:&APP_SESSION.">&P90_UPCOMING_JOB_STATUS.</a></strong>.</p>'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(17635525096074690864)
,p_name=>'P90_PROJECT_SUMMARY_FAV_FREQ'
,p_item_sequence=>350
,p_item_plug_id=>wwv_flow_api.id(6149506999364542420)
,p_use_cache_before_default=>'NO'
,p_item_default=>'UNSET'
,p_prompt=>'Project Details Email Delivery Schedule'
,p_source=>'PROJECT_SUMMARY_FAV_FREQ'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'EMAIL SCHEDULE OPTIONS'
,p_lov=>'.'||wwv_flow_api.id(16146676932810625263)||'.'
,p_cHeight=>1
,p_read_only_when=>'P90_PROJECT_SUMMARY_FAV_FREQ'
,p_read_only_when2=>'NEVER'
,p_read_only_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_api.id(748281690398960066)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_security_scheme=>wwv_flow_api.id(7306165779537991444)
,p_required_patch=>wwv_flow_api.id(15873378907956721107)
,p_help_text=>'This user preference can only be changed by an administrator if it has never been set or it has been previously enabled by the user that is being edited. If it is set to "Never (Opted-Out)", it cannot be changed.'
,p_inline_help_text=>'<p>The process that sends these emails is currently <strong><a href="f?p=&APP_ID.:197:&APP_SESSION.">&P90_PROJECT_SUMMARY_JOB_STATUS.</a></strong>.</p>'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(17924430864821477933)
,p_name=>'P90_PAST_DUE_JOB_STATUS'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_api.id(7868331594560200266)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_required_patch=>wwv_flow_api.id(11985127837396710533)
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(17924458414041480821)
,p_name=>'P90_UPCOMING_JOB_STATUS'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_api.id(7868331594560200266)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_required_patch=>wwv_flow_api.id(11997357717598129643)
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(17924465035725433029)
,p_name=>'P90_PROJECT_SUMMARY_JOB_STATUS'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_api.id(7868331594560200266)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_required_patch=>wwv_flow_api.id(15873378907956721107)
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18175886265119760649)
,p_name=>'P90_PROJECT_STATUS_JOB_STATUS'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_api.id(7868331594560200266)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_required_patch=>wwv_flow_api.id(15873378907956721107)
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18175886428560760651)
,p_name=>'P90_PROJECT_STATUS_FAV_FREQ'
,p_item_sequence=>360
,p_item_plug_id=>wwv_flow_api.id(6149506999364542420)
,p_use_cache_before_default=>'NO'
,p_item_default=>'UNSET'
,p_prompt=>'Project Status Email Delivery Schedule'
,p_source=>'PROJECT_STATUS_FAV_FREQ'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'EMAIL SCHEDULE OPTIONS'
,p_lov=>'.'||wwv_flow_api.id(16146676932810625263)||'.'
,p_cHeight=>1
,p_read_only_when=>'P90_PROJECT_STATUS_FAV_FREQ'
,p_read_only_when2=>'NEVER'
,p_read_only_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_api.id(748281690398960066)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_security_scheme=>wwv_flow_api.id(7306165779537991444)
,p_required_patch=>wwv_flow_api.id(15873378907956721107)
,p_help_text=>'This user preference can only be changed by an administrator if it has never been set or it has been previously enabled by the user that is being edited. If it is set to "Never (Opted-Out)", it cannot be changed.'
,p_inline_help_text=>'<p>The process that sends these emails is currently <strong><a href="f?p=&APP_ID.:197:&APP_SESSION.">&P90_PROJECT_STATUS_JOB_STATUS.</a></strong>.</p>'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18317007962523914575)
,p_name=>'P90_NEW_USER_INFO'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(6149506999364542420)
,p_prompt=>'Additional Pending User Details'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(748281690398960066)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'HTML'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(17635525716318690871)
,p_computation_sequence=>10
,p_computation_item=>'P90_PAST_DUE_JOB_STATUS'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'QUERY'
,p_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    case when enabled = ''TRUE'' then ''Enabled'' else ''Disabled'' end as status',
'from user_scheduler_jobs',
'where job_name = ''EBA_PROJ_EMAIL_PAST_DUE_JOB'''))
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
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(17635525880700690872)
,p_computation_sequence=>20
,p_computation_item=>'P90_UPCOMING_JOB_STATUS'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'QUERY'
,p_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    case when enabled = ''TRUE'' then ''Enabled'' else ''Disabled'' end as status',
'from user_scheduler_jobs',
'where job_name = ''EBA_PROJ_EMAIL_UPCOMING_JOB'''))
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(17635525971001690873)
,p_computation_sequence=>30
,p_computation_item=>'P90_PROJECT_SUMMARY_JOB_STATUS'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'QUERY'
,p_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    case when enabled = ''TRUE'' then ''Enabled'' else ''Disabled'' end as status',
'from user_scheduler_jobs',
'where job_name = ''EBA_PROJ_EMAIL_SUMMARY_JOB'''))
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(18317008045581914576)
,p_computation_sequence=>40
,p_computation_item=>'P90_NEW_USER_INFO'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'FUNCTION_BODY'
,p_computation_language=>'PLSQL'
,p_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_retval varchar2(32767);',
'    l_notes  varchar2(4100);',
'begin',
'    for c1 in',
'    (',
'        select',
'            p.project,',
'            r.name as role,',
'            case nvl(ref.acl_status_level, r.default_acl_status_level)',
'                when 1 then',
'                    ''Read Only''',
'                when 2 then',
'                    ''Read / Write''',
'                when 3 then',
'                    ''Read / Write (with Admin)''',
'            end as privs,',
'            ref.notes,',
'            apex_util.get_since(ref.created) as created,',
'            ref.created_by',
'        from',
'            eba_proj_status$  p,',
'            eba_proj_roles    r,',
'            eba_proj_user_ref ref',
'        where',
'            ref.user_id = :P90_ID',
'        and',
'            p.id = ref.project_id',
'        and',
'            r.id = ref.role_id (+)',
'    )',
'    loop',
'        if c1.notes is not null then',
'            l_notes := ''<strong>Notes:</strong> '' || apex_escape.html(c1.notes) || ''<br>'';',
'        else',
'            l_notes := null;',
'        end if;',
'        l_retval := l_retval || ''<p>'' ||',
'            ''<strong>Project:</strong> '' || apex_escape.html(c1.project) || ''<br>'' ||',
'            ''<strong>Project Role:</strong> '' || apex_escape.html(c1.role) || ''<br>'' ||',
'            ''<strong>Project Privileges:</strong> '' || apex_escape.html(c1.privs) || ''<br>'' ||',
'            l_notes ||',
'            ''<strong>Created:</strong> '' || apex_escape.html(c1.created)',
'                || '' by '' || apex_escape.html(lower(c1.created_by)) ||',
'            ''</p>'' || chr(10);',
'    end loop;',
'    return l_retval;',
'end;'))
,p_compute_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    null',
'from',
'    eba_proj_status$  p,',
'    eba_proj_roles    r,',
'    eba_proj_user_ref ref',
'where',
'    ref.user_id = :P90_ID',
'and',
'    p.id = ref.project_id',
'and',
'    r.id = ref.role_id (+)'))
,p_compute_when_type=>'EXISTS'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(18175886319608760650)
,p_computation_sequence=>50
,p_computation_item=>'P90_PROJECT_STATUS_JOB_STATUS'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'QUERY'
,p_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    case when enabled = ''TRUE'' then ''Enabled'' else ''Disabled'' end as status',
'from user_scheduler_jobs',
'where job_name = ''EBA_PROJ_EMAIL_STATUS_JOB'''))
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(6155194108684836951)
,p_computation_sequence=>10
,p_computation_item=>'LAST_VIEW'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'&APP_PAGE_ID.'
,p_compute_when=>'LAST_VIEW'
,p_compute_when_text=>'200:89'
,p_compute_when_type=>'VALUE_OF_ITEM_IN_CONDITION_NOT_IN_COLON_DELIMITED_LIST'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(7868334990669200276)
,p_validation_name=>'cannot update yourself'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'from eba_proj_status_users',
'where upper(username) = :APP_USER',
'    and id = :P90_ID',
'    and :P90_ACCESS_LEVEL_ID < 3'))
,p_validation_type=>'NOT_EXISTS'
,p_error_message=>'You cannot remove administration rights from your own record.'
,p_when_button_pressed=>wwv_flow_api.id(7868331802151200268)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(6155195102633854993)
,p_validation_name=>'P90_USERNAME Email Username is valid'
,p_validation_sequence=>20
,p_validation=>'P90_USERNAME'
,p_validation2=>'^[-!#$%&''''''''*+/0-9=?A-Z^_a-z{|}~](\.?[-!#$%&''''''''*+/0-9=?A-Z^_a-z{|}~])*@(-?[a-zA-Z0-9+])+(\.(-?[a-zA-Z0-9+])*)+$'
,p_validation_type=>'REGULAR_EXPRESSION'
,p_error_message=>'Username is not in a valid email address format. Please note the application''s username format below.'
,p_validation_condition=>'eba_proj_fw.get_preference_value (''USERNAME_FORMAT'') = ''EMAIL'''
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'EXPRESSION'
,p_associated_item=>wwv_flow_api.id(7868332783922200270)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(18317008172579914577)
,p_name=>'Show/Hide New User Info Item'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P90_ACCESS_LEVEL_ID'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'$(''input[name=p_t07]:checked'').val() == 0'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(18317008278531914578)
,p_event_id=>wwv_flow_api.id(18317008172579914577)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P90_NEW_USER_INFO'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(18405127336876962929)
,p_event_id=>wwv_flow_api.id(18317008172579914577)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P90_NEW_USER_INFO'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(2830682596601152266)
,p_name=>'Set Region'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P90_COUNTRY_ID'
,p_condition_element=>'P90_COUNTRY_ID'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(2830682628189152267)
,p_event_id=>wwv_flow_api.id(2830682596601152266)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P90_REGION_ID'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select region_id',
'from eba_proj_countries',
'where id = :P90_COUNTRY_ID'))
,p_attribute_07=>'P90_COUNTRY_ID'
,p_attribute_08=>'Y'
,p_attribute_09=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(525987760787977582)
,p_name=>'CNX'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(7868331982857200268)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(525987833245977583)
,p_event_id=>wwv_flow_api.id(525987760787977582)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(7868335491949200278)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from EBA_PROJ_STATUS_USERS'
,p_attribute_02=>'EBA_PROJ_STATUS_USERS'
,p_attribute_03=>'P90_ID'
,p_attribute_04=>'ID'
,p_attribute_11=>'I:U:D'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(7868335708110200279)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of EBA_PROJ_STATUS_USERS'
,p_attribute_02=>'EBA_PROJ_STATUS_USERS'
,p_attribute_03=>'P90_ID'
,p_attribute_04=>'ID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
,p_security_scheme=>wwv_flow_api.id(7306166303644991446)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(7868335908699200280)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_FOR_PAGES'
,p_attribute_04=>'4'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(7868332394025200268)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(525987953392977584)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.component_end;
end;
/
