prompt --application/shared_components/navigation/lists/admin_options
begin
--   Manifest
--     LIST: admin options
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>123
,p_default_id_offset=>111717178695017138
,p_default_owner=>'MISO'
);
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(3246078478230637817)
,p_name=>'admin options'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(3246078674964637822)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Reset Data'
,p_list_item_link_target=>'f?p=&APP_ID.:39:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-refresh'
,p_list_text_01=>'This application uses the sample EBA_RESTDEMO_SAMPLE_EMP to store local data, use this link to purge it.'
,p_list_text_02=>'formIcon'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(4054576644821753883)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Theme Style'
,p_list_item_link_target=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-desktop'
,p_list_text_01=>'Change user interface theme style for all users.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(172159920374086446)
,p_list_item_display_sequence=>25
,p_list_item_link_text=>'Test Service Endpoint'
,p_list_item_link_target=>'f?p=&APP_ID.:301:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-cloud-check'
,p_list_text_01=>'Test, whether Application Express can access the REST Service endpoints being used in this application.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(1939094504792590030)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Set REST Endpoint for the "Manual PL/SQL Example"'
,p_list_item_link_target=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-cloud-cursor'
,p_list_text_01=>'Manually set the URL of the Example REST Service endpoint. Use this when the example REST service runs in another workspace or another machine.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.component_end;
end;
/
