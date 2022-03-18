prompt --application/pages/page_00202
begin
--   Manifest
--     PAGE: 00202
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
 p_id=>202
,p_user_interface_id=>wwv_flow_api.id(5783577205373975152)
,p_name=>'Recent Project History'
,p_page_mode=>'MODAL'
,p_step_title=>'Recent Project History'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_api.id(5956243887448595899)
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.note {margin: 12px; font-size: 11px; color: #707070;}',
'.dialog-filters.t-ButtonRegion {  box-shadow: none;',
'  margin-bottom: 0;',
'  border-radius: 0;',
'  border-bottom: 1px solid rgba(0,0,0,.1);}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_last_upd_yyyymmddhh24miss=>'20190906081755'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(17040874134749774052)
,p_plug_name=>'Filters'
,p_region_css_classes=>'dialog-filters'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--slimPadding:t-ButtonRegion--noBorder'
,p_plug_template=>wwv_flow_api.id(6781104860657890779)
,p_plug_display_sequence=>25
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(17373987611681835084)
,p_name=>'Change Log'
,p_region_name=>'projectChangeLog'
,p_template=>wwv_flow_api.id(6781104626075890777)
,p_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Comments--chat'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select /*+ ALL_ROWS LEADING(v1 project) NO_MERGE(v1) USE_CONCAT(v1) NO_EXPAND(v1) */',
'       ''is-systemMessage''                          as comment_modifiers,',
'       null                                        as note_type,',
'       case when v1.comment_text = ''Project Viewed'' then',
'           v1.comment_text',
'       else',
'           replace(v1.comment_text,''Issue Issue'',''Issue'') || '': '' || v1.affected_item',
'       end                                         as comment_text,',
'       case when v1.attribute_1 != '' '' then',
'           '' from <span class="t-Comments-text--prevValue">'' || v1.attribute_1 || ''</span>''',
'       else',
'           null',
'       end                                         as attribute_1,',
'       case when v1.attribute_2 != '' '' then',
'           '' to <span class="t-Comments-text--newValue">'' || v1.attribute_2 || ''</span>''',
'       else',
'           null',
'       end                                         as attribute_2,',
'       null                                        as attribute_3,',
'       null                                        as attribute_4,',
'       null                                        as actions,',
'       null                                        as icon_modifier,',
'       null                                        as user_icon,',
'       null                                        as update_id,',
'       v1.user_name,',
'       v1.comment_date,',
'       v1.created,',
'       apex_util.prepare_url(''f?p='' || :APP_ID || '':133:'' || :APP_SESSION || '':::133,RIR:IR_USERNAME:'' || v1.user_id) as profile_url',
'  from (',
'           select ''Project Viewed''                      as comment_text,',
'                  null                                  as affected_item,',
'                  '' '' attribute_1,',
'                  '' '' attribute_2,',
'                  lower(f.app_username)                 as user_name,',
'                  f.view_timestamp                      as comment_date,',
'                  f.view_timestamp                      as created,',
'                  f.app_username                        as user_id,',
'                  f.project_id',
'             from eba_proj_status_clicks f',
'            where f.project_id = :P202_ID',
'              and nvl(:P202_SHOW_VIEWS,''N'') = ''Y''',
'           union all',
'           select comment_text,',
'                  affected_item,',
'                  case',
'                      when substr(attribute_1, 3, 1) = ''-'' and substr(attribute_1, 7, 1) = ''-'' and length(attribute_1) > 11 then',
'                          substr(attribute_1, 1, 11)',
'                      else',
'                          attribute_1',
'                  end as attribute_1,',
'                  case',
'                      when substr(attribute_2, 3, 1) = ''-'' and substr(attribute_2, 7, 1) = ''-'' and length(attribute_2) > 11 then',
'                          substr(attribute_2, 1, 11)',
'                      else',
'                          attribute_2',
'                  end as attribute_2,',
'                  user_name,',
'                  comment_date,',
'                  created,',
'                  user_id,',
'                  project_id',
'             from eba_proj_history_7day_v',
'            where project_id = :P202_ID',
'            order by 7 desc',
'       ) v1,',
'       eba_proj_status project',
' where v1.project_id = project.id',
'   and project.id = :P202_ID',
'   and project.is_deleted_yn = ''N''',
'   and (',
'            project.acl_status_level = 1',
'            or',
'            (',
'                project.acl_status_level > 1',
'                and',
'                exists ( select null',
'                           from eba_proj_user_ref rf,',
'                                eba_proj_status_users u,',
'                                eba_proj_roles r',
'                          where rf.project_id = project.id',
'                            and rf.user_id = u.id',
'                            and rf.role_id = r.id',
'                            and eba_proj_fw.is_edit_authorized( u.username, rf.project_id ) = ''Y''',
'                            and u.id = :CURRENT_USER_ID)',
'            )',
'       )',
'order by v1.comment_date desc;'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P202_SEARCH'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(6781121834246890819)
,p_query_headings_type=>'QUERY_COLUMNS'
,p_query_num_rows=>150
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_break_cols=>'0'
,p_query_no_data_found=>'No project updates'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>5000
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
,p_required_patch=>wwv_flow_api.id(11865461959584682542)
,p_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 x',
'from EBA_PROJ_STATUS_UPDATES u,',
'    EBA_PROJ_STATUS_UPDATE_TYPES t',
'where u.update_type = t.id(+)',
'    and ( u.project_id = :P200_ID ',
'        or (nvl(:P200_INC_CHILD,''N'') = ''Y''',
'            and u.project_id in (select s.id ',
'                                 from EBA_PROJ_STATUS s',
'                                 where s.parent_project_id = :P200_ID))',
'    )',
'union all',
'select 1 x',
'from eba_proj_history f',
'where component_id = :P200_ID ',
'union all',
'select 1 x',
'from eba_proj_history f,',
'    eba_proj_status_ais ai',
'where f.table_name = ''STATUS_AIS''',
'    and f.component_id = ai.id',
'    and ai.project_id = :P200_ID ',
'union all',
'select 1 x',
'from eba_proj_history f,',
'    eba_proj_status_ms ms',
'where f.table_name = ''STATUS_MS''',
'    and f.component_id = ms.id',
'    and ms.project_id = :P200_ID'))
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(17373987857428835092)
,p_query_column_id=>1
,p_column_alias=>'COMMENT_MODIFIERS'
,p_column_display_sequence=>13
,p_column_heading=>'Comment Modifiers'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(17373988312625835099)
,p_query_column_id=>2
,p_column_alias=>'NOTE_TYPE'
,p_column_display_sequence=>1
,p_column_heading=>'Note Type'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(17373988657341835101)
,p_query_column_id=>3
,p_column_alias=>'COMMENT_TEXT'
,p_column_display_sequence=>7
,p_column_heading=>'Comment Text'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(17373989049845835104)
,p_query_column_id=>4
,p_column_alias=>'ATTRIBUTE_1'
,p_column_display_sequence=>3
,p_column_heading=>'Attribute 1'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(17373989418447835109)
,p_query_column_id=>5
,p_column_alias=>'ATTRIBUTE_2'
,p_column_display_sequence=>4
,p_column_heading=>'Attribute 2'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(17373989889424835111)
,p_query_column_id=>6
,p_column_alias=>'ATTRIBUTE_3'
,p_column_display_sequence=>2
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(17373990274245835112)
,p_query_column_id=>7
,p_column_alias=>'ATTRIBUTE_4'
,p_column_display_sequence=>5
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(17373992310898835119)
,p_query_column_id=>8
,p_column_alias=>'ACTIONS'
,p_column_display_sequence=>12
,p_column_heading=>'Actions'
,p_column_link=>'f?p=&APP_ID.:12:&SESSION.::&DEBUG.:RP,12:P12_ID:#UPDATE_ID#'
,p_column_linktext=>'#ACTIONS#'
,p_heading_alignment=>'LEFT'
,p_report_column_required_role=>wwv_flow_api.id(7306166303644991446)
,p_derived_column=>'N'
,p_include_in_export=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(17373991431329835115)
,p_query_column_id=>9
,p_column_alias=>'ICON_MODIFIER'
,p_column_display_sequence=>10
,p_column_heading=>'Icon Modifier'
,p_use_as_row_header=>'N'
,p_column_html_expression=>'u-color-#ICON_MODIFIER#'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'YES'
,p_derived_column=>'N'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(17373991856733835118)
,p_query_column_id=>10
,p_column_alias=>'USER_ICON'
,p_column_display_sequence=>11
,p_column_heading=>'User Icon'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(17373992709590835121)
,p_query_column_id=>11
,p_column_alias=>'UPDATE_ID'
,p_column_display_sequence=>6
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(17373990652354835113)
,p_query_column_id=>12
,p_column_alias=>'USER_NAME'
,p_column_display_sequence=>8
,p_column_heading=>'User Name'
,p_use_as_row_header=>'N'
,p_column_html_expression=>'<a href="#PROFILE_URL#">#USER_NAME#</a>'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(17373991074875835114)
,p_query_column_id=>13
,p_column_alias=>'COMMENT_DATE'
,p_column_display_sequence=>9
,p_column_heading=>'Comment Date'
,p_use_as_row_header=>'N'
,p_column_format=>'Since'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18317007058363914566)
,p_query_column_id=>14
,p_column_alias=>'CREATED'
,p_column_display_sequence=>15
,p_column_heading=>'Created'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(17373993413499835126)
,p_query_column_id=>15
,p_column_alias=>'PROFILE_URL'
,p_column_display_sequence=>14
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(18317007209054914567)
,p_plug_name=>'About this page'
,p_region_css_classes=>'margin-sm'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(6781104626075890777)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'for c1 in (select created, created_by from eba_proj_status where id = :P202_ID) loop',
'sys.htp.p(''<p class="note">',
'          Project created ''||apex_util.get_since(c1.created)||'' (''||to_char(c1.created,''DD Month, YYYY'')||'') by ''||',
'          apex_escape.html(lower(c1.created_by))||''.  '');',
'sys.htp.p(''Showing project history spanning the last 7 days. Click the <strong>View Project History</strong> ',
'          button to view full project history.</p>'');',
'end loop;'))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_comment=>'<p class="note">Showing project history spanning the last 7 days. Click the <strong>View Project History</strong> button to view full project history.</p>'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(18317007249368914568)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(17040874134749774052)
,p_button_name=>'PROJECT_HISTORY'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--gapRight'
,p_button_template_id=>wwv_flow_api.id(6781135529450890864)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'View Project History'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:126:&SESSION.::&DEBUG.:RP,126,RIR:IREQ_PROJECT_ID:&P202_ID.'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(17040874061730774051)
,p_name=>'P202_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(17373987611681835084)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(17040874252774774053)
,p_name=>'P202_SEARCH'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(17040874134749774052)
,p_prompt=>'Search'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(6781134673650890856)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(17040874385321774054)
,p_name=>'P202_SHOW_VIEWS'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(17040874134749774052)
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'SHOW PROJECT VIEWS CHECKBOX'
,p_lov=>'.'||wwv_flow_api.id(17444605117298428912)||'.'
,p_cSize=>30
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(6781134673650890856)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'1'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18317007401154914569)
,p_name=>'P202_PROJECT_NAME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(17373987611681835084)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(18317007447750914570)
,p_computation_sequence=>10
,p_computation_item=>'P202_PROJECT_NAME'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'QUERY'
,p_computation=>'select project from EBA_PROJ_STATUS where id = :P202_ID;'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(17444874930362512481)
,p_name=>'refresh report'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P202_SHOW_VIEWS'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(17473998273423490190)
,p_event_id=>wwv_flow_api.id(17444874930362512481)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P202_SHOW_VIEWS'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(17444875350231512484)
,p_event_id=>wwv_flow_api.id(17444874930362512481)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(17373987611681835084)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(17473642403776368473)
,p_name=>'Perform Search on Enter'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P202_SEARCH'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'this.browserEvent.which === 13'
,p_bind_type=>'bind'
,p_bind_event_type=>'keydown'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(17473642737003368483)
,p_event_id=>wwv_flow_api.id(17473642403776368473)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(17473643230037368484)
,p_event_id=>wwv_flow_api.id(17473642403776368473)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(17473653774770368485)
,p_event_id=>wwv_flow_api.id(17473642403776368473)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CANCEL_EVENT'
);
wwv_flow_api.component_end;
end;
/
