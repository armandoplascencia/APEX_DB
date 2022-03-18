prompt --application/shared_components/navigation/lists/management
begin
--   Manifest
--     LIST: Management
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
 p_id=>wwv_flow_api.id(5401652688666238240)
,p_name=>'Management'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(745551430153630528)
,p_list_item_display_sequence=>5
,p_list_item_link_text=>'Additional Required Items'
,p_list_item_link_target=>'f?p=&APP_ID.:119:&SESSION.::&DEBUG.:RP,119:::'
,p_list_item_icon=>'fa-asterisk'
,p_list_text_01=>'Set optional form elements throughout the app to be required.'
,p_security_scheme=>wwv_flow_api.id(7306165779537991444)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(5401652964163238242)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Attachments Dashboard'
,p_list_item_link_target=>'f?p=&APP_ID.:79:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-paperclip'
,p_list_text_01=>'View aggregate size of attachments with ability to purge old attachments.'
,p_security_scheme=>wwv_flow_api.id(7306165779537991444)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(11918551914803372490)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Project Status'
,p_list_item_link_target=>'f?p=&APP_ID.:155:&SESSION.::&DEBUG.:RP,RIR,155:::'
,p_list_item_icon=>'fa-lock'
,p_list_text_01=>'Report of all projects and their deleted and access control statuses.'
,p_security_scheme=>wwv_flow_api.id(7306165779537991444)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(17043821505302767565)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Manage Feedback'
,p_list_item_link_target=>'f?p=&APP_ID.:203:&SESSION.::&DEBUG.:203:::'
,p_list_item_icon=>'fa-comment-o'
,p_list_text_01=>'Report of all feedback left by application users. Feedback types include general comments, enhancement requests, and bugs.'
,p_security_scheme=>wwv_flow_api.id(7306165779537991444)
,p_required_patch=>wwv_flow_api.id(17003750519035551380)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(19289220348639486621)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Reassign Action Items'
,p_list_item_link_target=>'f?p=&APP_ID.:108:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-user'
,p_list_text_01=>'Transfer Action Items from one user to another'
,p_security_scheme=>wwv_flow_api.id(7306165779537991444)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.component_end;
end;
/
