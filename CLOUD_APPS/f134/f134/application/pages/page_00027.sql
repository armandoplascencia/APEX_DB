prompt --application/pages/page_00027
begin
--   Manifest
--     PAGE: 00027
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
 p_id=>27
,p_user_interface_id=>wwv_flow_api.id(5783577205373975152)
,p_name=>'&APPLICATION_TITLE. Administration'
,p_alias=>'SETTINGS'
,p_step_title=>'&APPLICATION_TITLE. Administration'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(5956243783292594674)
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
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
'  overflow: hidden;',
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
'  line-height: 20px;',
'  max-width: 70%;',
'  padding: 6px 0;',
'}',
'.acl-Info-userLink:hover .acl-Info-userType {',
'  color: #FFF;',
'}',
'.acl-Info-userCount {',
'  display: block;',
'  overflow: hidden;',
'  float: right;',
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
'}',
'body ul.largeLinkList li a {',
'padding-right: 48px;}',
'',
'body .end-user-admin ul.largeLinkList li a {',
'padding-right: 120px;}'))
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(7306165779537991444)
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
,p_last_upd_yyyymmddhh24miss=>'20190904144308'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(5362533666774680357)
,p_plug_name=>'Activity Reports'
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h3:t-ContentBlock--lightBG'
,p_component_template_options=>'#DEFAULT#:u-colors'
,p_plug_template=>wwv_flow_api.id(1228827961558575087)
,p_plug_display_sequence=>150
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_point=>'BODY'
,p_list_id=>wwv_flow_api.id(9028017725561683466)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(6781130957503890839)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_required_role=>wwv_flow_api.id(7306165779537991444)
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(5401653304160238243)
,p_plug_name=>'Management'
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h3:t-ContentBlock--lightBG'
,p_component_template_options=>'#DEFAULT#:u-colors'
,p_plug_template=>wwv_flow_api.id(1228827961558575087)
,p_plug_display_sequence=>120
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_point=>'BODY'
,p_list_id=>wwv_flow_api.id(5401652688666238240)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(6781130957503890839)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(5889955079557801134)
,p_plug_name=>'Confirm Enabling Access Control'
,p_region_name=>'confirmEnableACL'
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(6781114406166890801)
,p_plug_display_sequence=>70
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
 p_id=>wwv_flow_api.id(5994304506869742781)
,p_plug_name=>'Code Tables'
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h3:t-ContentBlock--lightBG'
,p_component_template_options=>'#DEFAULT#:u-colors'
,p_plug_template=>wwv_flow_api.id(1228827961558575087)
,p_plug_display_sequence=>110
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_point=>'BODY'
,p_list_id=>wwv_flow_api.id(5362414377815217862)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(6781130957503890839)
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_required_role=>wwv_flow_api.id(7306165779537991444)
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(6169891682625081397)
,p_plug_name=>'Access Control'
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h3:t-ContentBlock--lightBG'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1228827961558575087)
,p_plug_display_sequence=>130
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_required_role=>wwv_flow_api.id(7306165779537991444)
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(525989246367977597)
,p_name=>'User Counts'
,p_parent_plug_id=>wwv_flow_api.id(6169891682625081397)
,p_template=>wwv_flow_api.id(6781115417665890803)
,p_display_sequence=>40
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader:t-Region--stacked:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-BadgeList--large:t-BadgeList--fixed:t-BadgeList--circular'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select sum(case when access_level_id = 1 then 1 else 0 end) reader_count,',
'    sum(case when access_level_id = 2 then 1 else 0 end) contributor_count,',
'    sum(case when access_level_id = 3 then 1 else 0 end) admin_count',
'from eba_proj_status_users',
'order by 1'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(6781119623765890814)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(525989356896977598)
,p_query_column_id=>1
,p_column_alias=>'READER_COUNT'
,p_column_display_sequence=>1
,p_column_heading=>'Readers'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:89:&SESSION.::&DEBUG.:RP,89,RIR:IR_ACCESS_LEVEL_ID:Reader'
,p_column_linktext=>'#READER_COUNT#'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(525989441586977599)
,p_query_column_id=>2
,p_column_alias=>'CONTRIBUTOR_COUNT'
,p_column_display_sequence=>2
,p_column_heading=>'Contributors'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:89:&SESSION.::&DEBUG.:RP,89,RIR:IR_ACCESS_LEVEL_ID:Contributor'
,p_column_linktext=>'#CONTRIBUTOR_COUNT#'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(525989504013977600)
,p_query_column_id=>3
,p_column_alias=>'ADMIN_COUNT'
,p_column_display_sequence=>3
,p_column_heading=>'Administrators'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:89:&SESSION.::&DEBUG.:RP,89,RIR:IR_ACCESS_LEVEL_ID:Administrator'
,p_column_linktext=>'#ADMIN_COUNT#'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(525989614270977601)
,p_plug_name=>'ACL Info'
,p_parent_plug_id=>wwv_flow_api.id(6169891682625081397)
,p_region_template_options=>'#DEFAULT#:t-Alert--colorBG:t-Alert--horizontal:t-Alert--noIcon:t-Alert--warning:t-Alert--accessibleHeading:margin-top-sm:margin-bottom-sm:margin-left-sm:margin-right-sm'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(6781102788551890771)
,p_plug_display_sequence=>30
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_acl_enabled varchar2(45);',
'    l_acl_scope   varchar2(45);',
'begin',
'    l_acl_enabled := eba_proj_fw.get_preference_value(''ACCESS_CONTROL_ENABLED'');',
'    l_acl_scope   := eba_proj_fw.get_preference_value(''ACCESS_CONTROL_SCOPE'');',
'',
'    if l_acl_enabled = ''N'' then',
'        sys.htp.p(apex_lang.message(''ACL_DISABLED''));',
'    else',
'        case l_acl_scope',
'            when ''Preference does not exist'' then sys.htp.p(''Access Control''''s "Treat authenticated users not in ACL as" is not defined'');',
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
 p_id=>wwv_flow_api.id(6753363655544330583)
,p_plug_name=>'ACL Status'
,p_parent_plug_id=>wwv_flow_api.id(6169891682625081397)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(6781104626075890777)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select sum(case when access_level_id = 1 then 1 else 0 end) reader_count,',
'    sum(case when access_level_id = 2 then 1 else 0 end) contributor_count,',
'    sum(case when access_level_id = 3 then 1 else 0 end) admin_count',
'from eba_proj_status_users'))
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.ACL_STATUS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_required_role=>wwv_flow_api.id(7306165779537991444)
,p_plug_display_condition_type=>'NEVER'
,p_attribute_01=>'91'
,p_attribute_02=>'89'
,p_attribute_03=>'ADMIN_COUNT'
,p_attribute_04=>'CONTRIBUTOR_COUNT'
,p_attribute_05=>'READER_COUNT'
,p_attribute_06=>'eba_proj_fw.get_preference_value(''ACCESS_CONTROL_SCOPE'')'
,p_attribute_07=>'eba_proj_fw.get_preference_value(''ACCESS_CONTROL_ENABLED'')'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(7868323796271152427)
,p_plug_name=>'Access Control'
,p_parent_plug_id=>wwv_flow_api.id(6169891682625081397)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:u-colors'
,p_plug_template=>wwv_flow_api.id(6781104626075890777)
,p_plug_display_sequence=>50
,p_plug_display_point=>'BODY'
,p_list_id=>wwv_flow_api.id(7868322106529145854)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(6781130957503890839)
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_required_role=>wwv_flow_api.id(7306165779537991444)
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(6253626606199486526)
,p_plug_name=>'Hidden Items'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(6781104626075890777)
,p_plug_display_sequence=>130
,p_plug_display_point=>'AFTER_HEADER'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(6753363714895330584)
,p_plug_name=>'Authentication and Authorization'
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h3:t-ContentBlock--lightBG'
,p_plug_template=>wwv_flow_api.id(1228827961558575087)
,p_plug_display_sequence=>140
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_point=>'BODY'
,p_plug_source_type=>'PLUGIN_COM.ORACLE.AUTH_ADMINISTRATION'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_required_role=>wwv_flow_api.id(7306165779537991444)
,p_attribute_01=>'96'
,p_attribute_02=>'Public Pages'
,p_attribute_03=>'Login Required Pages'
,p_attribute_04=>'Authorization Protected'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(9022135442559534173)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(6781117976757890807)
,p_plug_display_sequence=>110
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(8972392840601050532)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(6781135716305890867)
,p_plug_display_condition_type=>'NEVER'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(9022141037927571610)
,p_plug_name=>'Configuration'
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h3:t-ContentBlock--lightBG'
,p_component_template_options=>'#DEFAULT#:u-colors'
,p_plug_template=>wwv_flow_api.id(1228827961558575087)
,p_plug_display_sequence=>100
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_point=>'BODY'
,p_list_id=>wwv_flow_api.id(5362401726945831772)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(6781130957503890839)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_required_role=>wwv_flow_api.id(7306165779537991444)
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(11932376156259560476)
,p_plug_name=>'Email'
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h3:t-ContentBlock--lightBG'
,p_component_template_options=>'#DEFAULT#:u-colors'
,p_plug_template=>wwv_flow_api.id(1228827961558575087)
,p_plug_display_sequence=>160
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_point=>'BODY'
,p_list_id=>wwv_flow_api.id(11932395367027478681)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(6781130957503890839)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_required_role=>wwv_flow_api.id(7306165779537991444)
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(5889956497050844069)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(5889955079557801134)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(6781135529450890864)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'javascript:closeModal();'
,p_button_execute_validations=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(5889957086577860006)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(5889955079557801134)
,p_button_name=>'ENABLE_ACCESS_CONTROL'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(6781135529450890864)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Enable Access Control'
,p_button_position=>'REGION_TEMPLATE_CREATE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6253627095018496396)
,p_name=>'P27_NUM_FLEX_FIELDS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(6253626606199486526)
,p_use_cache_before_default=>'NO'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select count(*)',
'from eba_proj_flex_registry',
'where assigned_yn = ''Y''',
'    and active_yn = ''Y'''))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(7904167294163731916)
,p_computation_sequence=>10
,p_computation_item=>'LAST_VIEW'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'27'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(7868351599837285867)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'ENABLE_ACCESS_CONTROL'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-- Set AC flag',
'eba_proj_fw.set_preference_value(''ACCESS_CONTROL_ENABLED'',''Y'');',
'',
'-- Seed user table with current user as an administrator or set the current user as administrator',
'declare',
'   l_count number;',
'begin',
'    select count(*) ',
'       into l_count ',
'       from eba_proj_status_users',
'       where username = :APP_USER;',
'    if l_count = 0 then',
'        insert into eba_proj_status_users(username, access_level_id) values (:APP_USER, 3);   ',
'    else',
'        update eba_proj_status_users',
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
,p_security_scheme=>wwv_flow_api.id(7306165779537991444)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(6169898111386241080)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'set counts'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'for c1 in (select count(*) c from EBA_PROJ_COLOR_CODES) loop :CNT_01 := c1.c; end loop;',
'for c1 in (select count(*) c from EBA_PROJ_STATUS_CODES) loop :CNT_02 := c1.c; end loop;',
'for c1 in (select count(*) c from EBA_PROJ_STATUS_CATS) loop :CNT_03 := c1.c; end loop;',
':CNT_04 := null;',
'for c1 in (select count(*) c from eba_proj_errors) loop :CNT_05 := c1.c; end loop;',
'',
':CNT_06 := null;',
'for c1 in (select count(*) c from EBA_PROJ_STATUS_NOTIFICATIONS) loop :CNT_07 := c1.c; end loop;',
'for c1 in (select count(*) c from apex_application_build_options bo where application_id = :APP_ID) loop :CNT_08 := c1.c; end loop;',
'',
':TZ := ''US/Pacific'';',
'for c1 in (',
'select timezone_preference ',
'from EBA_PROJ_TZ_PREF ',
'where username = :APP_USER) loop',
':TZ := c1.timezone_preference;',
'end loop;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_api.component_end;
end;
/
