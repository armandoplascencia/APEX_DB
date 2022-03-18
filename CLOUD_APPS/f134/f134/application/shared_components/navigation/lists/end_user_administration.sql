prompt --application/shared_components/navigation/lists/end_user_administration
begin
--   Manifest
--     LIST: End User Administration
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>134
,p_default_id_offset=>172493832712964115
,p_default_owner=>'MISO'
);
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(6071953191175837331)
,p_name=>'End User Administration'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(6071953384990837333)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Change my password'
,p_list_item_link_target=>'f?p=&APP_ID.:97:&SESSION.::&DEBUG.:RP,97:::'
,p_list_item_icon=>'fa-pencil'
,p_list_item_disp_cond_type=>'NEVER'
,p_list_text_01=>'Change current users password.  A screen will popup to re-enter your existing password, and to supply a new password.'
,p_list_text_02=>'userIcon'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(6071969008775060483)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Change My Time Zone'
,p_list_item_link_target=>'f?p=&APP_ID.:99:&SESSION.::&DEBUG.:RP,99:::'
,p_list_item_icon=>'fa-globe'
,p_list_text_01=>'Set your time zone preference for this application.'
,p_list_text_02=>'formIcon'
,p_list_text_03=>'&TZ.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(6072026897038178727)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Change My Password'
,p_list_item_link_target=>'f?p=4155:50:&SESSION.::NO::FSP_AFTER_LOGIN_URL:f?p=&APP_ID.|10|&APP_SESSION.'
,p_list_item_icon=>'fa-pencil'
,p_list_item_disp_cond_type=>'EXISTS'
,p_list_item_disp_condition=>'select 1 from apex_applications where AUTHENTICATION_SCHEME_TYPE = ''Application Express Accounts'' and application_id = :APP_ID'
,p_list_text_01=>'Change your current password.'
,p_list_text_02=>'userIcon'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(5401684472668026003)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Project Tree View Options'
,p_list_item_link_target=>'f?p=&APP_ID.:33:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-pencil-square-o'
,p_list_text_01=>'Set a preference to determine if you wish to see all projects in the tree navigation or only open projects.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(15290252495906409221)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Update My Profile'
,p_list_item_link_target=>'f?p=&APP_ID.:195:&SESSION.::&DEBUG.:195:P195_USERNAME:&APP_USER.:'
,p_list_item_icon=>'fa-user'
,p_list_item_disp_cond_type=>'EXISTS'
,p_list_item_disp_condition=>'select 1 from EBA_PROJ_STATUS_USERS where upper(USERNAME) = upper(:APP_USER)'
,p_list_text_01=>'Update my photo and or text profile.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(16993192653379220701)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'Email Preferences'
,p_list_item_link_target=>'f?p=&APP_ID.:199:&SESSION.::&DEBUG.:199:::'
,p_list_item_icon=>'fa-envelope-o'
,p_list_item_disp_cond_type=>'EXISTS'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'  from apex_application_build_options',
' where application_id = :APP_ID',
'   and build_option_name = ''Email Past Due Deliverables''',
'   and build_option_status = ''Include''',
'union all',
'select null',
'  from apex_application_build_options',
' where application_id = :APP_ID',
'   and build_option_name = ''Email Upcoming Deliverables''',
'   and build_option_status = ''Include''',
'union all',
'select null',
'  from apex_application_build_options',
' where application_id = :APP_ID',
'   and build_option_name = ''Email Project Details''',
'   and build_option_status = ''Include'''))
,p_list_text_01=>'Define the frequency in which you would prefer to receive &APPLICATION_TITLE. automated emails.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.component_end;
end;
/
