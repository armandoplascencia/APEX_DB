prompt --application/shared_components/navigation/lists/project_actions
begin
--   Manifest
--     LIST: Project Actions
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
 p_id=>wwv_flow_api.id(6804550523971443169)
,p_name=>'Project Actions'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(6804550710076443177)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Perma Link'
,p_list_item_link_target=>'f?p=&APP_ID.:200:&SESSION.::&DEBUG.:200:P200_ID:&P200_ID.:'
,p_list_item_icon=>'fa-bookmark'
,p_required_patch=>wwv_flow_api.id(12648622320418922722)
,p_list_item_current_type=>'NEVER'
,p_list_item_current_for_pages=>'f?p=&APP_ID.:200:&APP_SESSION.:::200:P200_ID:&P200_ID.'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(6804551016369443181)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Email'
,p_list_item_link_target=>'f?p=&APP_ID.:20:&SESSION.::&DEBUG.:20:P20_ID:&P200_ID.:'
,p_list_item_icon=>'fa-envelope-o'
,p_list_item_current_type=>'NEVER'
,p_list_item_current_for_pages=>'f?p=&APP_ID.:20:&APP_SESSION.:::20:P20_ID:&P200_ID.'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(6804551334247443181)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Merge'
,p_list_item_link_target=>'f?p=&APP_ID.:54:&SESSION.::&DEBUG.:RP,54:P54_PRIMARY_PROJECT:&P200_ID.:'
,p_list_item_icon=>'fa-angle-double-right'
,p_list_item_disp_cond_type=>'EXPRESSION'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'eba_proj_fw.is_edit_authorized(',
'    p_username   => upper(:APP_USER),',
'    p_project_id => :P200_ID ) = ''Y'''))
,p_list_item_disp_condition2=>'PLSQL'
,p_required_patch=>wwv_flow_api.id(12648625558040011725)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.component_end;
end;
/
