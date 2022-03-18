prompt --application/shared_components/navigation/lists/event_actions
begin
--   Manifest
--     LIST: Event Actions
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
 p_id=>wwv_flow_api.id(2277068861002660778)
,p_name=>'Event Actions'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(2277069035871660788)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Add Link'
,p_list_item_link_target=>'javascript:openModal(''edit_link_modal'');'
,p_list_item_icon=>'fa-external-link'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(2277069517389660802)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Attach File'
,p_list_item_link_target=>'f?p=&APP_ID.:32:&SESSION.::&DEBUG.:32:P32_EVENT_ID:&P3_EVENT_ID.:'
,p_list_item_icon=>'fa-paperclip'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(2277069882520660802)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Add Update'
,p_list_item_link_target=>'f?p=&APP_ID.:33:&SESSION.::&DEBUG.:33:P33_EVENT_ID:&P3_EVENT_ID.:'
,p_list_item_icon=>'fa-comment-o'
,p_required_patch=>wwv_flow_api.id(1760476393448857035)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.component_end;
end;
/
