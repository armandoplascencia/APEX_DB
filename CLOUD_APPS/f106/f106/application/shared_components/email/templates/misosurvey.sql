prompt --application/shared_components/email/templates/misosurvey
begin
--   Manifest
--     REPORT LAYOUT: MISOSURVEY
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
 p_id=>wwv_flow_api.id(69713269492253850)
,p_name=>'MISOSURVEY'
,p_static_id=>'MISOSURVEY'
,p_subject=>'Event Reminder: #EVENT_NAME#'
,p_html_body=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<b>Hello #INVITEE#,</b><br>',
'<br>',
'This is a reminder of an upcoming Survey event you have been invited to.  Please see the event details below:<br>',
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
,p_html_header=>'<b style="font-size: 24px;">Site Inspection Survey</b>'
,p_html_footer=>'<a href="#MY_APPLICATION_LINK#">Visit My Application and manage your email preferences</a>.'
,p_html_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE HTML>',
'<html>',
'<head>',
'  <meta http-equiv="Content-Type" content="text/html; charset=utf-8">',
'  <meta name="viewport" content="width=device-width">',
'  <style>',
'    body { background-color: #fdfdfd; color: #3e3e3e; margin: 0; padding: 0; min-width: 100%; -webkit-text-size-adjust: none; -ms-text-size-adjust: none; text-size-adjust: none; font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", "Helvetica N'
||'eue", Roboto, Helvetica, Arial, sans-serif; line-height: 1.5; -webkit-font-smoothing: antialiased; -moz-osx-font-smoothing: grayscale; }',
'    table { border: 0; border-spacing: 0; border-collapse: collapse; mso-table-lspace: 0pt; mso-table-rspace: 0pt; }',
'    table td { padding: 0; vertical-align: top; border-collapse: collapse; }',
'    table, th, td { line-height: inherit; }',
'    img { vertical-align: middle; text-decoration: none; outline: none; border: 0; -ms-interpolation-mode: bicubic; }',
'    table.container { margin-right: auto; margin-left: auto; width: 600px; }',
'    p { margin: 0 0 20px 0; }',
'    a, .main a { color: #056abf; }',
'    @media only screen and (max-width: 612px) {',
'      .mobile-hide { display: none !important; }',
'      .stack { display: block !important; width: auto !important; }',
'      table.container { width: 100% !important; }',
'      table td { text-align: left !important; }',
'    }',
'  </style>',
'</head>',
'<body yahoo="fix" style="background-color: #efefef; line-height: 1.5;">',
'<table class="body" border="0" width="100%">',
'  <tr>',
'    <td align="center" valign="top" style="background-color: #efefef;">',
'      <center>',
'        <table class="container" width="600">',
'          <tr>',
'            <td style="padding: 12px 6px;">',
'',
'              <!-- Header -->',
'              <table width="100%" style="background-color: #f8f8f8; border-radius: 4px 4px 0 0">',
'                <tr>',
'                  <td style="text-align: left; padding: 20px 12px; border-bottom: 1px solid #eaeaea;">',
'                    #HEADER#',
'                  </td>',
'                </tr>',
'              </table>',
'              <!-- // Header -->',
'',
'              <!-- Main Body -->',
'              <table width="100%" style="background-color: #ffffff; border-radius: 0 0 4px 4px;">',
'                <tr>',
'                  <td class="main" style="text-align: left; padding: 12px; font-size: 14px;">',
'                  #BODY#',
'                  </td>',
'                </tr>',
'              </table>',
'              <!-- // Main Body -->',
'',
'              <!-- Footer -->',
'              <table width="100%">',
'                <tr>',
'                  <td style="font-size: 11px; padding: 12px;">',
'                    #FOOTER#',
'                  </td>',
'                </tr>',
'              </table>',
'              <!-- // Footer -->',
'',
'            </td>',
'          </tr>',
'        </table>',
'      </center>',
'    </td>',
'  </tr>',
'</table>',
'</body>',
'</html>'))
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
