prompt --application/shared_components/navigation/lists/preferences
begin
--   Manifest
--     LIST: Preferences
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>112
,p_default_id_offset=>101618418936909290
,p_default_owner=>'MISO'
);
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(14973794009123529272)
,p_name=>'Preferences'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(14973794194429529274)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Time Zone'
,p_list_item_link_target=>'f?p=&APP_ID.:76:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-globe'
,p_list_text_01=>'Set my time zone preference for this application.'
,p_list_text_02=>'switchIcon'
,p_list_text_03=>'&TZ.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.component_end;
end;
/
