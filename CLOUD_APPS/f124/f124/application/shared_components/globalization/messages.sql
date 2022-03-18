prompt --application/shared_components/globalization/messages
begin
--   Manifest
--     MESSAGES: 124
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>124
,p_default_id_offset=>97439342994982660
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
,p_default_application_id=>124
,p_default_id_offset=>97439342994982660
,p_default_owner=>'MISO'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(15153254439977444097)
,p_name=>'AC_CONFIGURATION_INFO'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p><b>Enabling Access Control</b> means that access to the application and its features are controlled by the current <b>Access Control List</b>, as defined by the application administrator. There are 3 access levels available that can be granted to '
||'a user; Administrator, Contributor and Reader. Please see the Manager User pages for further details on what each level provides.</p>',
'<p>In addition, if you don''t want to have to define every ''Reader'' of your application, you can select <b>Any Authenticated User</b> from the <b>Reader Access</b> configuration option. This opens read-only access to any user who can authenticate into'
||' your application.</p>',
'<br />',
'<p><b>Disabling Access Control</b> means that access to the application and all of its features including Administration are open to any user who can authenticate to the application.</p>',
'<br />',
'<p>Note: Irrespective of whether Access Control is enabled or disabled, a user still has to authenticate successfully into the application.</p>'))
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
,p_default_application_id=>124
,p_default_id_offset=>97439342994982660
,p_default_owner=>'MISO'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(15107181016660740087)
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
,p_default_application_id=>124
,p_default_id_offset=>97439342994982660
,p_default_owner=>'MISO'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(15107196422548741732)
,p_name=>'HELP'
,p_message_text=>'Help'
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
,p_default_application_id=>124
,p_default_id_offset=>97439342994982660
,p_default_owner=>'MISO'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(3263186940182602248)
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
,p_default_application_id=>124
,p_default_id_offset=>97439342994982660
,p_default_owner=>'MISO'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(15107220037439746103)
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
,p_default_application_id=>124
,p_default_id_offset=>97439342994982660
,p_default_owner=>'MISO'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(15107173044580738648)
,p_name=>'USER'
,p_message_text=>'User'
);
null;
wwv_flow_api.component_end;
end;
/
