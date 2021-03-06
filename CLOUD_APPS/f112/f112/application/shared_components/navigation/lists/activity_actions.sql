prompt --application/shared_components/navigation/lists/activity_actions
begin
--   Manifest
--     LIST: Activity Actions
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
 p_id=>wwv_flow_api.id(18274232922592238730)
,p_name=>'Activity Actions'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(18274235890854238739)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'Add Attachment'
,p_list_item_link_target=>'f?p=&APP_ID.:114:&SESSION.::&DEBUG.:114:P114_ACTIVITY_ID:&P145_ID.:'
,p_list_item_icon=>'fa-paperclip'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.component_end;
end;
/
