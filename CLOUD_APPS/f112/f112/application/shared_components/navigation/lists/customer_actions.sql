prompt --application/shared_components/navigation/lists/customer_actions
begin
--   Manifest
--     LIST: Customer Actions
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
 p_id=>wwv_flow_api.id(14999810932140129822)
,p_name=>'Customer Actions'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(16963818493085478672)
,p_list_item_display_sequence=>15
,p_list_item_link_text=>'Referenceability'
,p_list_item_link_target=>'f?p=&APP_ID.:96:&SESSION.::&DEBUG.:96:P96_ID:&P50_ID.:'
,p_list_item_icon=>'fa-phone'
,p_security_scheme=>wwv_flow_api.id(16066770301217181173)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(14999811429992129824)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Add Contact'
,p_list_item_link_target=>'f?p=&APP_ID.:37:&SESSION.::&DEBUG.:37:P37_CUSTOMER_ID:&P50_ID.:'
,p_list_item_icon=>'fa-user'
,p_required_patch=>wwv_flow_api.id(15056291296847667269)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(2666260831783307651)
,p_list_item_display_sequence=>22
,p_list_item_link_text=>'Add Issue'
,p_list_item_link_target=>'f?p=&APP_ID.:129:&SESSION.::&DEBUG.:129:P129_CUSTOMER_ID:&P50_ID.:'
,p_list_item_icon=>'fa-alert'
,p_security_scheme=>wwv_flow_api.id(16066770301217181173)
,p_required_patch=>wwv_flow_api.id(2666312778173766103)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(18281471157469941304)
,p_list_item_display_sequence=>25
,p_list_item_link_text=>'Add Activity'
,p_list_item_link_target=>'f?p=&APP_ID.:150:&SESSION.::&DEBUG.:150:P150_CUSTOMER_ID:&P50_ID.:'
,p_list_item_icon=>'fa-newspaper-o'
,p_security_scheme=>wwv_flow_api.id(16066770301217181173)
,p_required_patch=>wwv_flow_api.id(18239047336378534071)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(14999811723290129824)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Add Product(s)'
,p_list_item_link_target=>'f?p=&APP_ID.:68:&SESSION.::&DEBUG.:RP,68,RIR:P68_CUSTOMER_ID:&P50_ID.:'
,p_list_item_icon=>'fa-square-o'
,p_required_patch=>wwv_flow_api.id(15056284008974600818)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(17848871080938625533)
,p_list_item_display_sequence=>35
,p_list_item_link_text=>'Add Partner(s)'
,p_list_item_link_target=>'f?p=&APP_ID.:110:&SESSION.::&DEBUG.:RP,110,RIR:P110_CUSTOMER_ID:&P50_ID.:'
,p_list_item_icon=>'fa-thumbs-o-up'
,p_required_patch=>wwv_flow_api.id(1440121485808683569)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(17851713833597211360)
,p_list_item_display_sequence=>36
,p_list_item_link_text=>'Add Competitor(s)'
,p_list_item_link_target=>'f?p=&APP_ID.:111:&SESSION.::&DEBUG.:RP,111,RIR:P111_CUSTOMER_ID:&P50_ID.:'
,p_list_item_icon=>'fa-emoji-cringe'
,p_security_scheme=>wwv_flow_api.id(1460638553279431008)
,p_required_patch=>wwv_flow_api.id(1436969897904658887)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(14999811968789129824)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Add Update'
,p_list_item_link_target=>'f?p=&APP_ID.:97:&SESSION.::&DEBUG.:97:P97_CUSTOMER_ID:&P50_ID.:'
,p_list_item_icon=>'fa-comment-o'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(14999812333962129825)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Add Link'
,p_list_item_link_target=>'f?p=&APP_ID.:66:&SESSION.::&DEBUG.:66:P66_CUSTOMER_ID:&P50_ID.:'
,p_list_item_icon=>'fa-chain'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(14999814003203137598)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'Add Attachment'
,p_list_item_link_target=>'f?p=&APP_ID.:64:&SESSION.::&DEBUG.:64:P64_CUSTOMER_ID:&P50_ID.:'
,p_list_item_icon=>'fa-paperclip'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.component_end;
end;
/
