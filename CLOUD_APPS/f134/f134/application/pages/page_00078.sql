prompt --application/pages/page_00078
begin
--   Manifest
--     PAGE: 00078
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
 p_id=>78
,p_user_interface_id=>wwv_flow_api.id(5783577205373975152)
,p_name=>'Action Item'
,p_step_title=>'Action Item'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(5956243887448595899)
,p_html_page_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<style>',
'.permalink { padding: 0 10px 10px 10px; text-align: center;}',
'.permalink a {color: #707070; font: 11px/12px Arial, sans-serif;}',
'</style>'))
,p_step_template=>wwv_flow_api.id(6781087329086890751)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'The action item details page shows you all of the action item''s attributes and it''s due date is displayed in a calendar format on the right-hand side of the page. Click the <strong>Edit Action Item</strong> button to edit the action item. Click the <'
||'strong>Email</strong> button to email the action item. Click the <strong>View Project</strong> button to return to the project details page. Click the <strong>+</strong> button to leave a comment about this action item.'
,p_last_updated_by=>'SHAKEEB'
,p_last_upd_yyyymmddhh24miss=>'20191029070727'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(6078764205305341826)
,p_name=>'History'
,p_template=>wwv_flow_api.id(6781115417665890803)
,p_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ''grayComment'' class, --use grayComment for gray look',
'    ''Automatic Update'' note_type,',
'    replace(initcap(replace(replace(f.column_name,''_ID'',null),''_'','' '')),chr(10),''<br>'') comment_text,',
'    case',
'        when substr(f.old_value, 3, 1) = ''-'' and substr(f.old_value, 7, 1) = ''-'' and length(f.old_value) > 11 then',
'            '' changed from "'' || substr(f.old_value, 1, 11) || ''"''',
'        else',
'            '' changed from "'' || f.old_value || ''"''',
'    end as attribute_1,',
'    case',
'        when substr(f.new_value, 3, 1) = ''-'' and substr(f.new_value, 7, 1) = ''-'' and length(f.new_value) > 11 then',
'            '' to "'' || substr(f.new_value, 1, 11) || ''"''',
'        else',
'            '' to "'' || f.new_value || ''"''',
'    end as attribute_2,',
'    '' '' attribute_3,',
'    '' '' attribute_4,',
'    lower(f.changed_by) user_name,',
'    '''' actions,',
'    null update_id,',
'    ''u-color-''||(ora_hash(f.changed_by,44) + 1) icon_modifier,',
'    upper(decode(instr(replace(f.changed_by,''.'','' ''),'' ''),',
'         0, ',
'         substr(f.changed_by,1,2),',
'         substr(f.changed_by,1,1)||substr(f.changed_by,instr(replace(f.changed_by,''.'','' ''),'' '')+1,1)',
'    )) user_icon,',
'    apex_util.get_since(f.change_date) comment_date',
'from eba_proj_history f,',
'    eba_proj_status_ais ai',
'where f.table_name = ''STATUS_AIS''',
'    and f.component_id = ai.id',
'    and ai.id = :P78_ACTION_ITEM_ID',
'order by f.change_date desc'))
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'  from eba_proj_history f,',
'       eba_proj_status_ais ai',
' where f.table_name = ''STATUS_AIS''',
'   and f.component_id = ai.id',
'   and ai.id = :P78_ACTION_ITEM_ID'))
,p_display_condition_type=>'EXISTS'
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(6781121834246890819)
,p_query_headings_type=>'QUERY_COLUMNS'
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No status updates'
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
 p_id=>wwv_flow_api.id(6078764511122341845)
,p_query_column_id=>1
,p_column_alias=>'CLASS'
,p_column_display_sequence=>1
,p_column_heading=>'Class'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6078764596751341845)
,p_query_column_id=>2
,p_column_alias=>'NOTE_TYPE'
,p_column_display_sequence=>2
,p_column_heading=>'Note Type'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(7754508183913535785)
,p_query_column_id=>3
,p_column_alias=>'COMMENT_TEXT'
,p_column_display_sequence=>8
,p_column_heading=>'Comment text'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6078764787461341845)
,p_query_column_id=>4
,p_column_alias=>'ATTRIBUTE_1'
,p_column_display_sequence=>4
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6078764886584341845)
,p_query_column_id=>5
,p_column_alias=>'ATTRIBUTE_2'
,p_column_display_sequence=>5
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6078764997133341845)
,p_query_column_id=>6
,p_column_alias=>'ATTRIBUTE_3'
,p_column_display_sequence=>3
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6078765081599341845)
,p_query_column_id=>7
,p_column_alias=>'ATTRIBUTE_4'
,p_column_display_sequence=>6
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(7754508373731535786)
,p_query_column_id=>8
,p_column_alias=>'USER_NAME'
,p_column_display_sequence=>9
,p_column_heading=>'User name'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(7754508442749535787)
,p_query_column_id=>9
,p_column_alias=>'ACTIONS'
,p_column_display_sequence=>10
,p_column_heading=>'Actions'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6078765279602341845)
,p_query_column_id=>10
,p_column_alias=>'UPDATE_ID'
,p_column_display_sequence=>7
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(7754508529315535788)
,p_query_column_id=>11
,p_column_alias=>'ICON_MODIFIER'
,p_column_display_sequence=>11
,p_column_heading=>'Icon modifier'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(7754508638909535789)
,p_query_column_id=>12
,p_column_alias=>'USER_ICON'
,p_column_display_sequence=>12
,p_column_heading=>'User icon'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(7754508683197535790)
,p_query_column_id=>13
,p_column_alias=>'COMMENT_DATE'
,p_column_display_sequence=>13
,p_column_heading=>'Comment date'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(6932326603929156932)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(6781117976757890807)
,p_plug_display_sequence=>50
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(8972392840601050532)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(6781135716305890867)
,p_plug_display_condition_type=>'NEVER'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(6933381206331144293)
,p_plug_name=>'Add Comment'
,p_region_name=>'ADDCOMMENT'
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400:t-Form--stretchInputs:t-Form--labelsAbove'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(6781114406166890801)
,p_plug_display_sequence=>120
,p_plug_display_point=>'REGION_POSITION_04'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_required_role=>wwv_flow_api.id(7306166303644991446)
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(7744977102767215417)
,p_name=>'Action Item Details'
,p_template=>wwv_flow_api.id(6781104626075890777)
,p_display_sequence=>10
,p_region_css_classes=>'flex_actions'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-AVPList--leftAligned'
,p_display_point=>'REGION_POSITION_02'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ai.action,',
'    ai.row_key,',
'    ai.resolution,',
'    ai.action_description,',
'    to_char(ai.due_date,''fmDay, fmDD fmMonth, YYYY'')||'' (''||apex_util.get_since(ai.due_date)||'')'' due_date,',
'    ai.action_status,',
'    ai.completed_date,',
'    decode(ai.is_deliverable_yn,''Y'',''Yes'',''No'') is_deliverable,',
'    case when ai.owner_role_id is null then',
'        ai.action_owner_01',
'            ||decode(ai.action_owner_02,null,null,'', ''||ai.action_owner_02)',
'            ||decode(ai.action_owner_03,null,null,'', ''||ai.action_owner_03)',
'            ||decode(ai.action_owner_04,null,null,'', ''||ai.action_owner_04)',
'    else',
'        nvl((select r.name||'': ''||listagg(lower(u.username),'', '')',
'                within group (order by lower(u.username)) owner',
'            from eba_proj_user_ref rf,',
'                eba_proj_status_users u,',
'                eba_proj_roles r',
'            where rf.role_id = ai.owner_role_id',
'                and rf.project_id = ai.project_id',
'                and u.id = rf.user_id',
'                and r.id = rf.role_id',
'            group by r.name',
'        ), (select ''No ''||r.name||'' defined''',
'            from eba_proj_roles r',
'            where r.id = ai.owner_role_id)',
'        )',
'    end as owners,',
'    ai.type_id,',
'    apex_util.get_since(ai.created)||'' by ''||lower(ai.created_by) created,',
'    ai.created_by,',
'    ai.updated,',
'    lower(ai.updated_by) updated_by,',
'    ait.ai_type,',
'    ai.tags,',
'    ai.link_url,',
'    ai.link_text as link,',
'    case',
'        when ai.milestone_id is null then',
'            ''(no milestone)''',
'        else',
'            (   select m.milestone_name',
'                from eba_proj_status_ms m',
'                where m.id = ai.milestone_id )',
'    end as milestone,',
'    ai.milestone_id,',
'    ai.action_flex_01,',
'    ai.action_flex_02,',
'    ai.action_flex_03,',
'    ai.action_flex_04,',
'    ai.action_flex_05,',
'    ai.action_flex_06,',
'    ai.action_flex_07,',
'    ai.action_flex_08,',
'    ai.action_flex_n01,',
'    ai.action_flex_n02,',
'    ai.action_flex_n03,',
'    ai.action_flex_n04,',
'    ai.action_flex_d01,',
'    ai.action_flex_d02,',
'    ai.action_flex_d03,',
'    ai.action_flex_d04,',
'    ai.action_flex_clob',
'from eba_proj_status_ais ai,',
'    eba_proj_status_ais_types ait',
'where ait.id(+) = ai.type_id',
'    and ai.id = :P78_ACTION_ITEM_ID',
'order by 1'))
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(6781124130846890827)
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
 p_id=>wwv_flow_api.id(7744977391988215419)
,p_query_column_id=>1
,p_column_alias=>'ACTION'
,p_column_display_sequence=>1
,p_column_heading=>'Action'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(7744977484147215419)
,p_query_column_id=>2
,p_column_alias=>'ROW_KEY'
,p_column_display_sequence=>4
,p_column_heading=>'Row Key'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(17635524654114690860)
,p_query_column_id=>3
,p_column_alias=>'RESOLUTION'
,p_column_display_sequence=>35
,p_column_heading=>'Resolution'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'  from EBA_PROJ_STATUS_AIS',
' where ID = :P78_ACTION_ITEM_ID',
'   and PROJECT_ID = :P78_PROJECT_ID',
'   and resolution is not null;'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(7744977581861215419)
,p_query_column_id=>4
,p_column_alias=>'ACTION_DESCRIPTION'
,p_column_display_sequence=>9
,p_column_heading=>'Description'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'NEVER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(7744977695298215419)
,p_query_column_id=>5
,p_column_alias=>'DUE_DATE'
,p_column_display_sequence=>7
,p_column_heading=>'Due Date'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(7744977782246215419)
,p_query_column_id=>6
,p_column_alias=>'ACTION_STATUS'
,p_column_display_sequence=>5
,p_column_heading=>'Status'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21157149566571596442)
,p_query_column_id=>7
,p_column_alias=>'COMPLETED_DATE'
,p_column_display_sequence=>6
,p_column_heading=>'Completed'
,p_use_as_row_header=>'N'
,p_column_format=>'fmDay, fmDD fmMonth, YYYY'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'from eba_proj_status_ais',
'where id = :P78_ACTION_ITEM_ID',
'and completed_date is not null'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(7744977902768215419)
,p_query_column_id=>8
,p_column_alias=>'IS_DELIVERABLE'
,p_column_display_sequence=>10
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_display_when_cond_type=>'ITEM_IS_NOT_NULL'
,p_display_when_condition=>'IS_DELIVERABLE'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(7744978010048215419)
,p_query_column_id=>9
,p_column_alias=>'OWNERS'
,p_column_display_sequence=>8
,p_column_heading=>'Owner(s)'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(7744978098311215419)
,p_query_column_id=>10
,p_column_alias=>'TYPE_ID'
,p_column_display_sequence=>11
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(7744978211304215419)
,p_query_column_id=>11
,p_column_alias=>'CREATED'
,p_column_display_sequence=>13
,p_column_heading=>'Created'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(7744978306890215419)
,p_query_column_id=>12
,p_column_alias=>'CREATED_BY'
,p_column_display_sequence=>14
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(7744978391413215419)
,p_query_column_id=>13
,p_column_alias=>'UPDATED'
,p_column_display_sequence=>15
,p_column_heading=>'Updated'
,p_use_as_row_header=>'N'
,p_column_format=>'since'
,p_column_html_expression=>'#UPDATED# by #UPDATED_BY#'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(7744978501006215419)
,p_query_column_id=>14
,p_column_alias=>'UPDATED_BY'
,p_column_display_sequence=>16
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(7744978605365215419)
,p_query_column_id=>15
,p_column_alias=>'AI_TYPE'
,p_column_display_sequence=>3
,p_column_heading=>'Type'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'ITEM_IS_NOT_NULL'
,p_display_when_condition=>'AI_TYPE'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6094171995802583338)
,p_query_column_id=>16
,p_column_alias=>'TAGS'
,p_column_display_sequence=>12
,p_column_heading=>'Tags'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'ITEM_IS_NOT_NULL'
,p_display_when_condition=>'TAGS'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18405131231179962968)
,p_query_column_id=>17
,p_column_alias=>'LINK_URL'
,p_column_display_sequence=>36
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18405131342960962969)
,p_query_column_id=>18
,p_column_alias=>'LINK'
,p_column_display_sequence=>37
,p_column_heading=>'Link'
,p_use_as_row_header=>'N'
,p_column_html_expression=>'<a href="#LINK_URL#" target="_blank">#LINK#</a>'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'  from eba_proj_status_ais',
' where id = :P78_ACTION_ITEM_ID',
'   and link_url is not null',
'   and link_text is not null',
'   and exists (select null',
'                 from apex_application_build_options',
'                where application_id = :APP_ID',
'                  and build_option_name = ''Action Item Links''',
'                  and build_option_status = ''Include'')'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6172951109140339597)
,p_query_column_id=>19
,p_column_alias=>'MILESTONE'
,p_column_display_sequence=>2
,p_column_heading=>'Milestone'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6172951196558339598)
,p_query_column_id=>20
,p_column_alias=>'MILESTONE_ID'
,p_column_display_sequence=>17
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6263866996703178629)
,p_query_column_id=>21
,p_column_alias=>'ACTION_FLEX_01'
,p_column_display_sequence=>18
,p_column_heading=>'testFexColumn'
,p_use_as_row_header=>'N'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>'select null from eba_proj_flex_registry where flexible_table = ''EBA_PROJ_STATUS_AIS'' and flexible_column = ''ACTION_FLEX_01'' and active_yn = ''Y'' and assigned_yn = ''Y'''
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_required_patch=>wwv_flow_api.id(6252446509804687380)
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6263867105745178629)
,p_query_column_id=>22
,p_column_alias=>'ACTION_FLEX_02'
,p_column_display_sequence=>19
,p_column_heading=>'D1'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>'select null from eba_proj_flex_registry where flexible_table = ''EBA_PROJ_STATUS_AIS'' and flexible_column = ''ACTION_FLEX_02'' and active_yn = ''Y'' and assigned_yn = ''Y'''
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_required_patch=>wwv_flow_api.id(6252446509804687380)
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6263867209267178629)
,p_query_column_id=>23
,p_column_alias=>'ACTION_FLEX_03'
,p_column_display_sequence=>20
,p_column_heading=>'D1'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>'select null from eba_proj_flex_registry where flexible_table = ''EBA_PROJ_STATUS_AIS'' and flexible_column = ''ACTION_FLEX_03'' and active_yn = ''Y'' and assigned_yn = ''Y'''
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_required_patch=>wwv_flow_api.id(6252446509804687380)
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6263867286770178629)
,p_query_column_id=>24
,p_column_alias=>'ACTION_FLEX_04'
,p_column_display_sequence=>21
,p_column_heading=>'D1'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>'select null from eba_proj_flex_registry where flexible_table = ''EBA_PROJ_STATUS_AIS'' and flexible_column = ''ACTION_FLEX_04'' and active_yn = ''Y'' and assigned_yn = ''Y'''
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_required_patch=>wwv_flow_api.id(6252446509804687380)
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6263867398289178629)
,p_query_column_id=>25
,p_column_alias=>'ACTION_FLEX_05'
,p_column_display_sequence=>22
,p_column_heading=>'D1'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>'select null from eba_proj_flex_registry where flexible_table = ''EBA_PROJ_STATUS_AIS'' and flexible_column = ''ACTION_FLEX_05'' and active_yn = ''Y'' and assigned_yn = ''Y'''
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_required_patch=>wwv_flow_api.id(6252446509804687380)
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6263867511511178629)
,p_query_column_id=>26
,p_column_alias=>'ACTION_FLEX_06'
,p_column_display_sequence=>23
,p_column_heading=>'D1'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>'select null from eba_proj_flex_registry where flexible_table = ''EBA_PROJ_STATUS_AIS'' and flexible_column = ''ACTION_FLEX_06'' and active_yn = ''Y'' and assigned_yn = ''Y'''
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_required_patch=>wwv_flow_api.id(6252446509804687380)
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6263867611025178629)
,p_query_column_id=>27
,p_column_alias=>'ACTION_FLEX_07'
,p_column_display_sequence=>24
,p_column_heading=>'D1'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>'select null from eba_proj_flex_registry where flexible_table = ''EBA_PROJ_STATUS_AIS'' and flexible_column = ''ACTION_FLEX_07'' and active_yn = ''Y'' and assigned_yn = ''Y'''
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_required_patch=>wwv_flow_api.id(6252446509804687380)
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6263867694102178629)
,p_query_column_id=>28
,p_column_alias=>'ACTION_FLEX_08'
,p_column_display_sequence=>25
,p_column_heading=>'D1'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>'select null from eba_proj_flex_registry where flexible_table = ''EBA_PROJ_STATUS_AIS'' and flexible_column = ''ACTION_FLEX_08'' and active_yn = ''Y'' and assigned_yn = ''Y'''
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_required_patch=>wwv_flow_api.id(6252446509804687380)
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6263867787288178629)
,p_query_column_id=>29
,p_column_alias=>'ACTION_FLEX_N01'
,p_column_display_sequence=>26
,p_column_heading=>'Estimated Cost (in Man Hours)'
,p_use_as_row_header=>'N'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>'select null from eba_proj_flex_registry where flexible_table = ''EBA_PROJ_STATUS_AIS'' and flexible_column = ''ACTION_FLEX_N01'' and active_yn = ''Y'' and assigned_yn = ''Y'''
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_required_patch=>wwv_flow_api.id(6252446509804687380)
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6263867895697178629)
,p_query_column_id=>30
,p_column_alias=>'ACTION_FLEX_N02'
,p_column_display_sequence=>27
,p_column_heading=>'D1'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>'select null from eba_proj_flex_registry where flexible_table = ''EBA_PROJ_STATUS_AIS'' and flexible_column = ''ACTION_FLEX_N02'' and active_yn = ''Y'' and assigned_yn = ''Y'''
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_required_patch=>wwv_flow_api.id(6252446509804687380)
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6263867989506178629)
,p_query_column_id=>31
,p_column_alias=>'ACTION_FLEX_N03'
,p_column_display_sequence=>28
,p_column_heading=>'D1'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>'select null from eba_proj_flex_registry where flexible_table = ''EBA_PROJ_STATUS_AIS'' and flexible_column = ''ACTION_FLEX_N03'' and active_yn = ''Y'' and assigned_yn = ''Y'''
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_required_patch=>wwv_flow_api.id(6252446509804687380)
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6263868103577178629)
,p_query_column_id=>32
,p_column_alias=>'ACTION_FLEX_N04'
,p_column_display_sequence=>29
,p_column_heading=>'D1'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>'select null from eba_proj_flex_registry where flexible_table = ''EBA_PROJ_STATUS_AIS'' and flexible_column = ''ACTION_FLEX_N04'' and active_yn = ''Y'' and assigned_yn = ''Y'''
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_required_patch=>wwv_flow_api.id(6252446509804687380)
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6263868196106178629)
,p_query_column_id=>33
,p_column_alias=>'ACTION_FLEX_D01'
,p_column_display_sequence=>30
,p_column_heading=>'Accessed C'
,p_use_as_row_header=>'N'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>'select null from eba_proj_flex_registry where flexible_table = ''EBA_PROJ_STATUS_AIS'' and flexible_column = ''ACTION_FLEX_D01'' and active_yn = ''Y'' and assigned_yn = ''Y'''
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_required_patch=>wwv_flow_api.id(6252446509804687380)
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6263868304908178629)
,p_query_column_id=>34
,p_column_alias=>'ACTION_FLEX_D02'
,p_column_display_sequence=>31
,p_column_heading=>'Flex Date'
,p_use_as_row_header=>'N'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>'select null from eba_proj_flex_registry where flexible_table = ''EBA_PROJ_STATUS_AIS'' and flexible_column = ''ACTION_FLEX_D02'' and active_yn = ''Y'' and assigned_yn = ''Y'''
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_required_patch=>wwv_flow_api.id(6252446509804687380)
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6263868399922178629)
,p_query_column_id=>35
,p_column_alias=>'ACTION_FLEX_D03'
,p_column_display_sequence=>32
,p_column_heading=>'Action Flex D03'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>'select null from eba_proj_flex_registry where flexible_table = ''EBA_PROJ_STATUS_AIS'' and flexible_column = ''ACTION_FLEX_D03'' and active_yn = ''Y'' and assigned_yn = ''Y'''
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_required_patch=>wwv_flow_api.id(6252446509804687380)
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6263868504744178629)
,p_query_column_id=>36
,p_column_alias=>'ACTION_FLEX_D04'
,p_column_display_sequence=>33
,p_column_heading=>'Action Flex D04'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>'select null from eba_proj_flex_registry where flexible_table = ''EBA_PROJ_STATUS_AIS'' and flexible_column = ''ACTION_FLEX_D04'' and active_yn = ''Y'' and assigned_yn = ''Y'''
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_required_patch=>wwv_flow_api.id(6252446509804687380)
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6263868597598178629)
,p_query_column_id=>37
,p_column_alias=>'ACTION_FLEX_CLOB'
,p_column_display_sequence=>34
,p_column_heading=>'Action Flex Clob'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>'select null from eba_proj_flex_registry where flexible_table = ''EBA_PROJ_STATUS_AIS'' and flexible_column = ''ACTION_FLEX_CLOB'' and active_yn = ''Y'' and assigned_yn = ''Y'''
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_required_patch=>wwv_flow_api.id(6252446509804687380)
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(7745427585199267047)
,p_name=>'Comments'
,p_template=>wwv_flow_api.id(6781115417665890803)
,p_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    '''' class,',
'    ''Comment'' note_type,',
'    replace(apex_escape.html(dbms_lob.substr(cmt.comment_text,3300,1)),chr(10),''<br />'') comment_text,',
'    '''' attribute_1,',
'    '''' attribute_2,',
'    '''' attribute_3,',
'    '''' attribute_4,',
'    lower(cmt.created_by) user_name,',
'    '''' actions,',
'    ''u-color-''||(ora_hash(cmt.created_by,44) + 1) icon_modifier,',
'    substr(cmt.created_by,0,2) user_icon,',
'    apex_util.get_since(cmt.created) comment_date',
'from eba_proj_status_ai_cmnts cmt',
'where cmt.action_item_id = :P78_ACTION_ITEM_ID',
'order by cmt.created desc'))
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(6781121834246890819)
,p_query_headings_type=>'QUERY_COLUMNS'
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_break_cols=>'0'
,p_query_no_data_found=>'No comments found'
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
 p_id=>wwv_flow_api.id(7745427911564267049)
,p_query_column_id=>1
,p_column_alias=>'CLASS'
,p_column_display_sequence=>1
,p_column_heading=>'Class'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(7745427991237267050)
,p_query_column_id=>2
,p_column_alias=>'NOTE_TYPE'
,p_column_display_sequence=>2
,p_column_heading=>'Note Type'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(7754508836750535791)
,p_query_column_id=>3
,p_column_alias=>'COMMENT_TEXT'
,p_column_display_sequence=>7
,p_column_heading=>'Comment text'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
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
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(7745428185563267050)
,p_query_column_id=>4
,p_column_alias=>'ATTRIBUTE_1'
,p_column_display_sequence=>3
,p_column_heading=>'Attribute 1'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(7745428294854267050)
,p_query_column_id=>5
,p_column_alias=>'ATTRIBUTE_2'
,p_column_display_sequence=>4
,p_column_heading=>'Attribute 2'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(7745428380373267050)
,p_query_column_id=>6
,p_column_alias=>'ATTRIBUTE_3'
,p_column_display_sequence=>5
,p_column_heading=>'Attribute 3'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(7745428497037267050)
,p_query_column_id=>7
,p_column_alias=>'ATTRIBUTE_4'
,p_column_display_sequence=>6
,p_column_heading=>'Attribute 4'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(7754508881032535792)
,p_query_column_id=>8
,p_column_alias=>'USER_NAME'
,p_column_display_sequence=>8
,p_column_heading=>'User name'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(7754509051503535793)
,p_query_column_id=>9
,p_column_alias=>'ACTIONS'
,p_column_display_sequence=>9
,p_column_heading=>'Actions'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(7754509149730535794)
,p_query_column_id=>10
,p_column_alias=>'ICON_MODIFIER'
,p_column_display_sequence=>10
,p_column_heading=>'Icon modifier'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(7754509244185535795)
,p_query_column_id=>11
,p_column_alias=>'USER_ICON'
,p_column_display_sequence=>11
,p_column_heading=>'User icon'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(7754509348247535796)
,p_query_column_id=>12
,p_column_alias=>'COMMENT_DATE'
,p_column_display_sequence=>12
,p_column_heading=>'Comment date'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(7745896405463310738)
,p_plug_name=>'Hidden Region'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(6781104626075890777)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BEFORE_FOOTER'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(12288020533692109830)
,p_plug_name=>'Description'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(6781115417665890803)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    function format_ai (',
'        p_string      in clob,',
'        p_shorten_url in varchar2,',
'        p_max_length  in number default 2500',
'    ) return varchar2',
'    is',
'        l_string      varchar2(32767);',
'        l_endofUrl    varchar2(4000) default chr(10) || chr(13) || chr(9) || '' )<>'';',
'        l_url         varchar2(4000);',
'        l_current_pos number := 1;',
'        n             number := 1;',
'        m             number := 1;',
'        p             number := 1;',
'    begin',
'        l_string := apex_escape.html(dbms_lob.substr(p_string,p_max_length,1)) || '' '';',
'        for i in 1 .. 1000 loop',
'            n := instr( lower(l_string), ''http:&#x2f;&#x2f;'', l_current_pos );',
'            m := instr( lower(l_string), ''https:&#x2f;&#x2f;'', l_current_pos );',
'            p := instr( lower(l_string), ''ftp:&#x2f;&#x2f;'', l_current_pos   );',
'            -- set n to position of first link',
'            if m > 0 and (n = 0 or m < n) and (p = 0 or m < p) then',
'               n := m;',
'            elsif p > 0 and (n = 0 or p < n) then',
'               n := p;',
'            end if;',
'            exit when n = 0 or length(l_string) > 32000;',
'            for j in 0 .. length( l_string ) - n loop',
'                if ( instr( l_endofUrl, substr( l_string, n+j, 1 ) ) > 0 ) then',
'                   l_url := rtrim( substr( l_string, n, j ), ''.''||chr(32)||chr(10) );',
'                   if p_shorten_url = ''Y'' and length(l_url) > 100 then',
'                       l_url := ''<a href="'' || l_url || ''" target="_blank">''',
'                           || substr(l_url,0,60)||''...''||substr(l_url,-30,30) || ''</a>'';',
'                   else',
'                       l_url := ''<a href="'' || l_url || ''" target="_blank">'' || l_url || ''</a>'';',
'                   end if;',
'                   l_string := substr( l_string, 1, n-1 ) || l_url || substr( l_string, n+j );',
'                   l_current_pos := n + length(l_url);',
'                   exit;',
'                end if;',
'            end loop;',
'        end loop;',
'        return replace(l_string,chr(10),''<br>'');',
'    end format_ai;',
'begin',
'    for c1 in ( select action_description',
'                from eba_proj_status_ais',
'                where id = :P78_ACTION_ITEM_ID ) loop',
'        sys.htp.p(format_ai(p_string => c1.action_description,',
'                            p_shorten_url => ''Y'',',
'                            p_max_length => 4000 ));',
'    end loop;',
'end;'))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'  from eba_proj_status_ais',
' where id = :P78_ACTION_ITEM_ID',
'   and action_description is not null'))
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(12288020676091109831)
,p_plug_name=>'Region Display'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(6781104626075890777)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_02'
,p_plug_source_type=>'NATIVE_DISPLAY_SELECTOR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'STANDARD'
,p_attribute_02=>'Y'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(12288020746046109832)
,p_plug_name=>'Due Date'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(6781115417665890803)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ai.due_date, ''Due Date'' lbl',
'from eba_proj_status_ais ai',
'where ai.id = :P78_ACTION_ITEM_ID',
'order by 1'))
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.MINICALENDAR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'DUE_DATE'
,p_attribute_02=>'LBL'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(1478045771357104796)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(6212459901559585507)
,p_button_name=>'PROJECT_OVERVIEW_MS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(6781135529450890864)
,p_button_image_alt=>'View Project'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:200:&SESSION.::&DEBUG.::P200_ID:&P78_PROJECT_ID.#projectMilestones'
,p_button_condition=>'P78_GOTO'
,p_button_condition2=>'MS'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(7746613994736383419)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(6212459901559585507)
,p_button_name=>'PROJECT_OVERVIEW_AI'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(6781135529450890864)
,p_button_image_alt=>'View Project'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:200:&SESSION.::&DEBUG.::P200_ID:&P78_PROJECT_ID.#projectActionItems'
,p_button_condition=>'nvl(:P78_GOTO,''AI'') = ''AI'''
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(7746038311134321884)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_api.id(6933381206331144293)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(6781135529450890864)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'javascript:closeModal();'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(7746471109712368780)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(6212459901559585507)
,p_button_name=>'EDIT_ACTION_ITEM'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(6781135529450890864)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Edit Action Item'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:73:&SESSION.::&DEBUG.:73:P73_ID:&P78_ACTION_ITEM_ID.'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'eba_proj_fw.is_edit_authorized(',
'    p_username   => upper(:APP_USER),',
'    p_project_id => :P78_PROJECT_ID ) = ''Y'''))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_security_scheme=>wwv_flow_api.id(7306166303644991446)
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(6933381388808144294)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_api.id(6933381206331144293)
,p_button_name=>'CREATE_COMMENT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(6781135529450890864)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Comment'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'eba_proj_fw.is_edit_authorized(',
'    p_username   => upper(:APP_USER),',
'    p_project_id => :P78_PROJECT_ID ) = ''Y'''))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_security_scheme=>wwv_flow_api.id(7306166303644991446)
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(5866517696498705787)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(6932326603929156932)
,p_button_name=>'Unfollow'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(6781135529450890864)
,p_button_image_alt=>'Unfollow'
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_button_execute_validations=>'N'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ''Followed''',
'from eba_proj_status_favorites',
'where user_name = upper(:APP_USER)',
'    and content_id = :P78_ACTION_ITEM_ID',
'    and content_type = ''ACTION ITEM'';'))
,p_button_condition_type=>'EXISTS'
,p_button_cattributes=>'title="Click to unfollow"'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(6208794090519843963)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(6212459901559585507)
,p_button_name=>'PROJECT_EMAIL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(6781135529450890864)
,p_button_image_alt=>'Email'
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:37:&SESSION.::&DEBUG.:37:LAST_VIEW,P37_ACTION_ITEM_ID,P200_ID,P37_PROJECT_ID:78,&P78_ACTION_ITEM_ID.,&P78_PROJECT_ID.,&P78_PROJECT_ID.'
,p_button_css_classes=>'uButtonAlt'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(5862892496393734862)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(6932326603929156932)
,p_button_name=>'Follow'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(6781135529450890864)
,p_button_image_alt=>'Follow'
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_button_execute_validations=>'N'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ''Followed''',
'from eba_proj_status_favorites',
'where user_name = upper(:APP_USER)',
'    and content_id = :P78_ACTION_ITEM_ID',
'    and content_type = ''ACTION ITEM'';'))
,p_button_condition_type=>'NOT_EXISTS'
,p_button_cattributes=>'title="Click to follow"'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(7745694708317292700)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(7745427585199267047)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_api.id(6781134785393890859)
,p_button_image_alt=>'Add Comment'
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_button_redirect_url=>'javascript:openModal(''ADDCOMMENT'');'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'eba_proj_fw.is_edit_authorized(',
'    p_username   => upper(:APP_USER),',
'    p_project_id => :P78_PROJECT_ID ) = ''Y'''))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_icon_css_classes=>'fa-plus'
,p_security_scheme=>wwv_flow_api.id(7306166303644991446)
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(6933381800577144295)
,p_branch_name=>'Go To Page 78'
,p_branch_action=>'f?p=&APP_ID.:78:&SESSION.::&DEBUG.:RP:P78_ACTION_ITEM_ID,P78_COMMENT_TEXT:&P78_ACTION_ITEM_ID.,&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1478045669040104795)
,p_name=>'P78_GOTO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(7744977102767215417)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6932398682289225989)
,p_name=>'P78_ACTION_ITEM_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(7745896405463310738)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6933382601220144305)
,p_name=>'P78_COMMENT_TEXT'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(6933381206331144293)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Comment'
,p_source=>'COMMENT_TEXT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>64
,p_cMaxlength=>4000
,p_cHeight=>8
,p_field_template=>wwv_flow_api.id(6781134673650890856)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6934378105425470869)
,p_name=>'P78_AI_STATUS'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(6933381206331144293)
,p_prompt=>'Action Item Status'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select action_status',
'from eba_proj_status_ais',
'where id = :P78_ACTION_ITEM_ID'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'ACTION ITEM STATUS (OPEN, CLOSED)'
,p_lov=>'.'||wwv_flow_api.id(9068159530204303387)||'.'
,p_cHeight=>1
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(6781134673650890856)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(7746663207203387020)
,p_name=>'P78_PROJECT_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(7745896405463310738)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select s.id',
'from eba_proj_status s,',
'    eba_proj_status_ais ai',
'where s.id = ai.project_id',
'   and ai.id = :P78_ACTION_ITEM_ID'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(7746813107119405914)
,p_computation_sequence=>10
,p_computation_item=>'P78_PROJECT_ID'
,p_computation_point=>'AFTER_HEADER'
,p_computation_type=>'QUERY'
,p_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select s.id',
'from eba_proj_status s,',
'    eba_proj_status_ais ai',
'where s.id = ai.project_id',
'   and ai.id = :P78_ACTION_ITEM_ID'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(12288022778419109852)
,p_name=>'Handle dialog close'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(7746471109712368780)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(12288023234935109857)
,p_event_id=>wwv_flow_api.id(12288022778419109852)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'location.reload();'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(6933824884766431398)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Save Comment'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    if length(nvl(:P78_COMMENT_TEXT,'''')) > 0 then',
'        insert into eba_proj_status_ai_cmnts',
'            ( action_item_id, comment_text )',
'        values ( :P78_ACTION_ITEM_ID, :P78_COMMENT_TEXT );',
'    end if;',
'',
'    -- Only update the AI status if it''s actually changed.',
'    --update eba_proj_status_ais ai',
'    --set ai.action_status = :P78_AI_STATUS',
'    --where ai.id = :P78_ACTION_ITEM_ID',
'    --     and ai.action_status <> :P78_AI_STATUS;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(6933381388808144294)
,p_process_success_message=>'Action item updated.'
,p_security_scheme=>wwv_flow_api.id(7306166303644991446)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(5866516784858690911)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'follow'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'merge into eba_proj_status_favorites dest',
'using (',
'    select upper(:APP_USER) user_name, :P78_ACTION_ITEM_ID content_id, ''ACTION ITEM'' content_type',
'    from dual',
'    ) src',
'on ( dest.user_name = src.user_name and dest.content_id = src.content_id and dest.content_type = src.content_type )',
'when not matched then',
'    insert (dest.user_name, dest.content_id, dest.content_type)',
'    values (src.user_name, src.content_id, src.content_type);'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(5862892496393734862)
,p_process_success_message=>'Following action item.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(5866517912000708254)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'unfollow'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'delete from eba_proj_status_favorites',
'where user_name = upper(:APP_USER)',
'    and content_id = :P78_ACTION_ITEM_ID',
'    and content_type = ''ACTION ITEM'';'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(5866517696498705787)
,p_process_success_message=>'No longer following action item.'
);
wwv_flow_api.component_end;
end;
/
