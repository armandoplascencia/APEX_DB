prompt --application/shared_components/navigation/lists/navigation_menu
begin
--   Manifest
--     LIST: Navigation Menu
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>123
,p_default_id_offset=>111717178695017138
,p_default_owner=>'MISO'
);
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(3702342242323423017)
,p_name=>'Navigation Menu'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(1934879358175779084)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Home'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:1:::'
,p_list_item_icon=>'fa-home'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(833643411131809855)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>'Oracle on Github'
,p_list_item_link_target=>'f?p=&APP_ID.:221:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-github'
,p_list_item_disp_cond_type=>'EXISTS'
,p_list_item_disp_condition=>'select 1 from eba_restdemo_sample_urls where name =''Github API'' and last_status = ''OK'''
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'221'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(185846382098526294)
,p_list_item_display_sequence=>75
,p_list_item_link_text=>'Combine with local data'
,p_list_item_link_target=>'f?p=&APP_ID.:224:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-table-plus'
,p_list_item_disp_cond_type=>'EXISTS'
,p_list_item_disp_condition=>'select 1 from eba_restdemo_sample_urls where name =''Github API'' and last_status = ''OK'''
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'224'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(163226933173657163)
,p_list_item_display_sequence=>80
,p_list_item_link_text=>'Web Sources and PL/SQL'
,p_list_item_link_target=>'f?p=&APP_ID.:223:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-code'
,p_list_item_disp_cond_type=>'EXISTS'
,p_list_item_disp_condition=>'select 1 from eba_restdemo_sample_urls where name =''Github API'' and last_status = ''OK'''
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'223'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(833768677590210261)
,p_list_item_display_sequence=>200
,p_list_item_link_text=>'Manual PL/SQL'
,p_list_item_link_target=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-file-sql'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(3748865061509388425)
,p_list_item_display_sequence=>210
,p_list_item_link_text=>'Simple Report'
,p_list_item_link_target=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:2:::'
,p_list_item_disp_cond_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_list_item_disp_condition=>'SAMPLE_SERVICE_AVAILABLE'
,p_list_item_disp_condition2=>'OK'
,p_parent_list_item_id=>wwv_flow_api.id(833768677590210261)
,p_list_text_01=>'Display data from external REST service as a tabular report.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(3748865325857388425)
,p_list_item_display_sequence=>220
,p_list_item_link_text=>'Report with Pagination'
,p_list_item_link_target=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.:3:::'
,p_list_item_disp_cond_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_list_item_disp_condition=>'SAMPLE_SERVICE_AVAILABLE'
,p_list_item_disp_condition2=>'OK'
,p_parent_list_item_id=>wwv_flow_api.id(833768677590210261)
,p_list_text_01=>'Browse through a report displaying larger REST service result sets using pagination.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(3748866304586394130)
,p_list_item_display_sequence=>230
,p_list_item_link_text=>'Report with Query'
,p_list_item_link_target=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.:4:::'
,p_list_item_disp_cond_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_list_item_disp_condition=>'SAMPLE_SERVICE_AVAILABLE'
,p_list_item_disp_condition2=>'OK'
,p_parent_list_item_id=>wwv_flow_api.id(833768677590210261)
,p_list_text_01=>'Display filtered data from external REST service by typing in a query.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(1936420404672265458)
,p_list_item_display_sequence=>240
,p_list_item_link_text=>'Local REST Data'
,p_list_item_link_target=>'f?p=&APP_ID.:11:&SESSION.::&DEBUG.:11:::'
,p_list_item_disp_cond_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_list_item_disp_condition=>'SAMPLE_SERVICE_AVAILABLE'
,p_list_item_disp_condition2=>'OK'
,p_parent_list_item_id=>wwv_flow_api.id(833768677590210261)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'11'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(3731579726802271079)
,p_list_item_display_sequence=>900
,p_list_item_link_text=>'Administration'
,p_list_item_link_target=>'f?p=&APP_ID.:35:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-gear'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'5,35,36,39'
);
wwv_flow_api.component_end;
end;
/
