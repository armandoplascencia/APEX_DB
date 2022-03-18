prompt --application/pages/page_00174
begin
--   Manifest
--     PAGE: 00174
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
 p_id=>174
,p_user_interface_id=>wwv_flow_api.id(5783577205373975152)
,p_name=>'Emails'
,p_step_title=>'Emails'
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
,p_help_text=>'This help text documents how to use and manage emails sent by this application.'
,p_last_upd_yyyymmddhh24miss=>'20180223140941'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(12697520763253118875)
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
 p_id=>wwv_flow_api.id(12697521142349118876)
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
 p_id=>wwv_flow_api.id(12505847609440353073)
,p_plug_name=>'Past Due Deliverables'
,p_region_name=>'pde'
,p_parent_plug_id=>wwv_flow_api.id(12697521142349118876)
,p_region_template_options=>'#DEFAULT#:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(6781115417665890803)
,p_plug_display_sequence=>60
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Past Due Deliverables emails can only be sent by application administrators. These emails can be sent in an on-demand fashion or configured to be sent via a scheduled database job. Sending these emails via the on-demand method affords the applicat'
||'ion administrator the flexibility of emailing all appropriate end-users with one click or emailing individual end-users one at a time.</p>',
'<p>To use the on-demand method of emailing past due deliverables emails:</p>',
'<ol>',
'    <li>Navigate to Administration > Email Past Due Deliverables</li>',
'    <li>If you want to email all users with past due milestones/action items, just click the <strong>Email</strong> button in the upper, right-hand side of the page.</li>',
'    <li>If you want to email a specific user with past due milestones/action items, select the "Single User" radio group button, select the user you''d like to email, and click the <strong>Email</strong> button in the upper, right-hand side of the pag'
||'e.</li>',
'</ol>',
'<p>To use the scheduled database job method of emailing past due deliverables emails:</p>',
'<ol>',
'    <li>Navigate to Administration > Automate Sending Past Due Deliverables Emails</li>',
'    <li>If the status is "Disabled", click the status.</li>',
'    <li>On the page that appears next, change the status from "Disabled" to "Enabled" and then click the <strong>Apply Changes</strong> button.</li>',
'    <li>This job runs every work day at 8am but only users who have opted to receive these emails via their email preference settings will be emailed using the schedule they''ve defined.</li>',
'</ol>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>'select null from apex_application_build_options where application_id = :APP_ID and build_option_name = ''Email Past Due Deliverables'' and build_option_status = ''Include'''
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(12505847660713353074)
,p_plug_name=>'Upcoming Deliverables'
,p_region_name=>'ue'
,p_parent_plug_id=>wwv_flow_api.id(12697521142349118876)
,p_region_template_options=>'#DEFAULT#:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(6781115417665890803)
,p_plug_display_sequence=>70
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Upcoming Deliverables emails can only be sent by application administrators. These emails can be sent in an on-demand fashion or configured to be sent via a scheduled database job. Sending these emails via the on-demand method affords the applicat'
||'ion administrator the flexibility of emailing all appropriate end-users with one click or emailing individual end-users one at a time.</p>',
'<p>To use the on-demand method of emailing upcoming deliverables emails:</p>',
'<ol>',
'    <li>Navigate to Administration > Email Upcoming Deliverables</li>',
'    <li>If you want to email all users with upcoming milestones/action items, just click the <strong>Email</strong> button in the upper, right-hand side of the page.</li>',
'    <li>If you want to email a specific user with upcoming milestones/action items, select the "Single User" radio group button, select the user you''d like to email, and click the <strong>Email</strong> button in the upper, right-hand side of the pag'
||'e.</li>',
'</ol>',
'<p>To use the scheduled database job method of emailing upcoming deliverables emails:</p>',
'<ol>',
'    <li>Navigate to Administration > Automate Sending Upcoming Deliverables Emails</li>',
'    <li>If the status is "Disabled", click the status.</li>',
'    <li>On the page that appears next, change the status from "Disabled" to "Enabled" and then click the <strong>Apply Changes</strong> button.</li>',
'    <li>This job runs every work day at 8am but only users who have opted to receive these emails via their email preference settings will be emailed using the schedule they''ve defined.</li>',
'</ol>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>'select null from apex_application_build_options where application_id = :APP_ID and build_option_name = ''Email Upcoming Deliverables'' and build_option_status = ''Include'''
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(12719748051586340837)
,p_plug_name=>'Project Details/Status'
,p_region_name=>'ps'
,p_parent_plug_id=>wwv_flow_api.id(12697521142349118876)
,p_region_template_options=>'#DEFAULT#:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(6781115417665890803)
,p_plug_display_sequence=>30
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Project details and project status emails can be sent by clicking the <strong>Email</strong> button in the top right corner of the project details page. A project details email includes most of the information displayed on a project''s details page'
||' (along with whatever message text is provided by the sender). A project status email includes an overarching view of the project (along with whatever message text is provided by the sender). Project status emails list activities that have been compl'
||'eted in the last 7 days, activities due in the next 7 days, a list of project milestones, risks, open issues, and any updates made in the last 7 days.</p>',
'<p>When emailing a project email, the following attributes are mandatory:</p>',
'<ul>',
'    <li><strong>Email Type</strong> - Select whether you want to send a project details email or a project status email.</li>',
'    <li><strong>To</strong> - This attribute identifies who the email will be sent to. This attribute is defaulted to a comma-separated list of the email addresses of the people associated to the project (minus the sender''s email address). The sender'
||' can add (or subtract) email addresses from this field as they so wish.</li>',
'    <li><strong>Subject</strong> - This attribute defines the the subject title of the project details email. It is defaulted to, "&APPLICATION_TITLE.: [Name of project being emailed]".</li>',
'</ul>',
'<p>These project details email attributes are optional:</p>',
'<ul>',
'    <li><strong>Cc</strong> - This attribute identifies email addresses of people that the sender would like to carbon-copy (CC) on the sending of this project details email.</li>',
'    <li><strong>Message</strong> - This attribute defines some explanatory text that the sender can preface the body content of the project details email with.</li>',
'</ul>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(12719752166124343698)
,p_plug_name=>'Action Items'
,p_region_name=>'ai'
,p_parent_plug_id=>wwv_flow_api.id(12697521142349118876)
,p_region_template_options=>'#DEFAULT#:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(6781115417665890803)
,p_plug_display_sequence=>40
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Action items can be emailed by navigating to a specific action item and then clicking the <strong>Email</strong> button (displayed just left of the <strong>Edit Action Item</strong> button). Action item emails include all of the information displa'
||'yed on a project''s details page along with whatever message text is provided by the sender.</p>',
'<p>When emailing an action item email, the following attributes are mandatory:</p>',
'<ul>',
'    <li><strong>To</strong> - This attribute identifies who the email will be sent to. This attribute is defaulted to a comma-separated list of the email addresses of the action item owners. The sender can add (or subtract) email addresses from this '
||'field as they so wish.</li>',
'    <li><strong>Subject</strong> - This attribute defines the the subject title of the action item email. It is defaulted to, "&APPLICATION_TITLE. - Action Item: [Name of action item being emailed]".</li>',
'</ul>',
'<p>These action item email attributes are optional:</p>',
'<ul>',
'    <li><strong>Cc</strong> - This attribute identifies email addresses of people that the sender would like to carbon-copy (CC) on the sending of this action item email.</li>',
'    <li><strong>Message</strong> - This attribute defines some explanatory text that the sender can preface the body content of the action item email with.</li>',
'</ul>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>'select null from apex_application_build_options where application_id = :APP_ID and build_option_name = ''Project Action Items'' and build_option_status = ''Include'''
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(12719763559677346031)
,p_plug_name=>'Status Reports'
,p_region_name=>'sr'
,p_parent_plug_id=>wwv_flow_api.id(12697521142349118876)
,p_region_template_options=>'#DEFAULT#:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(6781115417665890803)
,p_plug_display_sequence=>50
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Status reports can be emailed by navigating to a specific status report and then clicking the <strong>Email</strong> button (displayed just left of the <strong>Edit Status Report</strong> button). Status report emails include all of the informatio'
||'n displayed in the status report along with whatever message text is provided by the sender.</p>',
'<p>When emailing a status report email, the following attributes are mandatory:</p>',
'<ul>',
'    <li><strong>To</strong> - This attribute identifies who the email will be sent to. This attribute is defaulted to a comma-separated list of the email addresses of all people associated to the project. The sender can add (or subtract) email addres'
||'ses from this field as they so wish.</li>',
'    <li><strong>Subject</strong> - This attribute defines the the subject title of the action item email. It is defaulted to, "&APPLICATION_TITLE. - Status Report: [Name of status report being emailed]".</li>',
'</ul>',
'<p>These status report email attributes are optional:</p>',
'<ul>',
'    <li><strong>Cc</strong> - This attribute identifies email addresses of people that the sender would like to carbon-copy (CC) on the sending of this status report email.</li>',
'    <li><strong>Message</strong> - This attribute defines some explanatory text that the sender can preface the body content of the status report email with.</li>',
'</ul>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>'select null from apex_application_build_options where application_id = :APP_ID and build_option_name = ''Project Status Reports'' and build_option_status = ''Include'''
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(17635511645439690830)
,p_plug_name=>'Administrative Project Details'
,p_region_name=>'apd'
,p_parent_plug_id=>wwv_flow_api.id(12697521142349118876)
,p_region_template_options=>'#DEFAULT#:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(6781115417665890803)
,p_plug_display_sequence=>80
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Project Details emails can also be sent by application administrators. These emails can be sent in an on-demand fashion or via a scheduled database job. Sending these emails via the on-demand method affords the application administrator the flexib'
||'ility of emailing all project members a project details email for an individual project or for all open and accessible projects.</p>',
'<p>To use the on-demand method of emailing project details emails:</p>',
'<ol>',
'    <li>Navigate to Administration > Email Project Details</li>',
'    <li>If you want to email project members for one specific project, just select the project and click the <strong>Email</strong> button in the upper, right-hand side of the page.</li>',
'    <li>If you want to email all project members of all open, accessible projects, select the "All Projects" radio group button and click the <strong>Email</strong> button in the upper, right-hand side of the page.</li>',
'</ol>',
'<p>To use the scheduled database job method of emailing project details emails:</p>',
'<ol>',
'    <li>Navigate to Administration > Automate Sending Project Details Emails</li>',
'    <li>If the status is "Disabled", click the status.</li>',
'    <li>On the page that appears next, change the status from "Disabled" to "Enabled" and then click the <strong>Apply Changes</strong> button.</li>',
'    <li>This job runs every work day at 8am but only users who have opted to receive these emails via their email preference settings will be emailed using the schedule and scope they''ve defined.</li>',
'</ol>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>'select null from apex_application_build_options where application_id = :APP_ID and build_option_name = ''Email Project Details'' and build_option_status = ''Include'''
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(21157149771065596444)
,p_plug_name=>'Administrative Project Status'
,p_region_name=>'aps'
,p_parent_plug_id=>wwv_flow_api.id(12697521142349118876)
,p_region_template_options=>'#DEFAULT#:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(6781115417665890803)
,p_plug_display_sequence=>90
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Administrative  Project Status emails can also be sent by application administrators. These emails can be sent in an on-demand fashion or via a scheduled database job. Sending these emails via the on-demand method affords the application administr'
||'ator the flexibility of emailing all project members a project status email for an individual project or for all open and accessible projects.</p>',
'<p>To use the on-demand method of emailing project status emails:</p>',
'<ol>',
'    <li>Navigate to Administration > Email Project Status</li>',
'    <li>If you want to email project members for one specific project, just select the project and click the <strong>Email</strong> button in the upper, right-hand side of the page.</li>',
'    <li>If you want to email all project members of all open, accessible projects, select the "All Projects" radio group button and click the <strong>Email</strong> button in the upper, right-hand side of the page.</li>',
'</ol>',
'<p>To use the scheduled database job method of emailing project details emails:</p>',
'<ol>',
'    <li>Navigate to Administration > Automate Sending Project Status Emails</li>',
'    <li>If the status is "Disabled", click the status.</li>',
'    <li>On the page that appears next, change the status from "Disabled" to "Enabled" and then click the <strong>Apply Changes</strong> button.</li>',
'    <li>This job runs every work day at 8am but only users who have opted to receive these emails via their email preference settings will be emailed using the schedule and scope they''ve defined.</li>',
'</ol>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>'select null from apex_application_build_options where application_id = :APP_ID and build_option_name = ''Email Project Statuses'' and build_option_status = ''Include'''
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(12697521552089118876)
,p_plug_name=>'List of Contents'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(6781115417665890803)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_02'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_epai_val varchar2(10) := ''Exclude''; -- Project Action Items',
'    l_epsr_val varchar2(10) := ''Exclude''; -- Project Status Reports',
'    l_epd_val  varchar2(10) := ''Exclude''; -- Email Project Details',
'    l_eps_val  varchar2(10) := ''Exclude''; -- Email Project Statuses',
'    l_epdd_val varchar2(10) := ''Exclude''; -- Email Past Due Deliverables',
'    l_eud_val  varchar2(10) := ''Exclude''; -- Email Upcoming Deliverables',
'begin',
'    -- Get Project Action Items Build Option Value',
'    for c1 in',
'    (',
'        select build_option_status from apex_application_build_options where application_id = :APP_ID and build_option_name = ''Project Action Items''',
'    )',
'    loop',
'        l_epai_val := c1.build_option_status;',
'    end loop;',
'',
'    -- Get Project Status Reports Build Option Value',
'    for c1 in',
'    (',
'        select build_option_status from apex_application_build_options where application_id = :APP_ID and build_option_name = ''Project Status Reports''',
'    )',
'    loop',
'        l_epsr_val := c1.build_option_status;',
'    end loop;',
'',
'    -- Get Project Details Build Option Value',
'    for c1 in',
'    (',
'        select build_option_status from apex_application_build_options where application_id = :APP_ID and build_option_name = ''Email Project Details''',
'    )',
'    loop',
'        l_epd_val := c1.build_option_status;',
'    end loop;',
'',
'    -- Get Project Statuses Build Option Value',
'    for c1 in',
'    (',
'        select build_option_status from apex_application_build_options where application_id = :APP_ID and build_option_name = ''Email Project Statuses''',
'    )',
'    loop',
'        l_eps_val := c1.build_option_status;',
'    end loop;',
'',
'    -- Get Past Due Deliverables Build Option Value',
'    for c1 in',
'    (',
'        select build_option_status from apex_application_build_options where application_id = :APP_ID and build_option_name = ''Email Past Due Deliverables''',
'    )',
'    loop',
'        l_epdd_val := c1.build_option_status;',
'    end loop;',
'',
'    -- Get Upcoming Deliverables Build Option Value',
'    for c1 in',
'    (',
'        select build_option_status from apex_application_build_options where application_id = :APP_ID and build_option_name = ''Email Upcoming Deliverables''',
'    )',
'    loop',
'        l_eud_val := c1.build_option_status;',
'    end loop;',
'',
'    sys.htp.p(''<ul class="t-LinksList">',
'    <li class="t-LinksList-item"><a href="javascript:scrollIntoView(''''#ps'''');" class="t-LinksList-link"><span class="t-LinksList-label">Project Details/Status</span></a></li>'');',
'    if l_epai_val = ''Include'' then',
'        sys.htp.p(''<li class="t-LinksList-item"><a href="javascript:scrollIntoView(''''#ai'''');" class="t-LinksList-link"><span class="t-LinksList-label">Action Items</span></a></li>'');',
'    end if;',
'    if l_epsr_val = ''Include'' then',
'        sys.htp.p(''<li class="t-LinksList-item"><a href="javascript:scrollIntoView(''''#sr'''');" class="t-LinksList-link"><span class="t-LinksList-label">Status Reports</span></a></li>'');',
'    end if;',
'    if l_epdd_val = ''Include'' then',
'        sys.htp.p(''<li class="t-LinksList-item"><a href="javascript:scrollIntoView(''''#pde'''');" class="t-LinksList-link"><span class="t-LinksList-label">Past Due Deliverables</span></a></li>'');',
'    end if;',
'    if l_eud_val = ''Include'' then',
'        sys.htp.p(''<li class="t-LinksList-item"><a href="javascript:scrollIntoView(''''#ue'''');" class="t-LinksList-link"><span class="t-LinksList-label">Upcoming Deliverables</span></a></li>'');',
'    end if;',
'    if l_epd_val = ''Include'' then',
'        sys.htp.p(''<li class="t-LinksList-item"><a href="javascript:scrollIntoView(''''#apd'''');" class="t-LinksList-link"><span class="t-LinksList-label">Administrative Project Details</span></a></li>'');',
'    end if;',
'    if l_eps_val = ''Include'' then',
'        sys.htp.p(''<li class="t-LinksList-item"><a href="javascript:scrollIntoView(''''#aps'''');" class="t-LinksList-link"><span class="t-LinksList-label">Administrative Project Status</span></a></li>'');',
'    end if;',
'    sys.htp.p(''</ul>'');',
'end;'))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(12720325417204531835)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(12719752166124343698)
,p_button_name=>'TOP_AI'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_api.id(6781134785393890859)
,p_button_image_alt=>'Top'
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_button_redirect_url=>'#'
,p_icon_css_classes=>'fa-chevron-up'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(12720325595937531836)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(12719748051586340837)
,p_button_name=>'TOP_PS'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_api.id(6781134785393890859)
,p_button_image_alt=>'Top'
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_button_redirect_url=>'#'
,p_icon_css_classes=>'fa-chevron-up'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(12720325671488531837)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(12719763559677346031)
,p_button_name=>'TOP_SR'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_api.id(6781134785393890859)
,p_button_image_alt=>'Top'
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_button_redirect_url=>'#'
,p_icon_css_classes=>'fa-chevron-up'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(12720325804838531838)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(12505847609440353073)
,p_button_name=>'TOP_PDE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_api.id(6781134785393890859)
,p_button_image_alt=>'Top'
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_button_redirect_url=>'#'
,p_icon_css_classes=>'fa-chevron-up'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(12720325832251531839)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(12505847660713353074)
,p_button_name=>'TOP_UE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_api.id(6781134785393890859)
,p_button_image_alt=>'Top'
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_button_redirect_url=>'#'
,p_icon_css_classes=>'fa-chevron-up'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(17635511720849690831)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(17635511645439690830)
,p_button_name=>'TOP_APD'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_api.id(6781134785393890859)
,p_button_image_alt=>'Top'
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_button_redirect_url=>'#'
,p_icon_css_classes=>'fa-chevron-up'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(21157149827423596445)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(21157149771065596444)
,p_button_name=>'TOP_APS'
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
