prompt --application/pages/page_00198
begin
--   Manifest
--     PAGE: 00198
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
 p_id=>198
,p_user_interface_id=>wwv_flow_api.id(5783577205373975152)
,p_name=>'Access Control'
,p_step_title=>'Access Control'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(5956247896891655364)
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function scrollIntoView(id) { ',
'  $(id)[0].scrollIntoView();',
'  $(document).scrollTop($(document).scrollTop() - apex.theme.defaultStickyTop());',
'}'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'h2.t-Region-title {',
'    -webkit-font-smoothing: antialiased;',
'    font-size: 2.8rem;',
'    box-sizing: border-box;',
'    display: block;',
'    color: #404040;',
'    visibility: visible;',
'}'))
,p_step_template=>wwv_flow_api.id(6781077225859890733)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'This page documents this application''s access control mechanisms.'
,p_last_upd_yyyymmddhh24miss=>'20180223140942'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(16951026554643464530)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(6781117976757890807)
,p_plug_display_sequence=>70
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(8972392840601050532)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(6781135716305890867)
,p_plug_display_condition_type=>'NEVER'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(16951026955232464537)
,p_plug_name=>'Help Content Container'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(6781115417665890803)
,p_plug_display_sequence=>10
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(16951028180444464541)
,p_plug_name=>'Project Level Access'
,p_region_name=>'proj_acl'
,p_parent_plug_id=>wwv_flow_api.id(16951026955232464537)
,p_region_template_options=>'#DEFAULT#:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(6781115417665890803)
,p_plug_display_sequence=>60
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>The &APPLICATION_TITLE. application has two types of project level access. They are:</p>',
'<ol>',
'    <li><strong>Open</strong> - This project access level allows all application users access to the project. Users with an application access level/role of "Reader" will not be able to modify project content. Users with an application access level/r'
||'ole of "Contributor", "Administrator", or "Super Admin" will be able to modify project content.</li>',
'    <li><strong>Restricted</strong> - This project access level restricts access to the project to just the people that are added as project members.</li>',
'</ol>',
'<p>There are only three project member access levels and they only pertain to restricted projects. These are the project member access levels that can be assigned to project members of a restricted project:</p>',
'<ul>',
'    <li><strong>Read / Write (with Admin)</strong> - This access level must be maintained by at least one project member in a restricted project as only project members with this access level can add, remove, and update other project members and thei'
||'r details.</li>',
'    <li><strong>Read / Write</strong> - This access level should be given to project members that are expected to update project content in a restricted project.</li>',
'    <li><strong>Read</strong> - This access level should be given to project members that are allowed to view but are not allowed to edit project content in a restricted project.</li>',
'</ul>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(16951029724067464545)
,p_plug_name=>'Application Level Access'
,p_region_name=>'app_acl'
,p_parent_plug_id=>wwv_flow_api.id(16951026955232464537)
,p_region_template_options=>'#DEFAULT#:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(6781115417665890803)
,p_plug_display_sequence=>40
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>The &APPLICATION_TITLE. application has the following six user roles:</p>',
'<ul>',
'    <li><strong>Super Admin</strong> - This role can manage the application, view, and edit any/all project content (regardless of whether the project is open or restricted).</li>',
'    <li><strong>Administrator</strong> - This role can manage the application, view, and edit project content for any/all open projects. This role can also view and edit restricted projects where they are a member of the project and they have been gr'
||'anted read/write access.</li>',
'    <li><strong>Contributor</strong> - This role can view and edit project content for any/all open projects. This role can also view and edit restricted projects where they are a member of the project and they have been granted read/write access.</l'
||'i>',
'    <li><strong>Reader</strong> - This role can view project content for any/all open projects. This role can also view and edit restricted projects where they are a member of the project and they have been granted read/write access.</li>',
'    <li><strong>Pending Approval</strong> - This role has no application access until one of the four roles (listed above) has been assigned.</li>',
'    <li><strong>No Access</strong> - This role has no application access (as its name implies).</li>',
'</ul>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(16998955995191476435)
,p_plug_name=>'Access Level Contention'
,p_region_name=>'acl_con'
,p_parent_plug_id=>wwv_flow_api.id(16951026955232464537)
,p_region_template_options=>'#DEFAULT#:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(6781115417665890803)
,p_plug_display_sequence=>70
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>A user''s application level access/role will always trump whatever project level access has been assigned in a restricted project.</p>',
'<p>If a project administrator in a restricted project adds a new member that has an application access level/role of "Reader" and tries to give that new member a project access level of "Read /Write" or "Read / Write (with Admin)", the new project me'
||'mber will only be able to view project content. The "People" region of the project details page will also display this new user''s access level as "Read" and this text will be a link. When the link is clicked, a modal page will appear telling the end-'
||'user that this project member''s application access level/role should be upgraded to "Contributor" to match the assigned project level access that has been assigned.</p>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(16951031785091464550)
,p_plug_name=>'List of Contents'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(6781115417665890803)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_02'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-LinksList">',
'    <li class="t-LinksList-item"><a href="javascript:scrollIntoView(''#app_acl'');" class="t-LinksList-link"><span class="t-LinksList-label">Application Level Access</span></a></li>',
'    <li class="t-LinksList-item"><a href="javascript:scrollIntoView(''#proj_acl'');" class="t-LinksList-link"><span class="t-LinksList-label">Project Level Access</span></a></li>',
'    <li class="t-LinksList-item"><a href="javascript:scrollIntoView(''#acl_con'');" class="t-LinksList-link"><span class="t-LinksList-label">Access Level Contention</span></a></li>',
'</ul>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(16998956045747476436)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(16998955995191476435)
,p_button_name=>'TOP_ACL_CON'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_api.id(6781134785393890859)
,p_button_image_alt=>'Top'
,p_button_position=>'BELOW_BOX'
,p_button_redirect_url=>'#'
,p_icon_css_classes=>'fa-chevron-up'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(16951028556360464543)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(16951028180444464541)
,p_button_name=>'TOP_PROJ_ACL'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_api.id(6781134785393890859)
,p_button_image_alt=>'Top'
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_button_redirect_url=>'#'
,p_icon_css_classes=>'fa-chevron-up'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(16951030149959464546)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(16951029724067464545)
,p_button_name=>'TOP_APP_ACL'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_api.id(6781134785393890859)
,p_button_image_alt=>'Top'
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_button_redirect_url=>'#'
,p_icon_css_classes=>'fa-chevron-up'
);
wwv_flow_api.component_end;
end;
/
