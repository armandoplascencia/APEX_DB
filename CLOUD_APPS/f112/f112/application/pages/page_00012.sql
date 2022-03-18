prompt --application/pages/page_00012
begin
--   Manifest
--     PAGE: 00012
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
 p_id=>12
,p_user_interface_id=>wwv_flow_api.id(14644135011863537602)
,p_name=>'Administration'
,p_alias=>'SETTINGS'
,p_step_title=>'Administration'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(14820268321661277386)
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'body ul.largeLinkList li a { padding-right: 48px; }',
'',
'.acl-Info {',
'  display: block;',
'  overflow: hidden;',
'}',
'.acl-Info-statusBox,',
'.acl-Info-usersBox {',
'  display: block;',
'  float: left;',
'  width: 50%;',
'}',
'.acl-Info-statusBox {',
'  text-align: center;',
'}',
'.acl-Info-heading {',
'  display: block;',
'  font-size: 16px;',
'  margin: 16px 16px 8px 16px;',
'  font-weight: bold;',
'  color: #404040;',
'}',
'.acl-Info-heading span {',
'  color: #707070;',
'  font-weight: normal;',
'}',
'.acl-Info-status {',
'  display: block;',
'  width: 50%;',
'  margin: 0 auto 8px auto;',
'  padding: 12px 0;',
'  border: 1px solid #D0D0D0;',
'  border-radius: 2px;',
'  font-size: 20px;',
'  line-height: 20px;',
'  color: #404040;',
'  font-weight: bold;',
'  background-color: #F0F0F0;',
'}',
'.authScheme .acl-Info-status {',
'  font-size: 16px;',
'  width: 70%',
'}',
'.acl-Info-status.is-enabled {',
'  background-color: #40C230;',
'  border-color: #37A62A;',
'  color: #FFF;',
'  text-shadow: 0 -1px 0 rgba(0,0,0,.25);',
'}',
'.acl-Info-status.is-disabled {',
'  background-color: #DE3038;',
'  border-color: #A0242A;',
'  color: #FFF;',
'  text-shadow: 0 -1px 0 rgba(0,0,0,.25);',
'}',
'.acl-Info-changeStatusLink {',
'  display: inline-block;',
'  padding: 8px 0;',
'  color: #404040;',
'  text-decoration: none;',
'  font-size: 11px;',
'  background-color: #F0F0F0;',
'  border: 1px solid #D0D0D0;',
'  margin: 0 16px 16px 16px;',
'  border-radius: 2px;',
'  width: 50%;',
'}',
'.acl-Info-changeStatusLink:hover {',
'  background-color: #fff;',
'  border-color: #C0C0C0;',
'  box-shadow: 0 1px 1px rgba(0,0,0,.15);',
'}',
'.acl-Info-changeStatusLink:active {',
'  background-color: #E0E0E0;',
'  border-color: #C0C0C0;',
'  box-shadow: 0 1px 1px rgba(0,0,0,.25) inset;',
'}',
'.acl-Info-users {',
'  margin: 0;',
'  list-style: none;',
'  padding: 0;',
'  margin: 0;',
'  border-left: 1px solid #F0F0F0;',
'}',
'.acl-Info-user {',
'  border-top: 1px solid #F0F0F0;',
'}',
'.acl-Info-userLink {',
'  text-decoration: none;',
'  display: block;',
'  padding: 8px;',
'}',
'.acl-Info-userLink:hover {',
'  background-color: #689AD8;',
'}',
'.acl-Info-user:first-child {',
'  border-top: none;',
'}',
'.acl-Info-userType,',
'.acl-Info-userCount {',
'  display: block;',
'  font-size: 14px;',
'}',
'.acl-Info-userType {',
'  font-weight: bold;',
'  float: left;',
'  margin-right: 8px;',
'  line-height: 32px;',
'}',
'.acl-Info-userLink:hover .acl-Info-userType {',
'  color: #FFF;',
'}',
'.acl-Info-userCount {',
'  display: block;',
'  overflow: hidden;',
'  text-align: right;',
'}',
'.acl-Info-userCount span {',
'  display: inline-block;',
'  padding: 8px;',
'  background-color: #F8F8F8;',
'  color: #404040;',
'  line-height: 16px;',
'  min-width: 36px;',
'  text-decoration: none;',
'  text-align: right;',
'  border-radius: 2px;',
'}',
'.acl-Info-desc {',
'    padding: 16px;',
'    border-top: 1px solid #E0E0E0;',
'    border-bottom: 1px solid #E0E0E0;',
'    background: #F8F8F8;',
'    font-size: 14px;',
'    clear: both;',
'}',
'.acl-Info-desc>p:last-child {',
'  margin-bottom: 0;',
'}'))
,p_step_template=>wwv_flow_api.id(14959310647991679083)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(15775842108167638827)
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>This page allows users with application administrator privileges to perform the following actions:',
'    <ul>',
'        <li>Enable or disable access control</li>',
'        <li>Add, edit, and/or remove users</li>',
'        <li>Change the application''s username format (email address or non-email address)</li>',
'        <li>Monitor application errors</li>',
'        <li>Manage the application''s appearance</li>',
'        <li>Add, edit, and/or remove application notifications</li>',
'        <li>Rename the application</li>',
'        <li>Manage all other application settings and preferences</li>',
'    </ul>',
'</p>'))
,p_last_updated_by=>'ALLAN'
,p_last_upd_yyyymmddhh24miss=>'20210301102538'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(14750567296006318904)
,p_plug_name=>'Confirm Enabling Access Control'
,p_region_name=>'confirmEnableACL'
,p_region_template_options=>'#DEFAULT#:js-draggable:js-modal:js-resizable:js-dialog-size600x400'
,p_plug_template=>wwv_flow_api.id(14959349053779679136)
,p_plug_display_sequence=>50
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_point=>'REGION_POSITION_04'
,p_plug_source=>'<p>Enabling Access Control allows access to the application and its features to be controlled by an Access Control List (ACL).  Until access control is enabled all authenticated users are administrators.</p>'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(14826644292104106722)
,p_plug_name=>'Application Authentication and Authorization'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding'
,p_plug_template=>wwv_flow_api.id(14959353760448679146)
,p_plug_display_sequence=>40
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_point=>'BODY'
,p_plug_source_type=>'PLUGIN_COM.ORACLE.AUTH_ADMINISTRATION'
,p_plug_required_role=>wwv_flow_api.id(15775842108167638827)
,p_attribute_01=>'26'
,p_attribute_02=>'Public Pages'
,p_attribute_03=>'Login Required Pages'
,p_attribute_04=>'Authorization Protected'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(15030944501636692366)
,p_plug_name=>'Access Control Settings'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding'
,p_plug_template=>wwv_flow_api.id(14959353760448679146)
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_required_role=>wwv_flow_api.id(15775842108167638827)
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(438500434277953242)
,p_name=>'User Counts'
,p_parent_plug_id=>wwv_flow_api.id(15030944501636692366)
,p_template=>wwv_flow_api.id(14959353760448679146)
,p_display_sequence=>55
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--stacked:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-BadgeList--large:t-BadgeList--fixed:t-BadgeList--circular'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select sum(case when access_level_id = 1 then 1 else 0 end) reader_count,',
'    sum(case when access_level_id = 2 then 1 else 0 end) contributor_count,',
'    sum(case when access_level_id = 3 then 1 else 0 end) admin_count',
'from eba_cust_users',
'order by 1'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(14959357815075679153)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(438500492403953243)
,p_query_column_id=>1
,p_column_alias=>'READER_COUNT'
,p_column_display_sequence=>1
,p_column_heading=>'Readers'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:57:&SESSION.::&DEBUG.:RP,57,RIR:IR_ACCESS_LEVEL_ID:Reader'
,p_column_linktext=>'#READER_COUNT#'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(438500646648953244)
,p_query_column_id=>2
,p_column_alias=>'CONTRIBUTOR_COUNT'
,p_column_display_sequence=>2
,p_column_heading=>'Contributors'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:57:&SESSION.::&DEBUG.:RP,57,RIR:IR_ACCESS_LEVEL_ID:Contributor'
,p_column_linktext=>'#CONTRIBUTOR_COUNT#'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(438500716213953245)
,p_query_column_id=>3
,p_column_alias=>'ADMIN_COUNT'
,p_column_display_sequence=>3
,p_column_heading=>'Administrators'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:57:&SESSION.::&DEBUG.:RP,57,RIR:IR_ACCESS_LEVEL_ID:Administrator'
,p_column_linktext=>'#ADMIN_COUNT#'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(438500867012953246)
,p_plug_name=>'ACL Info'
,p_parent_plug_id=>wwv_flow_api.id(15030944501636692366)
,p_region_template_options=>'#DEFAULT#:t-Alert--colorBG:t-Alert--horizontal:t-Alert--noIcon:t-Alert--warning:t-Alert--accessibleHeading:margin-top-sm:margin-bottom-sm:margin-left-sm:margin-right-sm'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(14959338334977679118)
,p_plug_display_sequence=>45
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_acl_enabled varchar2(45);',
'    l_acl_scope   varchar2(45);',
'begin',
'    l_acl_enabled := eba_cust_fw.get_preference_value(''ACCESS_CONTROL_ENABLED'');',
'    l_acl_scope   := eba_cust_fw.get_preference_value(''ACCESS_CONTROL_SCOPE'');',
'',
'    if l_acl_enabled = ''N'' then',
'        sys.htp.p(apex_lang.message(''ACL_DISABLED''));',
'    else',
'        case l_acl_scope',
'            when ''ACL_ONLY'' then sys.htp.p(apex_lang.message(''ACL_ENABLED''));',
'            when ''PUBLIC_CONTRIBUTE'' then sys.htp.p(apex_lang.message(''ACL_PUBLIC_CONTRIBUTE''));',
'            when ''PUBLIC_READONLY'' then sys.htp.p(apex_lang.message(''ACL_PUBLIC_READONLY''));',
'        end case;',
'    end if;',
'end;'))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(14826644178050106721)
,p_plug_name=>'ACL Status'
,p_parent_plug_id=>wwv_flow_api.id(15030944501636692366)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(14959340065054679123)
,p_plug_display_sequence=>35
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select sum(case when access_level_id = 1 then 1 else 0 end) reader_count,',
'    sum(case when access_level_id = 2 then 1 else 0 end) contributor_count,',
'    sum(case when access_level_id = 3 then 1 else 0 end) admin_count',
'from eba_cust_users'))
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.ACL_STATUS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_required_role=>wwv_flow_api.id(15775842108167638827)
,p_plug_display_condition_type=>'NEVER'
,p_attribute_01=>'35'
,p_attribute_02=>'57'
,p_attribute_03=>'ADMIN_COUNT'
,p_attribute_04=>'CONTRIBUTOR_COUNT'
,p_attribute_05=>'READER_COUNT'
,p_attribute_06=>'eba_cust_fw.get_preference_value(''ACCESS_CONTROL_SCOPE'')'
,p_attribute_07=>'eba_cust_fw.get_preference_value(''ACCESS_CONTROL_ENABLED'')'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(17907034130065809377)
,p_plug_name=>'Access Control'
,p_parent_plug_id=>wwv_flow_api.id(15030944501636692366)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:u-colors'
,p_plug_template=>wwv_flow_api.id(14959340065054679123)
,p_plug_display_sequence=>65
,p_plug_display_point=>'BODY'
,p_list_id=>wwv_flow_api.id(17907031524525807811)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(14959366860727679172)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_required_role=>wwv_flow_api.id(15775842108167638827)
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(15944201960989699357)
,p_plug_name=>'Code Tables'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#:u-colors'
,p_plug_template=>wwv_flow_api.id(14959353760448679146)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_point=>'BODY'
,p_list_id=>wwv_flow_api.id(15944195829006698237)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(14959366860727679172)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(16446886813396785502)
,p_plug_name=>'Management'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#:u-colors'
,p_plug_template=>wwv_flow_api.id(14959353760448679146)
,p_plug_display_sequence=>50
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_point=>'BODY'
,p_list_id=>wwv_flow_api.id(16446526512656756838)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(14959366860727679172)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(17901467169769269230)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(14959356293935679148)
,p_plug_display_sequence=>80
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(17940232663340213707)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(14959371794034679193)
,p_translate_title=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(17901495966106739201)
,p_plug_name=>'Administration'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:u-colors'
,p_plug_template=>wwv_flow_api.id(14959353760448679146)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_list_id=>wwv_flow_api.id(17901468580298277107)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(14959366860727679172)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(18104563671030643497)
,p_plug_name=>'Logging'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#:u-colors'
,p_plug_template=>wwv_flow_api.id(14959353760448679146)
,p_plug_display_sequence=>60
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_point=>'BODY'
,p_list_id=>wwv_flow_api.id(18835743370298469701)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(14959366860727679172)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(14750567508819322600)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(14750567296006318904)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(14959371564035679192)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'javascript:closeModal();'
,p_button_execute_validations=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(14750567719901325873)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(14750567296006318904)
,p_button_name=>'ENABLE_ACCESS_CONTROL'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(14959371564035679192)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Enable Access Control'
,p_button_position=>'REGION_TEMPLATE_CREATE'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(17911261916083090131)
,p_computation_sequence=>10
,p_computation_item=>'LAST_VIEW'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'12'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(16076754494875915500)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'ENABLE_ACCESS_CONTROL'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-- Set AC flag',
'eba_cust_fw.set_preference_value(''ACCESS_CONTROL_ENABLED'',''Y'');',
'',
'-- Seed user table with current user as an administrator or set the current user as administrator',
'declare',
'   l_count number;',
'begin',
'    select count(*) ',
'       into l_count ',
'       from eba_cust_users',
'       where username = :APP_USER;',
'    if l_count = 0 then',
'        insert into eba_cust_users(username, access_level_id) values (:APP_USER, 3);   ',
'    else',
'        update eba_cust_users',
'            set access_level_id = 3',
'            where username = :APP_USER;',
'    end if;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Error'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'ENABLE_ACCESS_CONTROL'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_process_success_message=>'Access Control enabled and the current user ''&APP_USER.'' has been set to be an Administrator. '
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(15055362110104279429)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'set counts and tz'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'   c integer;',
'begin',
'    select count(*) into c from EBA_CUST_CATEGORIES;',
'    :CNT_02 := c;',
'    select count(*) into c from EBA_CUST_STATUS;',
'    :CNT_03 := c;',
'    select count(*) into c from EBA_CUST_CONTACT_TYPES;',
'    :CNT_04 := c;',
'    select count(*) into c from EBA_CUST_PRODUCTS;',
'    :CNT_05 := c;',
'    select count(*) into c from EBA_CUST_GEOGRAPHIES;',
'    :CNT_06 := c;',
'    select count(*) into c from apex_application_build_options bo',
'    where application_id = :APP_ID; ',
'    :CNT_07 := c;',
'    select count(*) into c from eba_cust_errors;',
'    :CNT_08 := c;',
'',
'    select count(*) into c from EBA_CUST_INDUSTRIES;',
'    :CNT_09 := c;',
'',
'    select count(*) into c from EBA_CUST_TYPE;',
'    :CNT_10 := c;',
'',
'    :TZ := ''US/Pacific'';',
'    for c1 in (',
'        select timezone_preference ',
'        from eba_cust_TZ_PREF ',
'        where userid = :APP_USER',
'    )',
'    loop',
'        :TZ := c1.timezone_preference;',
'    end loop;',
'end;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_api.component_end;
end;
/
