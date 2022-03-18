prompt --application/shared_components/logic/build_options
begin
--   Manifest
--     BUILD OPTIONS: 134
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>134
,p_default_id_offset=>172493832712964115
,p_default_owner=>'MISO'
);
wwv_flow_api.create_build_option(
 p_id=>wwv_flow_api.id(2770584289789526386)
,p_build_option_name=>'Headlines'
,p_build_option_status=>'EXCLUDE'
,p_default_on_export=>'EXCLUDE'
,p_on_upgrade_keep_status=>true
,p_build_option_comment=>'When this option is enabled, end-users can assign "Headline" text to a project.'
);
wwv_flow_api.create_build_option(
 p_id=>wwv_flow_api.id(2770586391043537687)
,p_build_option_name=>'Requesting Teams'
,p_build_option_status=>'EXCLUDE'
,p_default_on_export=>'EXCLUDE'
,p_on_upgrade_keep_status=>true
,p_build_option_comment=>'When this option is enabled, end-users can define the team (or teams) that requested the project.'
);
wwv_flow_api.create_build_option(
 p_id=>wwv_flow_api.id(2770586993360548656)
,p_build_option_name=>'Impacted Environments'
,p_build_option_status=>'EXCLUDE'
,p_default_on_export=>'EXCLUDE'
,p_on_upgrade_keep_status=>true
,p_build_option_comment=>'When this option is enabled, end-users can define the impacted environment (or environments) associated with the project.'
);
wwv_flow_api.create_build_option(
 p_id=>wwv_flow_api.id(2770587393234575801)
,p_build_option_name=>'Team Groups'
,p_build_option_status=>'EXCLUDE'
,p_default_on_export=>'EXCLUDE'
,p_on_upgrade_keep_status=>true
,p_build_option_comment=>'When this option is enabled, end-users can define the team group (or groups) they are associated with. Application administrators can also update this field.'
);
wwv_flow_api.create_build_option(
 p_id=>wwv_flow_api.id(2770587552010580829)
,p_build_option_name=>'Skillsets'
,p_build_option_status=>'EXCLUDE'
,p_default_on_export=>'EXCLUDE'
,p_on_upgrade_keep_status=>true
,p_build_option_comment=>'When this option is enabled, end-users can define the skillset (or skillsets) they are associated with. Application administrators can also update this field.'
);
wwv_flow_api.create_build_option(
 p_id=>wwv_flow_api.id(2770587737367599922)
,p_build_option_name=>'Background Checks'
,p_build_option_status=>'EXCLUDE'
,p_default_on_export=>'EXCLUDE'
,p_on_upgrade_keep_status=>true
,p_build_option_comment=>'When this option is enabled, end-users can define their background check information. Application administrators can also update this field.'
);
wwv_flow_api.create_build_option(
 p_id=>wwv_flow_api.id(2770587954927608466)
,p_build_option_name=>'HIPPA Certification Date'
,p_build_option_status=>'EXCLUDE'
,p_default_on_export=>'EXCLUDE'
,p_on_upgrade_keep_status=>true
,p_build_option_comment=>'When this option is enabled, end-users can define the the date on which they achieved their HIPPA certification. Application administrators can also update this field.'
);
wwv_flow_api.create_build_option(
 p_id=>wwv_flow_api.id(2814507098077253822)
,p_build_option_name=>'Assistant'
,p_build_option_status=>'EXCLUDE'
,p_default_on_export=>'EXCLUDE'
,p_on_upgrade_keep_status=>true
,p_build_option_comment=>'When this option is enabled, end-users (or app administrators) can update their profile information with an assistant''s name and phone number.'
);
wwv_flow_api.create_build_option(
 p_id=>wwv_flow_api.id(2864779554151523619)
,p_build_option_name=>'Heat Map Reporting'
,p_build_option_status=>'INCLUDE'
,p_on_upgrade_keep_status=>true
,p_build_option_comment=>'Provide heat map report as an option.  Heat may shows projects by activity from hot to cold.'
);
wwv_flow_api.create_build_option(
 p_id=>wwv_flow_api.id(4036491964090119980)
,p_build_option_name=>'Project Issues Categories'
,p_build_option_status=>'EXCLUDE'
,p_default_on_export=>'EXCLUDE'
,p_on_upgrade_keep_status=>true
,p_build_option_comment=>'When this feature is enabled, project issues can be assigned to categories that are managed by the application administrator.'
);
wwv_flow_api.create_build_option(
 p_id=>wwv_flow_api.id(4036492193169131049)
,p_build_option_name=>'Project Issues Reference Identifier'
,p_build_option_status=>'EXCLUDE'
,p_default_on_export=>'EXCLUDE'
,p_on_upgrade_keep_status=>true
,p_build_option_comment=>'When this feature is enabled, project issues can have a reference identifier assigned (e.g. a bug number from a different system).'
);
wwv_flow_api.create_build_option(
 p_id=>wwv_flow_api.id(6173573097872616906)
,p_build_option_name=>'Content complete "fish bowl"'
,p_build_option_status=>'EXCLUDE'
,p_default_on_export=>'EXCLUDE'
,p_on_upgrade_keep_status=>true
,p_build_option_comment=>'Show content complete "fish bowl" control on project detail page side bar with model region to display detail.'
);
wwv_flow_api.create_build_option(
 p_id=>wwv_flow_api.id(6173574406893658297)
,p_build_option_name=>'Project Validations'
,p_build_option_status=>'EXCLUDE'
,p_default_on_export=>'EXCLUDE'
,p_on_upgrade_keep_status=>true
,p_build_option_comment=>'Allow project contributors to validate project status.'
);
wwv_flow_api.create_build_option(
 p_id=>wwv_flow_api.id(6195737494730111919)
,p_build_option_name=>'Project Status Reports'
,p_build_option_status=>'INCLUDE'
,p_on_upgrade_keep_status=>true
,p_build_option_comment=>'Enable or disable the status reporting functionality of this application.  Project status reports are formal project update.  Typically if status reports are enabled project updates are disabled.'
);
wwv_flow_api.create_build_option(
 p_id=>wwv_flow_api.id(6252446509804687380)
,p_build_option_name=>'Flex Columns'
,p_build_option_status=>'EXCLUDE'
,p_default_on_export=>'EXCLUDE'
,p_on_upgrade_keep_status=>true
,p_build_option_comment=>'Allows flex columns to be named and used to extend projects with specific functionality.  Enable if you wish to allow administrators the ability to configure flex columns.'
);
wwv_flow_api.create_build_option(
 p_id=>wwv_flow_api.id(6964173191422663655)
,p_build_option_name=>'Include E-Mail Ingest'
,p_build_option_status=>'INCLUDE'
,p_on_upgrade_keep_status=>true
,p_build_option_comment=>'Reserved for future functionality.'
);
wwv_flow_api.create_build_option(
 p_id=>wwv_flow_api.id(7672710716776835218)
,p_build_option_name=>'Project Issues'
,p_build_option_status=>'INCLUDE'
,p_on_upgrade_keep_status=>true
,p_build_option_comment=>'Projects allow any number of issues to be defined for a given project.   '
);
wwv_flow_api.create_build_option(
 p_id=>wwv_flow_api.id(11865439575942748770)
,p_build_option_name=>'Project Milestones'
,p_build_option_status=>'INCLUDE'
,p_on_upgrade_keep_status=>true
,p_build_option_comment=>'Any number of milestones can be defined or a given project.'
);
wwv_flow_api.create_build_option(
 p_id=>wwv_flow_api.id(11865439785610750633)
,p_build_option_name=>'Project Attachments'
,p_build_option_status=>'INCLUDE'
,p_on_upgrade_keep_status=>true
,p_build_option_comment=>'Projects allow for one or more attachment to be added.  Enable if you want to allow projects to include attachments.'
);
wwv_flow_api.create_build_option(
 p_id=>wwv_flow_api.id(11865457074067664047)
,p_build_option_name=>'Project Action Items'
,p_build_option_status=>'INCLUDE'
,p_on_upgrade_keep_status=>true
,p_build_option_comment=>'If enabled each project will allow the definition of action items.'
);
wwv_flow_api.create_build_option(
 p_id=>wwv_flow_api.id(11865461959584682542)
,p_build_option_name=>'Project Updates'
,p_build_option_status=>'INCLUDE'
,p_on_upgrade_keep_status=>true
,p_build_option_comment=>'Projects allow simple text updates, choose to enable or disable this capability.'
);
wwv_flow_api.create_build_option(
 p_id=>wwv_flow_api.id(11865509704474723851)
,p_build_option_name=>'Project Links'
,p_build_option_status=>'INCLUDE'
,p_on_upgrade_keep_status=>true
,p_build_option_comment=>'If enabled allows any number of links (URLs) to be named and associated with a project.'
);
wwv_flow_api.create_build_option(
 p_id=>wwv_flow_api.id(11915945871795671853)
,p_build_option_name=>'Dashboard: Show Projects by Status'
,p_build_option_status=>'INCLUDE'
,p_on_upgrade_keep_status=>true
,p_build_option_comment=>'On the projects dashboard page show the projects by status region.'
);
wwv_flow_api.create_build_option(
 p_id=>wwv_flow_api.id(11916011485631590505)
,p_build_option_name=>'Dashboard: Show Projects by Category'
,p_build_option_status=>'INCLUDE'
,p_on_upgrade_keep_status=>true
,p_build_option_comment=>'On the projects dashboard page show projects by category region.'
);
wwv_flow_api.create_build_option(
 p_id=>wwv_flow_api.id(11916018719787603450)
,p_build_option_name=>'Dashboard: Show People Resources'
,p_build_option_status=>'INCLUDE'
,p_on_upgrade_keep_status=>true
,p_build_option_comment=>'On the projects dashboard page show the people resources region.  This widget identifies who owns the most projects.  This widget shows recently created projects so that you can see at a glance which projects are new.'
);
wwv_flow_api.create_build_option(
 p_id=>wwv_flow_api.id(11916025960406684542)
,p_build_option_name=>'Dashboard: Show recently created'
,p_build_option_status=>'INCLUDE'
,p_on_upgrade_keep_status=>true
,p_build_option_comment=>'On the projects dashboard page show the recently created region.'
);
wwv_flow_api.create_build_option(
 p_id=>wwv_flow_api.id(11916076350652627496)
,p_build_option_name=>'Dashboard: Show recently edited projects'
,p_build_option_status=>'INCLUDE'
,p_on_upgrade_keep_status=>true
,p_build_option_comment=>'On the projects dashboard page show the recently edited projects region.  This dashboard widget shows which projects have been recently edited.  Allows you to see at a glance which projects were updated most recently.'
);
wwv_flow_api.create_build_option(
 p_id=>wwv_flow_api.id(11916093816142635755)
,p_build_option_name=>'Dashboard'
,p_build_option_status=>'INCLUDE'
,p_on_upgrade_keep_status=>true
,p_build_option_comment=>'Exposes a dashboard link in the Projects list of the "Reporting" page.  Disabling dashboard turns off the entire dashboard page.'
);
wwv_flow_api.create_build_option(
 p_id=>wwv_flow_api.id(11916163488992657833)
,p_build_option_name=>'Dashboard: Show Parent Projects'
,p_build_option_status=>'INCLUDE'
,p_on_upgrade_keep_status=>true
,p_build_option_comment=>'On the dashboard page, show the parent projects region. '
);
wwv_flow_api.create_build_option(
 p_id=>wwv_flow_api.id(11916168027532663499)
,p_build_option_name=>'Dashboard: Show least recently edited'
,p_build_option_status=>'INCLUDE'
,p_on_upgrade_keep_status=>true
,p_build_option_comment=>'On the dashboard region show the least recently edited widget.  This widget highlights projects that may be neglected or in need of an update.'
);
wwv_flow_api.create_build_option(
 p_id=>wwv_flow_api.id(11916178136620755513)
,p_build_option_name=>'Dashboard: Show summary'
,p_build_option_status=>'INCLUDE'
,p_on_upgrade_keep_status=>true
,p_build_option_comment=>'On the dashboard page, show the summary region with counts of projects and milestones and action items.'
);
wwv_flow_api.create_build_option(
 p_id=>wwv_flow_api.id(11985127837396710533)
,p_build_option_name=>'Email Past Due Deliverables'
,p_build_option_status=>'INCLUDE'
,p_default_on_export=>'INCLUDE'
,p_on_upgrade_keep_status=>true
,p_build_option_comment=>'This is an administrative option that emails all (or specific individual) users having past due deliverables. It can be run on demand or via a database job. When enabled as a database job, all users having past due deliverables are emailed.'
);
wwv_flow_api.create_build_option(
 p_id=>wwv_flow_api.id(11997357717598129643)
,p_build_option_name=>'Email Upcoming Deliverables'
,p_build_option_status=>'INCLUDE'
,p_default_on_export=>'INCLUDE'
,p_on_upgrade_keep_status=>true
,p_build_option_comment=>'This is an administrative option that emails all (or specific individual) users having upcoming deliverables that are due. It can be run on demand or via a database job. When enabled as a database job, all users having upcoming deliverables are email'
||'ed.'
);
wwv_flow_api.create_build_option(
 p_id=>wwv_flow_api.id(12130127162343753660)
,p_build_option_name=>'Project Resources'
,p_build_option_status=>'EXCLUDE'
,p_default_on_export=>'EXCLUDE'
,p_on_upgrade_keep_status=>true
,p_build_option_comment=>'Allow tracking of miscellaneous resources by project.'
);
wwv_flow_api.create_build_option(
 p_id=>wwv_flow_api.id(12233039446649971820)
,p_build_option_name=>'Project User Involvement'
,p_build_option_status=>'INCLUDE'
,p_on_upgrade_keep_status=>true
,p_build_option_comment=>'Track the involvement level of each person assigned to a project.'
);
wwv_flow_api.create_build_option(
 p_id=>wwv_flow_api.id(12240751934287757551)
,p_build_option_name=>'Project Sizes'
,p_build_option_status=>'INCLUDE'
,p_on_upgrade_keep_status=>true
,p_build_option_comment=>'Classify projects according to their size / complexity.'
);
wwv_flow_api.create_build_option(
 p_id=>wwv_flow_api.id(12648622320418922722)
,p_build_option_name=>'Perma Link'
,p_build_option_status=>'EXCLUDE'
,p_default_on_export=>'EXCLUDE'
,p_on_upgrade_keep_status=>true
,p_build_option_comment=>'On the project details page, displays a "Perma Link" project action button.'
);
wwv_flow_api.create_build_option(
 p_id=>wwv_flow_api.id(12648625558040011725)
,p_build_option_name=>'Merge'
,p_build_option_status=>'EXCLUDE'
,p_default_on_export=>'EXCLUDE'
,p_on_upgrade_keep_status=>true
,p_build_option_comment=>'On the project details page, displays a "Merge" project action button.'
);
wwv_flow_api.create_build_option(
 p_id=>wwv_flow_api.id(13619049542774220759)
,p_build_option_name=>'Project Templates'
,p_build_option_status=>'INCLUDE'
,p_on_upgrade_keep_status=>true
,p_build_option_comment=>'Administrators can create project templates which can then be selected by end-users in the create project wizard to create a project with pre-defined milestones and action items.'
);
wwv_flow_api.create_build_option(
 p_id=>wwv_flow_api.id(15873378907956721107)
,p_build_option_name=>'Email Project Details'
,p_build_option_status=>'INCLUDE'
,p_on_upgrade_keep_status=>true
,p_build_option_comment=>'This is an administrative option that sends job-driven project details emails to users that have opted into receiving these emails. The job runs daily but users get these emails based on their "Project Details Schedule" email preference setting.'
);
wwv_flow_api.create_build_option(
 p_id=>wwv_flow_api.id(16977114217035413845)
,p_build_option_name=>'Restrict Changes'
,p_build_option_status=>'EXCLUDE'
,p_default_on_export=>'EXCLUDE'
,p_on_upgrade_keep_status=>true
,p_build_option_comment=>'When set, this prevents non administrators from altering most details of Milestones and Action Items.'
);
wwv_flow_api.create_build_option(
 p_id=>wwv_flow_api.id(17003750519035551380)
,p_build_option_name=>'Feedback'
,p_build_option_status=>'INCLUDE'
,p_default_on_export=>'INCLUDE'
,p_on_upgrade_keep_status=>true
,p_build_option_comment=>'Allows application users the ability to send comments, enhancement requests, and bugs to application administrators.'
);
wwv_flow_api.create_build_option(
 p_id=>wwv_flow_api.id(17331313959570473439)
,p_build_option_name=>'Edit Closed Projects'
,p_build_option_status=>'INCLUDE'
,p_on_upgrade_keep_status=>true
,p_build_option_comment=>'If enabled, closed projects can be edited by anyone with the appropriate permissions. If disabled, closed projects can only be edited by users with the Super Admin access level.'
);
wwv_flow_api.create_build_option(
 p_id=>wwv_flow_api.id(17702469780519244814)
,p_build_option_name=>'Restrict Changes (Template)'
,p_build_option_status=>'INCLUDE'
,p_default_on_export=>'INCLUDE'
,p_on_upgrade_keep_status=>true
,p_build_option_comment=>'If set, project templates will include the option of making the template milestones and action items "mandatory". Users who do not have Super Admin access will not be able to edit most details of milestones and action items created from such a templa'
||'te.'
);
wwv_flow_api.create_build_option(
 p_id=>wwv_flow_api.id(18227432720253979239)
,p_build_option_name=>'Mandatory Action Item Resolution'
,p_build_option_status=>'INCLUDE'
,p_default_on_export=>'INCLUDE'
,p_on_upgrade_keep_status=>true
,p_build_option_comment=>'Ensure resolution text is added to any Action Item that is having it''s status changed to "Closed / Complete" .'
);
wwv_flow_api.create_build_option(
 p_id=>wwv_flow_api.id(18632926167418630398)
,p_build_option_name=>'Email Project Statuses'
,p_build_option_status=>'INCLUDE'
,p_default_on_export=>'INCLUDE'
,p_on_upgrade_keep_status=>true
,p_build_option_comment=>'This is an administrative option that sends job-driven project status emails to users that have opted into receiving these emails. The job runs daily but users get these emails based on their "Project Status Schedule" email preference setting.'
);
wwv_flow_api.create_build_option(
 p_id=>wwv_flow_api.id(18990974587291614877)
,p_build_option_name=>'Project Countries'
,p_build_option_status=>'EXCLUDE'
,p_default_on_export=>'EXCLUDE'
,p_on_upgrade_keep_status=>true
,p_build_option_comment=>'Enable associating projects with specific regions and countries.'
);
wwv_flow_api.create_build_option(
 p_id=>wwv_flow_api.id(19245436446324471171)
,p_build_option_name=>'Project Code Names'
,p_build_option_status=>'EXCLUDE'
,p_default_on_export=>'EXCLUDE'
,p_on_upgrade_keep_status=>true
,p_build_option_comment=>'Allows tracking of projects by "Code Names"'
);
wwv_flow_api.create_build_option(
 p_id=>wwv_flow_api.id(19245446063791282124)
,p_build_option_name=>'Project Deal Types'
,p_build_option_status=>'EXCLUDE'
,p_default_on_export=>'EXCLUDE'
,p_on_upgrade_keep_status=>true
,p_build_option_comment=>'Allows the ability to define deal types to various projects.'
);
wwv_flow_api.create_build_option(
 p_id=>wwv_flow_api.id(19245477420249490834)
,p_build_option_name=>'Action Item Links'
,p_build_option_status=>'EXCLUDE'
,p_default_on_export=>'EXCLUDE'
,p_on_upgrade_keep_status=>true
,p_build_option_comment=>'Allows the ability to assign a link to an Action Item.'
);
wwv_flow_api.create_build_option(
 p_id=>wwv_flow_api.id(19890960485833316269)
,p_build_option_name=>'Allow Parent Projects'
,p_build_option_status=>'INCLUDE'
,p_default_on_export=>'INCLUDE'
,p_on_upgrade_keep_status=>true
,p_build_option_comment=>'Allows end-users to define an existing project as a parent project when creating a new project or editing an existing project.'
);
wwv_flow_api.component_end;
end;
/
