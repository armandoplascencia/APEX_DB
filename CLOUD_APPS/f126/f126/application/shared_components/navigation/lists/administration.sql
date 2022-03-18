prompt --application/shared_components/navigation/lists/administration
begin
--   Manifest
--     LIST: Administration
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>126
,p_default_id_offset=>101651461840938715
,p_default_owner=>'MISO'
);
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(3336595173724141354)
,p_name=>'Administration'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(1938798976496629400)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Calendars'
,p_list_item_link_target=>'f?p=&APP_ID.:42:&SESSION.::&DEBUG.:RP:::'
,p_list_item_icon=>'fa-calendar'
,p_list_text_01=>'Maintain the different calendars available to enter events against.'
,p_security_scheme=>wwv_flow_api.id(3336588467926114584)
,p_required_patch=>wwv_flow_api.id(1938766493817367015)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(3336595448507141354)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Event Types'
,p_list_item_link_target=>'f?p=&APP_ID.:7:&SESSION.::&DEBUG.:RP:::'
,p_list_item_icon=>'fa-align-left'
,p_list_text_01=>'Maintain the different types of events available. Examples: meeting, conference, etc.'
,p_list_text_02=>'formIcon'
,p_security_scheme=>wwv_flow_api.id(3336588467926114584)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(1408575964059286656)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Rename Application'
,p_list_item_link_target=>'f?p=&APP_ID.:37:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-tag'
,p_list_text_01=>'Change the application name, displayed on the top left of each page, to one of your choosing.  By default, the application name is "&APP_NAME.".'
,p_list_text_02=>'formIcon'
,p_security_scheme=>wwv_flow_api.id(3336588467926114584)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(2063961996625965335)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Manage Sample Data'
,p_list_item_link_target=>'f?p=&APP_ID.:43:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-database'
,p_list_text_01=>'Create, re-Create or remove sample data distributed with this application.'
,p_security_scheme=>wwv_flow_api.id(3336588467926114584)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(3337438961888002289)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Reporting Time Frames'
,p_list_item_link_target=>'f?p=&APP_ID.:23:&SESSION.::&DEBUG.:RP:::'
,p_list_item_icon=>'fa-file-o'
,p_list_text_01=>'For reporting purposes, define different periods, such as fiscal months.'
,p_list_text_02=>'formIcon'
,p_security_scheme=>wwv_flow_api.id(3336588467926114584)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(3337754277116281056)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'Notifications'
,p_list_item_link_target=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-bullhorn'
,p_list_text_01=>'Manage application notifications that can be used to notify users of information.  Notifications can be set up to show within a specific date range.'
,p_list_text_02=>'formIcon'
,p_security_scheme=>wwv_flow_api.id(3336588467926114584)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(3387187268065416192)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>'Application Error Log'
,p_list_item_link_target=>'f?p=&APP_ID.:175:&SESSION.::&DEBUG.:RIR,CIR:::'
,p_list_item_icon=>'fa-alert'
,p_list_text_01=>'Report of all internal errors encountered within the application.'
,p_list_text_02=>'reportIcon'
,p_security_scheme=>wwv_flow_api.id(3336588467926114584)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(1435534777450404107)
,p_list_item_display_sequence=>80
,p_list_item_link_text=>'Time Zone'
,p_list_item_link_target=>'f?p=&APP_ID.:100:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-globe'
,p_list_item_disp_cond_type=>'NEVER'
,p_list_text_01=>'Set my time zone preference for this application.'
,p_list_text_02=>'formIcon'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(1398771748703921640)
,p_list_item_display_sequence=>90
,p_list_item_link_text=>'Page Privileges'
,p_list_item_link_target=>'f?p=&APP_ID.:35:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-file-o'
,p_list_item_disp_cond_type=>'NEVER'
,p_list_text_01=>'Report of the pages within this application and their corresponding access control security level.'
,p_list_text_02=>'reportIcon'
,p_security_scheme=>wwv_flow_api.id(3336588467926114584)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(1919806187374011393)
,p_list_item_display_sequence=>100
,p_list_item_link_text=>'Application Appearance'
,p_list_item_link_target=>'f?p=&APP_ID.:41:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-desktop'
,p_list_text_01=>'Change user interface theme style for all users.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(1756412137210203223)
,p_list_item_display_sequence=>110
,p_list_item_link_text=>'Build Options'
,p_list_item_link_target=>'f?p=&APP_ID.:40:&SESSION.::&DEBUG.:RP:::'
,p_list_item_icon=>'fa-gear'
,p_list_text_01=>'Manage the status of build options. Build options allow application functionality to be included or excluded from an application.  Use build options to factor your application.'
,p_security_scheme=>wwv_flow_api.id(3336588467926114584)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.component_end;
end;
/
