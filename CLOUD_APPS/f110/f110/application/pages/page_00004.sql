prompt --application/pages/page_00004
begin
--   Manifest
--     PAGE: 00004
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>110
,p_default_id_offset=>101599614921830918
,p_default_owner=>'MISO'
);
wwv_flow_api.create_page(
 p_id=>4
,p_user_interface_id=>wwv_flow_api.id(14434115216807266717)
,p_name=>'Administration'
,p_alias=>'SETTINGS'
,p_step_title=>'Administration'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(16485731932639691338)
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
'}',
'',
'/* Styles for Updated List */',
'body ul.largeLinkList li a span {',
'    margin: 8px;',
'    padding: 8px 16px;',
'    border-radius: 2px;',
'    background: #F8F8F8;',
'    font-size: 14px;',
'    color: #404040;',
'}',
'body ul.largeLinkList li a span:empty {',
'display: none;',
'}',
'body ul.largeLinkList li a:hover span {',
'    background: #F8F8F8;',
'    color: #404040;',
'}',
'body ul.largeLinkList li a span.green,',
'body ul.largeLinkList li a:hover span.green{',
'    background-color: #40C230;',
'    color: #FFF;',
'}',
'body ul.largeLinkList li a span.red,',
'body ul.largeLinkList li a:hover span.red{',
'    background-color: #DE3038;',
'    color: #FFF;',
'}',
'body ul.largeLinkList li a span.yellow,',
'body ul.largeLinkList li a:hover span.yellow{',
'    background-color: #FFCC1B;',
'    color: #404040;',
'}',
'',
'body ul.largeLinkList li a {',
'padding-right: 48px;}',
'',
'body .end-user-admin ul.largeLinkList li a {',
'padding-right: 120px;}'))
,p_step_template=>wwv_flow_api.id(14690156334092251112)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(250463977822234829)
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
,p_last_upd_yyyymmddhh24miss=>'20210518144103'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(250500975666234951)
,p_plug_name=>'Access Control'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(14690171167000251156)
,p_plug_display_sequence=>60
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_required_patch=>wwv_flow_api.id(250463028429234807)
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(250501774674234952)
,p_plug_name=>'ACL Information'
,p_parent_plug_id=>wwv_flow_api.id(250500975666234951)
,p_region_css_classes=>'margin-sm'
,p_region_template_options=>'#DEFAULT#:t-Alert--colorBG:t-Alert--horizontal:t-Alert--noIcon:t-Alert--warning:t-Alert--accessibleHeading'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(14690160537466251126)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_acl_enabled varchar2(45);',
'    l_acl_scope   varchar2(45);',
'begin',
'    l_acl_enabled := eba_qpoll_fw.get_preference_value(''ACCESS_CONTROL_ENABLED'');',
'    l_acl_scope   := eba_qpoll_fw.get_preference_value(''ACCESS_CONTROL_SCOPE'');',
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
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(250502125202234954)
,p_name=>'User Counts Report'
,p_parent_plug_id=>wwv_flow_api.id(250500975666234951)
,p_template=>wwv_flow_api.id(14690171167000251156)
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--stacked:t-Region--scrollBody:t-Region--noPadding'
,p_component_template_options=>'#DEFAULT#:t-AVPList--rightAligned'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select r.role_name, (select count(*) from apex_appl_acl_user_roles ur where r.role_id = ur.role_id) user_count, r.role_id',
'from  APEX_APPL_ACL_ROLES r',
'where r.application_id = :APP_ID',
'group by r.role_name, r.role_id',
'order by 2 desc, 1'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(14690180910121251181)
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_no_data_found=>'no data found'
,p_query_row_count_max=>500
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(250502881987234958)
,p_query_column_id=>1
,p_column_alias=>'ROLE_NAME'
,p_column_display_sequence=>1
,p_column_heading=>'Role Name'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(250503136445234966)
,p_query_column_id=>2
,p_column_alias=>'USER_COUNT'
,p_column_display_sequence=>2
,p_column_heading=>'User Count'
,p_column_format=>'999G999G999G999G999G999G990'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(250503595638234966)
,p_query_column_id=>3
,p_column_alias=>'ROLE_ID'
,p_column_display_sequence=>3
,p_column_heading=>'Role Id'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(250506623179234971)
,p_plug_name=>'Access Control Actions'
,p_parent_plug_id=>wwv_flow_api.id(250500975666234951)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:u-colors'
,p_plug_template=>wwv_flow_api.id(14690161967644251135)
,p_plug_display_sequence=>130
,p_plug_display_point=>'BODY'
,p_list_id=>wwv_flow_api.id(250499876302234949)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(14690186964826251194)
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(356230427503239827)
,p_plug_name=>'hidden items'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(14690161967644251135)
,p_plug_display_sequence=>100
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(14004421702438234720)
,p_plug_name=>'Email Administration'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:u-colors'
,p_plug_template=>wwv_flow_api.id(14690171167000251156)
,p_plug_display_sequence=>80
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_point=>'BODY'
,p_list_id=>wwv_flow_api.id(14004420498844224198)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(14690186964826251194)
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(14021592993300287043)
,p_plug_name=>'Administrative Reports'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:u-colors'
,p_plug_template=>wwv_flow_api.id(14690171167000251156)
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_point=>'BODY'
,p_list_id=>wwv_flow_api.id(17708556057701564219)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(14690186964826251194)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(14117389504574506159)
,p_plug_name=>'Email Address Not Set'
,p_region_template_options=>'#DEFAULT#:t-Alert--colorBG:t-Alert--defaultIcons:t-Alert--danger:t-Alert--horizontal'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(14690160537466251126)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'You have not defined the EMAIL FROM address.',
'',
'',
''))
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'FUNCTION_BODY'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare x varchar2(4000) := null;',
'begin',
'  x := trim(replace(eba_qpoll_fw.get_preference_value(''NOTIFICATION_EMAIL_FROM''),''N/A'',null));',
'  if x is null or instr(x,''@'') = 0  or instr(x,''.'') = 0 then ',
'     return true; ',
'  else ',
'     return false; ',
'  end if;',
'end;'))
,p_plug_display_when_cond2=>'PLSQL'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(14540705216698752393)
,p_plug_name=>'Confirm Enabling Access Control'
,p_region_name=>'confirmEnableACL'
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(14690170320946251154)
,p_plug_display_sequence=>40
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_point=>'REGION_POSITION_04'
,p_plug_source=>'<p>Enabling Access Control allows access to the application and its features to be controlled by an Access Control List (ACL).  Until access control is enabled all authenticated users are administrators.</p>'
,p_plug_query_row_template=>wwv_flow_api.id(20820200760907631181)
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>999
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(14942380269614853647)
,p_plug_name=>'Authorization and Authentication'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(14690171167000251156)
,p_plug_display_sequence=>70
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_point=>'BODY'
,p_plug_source_type=>'PLUGIN_COM.ORACLE.AUTH_ADMINISTRATION'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'7'
,p_attribute_02=>'Public Pages'
,p_attribute_03=>'Login Required Pages'
,p_attribute_04=>'Authorization Protected'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(16789117155747250917)
,p_plug_name=>'Administration'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-MediaList--showBadges:u-colors'
,p_plug_template=>wwv_flow_api.id(14690171167000251156)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_list_id=>wwv_flow_api.id(16789116666420250912)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(14690186964826251194)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(17708514755385179448)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--showBreadcrumb:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_plug_template=>wwv_flow_api.id(14690173773848251160)
,p_plug_display_sequence=>100
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(17689949455017337264)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(14690191633551251224)
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(14540705617999771641)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(14540705216698752393)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(14690191414518251222)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'javascript:closeModal();'
,p_button_execute_validations=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(14540705834968776523)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(14540705216698752393)
,p_button_name=>'ENABLE_ACCESS_CONTROL'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(14690191414518251222)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Enable Access Control'
,p_button_position=>'REGION_TEMPLATE_CREATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(250501322650234952)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(250500975666234951)
,p_button_name=>'ADD_USER'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(14690191013111251220)
,p_button_image_alt=>'Add'
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:10022:&SESSION.::&DEBUG.:RP,10022::'
,p_icon_css_classes=>'fa-user-plus'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(356230597743239828)
,p_name=>'P4_BUILD_OPTION_CNT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(356230427503239827)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(356230670306239829)
,p_name=>'P4_NOTIFICATION_CNT'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(356230427503239827)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(356230739102239830)
,p_name=>'P4_APP_LOG_CNT'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(356230427503239827)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(356230855684239831)
,p_name=>'P4_APP_USER_LOG_CNT'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(356230427503239827)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(356230982044239832)
,p_name=>'P4_APP_ERROR_LOG_CNT'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(356230427503239827)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(356231111592239833)
,p_name=>'P4_SELF_SRVC_REQ_CNT'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(356230427503239827)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(17708517558957205063)
,p_computation_sequence=>10
,p_computation_item=>'LAST_VIEW'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'4'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(250505809892234970)
,p_name=>'Refresh on Dialog Close'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(250501322650234952)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(250506279606234970)
,p_event_id=>wwv_flow_api.id(250505809892234970)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(250502125202234954)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(16485698329599245792)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'ENABLE_ACCESS_CONTROL'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-- Set AC flag',
'eba_qpoll_fw.set_preference_value(''ACCESS_CONTROL_ENABLED'',''Y'');',
'',
'-- Seed user table with current user as an administrator or set the current user as administrator',
'declare',
'   l_count number;',
'begin',
'    select count(*) ',
'      into l_count ',
'      from apex_appl_acl_users',
'     where application_id = :APP_ID',
'       and user_name_lc = lower(:APP_USER);',
'    if l_count = 0 then',
'       apex_acl.add_user_role(',
'          p_application_id => :APP_ID, ',
'          p_user_name      => :APP_USER, ',
'          p_role_static_id => ''ADMINISTRATOR'');  ',
'    else',
'       apex_acl.replace_user_roles (',
'          p_application_id  => :APP_ID,',
'          p_user_name       => :APP_USER,',
'          p_role_static_ids => wwv_flow_t_varchar2(''ADMINISTRATOR'') );',
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
 p_id=>wwv_flow_api.id(13961866878702689802)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'populate counts'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P4_BUILD_OPTION_CNT  := null;',
':P4_NOTIFICATION_CNT  := null;',
':P4_APP_LOG_CNT       := null;',
':P4_APP_USER_LOG_CNT  := null;',
':P4_APP_ERROR_LOG_CNT := null;',
':P4_SELF_SRVC_REQ_CNT := null;',
'',
'for c1 in (select count(*) c from apex_application_build_options',
'            where application_id = :APP_ID)',
'loop',
'  :P4_BUILD_OPTION_CNT := c1.c;',
'end loop;',
'',
'for c1 in (select count(*) c from EBA_QPOLL_NOTIFICATIONS)',
'loop',
'  :P4_NOTIFICATION_CNT := c1.c;',
'end loop;',
'',
'for c1 in (select count(*) c from eba_qpoll_application_log)',
'loop',
'  :P4_APP_LOG_CNT := c1.c;',
'end loop;',
'',
'for c1 in (select count(*) c from eba_qpoll_user_log)',
'loop',
'  :P4_APP_USER_LOG_CNT := c1.c;',
'end loop;',
'',
'for c1 in (select count(*) c from EBA_QPOLL_ERRORS)',
'loop',
'  :P4_APP_ERROR_LOG_CNT := c1.c;',
'end loop;',
'',
'for c1 in (select count(*) c from EBA_QPOLL_ACCESS_REQUESTS where status = ''pending'')',
'loop',
'  :P4_SELF_SRVC_REQ_CNT := c1.c;',
'end loop;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_api.component_end;
end;
/
