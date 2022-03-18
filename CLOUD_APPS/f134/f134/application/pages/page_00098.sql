prompt --application/pages/page_00098
begin
--   Manifest
--     PAGE: 00098
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
 p_id=>98
,p_user_interface_id=>wwv_flow_api.id(5783577205373975152)
,p_name=>'Project Creation Date Calendar'
,p_step_title=>'Project Creation Date Calendar'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(5956243887448595899)
,p_html_page_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<style>',
'a.statusRed,',
'a.statusGreen,',
'a.statusYellow,',
'a.statusComplete,',
'a.statusUnknown {',
'border-left: 3px solid #CCC;',
'background-color: #EEE;',
'padding: 0 3px !important;',
'margin: 5px 0 0 0;',
'-webkit-border-top-right-radius: 3px;',
'-webkit-border-bottom-right-radius: 3px;',
'-moz-border-radius-topright: 3px;',
'-moz-border-radius-bottomright: 3px;',
'border-top-right-radius: 3px;',
'border-bottom-right-radius: 3px;',
'color: rgba(0,0,0,.8);',
'}',
'a.statusRed {border-color: #EA0000; background-color: #FDBFC1}',
'a.statusGreen {border-color: #0B0; background-color: #BBE1A9}',
'a.statusYellow {border-color: #DD0; background-color: #EEEBB4}',
'a.statusComplete {border-color: #111; background-color: #CCC}',
'a.statusAccomplishment {',
'background: url(data:image/gif;base64,R0lGODlhCgAIALMIAGDVUDGoIVzRTFXLRTivKE7EPj+1L0e9N////wAAAAAAAAAAAAAAAAAAAAAAAAAAACH5BAEAAAgALAAAAAAKAAgAAAQaEMkpAaUiXzS6LFMhSkeJlAdlrOtGvJsUbBEAOw==) transparent 3px 5px no-repeat;',
'padding-left: 18px !important;',
'background-color: #F8F8F8;',
'border: 1px solid #DDD !important;',
'-webkit-border-radius: 3px;',
'-moz-border-radius: 3px; ',
'margin: 5px 0 0 0;',
'}',
'span.ebaToolTip {',
'	display: none !important;',
'	}',
'div.ebaStatusListLegend ul li.ebaAccomplishment {',
'background: url(data:image/gif;base64,R0lGODlhCgAIALMIAGDVUDGoIVzRTFXLRTivKE7EPj+1L0e9N////wAAAAAAAAAAAAAAAAAAAAAAAAAAACH5BAEAAAgALAAAAAAKAAgAAAQaEMkpAaUiXzS6LFMhSkeJlAdlrOtGvJsUbBEAOw==) transparent 3px 5px no-repeat;',
'}',
'',
'table.formlayout label {display: block; line-height:18px; }',
'table.formlayout label a {font: bold 11px/18px Arial, sans-serif; color: #333;}',
'table.formlayout label + br {display: none;}',
'#main-sb-left > div {margin-left: 10px;}',
'</style>'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'This is a monthly calendar of project creation activity. Click on a project to navigate to that project''s details page. Click the <strong><</strong> button to go to the previous month and the <strong>></strong> button to go forward a month. Switch be'
||'tween the calendar view to the list view by clicking the <strong>list</strong> button.'
,p_last_upd_yyyymmddhh24miss=>'20190905132746'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(5956348794170100357)
,p_plug_name=>'Action Items'
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  select   ',
'   p.id project_id, ',
'   p.PROJECT, ',
'   decode(p.cat_id,null,null,(select CATEGORY from EBA_PROJ_STATUS_CATS x where x.id = p.cat_id)) proj_cat,',
'   s.status_short_desc status_text,',
'   ''apex-cal-''|| lower(c.color_name) css_color,',
'   p.description,',
'    (   select listagg(decode(u.first_name,null,eba_proj_fw.get_name_from_email_address(u.username),decode(u.last_name, null, eba_proj_fw.get_name_from_email_address(u.username), initcap(u.first_name || '' '' || u.last_name))),'', '') within group',
'            (order by nvl(rf.acl_status_level,r.default_acl_status_level) desc, lower(u.username))',
'        from eba_proj_user_ref rf,',
'            eba_proj_status_users u,',
'            eba_proj_roles r',
'        where rf.project_id = p.id',
'            and rf.user_id = u.id',
'            and rf.role_id = r.id',
'            and eba_proj_fw.is_edit_authorized( u.username, rf.project_id ) = ''Y'' ) as owners,',
'    p.CREATED',
'  from EBA_PROJ_STATUS p,',
'       EBA_PROJ_STATUS_CODES s,',
'       EBA_PROJ_COLOR_CODES c',
'  where s.id = PROJECT_STATUS(+)',
'  and   s.color_code_id = c.id'))
,p_lazy_loading=>true
,p_plug_source_type=>'NATIVE_CSS_CALENDAR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'CREATED'
,p_attribute_03=>'PROJECT'
,p_attribute_05=>'f?p=&APP_ID.:200:&SESSION.::&DEBUG.:RP,200:P200_ID:&PROJECT_ID.'
,p_attribute_07=>'N'
,p_attribute_11=>'month:week:day:list:navigation'
,p_attribute_13=>'Y'
,p_attribute_14=>'CSS_COLOR'
,p_attribute_16=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Project: &PROJECT.',
'Status: &STATUS_TEXT.',
'Owner(s): &OWNERS.'))
,p_attribute_17=>'Y'
,p_attribute_18=>'24'
,p_attribute_19=>'Y'
,p_attribute_20=>'9'
,p_attribute_21=>'10'
,p_attribute_22=>'Y'
,p_attribute_23=>'3'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(5956352402550100366)
,p_plug_name=>'Legend'
,p_component_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="ebaStatusListLegend">',
'<ul>',
'<li class="ebaLegendLabel">Action Item Color Coding:</li>',
'<li class="ebaRed">Overdue</li>',
'<li class="ebaYellow">Due Today</li>',
'<li class="ebaGreen">Due In the Future</li>',
'<li class="ebaComplete">Complete</li>',
'</ul>',
'<div class="clear"></div></div>'))
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'NEVER'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(5956352800416100370)
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
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(5956354787940100375)
,p_branch_action=>'f?p=&FLOW_ID.:98:&SESSION.'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_save_state_before_branch_yn=>'Y'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(5956353181837100372)
,p_computation_sequence=>10
,p_computation_item=>'LAST_VIEW'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'62'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(13193036436770755072)
,p_computation_sequence=>20
,p_computation_item=>'PROJECT_CAME_FROM'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'&APP_PAGE_ID.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(5956353301147100372)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Adjust Calendar Date -Monthly'
,p_process_sql_clob=>' apex_util.month_calendar(''P98_CALENDAR_TYPE'');'
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Error changing calendar date.'
,p_process_comment=>'Generated 10/31/2010'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(5956353491602100372)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Adjust Calendar Date -Next'
,p_process_sql_clob=>' apex_util.increment_calendar;'
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Error changing calendar date.'
,p_process_comment=>'Generated 10/31/2010'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(5956353697986100372)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Adjust Calendar Date -Previous'
,p_process_sql_clob=>' apex_util.decrement_calendar;'
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Error changing calendar date.'
,p_process_comment=>'Generated 10/31/2010'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(5956353894057100374)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Adjust Calendar Date -Today'
,p_process_sql_clob=>' apex_util.today_calendar;'
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Error changing calendar date.'
,p_process_comment=>'Generated 10/31/2010'
);
wwv_flow_api.component_end;
end;
/
