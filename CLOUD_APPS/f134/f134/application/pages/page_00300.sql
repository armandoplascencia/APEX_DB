prompt --application/pages/page_00300
begin
--   Manifest
--     PAGE: 00300
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
 p_id=>300
,p_user_interface_id=>wwv_flow_api.id(5783577205373975152)
,p_name=>'Create Project Wizard Step 1'
,p_page_mode=>'MODAL'
,p_step_title=>'Create a Project'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_api.id(5956243887448595899)
,p_step_template=>wwv_flow_api.id(6781101375889890768)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(7306166303644991446)
,p_dialog_attributes=>'resizable:true'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'KYLE'
,p_last_upd_yyyymmddhh24miss=>'20191029072232'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(11347037683831087538)
,p_plug_name=>'Create Project Wizard Container'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-WizardSteps--displayLabels'
,p_plug_template=>wwv_flow_api.id(6781104626075890777)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_list_id=>wwv_flow_api.id(11676590063018682874)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(6781133859764890851)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(11347038782305087549)
,p_plug_name=>'Wizard Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(6781104860657890779)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(11708296067704766417)
,p_plug_name=>'Project'
,p_region_template_options=>'#DEFAULT#:t-Form--large:t-Form--stretchInputs'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(6781104626075890777)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(12931797422963653114)
,p_plug_name=>'Region Display Selector'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(6781104626075890777)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source_type=>'NATIVE_DISPLAY_SELECTOR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'from eba_proj_flex_registry',
'where flexible_table = ''EBA_PROJ_STATUS''',
'    and active_yn = ''Y''',
'    and assigned_yn = ''Y'''))
,p_attribute_01=>'STANDARD'
,p_attribute_02=>'Y'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(12931814525018655353)
,p_plug_name=>'Custom Attributes'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(6781104626075890777)
,p_plug_display_sequence=>30
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
'where flexible_table = ''EBA_PROJ_STATUS''',
'    and active_yn = ''Y''',
'    and assigned_yn = ''Y'''))
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_required_patch=>wwv_flow_api.id(6252446509804687380)
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(11347037714775087539)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(11347038782305087549)
,p_button_name=>'Cancel'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(6781135529450890864)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(11347037886826087540)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(11347038782305087549)
,p_button_name=>'Next'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--gapLeft'
,p_button_template_id=>wwv_flow_api.id(6781134954745890861)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Next'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_icon_css_classes=>'fa-chevron-right'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(11347038217689087544)
,p_branch_name=>'Go to Next Step'
,p_branch_action=>'f?p=&APP_ID.:301:&SESSION.::&DEBUG.:RP::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(11347037886826087540)
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(4112883776649300482)
,p_name=>'P300_PROJECT_FLEX_D05'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_api.id(12931814525018655353)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Project Flex D05'
,p_source=>'PROJECT_FLEX_D05'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'PLUGIN_COM.ORACLE.APEX.FLEX_FIELD'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'from eba_proj_flex_registry',
'where flexible_table = ''EBA_PROJ_STATUS''',
'    and active_yn = ''Y''',
'    and flexible_column = ''PROJECT_FLEX_D05'''))
,p_display_when_type=>'EXISTS'
,p_field_template=>wwv_flow_api.id(6781134673650890856)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_required_patch=>wwv_flow_api.id(6252446509804687380)
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(4112883837111300483)
,p_name=>'P300_PROJECT_FLEX_D06'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_api.id(12931814525018655353)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Project Flex D06'
,p_source=>'PROJECT_FLEX_D06'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'PLUGIN_COM.ORACLE.APEX.FLEX_FIELD'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'from eba_proj_flex_registry',
'where flexible_table = ''EBA_PROJ_STATUS''',
'    and active_yn = ''Y''',
'    and flexible_column = ''PROJECT_FLEX_D06'''))
,p_display_when_type=>'EXISTS'
,p_field_template=>wwv_flow_api.id(6781134673650890856)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_required_patch=>wwv_flow_api.id(6252446509804687380)
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(4112883912997300484)
,p_name=>'P300_PROJECT_FLEX_D07'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_api.id(12931814525018655353)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Project Flex D07'
,p_source=>'PROJECT_FLEX_D07'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'PLUGIN_COM.ORACLE.APEX.FLEX_FIELD'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'from eba_proj_flex_registry',
'where flexible_table = ''EBA_PROJ_STATUS''',
'    and active_yn = ''Y''',
'    and flexible_column = ''PROJECT_FLEX_D07'''))
,p_display_when_type=>'EXISTS'
,p_field_template=>wwv_flow_api.id(6781134673650890856)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_required_patch=>wwv_flow_api.id(6252446509804687380)
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(4112884003601300485)
,p_name=>'P300_PROJECT_FLEX_D08'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_api.id(12931814525018655353)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Project Flex D08'
,p_source=>'PROJECT_FLEX_D08'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'PLUGIN_COM.ORACLE.APEX.FLEX_FIELD'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'from eba_proj_flex_registry',
'where flexible_table = ''EBA_PROJ_STATUS''',
'    and active_yn = ''Y''',
'    and flexible_column = ''PROJECT_FLEX_D08'''))
,p_display_when_type=>'EXISTS'
,p_field_template=>wwv_flow_api.id(6781134673650890856)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_required_patch=>wwv_flow_api.id(6252446509804687380)
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(4112884157577300486)
,p_name=>'P300_PROJECT_FLEX_D09'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_api.id(12931814525018655353)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Project Flex D09'
,p_source=>'PROJECT_FLEX_D09'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'PLUGIN_COM.ORACLE.APEX.FLEX_FIELD'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'from eba_proj_flex_registry',
'where flexible_table = ''EBA_PROJ_STATUS''',
'    and active_yn = ''Y''',
'    and flexible_column = ''PROJECT_FLEX_D09'''))
,p_display_when_type=>'EXISTS'
,p_field_template=>wwv_flow_api.id(6781134673650890856)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_required_patch=>wwv_flow_api.id(6252446509804687380)
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(4112884208372300487)
,p_name=>'P300_PROJECT_FLEX_D10'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_api.id(12931814525018655353)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Project Flex D10'
,p_source=>'PROJECT_FLEX_D10'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'PLUGIN_COM.ORACLE.APEX.FLEX_FIELD'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'from eba_proj_flex_registry',
'where flexible_table = ''EBA_PROJ_STATUS''',
'    and active_yn = ''Y''',
'    and flexible_column = ''PROJECT_FLEX_D10'''))
,p_display_when_type=>'EXISTS'
,p_field_template=>wwv_flow_api.id(6781134673650890856)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_required_patch=>wwv_flow_api.id(6252446509804687380)
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(4112884380049300488)
,p_name=>'P300_PROJECT_FLEX_D11'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_api.id(12931814525018655353)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Project Flex D11'
,p_source=>'PROJECT_FLEX_D11'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'PLUGIN_COM.ORACLE.APEX.FLEX_FIELD'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'from eba_proj_flex_registry',
'where flexible_table = ''EBA_PROJ_STATUS''',
'    and active_yn = ''Y''',
'    and flexible_column = ''PROJECT_FLEX_D11'''))
,p_display_when_type=>'EXISTS'
,p_field_template=>wwv_flow_api.id(6781134673650890856)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_required_patch=>wwv_flow_api.id(6252446509804687380)
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(4112884481385300489)
,p_name=>'P300_PROJECT_FLEX_D12'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_api.id(12931814525018655353)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Project Flex D12'
,p_source=>'PROJECT_FLEX_D12'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'PLUGIN_COM.ORACLE.APEX.FLEX_FIELD'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'from eba_proj_flex_registry',
'where flexible_table = ''EBA_PROJ_STATUS''',
'    and active_yn = ''Y''',
'    and flexible_column = ''PROJECT_FLEX_D12'''))
,p_display_when_type=>'EXISTS'
,p_field_template=>wwv_flow_api.id(6781134673650890856)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_required_patch=>wwv_flow_api.id(6252446509804687380)
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(4145550025550246171)
,p_name=>'P300_LOGO'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(11708296067704766417)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Project Logo'
,p_source=>'LOGO_BLOB'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_FILE'
,p_cSize=>30
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(6781134673650890856)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Upload an image file (.png, .jpg, .gif, etc...) that represents this project. The image''s height and width should be 128x128 or 256x256 (in pixels) and cannot exceed 50kb in size.'
,p_attribute_01=>'DB_COLUMN'
,p_attribute_02=>'LOGO_MIMETYPE'
,p_attribute_03=>'LOGO_NAME'
,p_attribute_04=>'LOGO_CHARSET'
,p_attribute_05=>'LOGO_LASTUPD'
,p_attribute_06=>'N'
,p_attribute_11=>'image/*'
,p_attribute_12=>'INLINE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(11708297127175766422)
,p_name=>'P300_PROJECT'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(11708296067704766417)
,p_prompt=>'Project Name'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>80
,p_cMaxlength=>200
,p_tag_attributes=>'onchange="htmldb_item_change(this)"'
,p_field_template=>wwv_flow_api.id(6781134744367890857)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
,p_item_comment=>'Identifies the name of the project to be tracked.'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(11708298110950766425)
,p_name=>'P300_PARENT_PROJECT_ID'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(11708296067704766417)
,p_prompt=>'Parent Project'
,p_placeholder=>'Optionally identify a parent project'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select project, id',
'from eba_proj_status ',
'where ((:P300_ID is not null and id != :P300_ID) or :P300_ID is null) and ',
'   parent_project_id is null ',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- No Parent -'
,p_cSize=>65
,p_field_template=>wwv_flow_api.id(6781134673650890856)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_required_patch=>wwv_flow_api.id(19890960485833316269)
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12288021628718109841)
,p_name=>'P300_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(11708296067704766417)
,p_use_cache_before_default=>'NO'
,p_source=>'ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
,p_item_comment=>'Exists solely to get flex fields working.'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12931814847261655356)
,p_name=>'P300_PROJECT_FLEX_N01'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(12931814525018655353)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Number'
,p_source=>'PROJECT_FLEX_N01'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'PLUGIN_COM.ORACLE.APEX.FLEX_FIELD'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'from eba_proj_flex_registry',
'where flexible_table = ''EBA_PROJ_STATUS''',
'    and active_yn = ''Y''',
'    and flexible_column = ''PROJECT_FLEX_N01'''))
,p_display_when_type=>'EXISTS'
,p_field_template=>wwv_flow_api.id(6781134673650890856)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_required_patch=>wwv_flow_api.id(6252446509804687380)
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12931815775432655360)
,p_name=>'P300_PROJECT_FLEX_N02'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(12931814525018655353)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Random Number'
,p_source=>'PROJECT_FLEX_N02'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'PLUGIN_COM.ORACLE.APEX.FLEX_FIELD'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'from eba_proj_flex_registry',
'where flexible_table = ''EBA_PROJ_STATUS''',
'    and active_yn = ''Y''',
'    and flexible_column = ''PROJECT_FLEX_N02'''))
,p_display_when_type=>'EXISTS'
,p_field_template=>wwv_flow_api.id(6781134673650890856)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_required_patch=>wwv_flow_api.id(6252446509804687380)
,p_help_text=>'Pick your favorite number!'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12931816632088655361)
,p_name=>'P300_PROJECT_FLEX_N03'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(12931814525018655353)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Project Flex N03'
,p_source=>'PROJECT_FLEX_N03'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'PLUGIN_COM.ORACLE.APEX.FLEX_FIELD'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'from eba_proj_flex_registry',
'where flexible_table = ''EBA_PROJ_STATUS''',
'    and active_yn = ''Y''',
'    and flexible_column = ''PROJECT_FLEX_N03'''))
,p_display_when_type=>'EXISTS'
,p_field_template=>wwv_flow_api.id(6781134673650890856)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_required_patch=>wwv_flow_api.id(6252446509804687380)
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12931817077282655362)
,p_name=>'P300_PROJECT_FLEX_N04'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(12931814525018655353)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Project Flex N04'
,p_source=>'PROJECT_FLEX_N04'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'PLUGIN_COM.ORACLE.APEX.FLEX_FIELD'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'from eba_proj_flex_registry',
'where flexible_table = ''EBA_PROJ_STATUS''',
'    and active_yn = ''Y''',
'    and flexible_column = ''PROJECT_FLEX_N04'''))
,p_display_when_type=>'EXISTS'
,p_field_template=>wwv_flow_api.id(6781134673650890856)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_required_patch=>wwv_flow_api.id(6252446509804687380)
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12931817441784655362)
,p_name=>'P300_PROJECT_FLEX_D01'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(12931814525018655353)
,p_use_cache_before_default=>'NO'
,p_prompt=>'fff'
,p_source=>'PROJECT_FLEX_D01'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'PLUGIN_COM.ORACLE.APEX.FLEX_FIELD'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'from eba_proj_flex_registry',
'where flexible_table = ''EBA_PROJ_STATUS''',
'    and active_yn = ''Y''',
'    and flexible_column = ''PROJECT_FLEX_D01'''))
,p_display_when_type=>'EXISTS'
,p_field_template=>wwv_flow_api.id(6781134673650890856)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_required_patch=>wwv_flow_api.id(6252446509804687380)
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12931817877591655362)
,p_name=>'P300_PROJECT_FLEX_D02'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_api.id(12931814525018655353)
,p_use_cache_before_default=>'NO'
,p_prompt=>'hhhh'
,p_source=>'PROJECT_FLEX_D02'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'PLUGIN_COM.ORACLE.APEX.FLEX_FIELD'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'from eba_proj_flex_registry',
'where flexible_table = ''EBA_PROJ_STATUS''',
'    and active_yn = ''Y''',
'    and flexible_column = ''PROJECT_FLEX_D02'''))
,p_display_when_type=>'EXISTS'
,p_field_template=>wwv_flow_api.id(6781134673650890856)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_required_patch=>wwv_flow_api.id(6252446509804687380)
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12931818216348655363)
,p_name=>'P300_PROJECT_FLEX_D03'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_api.id(12931814525018655353)
,p_use_cache_before_default=>'NO'
,p_prompt=>'yyyy'
,p_source=>'PROJECT_FLEX_D03'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'PLUGIN_COM.ORACLE.APEX.FLEX_FIELD'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'from eba_proj_flex_registry',
'where flexible_table = ''EBA_PROJ_STATUS''',
'    and active_yn = ''Y''',
'    and flexible_column = ''PROJECT_FLEX_D03'''))
,p_display_when_type=>'EXISTS'
,p_field_template=>wwv_flow_api.id(6781134673650890856)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_required_patch=>wwv_flow_api.id(6252446509804687380)
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12931818648569655363)
,p_name=>'P300_PROJECT_FLEX_D04'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_api.id(12931814525018655353)
,p_use_cache_before_default=>'NO'
,p_prompt=>'ssss'
,p_source=>'PROJECT_FLEX_D04'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'PLUGIN_COM.ORACLE.APEX.FLEX_FIELD'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'from eba_proj_flex_registry',
'where flexible_table = ''EBA_PROJ_STATUS''',
'    and active_yn = ''Y''',
'    and flexible_column = ''PROJECT_FLEX_D04'''))
,p_display_when_type=>'EXISTS'
,p_field_template=>wwv_flow_api.id(6781134673650890856)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_required_patch=>wwv_flow_api.id(6252446509804687380)
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12931819014853655364)
,p_name=>'P300_PROJECT_FLEX_01'
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_api.id(12931814525018655353)
,p_use_cache_before_default=>'NO'
,p_prompt=>'lov'
,p_source=>'PROJECT_FLEX_01'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'PLUGIN_COM.ORACLE.APEX.FLEX_FIELD'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'from eba_proj_flex_registry',
'where flexible_table = ''EBA_PROJ_STATUS''',
'    and active_yn = ''Y''',
'    and flexible_column = ''PROJECT_FLEX_01'''))
,p_display_when_type=>'EXISTS'
,p_field_template=>wwv_flow_api.id(6781134673650890856)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_required_patch=>wwv_flow_api.id(6252446509804687380)
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12931819452422655364)
,p_name=>'P300_PROJECT_FLEX_02'
,p_item_sequence=>310
,p_item_plug_id=>wwv_flow_api.id(12931814525018655353)
,p_use_cache_before_default=>'NO'
,p_prompt=>'text flex'
,p_source=>'PROJECT_FLEX_02'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'PLUGIN_COM.ORACLE.APEX.FLEX_FIELD'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'from eba_proj_flex_registry',
'where flexible_table = ''EBA_PROJ_STATUS''',
'    and active_yn = ''Y''',
'    and flexible_column = ''PROJECT_FLEX_02'''))
,p_display_when_type=>'EXISTS'
,p_field_template=>wwv_flow_api.id(6781134673650890856)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_required_patch=>wwv_flow_api.id(6252446509804687380)
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12931819830043655365)
,p_name=>'P300_PROJECT_FLEX_03'
,p_item_sequence=>320
,p_item_plug_id=>wwv_flow_api.id(12931814525018655353)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Project Flex 03'
,p_source=>'PROJECT_FLEX_03'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'PLUGIN_COM.ORACLE.APEX.FLEX_FIELD'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'from eba_proj_flex_registry',
'where flexible_table = ''EBA_PROJ_STATUS''',
'    and active_yn = ''Y''',
'    and flexible_column = ''PROJECT_FLEX_03'''))
,p_display_when_type=>'EXISTS'
,p_field_template=>wwv_flow_api.id(6781134673650890856)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_required_patch=>wwv_flow_api.id(6252446509804687380)
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12931820250229655365)
,p_name=>'P300_PROJECT_FLEX_04'
,p_item_sequence=>330
,p_item_plug_id=>wwv_flow_api.id(12931814525018655353)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Project Flex 04'
,p_source=>'PROJECT_FLEX_04'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'PLUGIN_COM.ORACLE.APEX.FLEX_FIELD'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'from eba_proj_flex_registry',
'where flexible_table = ''EBA_PROJ_STATUS''',
'    and active_yn = ''Y''',
'    and flexible_column = ''PROJECT_FLEX_04'''))
,p_display_when_type=>'EXISTS'
,p_field_template=>wwv_flow_api.id(6781134673650890856)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_required_patch=>wwv_flow_api.id(6252446509804687380)
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12931820685549655365)
,p_name=>'P300_PROJECT_FLEX_05'
,p_item_sequence=>340
,p_item_plug_id=>wwv_flow_api.id(12931814525018655353)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Project Flex 05'
,p_source=>'PROJECT_FLEX_05'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'PLUGIN_COM.ORACLE.APEX.FLEX_FIELD'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'from eba_proj_flex_registry',
'where flexible_table = ''EBA_PROJ_STATUS''',
'    and active_yn = ''Y''',
'    and flexible_column = ''PROJECT_FLEX_05'''))
,p_display_when_type=>'EXISTS'
,p_field_template=>wwv_flow_api.id(6781134673650890856)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_required_patch=>wwv_flow_api.id(6252446509804687380)
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12931821057133655366)
,p_name=>'P300_PROJECT_FLEX_06'
,p_item_sequence=>350
,p_item_plug_id=>wwv_flow_api.id(12931814525018655353)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Project Flex 06'
,p_source=>'PROJECT_FLEX_06'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'PLUGIN_COM.ORACLE.APEX.FLEX_FIELD'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'from eba_proj_flex_registry',
'where flexible_table = ''EBA_PROJ_STATUS''',
'    and active_yn = ''Y''',
'    and flexible_column = ''PROJECT_FLEX_06'''))
,p_display_when_type=>'EXISTS'
,p_field_template=>wwv_flow_api.id(6781134673650890856)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_required_patch=>wwv_flow_api.id(6252446509804687380)
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12931821452889655366)
,p_name=>'P300_PROJECT_FLEX_07'
,p_item_sequence=>360
,p_item_plug_id=>wwv_flow_api.id(12931814525018655353)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Project Flex 07'
,p_source=>'PROJECT_FLEX_07'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'PLUGIN_COM.ORACLE.APEX.FLEX_FIELD'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'from eba_proj_flex_registry',
'where flexible_table = ''EBA_PROJ_STATUS''',
'    and active_yn = ''Y''',
'    and flexible_column = ''PROJECT_FLEX_07'''))
,p_display_when_type=>'EXISTS'
,p_field_template=>wwv_flow_api.id(6781134673650890856)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_required_patch=>wwv_flow_api.id(6252446509804687380)
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12931821894538655367)
,p_name=>'P300_PROJECT_FLEX_08'
,p_item_sequence=>370
,p_item_plug_id=>wwv_flow_api.id(12931814525018655353)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Project Flex 08'
,p_source=>'PROJECT_FLEX_08'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'PLUGIN_COM.ORACLE.APEX.FLEX_FIELD'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'from eba_proj_flex_registry',
'where flexible_table = ''EBA_PROJ_STATUS''',
'    and active_yn = ''Y''',
'    and flexible_column = ''PROJECT_FLEX_08'''))
,p_display_when_type=>'EXISTS'
,p_field_template=>wwv_flow_api.id(6781134673650890856)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_required_patch=>wwv_flow_api.id(6252446509804687380)
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12931822214514655367)
,p_name=>'P300_PROJECT_FLEX_CLOB'
,p_item_sequence=>380
,p_item_plug_id=>wwv_flow_api.id(12931814525018655353)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Large'
,p_source=>'PROJECT_FLEX_CLOB'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'PLUGIN_COM.ORACLE.APEX.FLEX_FIELD'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'from eba_proj_flex_registry',
'where flexible_table = ''EBA_PROJ_STATUS''',
'    and active_yn = ''Y''',
'    and flexible_column = ''PROJECT_FLEX_CLOB'''))
,p_display_when_type=>'EXISTS'
,p_field_template=>wwv_flow_api.id(6781134673650890856)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_required_patch=>wwv_flow_api.id(6252446509804687380)
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13414314489331285744)
,p_name=>'P300_USE_TEMPLATE_YN'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(11708296067704766417)
,p_item_default=>'N'
,p_prompt=>'Use a Project Template'
,p_display_as=>'NATIVE_YES_NO'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'  from eba_proj_templates'))
,p_display_when_type=>'EXISTS'
,p_field_template=>wwv_flow_api.id(6781134673650890856)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_required_patch=>wwv_flow_api.id(13619049542774220759)
,p_help_text=>'Projects created from a template contain sets of pre-created milestones and action items.'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13414314512829285745)
,p_name=>'P300_PROJECT_START_DATE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(11708296067704766417)
,p_item_default=>'to_char(current_timestamp,''fmDD-MON-YYYY'')'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Start Date'
,p_format_mask=>'fmDD-MON-YYYY'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(6781134744367890857)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_help_text=>'Select the date that this project is scheduled to begin on.'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13414314664983285746)
,p_name=>'P300_TEMPLATE_ID'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(11708296067704766417)
,p_prompt=>'Template'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'PROJECT TEMPLATES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select name as d,',
'       id as r',
'  from eba_proj_templates',
' order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select -'
,p_cHeight=>1
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'  from eba_proj_templates'))
,p_display_when_type=>'EXISTS'
,p_field_template=>wwv_flow_api.id(6781134744367890857)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_required_patch=>wwv_flow_api.id(13619049542774220759)
,p_help_text=>'Select the template that you want to seed this project''s pre-configured milestones and action items from.'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(20233638585103250529)
,p_name=>'P300_CODE_NAME'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(11708296067704766417)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Code Name'
,p_source=>'CODE_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(6781134673650890856)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_required_patch=>wwv_flow_api.id(19245436446324471171)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(11708437420198904428)
,p_validation_name=>'P300_PROJECT Name is Unique'
,p_validation_sequence=>20
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'  from EBA_PROJ_STATUS$',
' where lower(PROJECT) = lower(:P300_PROJECT)'))
,p_validation_type=>'NOT_EXISTS'
,p_error_message=>'A project with this name already exists. Please use a different project name.'
,p_when_button_pressed=>wwv_flow_api.id(11347037886826087540)
,p_associated_item=>wwv_flow_api.id(11708297127175766422)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(13414315435277285754)
,p_validation_name=>'P300_TEMPLATE_ID Not Null'
,p_validation_sequence=>30
,p_validation=>'P300_TEMPLATE_ID'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#LABEL# must have some value.'
,p_validation_condition=>'P300_USE_TEMPLATE_YN'
,p_validation_condition2=>'Y'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_when_button_pressed=>wwv_flow_api.id(11347037886826087540)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
,p_required_patch=>wwv_flow_api.id(13619049542774220759)
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
 p_id=>wwv_flow_api.id(13414315514558285755)
,p_validation_name=>'P300_PROJECT_START_DATE Not Null'
,p_validation_sequence=>40
,p_validation=>'P300_PROJECT_START_DATE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#LABEL# must have some value.'
,p_validation_condition=>'P300_USE_TEMPLATE_YN'
,p_validation_condition2=>'Y'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_when_button_pressed=>wwv_flow_api.id(11347037886826087540)
,p_associated_item=>wwv_flow_api.id(13414314512829285745)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
,p_required_patch=>wwv_flow_api.id(13619049542774220759)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(11708400296271804069)
,p_name=>'show hide new cat'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P300_PROJECT_CATEGORY'
,p_condition_element=>'P300_PROJECT_CATEGORY'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'0'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(11708400618548804073)
,p_event_id=>wwv_flow_api.id(11708400296271804069)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P300_NEW_CATEGORY'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(11708401207261804074)
,p_event_id=>wwv_flow_api.id(11708400296271804069)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P300_NEW_CATEGORY'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(11347039908097087560)
,p_event_id=>wwv_flow_api.id(11708400296271804069)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P300_NEW_CATEGORY'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(11347039671011087558)
,p_name=>'Cancel Dialog'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(11347037714775087539)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(11347039756018087559)
,p_event_id=>wwv_flow_api.id(11347039671011087558)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(13414314783138285747)
,p_name=>'Show/Hide Template Options'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P300_USE_TEMPLATE_YN'
,p_condition_element=>'P300_USE_TEMPLATE_YN'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'Y'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(13414314904305285748)
,p_event_id=>wwv_flow_api.id(13414314783138285747)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P300_TEMPLATE_ID'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(13414315007643285749)
,p_event_id=>wwv_flow_api.id(13414314783138285747)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P300_TEMPLATE_ID'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(12288021570382109840)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Get Flex Field Data'
,p_attribute_02=>'EBA_PROJ_STATUS'
,p_attribute_03=>'P300_ID'
,p_attribute_04=>'ID'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_type=>'NEVER'
);
wwv_flow_api.component_end;
end;
/
