prompt --application/pages/page_00213
begin
--   Manifest
--     PAGE: 00213
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
 p_id=>213
,p_user_interface_id=>wwv_flow_api.id(5783577205373975152)
,p_name=>'Preview My Updated Action Items'
,p_step_title=>'Preview My Updated Action Items'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(5956243988833596300)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(7306166303644991446)
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>If everything looks good, click the <strong>Apply Changes</strong> button otherwise click the <strong>Cancel</strong> button.</p>',
'<p>When closing all Action Items that are associated to a given Milestone, the Milestone will also be marked as completed.</p>'))
,p_last_upd_yyyymmddhh24miss=>'20190906083945'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(20398313065369735532)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(6781104626075890777)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(8972392840601050532)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(6781135716305890867)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NEVER'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(20575538978949710871)
,p_name=>'Exceptions'
,p_template=>wwv_flow_api.id(6781115417665890803)
,p_display_sequence=>40
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody:t-Form--noPadding'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight:t-Report--inline'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    n001 as ai_id,',
'    c001 as action_item,',
'    c002 as action,',
'    c003 as old_value,',
'    c004 as new_value,',
'    c005 as project,',
'    c006 as completed_date,',
'    c007 as resolution,',
'    eba_proj_fw.get_name_from_email_address(c008) as completed_by,',
'    c009 as error',
'from',
'    apex_collections',
'where',
'    collection_name = ''PREVIEW_AIS''',
'and',
'    c009 is not null',
'order by 2'))
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    null',
'from',
'    apex_collections',
'where',
'    collection_name = ''PREVIEW_AIS''',
'and',
'    c009 is not null'))
,p_display_condition_type=>'EXISTS'
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(6781122235480890822)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(20575539319778710875)
,p_query_column_id=>1
,p_column_alias=>'AI_ID'
,p_column_display_sequence=>3
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(20575539507991710876)
,p_query_column_id=>2
,p_column_alias=>'ACTION_ITEM'
,p_column_display_sequence=>4
,p_column_heading=>'Action Item'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(20575539547254710877)
,p_query_column_id=>3
,p_column_alias=>'ACTION'
,p_column_display_sequence=>5
,p_column_heading=>'Action'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(20575539616684710878)
,p_query_column_id=>4
,p_column_alias=>'OLD_VALUE'
,p_column_display_sequence=>6
,p_column_heading=>'Old Value'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(20698857535826174629)
,p_query_column_id=>5
,p_column_alias=>'NEW_VALUE'
,p_column_display_sequence=>7
,p_column_heading=>'New Value'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(20698857703825174630)
,p_query_column_id=>6
,p_column_alias=>'PROJECT'
,p_column_display_sequence=>8
,p_column_heading=>'Project'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(20575539181362710873)
,p_query_column_id=>7
,p_column_alias=>'COMPLETED_DATE'
,p_column_display_sequence=>1
,p_column_heading=>'Completed date'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    null',
'from',
'    apex_collections',
'where',
'    collection_name = ''PREVIEW_AIS''',
'and',
'    c006 is not null'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(20575539289673710874)
,p_query_column_id=>8
,p_column_alias=>'RESOLUTION'
,p_column_display_sequence=>2
,p_column_heading=>'Resolution'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    null',
'from',
'    apex_collections',
'where',
'    collection_name = ''PREVIEW_AIS''',
'and',
'    c007 is not null'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(20698857802818174631)
,p_query_column_id=>9
,p_column_alias=>'COMPLETED_BY'
,p_column_display_sequence=>9
,p_column_heading=>'Completed By'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    null',
'from',
'    apex_collections',
'where',
'    collection_name = ''PREVIEW_AIS''',
'and',
'    c008 is not null'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(20398326762911735569)
,p_query_column_id=>10
,p_column_alias=>'ERROR'
,p_column_display_sequence=>10
,p_column_heading=>'Error'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(20648014176059773108)
,p_name=>'Updates'
,p_template=>wwv_flow_api.id(6781115417665890803)
,p_display_sequence=>30
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody:t-Form--noPadding'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight:t-Report--inline'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    n001 as ai_id,',
'    n002 as ms_id,',
'    c001 as action_item,',
'    c002 as action,',
'    c003 as old_value,',
'    c004 as new_value,',
'    c005 as project,',
'    c006 as completed_date,',
'    c007 as resolution,',
'    eba_proj_fw.get_name_from_email_address(c008) as completed_by',
'from',
'    apex_collections',
'where',
'    collection_name = ''PREVIEW_AIS''',
'and',
'    c009 is null',
'order by 2'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(6781122235480890822)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No updatable Action Item(s) found.'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(20648014822613773111)
,p_query_column_id=>1
,p_column_alias=>'AI_ID'
,p_column_display_sequence=>1
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21157151929077596466)
,p_query_column_id=>2
,p_column_alias=>'MS_ID'
,p_column_display_sequence=>4
,p_column_heading=>'Milestone'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_inline_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select milestone_name, id',
'  from eba_proj_status_ms'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(20648015278064773112)
,p_query_column_id=>3
,p_column_alias=>'ACTION_ITEM'
,p_column_display_sequence=>2
,p_column_heading=>'Action Item'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(20648015708699773113)
,p_query_column_id=>4
,p_column_alias=>'ACTION'
,p_column_display_sequence=>5
,p_column_heading=>'Action'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(20648016066661773113)
,p_query_column_id=>5
,p_column_alias=>'OLD_VALUE'
,p_column_display_sequence=>6
,p_column_heading=>'Old Value'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(20648016451086773113)
,p_query_column_id=>6
,p_column_alias=>'NEW_VALUE'
,p_column_display_sequence=>7
,p_column_heading=>'New Value'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(20648016880674773114)
,p_query_column_id=>7
,p_column_alias=>'PROJECT'
,p_column_display_sequence=>3
,p_column_heading=>'Project'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(20575538072290710862)
,p_query_column_id=>8
,p_column_alias=>'COMPLETED_DATE'
,p_column_display_sequence=>8
,p_column_heading=>'Completed Date'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    null',
'from',
'    apex_collections',
'where',
'    collection_name = ''PREVIEW_AIS''',
'and',
'    c006 is not null'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(20575538299795710864)
,p_query_column_id=>9
,p_column_alias=>'RESOLUTION'
,p_column_display_sequence=>9
,p_column_heading=>'Resolution'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    null',
'from',
'    apex_collections',
'where',
'    collection_name = ''PREVIEW_AIS''',
'and',
'    c007 is not null'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(20575538332297710865)
,p_query_column_id=>10
,p_column_alias=>'COMPLETED_BY'
,p_column_display_sequence=>10
,p_column_heading=>'Completed By'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    null',
'from',
'    apex_collections',
'where',
'    collection_name = ''PREVIEW_AIS''',
'and',
'    c008 is not null'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(20698857879251174632)
,p_plug_name=>'Hidden Items'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(6781104626075890777)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(20398313169798735533)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(6212459901559585507)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(6781135529450890864)
,p_button_image_alt=>'Cancel'
,p_button_position=>'BELOW_BOX'
,p_button_redirect_url=>'f?p=&APP_ID.:212:&SESSION.::&DEBUG.:RP,212:P212_PROJECT_ID:&P213_PROJECT_ID.'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(20398313288359735534)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(6212459901559585507)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(6781135529450890864)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'BELOW_BOX'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'from',
'    apex_collections',
'where',
'    collection_name = ''PREVIEW_AIS''',
'and',
'    c009 is null'))
,p_button_condition_type=>'EXISTS'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(20698857989396174633)
,p_branch_action=>'f?p=&APP_ID.:194:&SESSION.::&DEBUG.:RP::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1897960660902419885)
,p_name=>'P213_PROJECT_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(20698857879251174632)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(20575538478465710866)
,p_name=>'P213_ACTION'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(20698857879251174632)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(20575538585207710867)
,p_computation_sequence=>10
,p_computation_item=>'P213_ACTION'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'QUERY'
,p_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    distinct c002 as action',
'from',
'    apex_collections',
'where',
'    collection_name = ''PREVIEW_AIS'''))
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(20575538636947710868)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Update AI Statuses'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_open_ai_cnt number;',
'    l_ms_status   eba_proj_status_ms.milestone_status%type;',
'begin',
'    for c1 in',
'    (',
'        select',
'            n001 as ai_id,',
'            n002 as ms_id,',
'            c004 as new_value,',
'            c006 as completed_date,',
'            c007 as resolution,',
'            c008 as completed_by',
'        from',
'            apex_collections',
'        where',
'            collection_name = ''PREVIEW_AIS''',
'        and',
'            c009 is null',
'    )',
'    loop',
'        if c1.new_value = ''Closed'' then',
'            update eba_proj_status_ais',
'               set action_status = c1.new_value,',
'                   completed_date = c1.completed_date,',
'                   completed_by = c1.completed_by,',
'                   resolution = c1.resolution',
'             where id = c1.ai_id;',
'            if c1.ms_id is not null then',
'                select count(*) into l_open_ai_cnt from eba_proj_status_ais where milestone_id = c1.ms_id and action_status = ''Open'';',
'                if l_open_ai_cnt = 0 then',
'                    for c2 in',
'                    (',
'                        select milestone_status',
'                          from eba_proj_status_ms',
'                         where id = c1.ms_id',
'                    )',
'                    loop',
'                        l_ms_status := c2.milestone_status;',
'                    end loop;',
'                    if l_ms_status = ''Open'' then',
'                        update eba_proj_status_ms',
'                           set milestone_status = ''Completed'',',
'                               completed_date = c1.completed_date',
'                         where id = c1.ms_id;',
'                    end if;',
'                end if;',
'            end if;',
'        else',
'            update eba_proj_status_ais',
'               set action_status = c1.new_value',
'             where id = c1.ai_id;',
'        end if;',
'    end loop;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(20398313288359735534)
,p_process_when=>'P213_ACTION'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_process_when2=>'Change Status'
,p_process_success_message=>'Action Item status(es) updated accordingly.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(20575538736827710869)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Update AI Due Dates'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'for c1 in',
'(',
'    select',
'        n001 as ai_id,',
'        c004 as new_value',
'    from',
'        apex_collections',
'    where',
'        collection_name = ''PREVIEW_AIS''',
'    and',
'        c009 is null',
')',
'loop',
'    update eba_proj_status_ais',
'       set due_date = to_date(c1.new_value,''DD-MON-YYYY'')',
'     where id = c1.ai_id;',
'end loop;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(20398313288359735534)
,p_process_when=>'P213_ACTION'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_process_when2=>'Change Due Date'
,p_process_success_message=>'Action Item due date(s) updated accordingly.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(20575538894034710870)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Update AI Types'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'for c1 in',
'(',
'    select',
'        n001 as ai_id,',
'        c004 as new_value',
'    from',
'        apex_collections',
'    where',
'        collection_name = ''PREVIEW_AIS''',
'    and',
'        c009 is null',
')',
'loop',
'    update eba_proj_status_ais',
'       set type_id = (select id from eba_proj_status_ais_types where lower(ai_type) = lower(c1.new_value))',
'     where id = c1.ai_id;',
'end loop;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(20398313288359735534)
,p_process_when=>'P213_ACTION'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_process_when2=>'Change Type'
,p_process_success_message=>'Action Item type(s) updated accordingly.'
);
wwv_flow_api.component_end;
end;
/
