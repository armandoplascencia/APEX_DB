prompt --application/shared_components/navigation/lists/admin_config
begin
--   Manifest
--     LIST: Admin Config
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
 p_id=>wwv_flow_api.id(5362401726945831772)
,p_name=>'Admin Config'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(5362533206473675370)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Notifications'
,p_list_item_link_target=>'f?p=&APP_ID.:53:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-bullhorn'
,p_list_text_01=>'Define in-application user notifications.'
,p_security_scheme=>wwv_flow_api.id(7306165779537991444)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(13560410943859624940)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Workdays'
,p_list_item_link_target=>'f?p=&APP_ID.:57:&SESSION.::&DEBUG.:57:::'
,p_list_item_icon=>'fa-calendar'
,p_list_text_01=>'Define which days are valid workdays for the purposes of calculating template milestones/action items durations and due dates.'
,p_security_scheme=>wwv_flow_api.id(7306165779537991444)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(13662553366128581655)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Project Templates'
,p_list_item_link_target=>'f?p=&APP_ID.:60:&SESSION.::&DEBUG.:RIR,60:::'
,p_list_item_icon=>'fa-bookmark-o'
,p_list_text_01=>'Define and maintain project templates to simplify the creation of projects having an inordinately large number of milestones and action items.'
,p_security_scheme=>wwv_flow_api.id(7306165779537991444)
,p_required_patch=>wwv_flow_api.id(13619049542774220759)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(5362401893248831772)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Flex Columns'
,p_list_item_link_target=>'f?p=&APP_ID.:140:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-columns'
,p_list_text_01=>'Design and manage implementation specific columns.'
,p_security_scheme=>wwv_flow_api.id(7306165779537991444)
,p_required_patch=>wwv_flow_api.id(6252446509804687380)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(5362402734885831774)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Application Settings'
,p_list_item_link_target=>'f?p=&APP_ID.:42:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-pencil'
,p_list_text_01=>'Change the application settings including the name, displayed on the top left of each page, to one of your choosing.  By default, the application name is "&APP_NAME.".'
,p_list_text_02=>'formIcon'
,p_security_scheme=>wwv_flow_api.id(7306165779537991444)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(5362406628874902071)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>'Build Options'
,p_list_item_link_target=>'f?p=&APP_ID.:105:&SESSION.::&DEBUG.:RP:::'
,p_list_item_icon=>'fa-gear'
,p_list_text_01=>'Manage the status of build options. Build options allow application functionality to be included or excluded from an application.  Use build options to factor your application.'
,p_security_scheme=>wwv_flow_api.id(7306165779537991444)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(5362403108967831775)
,p_list_item_display_sequence=>80
,p_list_item_link_text=>'Application Appearance'
,p_list_item_link_target=>'f?p=&APP_ID.:148:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-desktop'
,p_list_text_01=>'Select the color schema and user interface look and feel for all users of this application.'
,p_list_text_02=>'formIcon'
,p_security_scheme=>wwv_flow_api.id(7306165779537991444)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(5362406978274909700)
,p_list_item_display_sequence=>90
,p_list_item_link_text=>'Sample Data'
,p_list_item_link_target=>'f?p=&APP_ID.:149:&SESSION.::&DEBUG.:RP:::'
,p_list_item_icon=>'fa-database'
,p_list_text_01=>'This application ships with sample data. You can remove or recreate sample data using this administrative page.'
,p_translate_list_text_y_n=>'Y'
,p_security_scheme=>wwv_flow_api.id(7306165779537991444)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.component_end;
end;
/
