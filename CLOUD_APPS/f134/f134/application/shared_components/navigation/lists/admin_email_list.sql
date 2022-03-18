prompt --application/shared_components/navigation/lists/admin_email_list
begin
--   Manifest
--     LIST: admin email list
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
 p_id=>wwv_flow_api.id(11932395367027478681)
,p_name=>'admin email list'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(19594565545945303002)
,p_list_item_display_sequence=>5
,p_list_item_link_text=>'Email Preferences'
,p_list_item_link_target=>'f?p=&APP_ID.:110:&SESSION.::&DEBUG.:110:::'
,p_list_item_icon=>'fa-envelope-o'
,p_list_text_01=>'Set the default message header, footer, and body text as well as the verbosity level of the Project Status Emails'' "Risks" section.'
,p_security_scheme=>wwv_flow_api.id(7306165779537991444)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(11932395568856478684)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Email Past Due Deliverables'
,p_list_item_link_target=>'f?p=&APP_ID.:100:&SESSION.::&DEBUG.:RP,100:::'
,p_list_item_icon=>'fa-envelope-o'
,p_list_text_01=>'Send per-user email reminders of past due action items and milestones.  '
,p_security_scheme=>wwv_flow_api.id(7306165779537991444)
,p_required_patch=>wwv_flow_api.id(11985127837396710533)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(12093392769055417603)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Automate Sending Past Due Deliverables Emails'
,p_list_item_link_target=>'f?p=&APP_ID.:163:&SESSION.::&DEBUG.:RP,163:::'
,p_list_item_icon=>'fa-cogs'
,p_list_text_01=>'Enable/Disable the database job that automatically sends these emails out on a daily basis.'
,p_security_scheme=>wwv_flow_api.id(7306165779537991444)
,p_required_patch=>wwv_flow_api.id(11985127837396710533)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(11997328173298030795)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Email Upcoming Deliverables'
,p_list_item_link_target=>'f?p=&APP_ID.:180:&SESSION.::&DEBUG.:RP,180:::'
,p_list_item_icon=>'fa-envelope-o'
,p_list_text_01=>'Send per-user email reminders of upcoming action items and milestones.  '
,p_security_scheme=>wwv_flow_api.id(7306165779537991444)
,p_required_patch=>wwv_flow_api.id(11997357717598129643)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(12093393100300417608)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Automate Sending Upcoming Deliverables Emails'
,p_list_item_link_target=>'f?p=&APP_ID.:167:&SESSION.::&DEBUG.:RP,167:::'
,p_list_item_icon=>'fa-cogs'
,p_list_text_01=>'Enable/Disable the database job that automatically sends these emails out on a daily basis.'
,p_security_scheme=>wwv_flow_api.id(7306165779537991444)
,p_required_patch=>wwv_flow_api.id(11997357717598129643)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(16167881001601511729)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Email Project Details'
,p_list_item_link_target=>'f?p=&APP_ID.:196:&SESSION.::&DEBUG.:196:::'
,p_list_item_icon=>'fa-envelope-o'
,p_list_text_01=>'Send project details emails out to all project members for one project or for all projects.'
,p_security_scheme=>wwv_flow_api.id(7306165779537991444)
,p_required_patch=>wwv_flow_api.id(15873378907956721107)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(16167918086104581150)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'Automate Sending Project Details Emails'
,p_list_item_link_target=>'f?p=&APP_ID.:197:&SESSION.::&DEBUG.:197:::'
,p_list_item_icon=>'fa-cogs'
,p_list_text_01=>'Enable/Disable the database job that sends project details emails.'
,p_security_scheme=>wwv_flow_api.id(7306165779537991444)
,p_required_patch=>wwv_flow_api.id(15873378907956721107)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(18632697628522592112)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>'Email Project Statuses'
,p_list_item_link_target=>'f?p=&APP_ID.:131:&SESSION.::&DEBUG.:131:::'
,p_list_item_icon=>'fa-envelope-o'
,p_list_text_01=>'Send project status emails out to all project members for one project or for all projects.'
,p_security_scheme=>wwv_flow_api.id(7306165779537991444)
,p_required_patch=>wwv_flow_api.id(18632926167418630398)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(18632698062435592113)
,p_list_item_display_sequence=>80
,p_list_item_link_text=>'Automate Sending Project Status Emails'
,p_list_item_link_target=>'f?p=&APP_ID.:134:&SESSION.::&DEBUG.:134:::'
,p_list_item_icon=>'fa-gears'
,p_list_text_01=>'Enable/Disable the database job that sends project status emails.'
,p_security_scheme=>wwv_flow_api.id(7306165779537991444)
,p_required_patch=>wwv_flow_api.id(18632926167418630398)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(11932770667280564646)
,p_list_item_display_sequence=>90
,p_list_item_link_text=>'Email Log'
,p_list_item_link_target=>'f?p=&APP_ID.:56:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-envelope-o'
,p_list_text_01=>'Show emails sent from this system.'
,p_security_scheme=>wwv_flow_api.id(7306165779537991444)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(4054886900713380000)
,p_list_item_display_sequence=>100
,p_list_item_link_text=>'Ingest Log'
,p_list_item_link_target=>'f?p=&APP_ID.:39:&SESSION.::&DEBUG.:39:::'
,p_list_item_icon=>'fa-table'
,p_list_text_01=>'Review ingest entries from email parser.'
,p_list_text_03=>'&CNT_06.'
,p_security_scheme=>wwv_flow_api.id(7306165779537991444)
,p_required_patch=>wwv_flow_api.id(6964173191422663655)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.component_end;
end;
/
