prompt --application/pages/page_00002
begin
--   Manifest
--     PAGE: 00002
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
 p_id=>2
,p_user_interface_id=>wwv_flow_api.id(5783577205373975152)
,p_name=>'Project Details'
,p_page_mode=>'MODAL'
,p_step_title=>'Project Details'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_api.id(5956243887448595899)
,p_html_page_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<style>',
'.sidebar-region {width: 300px !important}',
'</style>'))
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';',
'var htmldb_ch_message=''"OK_TO_GET_NEXT_PREV_PK_VALUE"'';'))
,p_step_template=>wwv_flow_api.id(6781101375889890768)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(7306166303644991446)
,p_dialog_attributes=>'resizable:true'
,p_protection_level=>'C'
,p_last_upd_yyyymmddhh24miss=>'20190912092427'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(6255807581769766249)
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
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(7816565236600242114)
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
 p_id=>wwv_flow_api.id(9012050621033058227)
,p_plug_name=>'Project'
,p_region_template_options=>'#DEFAULT#:t-Form--stretchInputs'
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
 p_id=>wwv_flow_api.id(9012054035643058233)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(6781117976757890807)
,p_plug_display_sequence=>40
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(8972392840601050532)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(6781135716305890867)
,p_plug_display_condition_type=>'NEVER'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(11755341782845499240)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(6781104860657890779)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(9012051131897058228)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(11755341782845499240)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(6781135529450890864)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(9012050916048058227)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(11755341782845499240)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--gapLeft'
,p_button_template_id=>wwv_flow_api.id(6781135529450890864)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'P2_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_security_scheme=>wwv_flow_api.id(7306166303644991446)
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(9012050832026058227)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(11755341782845499240)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--gapLeft'
,p_button_template_id=>wwv_flow_api.id(6781135529450890864)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create Project'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P2_ID is null',
'and',
'(',
'    (',
'        eba_proj_stat_ui.get_authorization_level(:APP_USER) >= 2',
'        and',
'        replace(eba_proj_fw.get_preference_value( ''PROJECT_CREATE_REQ_AUTH_ROLE'' ),''Preference does not exist'',''CONTRIBUTORS'') =  ''CONTRIBUTORS''',
'    )',
'    or',
'    (',
'        eba_proj_stat_ui.get_authorization_level(:APP_USER) >= 3',
'        and',
'        replace(eba_proj_fw.get_preference_value( ''PROJECT_CREATE_REQ_AUTH_ROLE'' ),''Preference does not exist'',''CONTRIBUTORS'') =  ''ADMINS''',
'    )',
'    or',
'    (',
'        eba_proj_stat_ui.get_authorization_level(:APP_USER) >= 4',
'        and',
'        replace(eba_proj_fw.get_preference_value( ''PROJECT_CREATE_REQ_AUTH_ROLE'' ),''Preference does not exist'',''CONTRIBUTORS'') =  ''SUPER_ADMINS''',
'    )',
')'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_security_scheme=>wwv_flow_api.id(7306166303644991446)
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(9012051028330058227)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(11755341782845499240)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>wwv_flow_api.id(6781135529450890864)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'eba_proj_fw.are_ms_ai_restricted( :APP_ID, :APP_USER, :P2_ID ) = ''N'''
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_security_scheme=>wwv_flow_api.id(7306166303644991446)
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(7141413206158699529)
,p_branch_name=>'Go To &PROJECT_CAME_FROM.'
,p_branch_action=>'f?p=&APP_ID.:&PROJECT_CAME_FROM.:&SESSION.::&DEBUG.:::'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(9012051028330058227)
,p_branch_sequence=>10
,p_branch_comment=>'Created 18-NOV-2011 05:55 by DAVID.GALE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(9012051840539058229)
,p_branch_name=>'Go To Page &LAST_VIEW.'
,p_branch_action=>'f?p=&APP_ID.:&LAST_VIEW.:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>20
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(2760163530708015475)
,p_name=>'P2_HEADLINE'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(9012050621033058227)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Headline'
,p_source=>'HEADLINE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_field_template=>wwv_flow_api.id(6781134673650890856)
,p_item_template_options=>'#DEFAULT#'
,p_required_patch=>wwv_flow_api.id(2770584289789526386)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(2760163626799015476)
,p_name=>'P2_REQUESTING_TEAM'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(9012050621033058227)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Requesting Team(s)'
,p_source=>'REQUESTING_TEAM'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_AUTO_COMPLETE'
,p_lov=>'select distinct REQUESTING_TEAM from eba_proj_status;'
,p_cSize=>30
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(6781134673650890856)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_required_patch=>wwv_flow_api.id(2770586391043537687)
,p_help_text=>'When providing more than one requesting team, please use a comma-separated list.'
,p_attribute_01=>'CONTAINS_IGNORE'
,p_attribute_04=>'N'
,p_attribute_06=>'N'
,p_attribute_07=>'Y'
,p_attribute_08=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(2760163737807015477)
,p_name=>'P2_IMPACTED_ENVIRONMENT'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(9012050621033058227)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Impacted Environment'
,p_source=>'IMPACTED_ENVIRONMENT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_AUTO_COMPLETE'
,p_lov=>'select distinct IMPACTED_ENVIRONMENT from eba_proj_status;'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(6781134673650890856)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_required_patch=>wwv_flow_api.id(2770586993360548656)
,p_help_text=>'When providing more than one impacted environment, please use a comma-separated list.'
,p_attribute_01=>'CONTAINS_IGNORE'
,p_attribute_04=>'N'
,p_attribute_06=>'N'
,p_attribute_07=>'Y'
,p_attribute_08=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(4112881333062300458)
,p_name=>'P2_PROJECT_FLEX_D05'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_api.id(6255807581769766249)
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
,p_required_patch=>wwv_flow_api.id(6252446509804687380)
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(4112881407979300459)
,p_name=>'P2_PROJECT_FLEX_D06'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_api.id(6255807581769766249)
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
,p_required_patch=>wwv_flow_api.id(6252446509804687380)
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(4112881509649300460)
,p_name=>'P2_PROJECT_FLEX_D07'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_api.id(6255807581769766249)
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
,p_required_patch=>wwv_flow_api.id(6252446509804687380)
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(4112881637041300461)
,p_name=>'P2_PROJECT_FLEX_D08'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_api.id(6255807581769766249)
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
,p_required_patch=>wwv_flow_api.id(6252446509804687380)
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(4112881796103300462)
,p_name=>'P2_PROJECT_FLEX_D09'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_api.id(6255807581769766249)
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
,p_required_patch=>wwv_flow_api.id(6252446509804687380)
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(4112881827820300463)
,p_name=>'P2_PROJECT_FLEX_D10'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_api.id(6255807581769766249)
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
,p_required_patch=>wwv_flow_api.id(6252446509804687380)
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(4112881934959300464)
,p_name=>'P2_PROJECT_FLEX_D11'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_api.id(6255807581769766249)
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
,p_required_patch=>wwv_flow_api.id(6252446509804687380)
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(4112882035431300465)
,p_name=>'P2_PROJECT_FLEX_D12'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_api.id(6255807581769766249)
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
,p_required_patch=>wwv_flow_api.id(6252446509804687380)
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(4145549999772246170)
,p_name=>'P2_LOGO'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(9012050621033058227)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Project Logo'
,p_source=>'LOGO_BLOB'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_FILE'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(6781134673650890856)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Upload an image file (.png, .jpg, .gif, etc...) that represents this project. The image''s height and width should be 128x128 or 256x256 (in pixels) and cannot exceed 50kb in size.'
,p_attribute_01=>'DB_COLUMN'
,p_attribute_02=>'LOGO_MIMETYPE'
,p_attribute_03=>'LOGO_NAME'
,p_attribute_04=>'LOGO_CHARSET'
,p_attribute_05=>'LOGO_LASTUPD'
,p_attribute_06=>'Y'
,p_attribute_07=>'Download Image'
,p_attribute_08=>'attachment'
,p_attribute_11=>'image/*'
,p_attribute_12=>'INLINE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(4145550315078246174)
,p_name=>'P2_LOGO_DISPLAY'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(9012050621033058227)
,p_use_cache_before_default=>'NO'
,p_post_element_text=>'&nbsp;<button class="t-Button t-Button--small" id="deletePic" type="button">Delete Logo</button>'
,p_source=>'LOGO_BLOB'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_IMAGE'
,p_tag_attributes=>'style="max-width:500px;max-height:250px;"'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null from eba_proj_status s',
'where s.id = :P200_ID and logo_blob is not null'))
,p_display_when_type=>'EXISTS'
,p_field_template=>wwv_flow_api.id(6781134673650890856)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'DB_COLUMN'
,p_attribute_04=>'LOGO_NAME'
,p_attribute_05=>'LOGO_LASTUPD'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(4402850168559412403)
,p_name=>'P2_PROJECT_START_DATE'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_api.id(9012050621033058227)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Project Start Date'
,p_format_mask=>'DD-MON-YYYY'
,p_source=>'PROJECT_START_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(6781134673650890856)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(5858640809831197685)
,p_name=>'P2_DESCRIPTION'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(9012050621033058227)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Description'
,p_source=>'DESCRIPTION'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>80
,p_cMaxlength=>4000
,p_cHeight=>6
,p_read_only_when=>'eba_proj_fw.are_ms_ai_restricted( :APP_ID, :APP_USER, :P2_ID ) = ''Y'''
,p_read_only_when2=>'PLSQL'
,p_read_only_when_type=>'EXPRESSION'
,p_field_template=>wwv_flow_api.id(6781134673650890856)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6090717491071732812)
,p_name=>'P2_URL'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_api.id(9012050621033058227)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Primary URL'
,p_source=>'URL'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>80
,p_cMaxlength=>4000
,p_read_only_when=>'eba_proj_fw.are_ms_ai_restricted( :APP_ID, :APP_USER, :P2_ID ) = ''Y'''
,p_read_only_when2=>'PLSQL'
,p_read_only_when_type=>'EXPRESSION'
,p_field_template=>wwv_flow_api.id(6781134673650890856)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6253066601323900845)
,p_name=>'P2_PROJECT_FLEX_N01'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(6255807581769766249)
,p_use_cache_before_default=>'NO'
,p_prompt=>'ARR'
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
,p_required_patch=>wwv_flow_api.id(6252446509804687380)
,p_help_text=>'Enter the project''s Annual Recurring Revenue here'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6253067183639909098)
,p_name=>'P2_PROJECT_FLEX_N02'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(6255807581769766249)
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
,p_required_patch=>wwv_flow_api.id(6252446509804687380)
,p_help_text=>'Pick your favorite number!'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6253067380188910717)
,p_name=>'P2_PROJECT_FLEX_N03'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(6255807581769766249)
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
,p_required_patch=>wwv_flow_api.id(6252446509804687380)
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6253067609721912212)
,p_name=>'P2_PROJECT_FLEX_N04'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(6255807581769766249)
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
,p_required_patch=>wwv_flow_api.id(6252446509804687380)
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6253067902820915365)
,p_name=>'P2_PROJECT_FLEX_D01'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(6255807581769766249)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<script>alert(''flex bad'');</script>'
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
,p_required_patch=>wwv_flow_api.id(6252446509804687380)
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6253068099585916893)
,p_name=>'P2_PROJECT_FLEX_D02'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_api.id(6255807581769766249)
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
,p_required_patch=>wwv_flow_api.id(6252446509804687380)
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6253068396135918529)
,p_name=>'P2_PROJECT_FLEX_D03'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_api.id(6255807581769766249)
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
,p_required_patch=>wwv_flow_api.id(6252446509804687380)
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6253068692900919964)
,p_name=>'P2_PROJECT_FLEX_D04'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_api.id(6255807581769766249)
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
,p_required_patch=>wwv_flow_api.id(6252446509804687380)
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6253068888587922019)
,p_name=>'P2_PROJECT_FLEX_CLOB'
,p_item_sequence=>380
,p_item_plug_id=>wwv_flow_api.id(6255807581769766249)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Project Flex CLOB'
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
,p_required_patch=>wwv_flow_api.id(6252446509804687380)
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6253069084058924104)
,p_name=>'P2_PROJECT_FLEX_01'
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_api.id(6255807581769766249)
,p_use_cache_before_default=>'NO'
,p_prompt=>'ddd'
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
,p_required_patch=>wwv_flow_api.id(6252446509804687380)
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6253069380607925716)
,p_name=>'P2_PROJECT_FLEX_02'
,p_item_sequence=>310
,p_item_plug_id=>wwv_flow_api.id(6255807581769766249)
,p_use_cache_before_default=>'NO'
,p_prompt=>'blah'
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
,p_required_patch=>wwv_flow_api.id(6252446509804687380)
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6253069610572927026)
,p_name=>'P2_PROJECT_FLEX_03'
,p_item_sequence=>320
,p_item_plug_id=>wwv_flow_api.id(6255807581769766249)
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
,p_required_patch=>wwv_flow_api.id(6252446509804687380)
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6253069807552928347)
,p_name=>'P2_PROJECT_FLEX_04'
,p_item_sequence=>330
,p_item_plug_id=>wwv_flow_api.id(6255807581769766249)
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
,p_required_patch=>wwv_flow_api.id(6252446509804687380)
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6253070503886930057)
,p_name=>'P2_PROJECT_FLEX_05'
,p_item_sequence=>340
,p_item_plug_id=>wwv_flow_api.id(6255807581769766249)
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
,p_required_patch=>wwv_flow_api.id(6252446509804687380)
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6253070699573932092)
,p_name=>'P2_PROJECT_FLEX_06'
,p_item_sequence=>350
,p_item_plug_id=>wwv_flow_api.id(6255807581769766249)
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
,p_required_patch=>wwv_flow_api.id(6252446509804687380)
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
 p_id=>wwv_flow_api.id(6253070995907933782)
,p_name=>'P2_PROJECT_FLEX_07'
,p_item_sequence=>360
,p_item_plug_id=>wwv_flow_api.id(6255807581769766249)
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
,p_required_patch=>wwv_flow_api.id(6252446509804687380)
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6253071191378935902)
,p_name=>'P2_PROJECT_FLEX_08'
,p_item_sequence=>370
,p_item_plug_id=>wwv_flow_api.id(6255807581769766249)
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
,p_required_patch=>wwv_flow_api.id(6252446509804687380)
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8331799534157072970)
,p_name=>'P2_ACL_STATUS_LEVEL'
,p_is_required=>true
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(9012050621033058227)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Access Control'
,p_source=>'ACL_STATUS_LEVEL'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'PROJECT ACL LEVELS'
,p_lov=>'.'||wwv_flow_api.id(11154171524619972300)||'.'
,p_colspan=>8
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ''unlocked''',
'from eba_proj_status p',
'where id = :P2_ID',
'    and ( acl_status_level = 1',
'        or exists (select null',
'                   from eba_proj_status_users u,',
'                       eba_proj_user_ref rf,',
'                       eba_proj_roles r',
'                   where nvl(rf.acl_status_level, r.default_acl_status_level) = 3',
'                       and rf.project_id = p.id',
'                       and rf.role_id = r.id',
'                       and rf.user_id = u.id',
'                       and upper(u.username) = upper(:APP_USER)',
'                    )',
'    )',
'    or',
'    eba_proj_stat_ui.get_authorization_level(:APP_USER) = 4'))
,p_display_when_type=>'EXISTS'
,p_read_only_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'from dual',
'where eba_proj_fw.are_ms_ai_restricted( :APP_ID, :APP_USER, :P2_ID ) = ''N''',
'union all',
'select null',
'  from eba_proj_user_ref rf,',
'       eba_proj_roles r,',
'       eba_proj_status_users u',
' where (',
'            rf.project_id = :P2_ID',
'            and        ',
'            u.username = :APP_USER -- current user has an application account',
'            and ',
'            rf.user_id = u.id -- current user is a member of current project',
'            and',
'            rf.role_id = r.id -- current user has a role in current project',
'            and',
'            rf.acl_status_level = 3 -- with admin rights',
'        )',
'        or',
'        (',
'            u.access_level_id = 4 -- current user is a super admin',
'            and',
'            u.username = :APP_USER -- current user has an application account',
'        )'))
,p_read_only_when_type=>'NOT_EXISTS'
,p_field_template=>wwv_flow_api.id(6781134744367890857)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'   <strong>Open</strong> : project is visable to all users ',
'</p>',
'<p>',
'    <strong>Restricted</strong>: Only visable to project memebers (people assigned to the project) and any application user that has the <strong>super admin</strong> role.',
'</p>',
''))
,p_attribute_01=>'1'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(9012052035330058229)
,p_name=>'P2_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(9012050621033058227)
,p_use_cache_before_default=>'NO'
,p_source=>'ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_restricted_characters=>'US_ONLY'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(9012052226111058230)
,p_name=>'P2_PROJECT'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(9012050621033058227)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Project Name'
,p_source=>'PROJECT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>80
,p_cMaxlength=>200
,p_tag_attributes=>'onchange="htmldb_item_change(this)"'
,p_read_only_when=>'eba_proj_fw.are_ms_ai_restricted( :APP_ID, :APP_USER, :P2_ID ) = ''Y'''
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
 p_id=>wwv_flow_api.id(9012052623718058230)
,p_name=>'P2_PROJECT_STATUS'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(9012050621033058227)
,p_use_cache_before_default=>'NO'
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'for c1 in (select  ID from EBA_PROJ_STATUS_CODES where STATUS_short_desc = ''Unknown'') loop',
'   return c1.id;',
'end loop;',
'return null;'))
,p_item_default_type=>'FUNCTION_BODY'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Status'
,p_source=>'PROJECT_STATUS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'PAGE 2 PROJECT_STATUS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select STATUS_short_desc display_value, ID return_value ',
'from EBA_PROJ_STATUS_CODES s',
'where s.is_active_yn = ''Y'' or id = :P2_PROJECT_STATUS',
'order by s.is_active_yn desc, s.display_sequence'))
,p_cHeight=>1
,p_tag_attributes=>'onchange="htmldb_item_change(this)"'
,p_read_only_when=>'eba_proj_fw.are_ms_ai_restricted( :APP_ID, :APP_USER, :P2_ID ) = ''Y'''
,p_read_only_when2=>'PLSQL'
,p_read_only_when_type=>'EXPRESSION'
,p_field_template=>wwv_flow_api.id(6781134744367890857)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(9012107714762974979)
,p_name=>'P2_PROJECT_CATEGORY'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(9012050621033058227)
,p_use_cache_before_default=>'NO'
,p_item_default=>'-1'
,p_prompt=>'&CAT_TITLE.'
,p_source=>'CAT_ID'
,p_source_type=>'DB_COLUMN'
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
,p_read_only_when=>'eba_proj_fw.are_ms_ai_restricted( :APP_ID, :APP_USER, :P2_ID ) = ''Y'''
,p_read_only_when2=>'PLSQL'
,p_read_only_when_type=>'EXPRESSION'
,p_field_template=>wwv_flow_api.id(6781134673650890856)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(9012491641147512387)
,p_name=>'P2_GOAL'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_api.id(9012050621033058227)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Goal'
,p_source=>'GOAL'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>80
,p_cMaxlength=>4000
,p_cHeight=>6
,p_tag_attributes=>'onchange="htmldb_item_change(this)"'
,p_read_only_when=>'eba_proj_fw.are_ms_ai_restricted( :APP_ID, :APP_USER, :P2_ID ) = ''Y'''
,p_read_only_when2=>'PLSQL'
,p_read_only_when_type=>'EXPRESSION'
,p_field_template=>wwv_flow_api.id(6781134673650890856)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(9012492431713528578)
,p_name=>'P2_PROJECT_CUSTOMER'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_api.id(9012050621033058227)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Customer'
,p_source=>'PROJECT_CUSTOMER'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>80
,p_cMaxlength=>255
,p_tag_attributes=>'onchange="htmldb_item_change(this)"'
,p_read_only_when=>'eba_proj_fw.are_ms_ai_restricted( :APP_ID, :APP_USER, :P2_ID ) = ''Y'''
,p_read_only_when2=>'PLSQL'
,p_read_only_when_type=>'EXPRESSION'
,p_field_template=>wwv_flow_api.id(6781134673650890856)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(9012985120889061647)
,p_name=>'P2_ROW_KEY'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_api.id(9012050621033058227)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Key'
,p_source=>'ROW_KEY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_display_when=>'P2_ID'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_api.id(6781134673650890856)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(9030262933572656609)
,p_name=>'P2_TAGS'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_api.id(9012050621033058227)
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
,p_cSize=>79
,p_cMaxlength=>4000
,p_tag_attributes=>'placeholder="Enter tags separated by commas"'
,p_read_only_when=>'eba_proj_fw.are_ms_ai_restricted( :APP_ID, :APP_USER, :P2_ID ) = ''Y'''
,p_read_only_when2=>'PLSQL'
,p_read_only_when_type=>'EXPRESSION'
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
 p_id=>wwv_flow_api.id(9032688446051866989)
,p_name=>'P2_PARENT_PROJECT_ID'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(9012050621033058227)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Parent Project'
,p_placeholder=>'Click icon to optionally identify a parent project'
,p_source=>'PARENT_PROJECT_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select project, id ',
'from eba_proj_status ',
'where ((:P2_ID is not null and id != :P2_ID) or :P2_ID is null) and ',
'   parent_project_id is null ',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- No Parent -'
,p_cSize=>80
,p_cMaxlength=>4000
,p_read_only_when=>'eba_proj_fw.are_ms_ai_restricted( :APP_ID, :APP_USER, :P2_ID ) = ''Y'''
,p_read_only_when2=>'PLSQL'
,p_read_only_when_type=>'EXPRESSION'
,p_field_template=>wwv_flow_api.id(6781134673650890856)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_required_patch=>wwv_flow_api.id(19890960485833316269)
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(9036421325364910356)
,p_name=>'P2_NEW_CATEGORY'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(9012050621033058227)
,p_use_cache_before_default=>'NO'
,p_prompt=>'New &CAT_TITLE.'
,p_placeholder=>'New &CAT_TITLE.'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>64
,p_cMaxlength=>4000
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_grid_label_column_span=>0
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'from ( select eba_proj_fw.get_preference_value(''CATEGORY_CREATION_LEVEL'') ccl,',
'            eba_proj_stat_ui.get_authorization_level( :APP_USER ) al',
'        from dual ) x',
'where x.al >= 3',
'    or ( x.al = 2 and x.ccl in (''CONTRIB'',''Preference does not exist''))'))
,p_display_when_type=>'EXISTS'
,p_read_only_when=>'eba_proj_fw.are_ms_ai_restricted( :APP_ID, :APP_USER, :P2_ID ) = ''Y'''
,p_read_only_when2=>'PLSQL'
,p_read_only_when_type=>'EXPRESSION'
,p_field_template=>wwv_flow_api.id(6781134578441890854)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12093255171070299468)
,p_name=>'P2_SIZE_ID'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(9012050621033058227)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Project Size'
,p_source=>'SIZE_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select project_size, id',
'from eba_proj_status_sizes',
'order by display_sequence'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Project Size -'
,p_cHeight=>1
,p_read_only_when=>'eba_proj_fw.are_ms_ai_restricted( :APP_ID, :APP_USER, :P2_ID ) = ''Y'''
,p_read_only_when2=>'PLSQL'
,p_read_only_when_type=>'EXPRESSION'
,p_field_template=>wwv_flow_api.id(6781134673650890856)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_required_patch=>wwv_flow_api.id(12240751934287757551)
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15820404716692766049)
,p_name=>'P2_RESTRICT_MS_AI_MANAGEMENT'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(9012050621033058227)
,p_use_cache_before_default=>'NO'
,p_item_default=>'N'
,p_prompt=>'Prevent Changes'
,p_source=>'RESTRICT_MS_AI_MANAGEMENT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_YES_NO'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ''unlocked''',
'from eba_proj_status p',
'where id = :P2_ID',
'    and ( acl_status_level = 1',
'        or exists (select null',
'                   from eba_proj_status_users u,',
'                       eba_proj_user_ref rf,',
'                       eba_proj_roles r',
'                   where nvl(rf.acl_status_level, r.default_acl_status_level) = 3',
'                       and rf.project_id = p.id',
'                       and rf.role_id = r.id',
'                       and rf.user_id = u.id',
'                       and upper(u.username) = upper(:APP_USER)',
'                    )',
'    )',
'    or',
'    eba_proj_stat_ui.get_authorization_level(:APP_USER) = 4'))
,p_display_when_type=>'EXISTS'
,p_read_only_when=>'eba_proj_fw.are_ms_ai_restricted( :APP_ID, :APP_USER, :P2_ID ) = ''Y'''
,p_read_only_when2=>'PLSQL'
,p_read_only_when_type=>'EXPRESSION'
,p_field_template=>wwv_flow_api.id(6781134673650890856)
,p_item_template_options=>'#DEFAULT#'
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
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18405129635427962952)
,p_name=>'P2_CODE_NAME'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(9012050621033058227)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Code Name'
,p_source=>'CODE_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_read_only_when=>'eba_proj_fw.are_ms_ai_restricted( :APP_ID, :APP_USER, :P2_ID ) = ''Y'''
,p_read_only_when2=>'PLSQL'
,p_read_only_when_type=>'EXPRESSION'
,p_field_template=>wwv_flow_api.id(6781134673650890856)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_restricted_characters=>'WEB_SAFE'
,p_required_patch=>wwv_flow_api.id(19245436446324471171)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18405131062272962966)
,p_name=>'P2_DEAL_TYPE_ID'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(9012050621033058227)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Deal Type'
,p_source=>'DEAL_TYPE_ID'
,p_source_type=>'DB_COLUMN'
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
,p_cHeight=>1
,p_read_only_when=>'eba_proj_fw.are_ms_ai_restricted( :APP_ID, :APP_USER, :P2_ID ) = ''Y'''
,p_read_only_when2=>'PLSQL'
,p_read_only_when_type=>'EXPRESSION'
,p_field_template=>wwv_flow_api.id(6781134673650890856)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_required_patch=>wwv_flow_api.id(19245446063791282124)
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(9036424313683963813)
,p_validation_name=>'P2_PROJECT_CATEGORY'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (nvl(:P2_PROJECT_CATEGORY,''0'') = ''0'' and :P2_NEW_CATEGORY is not null) then ',
'   return true;',
'elsif nvl(:P2_PROJECT_CATEGORY,''0'') != ''0'' then ',
'   return true;',
'else',
'   return false;',
'end if;',
'return false;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'&CAT_TITLE. or New &CAT_TITLE. must be entered'
,p_validation_condition=>'P2_NEW_CATEGORY'
,p_validation_condition_type=>'ITEM_IS_NOT_NULL'
,p_associated_item=>wwv_flow_api.id(9012107714762974979)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(7974575190272424692)
,p_validation_name=>'P2_PROJECT Name is Unique'
,p_validation_sequence=>20
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_num_projects integer;',
'begin',
'    select',
'        count(*)',
'    into',
'        l_num_projects',
'    from',
'        eba_proj_status',
'    where',
'        lower(project) = lower(:P2_PROJECT);',
'',
'    if l_num_projects > 0 then',
'        return false;',
'    else',
'        return true;',
'    end if;',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'A project with this name already exists. Please use a different project name.'
,p_validation_condition=>':REQUEST in (''CREATE'')'
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'EXPRESSION'
,p_associated_item=>wwv_flow_api.id(9012052226111058230)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(446315177693894222)
,p_validation_name=>'Valid Characters in Tags'
,p_validation_sequence=>30
,p_validation=>'not regexp_like( :P2_TAGS, ''[:;#\/\\\?\&]'' )'
,p_validation2=>'PLSQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>'Tags may not contain the following characters: : ; \ / ? &'
,p_validation_condition=>'CREATE,SAVE'
,p_validation_condition_type=>'REQUEST_IN_CONDITION'
,p_associated_item=>wwv_flow_api.id(9030262933572656609)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(9036422642810924933)
,p_name=>'show hide new cat'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P2_PROJECT_CATEGORY'
,p_condition_element=>'P2_PROJECT_CATEGORY'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'0'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(9036422945149924951)
,p_event_id=>wwv_flow_api.id(9036422642810924933)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P2_NEW_CATEGORY'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(9036423114439924956)
,p_event_id=>wwv_flow_api.id(9036422642810924933)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P2_NEW_CATEGORY'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(8394304438564792337)
,p_name=>'cancel dialog'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(9012051131897058228)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(8394304585234792338)
,p_event_id=>wwv_flow_api.id(8394304438564792337)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(21157148542358596432)
,p_name=>'Set Region'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P2_COUNTRY_ID'
,p_bind_type=>'live'
,p_bind_event_type=>'change'
,p_display_when_type=>'ITEM_IS_NULL'
,p_display_when_cond=>'P2_REGION_ID'
,p_required_patch=>wwv_flow_api.id(18990974587291614877)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(21157148701868596433)
,p_event_id=>wwv_flow_api.id(21157148542358596432)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P2_REGION_ID'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>'select region_id from eba_proj_countries where id = :P2_COUNTRY_ID;'
,p_attribute_07=>'P2_COUNTRY_ID'
,p_attribute_08=>'Y'
,p_attribute_09=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(21157148846687596435)
,p_name=>'Reset Country if Region Changes'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P2_REGION_ID'
,p_bind_type=>'live'
,p_bind_event_type=>'change'
,p_required_patch=>wwv_flow_api.id(18990974587291614877)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(21157148936389596436)
,p_event_id=>wwv_flow_api.id(21157148846687596435)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P2_REGION_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(21157149108354596437)
,p_event_id=>wwv_flow_api.id(21157148846687596435)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P2_COUNTRY_ID'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(4145552443627246195)
,p_name=>'Delete Logo Image'
,p_event_sequence=>50
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'#deletePic'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'$(this.triggeringElement).text() === "Delete Logo"'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(4145552601478246196)
,p_event_id=>wwv_flow_api.id(4145552443627246195)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'Are you sure you want to delete this project logo?'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(4145552692686246197)
,p_event_id=>wwv_flow_api.id(4145552443627246195)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'update eba_proj_status$ set logo_blob = null, logo_mimetype = null, logo_name = null, logo_lastupd = null, logo_charset = null where id = :P2_ID;',
'commit;'))
,p_attribute_02=>'P2_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(4145552712614246198)
,p_event_id=>wwv_flow_api.id(4145552443627246195)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(''a'').text(''Download'').remove();'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(4145552869227246199)
,p_event_id=>wwv_flow_api.id(4145552443627246195)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P2_LOGO_DISPLAY'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(9012053431597058233)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from EBA_PROJ_STATUS'
,p_attribute_02=>'EBA_PROJ_STATUS'
,p_attribute_03=>'P2_ID'
,p_attribute_04=>'ID'
,p_process_error_message=>'Unable to fetch row.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(9036423438917942656)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'set category if needed'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'   l_id number := null;',
'begin',
'if :P2_PROJECT_CATEGORY = 0 and :P2_NEW_CATEGORY is not null then',
'   insert into EBA_PROJ_STATUS_CATS (CATEGORY) values (:P2_NEW_CATEGORY)',
'   returning id into l_id;',
'elsif :P2_PROJECT_CATEGORY is not null and :P2_PROJECT_CATEGORY > 0 then',
'   l_id := :P2_PROJECT_CATEGORY;',
'else',
'   l_id := null;',
'end if;',
':P2_PROJECT_CATEGORY := l_id;',
'commit;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_when=>'P2_NEW_CATEGORY'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(9027954819602909059)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Handle Delete'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'update eba_proj_status$',
'set is_deleted_yn = ''Y'',',
'    deleted_by = :APP_USER,',
'    deleted_on = localtimestamp',
'where (id = :P2_ID',
'    or parent_project_id = :P2_ID);',
'    ',
'-- Now, make sure we land on a valid page.',
'if :PROJECT_CAME_FROM in (85,200) and :P2_PARENT_PROJECT_ID is not null then',
'    APEX_UTIL.SET_SESSION_STATE(''P200_ID'',:P2_PARENT_PROJECT_ID);',
'    APEX_UTIL.SET_SESSION_STATE(''P85_ID'', :P2_PARENT_PROJECT_ID);',
'end if;'))
,p_process_clob_language=>'PLSQL'
,p_process_when_button_id=>wwv_flow_api.id(9012051028330058227)
,p_process_when=>'DELETE'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_security_scheme=>wwv_flow_api.id(7306166303644991446)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(9012053636320058233)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of EBA_PROJ_STATUS'
,p_attribute_02=>'EBA_PROJ_STATUS'
,p_attribute_03=>'P2_ID'
,p_attribute_04=>'ID'
,p_attribute_09=>'P2_ID'
,p_attribute_11=>'I:U'
,p_attribute_12=>'Y'
,p_process_error_message=>'Unable to process row of table EBA_PROJ_STATUS.'
,p_process_when=>'DELETE'
,p_process_when_type=>'REQUEST_NOT_EQUAL_CONDITION'
,p_process_success_message=>'Action Processed.'
,p_security_scheme=>wwv_flow_api.id(7306166303644991446)
,p_return_key_into_item1=>'P2_ID'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(9012053817324058233)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_process_when_button_id=>wwv_flow_api.id(9012051028330058227)
,p_security_scheme=>wwv_flow_api.id(7306166303644991446)
);
wwv_flow_api.component_end;
end;
/
