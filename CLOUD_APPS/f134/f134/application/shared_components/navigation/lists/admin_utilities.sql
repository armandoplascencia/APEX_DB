prompt --application/shared_components/navigation/lists/admin_utilities
begin
--   Manifest
--     LIST: Admin Utilities
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
 p_id=>wwv_flow_api.id(5994304690377747409)
,p_name=>'Admin Utilities'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(5994305804469747417)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Status Update Types'
,p_list_item_link_target=>'f?p=&APP_ID.:81:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-pencil'
,p_list_text_01=>'Status updates are classified as a "type of update".  Use this interface to manage the list of available status update types.'
,p_list_text_02=>'formIcon'
,p_security_scheme=>wwv_flow_api.id(7306165779537991444)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(5994306110809747417)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Action Item Types'
,p_list_item_link_target=>'f?p=&APP_ID.:69:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-pencil'
,p_list_text_01=>'Each action item can be of a particular type.  Use this to manage the list of available types.'
,p_list_text_02=>'formIcon'
,p_list_text_03=>'Action Item Types'
,p_security_scheme=>wwv_flow_api.id(7306165779537991444)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(5994307885521747420)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Rename Application'
,p_list_item_link_target=>'f?p=&APP_ID.:42:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-pencil'
,p_list_text_01=>'Change the application name, displayed on the top left of each page, to one of your choosing.  By default, the application name is "&APP_NAME.".'
,p_list_text_02=>'formIcon'
,p_security_scheme=>wwv_flow_api.id(7306165779537991444)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(7096905796409537953)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Theme Style'
,p_list_item_link_target=>'f?p=&APP_ID.:148:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-desktop'
,p_list_text_01=>'Select the color schema and user interface look and feel for all users of this application.'
,p_list_text_02=>'formIcon'
,p_security_scheme=>wwv_flow_api.id(7306165779537991444)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(6084528595275023310)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Set outgoing Email preferences'
,p_list_item_link_target=>'f?p=&APP_ID.:110:&SESSION.::&DEBUG.:RP,110:::'
,p_list_item_icon=>'fa-envelope-o'
,p_list_text_01=>'Set the email user from address from which to send messages.'
,p_list_text_02=>'formIcon'
,p_security_scheme=>wwv_flow_api.id(7306165779537991444)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(6173446998735902671)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'Manage validations'
,p_list_item_link_target=>'f?p=&APP_ID.:114:&SESSION.::&DEBUG.:RP:::'
,p_list_item_icon=>'fa-pencil'
,p_list_text_01=>'View all project validations with ability to update and delete validations.'
,p_list_text_02=>'formIcon'
,p_security_scheme=>wwv_flow_api.id(7306165779537991444)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.component_end;
end;
/
