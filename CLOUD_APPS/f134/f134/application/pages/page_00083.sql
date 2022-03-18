prompt --application/pages/page_00083
begin
--   Manifest
--     PAGE: 00083
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
 p_id=>83
,p_user_interface_id=>wwv_flow_api.id(5783577205373975152)
,p_name=>'Edit Milestone'
,p_page_mode=>'MODAL'
,p_step_title=>'Edit Milestone'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_api.id(5956244298529599071)
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(7306166303644991446)
,p_dialog_attributes=>'resizable:true'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_last_upd_yyyymmddhh24miss=>'20190910104047'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(6699493520746831445)
,p_plug_name=>'Additional Data'
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(6781111273838890791)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'from eba_proj_flex_registry',
'where flexible_table = ''EBA_PROJ_STATUS_MS''',
'    and active_yn = ''Y'''))
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(7716118520308301424)
,p_plug_name=>'Edit Milestone'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(6781104626075890777)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(7716119218294301436)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(6781104860657890779)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(7716119697013301437)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(7716119218294301436)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(6781135529450890864)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(7716119132408301436)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(7716119218294301436)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>wwv_flow_api.id(6781135529450890864)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P83_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_security_scheme=>wwv_flow_api.id(7306166303644991446)
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(7716119044449301436)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(7716119218294301436)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--gapLeft'
,p_button_template_id=>wwv_flow_api.id(6781135529450890864)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_condition=>'P83_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_security_scheme=>wwv_flow_api.id(7306166303644991446)
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(7716119005332301436)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(7716119218294301436)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--gapLeft'
,p_button_template_id=>wwv_flow_api.id(6781135529450890864)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_condition=>'P83_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_security_scheme=>wwv_flow_api.id(7306166303644991446)
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(7716122337881301808)
,p_name=>'P83_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(7716118520308301424)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id'
,p_source=>'ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(6781134673650890856)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(7716122694368301828)
,p_name=>'P83_PROJECT_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(7716118520308301424)
,p_use_cache_before_default=>'NO'
,p_source=>'PROJECT_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(7716123039765301831)
,p_name=>'P83_MILESTONE_NAME'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(7716118520308301424)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Milestone'
,p_source=>'MILESTONE_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(6781134744367890857)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(7716123452654301831)
,p_name=>'P83_MILESTONE_DESCRIPTION'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(7716118520308301424)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Description'
,p_source=>'MILESTONE_DESCRIPTION'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>4000
,p_cHeight=>4
,p_field_template=>wwv_flow_api.id(6781134673650890856)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(7716123876856301832)
,p_name=>'P83_MILESTONE_DATE'
,p_is_required=>true
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(7716118520308301424)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Due Date'
,p_source=>'MILESTONE_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>32
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(6781134744367890857)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(7716124659930301836)
,p_name=>'P83_MILESTONE_START_DATE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(7716118520308301424)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Start Date'
,p_source=>'MILESTONE_START_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(6781134673650890856)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(7716125420420301837)
,p_name=>'P83_MILESTONE_STATUS'
,p_is_required=>true
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(7716118520308301424)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Status'
,p_source=>'MILESTONE_STATUS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC2:Open;Open,Completed;Completed'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(6781134744367890857)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(7716125825104301837)
,p_name=>'P83_MILESTONE_OWNER'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(7716118520308301424)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Owner'
,p_source=>'MILESTONE_OWNER'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(6781134673650890856)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(7716126238119301838)
,p_name=>'P83_IS_MAJOR_YN'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(7716118520308301424)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Major Milestone'
,p_source=>'IS_MAJOR_YN'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'PLUGIN_COM.ORACLE.APEX.SIMPLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(6781134673650890856)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(7716126628435301838)
,p_name=>'P83_TAGS'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(7716118520308301424)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Tags'
,p_source=>'TAGS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select tag',
'from eba_proj_tags_type_sum',
'where content_type = ''MILESTONE''',
'order by upper(tag)'))
,p_lov_display_null=>'YES'
,p_cSize=>60
,p_cMaxlength=>4000
,p_field_template=>wwv_flow_api.id(6781134673650890856)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'Y'
,p_attribute_04=>'Y'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
,p_attribute_11=>','
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(7716127044516301839)
,p_name=>'P83_MILESTONE_FLEX_01'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(6699493520746831445)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Milestone Flex 01'
,p_source=>'MILESTONE_FLEX_01'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'PLUGIN_COM.ORACLE.APEX.FLEX_FIELD'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'from eba_proj_flex_registry',
'where flexible_table = ''EBA_PROJ_STATUS_MS''',
'    and active_yn = ''Y''',
'    and flexible_column = ''MILESTONE_FLEX_01'''))
,p_display_when_type=>'EXISTS'
,p_field_template=>wwv_flow_api.id(6781134673650890856)
,p_item_template_options=>'#DEFAULT#'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(7716127479804301839)
,p_name=>'P83_MILESTONE_FLEX_02'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(6699493520746831445)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Milestone Flex 02'
,p_source=>'MILESTONE_FLEX_02'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'PLUGIN_COM.ORACLE.APEX.FLEX_FIELD'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'from eba_proj_flex_registry',
'where flexible_table = ''EBA_PROJ_STATUS_MS''',
'    and active_yn = ''Y''',
'    and flexible_column = ''MILESTONE_FLEX_02'''))
,p_display_when_type=>'EXISTS'
,p_field_template=>wwv_flow_api.id(6781134673650890856)
,p_item_template_options=>'#DEFAULT#'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(7716127840054301840)
,p_name=>'P83_MILESTONE_FLEX_03'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(6699493520746831445)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Milestone Flex 03'
,p_source=>'MILESTONE_FLEX_03'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'PLUGIN_COM.ORACLE.APEX.FLEX_FIELD'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'from eba_proj_flex_registry',
'where flexible_table = ''EBA_PROJ_STATUS_MS''',
'    and active_yn = ''Y''',
'    and flexible_column = ''MILESTONE_FLEX_03'''))
,p_display_when_type=>'EXISTS'
,p_field_template=>wwv_flow_api.id(6781134673650890856)
,p_item_template_options=>'#DEFAULT#'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(7716128248742301841)
,p_name=>'P83_MILESTONE_FLEX_04'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(6699493520746831445)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Milestone Flex 04'
,p_source=>'MILESTONE_FLEX_04'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'PLUGIN_COM.ORACLE.APEX.FLEX_FIELD'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'from eba_proj_flex_registry',
'where flexible_table = ''EBA_PROJ_STATUS_MS''',
'    and active_yn = ''Y''',
'    and flexible_column = ''MILESTONE_FLEX_04'''))
,p_display_when_type=>'EXISTS'
,p_field_template=>wwv_flow_api.id(6781134673650890856)
,p_item_template_options=>'#DEFAULT#'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(7716128623579301841)
,p_name=>'P83_MILESTONE_FLEX_05'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(6699493520746831445)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Milestone Flex 05'
,p_source=>'MILESTONE_FLEX_05'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'PLUGIN_COM.ORACLE.APEX.FLEX_FIELD'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'from eba_proj_flex_registry',
'where flexible_table = ''EBA_PROJ_STATUS_MS''',
'    and active_yn = ''Y''',
'    and flexible_column = ''MILESTONE_FLEX_05'''))
,p_display_when_type=>'EXISTS'
,p_field_template=>wwv_flow_api.id(6781134673650890856)
,p_item_template_options=>'#DEFAULT#'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(7716129039541301841)
,p_name=>'P83_MILESTONE_FLEX_06'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(6699493520746831445)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Milestone Flex 06'
,p_source=>'MILESTONE_FLEX_06'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'PLUGIN_COM.ORACLE.APEX.FLEX_FIELD'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'from eba_proj_flex_registry',
'where flexible_table = ''EBA_PROJ_STATUS_MS''',
'    and active_yn = ''Y''',
'    and flexible_column = ''MILESTONE_FLEX_06'''))
,p_display_when_type=>'EXISTS'
,p_field_template=>wwv_flow_api.id(6781134673650890856)
,p_item_template_options=>'#DEFAULT#'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(7716129498184301842)
,p_name=>'P83_MILESTONE_FLEX_07'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(6699493520746831445)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Milestone Flex 07'
,p_source=>'MILESTONE_FLEX_07'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'PLUGIN_COM.ORACLE.APEX.FLEX_FIELD'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'from eba_proj_flex_registry',
'where flexible_table = ''EBA_PROJ_STATUS_MS''',
'    and active_yn = ''Y''',
'    and flexible_column = ''MILESTONE_FLEX_07'''))
,p_display_when_type=>'EXISTS'
,p_field_template=>wwv_flow_api.id(6781134673650890856)
,p_item_template_options=>'#DEFAULT#'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(7716129820652301842)
,p_name=>'P83_MILESTONE_FLEX_08'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(6699493520746831445)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Milestone Flex 08'
,p_source=>'MILESTONE_FLEX_08'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'PLUGIN_COM.ORACLE.APEX.FLEX_FIELD'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'from eba_proj_flex_registry',
'where flexible_table = ''EBA_PROJ_STATUS_MS''',
'    and active_yn = ''Y''',
'    and flexible_column = ''MILESTONE_FLEX_08'''))
,p_display_when_type=>'EXISTS'
,p_field_template=>wwv_flow_api.id(6781134673650890856)
,p_item_template_options=>'#DEFAULT#'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(7716130286473301843)
,p_name=>'P83_MILESTONE_FLEX_N01'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_api.id(6699493520746831445)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Milestone Flex N01'
,p_source=>'MILESTONE_FLEX_N01'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'PLUGIN_COM.ORACLE.APEX.FLEX_FIELD'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'from eba_proj_flex_registry',
'where flexible_table = ''EBA_PROJ_STATUS_MS''',
'    and active_yn = ''Y''',
'    and flexible_column = ''MILESTONE_FLEX_N01'''))
,p_display_when_type=>'EXISTS'
,p_field_template=>wwv_flow_api.id(6781134673650890856)
,p_item_template_options=>'#DEFAULT#'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(7716130680417301843)
,p_name=>'P83_MILESTONE_FLEX_N02'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_api.id(6699493520746831445)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Milestone Flex N02'
,p_source=>'MILESTONE_FLEX_N02'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'PLUGIN_COM.ORACLE.APEX.FLEX_FIELD'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'from eba_proj_flex_registry',
'where flexible_table = ''EBA_PROJ_STATUS_MS''',
'    and active_yn = ''Y''',
'    and flexible_column = ''MILESTONE_FLEX_N02'''))
,p_display_when_type=>'EXISTS'
,p_field_template=>wwv_flow_api.id(6781134673650890856)
,p_item_template_options=>'#DEFAULT#'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(7716131088126301843)
,p_name=>'P83_MILESTONE_FLEX_N03'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_api.id(6699493520746831445)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Milestone Flex N03'
,p_source=>'MILESTONE_FLEX_N03'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'PLUGIN_COM.ORACLE.APEX.FLEX_FIELD'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'from eba_proj_flex_registry',
'where flexible_table = ''EBA_PROJ_STATUS_MS''',
'    and active_yn = ''Y''',
'    and flexible_column = ''MILESTONE_FLEX_N03'''))
,p_display_when_type=>'EXISTS'
,p_field_template=>wwv_flow_api.id(6781134673650890856)
,p_item_template_options=>'#DEFAULT#'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(7716131442262301844)
,p_name=>'P83_MILESTONE_FLEX_N04'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_api.id(6699493520746831445)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Milestone Flex N04'
,p_source=>'MILESTONE_FLEX_N04'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'PLUGIN_COM.ORACLE.APEX.FLEX_FIELD'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'from eba_proj_flex_registry',
'where flexible_table = ''EBA_PROJ_STATUS_MS''',
'    and active_yn = ''Y''',
'    and flexible_column = ''MILESTONE_FLEX_N04'''))
,p_display_when_type=>'EXISTS'
,p_field_template=>wwv_flow_api.id(6781134673650890856)
,p_item_template_options=>'#DEFAULT#'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(7716131891030301844)
,p_name=>'P83_MILESTONE_FLEX_D01'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_api.id(6699493520746831445)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Milestone Flex D01'
,p_source=>'MILESTONE_FLEX_D01'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'PLUGIN_COM.ORACLE.APEX.FLEX_FIELD'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'from eba_proj_flex_registry',
'where flexible_table = ''EBA_PROJ_STATUS_MS''',
'    and active_yn = ''Y''',
'    and flexible_column = ''MILESTONE_FLEX_D01'''))
,p_display_when_type=>'EXISTS'
,p_field_template=>wwv_flow_api.id(6781134673650890856)
,p_item_template_options=>'#DEFAULT#'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(7716132627957301845)
,p_name=>'P83_MILESTONE_FLEX_D02'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_api.id(6699493520746831445)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Milestone Flex D02'
,p_source=>'MILESTONE_FLEX_D02'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'PLUGIN_COM.ORACLE.APEX.FLEX_FIELD'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'from eba_proj_flex_registry',
'where flexible_table = ''EBA_PROJ_STATUS_MS''',
'    and active_yn = ''Y''',
'    and flexible_column = ''MILESTONE_FLEX_D02'''))
,p_display_when_type=>'EXISTS'
,p_field_template=>wwv_flow_api.id(6781134673650890856)
,p_item_template_options=>'#DEFAULT#'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(7716133508285301846)
,p_name=>'P83_MILESTONE_FLEX_D03'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_api.id(6699493520746831445)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Milestone Flex D03'
,p_source=>'MILESTONE_FLEX_D03'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'PLUGIN_COM.ORACLE.APEX.FLEX_FIELD'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'from eba_proj_flex_registry',
'where flexible_table = ''EBA_PROJ_STATUS_MS''',
'    and active_yn = ''Y''',
'    and flexible_column = ''MILESTONE_FLEX_D03'''))
,p_display_when_type=>'EXISTS'
,p_field_template=>wwv_flow_api.id(6781134673650890856)
,p_item_template_options=>'#DEFAULT#'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(7716134294977301847)
,p_name=>'P83_MILESTONE_FLEX_D04'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_api.id(6699493520746831445)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Milestone Flex D04'
,p_source=>'MILESTONE_FLEX_D04'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'PLUGIN_COM.ORACLE.APEX.FLEX_FIELD'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'from eba_proj_flex_registry',
'where flexible_table = ''EBA_PROJ_STATUS_MS''',
'    and active_yn = ''Y''',
'    and flexible_column = ''MILESTONE_FLEX_D04'''))
,p_display_when_type=>'EXISTS'
,p_field_template=>wwv_flow_api.id(6781134673650890856)
,p_item_template_options=>'#DEFAULT#'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(7716135054173301848)
,p_name=>'P83_MILESTONE_FLEX_CLOB'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_api.id(6699493520746831445)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Milestone Flex Clob'
,p_source=>'MILESTONE_FLEX_CLOB'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'PLUGIN_COM.ORACLE.APEX.FLEX_FIELD'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'from eba_proj_flex_registry',
'where flexible_table = ''EBA_PROJ_STATUS_MS''',
'    and active_yn = ''Y''',
'    and flexible_column = ''MILESTONE_FLEX_CLOB'''))
,p_display_when_type=>'EXISTS'
,p_field_template=>wwv_flow_api.id(6781134673650890856)
,p_item_template_options=>'#DEFAULT#'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(7716124354932301833)
,p_validation_name=>'P83_MILESTONE_DATE must be timestamp'
,p_validation_sequence=>70
,p_validation=>'P83_MILESTONE_DATE'
,p_validation_type=>'ITEM_IS_TIMESTAMP'
,p_error_message=>'#LABEL# must be a valid timestamp.'
,p_associated_item=>wwv_flow_api.id(7716123876856301832)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(7716125159634301836)
,p_validation_name=>'P83_MILESTONE_START_DATE must be timestamp'
,p_validation_sequence=>80
,p_validation=>'P83_MILESTONE_START_DATE'
,p_validation_type=>'ITEM_IS_TIMESTAMP'
,p_error_message=>'#LABEL# must be a valid timestamp.'
,p_associated_item=>wwv_flow_api.id(7716124659930301836)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(7716132366115301845)
,p_validation_name=>'P83_MILESTONE_FLEX_D01 must be timestamp'
,p_validation_sequence=>290
,p_validation=>'P83_MILESTONE_FLEX_D01'
,p_validation_type=>'ITEM_IS_TIMESTAMP'
,p_error_message=>'#LABEL# must be a valid timestamp.'
,p_associated_item=>wwv_flow_api.id(7716131891030301844)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(7716133137478301846)
,p_validation_name=>'P83_MILESTONE_FLEX_D02 must be timestamp'
,p_validation_sequence=>300
,p_validation=>'P83_MILESTONE_FLEX_D02'
,p_validation_type=>'ITEM_IS_TIMESTAMP'
,p_error_message=>'#LABEL# must be a valid timestamp.'
,p_associated_item=>wwv_flow_api.id(7716132627957301845)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(7716133948294301847)
,p_validation_name=>'P83_MILESTONE_FLEX_D03 must be timestamp'
,p_validation_sequence=>310
,p_validation=>'P83_MILESTONE_FLEX_D03'
,p_validation_type=>'ITEM_IS_TIMESTAMP'
,p_error_message=>'#LABEL# must be a valid timestamp.'
,p_associated_item=>wwv_flow_api.id(7716133508285301846)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(7716134757540301848)
,p_validation_name=>'P83_MILESTONE_FLEX_D04 must be timestamp'
,p_validation_sequence=>320
,p_validation=>'P83_MILESTONE_FLEX_D04'
,p_validation_type=>'ITEM_IS_TIMESTAMP'
,p_error_message=>'#LABEL# must be a valid timestamp.'
,p_associated_item=>wwv_flow_api.id(7716134294977301847)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(446344638358568829)
,p_validation_name=>'Valid Characters in Tags'
,p_validation_sequence=>330
,p_validation=>'not regexp_like( :P83_TAGS, ''[:;#\/\\\?\&]'' )'
,p_validation2=>'PLSQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>'Tags may not contain the following characters: : ; \ / ? &'
,p_validation_condition=>'CREATE,SAVE'
,p_validation_condition_type=>'REQUEST_IN_CONDITION'
,p_associated_item=>wwv_flow_api.id(7716126628435301838)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(7716119762215301437)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(7716119697013301437)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(7716120556193301440)
,p_event_id=>wwv_flow_api.id(7716119762215301437)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(7716143521995301856)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from EBA_PROJ_STATUS_MS'
,p_attribute_02=>'EBA_PROJ_STATUS_MS'
,p_attribute_03=>'P83_ID'
,p_attribute_04=>'ID'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(7716144006389301857)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of EBA_PROJ_STATUS_MS'
,p_attribute_02=>'EBA_PROJ_STATUS_MS'
,p_attribute_03=>'P83_ID'
,p_attribute_04=>'ID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
,p_security_scheme=>wwv_flow_api.id(7306166303644991446)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(7716144368018301858)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(7716119132408301436)
,p_security_scheme=>wwv_flow_api.id(7306166303644991446)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(7716144743570301858)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_api.component_end;
end;
/
