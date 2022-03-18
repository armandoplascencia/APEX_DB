prompt --application/pages/page_00010
begin
--   Manifest
--     PAGE: 00010
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>129
,p_default_id_offset=>101668256384016436
,p_default_owner=>'MISO'
);
wwv_flow_api.create_page(
 p_id=>10
,p_user_interface_id=>wwv_flow_api.id(3038757958926989645)
,p_name=>'Manual REST Services'
,p_alias=>'MANUAL-REST-SERVICES'
,p_step_title=>'Manual REST Services'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'ALLAN'
,p_last_upd_yyyymmddhh24miss=>'20210301103321'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(191032988788291889)
,p_plug_name=>'About this Page'
,p_region_template_options=>'#DEFAULT#:t-Alert--colorBG:t-Alert--horizontal:t-Alert--noIcon:t-Alert--info:t-Alert--accessibleHeading'
,p_plug_template=>wwv_flow_api.id(3692215547940414744)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>'<p>Starting with Application Express 18.1, components like reports, charts or calendards provide native support for Web Services. The APEX_EXEC package PL/SQL package allows to work with a REST service on a higher level, without having the need to fe'
||'tch and parse JSON data manually. So it''s recommended to use these features instead of manual low-level coding with APEX_WEB_SERVICE. Use manual coding only when the native functionality does not meet your requirements.</p>'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(2580439857816854837)
,p_plug_name=>'&APP_NAME.'
,p_icon_css_classes=>'app-sample-restful-services'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(3692223428159414758)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_source=>'Access and use external REST services in your Applications.'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(2632766773194215372)
,p_plug_name=>'Network Privileges required'
,p_region_template_options=>'#DEFAULT#:t-Alert--colorBG:t-Alert--horizontal:t-Alert--noIcon:t-Alert--warning'
,p_plug_template=>wwv_flow_api.id(3692215547940414744)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>The Oracle Application Express Engine cannot connect to REST services over HTTP, because there is no <em>Network ACL</em> configured for the Application Express engine. In order to make this application work, configure a Network ACL enabling the A'
||'pplication Express Engine user <strong>&P10_APEX_OWNER.</strong> to connect to <strong>&SAMPLE_ENDPOINT_URL.</strong>. See <strong>Enabling Network Services in Oracle Database 11g or Later</strong> within <strong>Oracle Application Express Installati'
||'on Guide</strong> for more information. Having done that, log out and back into this application.</p>',
''))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'SAMPLE_SERVICE_AVAILABLE'
,p_plug_display_when_cond2=>'NO_ACL'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(2632766897710215373)
,p_plug_name=>'SSL Certificate Error'
,p_region_template_options=>'#DEFAULT#:t-Alert--colorBG:t-Alert--horizontal:t-Alert--noIcon:t-Alert--warning'
,p_plug_template=>wwv_flow_api.id(3692215547940414744)
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>The Oracle Application Express Engine can connect to the REST service endpoint, but cannot validate the server''s SSL certificate. Make sure that a wallet is configured for the Application Express instance. See <strong>Configuring Instance Settings'
||'</strong> - <strong>Configuring Wallet Information</strong> in the <strong>Application Express Administration Guide</strong> for more information.</p>',
'<p>If the example REST service is accessible under another URL, navigate to the <strong>Administration</strong> page in this application, change the <strong>REST Service URL</strong> for this application to work with and log out and back into the app'
||'lication.</p>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'SAMPLE_SERVICE_AVAILABLE'
,p_plug_display_when_cond2=>'NO_WALLET'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(2632766943823215374)
,p_plug_name=>'Example REST Service not available'
,p_region_template_options=>'#DEFAULT#:t-Alert--colorBG:t-Alert--horizontal:t-Alert--noIcon:t-Alert--warning'
,p_plug_template=>wwv_flow_api.id(3692215547940414744)
,p_plug_display_sequence=>80
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>The example REST service this application is working on, <strong>oracle.example.hr</strong>, is not configured correctly, has been created with an older Application Express version or does not exist. Please navigate to <strong>SQL Workshop &gt; RE'
||'STful Services</strong>. Make sure to use <strong>ORDS Based REST Services</strong>. If your schema is not yet registered with ORDS, register it and ensure that the <strong>Install Sample Service</strong> switch is set to <strong>Yes</strong>.  If th'
||'e schema is already registered with ORDS, click the <strong>Reset Sample Service</strong> button to re-create the example REST service. Check the following URL in your browser, whether it returns JSON data <strong>{"version": "21.1"}</strong>. Then l'
||'og out and back into this application.</p>',
'<p><a href="&P10_REST_VERSION_URL." target="_blank">&P10_REST_VERSION_URL.</a> </p>',
'<p>If the example REST service is accessible under another URL, navigate to the <strong>Administration</strong> page and change the <strong>REST Service URL</strong> to point to your example REST service.</p>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>'instr(:SAMPLE_SERVICE_AVAILABLE, ''HTTP'') >0 or :SAMPLE_SERVICE_AVAILABLE = ''WRONG_SERVICE'''
,p_plug_display_when_cond2=>'PLSQL'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(2632768029430215385)
,p_plug_name=>'REST service not reachable'
,p_region_template_options=>'#DEFAULT#:t-Alert--colorBG:t-Alert--horizontal:t-Alert--noIcon:t-Alert--warning'
,p_plug_template=>wwv_flow_api.id(3692215547940414744)
,p_plug_display_sequence=>70
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>The Oracle Application Express Engine cannot connect to the REST service because the network connection to "<strong>&SAMPLE_ENDPOINT_URL.</strong>" fails. If your database is behind a firewall, make sure to set the proxy server correctly in <stron'
||'g>Shared Components &gt; Application Definition Attributes</strong>.</p>',
'<p>If the example REST service is accessible under another URL, navigate to the <strong>Administration</strong> page and change the <strong>REST Service URL</strong> to point to your example REST service.</p>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'SAMPLE_SERVICE_AVAILABLE'
,p_plug_display_when_cond2=>'NO_NETWORK'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(2661922527615399175)
,p_plug_name=>'Enable Network ACL on Oracle12c'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(3692227943213414771)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>To enable all network conections for the APEX Engine, execute the following while connected as a user with DBA privileges (SYS):</p>',
'<pre>',
'begin',
'    dbms_network_acl_admin.APPEND_HOST_ACE(',
'        host => ''*'',',
'        ace  => xs$ace_type(',
'                    privilege_list => xs$name_list(''connect''),',
'                        principal_name => ''&P10_APEX_OWNER.'',',
'                        principal_type => xs_acl.ptype_db',
'                )',
'    );',
'end;',
'</pre>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>':SAMPLE_SERVICE_AVAILABLE = ''NO_ACL'' and sys.dbms_db_version.ver_le_11_2 = false'
,p_plug_display_when_cond2=>'PLSQL'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(2661922633538399176)
,p_plug_name=>'Enable Network ACL on Oracle11g'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(3692227943213414771)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>To enable all network conections for the APEX Engine, execute the following while connected as a user with DBA privileges (SYS):</p>',
'<pre>',
'declare',
'    acl_path  varchar2(4000);',
'begin',
'    select acl ',
'      into acl_path ',
'      from dba_network_acls',
'     where host = ''*'' ',
'       and lower_port is null ',
'       and upper_port is null;',
'',
'    if dbms_network_acl_admin.check_privilege( acl_path, ''&P10_APEX_OWNER.'', ''connect'' ) is null then',
'        dbms_network_acl_admin.add_privilege( acl_path,  ''&P10_APEX_OWNER.'', true, ''connect'' );',
'    end if;',
'',
'exception',
'    when no_data_found then',
'        dbms_network_acl_admin.create_acl(',
'            ''power_users.xml'',',
'            ''acl that lets power users to connect to everywhere'',',
'            ''&P10_APEX_OWNER.'',',
'            true, ',
'            ''connect'' );',
'        dbms_network_acl_admin.assign_acl( ''power_users.xml'', ''*'' );',
'end;',
'</pre>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>':SAMPLE_SERVICE_AVAILABLE = ''NO_ACL'' and sys.dbms_db_version.ver_le_11_2 = true'
,p_plug_display_when_cond2=>'PLSQL'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(4453341645793126293)
,p_plug_name=>'REST Service - Examples'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader:t-Region--noUI:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:u-colors:t-Cards--featured force-fa-lg:t-Cards--displayIcons:t-Cards--4cols:t-Cards--animColorFill'
,p_plug_template=>wwv_flow_api.id(3692227943213414771)
,p_plug_display_sequence=>90
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_list_id=>wwv_flow_api.id(3236037952643749779)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(3692242677570414820)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'SAMPLE_SERVICE_AVAILABLE'
,p_plug_display_when_cond2=>'OK'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(4453341763610126294)
,p_plug_name=>'About this Page'
,p_region_template_options=>'#DEFAULT#:margin-bottom-md'
,p_plug_template=>wwv_flow_api.id(3692217304064414747)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'This application showcases how to access external REST services from Oracle Application Express pages using manual PL/SQL programming and the <strong>APEX_WEB_SERVICE</strong> package. The pages work on the sample RESTful Service, <strong>oracle.exam'
||'ple.hr</strong>, which can be created in <strong>SQL Workshop > RESTful Services > Reset Sample Service</strong>.',
'</p>',
''))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(823723484349222878)
,p_name=>'P10_APEX_OWNER'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(2632766773194215372)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(823724486372222885)
,p_name=>'P10_REST_VERSION_URL'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(2632766943823215374)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(823725586337222893)
,p_computation_sequence=>10
,p_computation_item=>'P10_APEX_OWNER'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'FUNCTION_BODY'
,p_computation_language=>'PLSQL'
,p_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_owner varchar2(128);',
'begin',
'    begin',
'        select table_owner ',
'          into l_owner',
'          from all_synonyms',
'         where synonym_name = ''F'' ',
'           and owner        = ''PUBLIC''',
'           and rownum       = 1;',
'    exception ',
'        when others then ',
'            l_owner := ''{APEX Owner}'';',
'    end;',
'    return l_owner;',
'end;'))
,p_compute_when=>'SAMPLE_SERVICE_AVAILABLE'
,p_compute_when_text=>'NO_ACL'
,p_compute_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(823725926229222893)
,p_computation_sequence=>20
,p_computation_item=>'P10_REST_VERSION_URL'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'EXPRESSION'
,p_computation_language=>'PLSQL'
,p_computation=>'replace( :SAMPLE_ENDPOINT_URL, ''/employees'', ''/version'' )'
);
wwv_flow_api.component_end;
end;
/
