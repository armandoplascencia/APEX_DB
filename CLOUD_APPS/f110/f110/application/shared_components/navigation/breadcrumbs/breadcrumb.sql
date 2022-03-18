prompt --application/shared_components/navigation/breadcrumbs/breadcrumb
begin
--   Manifest
--     MENU:  Breadcrumb
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>110
,p_default_id_offset=>101599614921830918
,p_default_owner=>'MISO'
);
wwv_flow_api.create_menu(
 p_id=>wwv_flow_api.id(17689949455017337264)
,p_name=>' Breadcrumb'
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(307817100736719175)
,p_parent_id=>0
,p_short_name=>'Advanced Search'
,p_link=>'f?p=&APP_ID.:200:&SESSION.::&DEBUG.:::'
,p_page_id=>200
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(462729387214854545)
,p_parent_id=>0
,p_short_name=>'Detailed Results'
,p_link=>'f?p=&APP_ID.:17:&SESSION.::&DEBUG.:::'
,p_page_id=>17
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(7630105481614614543)
,p_short_name=>'Create Poll'
,p_link=>'f?p=&APP_ID.:19:&SESSION.'
,p_page_id=>19
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(13126287062401094531)
,p_parent_id=>0
,p_short_name=>'Section'
,p_link=>'f?p=&APP_ID.:38:&SESSION.::&DEBUG.:::'
,p_page_id=>38
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(13963963389923763282)
,p_parent_id=>0
,p_short_name=>'&POLL_NAME.'
,p_link=>'f?p=&APP_ID.:100:&SESSION.::&DEBUG.:::'
,p_page_id=>100
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(13964694482396738273)
,p_parent_id=>0
,p_short_name=>'Edit Poll'
,p_link=>'f?p=&APP_ID.:48:&SESSION.::&DEBUG.:::'
,p_page_id=>48
,p_security_scheme=>wwv_flow_api.id(250464227793234829)
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(14004341792393581280)
,p_parent_id=>wwv_flow_api.id(17708514975108179449)
,p_short_name=>'Access Requests'
,p_link=>'f?p=&FLOW_ID.:22:&SESSION.'
,p_page_id=>22
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(14004342777866647617)
,p_parent_id=>wwv_flow_api.id(14004341792393581280)
,p_short_name=>'Access Request Details'
,p_link=>'f?p=&FLOW_ID.:37:&SESSION.'
,p_page_id=>37
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(14004343509871652771)
,p_parent_id=>0
,p_short_name=>'Purge Access Requests'
,p_link=>'f?p=&APP_ID.:49:&SESSION.::&DEBUG.:::'
,p_page_id=>49
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(14006116406536949423)
,p_parent_id=>wwv_flow_api.id(17708514975108179449)
,p_short_name=>'Default Email Addresses'
,p_link=>'f?p=&APP_ID.:58:&SESSION.::&DEBUG.:::'
,p_page_id=>58
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(14006134492374507410)
,p_parent_id=>wwv_flow_api.id(17708514975108179449)
,p_short_name=>'Email History'
,p_link=>'f?p=&APP_ID.:59:&SESSION.'
,p_page_id=>59
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(14008906484457573312)
,p_parent_id=>wwv_flow_api.id(17708514975108179449)
,p_short_name=>'Application User Log'
,p_link=>'f?p=&APP_ID.:60:&SESSION.'
,p_page_id=>60
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(14008921982839996066)
,p_parent_id=>wwv_flow_api.id(17708514975108179449)
,p_short_name=>'Application Log'
,p_link=>'f?p=&APP_ID.:61:&SESSION.'
,p_page_id=>61
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(14019790395660170040)
,p_parent_id=>0
,p_short_name=>'&POLL_NAME.'
,p_link=>'f?p=&APP_ID.:66:&SESSION.::&DEBUG.:::'
,p_page_id=>66
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(14021611107834789331)
,p_parent_id=>0
,p_short_name=>'&POLL_NAME.'
,p_link=>'f?p=&APP_ID.:68:&SESSION.::&DEBUG.:::'
,p_page_id=>68
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(14021892386958665818)
,p_short_name=>'Your Response'
,p_link=>'f?p=&APP_ID.:69:&SESSION.'
,p_page_id=>69
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(14022205892312576051)
,p_parent_id=>0
,p_short_name=>'Add Community / Members'
,p_link=>'f?p=&APP_ID.:70:&SESSION.::&DEBUG.:::'
,p_page_id=>70
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(14022904487088834259)
,p_short_name=>'Community'
,p_link=>'f?p=&APP_ID.:71:&SESSION.::&DEBUG.:::'
,p_page_id=>71
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(14026544484930025301)
,p_parent_id=>wwv_flow_api.id(14085439400249911895)
,p_short_name=>'Invitation Details'
,p_link=>'f?p=&APP_ID.:13:&SESSION.::&DEBUG.:::'
,p_page_id=>13
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(14026802480099812336)
,p_parent_id=>wwv_flow_api.id(14033558079287182622)
,p_short_name=>'Members'
,p_link=>'f?p=&APP_ID.:74:&SESSION.::&DEBUG.:::'
,p_page_id=>74
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(14033558079287182622)
,p_parent_id=>0
,p_short_name=>'Communities'
,p_link=>'f?p=&APP_ID.:9:&SESSION.::&DEBUG.:::'
,p_page_id=>9
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(14033807598790144071)
,p_short_name=>'Delete Poll'
,p_link=>'f?p=&APP_ID.:28:&SESSION.::&DEBUG.:::'
,p_page_id=>28
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(14054678877816502950)
,p_parent_id=>wwv_flow_api.id(13963963389923763282)
,p_short_name=>'Delete Test Data'
,p_link=>'f?p=&APP_ID.:82:&SESSION.'
,p_page_id=>82
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(14058281693070778245)
,p_parent_id=>wwv_flow_api.id(17708514975108179449)
,p_short_name=>'Opt Out User List'
,p_link=>'f?p=&APP_ID.:34:&SESSION.'
,p_page_id=>34
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(14085439400249911895)
,p_short_name=>'Invitations'
,p_link=>'f?p=&APP_ID.:16:&SESSION.::&DEBUG.:::'
,p_page_id=>16
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(14093490805970291020)
,p_parent_id=>wwv_flow_api.id(17708514975108179449)
,p_short_name=>'Build Options'
,p_link=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:::'
,p_page_id=>2
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(14098501910297753415)
,p_parent_id=>0
,p_short_name=>'Invitations Sent'
,p_link=>'f?p=&APP_ID.:23:&SESSION.::&DEBUG.:::'
,p_page_id=>23
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(14098503592188771223)
,p_parent_id=>wwv_flow_api.id(13963963389923763282)
,p_short_name=>'Manual Invitations Recorded'
,p_link=>'f?p=&APP_ID.:36:&SESSION.::&DEBUG.:::'
,p_page_id=>36
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(14104593593012860206)
,p_parent_id=>0
,p_short_name=>'Results Across Polls'
,p_link=>'f?p=&APP_ID.:41:&SESSION.::&DEBUG.:::'
,p_page_id=>41
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(14105597504955145944)
,p_parent_id=>0
,p_short_name=>'Opt Out User Details'
,p_link=>'f?p=&APP_ID.:46:&SESSION.::&DEBUG.:::'
,p_page_id=>46
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(14117420679385754957)
,p_parent_id=>0
,p_short_name=>'&P67_POLL_NAME.'
,p_link=>'f?p=&APP_ID.:67:&SESSION.::&DEBUG.:::'
,p_page_id=>67
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(14125255407961645271)
,p_parent_id=>wwv_flow_api.id(17708514975108179449)
,p_short_name=>'Respondent Details'
,p_link=>'f?p=&APP_ID.:86:&SESSION.::&DEBUG.:::'
,p_page_id=>86
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(14132053689921849482)
,p_parent_id=>wwv_flow_api.id(17708514975108179449)
,p_short_name=>'Remove Extraneous Characters'
,p_link=>'f?p=&APP_ID.:15:&SESSION.'
,p_page_id=>15
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(14135346387940340966)
,p_parent_id=>wwv_flow_api.id(14019790395660170040)
,p_short_name=>'Email Results'
,p_link=>'f?p=&APP_ID.:90:&SESSION.'
,p_page_id=>90
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(14135347978986344781)
,p_parent_id=>wwv_flow_api.id(14019790395660170040)
,p_short_name=>'Results Emailed'
,p_link=>'f?p=&APP_ID.:91:&SESSION.::&DEBUG.:::'
,p_page_id=>91
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(14607211927802148397)
,p_parent_id=>wwv_flow_api.id(17708514975108179449)
,p_short_name=>'Page Privileges'
,p_link=>'f?p=&APP_ID.:7:&SESSION.::&DEBUG.:::'
,p_page_id=>7
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(14620624128011059750)
,p_parent_id=>wwv_flow_api.id(17708514975108179449)
,p_short_name=>'Rename Application'
,p_link=>'f?p=&APP_ID.:8:&SESSION.::&DEBUG.:::'
,p_page_id=>8
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(14723962630345029630)
,p_parent_id=>wwv_flow_api.id(17708514975108179449)
,p_short_name=>'Username Format'
,p_link=>'f?p=&APP_ID.:43:&SESSION.'
,p_page_id=>43
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(14912604002516993465)
,p_parent_id=>wwv_flow_api.id(17708514975108179449)
,p_short_name=>'Application Theme Style'
,p_link=>'f?p=&APP_ID.:20:&SESSION.::&DEBUG.:::'
,p_page_id=>20
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(14961288562065085524)
,p_short_name=>'&POLL_NAME.'
,p_link=>'f?p=&FLOW_ID.:50:&SESSION.'
,p_page_id=>50
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(15057261612877704912)
,p_parent_id=>wwv_flow_api.id(17708514975108179449)
,p_short_name=>'Manage Sample Data'
,p_link=>'f?p=&APP_ID.:32:&SESSION.::&DEBUG.:::'
,p_page_id=>32
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(16233665312687149994)
,p_parent_id=>wwv_flow_api.id(17708514975108179449)
,p_short_name=>'Notifications'
,p_link=>'f?p=&FLOW_ID.:30:&SESSION.'
,p_page_id=>30
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(16233759424289162326)
,p_parent_id=>0
,p_short_name=>'Notification'
,p_link=>'f?p=&APP_ID.:31:&SESSION.::&DEBUG.:::'
,p_page_id=>31
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(16516631034372790488)
,p_parent_id=>wwv_flow_api.id(17689949952922337268)
,p_short_name=>'Help'
,p_link=>'f?p=&FLOW_ID.:39:&SESSION.'
,p_page_id=>39
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(16597786332088403829)
,p_parent_id=>wwv_flow_api.id(17708514975108179449)
,p_short_name=>'Application Error Log'
,p_link=>'f?p=&APP_ID.:175:&SESSION.::&DEBUG.:::'
,p_page_id=>175
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(16627791039388269534)
,p_parent_id=>wwv_flow_api.id(17708514975108179449)
,p_short_name=>'Activity Calendar'
,p_link=>'f?p=&APP_ID.:42:&SESSION.::&DEBUG.:::'
,p_page_id=>42
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(17689949952922337268)
,p_parent_id=>0
,p_short_name=>'Home'
,p_link=>'f?p=&APP_ID.:1:&SESSION.'
,p_page_id=>1
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(17708514975108179449)
,p_parent_id=>0
,p_short_name=>'Administration'
,p_link=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.:::'
,p_page_id=>4
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(17709733245142830300)
,p_parent_id=>wwv_flow_api.id(17708514975108179449)
,p_short_name=>'Top Users'
,p_link=>'f?p=&APP_ID.:12:&SESSION.::&DEBUG.:::'
,p_page_id=>12
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(17709781756336844009)
,p_parent_id=>wwv_flow_api.id(17708514975108179449)
,p_short_name=>'Application Page Views'
,p_link=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.:::'
,p_page_id=>10
);
wwv_flow_api.component_end;
end;
/
