prompt --application/shared_components/navigation/lists/admin_email_groups
begin
--   Manifest
--     LIST: Admin Email Groups
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
 p_id=>wwv_flow_api.id(8107650233800776598)
,p_name=>'Admin Email Groups'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(8107651252847782075)
,p_list_item_display_sequence=>5
,p_list_item_link_text=>'Send Email'
,p_list_item_link_target=>'f?p=&APP_ID.:15:&SESSION.::&DEBUG.:15:::'
,p_list_item_icon=>'fa-envelope-o'
,p_list_text_01=>'Send email of events to a group or an individual.'
,p_security_scheme=>wwv_flow_api.id(3336588467926114584)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(8108280832265965335)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Groups'
,p_list_item_link_target=>'f?p=&APP_ID.:16:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-users'
,p_list_text_01=>'Groups are reusable lists of people that you can email a set of events to.'
,p_security_scheme=>wwv_flow_api.id(3336588467926114584)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(8108282143346968542)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Group Members'
,p_list_item_link_target=>'f?p=&APP_ID.:18:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-users'
,p_list_item_disp_cond_type=>'EXISTS'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from EBA_CA_EMAIL_GROUPS'))
,p_list_text_01=>'Report of all members of all groups.  Used for adding members and seeing which groups a person belongs to.'
,p_security_scheme=>wwv_flow_api.id(3336588467926114584)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
);
wwv_flow_api.component_end;
end;
/
