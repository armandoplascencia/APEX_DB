prompt --application/shared_components/navigation/lists/data_load_wizard_progress_brink_menu_data
begin
--   Manifest
--     LIST: Data Load Wizard Progress - BRINK_MENU_DATA
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>100
,p_default_id_offset=>0
,p_default_owner=>'MISO'
);
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(95972030837337129)
,p_name=>'Data Load Wizard Progress - BRINK_MENU_DATA'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(95972468700337130)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'BRINK_MENU_DATA_Data Load Source'
,p_list_item_link_target=>'f?p=&APP_ID.:30:&APP_SESSION.::&DEBUG.:::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(95972802543337131)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'BRINK_MENU_DATA_Data Data / Table Mapping'
,p_list_item_link_target=>'f?p=&APP_ID.:31:&APP_SESSION.::&DEBUG.:::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(95973263570337131)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'BRINK_MENU_DATA_Data Data Validation'
,p_list_item_link_target=>'f?p=&APP_ID.:32:&APP_SESSION.::&DEBUG.:::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(95973621459337132)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'BRINK_MENU_DATA_Data Data Load Results'
,p_list_item_link_target=>'f?p=&APP_ID.:33:&APP_SESSION.::&DEBUG.:::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.component_end;
end;
/
