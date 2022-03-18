prompt --application/pages/page_00026
begin
--   Manifest
--     PAGE: 00026
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>126
,p_default_id_offset=>101651461840938715
,p_default_owner=>'MISO'
);
wwv_flow_api.create_page(
 p_id=>26
,p_user_interface_id=>wwv_flow_api.id(1222136671983413726)
,p_name=>'Administration'
,p_alias=>'SETTINGS'
,p_step_title=>'Administration'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_api.id(9022053313788358351)
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
''))
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(3336588467926114584)
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
,p_last_upd_yyyymmddhh24miss=>'20210301102340'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1328654359835106459)
,p_plug_name=>'Confirm Enabling Access Control'
,p_region_name=>'confirmEnableACL'
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>wwv_flow_api.id(1797852256544014324)
,p_plug_display_sequence=>70
,p_plug_display_point=>'REGION_POSITION_04'
,p_plug_source=>'<p>Enabling Access Control allows access to the application and its features to be controlled by an Access Control List (ACL).  Until access control is enabled all authenticated users are administrators.</p>'
,p_plug_query_row_template=>wwv_flow_api.id(7608140097351775231)
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
 p_id=>wwv_flow_api.id(1609043750537240635)
,p_plug_name=>'Access Control Settings'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(1797853323124014327)
,p_plug_display_sequence=>40
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_required_role=>wwv_flow_api.id(3336588467926114584)
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(210792476016073265)
,p_plug_name=>'ACL Info'
,p_parent_plug_id=>wwv_flow_api.id(1609043750537240635)
,p_region_template_options=>'#DEFAULT#:t-Alert--colorBG:t-Alert--horizontal:t-Alert--noIcon:t-Alert--warning:t-Alert--accessibleHeading:margin-top-sm:margin-bottom-sm:margin-left-sm:margin-right-sm'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1797840840350014304)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_acl_enabled varchar2(45);',
'    l_acl_scope   varchar2(45);',
'begin',
'    l_acl_enabled := eba_ca_fw.get_preference_value(''ACCESS_CONTROL_ENABLED'');',
'    l_acl_scope   := eba_ca_fw.get_preference_value(''ACCESS_CONTROL_SCOPE'');',
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
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(210792589148073266)
,p_name=>'User Counts'
,p_parent_plug_id=>wwv_flow_api.id(1609043750537240635)
,p_template=>wwv_flow_api.id(1797853323124014327)
,p_display_sequence=>30
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader:t-Region--stacked:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-BadgeList--large:t-BadgeList--fixed:t-BadgeList--circular'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select sum(case when access_level_id = 1 then 1 else 0 end) readers,',
'       sum(case when access_level_id = 2 then 1 else 0 end) contributors,',
'       sum(case when access_level_id = 3 then 1 else 0 end) administrators',
'from eba_ca_users',
'order by 1'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(1797857558279014337)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(210792715376073267)
,p_query_column_id=>1
,p_column_alias=>'READERS'
,p_column_display_sequence=>1
,p_column_heading=>'Readers'
,p_column_link=>'f?p=&APP_ID.:29:&SESSION.::&DEBUG.:RP,29,RIR:IR_ACCESS_LEVEL_ID:Reader'
,p_column_linktext=>'#READERS#'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(210792738122073268)
,p_query_column_id=>2
,p_column_alias=>'CONTRIBUTORS'
,p_column_display_sequence=>2
,p_column_heading=>'Contributors'
,p_column_link=>'f?p=&APP_ID.:29:&SESSION.::&DEBUG.:RP,29,RIR:IR_ACCESS_LEVEL_ID:Contributor'
,p_column_linktext=>'#CONTRIBUTORS#'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(210792896724073269)
,p_query_column_id=>3
,p_column_alias=>'ADMINISTRATORS'
,p_column_display_sequence=>3
,p_column_heading=>'Administrators'
,p_column_link=>'f?p=&APP_ID.:29:&SESSION.::&DEBUG.:RP,29,RIR:IR_ACCESS_LEVEL_ID:Administrator'
,p_column_linktext=>'#ADMINISTRATORS#'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1814817370208933785)
,p_plug_name=>'ACL Status'
,p_parent_plug_id=>wwv_flow_api.id(1609043750537240635)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select sum(case when access_level_id = 1 then 1 else 0 end) reader_count,',
'    sum(case when access_level_id = 2 then 1 else 0 end) contributor_count,',
'    sum(case when access_level_id = 3 then 1 else 0 end) admin_count',
'from eba_ca_users'))
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.ACL_STATUS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NEVER'
,p_attribute_01=>'27'
,p_attribute_02=>'29'
,p_attribute_03=>'ADMIN_COUNT'
,p_attribute_04=>'CONTRIBUTOR_COUNT'
,p_attribute_05=>'READER_COUNT'
,p_attribute_06=>'eba_ca_fw.get_preference_value(''ACCESS_CONTROL_SCOPE'')'
,p_attribute_07=>'eba_ca_fw.get_preference_value(''ACCESS_CONTROL_ENABLED'')'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(3336593273873141349)
,p_plug_name=>'Access Control'
,p_parent_plug_id=>wwv_flow_api.id(1609043750537240635)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:u-colors'
,p_plug_template=>wwv_flow_api.id(1797842692634014308)
,p_plug_display_sequence=>40
,p_plug_display_point=>'BODY'
,p_list_id=>wwv_flow_api.id(3336593857053141352)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(1797871679802014365)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_required_role=>wwv_flow_api.id(3336588467926114584)
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1814817446661933786)
,p_plug_name=>'Authentication and Authorization'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(1797853323124014327)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_point=>'BODY'
,p_plug_source_type=>'PLUGIN_COM.ORACLE.AUTH_ADMINISTRATION'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'35'
,p_attribute_02=>'Public Pages'
,p_attribute_03=>'Login Required Pages'
,p_attribute_04=>'Authorization Protected'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1858068206561855760)
,p_plug_name=>'breadcrumbs'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1797855891776014330)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(9022023598749333527)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(1797876791493014394)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1947019226383972791)
,p_plug_name=>'Multiple Calendar Users'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1797853323124014327)
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'',
'  l_multi_cal_mode varchar2(1); ',
'begin',
'    if :MULTIPLE_CAL_BO = ''Include'' then',
'      l_multi_cal_mode := ''Y'';',
'    else',
'      l_multi_cal_mode := ''N'';',
'    end if;',
'    ',
'    sys.htp.p(''<div class="container">'');',
'    sys.htp.p(''<div class="row">'');',
'    sys.htp.p(''<div class="col col-12 ">'');',
'    sys.htp.p(''<div class="t-ConfigPanel">'');',
'    sys.htp.p(''  <div class="t-ConfigPanel-body">'');',
'    sys.htp.p(''    <div class="t-ConfigPanel-main">'');',
'    sys.htp.p(''      <span class="t-ConfigPanel-icon a-Icon'');',
'      if l_multi_cal_mode = ''Y'' then',
'        sys.htp.prn(''is-enabled'');',
'      else',
'        sys.htp.prn(''is-disabled'');',
'      end if;',
'    sys.htp.p(''"></span>'');',
'    sys.htp.p(''      <span class="t-ConfigPanel-setting">Multiple-Calendars</span>'');',
'        if l_multi_cal_mode = ''N'' then',
'            sys.htp.p(''      <span class="t-ConfigPanel-status">Disabled</span>'');',
'        else',
'            sys.htp.p(''      <span class="t-ConfigPanel-status">Enabled</span>'');',
'        end if;',
'    sys.htp.p(''      </span>'');',
'    sys.htp.p(''    </div>'');',
'',
'   if l_multi_cal_mode = ''Y'' then',
'      sys.htp.p(''    <div class="t-ConfigPanel-list">'');',
'      sys.htp.p(''      <ul class="t-ConfigPanel-attrs">'');',
'',
'      for c1 in (',
'         select count(*) c',
'           from eba_ca_users',
'          where access_level_id >= 2',
'            and restricted_to is null',
'      ) loop',
'',
'         sys.htp.p(''        <li class="t-ConfigPanel-attr">'');',
'         sys.htp.p(''          <a href="''||apex_util.prepare_url(''f?p=''||:APP_ID||'':29:''||:APP_SESSION||'':::CIR,RIR:IR_RESTRICTED,IR_ACCESS_LEVEL_LINK:No,2'')||''" class="t-ConfigPanel-attrLink">'');',
'         sys.htp.p(''            <span class="t-ConfigPanel-attrLabel">Unrestricted Contributors</span>'');',
'         sys.htp.p(''            <span class="t-ConfigPanel-attrValue">'');',
'         sys.htp.p(to_char(c1.c,''999G999G990''));',
'         sys.htp.p(''            </span>'');',
'         sys.htp.p(''          </a>'');',
'         sys.htp.p(''        </li>'');',
'      end loop;',
'',
'      for c1 in (',
'         select count(*) c',
'           from eba_ca_users',
'          where access_level_id >= 2',
'            and restricted_to is not null',
'      ) loop',
'',
'         sys.htp.p(''        <li class="t-ConfigPanel-attr">'');',
'         sys.htp.p(''          <a href="''||apex_util.prepare_url(''f?p=''||:APP_ID||'':29:''||:APP_SESSION||'':::CIR,RIR:IR_RESTRICTED,IR_ACCESS_LEVEL_LINK:Yes,2'')||''" class="t-ConfigPanel-attrLink">'');',
'         sys.htp.p(''            <span class="t-ConfigPanel-attrLabel">Restricted Contributors</span>'');',
'         sys.htp.p(''            <span class="t-ConfigPanel-attrValue">'');',
'         sys.htp.p(to_char(c1.c,''999G999G990''));',
'         sys.htp.p(''            </span>'');',
'         sys.htp.p(''          </a>'');',
'         sys.htp.p(''        </li>'');',
'      end loop;',
'',
'      for c1 in (',
'         select count(*) c',
'           from eba_ca_users',
'          where access_level_id = 1',
'            and restricted_to is not null',
'      ) loop',
'',
'         sys.htp.p(''        <li class="t-ConfigPanel-attr">'');',
'         sys.htp.p(''          <a href="''||apex_util.prepare_url(''f?p=''||:APP_ID||'':29:''||:APP_SESSION||'':::CIR,RIR:IR_RESTRICTED,IR_ACCESS_LEVEL_LINK:Yes,2'')||''" class="t-ConfigPanel-attrLink">'');',
'         sys.htp.p(''            <span class="t-ConfigPanel-attrLabel">Restricted Readers (for Private Events)</span>'');',
'         sys.htp.p(''            <span class="t-ConfigPanel-attrValue">'');',
'         sys.htp.p(to_char(c1.c,''999G999G990''));',
'         sys.htp.p(''            </span>'');',
'         sys.htp.p(''          </a>'');',
'         sys.htp.p(''        </li>'');',
'      end loop;',
'',
'    sys.htp.p(''      </ul>'');',
'    sys.htp.p(''    </div>'');',
'   else',
'      sys.htp.p(''    <div class="t-ConfigPanel-list">'');',
'      sys.htp.p(''      <div style="padding: 12px;">If enabled, events can be assigned to calendars and Contributors can have limited create/edit access.</div>'');',
'      sys.htp.p(''    </div>'');',
'   end if;',
'',
'    sys.htp.p(''  </div>'');',
'    sys.htp.p(''</div>'');',
'    sys.htp.p(''</div>'');',
'    sys.htp.p(''</div>'');',
'    sys.htp.p(''</div>'');',
'',
'end;'))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_required_patch=>wwv_flow_api.id(1938766493817367015)
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(3336592647524141347)
,p_plug_name=>'Administration'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:u-colors'
,p_plug_template=>wwv_flow_api.id(1797853323124014327)
,p_plug_display_sequence=>10
,p_plug_new_grid_column=>false
,p_plug_display_point=>'BODY'
,p_list_id=>wwv_flow_api.id(3336595173724141354)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(1797871679802014365)
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(3336592853691141348)
,p_plug_name=>'Hidden Items'
,p_region_template_options=>'#DEFAULT#'
,p_region_attributes=>' style="width:49%; float:left; margin-right: 1%;"'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(1797842692634014308)
,p_plug_display_sequence=>3
,p_plug_new_grid_column=>false
,p_plug_display_point=>'BODY_3'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(3337439765482012768)
,p_plug_name=>'Email'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:u-colors'
,p_plug_template=>wwv_flow_api.id(1797853323124014327)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_point=>'BODY'
,p_list_id=>wwv_flow_api.id(8107650233800776598)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(1797871679802014365)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_header=>'<div>'
,p_plug_footer=>'</div>'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(3415753170237912608)
,p_plug_name=>'Activity Reporting'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:u-colors'
,p_plug_template=>wwv_flow_api.id(1797853323124014327)
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_point=>'BODY'
,p_list_id=>wwv_flow_api.id(3415752660385912606)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(1797871679802014365)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(1328654651655113602)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(1328654359835106459)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1797876708820014393)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'javascript:closeModal();'
,p_button_execute_validations=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(1328654862390116687)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(1328654359835106459)
,p_button_name=>'ENABLE_ACCESS_CONTROL'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1797876708820014393)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Enable Access Control'
,p_button_position=>'REGION_TEMPLATE_CREATE'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(3337926647249658960)
,p_computation_sequence=>10
,p_computation_item=>'LAST_VIEW'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'26'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(3336593648785141350)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'ENABLE_ACCESS_CONTROL'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-- Set AC flag',
'eba_ca_fw.set_preference_value(''ACCESS_CONTROL_ENABLED'',''Y'');',
'-- Seed user table with current user as an administrator or set the current user as administrator',
'declare',
'   l_count number;',
'begin',
'    select count(*) ',
'       into l_count ',
'       from eba_ca_users',
'       where username = :APP_USER;',
'    if l_count = 0 then',
'        insert into eba_ca_users(username, access_level_id) values (:APP_USER, 3);   ',
'    else',
'        update eba_ca_users',
'            set access_level_id = 3',
'            where username = :APP_USER;',
'    end if;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Error'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'ENABLE_ACCESS_CONTROL'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_process_success_message=>'Access Control enabled and the current user ''&APP_USER.'' has been created as an Administrator.'
);
wwv_flow_api.component_end;
end;
/
