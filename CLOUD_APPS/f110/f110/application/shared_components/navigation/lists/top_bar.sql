prompt --application/shared_components/navigation/lists/top_bar
begin
--   Manifest
--     LIST: Top Bar
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
 p_id=>wwv_flow_api.id(14035848097356437574)
,p_name=>'Top Bar'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(329845163069796744)
,p_list_item_display_sequence=>5
,p_list_item_link_text=>'Home'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-home'
,p_list_item_disp_cond_type=>'CURRENT_PAGE_NOT_IN_CONDITION'
,p_list_item_disp_condition=>'14,50,51,57,67'
,p_list_text_02=>'icon-only'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(14784267557756909690)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'&APP_USER.'
,p_list_item_link_target=>'#'
,p_list_item_icon=>'a-Icon icon-user'
,p_list_item_disp_cond_type=>'CURRENT_PAGE_NOT_IN_CONDITION'
,p_list_item_disp_condition=>'14,51,57'
,p_list_text_02=>'has-username'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(29831975176706241265)
,p_list_item_display_sequence=>25
,p_list_item_link_text=>'Communities'
,p_list_item_link_target=>'f?p=&APP_ID.:9:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-users'
,p_list_item_disp_cond_type=>'CURRENT_PAGE_NOT_IN_CONDITION'
,p_list_item_disp_condition=>'9,14,50,51,63,68,69,90'
,p_parent_list_item_id=>wwv_flow_api.id(14784267557756909690)
,p_security_scheme=>wwv_flow_api.id(250464227793234829)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(29828078929116944107)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Administration'
,p_list_item_link_target=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.:::.:'
,p_list_item_icon=>'fa-gear'
,p_list_item_disp_cond_type=>'CURRENT_PAGE_NOT_IN_CONDITION'
,p_list_item_disp_condition=>'14,50,51,63,68,69,90'
,p_parent_list_item_id=>wwv_flow_api.id(14784267557756909690)
,p_security_scheme=>wwv_flow_api.id(250463977822234829)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(307811882786654582)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'About'
,p_list_item_link_target=>'f?p=&APP_ID.:39:&SESSION.::&DEBUG.:39:::'
,p_list_item_icon=>'fa-info-circle-o'
,p_list_item_disp_cond_type=>'CURRENT_PAGE_NOT_IN_CONDITION'
,p_list_item_disp_condition=>'39,50,63,68'
,p_parent_list_item_id=>wwv_flow_api.id(14784267557756909690)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(14784267814703915646)
,p_list_item_display_sequence=>100
,p_list_item_link_text=>'Sign Out'
,p_list_item_link_target=>'&LOGOUT_URL.'
,p_list_item_icon=>'fa-power-off'
,p_parent_list_item_id=>wwv_flow_api.id(14784267557756909690)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.component_end;
end;
/
