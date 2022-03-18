prompt --application/shared_components/navigation/lists/code_tables
begin
--   Manifest
--     LIST: Code Tables
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
 p_id=>wwv_flow_api.id(16789116666420250912)
,p_name=>'Code Tables'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(16233699911608157166)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Notifications'
,p_list_item_link_target=>'f?p=&APP_ID.:30:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-tag'
,p_list_text_01=>'Manage notification messages displayed on the home page of this application.  Use notifications to alert application users of important information.'
,p_list_text_02=>'&P4_NOTIFICATION_CNT.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(14613117420507366546)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Rename Application'
,p_list_item_link_target=>'f?p=&APP_ID.:8:&SESSION.::&DEBUG.:RP:::'
,p_list_item_icon=>'fa-pencil'
,p_list_text_01=>'Change the application name, displayed on the top left of each page, to one of your choosing.  By default, the application name is "&APP_NAME.".'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(15057270309801731559)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Manage Sample Data'
,p_list_item_link_target=>'f?p=&APP_ID.:32:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-database'
,p_list_text_01=>'This application ships with sample data. You can remove or recreate sample data using this administrative page.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(14093501084709319522)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Build Options'
,p_list_item_link_target=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:RP:::'
,p_list_item_icon=>'fa-gear'
,p_list_item_disp_cond_type=>'EXISTS'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'  from apex_application_build_options',
' where application_id = :APP_ID'))
,p_list_text_01=>'Manage the status of build options. Build options allow application functionality to be included or excluded from an application.  Use build options to factor your application.'
,p_list_text_02=>'&P4_BUILD_OPTION_CNT.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(14132072299374456896)
,p_list_item_display_sequence=>80
,p_list_item_link_text=>'Remove Extraneous Characters'
,p_list_item_link_target=>'f?p=&APP_ID.:15:&SESSION.::&DEBUG.:15:::'
,p_list_item_icon=>'fa-gear'
,p_list_text_01=>'Allows the removal of leading, non-displayed characters from Respondent email addresses.'
,p_required_patch=>wwv_flow_api.id(14132071685799448031)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(14915015412559414045)
,p_list_item_display_sequence=>90
,p_list_item_link_text=>'Theme Style'
,p_list_item_link_target=>'f?p=&APP_ID.:20:&SESSION.::&DEBUG.:RP:::'
,p_list_item_icon=>'fa-desktop'
,p_list_text_01=>'Set application user interface theme style for all users.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.component_end;
end;
/
