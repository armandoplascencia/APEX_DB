prompt --application/shared_components/globalization/messages
begin
--   Manifest
--     MESSAGES: 110
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>110
,p_default_id_offset=>101599614921830918
,p_default_owner=>'MISO'
);
null;
wwv_flow_api.component_end;
end;
/
begin
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>110
,p_default_id_offset=>101599614921830918
,p_default_owner=>'MISO'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(16543735021878211623)
,p_name=>'1_DAY_LEFT'
,p_message_text=>'1 day left'
);
null;
wwv_flow_api.component_end;
end;
/
begin
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>110
,p_default_id_offset=>101599614921830918
,p_default_owner=>'MISO'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(16554871035855380236)
,p_name=>'ABOUT_THIS_APPLICATION'
,p_message_text=>'About this Application'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(14676500123015667034)
,p_name=>'ABOUT_TO_CREATE'
,p_message_text=>'Please confirm adding the following %0 <strong>%1</strong> user(s) to your access control list.'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(14022909389235941018)
,p_name=>'ABOUT_TO_CREATE_RESP_COMM'
,p_message_text=>'Please confirm adding the following %0 email address(es) to your community.'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(14022909792889954506)
,p_name=>'ABOUT_TO_CREATE_RESP_COMM_INVLD'
,p_message_text=>'Please confirm adding the following %0 email address(es) to your community. Note that %1 email address(es) were invalid.'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(14721094822136952631)
,p_name=>'ABOUT_TO_CREATE_WITH_INVALIDS'
,p_message_text=>'Please confirm adding the following %0 <strong>%1</strong> user(s) to your access control list. Note that %2 string(s) were invalid usernames.'
);
wwv_flow_api.component_end;
end;
/
begin
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>110
,p_default_id_offset=>101599614921830918
,p_default_owner=>'MISO'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(16485662023272837100)
,p_name=>'ACCESS_CONTROL_INFO'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>When Access Control is enabled, Administrators have the ability to restrict access to certain application features, for authenticated users. This application supports the following 3 access levels; Reader, Contributor and Administrator.',
'  <b>Reader''s</b> can take polls.  ',
'  <b>Contributor''s</b> can create, edit, delete and view reports.',
'  <b>Administrator''s</b>, in addition to Contributor''s capability, can also perform  administration, including configuration of access control, managing application look-up data and installing or uninstalling sample data.</p> ',
''))
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(14093335197777278517)
,p_name=>'ACCESS_CONTROL_IS_DISABLED'
,p_message_text=>'Access control for this application is currently disabled.  All users are currently Administrators. Navigate to <a href="%0">application administration</a> to enable access control.'
);
wwv_flow_api.component_end;
end;
/
begin
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>110
,p_default_id_offset=>101599614921830918
,p_default_owner=>'MISO'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(16485662230890839293)
,p_name=>'ACL_CONFIGURATION_INFO'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p><strong>Enabling Access Control</strong> allows the application and its features to be controlled by the <strong>Access Control List</strong>, as defined by the application administrator. This application has 3 access levels available that can be '
||'granted to a user; Administrator, Contributor and Reader. Please see the Manage Access Control List page for further details on what each level provides.</p>',
'',
'<p>In addition, if you want to make every authenticated user a Reader of your application, you can select Reader access for any authenticated user from the Access Control Scope configuration option. Similarly, selecting Contributor access for any aut'
||'henticated user will provide contributor access to any user who can authenticate into your application.</p>',
'',
'<br>',
'<p><b>Disabling Access Control</b> means that access to the application and all of its features including Administration are open to any user who can authenticate to the application.</p>',
'<br>',
'<p>Note: Irrespective of whether Access Control is enabled or disabled, a user still has to authenticate successfully into the application.</p>'))
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(13962154899339711493)
,p_name=>'ACL_DISABLED'
,p_message_text=>'<p>All users are currently <strong>Administrators</strong>. Please enable Access Control to restrict user access to this application.</p>'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(13962154702143710207)
,p_name=>'ACL_ENABLED'
,p_message_text=>'<p>Only users defined in the Access Control List have access to this application.</p>'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(13962154504946708910)
,p_name=>'ACL_PUBLIC_CONTRIBUTE'
,p_message_text=>'<p>All authenticated users have <strong>Reader</strong> and <strong>Contributor</strong> access.</p><p>Administrators are restricted by the Access Control List.</p>'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(13962154308397707375)
,p_name=>'ACL_PUBLIC_READONLY'
,p_message_text=>'<p>All authenticated users have <strong>Reader</strong> access.</p><p>Contributors and Administrators are restricted by the Access Control List.</p>'
);
wwv_flow_api.component_end;
end;
/
begin
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>110
,p_default_id_offset=>101599614921830918
,p_default_owner=>'MISO'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(16554870320617375839)
,p_name=>'ADDITIONAL_INFORMATION'
,p_message_text=>'Additional Information'
);
null;
wwv_flow_api.component_end;
end;
/
begin
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>110
,p_default_id_offset=>101599614921830918
,p_default_owner=>'MISO'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(16162255527055259280)
,p_name=>'ADMINISTRATION'
,p_message_text=>'Administration'
);
null;
wwv_flow_api.component_end;
end;
/
begin
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>110
,p_default_id_offset=>101599614921830918
,p_default_owner=>'MISO'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(14676500513742671292)
,p_name=>'ALREADY_IN_ACL'
,p_message_text=>'User is already in Access Control List'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(14022901689155773920)
,p_name=>'ALREADY_IN_COMMUNITY'
,p_message_text=>'Email address is already in Respondent Community'
);
wwv_flow_api.component_end;
end;
/
begin
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>110
,p_default_id_offset=>101599614921830918
,p_default_owner=>'MISO'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(13962154079295705594)
,p_name=>'ANY_AUTHENTICATED_USER'
,p_message_text=>'Any Authenticated User'
);
null;
wwv_flow_api.component_end;
end;
/
begin
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>110
,p_default_id_offset=>101599614921830918
,p_default_owner=>'MISO'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(14054688878790675932)
,p_name=>'APP_WELCOME'
,p_message_text=>'Welcome %0, using this system you can create, publish and analyze polls and quizzes. To learn more click the <a href="f?p=%1:help:%2">help link</a>.'
);
null;
wwv_flow_api.component_end;
end;
/
begin
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>110
,p_default_id_offset=>101599614921830918
,p_default_owner=>'MISO'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(13962565994656457147)
,p_name=>'AUTHENTICATION_REQUIRED_PAGES'
,p_message_text=>'Login Required Pages'
);
null;
wwv_flow_api.component_end;
end;
/
begin
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>110
,p_default_id_offset=>101599614921830918
,p_default_owner=>'MISO'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(14676501517180684894)
,p_name=>'BAU_EMAIL_INSTRUCTIONS'
,p_message_text=>'Enter or copy and paste email addresses separated by commas, semicolons, or new lines. Note that if you copy and paste email addresses from email messages, extraneous text will be filtered out. All email users provided will be added as the selected r'
||'ole. Existing or duplicate email addresses will be ignored.'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(14676501714161686323)
,p_name=>'BAU_STRING_INSTRUCTIONS'
,p_message_text=>'Enter or copy and paste usernames separated by commas, semicolons, or whitespace. All usernames provided will be added as the selected role. Existing or duplicate usernames will be ignored.'
);
wwv_flow_api.component_end;
end;
/
begin
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>110
,p_default_id_offset=>101599614921830918
,p_default_owner=>'MISO'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(14087223702481244191)
,p_name=>'CAN_TAKE_IT'
,p_message_text=>'Take It'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(14087224198599245963)
,p_name=>'CAN_UPDATE'
,p_message_text=>'Update Response'
);
wwv_flow_api.component_end;
end;
/
begin
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>110
,p_default_id_offset=>101599614921830918
,p_default_owner=>'MISO'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(16544532329991724886)
,p_name=>'DAYS_AGO'
,p_message_text=>'%0 days ago'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(16543734816683210099)
,p_name=>'DAYS_LEFT'
,p_message_text=>'%0 days left'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(16543735339193216577)
,p_name=>'DAYS_OVERDUE'
,p_message_text=>'%0 days overdue'
);
wwv_flow_api.component_end;
end;
/
begin
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>110
,p_default_id_offset=>101599614921830918
,p_default_owner=>'MISO'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(14022902291731787881)
,p_name=>'DUPLICATE_EMAIL'
,p_message_text=>'Duplicate email address in list'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(14676500710938672649)
,p_name=>'DUPLICATE_USER'
,p_message_text=>'Duplicate user in list'
);
wwv_flow_api.component_end;
end;
/
begin
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>110
,p_default_id_offset=>101599614921830918
,p_default_owner=>'MISO'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(14022902106827780871)
,p_name=>'EMAIL_TOO_LONG'
,p_message_text=>'Email address is too long'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(14801774911749887816)
,p_name=>'EMAIL_USERNAME_FORMAT_MSG'
,p_message_text=>'This application is currently using an <strong>email address</strong> username format (e.g. xyz@xyz.com). <a href="f?p=%0:%1:%2:">Change Username Format</a>'
);
wwv_flow_api.component_end;
end;
/
begin
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>110
,p_default_id_offset=>101599614921830918
,p_default_owner=>'MISO'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(16554870524080376831)
,p_name=>'FEATURES'
,p_message_text=>'Features'
);
null;
wwv_flow_api.component_end;
end;
/
begin
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>110
,p_default_id_offset=>101599614921830918
,p_default_owner=>'MISO'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(16554870731699379033)
,p_name=>'GETTING_STARTED'
,p_message_text=>'Getting Started'
);
null;
wwv_flow_api.component_end;
end;
/
begin
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>110
,p_default_id_offset=>101599614921830918
,p_default_owner=>'MISO'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(14087224000324245213)
,p_name=>'HAS_ERRORS'
,p_message_text=>'Has Errors'
);
null;
wwv_flow_api.component_end;
end;
/
begin
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>110
,p_default_id_offset=>101599614921830918
,p_default_owner=>'MISO'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(16162251423592258347)
,p_name=>'HELP'
,p_message_text=>'Help'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(14725332110743544774)
,p_name=>'HELP_ABOUT'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="aboutApp">',
'<h2>About this Application</h2>',
'<p>',
'This application allows you to conduct a simple poll or quiz.  Results can be reviewed in real time.  You can use this during meetings or presentations to get instant feedback and to facilitate discussions.',
'</p>',
'</div>'))
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(14725332722160554694)
,p_name=>'HELP_FEATURES'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="textRegion">',
'<a name="FEATURES"></a>',
'<h2>Application Features</h2>',
'<ul>',
'	<li>Rapidly develop polls and quizzes</li>',
'	<li>Graphically view results in real time</li>',
'	<li>Easy end-to-end poll management</li>',
'	<li>Easy to create user communities</li>',
'	<li>Flexible Access Control (Reader, Contributor, Administrator model)</li>',
'	<li>Email services, custom templates and email logging</li>',
'        <li>Legal notice options</li>',
'</ul>',
'</div>'))
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(14725332335747548357)
,p_name=>'HELP_GETTING_STARTED'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="textRegion">',
'<a name="H1"></a>',
'<h2>Creating and Publishing Polls</h2>',
'<p>Users of this application who have the Contributor or Administrator access level can create and manage polls and quizzes.  </p>',
'<br/>',
'<p>',
'	1. Creating a Poll',
'</p>',
'<ul>',
'	<li>From the application home page, click <strong>Create a Poll</strong>.</li>',
'	<li>To create a poll as a copy of an existing poll, click the link at the top of the page, select the poll to copy and click <strong>Copy Poll</strong>.</li>',
'        <li>To create a new poll, provide a Poll Name and review and set the rest of the details.  Once complete, click <strong>Create</strong>.</li>',
'        <li>Note that once created, the poll details can be edited.</li>',
'</ul>',
'<p>Once the poll definition is created, you will now add questions and sections if you selected to use sections.  Sections allow you to group questions together under a heading and within a box.  If you missed that selection, simply edit the poll det'
||'ails and switch <strong>Use Sections</strong> on under the Customize Display section.</p>',
'',
'<p>When there are no questions, or sections (and Use Sections is enabled), you will see an alert region telling you "No questions defined yet.".  You can click the button in that region <strong>Add Question</strong>.  Once you have questions (or sect'
||'ions), you create additional questions either using the <strong>+</strong> in the upper right of the Questions region or by selecting <strong>Create Question</strong> under the Actions menu in the upper right.</p>',
'',
'<p>Each poll supports up to 20 questions and up to 12 answers per question.  There are many different types of questions including pick one, pick many, Yes/No, True/False, a variety of ranges plus text field and free form text to allow you to solicit'
||' unstructured responses.</p>',
'',
'<p>Questions can be mandatory or optional.  If a mandatory question is not answered, the user will receive an error and their response will not be considered in the results unless they fix the error.</p>',
'',
'<p>If you are creating a quiz, you must identify the correct answer for each question.  If the type is a standard type, you will just select the <strong>correct answer</strong> check box to the right of the correct answer.  If the type is text field '
||'and free form text, you must provide the correct answer.</p>',
'',
'<p>In addition to quizzes, this application supports scored polls.  In a scored poll, answers to questions are given a weighting of 0 to 10. Scoring answers allows a poll the ability to distill poll results into a single numeric value.  Use scoring i'
||'f you are asking satisfaction type questions.  Note that textual responses cannot be scored.</p>',
'',
'<br/>',
'<p>',
'	2. Publishing a Poll or Quiz',
'</p>',
'<p>A poll should be previewed before publishing. Under the Actions menu on the poll details page, click <strong>Preview</strong>.  Once previewed, you may also want to solicit input and/or testing from other before publishing.  This is what the <stro'
||'ng>Testing, Contributors only</strong> status is for.  If you put a poll in that status, other Contributors (and Administrators) can take the poll.  Once you do publish the poll, you are given the option to remove that testing data or leave it.</p>',
'<ul>',
'	<li>From the application home page, click the name of the poll you wish to publish.</li>',
'	<li>Under the Actions menu on the poll details page, click <strong>Edit Poll Details</strong>.</li>',
'        <li>Change the status to <strong>Published</strong> (or <strong>Testing, Contributors only</strong>). and click <strong>Apply Changes</strong>.</li>',
'	<li>If you set the poll as Published, it is now live and available to be taken and if appropriate, you can invite people to take it.</li>',
'</ul>',
'',
'<br/>',
'</div>'))
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(479360849704730769)
,p_name=>'HELP_GETTING_STARTED_1.5'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="textRegion">',
'<p>',
'	3. Defining a Community',
'</p>',
'<p>A Community is a named list of users that you can invite to take a poll.  To create a community:</p>',
'<ul>',
'	<li>Within the menu under your username in the upper right, click <strong>Communities</strong>.</li>',
'	<li>To add a new community or add members to an existing community, click the <strong>Add Community / Members</strong> button.</li>',
'	<li>If adding a new community, identify the <strong>New Community Name</strong>.</li>',
'	<li>Type or paste in email addresses of community members.  Any format is acceptable (cut and paste from spreadsheets, emails, etc.), extraneous non-email text will be ignored.</li>',
'        <li>Click <strong>Next</strong>.</li>',
'        <li>Review the list of emails that will be added, acknowledge any duplicate emails ignored, and click <strong>Add Community / Members</strong>.</li>',
'',
'</ul>',
'<p>Alternatively, once a poll is published, just click the <strong>Invite</strong> button on the Poll Details page and click the <strong>Add New Community</strong> link to the right of the Community selector.</p>',
'<br/>',
'</div>'))
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(14085625692852848304)
,p_name=>'HELP_GETTING_STARTED_2'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="textRegion">',
'<a name="H2"></a>',
'<h2>Inviting Participants</h2>',
'<p>This application can be used to invite people to take a poll.  The system can send email invitations to one or more user communities or you can generate links to send outside of this system (e.g. via emails you send, via an instant message, etc). '
||' At most one email invitation will be sent even if an email address is in multiple invited communities.  You are not required to use this application to invite participation, it is provided as a convenience.</p>',
'<br/>',
'<p>',
'	1. Sending Invitations',
'</p>',
'<ul>',
'	<li>From the application home page, click the name of the Poll you wish to invite people to take.  Note that the poll must be in the Published status to send invitations.</li>',
'	<li>Click the <strong>Invite</strong> button.</li>',
'	<li>If a suitable community is already defined, select that community.  If you have not already defined the proper community, or need to add members to an existing community, click <strong>Add New Community</strong> and follow the wizard.</li>',
'        <li>To have the system send emails, set the Invite Method to <strong>Automated Email</strong>.  You can alternatively select <strong>Manual</strong>.</li>',
'        <li>Click <strong>Invite</strong>.</li>',
'</ul>',
'<p>You can obtain required notification links, for both email and manual invitations, by viewing the Invitations report (available from the Home page by clicking the number of invitations - more details available by clicking the Invitation Method in '
||'the resulting report).</p>',
'<br/>',
'<p>',
'	2. Sending Reminders',
'</p>',
'<p>If you have invited people to take a poll but not all have responded, you can send a reminder email.</p>',
'<ul>',
'	<li>From the application home page, click the name of the Poll you wish to invite people to take.</li>',
'	<li>Click the <strong>Send Reminders</strong> button.</li>',
'        <li>You can either select a specific community that you have already invited or you can remind all.</li>',
'        <li>Click <strong>Send Reminders</strong>.</li>',
'</ul>',
'<p>The Community Member Responses report on the Reminder page will indicate who has responded and also if any of your invitees have opted out of receiving email in which case a reminder email will not be sent.</p>',
'<br/>',
'<p>',
'	3. Taking a poll',
'</p>',
'<p>When you invite participants, they will either click through the link in the email they receive or click the link that you directly provide to them.</p>',
'<ul>',
'	<li>From the invitation email, click the poll link.</li>',
'	<li>Take the poll or quiz and click <strong>Submit</strong>.</li>',
'	<li>After submitting, a user may have a link to view results if that feature is enabled for the poll or quiz.</li>',
'</ul>',
'<p>If you are a Contributor or Administrator of the application, there will be a Contributor report on the home page that lists all recent polls and you can click through links in that report to take polls as well, both those you have been invited to'
||' take and those that are not invite only.</p>',
'',
'<br/>',
'</div>'))
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(14085626995200877557)
,p_name=>'HELP_GETTING_STARTED_3'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="textRegion">',
'<a name="H3"></a>',
'<h2>Viewing and Monitoring Results</h2>',
'<p>Polls that allow viewing of results can be viewed by participants.</p>',
'<p>',
'	1. Reviewing Poll Results',
'</p>',
'<ul>',
'	<li>From the application home page, click on the number of results to the left of the name of the poll.  For Readers, polls with results that are not available for viewing will not display.</li>',
'        <li>You will be presented with a summary by question as well as some of the poll attributes on the far right.</li>',
'        <li>Click on a question number to view the details for a given question, including answers by user (if the poll does not Anonymize Results).</li>',
'        <li>From the Results Summary, click the <strong>View Detailed Results</strong> button to see a report by respondent.</li>',
'</ul>',
'',
'<p>',
'	2. Refreshing Results',
'</p>',
'<p>As soon as a user submits a response the poll results will be available.  You can refresh manually or set the page to refresh automatically.  To refresh manually:</p>',
'<ul>',
'	<li>Click <strong>Refresh Results</strong>.</li>',
'</ul>',
'',
'<p>To refresh automatically:</p>',
'<ul>',
'	<li>Set <strong>Auto Page Refresh</strong> to ''Yes, every 5 seconds''.</li>',
'</ul>',
'<br/>',
'</div>',
'',
'<div class="textRegion">',
'<a name="H4"></a>',
'<h2>Closing and Managing Polls</h2>',
'',
'<p>',
'	1. Closing a Poll',
'</p>',
'<p>Once you have gathered all the responses you need for your poll, you should close your poll so that no more responses can be submitted.  To close a poll:</p>',
'<ul>',
'	<li>From the application home page, click the name of the poll.</li>',
'        <li>Under <strong>Actions</strong> on the right, click <strong>Edit Poll Details</strong>.  This will display the current status and allow you to set the new status to <strong>Closed</strong>.</li>',
'        <li>Click <strong>Apply Changes</strong>.</li>',
'</ul>',
'',
'<p>',
'	2. Deleting a Poll',
'</p>',
'<ul>',
'	<li>From the application home page, click the name of the poll.</li>',
'        <li>Under <strong>Actions</strong> on the right, click <strong>Delete</strong>.</li>',
'        <li>Click <strong>Delete Poll</strong>.</li>',
'</ul>',
'<br/>',
'</div>'))
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(14085685586196528336)
,p_name=>'HELP_GETTING_STARTED_ACL'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="textRegion">',
'<a name="ACL"></a>',
'<h2>Configuring Access Control</h2>',
'<p>Before using this application, it is highly advised to set up access control lists.  Enabling Access Control allows the application to enforce three levels of application access; Administrator, Contributor, and Reader.  Administrators have full ac'
||'cess.  Contributors can create and publish polls, and manage results.  Readers may take polls and view poll results but may not create polls.  Access to take a poll requires access to the application unless the poll has <strong>Login Required</strong'
||'> set to No.</p>',
'<ul>',
'<li>Within the menu under your username in the upper right, click <strong>Administration</strong>.</li>',
'<li>Within the Access Control region, click the <strong>Enable</strong> button or the enable menu option.</li>',
'<li>Click <strong>Enable Access Control</strong>.</li>',
'<li>Within the Access Control region, click the <strong>Configure</strong> menu option.</li>',
'<li>Select the appropriate Access Control Scope.</li>',
'<li>Click <strong>Apply Changes</strong>.</li>',
'<li>Within the Access Control region, click the <strong>Access Control List</strong> menu option.</li>',
'<li>Click <strong>Add User</strong>.</li>',
'<li>Provide the user name, which by default must be in valid email address format, and select the appropriate access level.</li>',
'<li>Click <strong>Add User</strong> or <strong>Add and Add Another</strong>.</li>',
'</ul>',
'',
'<p>You can also use the <strong>Add Multiple Users</strong> feature.  You select that from the Access Control page and follow the directions in the wizard.</p>',
'<br/>',
'</div>'))
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(14085685005402504320)
,p_name=>'HELP_GETTING_STARTED_EMAIL'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="textRegion">',
'<a name="EMAIL"></a>',
'<h2>Enabling Email</h2>',
'<p>Before email can be sent by this application, an application administrator must configure the email preferences.  Emails sent include invitations to take polls as well as emails regarding requesting access to the application, if that feature is en'
||'abled (via Administration &gt; Build Options).  Note that this feature is only accessible to Administrators.</p>',
'<ul>',
'<li>Within the menu under your username in the upper right, click <strong>Administration</strong>.</li>',
'<li>In the Email administration region, click <strong>Default Email Addresses</strong>.</li>',
'<li>Enter an appropriate email address to send emails from and a reply to address, if desired.</li>',
'<li>Click <strong>Apply Changes</strong>.</li>',
'</ul>',
'<p>You can also customize the Email Template Styles and the Email Templates.</p>',
'<br/>',
'</div>'))
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(14085628098841906243)
,p_name=>'HELP_GETTING_STARTED_TOC'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="textRegion">',
'<ul>',
'<li><a href="#H1">Creating and Publishing Polls</a></li>',
'<li><a href="#H2">Inviting Participants</a></li>',
'<li><a href="#H3">Viewing and Monitoring Results</a></li>',
'<li><a href="#H4">Completing and Managing Polls</a></li>',
'<li><a href="#EMAIL">Enabling Email</a></li>',
'<li><a href="#ACL">Configuring Access Control</a></li>',
'<li><a href="#SUPP">Supplemental Welcome Text</a></li>',
'<li><a href="#FEATURES">Application Features</a></li>',
'<li><a href="#ADDITIONAL">Additional Information</a></li>',
'',
'</ul>',
'</div>'))
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(14725331920879540118)
,p_name=>'HELP_SIDEBAR'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<h1 class="appNameHeader">',
'    <img src="%0f_spacer.gif" class="appIcon %1" alt="" />',
'    %2',
'</h1>',
'<ul class="vapList">',
'    <li>',
'        <span class="vLabel">App Version</span>',
'        <span class="vValue">%3</span>',
'    </li>',
'    <li>',
'        <span class="vLabel">Pages</span>',
'        <span class="vValue">%4</span>',
'    </li>',
'    <li>',
'        <span class="vLabel">Vendor</span>',
'        <span class="vValue">%5 </span>',
'    </li>',
'</ul>'))
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(14725332531865550216)
,p_name=>'HELP_SUPPORT'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="textRegion">',
'<a name="ADDITIONAL"></a>',
'<h2>Additional Information</h2>',
'<p>If you have questions, ask them on the <a href="%0" target="_blank">%1</a>.',
'</p>',
'</div>'))
);
wwv_flow_api.component_end;
end;
/
begin
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>110
,p_default_id_offset=>101599614921830918
,p_default_owner=>'MISO'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(14676500317839669473)
,p_name=>'INVALID_USERS_NOT_CREATED'
,p_message_text=>'Note that %0 string(s) were invalid usernames.'
);
null;
wwv_flow_api.component_end;
end;
/
begin
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>110
,p_default_id_offset=>101599614921830918
,p_default_owner=>'MISO'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(16162243220129257308)
,p_name=>'LOGIN'
,p_message_text=>'Login'
);
null;
wwv_flow_api.component_end;
end;
/
begin
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>110
,p_default_id_offset=>101599614921830918
,p_default_owner=>'MISO'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(16162247322207257909)
,p_name=>'LOGOUT'
,p_message_text=>'Logout'
);
null;
wwv_flow_api.component_end;
end;
/
begin
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>110
,p_default_id_offset=>101599614921830918
,p_default_owner=>'MISO'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(14676501137667675440)
,p_name=>'MISSING_AT_SIGN'
,p_message_text=>'Missing @ sign'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(14676501335080676659)
,p_name=>'MISSING_DOT'
,p_message_text=>'Missing dot'
);
wwv_flow_api.component_end;
end;
/
begin
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>110
,p_default_id_offset=>101599614921830918
,p_default_owner=>'MISO'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(16502506032059341265)
,p_name=>'MOBILE'
,p_message_text=>'Mobile'
);
null;
wwv_flow_api.component_end;
end;
/
begin
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>110
,p_default_id_offset=>101599614921830918
,p_default_owner=>'MISO'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(14031750401785804123)
,p_name=>'NO'
,p_message_text=>'No'
);
null;
wwv_flow_api.component_end;
end;
/
begin
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>110
,p_default_id_offset=>101599614921830918
,p_default_owner=>'MISO'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(14540927628175854799)
,p_name=>'N_DAY'
,p_message_text=>'%0 day'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(14540927825371856100)
,p_name=>'N_DAYS'
,p_message_text=>'%0 days'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(14540927234645851818)
,p_name=>'N_HOUR'
,p_message_text=>'%0 hour'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(14540927431841853136)
,p_name=>'N_HOURS'
,p_message_text=>'%0 hours'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(14540927038527849993)
,p_name=>'N_MINUTES'
,p_message_text=>'%0 minutes'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(14540928021490857920)
,p_name=>'N_WEEK'
,p_message_text=>'%0 week'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(14540928217823859576)
,p_name=>'N_WEEKS'
,p_message_text=>'%0 weeks'
);
wwv_flow_api.component_end;
end;
/
begin
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>110
,p_default_id_offset=>101599614921830918
,p_default_owner=>'MISO'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(14058278410476600072)
,p_name=>'OPT_OUT_TEXT'
,p_message_text=>'<br><a href="%0">Opt out from receiving emails from %1</a>'
);
null;
wwv_flow_api.component_end;
end;
/
begin
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>110
,p_default_id_offset=>101599614921830918
,p_default_owner=>'MISO'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(14057503486289061478)
,p_name=>'P32_ABOUT'
,p_message_text=>'<p>Once a poll is published you can invite user communities to take the poll. On install, the administrator will need to configure the "email from" address before you can send emails.'
);
null;
wwv_flow_api.component_end;
end;
/
begin
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>110
,p_default_id_offset=>101599614921830918
,p_default_owner=>'MISO'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(14057494106646945683)
,p_name=>'P47_ABOUT'
,p_message_text=>'<p>Use this page to manage existing polls.  You can set preferences to allow users to update answers, allow permission to view results (or not) etc.  Click on the responses to view results.'
);
null;
wwv_flow_api.component_end;
end;
/
begin
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>110
,p_default_id_offset=>101599614921830918
,p_default_owner=>'MISO'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(13962566188402460066)
,p_name=>'PAGES_WITH_CUSTOM_AUTH'
,p_message_text=>'Authorization Protected'
);
null;
wwv_flow_api.component_end;
end;
/
begin
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>110
,p_default_id_offset=>101599614921830918
,p_default_owner=>'MISO'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(14029425701662180809)
,p_name=>'POLL_INITCAP'
,p_message_text=>'Poll'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(14029423386221081628)
,p_name=>'POLL_LOWER'
,p_message_text=>'poll'
);
wwv_flow_api.component_end;
end;
/
begin
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>110
,p_default_id_offset=>101599614921830918
,p_default_owner=>'MISO'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(13962565780435448569)
,p_name=>'PUBLIC_PAGES'
,p_message_text=>'Public Pages'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(14132114282207686839)
,p_name=>'PUBLISH'
,p_message_text=>'Publish'
);
wwv_flow_api.component_end;
end;
/
begin
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>110
,p_default_id_offset=>101599614921830918
,p_default_owner=>'MISO'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(14029425503818179846)
,p_name=>'QUIZ_INITCAP'
,p_message_text=>'Quiz'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(14029422592487063544)
,p_name=>'QUIZ_LOWER'
,p_message_text=>'quiz'
);
wwv_flow_api.component_end;
end;
/
begin
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>110
,p_default_id_offset=>101599614921830918
,p_default_owner=>'MISO'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(14134474406993144884)
,p_name=>'RESULTS_TEXT'
,p_message_text=>'<p>You can use <a href="%0">this link</a> to view results within the application.</p>'
);
null;
wwv_flow_api.component_end;
end;
/
begin
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>110
,p_default_id_offset=>101599614921830918
,p_default_owner=>'MISO'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(14033604484498854203)
,p_name=>'SCORE_A'
,p_message_text=>'Average'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(14033604682988854899)
,p_name=>'SCORE_C'
,p_message_text=>'Cumulative'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(14034622400949261712)
,p_name=>'SCORE_N'
,p_message_text=>'None'
);
wwv_flow_api.component_end;
end;
/
begin
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>110
,p_default_id_offset=>101599614921830918
,p_default_owner=>'MISO'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(14801775339773890053)
,p_name=>'STRING_USERNAME_FORMAT_MSG'
,p_message_text=>'This application is currently using a <strong>non-email address</strong> username format (e.g. JOHNDOE). <a href="f?p=%0:%1:%2:">Change Username Format</a>'
);
null;
wwv_flow_api.component_end;
end;
/
begin
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>110
,p_default_id_offset=>101599614921830918
,p_default_owner=>'MISO'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(14135529489019359778)
,p_name=>'SYSTEM_GEN_TEXT'
,p_message_text=>'This is a system generated email. Please do not reply to this message.'
);
null;
wwv_flow_api.component_end;
end;
/
begin
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>110
,p_default_id_offset=>101599614921830918
,p_default_owner=>'MISO'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(16543734409411208024)
,p_name=>'TODAY'
,p_message_text=>'Today'
);
null;
wwv_flow_api.component_end;
end;
/
begin
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>110
,p_default_id_offset=>101599614921830918
,p_default_owner=>'MISO'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(13126268648020968722)
,p_name=>'UNAUTH_MSG'
,p_message_text=>'<p>The above link is specific to you.  Please do not share this email with anyone.</p>'
);
null;
wwv_flow_api.component_end;
end;
/
begin
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>110
,p_default_id_offset=>101599614921830918
,p_default_owner=>'MISO'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(14676500940471674107)
,p_name=>'USERNAME_TOO_LONG'
,p_message_text=>'Username too long'
);
null;
wwv_flow_api.component_end;
end;
/
begin
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>110
,p_default_id_offset=>101599614921830918
,p_default_owner=>'MISO'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(14031750202863803669)
,p_name=>'YES'
,p_message_text=>'Yes'
);
null;
wwv_flow_api.component_end;
end;
/
