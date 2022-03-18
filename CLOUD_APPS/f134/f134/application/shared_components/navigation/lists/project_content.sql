prompt --application/shared_components/navigation/lists/project_content
begin
--   Manifest
--     LIST: Project Content
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
 p_id=>wwv_flow_api.id(6172793405258954611)
,p_name=>'Project Content'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(25556383900777907900)
,p_list_item_display_sequence=>1
,p_list_item_link_text=>'Email'
,p_list_item_link_target=>'f?p=&APP_ID.:20:&SESSION.::&DEBUG.:20:P20_ID:&P200_ID.:'
,p_list_item_icon=>'fa-envelope-o'
,p_list_item_current_type=>'NEVER'
,p_list_item_current_for_pages=>'f?p=&APP_ID.:20:&APP_SESSION.:::20:P20_ID:&P200_ID.'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(12153327997952434445)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Add Person'
,p_list_item_link_target=>'f?p=&APP_ID.:150:&SESSION.::&DEBUG.:150:P150_PROJECT_ID:&P200_ID.:'
,p_list_item_icon=>'fa-user'
,p_list_item_disp_cond_type=>'EXPRESSION'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'eba_proj_fw.is_edit_authorized(',
'    p_username   => upper(:APP_USER),',
'    p_project_id => :P200_ID,',
'    p_min_auth   => 3 ) = ''Y'''))
,p_list_item_disp_condition2=>'PLSQL'
,p_security_scheme=>wwv_flow_api.id(7306166303644991446)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(18989307420199311990)
,p_list_item_display_sequence=>15
,p_list_item_link_text=>'Add Country'
,p_list_item_link_target=>'f?p=&APP_ID.:210:&SESSION.::&DEBUG.:210:P210_PROJECT_ID:&P200_ID.:'
,p_list_item_icon=>'fa-globe'
,p_list_item_disp_cond_type=>'EXPRESSION'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'eba_proj_fw.is_edit_authorized(',
'    p_username   => upper(:APP_USER),',
'    p_project_id => :P200_ID,',
'    p_min_auth   => 2 ) = ''Y'''))
,p_list_item_disp_condition2=>'PLSQL'
,p_security_scheme=>wwv_flow_api.id(7306166303644991446)
,p_required_patch=>wwv_flow_api.id(18990974587291614877)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(7673260409624980020)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Add Issue'
,p_list_item_link_target=>'f?p=&APP_ID.:24:&SESSION.::&DEBUG.:RP,24:P24_PROJECT_ID:&P200_ID.:'
,p_list_item_icon=>'fa-flag-o'
,p_security_scheme=>wwv_flow_api.id(7306166303644991446)
,p_required_patch=>wwv_flow_api.id(7672710716776835218)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(12130294655818815972)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Add Resource'
,p_list_item_link_target=>'f?p=&APP_ID.:170:&SESSION.::&DEBUG.:170:P170_PROJECT_ID:&P200_ID.:'
,p_list_item_icon=>'fa-archive'
,p_security_scheme=>wwv_flow_api.id(7306166303644991446)
,p_required_patch=>wwv_flow_api.id(12130127162343753660)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(6172794189303954621)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Add Milestone'
,p_list_item_link_target=>'f?p=&APP_ID.:48:&SESSION.::&DEBUG.:RP,48:P48_PROJECT_ID,LAST_VIEW:&P200_ID.,200:'
,p_list_item_icon=>'fa-calendar'
,p_list_item_disp_cond_type=>'EXPRESSION'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'eba_proj_fw.are_ms_ai_restricted(',
'    p_application_id => :APP_ID,',
'    p_username   => upper(:APP_USER),',
'    p_project_id => :P200_ID ) = ''N'''))
,p_list_item_disp_condition2=>'PLSQL'
,p_security_scheme=>wwv_flow_api.id(7306166303644991446)
,p_required_patch=>wwv_flow_api.id(11865439575942748770)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(6172794510458954621)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Add Action Item'
,p_list_item_link_target=>'f?p=&APP_ID.:73:&SESSION.::&DEBUG.:RP,73:P73_PROJECT_ID,LAST_VIEW:&P200_ID.,200:'
,p_list_item_icon=>'fa-check-circle-o'
,p_list_item_disp_cond_type=>'EXPRESSION'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'eba_proj_fw.are_ms_ai_restricted(',
'    p_application_id => :APP_ID,',
'    p_username   => upper(:APP_USER),',
'    p_project_id => :P200_ID ) = ''N'''))
,p_list_item_disp_condition2=>'PLSQL'
,p_security_scheme=>wwv_flow_api.id(7306166303644991446)
,p_required_patch=>wwv_flow_api.id(11865457074067664047)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(6172793892233954621)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'Add Link'
,p_list_item_link_target=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.:RP,3:P3_PROJECT_ID:&P200_ID.:'
,p_list_item_icon=>'fa-external-link'
,p_security_scheme=>wwv_flow_api.id(7306166303644991446)
,p_required_patch=>wwv_flow_api.id(11865509704474723851)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(6172801896718056973)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>'Attach File'
,p_list_item_link_target=>'f?p=&APP_ID.:43:&SESSION.::&DEBUG.:43:P43_PROJECT_ID:&P200_ID.:'
,p_list_item_icon=>'fa-paperclip'
,p_security_scheme=>wwv_flow_api.id(7306166303644991446)
,p_required_patch=>wwv_flow_api.id(11865439785610750633)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(6172793603175954615)
,p_list_item_display_sequence=>80
,p_list_item_link_text=>'Add Update'
,p_list_item_link_target=>'f?p=&APP_ID.:12:&SESSION.::&DEBUG.:12:P12_PROJECT_ID:&P200_ID.:'
,p_list_item_icon=>'fa-comment-o'
,p_security_scheme=>wwv_flow_api.id(7306166303644991446)
,p_required_patch=>wwv_flow_api.id(11865461959584682542)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(6805638469231798871)
,p_list_item_display_sequence=>90
,p_list_item_link_text=>'Add Status Report'
,p_list_item_link_target=>'f?p=&APP_ID.:116:&SESSION.::&DEBUG.:116:P116_PROJECT_ID,LAST_VIEW:&P200_ID.,200,200:'
,p_list_item_icon=>'fa-file-plus'
,p_security_scheme=>wwv_flow_api.id(7306166303644991446)
,p_required_patch=>wwv_flow_api.id(6195737494730111919)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(25556383594484907896)
,p_list_item_display_sequence=>95
,p_list_item_link_text=>'Perma Link'
,p_list_item_link_target=>'f?p=&APP_ID.:200:&SESSION.::&DEBUG.:200:P200_ID:&P200_ID.:'
,p_list_item_icon=>'fa-bookmark'
,p_required_patch=>wwv_flow_api.id(12648622320418922722)
,p_list_item_current_type=>'NEVER'
,p_list_item_current_for_pages=>'f?p=&APP_ID.:200:&APP_SESSION.:::200:P200_ID:&P200_ID.'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(25556384218655907900)
,p_list_item_display_sequence=>100
,p_list_item_link_text=>'Merge'
,p_list_item_link_target=>'f?p=&APP_ID.:54:&SESSION.::&DEBUG.:RP,54:P54_PRIMARY_PROJECT:&P200_ID.:'
,p_list_item_icon=>'fa-copy'
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
