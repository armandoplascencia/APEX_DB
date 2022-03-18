prompt --application/pages/page_00144
begin
--   Manifest
--     PAGE: 00144
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
 p_id=>144
,p_user_interface_id=>wwv_flow_api.id(5783577205373975152)
,p_name=>'Assign Flexible Column - Flex Column'
,p_step_title=>'Assign Flexible Column - Flex Column'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_api.id(6781074610982890727)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(7306165779537991444)
,p_required_patch=>wwv_flow_api.id(6252446509804687380)
,p_protection_level=>'C'
,p_help_text=>'<p>Select the flex column you would like to start storing data in. Enter the label text that will be displayed next to this flex column''s form element. Select the whether the flex column value is required or not and whether or not it has associated h'
||'elp text.</p>'
,p_last_upd_yyyymmddhh24miss=>'20190913131210'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(6252401004686601789)
,p_plug_name=>'Create Flex Field Train'
,p_region_template_options=>'#DEFAULT#:t-Wizard--hideStepsSmall'
,p_component_template_options=>'#DEFAULT#:t-WizardSteps--displayLabels'
,p_plug_template=>wwv_flow_api.id(6781118658055890809)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_list_id=>wwv_flow_api.id(6252391798843590380)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(6781133859764890851)
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(6252397683261601785)
,p_plug_name=>'Flex Column'
,p_parent_plug_id=>wwv_flow_api.id(6252401004686601789)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(6781104626075890777)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(6252402181349601790)
,p_name=>'Existing Assigned Flex Columns'
,p_parent_plug_id=>wwv_flow_api.id(6252401004686601789)
,p_template=>wwv_flow_api.id(6781111273838890791)
,p_display_sequence=>30
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--noBorder:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select flexible_column, decode(active_yn,''Y'',''Yes'',''N'',''No'', active_yn) active_yn,',
'    display_as',
'from eba_proj_flex_registry',
'where flexible_table = :P143_FLEX_TABLE',
'    and assigned_yn = ''Y''',
'order by 1'))
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(6781122235480890822)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_no_data_found=>'No flex columns have been assigned in this data source yet'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6252402384165601791)
,p_query_column_id=>1
,p_column_alias=>'FLEXIBLE_COLUMN'
,p_column_display_sequence=>1
,p_column_heading=>'Flexible Column'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6252402510599601791)
,p_query_column_id=>2
,p_column_alias=>'ACTIVE_YN'
,p_column_display_sequence=>2
,p_column_heading=>'Active'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6252402589048601791)
,p_query_column_id=>3
,p_column_alias=>'DISPLAY_AS'
,p_column_display_sequence=>3
,p_column_heading=>'Display As'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(6252402889606601791)
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
 p_id=>wwv_flow_api.id(6252401595110601789)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(6252401004686601789)
,p_button_name=>'NEXT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(6781134954745890861)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Next'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_icon_css_classes=>'fa-chevron-right'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(6252401795200601789)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(6252401004686601789)
,p_button_name=>'PREVIOUS'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--large'
,p_button_template_id=>wwv_flow_api.id(6781134785393890859)
,p_button_image_alt=>'Previous'
,p_button_position=>'REGION_TEMPLATE_PREVIOUS'
,p_button_execute_validations=>'N'
,p_icon_css_classes=>'fa-chevron-left'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(6252401381637601789)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(6252401004686601789)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--large'
,p_button_template_id=>wwv_flow_api.id(6781135529450890864)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_PREVIOUS'
,p_button_redirect_url=>'f?p=&APP_ID.:140:&SESSION.::&DEBUG.:::'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(6252404884757601793)
,p_branch_action=>'f?p=&APP_ID.:145:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(6252401595110601789)
,p_branch_sequence=>10
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(6252405111945601794)
,p_branch_action=>'f?p=&APP_ID.:143:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_VALIDATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(6252401795200601789)
,p_branch_sequence=>20
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6252397889597601785)
,p_name=>'P144_HAS_HELP_TEXT'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(6252397683261601785)
,p_item_default=>'N'
,p_prompt=>'Has Help Text'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES NO RETURNS Y N'
,p_lov=>'.'||wwv_flow_api.id(9019252630556871632)||'.'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(6781134744367890857)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6252398086844601787)
,p_name=>'P144_HELP_TEXT'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(6252397683261601785)
,p_prompt=>'Help Text'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>80
,p_cMaxlength=>4000
,p_cHeight=>5
,p_field_template=>wwv_flow_api.id(6781134744367890857)
,p_item_template_options=>'#DEFAULT#'
,p_restricted_characters=>'WEB_SAFE'
,p_help_text=>'Enter the help text you want the end-user to see when they click on the label text of this flex column''s form element.'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6252398586063601787)
,p_name=>'P144_HELP_TEMPLATES'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(6252397683261601785)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_tmplt_id_list varchar2(32767);',
'begin',
'    for c in',
'    (',
'		select',
'		    label_template_id',
'		from',
'		    apex_application_temp_label',
'		where',
'		    application_id = :APP_ID',
'		and',
'		    instr(upper(template_name),''HELP'') > 0',
'		and',
'		    theme_number in (select max(u.theme_number)',
'		                       from apex_application_themes t, apex_appl_user_interfaces u',
'		                      where t.ui_type_id = u.ui_type_id',
'		                        and t.application_id = u.application_id',
'		                        and t.application_id = :APP_ID)',
'    )',
'    loop',
'        l_tmplt_id_list := l_tmplt_id_list || c.label_template_id || '','';',
'    end loop;',
'    l_tmplt_id_list := rtrim(l_tmplt_id_list,'','');',
'    return l_tmplt_id_list;',
'end;'))
,p_source_type=>'FUNCTION_BODY'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6252398808755601787)
,p_name=>'P144_FLEX_COLUMN'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(6252397683261601785)
,p_prompt=>'Flex Column Type'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'WIZ_FLEX_COLUMNS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'with cols as (',
'    select flexible_column,',
'        case',
'             when flexible_column like ''%FLEX_N%'' then ''Number''',
'             when flexible_column like ''%FLEX_D%'' then ''Date''',
'             when flexible_column like ''%FLEX_CLOB'' then ''Large Text''',
'             else ''Text''',
'        end as col_type',
'    from eba_proj_flex_registry',
'    where flexible_table = :P143_FLEX_TABLE',
'        and assigned_yn = ''N''',
')',
'select col_type as dv,',
'    min( flexible_column ) as rv',
'from cols',
'group by col_type',
'order by col_type'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select -'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(6781134744367890857)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_help_text=>'The options in this select list consist of all unassigned flex columns in the data source that was selected on the previous page.'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6252399303567601787)
,p_name=>'P144_FORM_LABEL_TEXT'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(6252397683261601785)
,p_prompt=>'Form Label Text'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>64
,p_cMaxlength=>4000
,p_field_template=>wwv_flow_api.id(6781134744367890857)
,p_item_template_options=>'#DEFAULT#'
,p_restricted_characters=>'WEB_SAFE'
,p_help_text=>'Enter the label text that will be displayed on forms that capture the data that is stored in this flex column.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6252399780079601788)
,p_name=>'P144_REQUIRED_YN'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(6252397683261601785)
,p_item_default=>'N'
,p_prompt=>'Is Required'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES NO RETURNS Y N'
,p_lov=>'.'||wwv_flow_api.id(9019252630556871632)||'.'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(6781134744367890857)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Choose whether this flex column can be left null or not. Selecting, ''No'' will allow forms that update this flex column''s value to accept null. Selecting, ''Yes'' will force the end-user to provide data for this flex column. This value is set to "No" by'
||' default.'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6252400305540601788)
,p_name=>'P144_LABEL_TEMPLATE_ID'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(6252397683261601785)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select tl.label_template_id',
'from apex_application_themes thm,',
'    apex_application_temp_label tl',
'where thm.application_id = :APP_ID',
'    and thm.ui_type_name = ''DESKTOP''',
'    and tl.application_id = thm.application_id',
'    and tl.theme_number = thm.theme_number',
'    and ((:P144_REQUIRED_YN = ''Y''',
'            and tl.theme_class = ''Required Label''',
'            and tl.template_name not like ''%Above'')',
'        or (:P144_REQUIRED_YN = ''N''',
'            and tl.theme_class = ''Optional Label''',
'            and tl.template_name not like ''%Above''))'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_help_text=>'Select the label template that this flex column''s form label text should use. This value is unassigned by default.'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(4458140398693874658)
,p_computation_sequence=>10
,p_computation_item=>'P144_LABEL_TEMPLATE_ID'
,p_computation_type=>'FUNCTION_BODY'
,p_computation_language=>'PLSQL'
,p_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if instr(:P144_LABEL_TEMPLATE_ID,'','') > 0 then',
'    return substr(:P144_LABEL_TEMPLATE_ID, 1, instr(:P144_LABEL_TEMPLATE_ID,'','') - 1);',
'else',
'    return :P144_LABEL_TEMPLATE_ID;',
'end if;'))
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(6252403710718601792)
,p_validation_name=>'P144_HELP_TEXT'
,p_validation_sequence=>10
,p_validation=>'P144_HELP_TEXT'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#LABEL# must have some value.'
,p_validation_condition=>'P144_HAS_HELP_TEXT'
,p_validation_condition2=>'Y'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_when_button_pressed=>wwv_flow_api.id(6252401595110601789)
,p_associated_item=>wwv_flow_api.id(6252398086844601787)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(6252403805631601792)
,p_name=>'Set Label template'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P144_REQUIRED_YN'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(6252404110426601793)
,p_event_id=>wwv_flow_api.id(6252403805631601792)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P144_LABEL_TEMPLATE_ID'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select tl.label_template_id',
'from apex_application_themes thm,',
'    apex_application_temp_label tl',
'where thm.application_id = :APP_ID',
'    and thm.ui_type_name = ''DESKTOP''',
'    and tl.application_id = thm.application_id',
'    and tl.theme_number = thm.theme_number',
'    and ((:P144_REQUIRED_YN = ''Y''',
'            and tl.theme_class = ''Required Label''',
'            and tl.template_name not like ''%Above'')',
'        or (:P144_REQUIRED_YN = ''N''',
'            and tl.theme_class = ''Optional Label''',
'            and tl.template_name not like ''%Above''))'))
,p_attribute_07=>'P144_REQUIRED_YN'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(6252404198907601793)
,p_name=>'Show/Hide Help Text'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P144_HAS_HELP_TEXT'
,p_condition_element=>'P144_HAS_HELP_TEXT'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'Y'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(6252404494285601793)
,p_event_id=>wwv_flow_api.id(6252404198907601793)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P144_HELP_TEXT'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(6252404698225601793)
,p_event_id=>wwv_flow_api.id(6252404198907601793)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P144_HELP_TEXT'
,p_attribute_01=>'N'
);
wwv_flow_api.component_end;
end;
/
