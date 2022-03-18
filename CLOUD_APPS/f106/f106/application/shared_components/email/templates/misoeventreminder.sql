prompt --application/shared_components/email/templates/misoeventreminder
begin
--   Manifest
--     REPORT LAYOUT: misoeventreminder
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>106
,p_default_id_offset=>0
,p_default_owner=>'MISO'
);
wwv_flow_api.create_email_template(
 p_id=>wwv_flow_api.id(76825698936204683)
,p_name=>'misoeventreminder'
,p_static_id=>'MISOEVENTREMINDER'
,p_subject=>'Event Reminder: #EVENT_NAME#'
,p_html_body=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<b>Hello #INVITEE#,</b><br>',
'<br>',
'This is a reminder of an upcoming event you have been invited to.  Please see the event details below:<br>',
'<br>',
'<table width="100%">',
'  <tr>',
'    <th align="left">Organizer</th>',
'    <td>#ORGANIZER#</td>',
'  </tr>',
'  <tr>',
'    <th align="left">Event Date</th>',
'    <td>#EVENT_DATE#</td>',
'  </tr>',
'  <tr>',
'    <th align="left">Start Time</th>',
'    <td>#START_TIME#</td>',
'  </tr>',
'  <tr>',
'    <th align="left">Duration</th>',
'    <td>#DURATION#</td>',
'  </tr>',
'  <tr>',
'    <th align="left" valign="top">Location</th>',
'    <td>#LOCATION#</td>',
'  </tr>',
'  <tr>',
'    <th align="left">URL</th>',
'    <td><a href="#URL_LINK#">#URL_NAME#</a></td>',
'  </tr>',
'  <tr>',
'    <th align="left" valign="top">Notes</th>',
'    <td>#NOTES#</td>',
'  </tr>',
'</table>'))
,p_html_header=>'<b style="font-size: 24px;">My Application</b>'
,p_html_footer=>'<a href="#MY_APPLICATION_LINK#">Visit My Application and manage your email preferences</a>.'
,p_text_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Hello #INVITEE#,',
'',
'This email is to remind you of an upcoming event you are associated with.',
'',
'Event Date: #EVENT_DATE#',
'Start Time: #START_TIME#',
'Duration:   #DURATION#',
'Organizer:  #ORGANIZER#',
'Location:   #LOCATION#',
'URL:        #URL_NAME# (#URL_LINK#)',
'Notes:      #NOTES#',
'',
'View additional event details here: #EVENT_LINK#'))
);
wwv_flow_api.component_end;
end;
/
