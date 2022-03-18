prompt --application/shared_components/email/templates/newtemplate
begin
--   Manifest
--     REPORT LAYOUT: NEWTEMPLATE
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>115
,p_default_id_offset=>358200981570066140
,p_default_owner=>'MISO'
);
wwv_flow_api.create_email_template(
 p_id=>wwv_flow_api.id(188439841713480940)
,p_name=>'NEWTEMPLATE'
,p_static_id=>'NEWTEMPLATE'
,p_subject=>'New Template'
,p_html_body=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<b>Dear #CONTACT_PERSON#,</b><br>',
'<br>',
'This is a template to collect data.<br> ',
'<br>',
'Please fill out the attached list.<br>',
'<br>',
'Thank you in advance for your cooperation.<br>',
'<br>',
'Best regards<br>',
'<br>',
'<table width="100%">',
'  <tr>',
'    <th align="left">Deadline:</th>',
'    <td>#DEADLINE#</td>',
'  </tr>',
'  <tr>',
'    <th align="left" valign="top">Notes:</th>',
'    <td>#NOTES#</td>',
'  </tr>',
'</table>'))
,p_html_header=>'<b style="font-size: 24px;">New Template</b>'
,p_text_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Dear #CONTACT_PERSON#,',
'',
'This is a template to collect data.',
'',
'Thank you in advance for your cooperation.',
'',
'Best regards',
'',
'Deadline:   #DEADLINE#',
'Notes:      #NOTES#'))
);
wwv_flow_api.component_end;
end;
/
