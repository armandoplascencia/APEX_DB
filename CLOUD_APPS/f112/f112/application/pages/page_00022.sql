prompt --application/pages/page_00022
begin
--   Manifest
--     PAGE: 00022
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>112
,p_default_id_offset=>101618418936909290
,p_default_owner=>'MISO'
);
wwv_flow_api.create_page(
 p_id=>22
,p_user_interface_id=>wwv_flow_api.id(14644135011863537602)
,p_name=>'Updates'
,p_alias=>'UPDATES'
,p_step_title=>'Updates'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(14820268795473279241)
,p_page_template_options=>'#DEFAULT#'
,p_required_patch=>wwv_flow_api.id(15056358001044725725)
,p_protection_level=>'C'
,p_help_text=>'This calendar displays Changes to customers by day. Click the <strong><</strong> button to go to the previous month and the <strong>></strong> button to go forward a month. Switch between the calendar view to the list view by clicking the <strong>lis'
||'t</strong> button.'
,p_last_updated_by=>'ALLAN'
,p_last_upd_yyyymmddhh24miss=>'20210301102539'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(17895074239543358321)
,p_plug_name=>'Updates'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader'
,p_plug_template=>wwv_flow_api.id(14959353760448679146)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct a.customer_id',
',      a.updated',
',      a.customer_name',
'from (select n.customer_id',
'      ,      trunc(n.created) updated',
'      ,      c.CUSTOMER_NAME',
'      from  eba_cust_notes n , eba_cust_customers c',
'      where n.customer_id = c.id',
'      union all',
'      select c.id customer_id',
'      ,      trunc(h.change_date) updated',
'      ,      c.customer_name',
'      from EBA_CUST_HISTORY h, eba_cust_customers c',
'      where h.component_id = c.id',
'     ) a',
''))
,p_lazy_loading=>true
,p_plug_source_type=>'NATIVE_CSS_CALENDAR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'UPDATED'
,p_attribute_03=>'CUSTOMER_NAME'
,p_attribute_05=>'f?p=&APP_ID.:50:&SESSION.::&DEBUG.:RP,50:P50_ID:&CUSTOMER_ID.'
,p_attribute_07=>'N'
,p_attribute_09=>'month:list:navigation'
,p_attribute_13=>'N'
,p_attribute_16=>'&DETAIL.'
,p_attribute_17=>'Y'
,p_attribute_19=>'N'
,p_attribute_21=>'16'
,p_attribute_22=>'Y'
,p_attribute_23=>'3'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(17895074650080358325)
,p_plug_name=>'Activities'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(14959356293935679148)
,p_plug_display_sequence=>30
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(17940232663340213707)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(14959371794034679193)
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(17895081753359358343)
,p_branch_action=>'f?p=&FLOW_ID.:22:&SESSION.'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_save_state_before_branch_yn=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(17895079467183358337)
,p_name=>'P22_CALENDAR_DATE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(17895074239543358321)
,p_use_cache_before_default=>'NO'
,p_item_default=>'return to_char(sysdate,''YYYYMMDD'');'
,p_item_default_type=>'FUNCTION_BODY'
,p_item_default_language=>'PLSQL'
,p_source=>'P22_CALENDAR_DATE'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
,p_item_comment=>'Generated by Calendar wizard on 18-JUN-07'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(17895079664853358338)
,p_name=>'P22_CALENDAR_TYPE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(17895074239543358321)
,p_use_cache_before_default=>'NO'
,p_item_default=>'M'
,p_source=>'P22_CALENDAR_TYPE'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
,p_item_comment=>'Generated by Calendar wizard on 18-JUN-07'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(17895079857600358339)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_RESET_PAGINATION'
,p_process_name=>'Reset Pagination'
,p_process_sql_clob=>'reset_pagination'
,p_attribute_01=>'THIS_PAGE'
,p_process_error_message=>'Unable to reset pagination.'
,p_process_when=>'Go,P22_REPORT_SEARCH'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(17895080043915358340)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Adjust Calendar Date -Monthly'
,p_process_sql_clob=>' htmldb_util.month_calendar(''P22_CALENDAR_TYPE'');'
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Error changing calendar date.'
,p_process_comment=>'Generated 18-JUN-07'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(17895080241640358340)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Adjust Calendar Date -Weekly'
,p_process_sql_clob=>' htmldb_util.weekly_calendar(''P22_CALENDAR_TYPE'');'
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Error changing calendar date.'
,p_process_comment=>'Generated 18-JUN-07'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(17895080466307358341)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Adjust Calendar Date -Daily'
,p_process_sql_clob=>' htmldb_util.daily_calendar(''P22_CALENDAR_TYPE'');'
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Error changing calendar date.'
,p_process_comment=>'Generated 18-JUN-07'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(17895080648472358341)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Adjust Calendar Date -Previous'
,p_process_sql_clob=>' htmldb_util.decrement_calendar;'
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Error changing calendar date.'
,p_process_comment=>'Generated 18-JUN-07'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(17895080864805358341)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Adjust Calendar Date -Today'
,p_process_sql_clob=>' htmldb_util.today_calendar;'
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Error changing calendar date.'
,p_process_comment=>'Generated 18-JUN-07'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(17895081041687358341)
,p_process_sequence=>70
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Adjust Calendar Date -Next'
,p_process_sql_clob=>' htmldb_util.increment_calendar;'
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Error changing calendar date.'
,p_process_comment=>'Generated 18-JUN-07'
);
wwv_flow_api.component_end;
end;
/
