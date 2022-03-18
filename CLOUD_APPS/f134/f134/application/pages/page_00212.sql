prompt --application/pages/page_00212
begin
--   Manifest
--     PAGE: 00212
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
 p_id=>212
,p_user_interface_id=>wwv_flow_api.id(5783577205373975152)
,p_name=>'Mass Update My Open Action Items'
,p_step_title=>'Mass Update My Open Action Items'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(5956243988833596300)
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
' $( ''#myOpenAIs_search_field'' ).bind(''keypress'', function(e){',
'   if ( e.keyCode == 13 ) {',
'        $(''input[type=checkbox][name=f01]'').prop(''checked'',false);',
'        $(''#instructions div'').html(''<p>Click the "Select All" check box (at the top) or individual check boxes in the report on the right to select the Action Items you would like to update.</p>'');',
'        $s(''P212_ACTION'','''');',
'        $(''#P212_ACTION_CONTAINER'').hide();',
'        $(''#P212_NEW_RESOLUTION_CONTAINER'').hide();',
'        $(''#P212_NEW_STATUS_CONTAINER'').hide();',
'        $(''#P212_NEW_DUE_DATE_CONTAINER'').hide();',
'        $(''#P212_NEW_TYPE_CONTAINER'').hide();',
'   }',
' });'))
,p_step_template=>wwv_flow_api.id(6781077225859890733)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(7306166303644991446)
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Click the "Select All" check box (at the top) or individual check boxes in the report to select the Action Items you would like to update.',
'Select an action, provide the requested information, and click the <strong>Preview Changes</strong> button.'))
,p_last_upd_yyyymmddhh24miss=>'20190913132927'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(20152066892845308262)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(6781115417665890803)
,p_plug_display_sequence=>15
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(8972392840601050532)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(6781135716305890867)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NEVER'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(20152067810831308271)
,p_plug_name=>'Filters'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--hiddenOverflow:t-Form--labelsAbove'
,p_plug_template=>wwv_flow_api.id(6781115417665890803)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_02'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(20152067981523308273)
,p_plug_name=>'Instructions'
,p_region_name=>'instructions'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(6781104626075890777)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_02'
,p_plug_source=>'<p>Select the Action Items you would like to update in the report on the right. You can click the check boxes that identify the specific Action Items you would like to update or click the check box in the report''s column header to select all Action I'
||'tems currently displayed.</p>'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_header=>'<div style="margin:15px;">'
,p_plug_footer=>'</div>'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(20519110093679939739)
,p_plug_name=>'Mass Update My Open Action Items'
,p_region_name=>'myOpenAIs'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(6781113968619890797)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    a.id,',
'    a.type_id as type,',
'    apex_item.checkbox(1,a.id,''UNCHECKED'') as cb,',
'    a.action title,',
'    case when a.link_url is not null and a.link_text is not null and exists (select null',
'                 from apex_application_build_options',
'                where application_id = :APP_ID',
'                  and build_option_name = ''Action Item Links''',
'                  and build_option_status = ''Include'') then',
'        ''<small><a href="'' || apex_escape.html(a.link_url) || ''" target="_blank">'' || apex_escape.html(a.link_text) || ''</a></small>''',
'    end as link_text,',
'    decode(a.milestone_id,null,null,(select milestone_name m from eba_proj_status_ms where id = a.milestone_id)) milestone,',
'    apex_util.prepare_url(''f?p=''||:APP_ID||'':78:''||:APP_SESSION||'':::78:P78_ACTION_ITEM_ID,P200_ID:''||a.id||'',''||s.id) link,',
'    s.project,',
'    a.action_description,',
'    a.action_status status,',
'    a.due_date,',
'    case when owner_role_id is null then',
'        eba_proj_fw.get_name_from_email_address(a.action_owner_01)',
'        ||decode(a.action_owner_02,null,null,'', ''||eba_proj_fw.get_name_from_email_address(a.action_owner_02))',
'        ||decode(a.action_owner_03,null,null,'', ''||eba_proj_fw.get_name_from_email_address(a.action_owner_03))',
'        ||decode(a.action_owner_04,null,null,'', ''||eba_proj_fw.get_name_from_email_address(a.action_owner_04))',
'    else',
'        nvl((select r.name||'': ''||listagg(decode(u.first_name,null,eba_proj_fw.get_name_from_email_address(u.username),decode(u.last_name, null, eba_proj_fw.get_name_from_email_address(u.username), initcap(u.first_name || '' '' || u.last_name))),'', '')',
'                within group (order by lower(u.username)) owner',
'            from eba_proj_user_ref rf,',
'                eba_proj_status_users u,',
'                eba_proj_roles r',
'            where rf.role_id = a.owner_role_id',
'                and rf.project_id = a.project_id',
'                and u.id = rf.user_id',
'                and r.id = rf.role_id',
'            group by r.name',
'        ), (select ''No ''||r.name||'' defined''',
'            from eba_proj_roles r',
'            where r.id = a.owner_role_id)',
'        )',
'    end as owner,',
'    a.row_key',
'from eba_proj_status_ais a,',
'    eba_proj_status s,',
'    eba_proj_status_codes c',
'where a.project_id = s.id',
'    and s.project_status = c.id',
'    and c.is_closed_status != ''Y''',
'    and a.action_status != ''Closed''',
'    and (( a.owner_role_id is null',
'        and (   upper(a.action_owner_01) = upper(:APP_USER)',
'            or  upper(a.action_owner_02) = upper(:APP_USER)',
'            or  upper(a.action_owner_03) = upper(:APP_USER)',
'            or  upper(a.action_owner_04) = upper(:APP_USER)',
'        )) or ( a.owner_role_id is not null',
'            and exists ( select null',
'                        from eba_proj_user_ref rf,',
'                            eba_proj_status_users u',
'                        where rf.role_id = a.owner_role_id',
'                            and rf.project_id = a.project_id',
'                            and rf.user_id = u.id',
'                            and upper(u.username) = upper(:APP_USER) )',
'        )',
'    )',
'    and ( :P212_PROJECT_ID is null or s.id = :P212_PROJECT_ID )',
'order by a.due_date,',
'    lower(s.project)'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(20519110161874939739)
,p_name=>'Mass Update My Open Action Items'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLSX:PDF:RTF'
,p_owner=>'ALLAN'
,p_internal_uid=>19290633549180436611
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(20519110557849939748)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(20152067178845308265)
,p_db_column_name=>'CB'
,p_display_order=>11
,p_column_identifier=>'L'
,p_column_label=>'Select/Unselect All'
,p_report_label=>'<input type="checkbox" id="selectunselectall" title="Select/Unselect All">'
,p_sync_form_label=>'N'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(20519112161942939756)
,p_db_column_name=>'LINK'
,p_display_order=>21
,p_column_identifier=>'E'
,p_column_label=>'Link'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(20519110984297939751)
,p_db_column_name=>'TITLE'
,p_display_order=>31
,p_column_identifier=>'B'
,p_column_label=>'Action Item'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(20519111400913939752)
,p_db_column_name=>'LINK_TEXT'
,p_display_order=>41
,p_column_identifier=>'C'
,p_column_label=>'Link'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(20519111728034939754)
,p_db_column_name=>'MILESTONE'
,p_display_order=>51
,p_column_identifier=>'D'
,p_column_label=>'Milestone'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(20519112601674939758)
,p_db_column_name=>'PROJECT'
,p_display_order=>61
,p_column_identifier=>'F'
,p_column_label=>'Project'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(20519112994858939760)
,p_db_column_name=>'ACTION_DESCRIPTION'
,p_display_order=>71
,p_column_identifier=>'G'
,p_column_label=>'Description'
,p_allow_sorting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'CLOB'
,p_heading_alignment=>'LEFT'
,p_rpt_show_filter_lov=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(20519113318002939760)
,p_db_column_name=>'STATUS'
,p_display_order=>81
,p_column_identifier=>'H'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(20520993732581939761)
,p_db_column_name=>'DUE_DATE'
,p_display_order=>91
,p_column_identifier=>'I'
,p_column_label=>'Due Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'fmDD-MON-YYYY'
,p_tz_dependent=>'Y'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(20520994134068939762)
,p_db_column_name=>'OWNER'
,p_display_order=>101
,p_column_identifier=>'J'
,p_column_label=>'Owner'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(20520994600651939763)
,p_db_column_name=>'ROW_KEY'
,p_display_order=>111
,p_column_identifier=>'K'
,p_column_label=>'Row Key'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(20152067686355308270)
,p_db_column_name=>'TYPE'
,p_display_order=>121
,p_column_identifier=>'M'
,p_column_label=>'Type'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_api.id(6774446107023622579)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(20520995196953940393)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'192925186'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'CB:TITLE:PROJECT:MILESTONE:STATUS:DUE_DATE::TYPE'
,p_sort_column_1=>'DUE_DATE'
,p_sort_direction_1=>'ASC'
,p_sort_column_2=>'TITLE'
,p_sort_direction_2=>'ASC'
);
wwv_flow_api.create_worksheet_condition(
 p_id=>wwv_flow_api.id(207397219877952492)
,p_report_id=>wwv_flow_api.id(20520995196953940393)
,p_condition_type=>'FILTER'
,p_allow_delete=>'Y'
,p_column_name=>'STATUS'
,p_operator=>'='
,p_expr=>'Open'
,p_condition_sql=>'"STATUS" = #APXWS_EXPR#'
,p_condition_display=>'#APXWS_COL_NAME# = ''Open''  '
,p_enabled=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(20575536432467710846)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(20152067810831308271)
,p_button_name=>'PREVIEW'
,p_button_static_id=>'previewBtn'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(6781135529450890864)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Preview Changes'
,p_button_position=>'REGION_TEMPLATE_CREATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(20152067356063308267)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(20519110093679939739)
,p_button_name=>'RESET'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(6781134785393890859)
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&SESSION.::&DEBUG.:RP,&APP_PAGE_ID.,RIR:P212_PROJECT_ID:&P212_PROJECT_ID.'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(20575536584589710847)
,p_branch_name=>'Go To Page 213'
,p_branch_action=>'f?p=&APP_ID.:213:&SESSION.::&DEBUG.:RP:P213_PROJECT_ID:&P212_PROJECT_ID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(20575536432467710846)
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(20152067309470308266)
,p_name=>'P212_PROJECT_ID'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(20152067810831308271)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(20152067885273308272)
,p_name=>'P212_ACTION'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(20152067810831308271)
,p_prompt=>'Action'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'MASS_UPDATE_ACTIONS'
,p_lov=>'.'||wwv_flow_api.id(20529543973304045222)||'.'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select an Action -'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(6781134744367890857)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(20529965125300509640)
,p_name=>'P212_NEW_STATUS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(20152067810831308271)
,p_prompt=>'New Status'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'MASS UPDATE ACTION ITEM STATUSES'
,p_lov=>'.'||wwv_flow_api.id(21386025637442434562)||'.'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select New Status -'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(6781134744367890857)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(20529965303189509641)
,p_name=>'P212_NEW_DUE_DATE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(20152067810831308271)
,p_prompt=>'New Due Date'
,p_format_mask=>'DD-MON-YYYY'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(6781134744367890857)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(20529965330510509642)
,p_name=>'P212_NEW_TYPE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(20152067810831308271)
,p_prompt=>'New Type'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'ACTION ITEM TYPES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select AI_TYPE, id',
'from EBA_PROJ_STATUS_AIS_TYPES',
'where is_active_yn = ''Y''',
'order by display_sequence'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select New Type -'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(6781134744367890857)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(20529965745983509646)
,p_name=>'P212_NEW_RESOLUTION'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(20152067810831308271)
,p_prompt=>'New Resolution'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>5
,p_field_template=>wwv_flow_api.id(6781134744367890857)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_required_patch=>wwv_flow_api.id(18227432720253979239)
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(20575535800346710839)
,p_name=>'P212_NEW_TYPE_NAME'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(20152067810831308271)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(20575537777171710859)
,p_name=>'P212_NEW_COMPLETED_DATE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(20152067810831308271)
,p_item_default=>'to_date(sysdate,''DD-MON-YYYY'')'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Completed Date'
,p_format_mask=>'DD-MON-YYYY'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(6781134744367890857)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(20529967831308509667)
,p_validation_name=>'Resolution Not Null'
,p_validation_sequence=>10
,p_validation=>'P212_NEW_RESOLUTION'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#LABEL# must have some value.'
,p_validation_condition=>':P212_ACTION = ''CHANGE_STATUS'' and :P212_NEW_STATUS = ''Closed'''
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'EXPRESSION'
,p_associated_item=>wwv_flow_api.id(20529965745983509646)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
,p_required_patch=>wwv_flow_api.id(18227432720253979239)
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(20398326655370735568)
,p_validation_name=>'Completed Date Not Null'
,p_validation_sequence=>20
,p_validation=>'P212_NEW_COMPLETED_DATE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#LABEL# must have some value.'
,p_validation_condition=>':P212_ACTION = ''CHANGE_STATUS'' and :P212_NEW_STATUS = ''Closed'''
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'EXPRESSION'
,p_associated_item=>wwv_flow_api.id(20575537777171710859)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(20529967999932509668)
,p_validation_name=>'Status Not Null'
,p_validation_sequence=>30
,p_validation=>'P212_NEW_STATUS'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#LABEL# must have some value.'
,p_validation_condition=>':P212_ACTION = ''CHANGE_STATUS'''
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'EXPRESSION'
,p_associated_item=>wwv_flow_api.id(20529965125300509640)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(20529968028502509669)
,p_validation_name=>'Due Date Not Null'
,p_validation_sequence=>40
,p_validation=>'P212_NEW_DUE_DATE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#LABEL# must have some value.'
,p_validation_condition=>':P212_ACTION = ''CHANGE_DUE_DATE'''
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'EXPRESSION'
,p_associated_item=>wwv_flow_api.id(20529965303189509641)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(20529968181019509670)
,p_validation_name=>'Type Not Null'
,p_validation_sequence=>50
,p_validation=>'P212_NEW_TYPE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#LABEL# must have some value.'
,p_validation_condition=>'P212_ACTION'
,p_validation_condition2=>'CHANGE_TYPE'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_associated_item=>wwv_flow_api.id(20529965330510509642)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(20152067506931308268)
,p_name=>'Select/Unselect All'
,p_event_sequence=>10
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'#selectunselectall'
,p_bind_type=>'live'
,p_bind_delegate_to_selector=>'#myOpenAIs'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(20152067558340308269)
,p_event_id=>wwv_flow_api.id(20152067506931308268)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ( $( ''#selectunselectall'').is('':checked'') ) {',
'    $(''input[type=checkbox][name=f01]'').prop(''checked'',true);',
'}',
'else {',
'    $(''input[type=checkbox][name=f01]'').prop(''checked'',false);',
'}'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(20152068217058308276)
,p_name=>'Toggle Instructions and Action Filter on f01'
,p_event_sequence=>20
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'input[type=checkbox][name=f01]'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'$(''input[type=checkbox][name=f01]:checked'').length > 0'
,p_bind_type=>'live'
,p_bind_delegate_to_selector=>'#myOpenAIs'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(20152068329748308277)
,p_event_id=>wwv_flow_api.id(20152068217058308276)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (!$(''#P212_ACTION_CONTAINER'').is(":visible")){',
'    $(''#instructions div'').html(''<p>Now select an action from the Action select list below that will apply to all of your selected Action Items.</p>'');',
'    $s(''P212_ACTION'','''');',
'    $s(''P212_NEW_STATUS'','''');',
'    $(''#P212_ACTION_CONTAINER'').show();',
'    $(''#P212_NEW_STATUS_CONTAINER'').hide();',
'    $(''#P212_NEW_RESOLUTION_CONTAINER'').hide();',
'    $(''#P212_NEW_DUE_DATE_CONTAINER'').hide();',
'    $(''#P212_NEW_TYPE_CONTAINER'').hide();',
'    $(''#P212_NEW_COMPLETED_DATE_CONTAINER'').hide();',
'    $(''#previewBtn'').hide();',
'}'))
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(20529966032923509649)
,p_event_id=>wwv_flow_api.id(20152068217058308276)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(''#instructions div'').html(''<p>Click the "Select All" check box (at the top) or individual check boxes in the report to select the Action Items you would like to update.</p>'');',
'$(''#P212_ACTION_CONTAINER'').hide();',
'$(''#P212_NEW_RESOLUTION_CONTAINER'').hide();',
'$(''#P212_NEW_STATUS_CONTAINER'').hide();',
'$(''#P212_NEW_DUE_DATE_CONTAINER'').hide();',
'$(''#P212_NEW_COMPLETED_DATE_CONTAINER'').hide();',
'$(''#P212_NEW_TYPE_CONTAINER'').hide();',
'$(''#previewBtn'').hide();'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(20529965882101509647)
,p_name=>'Toggle Instructions and Action Filter on selectall'
,p_event_sequence=>30
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'#selectunselectall'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'$( ''#selectunselectall'').is('':checked'')'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(20529965938011509648)
,p_event_id=>wwv_flow_api.id(20529965882101509647)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(''#instructions div'').html(''<p>Now select an action from the Action select list below that will apply to all of your selected Action Items.</p>'');',
'$s(''P212_ACTION'','''');',
'$s(''P212_NEW_STATUS'','''');',
'$(''#P212_ACTION_CONTAINER'').show();',
'$(''#P212_NEW_STATUS_CONTAINER'').hide();',
'$(''#P212_NEW_RESOLUTION_CONTAINER'').hide();',
'$(''#P212_NEW_DUE_DATE_CONTAINER'').hide();',
'$(''#P212_NEW_TYPE_CONTAINER'').hide();',
'$(''#P212_NEW_COMPLETED_DATE_CONTAINER'').hide();',
'$(''#previewBtn'').hide();'))
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(20529966152696509650)
,p_event_id=>wwv_flow_api.id(20529965882101509647)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(''#instructions div'').html(''<p>Click the "Select All" check box (at the top) or individual check boxes in the report to select the Action Items you would like to update.</p>'');',
'$(''#P212_ACTION_CONTAINER'').hide();',
'$(''#P212_NEW_RESOLUTION_CONTAINER'').hide();',
'$(''#P212_NEW_STATUS_CONTAINER'').hide();',
'$(''#P212_NEW_DUE_DATE_CONTAINER'').hide();',
'$(''#P212_NEW_COMPLETED_DATE_CONTAINER'').hide();',
'$(''#P212_NEW_TYPE_CONTAINER'').hide();',
'$(''#previewBtn'').hide();'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(20529965482794509643)
,p_name=>'Show/Hide Filters'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P212_ACTION'
,p_condition_element=>'P212_ACTION'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(20529965619686509645)
,p_event_id=>wwv_flow_api.id(20529965482794509643)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P212_ACTION'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(20529965552625509644)
,p_event_id=>wwv_flow_api.id(20529965482794509643)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P212_ACTION'') == ''CHANGE_STATUS'') {',
'    $(''#instructions div'').html(''<p>Select the status value that you would like to update all of the selected Action Items to.</p>'');',
'    $(''#P212_NEW_STATUS_CONTAINER'').show();',
'    $(''#P212_NEW_DUE_DATE_CONTAINER'').hide();',
'    $(''#P212_NEW_TYPE_CONTAINER'').hide();',
'    $s(''P212_NEW_DUE_DATE'','''');',
'    $s(''P212_NEW_TYPE'','''');',
'}',
'else if ($v(''P212_ACTION'') == ''CHANGE_DUE_DATE'') {',
'    $(''#instructions div'').html(''<p>Select the due date that you would like to update all of the selected Action Items to.</p>'');',
'    $(''#P212_NEW_STATUS_CONTAINER'').hide();',
'    $(''#P212_NEW_DUE_DATE_CONTAINER'').show();',
'    $(''#P212_NEW_TYPE_CONTAINER'').hide();',
'    $(''#P212_NEW_RESOLUTION_CONTAINER'').hide();',
'    $(''#previewBtn'').show();',
'    $s(''P212_NEW_TYPE'','''');',
'    $s(''P212_NEW_STATUS'','''');',
'    $s(''P212_NEW_RESOLUTION'','''');',
'}',
'else if ($v(''P212_ACTION'') == ''CHANGE_TYPE'') {',
'    $(''#instructions div'').html(''<p>Select the type value that you would like to update all of the selected Action Items to.</p>'');',
'    $(''#P212_NEW_STATUS_CONTAINER'').hide();',
'    $(''#P212_NEW_RESOLUTION_CONTAINER'').hide();',
'    $(''#P212_NEW_DUE_DATE_CONTAINER'').hide();',
'    $(''#P212_NEW_TYPE_CONTAINER'').show();',
'    $(''#previewBtn'').show();',
'    $s(''P212_NEW_STATUS'','''');',
'    $s(''P212_NEW_RESOLUTION'','''');',
'    $s(''P212_NEW_DUE_DATE'','''');',
'}'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(20529966311091509651)
,p_name=>'Show/Hide Resolution - resolution required'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P212_NEW_STATUS'
,p_condition_element=>'P212_NEW_STATUS'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'Closed'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_required_patch=>wwv_flow_api.id(18227432720253979239)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(20529966458546509653)
,p_event_id=>wwv_flow_api.id(20529966311091509651)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P212_NEW_RESOLUTION,P212_NEW_COMPLETED_DATE'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(20575537827974710860)
,p_event_id=>wwv_flow_api.id(20529966311091509651)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P212_NEW_RESOLUTION,P212_NEW_COMPLETED_DATE'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(20698858012832174634)
,p_event_id=>wwv_flow_api.id(20529966311091509651)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(20575536432467710846)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(20575536733201710849)
,p_event_id=>wwv_flow_api.id(20529966311091509651)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(20575536432467710846)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(20529967020899509659)
,p_event_id=>wwv_flow_api.id(20529966311091509651)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(''#instructions div'').html(''<p>Enter your resolution text and then click the <strong>Update</strong> button.</p>'');'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(20529967812217509666)
,p_event_id=>wwv_flow_api.id(20529966311091509651)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P212_NEW_RESOLUTION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(20529967125449509660)
,p_name=>'Show/Hide Resolution - resolution optional'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P212_NEW_STATUS'
,p_condition_element=>'P212_NEW_STATUS'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'Closed'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_required_patch=>-wwv_flow_api.id(18227432720253979239)
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
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(20529967286748509661)
,p_event_id=>wwv_flow_api.id(20529967125449509660)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P212_NEW_RESOLUTION,P212_NEW_COMPLETED_DATE'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(20529967408813509662)
,p_event_id=>wwv_flow_api.id(20529967125449509660)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P212_NEW_RESOLUTION'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(20575536687541710848)
,p_event_id=>wwv_flow_api.id(20529967125449509660)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(20575536432467710846)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(20698858187833174635)
,p_event_id=>wwv_flow_api.id(20529967125449509660)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(20575536432467710846)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(20529966880860509657)
,p_name=>'Hide Preview Button until it''s time to show'
,p_event_sequence=>70
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'$(''li.htmldbStdErr'').html() === undefined'
,p_bind_type=>'live'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(20529968271845509671)
,p_event_id=>wwv_flow_api.id(20529966880860509657)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(''input:checkbox'').attr(''checked'',false);',
'$(''#instructions div'').html(''<p>Click the "Select All" check box (at the top) or individual check boxes in the report to select the Action Items you would like to update.</p>'');',
'$s(''P212_ACTION'','''');',
'$s(''P212_NEW_STATUS'','''');',
'$s(''P212_NEW_RESOLUTION'','''');',
'$s(''P212_NEW_DUE_DATE'','''');',
'$s(''P212_NEW_TYPE'','''');',
'$(''#P212_ACTION_CONTAINER'').hide();',
'$(''#P212_NEW_RESOLUTION_CONTAINER'').hide();',
'$(''#P212_NEW_COMPLETED_DATE_CONTAINER'').hide();',
'$(''#P212_NEW_STATUS_CONTAINER'').hide();',
'$(''#P212_NEW_DUE_DATE_CONTAINER'').hide();',
'$(''#P212_NEW_TYPE_CONTAINER'').hide();',
'$(''#previewBtn'').hide();'))
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(20529968449075509673)
,p_event_id=>wwv_flow_api.id(20529966880860509657)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ( $(''li.htmldbStdErr'').html().indexOf(''P212_NEW_RESOLUTION'') > 0 ) {',
'    alert(''Resolution cannot be null'');',
'    $(''#instructions div'').html(''<p>Enter your resolution text and then click the <strong>Update</strong> button.</p>'');',
'    $s(''P212_ACTION'',''CHANGE_STATUS'');',
'    $(''#P212_ACTION_CONTAINER'').show();',
'    $s(''P212_NEW_STATUS'',''Closed'');',
'    $(''#P212_NEW_STATUS_CONTAINER'').show();',
'    $(''#P212_NEW_RESOLUTION_CONTAINER'').show();',
'    $(''#P212_NEW_COMPLETED_DATE'').show();',
'}',
'else if ( $(''li.htmldbStdErr'').html().indexOf(''P212_NEW_COMPLETED_DATE'') > 0 ) {',
'    $(''#instructions div'').html(''<p>Enter your completed date and then click the <strong>Update</strong> button.</p>'');',
'    $s(''P212_ACTION'',''CHANGE_STATUS'');',
'    $(''#P212_ACTION_CONTAINER'').show();',
'    $s(''P212_NEW_STATUS'',''Closed'');',
'    $(''#P212_NEW_STATUS_CONTAINER'').show();',
'    $s(''P212_NEW_RESOLUTION'',$v(''P212_NEW_RESOLUTION''));',
'    $(''#P212_NEW_RESOLUTION_CONTAINER'').show();',
'    $(''#P212_NEW_COMPLETED_DATE'').show();',
'}',
'else if ( $(''li.htmldbStdErr'').html().indexOf(''P212_NEW_STATUS'') > 0 ) {',
'    $(''#instructions div'').html(''<p>Select the status value that you would like to update all of the selected Action Items to.</p>'');',
'    $(''#P212_ACTION_CONTAINER'').show();',
'    $s(''P212_ACTION'',''CHANGE_STATUS'');',
'    $(''#P212_NEW_STATUS_CONTAINER'').show();',
'}',
'else if ( $(''li.htmldbStdErr'').html().indexOf(''P212_NEW_DUE_DATE'') > 0 ) {',
'    $(''#instructions div'').html(''<p>Select the due date that you would like to update all of the selected Action Items to.</p>'');',
'    $(''#P212_ACTION_CONTAINER'').show();',
'    $s(''P212_ACTION'',''CHANGE_DUE_DATE'');',
'    $(''#P212_NEW_DUE_DATE_CONTAINER'').show();',
'}',
'else if ( $(''li.htmldbStdErr'').html().indexOf(''P212_NEW_TYPE'') > 0 ) {',
'    $(''#instructions div'').html(''<p>Select the type value that you would like to update all of the selected Action Items to.</p>'');',
'    $(''#P212_ACTION_CONTAINER'').show();',
'    $s(''P212_ACTION'',''CHANGE_TYPE'');',
'    $(''#P212_NEW_TYPE_CONTAINER'').show();',
'}'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(20575535890103710840)
,p_name=>'Populate Type Name for confirmation text'
,p_event_sequence=>120
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P212_NEW_TYPE'
,p_condition_element=>'P212_NEW_TYPE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(20575535922728710841)
,p_event_id=>wwv_flow_api.id(20575535890103710840)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P212_NEW_TYPE_NAME'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>'select AI_TYPE from EBA_PROJ_STATUS_AIS_TYPES where id = :P212_NEW_TYPE;'
,p_attribute_07=>'P212_NEW_TYPE'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(20575536397687710845)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Create Preview Collection'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_ai_id          number;',
'    l_ms_id          number;',
'    l_action         varchar2(30);',
'    l_old_value      varchar2(30);',
'    l_new_value      varchar2(30);',
'    l_action_item    varchar2(255);',
'    l_project        varchar2(200);',
'    l_completed_date varchar2(11);',
'    l_completed_by   varchar2(255);',
'    l_resolution     varchar2(4000);',
'    l_error_text     varchar2(500);',
'begin',
'    apex_collection.create_or_truncate_collection(p_collection_name => ''PREVIEW_AIS'');',
'    l_action := initcap( replace( :P212_ACTION, ''_'', '' '' ) );',
'    l_completed_date := :P212_NEW_COMPLETED_DATE;',
'    for i in 1..apex_application.g_f01.count',
'    loop',
'        l_ai_id          := apex_application.g_f01(i);',
'        for c1 in',
'        (',
'            select case',
'                       when :P212_ACTION = ''CHANGE_STATUS'' then',
'                           a.action_status',
'                       when :P212_ACTION = ''CHANGE_DUE_DATE'' then',
'                           upper(to_char(a.due_date,''DD-MON-YYYY''))',
'                       when :P212_ACTION = ''CHANGE_TYPE'' then',
'                           (select ai_type from eba_proj_status_ais_types where id = a.type_id)',
'                   end as old_value,',
'                   case',
'                       when :P212_ACTION = ''CHANGE_STATUS'' then',
'                           :P212_NEW_STATUS',
'                       when :P212_ACTION = ''CHANGE_DUE_DATE'' then',
'                           upper(:P212_NEW_DUE_DATE)',
'                       when :P212_ACTION = ''CHANGE_TYPE'' then',
'                           (select ai_type from eba_proj_status_ais_types where id = :P212_NEW_TYPE)',
'                   end as new_value,',
'                   case',
'                       when :P212_ACTION = ''CHANGE_STATUS'' and :P212_NEW_STATUS = ''Closed'' then',
'                           l_completed_date',
'                   else',
'                       null',
'                   end as completed_date,',
'                   case',
'                       when :P212_ACTION = ''CHANGE_STATUS'' and :P212_NEW_STATUS = ''Closed'' then',
'                           :APP_USER',
'                   else',
'                       null',
'                   end as completed_by,',
'                   case',
'                       when :P212_ACTION = ''CHANGE_STATUS'' and :P212_NEW_STATUS = ''Closed'' then',
'                           :P212_NEW_RESOLUTION',
'                   else',
'                       null',
'                   end as resolution,',
'                   case',
'                       when (:P212_ACTION = ''CHANGE_DUE_DATE'' or :P212_ACTION = ''CHANGE_TYPE'') and',
'                            eba_proj_fw.are_ms_ai_restricted(',
'                                p_application_id => :APP_ID,',
'                                p_username   => upper(:APP_USER),',
'                                p_project_id => a.project_id ) = ''Y'' then',
'                           ''This Action Item cannot be updated because it belongs to a restricted project that has been set to not allow these types of updates.''',
'                       when (:P212_ACTION = ''CHANGE_DUE_DATE''',
'                             and',
'                             a.milestone_id is not null',
'                             and',
'                             to_date(:P212_NEW_DUE_DATE,''DD-MON-YYYY'') > (select trunc(milestone_date) from eba_proj_status_ms where id = a.milestone_id)) then',
'                           ''This Action Item''''s due date cannot be updated because the date specified is past the associated Milestone''''s due date ('' || to_char((select trunc(milestone_date) from eba_proj_status_ms where id = a.milestone_id),''fmDD-MO'
||'N-YYYY'') || '').''',
'                   else',
'                       null',
'                   end as error_text,',
'                   a.action,',
'                   a.milestone_id,',
'                   p.project',
'              from eba_proj_status_ais a,',
'                   eba_proj_status p',
'             where a.id = l_ai_id',
'               and a.project_id = p.id',
'        )',
'        loop',
'            l_old_value      := c1.old_value;',
'            l_new_value      := c1.new_value;',
'            l_action_item    := c1.action;',
'            l_project        := c1.project;',
'            l_completed_date := c1.completed_date;',
'            l_resolution     := c1.resolution;',
'            l_completed_by   := c1.completed_by;',
'            l_error_text     := c1.error_text;',
'            l_ms_id          := c1.milestone_id;',
'        end loop;',
'        apex_collection.add_member (',
'            p_collection_name => ''PREVIEW_AIS'',',
'            p_n001            => l_ai_id,',
'            p_n002            => l_ms_id,',
'            p_c001            => l_action_item,',
'            p_c002            => l_action,',
'            p_c003            => l_old_value,',
'            p_c004            => l_new_value,',
'            p_c005            => l_project,',
'            p_c006            => l_completed_date,',
'            p_c007            => l_resolution,',
'            p_c008            => l_completed_by,',
'            p_c009            => l_error_text',
'        );',
'    end loop;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(20575536432467710846)
);
wwv_flow_api.component_end;
end;
/
