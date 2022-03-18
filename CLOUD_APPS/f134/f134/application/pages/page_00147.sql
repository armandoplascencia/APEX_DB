prompt --application/pages/page_00147
begin
--   Manifest
--     PAGE: 00147
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
 p_id=>147
,p_user_interface_id=>wwv_flow_api.id(5783577205373975152)
,p_tab_set=>'TS1'
,p_name=>'Assign Flexible Column - Confirmation'
,p_step_title=>'Assign Flexible Column - Confirmation'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_step_template=>wwv_flow_api.id(6781074610982890727)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(7306165779537991444)
,p_required_patch=>wwv_flow_api.id(6252446509804687380)
,p_nav_list_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'<p>Confirm the Flex Column assignment and it''s settings. If everything looks correct and you''re ready to start storing data in this flex column, click "Finish". If you''re not ready to use this flex column quite yet, change the "Is Active" value to "N'
||'o" and then click "Finish".</p>'
,p_last_upd_yyyymmddhh24miss=>'20190911104952'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(6252436089495627601)
,p_name=>'Race Condition Error'
,p_display_sequence=>15
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'<div id="report_791189122614992759_catch" style="margin:10px 16px 0 16px;">   <div class="alertMessage red">     <img src="#IMAGE_PREFIX#f_spacer.gif" alt="Warning">     <div class="innerMessage">         <h3>Error</h3>         <p>This flex column ha'
||'s just been assigned by someone else. Please select a different flex column.</p>     </div> </div>  </div>'
,p_display_point=>'REGION_POSITION_01'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null as id,',
'    ''red'' as NOTIFICATION_TYPE,',
'    ''Error'' as NOTIFICATION_NAME,',
'    ''This flex column has been assigned. Please <a href="''',
'        ||apex_util.prepare_url(''f?p=&APP_ID.:144:&APP_SESSION.::NO::P144_FLEX_COLUMN::'')',
'        ||''">select a different flex column</a>.'' as NOTIFICATION_DESCRIPTION',
'from dual',
'order by id'))
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'from eba_proj_flex_registry',
'where flexible_table = :P143_FLEX_TABLE',
'    and flexible_column = :P144_FLEX_COLUMN',
'    and assigned_yn = ''Y'';'))
,p_display_condition_type=>'EXISTS'
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(6781119468078890811)
,p_query_num_rows=>1
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'0'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'0'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6252436305929627601)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>1
,p_column_heading=>'Id'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6252436393183627601)
,p_query_column_id=>2
,p_column_alias=>'NOTIFICATION_TYPE'
,p_column_display_sequence=>2
,p_column_heading=>'NOTIFICATION_TYPE'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6252436492626627601)
,p_query_column_id=>3
,p_column_alias=>'NOTIFICATION_NAME'
,p_column_display_sequence=>3
,p_column_heading=>'NOTIFICATION_NAME'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6252436598820627601)
,p_query_column_id=>4
,p_column_alias=>'NOTIFICATION_DESCRIPTION'
,p_column_display_sequence=>4
,p_column_heading=>'NOTIFICATION_DESCRIPTION'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(6252438880250627605)
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
 p_id=>wwv_flow_api.id(6252436681167627601)
,p_plug_name=>'Confirmation'
,p_parent_plug_id=>wwv_flow_api.id(6252438880250627605)
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
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(6252440294480627607)
,p_name=>'Static List Options'
,p_parent_plug_id=>wwv_flow_api.id(6252438880250627605)
,p_template=>wwv_flow_api.id(6781111273838890791)
,p_display_sequence=>40
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--noBorder:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select n001 as display_sequence,',
'    c001 as display_value,',
'    c002 as return_value',
'from apex_collections',
'where collection_name = ''STATIC_LOV_OPTS''',
'    and c001 is not null',
'order by 1'))
,p_display_when_condition=>'P145_LOV_TYPE'
,p_display_when_cond2=>'STATIC'
,p_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(6781122235480890822)
,p_query_num_rows=>500
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_no_data_found=>'No list options have been assigned'
,p_query_row_count_max=>500
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
 p_id=>wwv_flow_api.id(6252440497106627607)
,p_query_column_id=>1
,p_column_alias=>'DISPLAY_SEQUENCE'
,p_column_display_sequence=>1
,p_column_heading=>'Display Sequence'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6252440602759627607)
,p_query_column_id=>2
,p_column_alias=>'DISPLAY_VALUE'
,p_column_display_sequence=>2
,p_column_heading=>'Display Value'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6252440696457627607)
,p_query_column_id=>3
,p_column_alias=>'RETURN_VALUE'
,p_column_display_sequence=>3
,p_column_heading=>'Return Value'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(6252440998405627608)
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
 p_id=>wwv_flow_api.id(6252439489538627606)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(6252438880250627605)
,p_button_name=>'FINISH'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--large'
,p_button_template_id=>wwv_flow_api.id(6781135529450890864)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Finish'
,p_button_position=>'REGION_TEMPLATE_NEXT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(6252439905237627606)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(6252438880250627605)
,p_button_name=>'PREVIOUS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--large'
,p_button_template_id=>wwv_flow_api.id(6781134785393890859)
,p_button_image_alt=>'Previous'
,p_button_position=>'REGION_TEMPLATE_PREVIOUS'
,p_button_redirect_url=>'f?p=&APP_ID.:146:&SESSION.::&DEBUG.:::'
,p_button_condition=>':P145_FORM_ELEMENT_TYPE = ''SELECT_LIST'' and :P145_LOV_TYPE = ''STATIC'''
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_icon_css_classes=>'fa-chevron-left'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(6252439694512627606)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(6252438880250627605)
,p_button_name=>'PREVIOUS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--large'
,p_button_template_id=>wwv_flow_api.id(6781134785393890859)
,p_button_image_alt=>'Previous'
,p_button_position=>'REGION_TEMPLATE_PREVIOUS'
,p_button_redirect_url=>'f?p=&APP_ID.:145:&SESSION.::&DEBUG.:::'
,p_button_condition=>'not (:P145_FORM_ELEMENT_TYPE = ''SELECT_LIST'' and :P145_LOV_TYPE = ''STATIC'')'
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_icon_css_classes=>'fa-chevron-left'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(6252439307153627605)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(6252438880250627605)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--large'
,p_button_template_id=>wwv_flow_api.id(6781135529450890864)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_PREVIOUS'
,p_button_redirect_url=>'f?p=&APP_ID.:140:&SESSION.::&DEBUG.:::'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(6252441810617627609)
,p_branch_action=>'f?p=&APP_ID.:140:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(6252439489538627606)
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6252436895877627603)
,p_name=>'P147_SELECT_LIST_QUERY'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(6252436681167627601)
,p_item_default=>'&P145_LOV_QUERY.'
,p_prompt=>'Select List Query'
,p_source=>'nvl(:P145_LOV_QUERY, ''N/A'')'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_display_when=>'P145_LOV_TYPE'
,p_display_when2=>'DYNAMIC'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_api.id(6781134673650890856)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6252437097505627603)
,p_name=>'P147_ACTIVE_YN'
,p_item_sequence=>5
,p_item_plug_id=>wwv_flow_api.id(6252436681167627601)
,p_item_default=>'Y'
,p_prompt=>'Enable Immediately'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES NO RETURNS Y N'
,p_lov=>'.'||wwv_flow_api.id(9019252630556871632)||'.'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(6781134673650890856)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6252437301407627604)
,p_name=>'P147_REQUIRED_YN'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(6252436681167627601)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P144_REQUIRED_YN = ''Y'' then',
'    return ''Yes'';',
'else',
'    return ''No'';',
'end if;'))
,p_item_default_type=>'FUNCTION_BODY'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Is Required'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(6781134673650890856)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6252437494890627604)
,p_name=>'P147_DATA_SOURCE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(6252436681167627601)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'case when :P143_FLEX_TABLE = ''EBA_PROJ_STATUS''',
'    then ''PROJECTS''',
'    else replace(:P143_FLEX_TABLE, ''EBA_PROJ_'', null)',
'end'))
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Data Source'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(6781134673650890856)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6252437681168627604)
,p_name=>'P147_FLEX_COLUMN'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(6252436681167627601)
,p_item_default=>'&P144_FLEX_COLUMN.'
,p_prompt=>'Flex Column'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(6781134673650890856)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6252437897961627604)
,p_name=>'P147_LABEL_TEMPLATE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(6252436681167627601)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Label Template'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select template_name || '' ('' || decode(theme_number, 50, ''Mobile Theme'', 42, ''Desktop Theme'') || '')'' template_name',
'from apex_application_temp_label',
'where application_id = :APP_ID',
'    and label_template_id = :P144_LABEL_TEMPLATE_ID;'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(6781134673650890856)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6252438088767627604)
,p_name=>'P147_FORM_LABEL_TEXT'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(6252436681167627601)
,p_item_default=>'&P144_FORM_LABEL_TEXT.'
,p_prompt=>'Form Label Text'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(6781134673650890856)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6252438297550627605)
,p_name=>'P147_FORM_ELEMENT_TYPE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(6252436681167627601)
,p_item_default=>'replace(initcap(:P145_FORM_ELEMENT_TYPE), ''_'', '' '')'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Form Element Type'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(6781134673650890856)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6252438506952627605)
,p_name=>'P147_FORMAT_MASK'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(6252436681167627601)
,p_item_default=>'&P145_FORMAT_MASK.'
,p_prompt=>'Format Mask'
,p_source=>'nvl(:P145_FORMAT_MASK, ''N/A'')'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_display_when=>'P145_FORM_ELEMENT_TYPE'
,p_display_when2=>'NUMBER:DATE'
,p_display_when_type=>'VALUE_OF_ITEM_IN_CONDITION_IN_COLON_DELIMITED_LIST'
,p_field_template=>wwv_flow_api.id(6781134673650890856)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(6252441380468627608)
,p_validation_name=>'Flex Column Still Available for Assignment'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'from eba_proj_flex_registry',
'where flexible_table = :P143_FLEX_TABLE',
'    and flexible_column = :P144_FLEX_COLUMN',
'    and assigned_yn = ''Y'';'))
,p_validation_type=>'NOT_EXISTS'
,p_error_message=>'This flex column has been assigned. Please <a href="f?p=&APP_ID.:144:&APP_SESSION.::NO::P144_FLEX_COLUMN::">select a different flex column</a>.'
,p_when_button_pressed=>wwv_flow_api.id(6252439489538627606)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(6252441493802627608)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Create Flex Registry Record'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_cnt          number := 0;',
'    l_lbltmpl_name varchar2(255);',
'begin',
'    -- Get the name of the assigned flex column template',
'    if :P144_LABEL_TEMPLATE_ID is not null then',
'        select template_name into l_lbltmpl_name from apex_application_templates where template_id = :P144_LABEL_TEMPLATE_ID and template_type = ''Item Label'';',
'    end if;',
'',
'    -- If this is a static LOV flex column assignment then',
'    -- insert the rows to eba_proj_flex_static_lovs table',
'    -- and create the select statement for the form element',
'    for c1 in ( select n001, c001, c002',
'                from apex_collections',
'                where collection_name = ''STATIC_LOV_OPTS'' and c001 is not null',
'                order by 1 ) loop',
'        insert into eba_proj_flex_static_lovs',
'            ( flex_table, flex_column, display_sequence,',
'              display_value, return_value)',
'        values ( :P143_FLEX_TABLE, :P144_FLEX_COLUMN,',
'                 c1.n001, c1.c001, c1.c002);',
'',
'        if l_cnt = 0 then',
'            :P145_LOV_QUERY := ''select '' || sys.dbms_assert.enquote_literal(replace(c1.c001, '''''''', '''''''''''')) || '' dv, ''',
'                ||sys.dbms_assert.enquote_literal(replace(c1.c002, '''''''', '''''''''''')) || '' rv from dual'';',
'        else',
'            :P145_LOV_QUERY := :P145_LOV_QUERY||chr(10)',
'                ||''union all''||chr(10);',
'            :P145_LOV_QUERY := :P145_LOV_QUERY',
'                ||''select ''|| sys.dbms_assert.enquote_literal(replace(c1.c001, '''''''', '''''''''''')) || '' dv, ''',
'                || sys.dbms_assert.enquote_literal(replace(c1.c002, '''''''', '''''''''''')) || '' rv from dual'';',
'        end if;',
'        l_cnt := l_cnt + 1;',
'    end loop;',
'',
'    -- Save the new flex column assignment',
'    update eba_proj_flex_registry',
'    set flexible_table = :P143_FLEX_TABLE,',
'        flexible_column = :P144_FLEX_COLUMN,',
'        active_yn = :P147_ACTIVE_YN,',
'        is_required_yn = :P144_REQUIRED_YN,',
'        label_template_id = :P144_LABEL_TEMPLATE_ID,',
'        label_template_name = l_lbltmpl_name,',
'        label_alignment = ''RIGHT-CENTER'',',
'        form_label_text = :P144_FORM_LABEL_TEXT,',
'        display_as = :P145_FORM_ELEMENT_TYPE,',
'        format_mask = :P145_FORMAT_MASK,',
'        lov_type = :P145_LOV_TYPE,',
'        lov_sql_query = :P145_LOV_QUERY,',
'        lov_display_col = :P145_LOV_DISPLAY_COL,',
'        lov_return_col = :P145_LOV_RETURN_COL,',
'        is_displayed_on_ir = ''Y'',',
'        width = :P145_WIDTH,',
'        max_width = :P145_MAX_WIDTH,',
'        height = :P145_HEIGHT,',
'        assigned_yn = ''Y'',',
'        report_label_text = null,',
'        rpt_hdr_alignment = ''CENTER'',',
'        help_text = :P144_HELP_TEXT,',
'        default_value = null',
'    where flexible_table = :P143_FLEX_TABLE',
'        and flexible_column = :P144_FLEX_COLUMN',
'        and assigned_yn = ''N'';',
'',
'    -- Make sure the page registry is up to date.',
'    eba_proj_flex_fw.populate_page_map_table();',
'    ',
'    -- Set the new flex column to be displayed in IRRs',
'    for c1 in ( select m.flex_table,',
'                    m.page_id,',
'                    m.region_id,',
'                    m.flex_column_prefix,',
'                    m.region_type',
'                from eba_proj_flex_page_map m,',
'                    eba_proj_flex_registry r',
'                where m.flex_table = :P143_FLEX_TABLE',
'                    and m.flex_table = r.flexible_table',
'                    and m.region_type in (''IR'',''CR'') ) loop',
'        eba_proj_flex_fw.flex_report_update (',
'            p_flex_table_name      => c1.flex_table,',
'            p_irr_region_id        => c1.region_id,',
'            p_flex_column_prefix   => c1.flex_column_prefix,',
'            p_app_id               => :APP_ID,',
'            p_page_id              => c1.page_id,',
'            p_region_type          => c1.region_type',
'        );',
'    end loop;',
'',
'    -- delete the static LOV collection',
'    if apex_collection.collection_exists(''STATIC_LOV_OPTS'') then',
'        apex_collection.delete_collection(p_collection_name => ''STATIC_LOV_OPTS'');',
'    end if;',
'',
'    -- Make sure the flex field doesn''t have any old data.',
'    execute immediate( ''update '' || sys.dbms_assert.enquote_name(:P143_FLEX_TABLE)',
'                      ||'' set '' || sys.dbms_assert.enquote_name(:P144_FLEX_COLUMN) || '' = null''',
'                      ||'' where '' || sys.dbms_assert.enquote_name(:P144_FLEX_COLUMN) || '' is not null''',
'                     );',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'#SQLERRM#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(6252439489538627606)
,p_process_success_message=>'Flex column added.'
);
wwv_flow_api.component_end;
end;
/
