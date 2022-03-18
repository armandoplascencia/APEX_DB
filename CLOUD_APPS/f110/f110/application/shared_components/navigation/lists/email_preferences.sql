prompt --application/shared_components/navigation/lists/email_preferences
begin
--   Manifest
--     LIST: Email Preferences
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>110
,p_default_id_offset=>101599614921830918
,p_default_owner=>'MISO'
);
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(14004420498844224198)
,p_name=>'Email Preferences'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(14006121495674047252)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Default Email Addresses'
,p_list_item_link_target=>'f?p=&APP_ID.:58:&SESSION.::&DEBUG.:RP:::'
,p_list_item_icon=>'fa-user'
,p_list_text_01=>'Configure the application''s default "From" and "Reply To" email addresses.'
,p_list_text_02=>'formIcon'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(14006138685986592607)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Email History'
,p_list_item_link_target=>'f?p=&APP_ID.:59:&SESSION.::&DEBUG.:RP:::'
,p_list_item_icon=>'fa-envelope-search'
,p_list_text_01=>'Review previous emails that have been sent via this application.'
,p_list_text_02=>'reportIcon'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(14058283079056797014)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Opt Out User List'
,p_list_item_link_target=>'f?p=&APP_ID.:34:&SESSION.::&DEBUG.:RP:::'
,p_list_item_icon=>'fa-envelope-user'
,p_list_text_01=>'List of users that have opted out of receiving emails from &APPLICATION_TITLE..  Users can be removed and added by administrators.'
,p_list_text_02=>'formIcon'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.component_end;
end;
/
