prompt --application/shared_components/navigation/lists/administrative_logs
begin
--   Manifest
--     LIST: Administrative Logs
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
 p_id=>wwv_flow_api.id(18835743370298469701)
,p_name=>'Administrative Logs'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(18835743512352469704)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Application Error Log'
,p_list_item_link_target=>'f?p=&APP_ID.:175:&SESSION.::&DEBUG.:RP,RIR,CIR:::'
,p_list_item_icon=>'fa-alert'
,p_list_text_01=>'Report of all internal errors encountered within the application.'
,p_list_text_02=>'reportIcon'
,p_list_text_03=>'&CNT_08.'
,p_security_scheme=>wwv_flow_api.id(15775842108167638827)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(18835744036496469708)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Application Email Log'
,p_list_item_link_target=>'f?p=&APP_ID.:121:&SESSION.::&DEBUG.:RP,RIR,CIR:::'
,p_list_item_icon=>'fa-envelope-o'
,p_list_text_01=>'Report of all emails sent from the application.'
,p_security_scheme=>wwv_flow_api.id(15775842108167638827)
,p_required_patch=>wwv_flow_api.id(18831429921399487739)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.component_end;
end;
/
