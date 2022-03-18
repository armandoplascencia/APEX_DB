prompt --application/shared_components/navigation/lists/create_project_wizard_train
begin
--   Manifest
--     LIST: Create Project Wizard Train
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
 p_id=>wwv_flow_api.id(11676590063018682874)
,p_name=>'Create Project Wizard Train'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(11676590271560682880)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Project'
,p_list_item_link_target=>'f?p=&APP_ID.:300:&SESSION.:'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(11676590669373682881)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Access'
,p_list_item_link_target=>'f?p=&APP_ID.:301:&SESSION.:'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(11676591027621682882)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Details'
,p_list_item_link_target=>'f?p=&APP_ID.:302:&SESSION.:'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(11676591448723682882)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Confirmation'
,p_list_item_link_target=>'f?p=&APP_ID.:303:&SESSION.:'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.component_end;
end;
/
