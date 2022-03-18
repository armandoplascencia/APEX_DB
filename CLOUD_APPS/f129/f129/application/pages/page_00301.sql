prompt --application/pages/page_00301
begin
--   Manifest
--     PAGE: 00301
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
 p_id=>301
,p_user_interface_id=>wwv_flow_api.id(3038757958926989645)
,p_name=>'REST Endpoint Status'
,p_alias=>'REST-ENDPOINTS-STATUS'
,p_step_title=>'REST Endpoint Status'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'ALLAN'
,p_last_upd_yyyymmddhh24miss=>'20210301103321'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(161297486612460221)
,p_name=>'REST Endpoint Test Results'
,p_template=>wwv_flow_api.id(3692227943213414771)
,p_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader:t-Region--noUI:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Cards--featured force-fa-lg:t-Cards--displayIcons:t-Cards--3cols:t-Cards--animColorFill'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select NAME as card_title,',
'       URL,',
'       LAST_STATUS,',
'       case ',
'           when last_status is null then ''fa-question''',
'           when last_status = ''OK'' then ''fa-check''',
'           else ''fa-exception''',
'       end as card_icon,',
'       case  ',
'           when last_status is null then ''u-color-29''',
'           when last_status = ''OK'' then ''u-color-35''',
'           else ''u-color-39'' ',
'       end as card_color,',
'       case  ',
'           when last_status=''OK'' then ''OK''',
'           when last_status=''ERROR_ACL'' then ''Network Access Control List (ACL)''',
'           when last_status=''ERROR_CERT'' then ''SSL Certificate error (Wallet)''',
'           when last_status=''ERROR_NETWORK'' then ''Networking issue (e.g. Proxy Server)''',
'           when last_status like ''ERROR_HTTP%'' then ''HTTP Error '' || substr( last_status, 12 )',
'           when last_status like ''ERROR_OTHER%'' then ''Other Error: '' || substr( last_status, 13 )',
'           else ''Other Error''',
'       end as card_text,',
'       url as card_subtext',
'  from EBA_RESTDEMO_SAMPLE_URLS',
' where name != ''ORDS EMP'''))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(3692234375073414791)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(162040173588854706)
,p_query_column_id=>1
,p_column_alias=>'CARD_TITLE'
,p_column_display_sequence=>3
,p_column_heading=>'Card title'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(162039625521854700)
,p_query_column_id=>2
,p_column_alias=>'URL'
,p_column_display_sequence=>1
,p_column_heading=>'Url'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(162039629390854701)
,p_query_column_id=>3
,p_column_alias=>'LAST_STATUS'
,p_column_display_sequence=>2
,p_column_heading=>'Last status'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(162040294734854707)
,p_query_column_id=>4
,p_column_alias=>'CARD_ICON'
,p_column_display_sequence=>4
,p_column_heading=>'Card icon'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(162040424296854708)
,p_query_column_id=>5
,p_column_alias=>'CARD_COLOR'
,p_column_display_sequence=>5
,p_column_heading=>'Card color'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(162040631736854711)
,p_query_column_id=>6
,p_column_alias=>'CARD_TEXT'
,p_column_display_sequence=>7
,p_column_heading=>'Card text'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(162040576632854710)
,p_query_column_id=>7
,p_column_alias=>'CARD_SUBTEXT'
,p_column_display_sequence=>6
,p_column_heading=>'Card subtext'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(162040758215854712)
,p_plug_name=>'Information'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(3692227943213414771)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>This page contains test results for the REST endpoint URLs used in this application. Test results are being stored in a local table. Click the <strong>Test Endpoints</strong> button to execute the test. Failure in accessing the endpoint URLs can h'
||'ave the following reasons.',
'</p>',
'<ul>',
'<li><strong>Missing Network Connectivity</strong><br>',
'    The database server has either no connection to the internet or is behind a firewall. Set a proxy server either at the',
'    application level (in Shared Components) or at the Application Express instance level.</li>',
'<li><strong>Certificate Validation Errors</strong></br>',
'    When the database cannot verify the server certificate of an HTTPS endpoint, the service cannot be accessed. In that case,',
'    the CA certificate must be added to the database wallet and the wallet must be configured in Application Express. See',
'    <a href="https://blogs.oracle.com/apex/apex-https-certificates-and-the-oracle-wallet" target="_blank">"APEX, HTTPS, certificates and the Oracle Wallet"</a> for more information.</li>',
'<li><strong>Network Access Control List</strong><br>',
'    The APEX Engine User (e.g. APEX_190100) is not allowed to perform outbound HTTP requests. A <em>PL/SQL Network ACL</em> must be',
'    configured in the database in order to allow requests the service endpoints.</li>',
'</ul>',
''))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(162062222818900160)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(3692230518481414776)
,p_plug_display_sequence=>1
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(3236043968975858584)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(3692251387321414861)
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(162039815353854702)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(162062222818900160)
,p_button_name=>'TEST'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(3692251275023414859)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Test Endpoints'
,p_button_position=>'REGION_TEMPLATE_NEXT'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(162039968743854704)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Test Endpoints'
,p_process_sql_clob=>'eba_restdemo_sample_pkg.test_all;'
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(162039815353854702)
,p_process_success_message=>'URL Endpoints tested. '
);
wwv_flow_api.component_end;
end;
/
