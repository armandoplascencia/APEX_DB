prompt --application/shared_components/navigation/lists/navigation
begin
--   Manifest
--     LIST: Navigation
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
 p_id=>wwv_flow_api.id(5859271792806287209)
,p_name=>'Navigation'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(5859271991435287214)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Administration'
,p_list_item_link_target=>'f?p=&APP_ID.:settings:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'settings'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(5859272295861287222)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Mobile'
,p_list_item_link_target=>'f?p=&APP_ID.:mobile:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'mobile'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(5859272597601287222)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Help'
,p_list_item_link_target=>'f?p=&APP_ID.:help:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'help'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.component_end;
end;
/
