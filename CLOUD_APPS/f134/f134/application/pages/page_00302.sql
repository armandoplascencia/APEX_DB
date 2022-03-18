prompt --application/pages/page_00302
begin
--   Manifest
--     PAGE: 00302
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
 p_id=>302
,p_user_interface_id=>wwv_flow_api.id(5783577205373975152)
,p_name=>'Create Project Wizard Step 3'
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
,p_last_upd_yyyymmddhh24miss=>'20190913132942'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(11347038936155087551)
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
 p_id=>wwv_flow_api.id(11676817189917632428)
,p_plug_name=>'Create Project Wizard Container'
,p_component_template_options=>'#DEFAULT#:t-WizardSteps--displayLabels'
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_list_id=>wwv_flow_api.id(11676590063018682874)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(6781133859764890851)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(11676818782830632431)
,p_plug_name=>'Form Items'
,p_region_template_options=>'#DEFAULT#:t-Form--large:t-Form--stretchInputs'
,p_plug_template=>wwv_flow_api.id(6781104626075890777)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(11714784947001510421)
,p_plug_name=>'Custom Attributes'
,p_region_template_options=>'#DEFAULT#:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(6781115417665890803)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_column=>false
,p_plug_display_point=>'BODY'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
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
 p_id=>wwv_flow_api.id(11676817930939632430)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(11347038936155087551)
,p_button_name=>'Cancel'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(6781135529450890864)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(11676818313281632430)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(11347038936155087551)
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
 p_id=>wwv_flow_api.id(11676817552897632429)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(11347038936155087551)
,p_button_name=>'Previous'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(6781134785393890859)
,p_button_image_alt=>'Previous'
,p_button_position=>'REGION_TEMPLATE_PREVIOUS'
,p_button_redirect_url=>'f?p=&APP_ID.:301:&SESSION.::&DEBUG.:RP::'
,p_icon_css_classes=>'fa-chevron-left'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(11676820050302632434)
,p_branch_name=>'Go to Next Step'
,p_branch_action=>'f?p=&APP_ID.:303:&SESSION.::&DEBUG.:RP::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(11676818313281632430)
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(2770696745041251404)
,p_name=>'P302_HEADLINE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(11676818782830632431)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Headline'
,p_source=>'HEADLINE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(6899231875758612224)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_required_patch=>wwv_flow_api.id(2770584289789526386)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(2770696845709251405)
,p_name=>'P302_REQUESTING_TEAM'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(11676818782830632431)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Requesting Team(s)'
,p_source=>'REQUESTING_TEAM'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_AUTO_COMPLETE'
,p_lov=>'select distinct REQUESTING_TEAM from eba_proj_status'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(6899231875758612224)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_required_patch=>wwv_flow_api.id(2770586391043537687)
,p_attribute_01=>'CONTAINS_IGNORE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(2770696929215251406)
,p_name=>'P302_IMPACTED_ENVIRONMENT'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(11676818782830632431)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Impacted Environment(s)'
,p_source=>'IMPACTED_ENVIRONMENT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(6899231875758612224)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_required_patch=>wwv_flow_api.id(2770586993360548656)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(4112884582675300490)
,p_name=>'P302_PROJECT_FLEX_D05'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(11714784947001510421)
,p_prompt=>'Project Flex D05'
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
 p_id=>wwv_flow_api.id(4112884693696300491)
,p_name=>'P302_PROJECT_FLEX_D06'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(11714784947001510421)
,p_prompt=>'Project Flex D06'
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
 p_id=>wwv_flow_api.id(4112884778902300492)
,p_name=>'P302_PROJECT_FLEX_D07'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(11714784947001510421)
,p_prompt=>'Project Flex D07'
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
 p_id=>wwv_flow_api.id(4112884901565300493)
,p_name=>'P302_PROJECT_FLEX_D08'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(11714784947001510421)
,p_prompt=>'Project Flex D08'
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
 p_id=>wwv_flow_api.id(4112884936085300494)
,p_name=>'P302_PROJECT_FLEX_D09'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(11714784947001510421)
,p_prompt=>'Project Flex D09'
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
 p_id=>wwv_flow_api.id(4112885008839300495)
,p_name=>'P302_PROJECT_FLEX_D10'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(11714784947001510421)
,p_prompt=>'Project Flex D10'
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
 p_id=>wwv_flow_api.id(4112885196490300496)
,p_name=>'P302_PROJECT_FLEX_D11'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(11714784947001510421)
,p_prompt=>'Project Flex D11'
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
 p_id=>wwv_flow_api.id(4112885301639300497)
,p_name=>'P302_PROJECT_FLEX_D12'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(11714784947001510421)
,p_prompt=>'Project Flex D12'
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
 p_id=>wwv_flow_api.id(11714680044008418332)
,p_name=>'P302_URL'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(11676818782830632431)
,p_prompt=>'Primary URL'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>80
,p_cMaxlength=>4000
,p_field_template=>wwv_flow_api.id(6899231875758612224)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_help_text=>'Use this attribute to identify an external web site that is considered the primary URL for this project.  For example it could be a link to an external system or cloud service, or a link to an external marketing page that describes your project.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(11714785248998510426)
,p_name=>'P302_PROJECT_FLEX_N01'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(11714784947001510421)
,p_prompt=>'What?'
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
,p_help_text=>'I''m updating a flex field. This should have limited update impact.'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(11714786124340510430)
,p_name=>'P302_PROJECT_FLEX_N02'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(11714784947001510421)
,p_prompt=>'Random Number'
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
 p_id=>wwv_flow_api.id(11714787015780510431)
,p_name=>'P302_PROJECT_FLEX_N03'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(11714784947001510421)
,p_prompt=>'Project Flex N03'
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
 p_id=>wwv_flow_api.id(11714787429081510432)
,p_name=>'P302_PROJECT_FLEX_N04'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(11714784947001510421)
,p_prompt=>'Project Flex N04'
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
 p_id=>wwv_flow_api.id(11714787902544510433)
,p_name=>'P302_PROJECT_FLEX_D01'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(11714784947001510421)
,p_prompt=>'Project Flex D01'
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
 p_id=>wwv_flow_api.id(11714788278840510433)
,p_name=>'P302_PROJECT_FLEX_D02'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(11714784947001510421)
,p_prompt=>'Project Flex D02'
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
 p_id=>wwv_flow_api.id(11714788708788510434)
,p_name=>'P302_PROJECT_FLEX_D03'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(11714784947001510421)
,p_prompt=>'Project Flex D03'
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
 p_id=>wwv_flow_api.id(11714789057793510435)
,p_name=>'P302_PROJECT_FLEX_D04'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(11714784947001510421)
,p_prompt=>'Project Flex D04'
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
 p_id=>wwv_flow_api.id(11714789484701510436)
,p_name=>'P302_PROJECT_FLEX_01'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(11714784947001510421)
,p_prompt=>'New Field'
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
 p_id=>wwv_flow_api.id(11714789844907510436)
,p_name=>'P302_PROJECT_FLEX_02'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(11714784947001510421)
,p_prompt=>'Project Flex 02'
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
 p_id=>wwv_flow_api.id(11714790308401510436)
,p_name=>'P302_PROJECT_FLEX_03'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_api.id(11714784947001510421)
,p_prompt=>'Project Flex 03'
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
 p_id=>wwv_flow_api.id(11714790658733510437)
,p_name=>'P302_PROJECT_FLEX_04'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_api.id(11714784947001510421)
,p_prompt=>'Project Flex 04'
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
 p_id=>wwv_flow_api.id(11714791072496510437)
,p_name=>'P302_PROJECT_FLEX_05'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_api.id(11714784947001510421)
,p_prompt=>'Project Flex 05'
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
 p_id=>wwv_flow_api.id(11714791465477510438)
,p_name=>'P302_PROJECT_FLEX_06'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_api.id(11714784947001510421)
,p_prompt=>'Project Flex 06'
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
 p_id=>wwv_flow_api.id(11714791848090510438)
,p_name=>'P302_PROJECT_FLEX_07'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_api.id(11714784947001510421)
,p_prompt=>'Project Flex 07'
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
 p_id=>wwv_flow_api.id(11714792243472510439)
,p_name=>'P302_PROJECT_FLEX_08'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_api.id(11714784947001510421)
,p_prompt=>'Project Flex 08'
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
 p_id=>wwv_flow_api.id(11714792645649510441)
,p_name=>'P302_PROJECT_FLEX_CLOB'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_api.id(11714784947001510421)
,p_prompt=>'Project Flex CLOB'
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
 p_id=>wwv_flow_api.id(11714806009696428646)
,p_name=>'P302_GOAL'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(11676818782830632431)
,p_prompt=>'Goal'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>4000
,p_cHeight=>3
,p_tag_attributes=>'onchange="htmldb_item_change(this)"'
,p_field_template=>wwv_flow_api.id(6899231875758612224)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_help_text=>'Identifies the goal of the project.  Identifying the goal of a project promotes a common focus and understanding.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(11714812971516433571)
,p_name=>'P302_TAGS'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(11676818782830632431)
,p_prompt=>'Tags'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select tag',
'  from eba_proj_tags_type_sum',
' where content_type = ''STATUS''',
' order by 1'))
,p_lov_display_null=>'YES'
,p_cSize=>80
,p_cMaxlength=>4000
,p_tag_attributes=>'placeholder="Enter tags separated by commas"'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(6899231875758612224)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'Y'
,p_attribute_04=>'Y'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
,p_attribute_11=>','
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(11714835048478516879)
,p_name=>'P302_PROJECT_CUSTOMER'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(11676818782830632431)
,p_prompt=>'Customer'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>80
,p_cMaxlength=>255
,p_tag_attributes=>'onchange="htmldb_item_change(this)"'
,p_field_template=>wwv_flow_api.id(6899231875758612224)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_help_text=>'If this project is in support of a customer identify the customer name.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13598163713301178940)
,p_name=>'P302_PROJECT_STATUS'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(11676818782830632431)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--for c1 in (select  ID from EBA_PROJ_STATUS_CODES where STATUS_short_desc = ''Unknown'') loop',
'--   return c1.id;',
'--end loop;',
'return null;'))
,p_item_default_type=>'FUNCTION_BODY'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Status'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'PAGE 2 PROJECT_STATUS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select STATUS_short_desc display_value, ID return_value ',
'from EBA_PROJ_STATUS_CODES s',
'where s.is_active_yn = ''Y'' or id = :P2_PROJECT_STATUS',
'order by s.is_active_yn desc, s.display_sequence'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select -'
,p_cHeight=>1
,p_tag_attributes=>'onchange="htmldb_item_change(this)"'
,p_field_template=>wwv_flow_api.id(6899231939251612225)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_help_text=>'Select a status that best fits the project.'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13598165143032181762)
,p_name=>'P302_PROJECT_CATEGORY'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(11676818782830632431)
,p_item_default=>'-1'
,p_prompt=>'&CAT_TITLE.'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select display_value d, return_value r',
'from (',
'    select ''- Select '' || :CAT_TITLE || '' -'' display_value, -1 return_value, 1 sort_order',
'    from dual',
'    union all',
'    select ''- New '' || :CAT_TITLE || '' -'' display_value, 0 return_value, 2 sort_order',
'    from ( select eba_proj_fw.get_preference_value(''CATEGORY_CREATION_LEVEL'') ccl,',
'                eba_proj_stat_ui.get_authorization_level( :APP_USER ) al',
'            from dual ) x',
'    where x.al >= 3',
'        or ( x.al = 2 and x.ccl in (''CONTRIB'',''Preference does not exist''))',
'    union all',
'    select CATEGORY display_value, ID return_value, 3 sort_order',
'    from eba_proj_status_cats c',
')',
'order by sort_order, lower(display_value)'))
,p_cHeight=>1
,p_tag_attributes=>'onchange="htmldb_item_change(this)"'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(6899231875758612224)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_help_text=>'Select a &CAT_TITLE_LC. that best fits the project.'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
,p_item_comment=>'&CAT_TITLE_PL. allow projects to be grouped.  You can create new &CAT_TITLE_PL_LC. as needed.'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13598170722588185828)
,p_name=>'P302_NEW_CATEGORY'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(11676818782830632431)
,p_prompt=>'New &CAT_TITLE.'
,p_placeholder=>'New &CAT_TITLE.'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>64
,p_cMaxlength=>4000
,p_grid_label_column_span=>0
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'from ( select eba_proj_fw.get_preference_value(''CATEGORY_CREATION_LEVEL'') ccl,',
'            eba_proj_stat_ui.get_authorization_level( :APP_USER ) al',
'        from dual ) x',
'where x.al >= 3',
'    or ( x.al = 2 and x.ccl in (''CONTRIB'',''Preference does not exist''))'))
,p_display_when_type=>'EXISTS'
,p_field_template=>wwv_flow_api.id(6781134578441890854)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13598176639717242075)
,p_name=>'P302_SIZE_ID'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(11676818782830632431)
,p_prompt=>'Project Size'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select project_size, id',
'from eba_proj_status_sizes',
'order by display_sequence'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select -'
,p_cHeight=>1
,p_tag_attributes=>'onchange="htmldb_item_change(this)"'
,p_field_template=>wwv_flow_api.id(6899231875758612224)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_required_patch=>wwv_flow_api.id(12240751934287757551)
,p_help_text=>'Choose the size that best fits the project.'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
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
 p_id=>wwv_flow_api.id(13598190027139193705)
,p_name=>'P302_DESCRIPTION'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(11676818782830632431)
,p_prompt=>'Description'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>65
,p_cMaxlength=>4000
,p_cHeight=>5
,p_field_template=>wwv_flow_api.id(6899231875758612224)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_restricted_characters=>'WEB_SAFE'
,p_help_text=>'Enter descriptive text about this project. HTML is not allowed.'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(20728279588914320256)
,p_name=>'P302_COUNTRY_ID'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(11676818782830632431)
,p_prompt=>'Country'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'P302_COUNTRIES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select country_name d, id r',
'  from eba_proj_countries',
' where :P302_REGION_ID is null',
'    or region_id = :P302_REGION_ID',
' order by lower(country_name)'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select -'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(6899231875758612224)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_required_patch=>wwv_flow_api.id(18990974587291614877)
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(20728279701215320257)
,p_name=>'P302_REGION_ID'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(11676818782830632431)
,p_prompt=>'Region'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'REGIONS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select region_name d, id r',
'from eba_proj_regions',
'order by lower(region_name)'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select -'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(6899231875758612224)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_required_patch=>wwv_flow_api.id(18990974587291614877)
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(20728280038659320261)
,p_name=>'P302_CORRECT_REGION_ID'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(11676818782830632431)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(21157149967664596446)
,p_name=>'P302_DEAL_TYPE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(11676818782830632431)
,p_prompt=>'Deal Type'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'DEAL TYPES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    deal_type d,',
'    id r',
'from',
'    eba_proj_deal_types',
'where',
'    is_active_yn = ''Y''',
'order by',
'    display_sequence'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select -'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(6899231875758612224)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_required_patch=>wwv_flow_api.id(19245446063791282124)
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(13598214053479205749)
,p_validation_name=>'P302_NEW_CATEGORY Not Null'
,p_validation_sequence=>10
,p_validation=>'P302_NEW_CATEGORY'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'&CAT_TITLE. or New &CAT_TITLE. must be entered'
,p_validation_condition=>'P302_PROJECT_CATEGORY'
,p_validation_condition2=>'0'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_when_button_pressed=>wwv_flow_api.id(11676818313281632430)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(446345025117570566)
,p_validation_name=>'Valid Characters in Tags'
,p_validation_sequence=>20
,p_validation=>'not regexp_like( :P302_TAGS, ''[:;#\/\\\?\&]'' )'
,p_validation2=>'PLSQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>'Tags may not contain the following characters: : ; \ / ? &'
,p_when_button_pressed=>wwv_flow_api.id(11676818313281632430)
,p_associated_item=>wwv_flow_api.id(11714812971516433571)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(11717560053316674535)
,p_name=>'CNX Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(11676817930939632430)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(11717560207209674536)
,p_event_id=>wwv_flow_api.id(11717560053316674535)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(13598172976985188855)
,p_name=>'show hide new cat'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P302_PROJECT_CATEGORY'
,p_condition_element=>'P302_PROJECT_CATEGORY'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'0'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(13598183905114188865)
,p_event_id=>wwv_flow_api.id(13598172976985188855)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P302_NEW_CATEGORY'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(13598184314608188865)
,p_event_id=>wwv_flow_api.id(13598172976985188855)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P302_NEW_CATEGORY'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(13598173329244188863)
,p_event_id=>wwv_flow_api.id(13598172976985188855)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P302_NEW_CATEGORY'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(20728279719666320258)
,p_name=>'Set Region'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P302_COUNTRY_ID'
,p_condition_element=>'P302_COUNTRY_ID'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(20728279950748320260)
,p_event_id=>wwv_flow_api.id(20728279719666320258)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P302_REGION_ID,P302_CORRECT_REGION_ID'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>'select region_id from eba_proj_countries where id = :P302_COUNTRY_ID'
,p_attribute_07=>'P302_COUNTRY_ID'
,p_attribute_08=>'Y'
,p_attribute_09=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(20728280145956320262)
,p_name=>'Reset Country if Region Changes'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P302_REGION_ID'
,p_bind_type=>'live'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(20728280547911320266)
,p_event_id=>wwv_flow_api.id(20728280145956320262)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P302_REGION_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(20728280629723320267)
,p_event_id=>wwv_flow_api.id(20728280145956320262)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P302_COUNTRY_ID'
);
wwv_flow_api.component_end;
end;
/
