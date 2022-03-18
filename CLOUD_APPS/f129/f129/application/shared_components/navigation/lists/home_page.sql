prompt --application/shared_components/navigation/lists/home_page
begin
--   Manifest
--     LIST: Home Page
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>129
,p_default_id_offset=>101668256384016436
,p_default_owner=>'MISO'
);
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(161991022707654659)
,p_name=>'Home Page'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(161991585646654660)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Oracle on Github'
,p_list_item_link_target=>'f?p=&APP_ID.:221:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-github'
,p_list_item_disp_cond_type=>'EXISTS'
,p_list_item_disp_condition=>'select 1 from eba_restdemo_sample_urls where name = ''Github API'' and last_status = ''OK'''
,p_list_text_01=>'Report on Oracle''s Github repositories, and their details like Issues, Commits or Pull Requests. See data visualized as Classic or Interactive Reports, in a Cards layout, as a Calendar or as a JET Chart.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(161992019923654660)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Web Sources and PL/SQL'
,p_list_item_link_target=>'f?p=&APP_ID.:223:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-wrench'
,p_list_item_disp_cond_type=>'EXISTS'
,p_list_item_disp_condition=>'select 1 from eba_restdemo_sample_urls where name = ''Github API'' and last_status = ''OK'''
,p_list_text_01=>'See how a Web Source Module is being programmatically accessed with PL/SQL.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(176200583606253342)
,p_list_item_display_sequence=>35
,p_list_item_link_text=>'Combine with local data'
,p_list_item_link_target=>'f?p=&APP_ID.:224:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-table-plus'
,p_list_item_disp_cond_type=>'EXISTS'
,p_list_item_disp_condition=>'select 1 from eba_restdemo_sample_urls where name = ''Github API'' and last_status = ''OK'''
,p_list_text_01=>'Use a <em>Post Processing SQL Query</em> in order to join local table data to the Web Source response.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(162148714740182669)
,p_list_item_display_sequence=>37
,p_list_item_link_text=>'Test Service Endpoint'
,p_list_item_link_target=>'f?p=&APP_ID.:301:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-cloud-check'
,p_list_text_01=>'Test, whether Application Express can access the REST Service endpoints being used in this application.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(162117955432123764)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Manual PL/SQL Coding'
,p_list_item_link_target=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-file-sql'
,p_list_item_disp_cond_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_list_item_disp_condition=>'SAMPLE_SERVICE_AVAILABLE'
,p_list_item_disp_condition2=>'OK'
,p_list_text_01=>'Explore how to manually access a REST service manually with the APEX_WEB_SERVICE and SQL/JSON parsing functions.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.component_end;
end;
/
