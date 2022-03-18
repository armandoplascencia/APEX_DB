prompt --application/pages/page_00002
begin
--   Manifest
--     PAGE: 00002
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>100
,p_default_id_offset=>0
,p_default_owner=>'MISO'
);
wwv_flow_api.create_page(
 p_id=>2
,p_user_interface_id=>wwv_flow_api.id(46185900950878783)
,p_name=>'Pos'
,p_alias=>'POS'
,p_step_title=>'Pos'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>To find data enter a search term into the search dialog, or click on the column headings to limit the records returned.</p>',
'',
'<p>You can perform numerous functions by clicking the <strong>Actions</strong> button. This includes selecting the columns that are displayed / hidden and their display sequence, plus numerous data and format functions.  You can also define additiona'
||'l views of the data using the chart, group by, and pivot options.</p>',
'',
'<p>If you want to save your customizations select report, or click download to unload the data. Enter you email address and time frame under subscription to be sent the data on a regular basis.<p>',
'',
'<p>For additional information click Help at the bottom of the Actions menu.</p> ',
'',
'<p>Click the <strong>Reset</strong> button to reset the interactive report back to the default settings.</p>'))
,p_last_updated_by=>'MISO'
,p_last_upd_yyyymmddhh24miss=>'20220125000419'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(46208889767878877)
,p_plug_name=>'Brink Pos'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(46094429977878710)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<pre>',
'python -mzeep http://api-devapi01.brinkpos.net/Ordering.svc?wsdl       >',
'',
'  python -mzeep http://api-apiint.brinkpos.net/Ordering.svc?Wsdl      > def_wsdl_ordering.rpt    ',
'  python -mzeep http://api-apiint.brinkpos.net/Budgets.svc?Wsdl       > def_wsdl_budgets.rpt',
'  python -mzeep http://api-apiint.brinkpos.net/Customers.svc?Wsdl     > def_wsdl_customers.rpt',
'  python -mzeep http://api-apiint.brinkpos.net/HouseAccounts.svc?Wsdl > def_wsdl_houseaccounts.rpt',
'  python -mzeep http://api-apiint.brinkpos.net/Kitchen.svc?Wsdl       > def_wsdl_kitchen.rpt',
'  python -mzeep http://api-apiint.brinkpos.net/Labor.svc?Wsdl         > def_wsdl_labor.rpt',
'  python -mzeep http://api-apiint.brinkpos.net/Labor2.svc?Wsdl        > def_wsdl_labor2.rpt',
'  python -mzeep http://api-apiint.brinkpos.net/Loyalty.svc?Wsdl       > def_wsdl_loyalty.rpt',
'  python -mzeep http://api-apiint.brinkpos.net/Loyalty2.svc?Wsdl      > def_wsdl_loyalty2.rpt',
'  python -mzeep http://api-apiint.brinkpos.net/Ordering.svc?Wsdl      > def_wsdl_ordering.rpt',
'  python -mzeep http://api-apiint.brinkpos.net/Sales.svc?Wsdl         > def_wsdl_sales.rpt',
'  python -mzeep http://api-apiint.brinkpos.net/Sales2.svc?Wsdl        > def_wsdl_sales2.rpt',
'  python -mzeep http://api-apiint.brinkpos.net/Settings.svc?Wsd       > def_wsdl_settings.rpt',
'  python -mzeep http://api-apiint.brinkpos.net/Settings2.svc?Wsdl     > def_wsdl_settings2.rpt',
'</pre>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(46213771674878896)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(46105725887878716)
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(46038752863878661)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(46162887578878761)
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(46212980351878892)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(46208889767878877)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(46161596542878760)
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:RR::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(46215541916878900)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(46208889767878877)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(46161413497878760)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.:3'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(46214603499878897)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(46208889767878877)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(46215112491878899)
,p_event_id=>wwv_flow_api.id(46214603499878897)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(46208889767878877)
);
wwv_flow_api.component_end;
end;
/
