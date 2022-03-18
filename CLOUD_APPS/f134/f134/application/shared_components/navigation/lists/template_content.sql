prompt --application/shared_components/navigation/lists/template_content
begin
--   Manifest
--     LIST: Template Content
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
 p_id=>wwv_flow_api.id(13729872097165085669)
,p_name=>'Template Content'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(13729873014503085674)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Add Milestone'
,p_list_item_link_target=>'f?p=&APP_ID.:181:&SESSION.::&DEBUG.:RP,181:P181_TEMPLATE_ID:&P184_ID.:'
,p_list_item_icon=>'fa-calendar'
,p_security_scheme=>wwv_flow_api.id(7306165779537991444)
,p_required_patch=>wwv_flow_api.id(11865439575942748770)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(13729873439619085674)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Add Action Item'
,p_list_item_link_target=>'f?p=&APP_ID.:183:&SESSION.::&DEBUG.:RP,183:P183_TEMPLATE_ID:&P184_ID.:'
,p_list_item_icon=>'fa-check-circle-o'
,p_security_scheme=>wwv_flow_api.id(7306165779537991444)
,p_required_patch=>wwv_flow_api.id(11865457074067664047)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.component_end;
end;
/
