prompt --application/shared_components/navigation/breadcrumbs/eba_projects_breadcrumb
begin
--   Manifest
--     MENU: EBA_PROJECTS Breadcrumb
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>134
,p_default_id_offset=>172493832712964115
,p_default_owner=>'MISO'
);
wwv_flow_api.create_menu(
 p_id=>wwv_flow_api.id(8972392840601050532)
,p_name=>'EBA_PROJECTS Breadcrumb'
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(228684233193367157)
,p_parent_id=>wwv_flow_api.id(9022135622537534182)
,p_short_name=>'Issue Levels'
,p_link=>'f?p=&APP_ID.:220:&SESSION.'
,p_page_id=>220
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(737131702941619909)
,p_parent_id=>wwv_flow_api.id(9022135622537534182)
,p_short_name=>'Additional Required Items'
,p_link=>'f?p=&APP_ID.:119:&SESSION.::&DEBUG.:::'
,p_page_id=>119
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(737132937787619914)
,p_parent_id=>wwv_flow_api.id(737131702941619909)
,p_short_name=>'Additional Required Item'
,p_link=>'f?p=&APP_ID.:124:&SESSION.::&DEBUG.:::'
,p_page_id=>124
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(846332547129697015)
,p_parent_id=>wwv_flow_api.id(9030446824376395086)
,p_short_name=>'&P219_TAG_DISPLAY.'
,p_link=>'f?p=&APP_ID.:219:&SESSION.::&DEBUG.:::'
,p_page_id=>219
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(2822153162040187150)
,p_parent_id=>wwv_flow_api.id(7882066392924122224)
,p_short_name=>'Mass Update Users'
,p_link=>'f?p=&APP_ID.:11:&SESSION.'
,p_page_id=>11
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(2825265246372083001)
,p_parent_id=>wwv_flow_api.id(2822153162040187150)
,p_short_name=>'Preview Updated Users'
,p_link=>'f?p=&APP_ID.:16:&SESSION.'
,p_page_id=>16
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(2836277831403157876)
,p_parent_id=>wwv_flow_api.id(6806666430733384110)
,p_short_name=>'Headlines Report'
,p_link=>'f?p=&APP_ID.:19:&SESSION.'
,p_page_id=>19
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(2836611097428779572)
,p_parent_id=>wwv_flow_api.id(2836277831403157876)
,p_short_name=>'Headline History'
,p_link=>'f?p=&APP_ID.:58:&SESSION.'
,p_page_id=>58
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(2852613338708540452)
,p_parent_id=>wwv_flow_api.id(6806666430733384110)
,p_short_name=>'Project Activity Heat Map'
,p_link=>'f?p=&APP_ID.:84:&SESSION.::&DEBUG.:::'
,p_page_id=>84
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(3478854550345647803)
,p_parent_id=>wwv_flow_api.id(5362413383061206108)
,p_short_name=>'Quarters'
,p_link=>'f?p=&APP_ID.:112:&SESSION.::&DEBUG.:::'
,p_page_id=>112
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(4036482427722051318)
,p_parent_id=>wwv_flow_api.id(5362413383061206108)
,p_short_name=>'Issue Categories'
,p_link=>'f?p=&APP_ID.:153:&SESSION.::&DEBUG.:::'
,p_page_id=>153
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(5362400807824808989)
,p_parent_id=>wwv_flow_api.id(9022135622537534182)
,p_short_name=>'Administrative Configuration'
,p_link=>'f?p=&APP_ID.:152:&SESSION.::&DEBUG.:::'
,p_page_id=>152
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(5362413383061206108)
,p_parent_id=>wwv_flow_api.id(9022135622537534182)
,p_short_name=>'Code Table Administration'
,p_link=>'f?p=&APP_ID.:154:&SESSION.'
,p_page_id=>154
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(5401683926546019682)
,p_parent_id=>wwv_flow_api.id(6806653868068229421)
,p_short_name=>'Projects to view in navigator'
,p_link=>'f?p=&APP_ID.:33:&SESSION.::&DEBUG.:::'
,p_page_id=>33
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(5462822760643492610)
,p_parent_id=>wwv_flow_api.id(6806666430733384110)
,p_short_name=>'Milestones By Owner Timeline'
,p_link=>'f?p=&APP_ID.:17:&SESSION.::&DEBUG.:::'
,p_page_id=>17
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(5956243011932589262)
,p_parent_id=>wwv_flow_api.id(9022135622537534182)
,p_short_name=>'Page Privileges'
,p_link=>'f?p=&APP_ID.:96:&SESSION.::&DEBUG.:::'
,p_page_id=>96
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(5956336796922903847)
,p_parent_id=>wwv_flow_api.id(6806666430733384110)
,p_short_name=>'Projects Tree View'
,p_link=>'f?p=&APP_ID.:72:&SESSION.::&DEBUG.:::'
,p_page_id=>72
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(5956353003636100370)
,p_parent_id=>wwv_flow_api.id(6806666430733384110)
,p_short_name=>'Project Creation Date Calendar'
,p_link=>'f?p=&APP_ID.:98:&SESSION.::&DEBUG.:::'
,p_page_id=>98
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(5980106596803448379)
,p_parent_id=>wwv_flow_api.id(5362400807824808989)
,p_short_name=>'Application Settings'
,p_link=>'f?p=&APP_ID.:42:&SESSION.::&DEBUG.:::'
,p_page_id=>42
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(6018002891625146954)
,p_parent_id=>wwv_flow_api.id(9022135622537534182)
,p_short_name=>'Username Format'
,p_link=>'f?p=&APP_ID.:71:&SESSION.'
,p_page_id=>71
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(6018010810644216972)
,p_parent_id=>wwv_flow_api.id(9022135622537534182)
,p_short_name=>'Add Multiple Users'
,p_link=>'f?p=&APP_ID.:103:&SESSION.::&DEBUG.:::'
,p_page_id=>103
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(6018018980278224509)
,p_parent_id=>wwv_flow_api.id(9022135622537534182)
,p_short_name=>'Add Multiple Users'
,p_link=>'f?p=&APP_ID.:104:&SESSION.::&DEBUG.:::'
,p_page_id=>104
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(6071954897303864238)
,p_parent_id=>wwv_flow_api.id(9022135622537534182)
,p_short_name=>'Change my password'
,p_link=>'f?p=&APP_ID.:97:&SESSION.'
,p_page_id=>97
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(6071967898002055078)
,p_parent_id=>wwv_flow_api.id(6806653868068229421)
,p_short_name=>'Set Time Zone'
,p_link=>'f?p=&APP_ID.:99:&SESSION.::&DEBUG.:::'
,p_page_id=>99
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(6078427706643023542)
,p_parent_id=>wwv_flow_api.id(5362400807824808989)
,p_short_name=>'Build Options'
,p_link=>'f?p=&APP_ID.:105:&SESSION.::&DEBUG.:::'
,p_page_id=>105
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(6079360486345588376)
,p_parent_id=>wwv_flow_api.id(7882081204003628965)
,p_short_name=>'Milestone'
,p_link=>'f?p=&APP_ID.:107:&SESSION.::&DEBUG.:::'
,p_page_id=>107
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(6084475091963630234)
,p_parent_id=>wwv_flow_api.id(9022135622537534182)
,p_short_name=>'Reassign Action Items'
,p_link=>'f?p=&APP_ID.:108:&SESSION.::&DEBUG.:::'
,p_page_id=>108
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(6084526482136016229)
,p_parent_id=>wwv_flow_api.id(9022135622537534182)
,p_short_name=>'Email Preferences'
,p_link=>'f?p=&APP_ID.:110:&SESSION.::&DEBUG.:::'
,p_page_id=>110
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(6086797808177434917)
,p_parent_id=>wwv_flow_api.id(7882081204003628965)
,p_short_name=>'Attachment'
,p_link=>'f?p=&APP_ID.:106:&SESSION.::&DEBUG.:::'
,p_page_id=>106
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(6087952700842984707)
,p_parent_id=>wwv_flow_api.id(6806666430733384110)
,p_short_name=>'Action Items By Owner Timeline'
,p_link=>'f?p=&APP_ID.:111:&SESSION.::&DEBUG.:::'
,p_page_id=>111
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(6090253499486803103)
,p_parent_id=>wwv_flow_api.id(7143459292120604859)
,p_short_name=>'Merge &CAT_TITLE_PL.'
,p_link=>'f?p=&APP_ID.:109:&SESSION.::&DEBUG.:::'
,p_page_id=>109
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(6170176290340949302)
,p_parent_id=>wwv_flow_api.id(7882081204003628965)
,p_short_name=>'Edit Status Report'
,p_link=>'f?p=&APP_ID.:115:&SESSION.::&DEBUG.:::'
,p_page_id=>115
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(6170196204584131089)
,p_parent_id=>wwv_flow_api.id(7882081204003628965)
,p_short_name=>'Add Status Report'
,p_link=>'f?p=&APP_ID.:116:&SESSION.::&DEBUG.:::'
,p_page_id=>116
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(6170208293499404117)
,p_parent_id=>wwv_flow_api.id(6806666430733384110)
,p_short_name=>'Project Status Reports Timeline'
,p_link=>'f?p=&APP_ID.:117:&SESSION.::&DEBUG.:::'
,p_page_id=>117
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(6170438594795837425)
,p_parent_id=>wwv_flow_api.id(6170208293499404117)
,p_short_name=>'Status Report'
,p_link=>'f?p=&APP_ID.:120:&SESSION.::&DEBUG.:::'
,p_page_id=>120
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(6172742500116813670)
,p_parent_id=>wwv_flow_api.id(6170438594795837425)
,p_short_name=>'Email Status Report'
,p_link=>'f?p=&APP_ID.:121:&SESSION.::&DEBUG.:::'
,p_page_id=>121
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(6172839407032108788)
,p_parent_id=>0
,p_short_name=>'Verify Project'
,p_link=>'f?p=&APP_ID.:122:&SESSION.::&DEBUG.:::'
,p_page_id=>122
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(6173075703716081301)
,p_parent_id=>wwv_flow_api.id(6806666430733384110)
,p_short_name=>'Project Validations Report'
,p_link=>'f?p=&APP_ID.:114:&SESSION.::&DEBUG.:::'
,p_page_id=>114
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(6173076383299081306)
,p_parent_id=>wwv_flow_api.id(6173075703716081301)
,p_short_name=>'Validation'
,p_link=>'f?p=&APP_ID.:123:&SESSION.::&DEBUG.:::'
,p_page_id=>123
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(6176144001420661826)
,p_parent_id=>0
,p_short_name=>'Action Items'
,p_link=>'f?p=&APP_ID.:125:&SESSION.::&DEBUG.:::'
,p_page_id=>125
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(6176226608500250667)
,p_parent_id=>wwv_flow_api.id(7882081204003628965)
,p_short_name=>'Project Usage Metrics'
,p_link=>'f?p=&APP_ID.:127:&SESSION.::&DEBUG.:::'
,p_page_id=>127
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(6177034286047902396)
,p_parent_id=>wwv_flow_api.id(7882081204003628965)
,p_short_name=>'Update'
,p_link=>'f?p=&APP_ID.:129:&SESSION.::&DEBUG.:::'
,p_page_id=>129
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(6181548309505029235)
,p_parent_id=>wwv_flow_api.id(6806666430733384110)
,p_short_name=>'Milestone Summary by Project'
,p_link=>'f?p=&APP_ID.:26:&SESSION.::&DEBUG.:::'
,p_page_id=>26
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(6181594803774652268)
,p_parent_id=>wwv_flow_api.id(6806666430733384110)
,p_short_name=>'Action Item Summary by Project'
,p_link=>'f?p=&APP_ID.:30:&SESSION.::&DEBUG.:::'
,p_page_id=>30
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(6183997706343214322)
,p_parent_id=>wwv_flow_api.id(9028005027057552301)
,p_short_name=>'Application Activity by Page'
,p_link=>'f?p=&APP_ID.:86:&SESSION.::&DEBUG.:::'
,p_page_id=>86
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(6195379386817366938)
,p_parent_id=>wwv_flow_api.id(9066111030671156727)
,p_short_name=>'Updates Dashboard'
,p_link=>'f?p=&APP_ID.:88:&SESSION.::&DEBUG.:::'
,p_page_id=>88
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(6205727696466129557)
,p_parent_id=>wwv_flow_api.id(9028005027057552301)
,p_short_name=>'Page Views by Day'
,p_link=>'f?p=&APP_ID.:18:&SESSION.::&DEBUG.:::'
,p_page_id=>18
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(6252341991829555401)
,p_parent_id=>wwv_flow_api.id(5362400807824808989)
,p_short_name=>'Flex Columns'
,p_link=>'f?p=&APP_ID.:140:&SESSION.::&DEBUG.:::'
,p_page_id=>140
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(6252350310344562703)
,p_parent_id=>wwv_flow_api.id(6252341991829555401)
,p_short_name=>'Flex Column'
,p_link=>'f?p=&APP_ID.:141:&SESSION.'
,p_page_id=>141
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(6252369501896580671)
,p_parent_id=>wwv_flow_api.id(6252341991829555401)
,p_short_name=>'Flex Column'
,p_link=>'f?p=&APP_ID.:142:&SESSION.::&DEBUG.:::'
,p_page_id=>142
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(6252391184183590377)
,p_parent_id=>wwv_flow_api.id(6252341991829555401)
,p_short_name=>'Assign Flexible Column - Data Source'
,p_link=>'f?p=&APP_ID.:143:&SESSION.::&DEBUG.:::'
,p_page_id=>143
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(6252403101590601791)
,p_parent_id=>wwv_flow_api.id(6252341991829555401)
,p_short_name=>'Assign Flexible Column - Flex Column'
,p_link=>'f?p=&APP_ID.:144:&SESSION.::&DEBUG.:::'
,p_page_id=>144
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(6252416002105612810)
,p_parent_id=>wwv_flow_api.id(6252341991829555401)
,p_short_name=>'Assign Flexible Column - Form Element'
,p_link=>'f?p=&APP_ID.:145:&SESSION.::&DEBUG.:::'
,p_page_id=>145
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(6252428990042619801)
,p_parent_id=>wwv_flow_api.id(6252341991829555401)
,p_short_name=>'Assign Flexible Column - Select List Options'
,p_link=>'f?p=&APP_ID.:146:&SESSION.::&DEBUG.:::'
,p_page_id=>146
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(6252441197450627608)
,p_parent_id=>wwv_flow_api.id(6252341991829555401)
,p_short_name=>'Assign Flexible Column - Confirmation'
,p_link=>'f?p=&APP_ID.:147:&SESSION.::&DEBUG.:::'
,p_page_id=>147
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(6338186908632010311)
,p_parent_id=>wwv_flow_api.id(6908307947061768393)
,p_short_name=>'Remove Attachments'
,p_link=>'f?p=&APP_ID.:23:&SESSION.::&DEBUG.:::'
,p_page_id=>23
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(6778269300505601300)
,p_parent_id=>wwv_flow_api.id(6806666430733384110)
,p_short_name=>'Milestones Gantt Chart'
,p_link=>'f?p=&APP_ID.:68:&SESSION.::&DEBUG.:::'
,p_page_id=>68
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(6778426785742703651)
,p_parent_id=>wwv_flow_api.id(9066111030671156727)
,p_short_name=>'Edit Project Update'
,p_link=>'f?p=&APP_ID.:76:&SESSION.::&DEBUG.:::'
,p_page_id=>76
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(6778596590668730414)
,p_parent_id=>wwv_flow_api.id(7882081204003628965)
,p_short_name=>'Manage Project Updates'
,p_link=>'f?p=&APP_ID.:75:&SESSION.::&DEBUG.:::'
,p_page_id=>75
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(6783315795095456941)
,p_parent_id=>wwv_flow_api.id(5362413383061206108)
,p_short_name=>'Status Update Types'
,p_link=>'f?p=&APP_ID.:81:&SESSION.::&DEBUG.:::'
,p_page_id=>81
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(6783316080155456942)
,p_parent_id=>wwv_flow_api.id(6783315795095456941)
,p_short_name=>'Status Update Type'
,p_link=>'f?p=&APP_ID.:82:&SESSION.::&DEBUG.:::'
,p_page_id=>82
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(6806653868068229421)
,p_short_name=>'Preferences'
,p_link=>'f?p=&APP_ID.:130:&SESSION.'
,p_page_id=>130
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(6806666430733384110)
,p_parent_id=>0
,p_short_name=>'Reports'
,p_link=>'f?p=&APP_ID.:136:&SESSION.::&DEBUG.:::'
,p_page_id=>136
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(6823783775981248101)
,p_parent_id=>0
,p_short_name=>'Action Items by &CAT_TITLE.'
,p_link=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.:::'
,p_page_id=>6
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(6824257465444419454)
,p_parent_id=>wwv_flow_api.id(6806666430733384110)
,p_short_name=>'Milestones &CAT_TITLE. Bar Chart'
,p_link=>'f?p=&APP_ID.:9:&SESSION.::&DEBUG.:::'
,p_page_id=>9
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(6835090284984155282)
,p_short_name=>'Attachments'
,p_link=>'f?p=&FLOW_ID.:28:&SESSION.'
,p_page_id=>28
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(6835726571188174773)
,p_parent_id=>0
,p_short_name=>'Attachments by Project &CAT_TITLE. and Status'
,p_link=>'f?p=&APP_ID.:62:&SESSION.::&DEBUG.:RP::'
,p_page_id=>62
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(6835733476356318966)
,p_parent_id=>wwv_flow_api.id(6806666430733384110)
,p_short_name=>'Project Attachments Report'
,p_link=>'f?p=&APP_ID.:132:&SESSION.::&DEBUG.:::'
,p_page_id=>132
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(6838281844806116449)
,p_parent_id=>0
,p_short_name=>'People'
,p_link=>'f?p=&APP_ID.:133:&SESSION.::&DEBUG.:::'
,p_page_id=>133
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(6838283670541156648)
,p_parent_id=>wwv_flow_api.id(6838281844806116449)
,p_short_name=>'&P137_DISPLAY_NAME.'
,p_link=>'f?p=&APP_ID.:137:&SESSION.::&DEBUG.:::'
,p_page_id=>137
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(6908307947061768393)
,p_parent_id=>wwv_flow_api.id(9022135622537534182)
,p_short_name=>'Attachments Dashboard'
,p_link=>'f?p=&APP_ID.:79:&SESSION.::&DEBUG.:::'
,p_page_id=>79
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(6908350220077277728)
,p_parent_id=>0
,p_short_name=>'Dashboard'
,p_link=>'f?p=&APP_ID.:113:&SESSION.::&DEBUG.:::'
,p_page_id=>113
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(6923340798928561078)
,p_parent_id=>0
,p_short_name=>'&CAT_TITLE_PL.'
,p_link=>'f?p=&APP_ID.:139:&SESSION.::&DEBUG.:::'
,p_page_id=>139
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(6931982584658103789)
,p_parent_id=>wwv_flow_api.id(6932326881357156932)
,p_short_name=>'Email Action Item'
,p_link=>'f?p=&APP_ID.:37:&SESSION.::&DEBUG.:::'
,p_page_id=>37
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(6932326881357156932)
,p_parent_id=>wwv_flow_api.id(7882081204003628965)
,p_short_name=>'Action Item'
,p_link=>'f?p=&APP_ID.:78:&SESSION.::&DEBUG.:::'
,p_page_id=>78
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(7096745853801485322)
,p_parent_id=>wwv_flow_api.id(5362400807824808989)
,p_short_name=>'Application Appearance'
,p_link=>'f?p=&APP_ID.:148:&SESSION.::&DEBUG.:::'
,p_page_id=>148
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(7143459292120604859)
,p_parent_id=>wwv_flow_api.id(5362413383061206108)
,p_short_name=>'&CAT_TITLE_PL.'
,p_link=>'f?p=&APP_ID.:15:&SESSION.::&DEBUG.:::'
,p_page_id=>15
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(7265104773346651277)
,p_parent_id=>wwv_flow_api.id(5362400807824808989)
,p_short_name=>'Manage Sample Data'
,p_link=>'f?p=&APP_ID.:149:&SESSION.::&DEBUG.:::'
,p_page_id=>149
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(7526227411038349305)
,p_parent_id=>wwv_flow_api.id(5362400807824808989)
,p_short_name=>'Notifications'
,p_link=>'f?p=&APP_ID.:53:&SESSION.::&DEBUG.:::'
,p_page_id=>53
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(7526227711014349307)
,p_parent_id=>wwv_flow_api.id(7526227411038349305)
,p_short_name=>'Notification'
,p_link=>'f?p=&APP_ID.:80:&SESSION.::&DEBUG.:::'
,p_page_id=>80
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(7721758721658673767)
,p_parent_id=>wwv_flow_api.id(7882081204003628965)
,p_short_name=>'Manage Project Issues'
,p_link=>'f?p=&APP_ID.:92:&SESSION.::&DEBUG.:::'
,p_page_id=>92
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(7766906919180827887)
,p_parent_id=>0
,p_short_name=>'Feedback'
,p_link=>'f?p=&APP_ID.:102:&SESSION.::&DEBUG.:::'
,p_page_id=>102
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(7802179591982013007)
,p_parent_id=>wwv_flow_api.id(6806666430733384110)
,p_short_name=>'Project Followers Report'
,p_link=>'f?p=&APP_ID.:14:&SESSION.::&DEBUG.:::'
,p_page_id=>14
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(7868334780234200276)
,p_parent_id=>wwv_flow_api.id(7882066392924122224)
,p_short_name=>'User Details'
,p_link=>'f?p=&APP_ID.:89:&SESSION.::&DEBUG.:RP::'
,p_page_id=>90
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(7882042110506790243)
,p_parent_id=>0
,p_short_name=>'Help'
,p_link=>'f?p=&APP_ID.:52:&SESSION.::&DEBUG.:::'
,p_page_id=>52
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(7882066392924122224)
,p_parent_id=>wwv_flow_api.id(9022135622537534182)
,p_short_name=>'Access Control List'
,p_link=>'f?p=&APP_ID.:89:&SESSION.::&DEBUG.:RP::'
,p_page_id=>89
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(7882067591028148716)
,p_parent_id=>wwv_flow_api.id(9022135622537534182)
,p_short_name=>'Access Control Configuration'
,p_link=>'f?p=&APP_ID.:91:&SESSION.::&DEBUG.:::'
,p_page_id=>91
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(7882081204003628965)
,p_parent_id=>wwv_flow_api.id(9068045927118017623)
,p_short_name=>'Project Details'
,p_link=>'f?p=&APP_ID.:200:&SESSION.::&DEBUG.:::'
,p_page_id=>200
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(7949488286411036268)
,p_parent_id=>wwv_flow_api.id(9028005027057552301)
,p_short_name=>'Application Error Log'
,p_link=>'f?p=&APP_ID.:175:&SESSION.::&DEBUG.:::'
,p_page_id=>175
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(7972955803097184921)
,p_parent_id=>wwv_flow_api.id(9066111030671156727)
,p_short_name=>'Add Project Update'
,p_link=>'f?p=&APP_ID.:93:&SESSION.::&DEBUG.:::'
,p_page_id=>93
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(7977068904333806260)
,p_parent_id=>wwv_flow_api.id(9028005027057552301)
,p_short_name=>'Activity Calendar'
,p_link=>'f?p=&FLOW_ID.:94:&SESSION.'
,p_page_id=>94
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(8139060937868960249)
,p_parent_id=>wwv_flow_api.id(5362413383061206108)
,p_short_name=>'Action Item Types'
,p_link=>'f?p=&APP_ID.:69:&SESSION.::&DEBUG.:::'
,p_page_id=>69
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(8139061226909960251)
,p_parent_id=>wwv_flow_api.id(8139060937868960249)
,p_short_name=>'Details'
,p_link=>'f?p=&APP_ID.:70:&SESSION.::&DEBUG.:::'
,p_page_id=>70
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(8148476114096515266)
,p_parent_id=>wwv_flow_api.id(7882081204003628965)
,p_short_name=>'Action Item'
,p_link=>'f?p=&APP_ID.:73:&SESSION.::&DEBUG.:::'
,p_page_id=>73
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(8148480018467757076)
,p_parent_id=>wwv_flow_api.id(9035605522889306793)
,p_short_name=>'Merge Projects'
,p_link=>'f?p=&FLOW_ID.:74:&SESSION.'
,p_page_id=>74
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(8972407421742050816)
,p_parent_id=>wwv_flow_api.id(6806666430733384110)
,p_short_name=>'Projects Interactive Report'
,p_link=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
,p_page_id=>1
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(9012054221100058234)
,p_parent_id=>0
,p_short_name=>'Project'
,p_link=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:::'
,p_page_id=>2
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(9012073730906809487)
,p_parent_id=>0
,p_short_name=>'Application Timeline'
,p_link=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.:::'
,p_page_id=>10
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(9012092923046941304)
,p_parent_id=>wwv_flow_api.id(6806666430733384110)
,p_short_name=>'Projects Status Bar Chart'
,p_link=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.:::'
,p_page_id=>4
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(9012113143531984019)
,p_parent_id=>wwv_flow_api.id(7143459292120604859)
,p_short_name=>'&CAT_TITLE.'
,p_link=>'f?p=&APP_ID.:7:&SESSION.::&DEBUG.:::'
,p_page_id=>7
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(9012952038099437318)
,p_parent_id=>0
,p_short_name=>'Search Results'
,p_link=>'f?p=&APP_ID.:8:&SESSION.::&DEBUG.:::'
,p_page_id=>8
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(9012960818430573892)
,p_parent_id=>wwv_flow_api.id(6778596590668730414)
,p_short_name=>'Edit Project Update'
,p_link=>'f?p=&APP_ID.:12:&SESSION.::&DEBUG.:::'
,p_page_id=>12
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(9012984922453055588)
,p_parent_id=>wwv_flow_api.id(7882081204003628965)
,p_short_name=>'Email Project'
,p_link=>'f?p=&APP_ID.:20:&SESSION.::&DEBUG.:::'
,p_page_id=>20
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(9016481732968677596)
,p_parent_id=>wwv_flow_api.id(9021276445390906318)
,p_short_name=>'Link'
,p_link=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.:::'
,p_page_id=>3
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(9016495016333132970)
,p_parent_id=>wwv_flow_api.id(6806666430733384110)
,p_short_name=>'Search Requests Report'
,p_link=>'f?p=&APP_ID.:13:&SESSION.::&DEBUG.:::'
,p_page_id=>13
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(9021276445390906318)
,p_parent_id=>wwv_flow_api.id(6806666430733384110)
,p_short_name=>'Project Links Report'
,p_link=>'f?p=&APP_ID.:21:&SESSION.::&DEBUG.:::'
,p_page_id=>21
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(9021992525864054484)
,p_parent_id=>wwv_flow_api.id(6806666430733384110)
,p_short_name=>'Milestones Monthly Calendar'
,p_link=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.:::'
,p_page_id=>5
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(9022135622537534182)
,p_parent_id=>0
,p_short_name=>'Administration'
,p_link=>'f?p=&APP_ID.:27:&SESSION.::&DEBUG.:::'
,p_page_id=>27
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(9022282344173456076)
,p_parent_id=>wwv_flow_api.id(5362413383061206108)
,p_short_name=>'Status Codes'
,p_link=>'f?p=&APP_ID.:31:&SESSION.::&DEBUG.:::'
,p_page_id=>31
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(9022282534110456076)
,p_parent_id=>wwv_flow_api.id(9022282344173456076)
,p_short_name=>'Status Code Details'
,p_link=>'f?p=&APP_ID.:32:&SESSION.::&DEBUG.:::'
,p_page_id=>32
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(9026705639258945680)
,p_parent_id=>wwv_flow_api.id(7882081204003628965)
,p_short_name=>'Manage Project Milestones'
,p_link=>'f?p=&APP_ID.:34:&SESSION.::&DEBUG.:::'
,p_page_id=>34
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(9028005027057552301)
,p_parent_id=>wwv_flow_api.id(9022135622537534182)
,p_short_name=>'Activity Reports'
,p_link=>'f?p=&APP_ID.:36:&SESSION.::&DEBUG.:::'
,p_page_id=>36
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(9028012940389626655)
,p_parent_id=>wwv_flow_api.id(9028005027057552301)
,p_short_name=>'Page Views'
,p_link=>'f?p=&APP_ID.:38:&SESSION.::&DEBUG.:::'
,p_page_id=>38
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(9028019138921709139)
,p_parent_id=>wwv_flow_api.id(9028005027057552301)
,p_short_name=>'Top Users'
,p_link=>'f?p=&APP_ID.:40:&SESSION.::&DEBUG.:::'
,p_page_id=>40
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(9029525224743337787)
,p_parent_id=>wwv_flow_api.id(9022135622537534182)
,p_short_name=>'Ingest Log'
,p_link=>'f?p=&APP_ID.:39:&SESSION.::&DEBUG.:::'
,p_page_id=>39
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(9030250038443976239)
,p_parent_id=>wwv_flow_api.id(9029525224743337787)
,p_short_name=>'Resubmit'
,p_link=>'f?p=&APP_ID.:41:&SESSION.::&DEBUG.:::'
,p_page_id=>41
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(9030278119483912061)
,p_parent_id=>wwv_flow_api.id(9068187030187568878)
,p_short_name=>'Attachment'
,p_link=>'f?p=&APP_ID.:43:&SESSION.::&DEBUG.:::'
,p_page_id=>43
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(9030443536423327417)
,p_parent_id=>wwv_flow_api.id(6908307947061768393)
,p_short_name=>'Interactive Report'
,p_link=>'f?p=&APP_ID.:44:&SESSION.::&DEBUG.:::'
,p_page_id=>44
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(9030446824376395086)
,p_parent_id=>wwv_flow_api.id(6806666430733384110)
,p_short_name=>'Tags'
,p_link=>'f?p=&APP_ID.:45:&SESSION.::&DEBUG.:::'
,p_page_id=>45
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(9031270733479840100)
,p_parent_id=>wwv_flow_api.id(9034688340051826446)
,p_short_name=>'All Action Items'
,p_link=>'f?p=&APP_ID.:46:&SESSION.::&DEBUG.:::'
,p_page_id=>46
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(9034688340051826446)
,p_parent_id=>wwv_flow_api.id(6806666430733384110)
,p_short_name=>'Action Items Dashboard'
,p_link=>'f?p=&APP_ID.:50:&SESSION.::&DEBUG.:::'
,p_page_id=>50
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(9035605522889306793)
,p_parent_id=>wwv_flow_api.id(6806666430733384110)
,p_short_name=>'Projects Dashboard'
,p_link=>'f?p=&APP_ID.:51:&SESSION.::&DEBUG.:::'
,p_page_id=>51
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(9035815326945108945)
,p_parent_id=>wwv_flow_api.id(7882081204003628965)
,p_short_name=>'Merge Projects'
,p_link=>'f?p=&APP_ID.:54:&SESSION.::&DEBUG.:::'
,p_page_id=>54
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(9035891224165813274)
,p_parent_id=>wwv_flow_api.id(9022135622537534182)
,p_short_name=>'Project Email Log'
,p_link=>'f?p=&APP_ID.:56:&SESSION.::&DEBUG.:::'
,p_page_id=>56
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(9065641245259193448)
,p_parent_id=>wwv_flow_api.id(7882081204003628965)
,p_short_name=>'Milestone'
,p_link=>'f?p=&APP_ID.:48:&SESSION.::&DEBUG.:::'
,p_page_id=>48
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(9066095315510744597)
,p_parent_id=>0
,p_short_name=>'Milestones'
,p_link=>'f?p=&APP_ID.:35:&SESSION.::&DEBUG.:::'
,p_page_id=>35
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(9066111030671156727)
,p_parent_id=>wwv_flow_api.id(6806666430733384110)
,p_short_name=>'Project Updates Timeline'
,p_link=>'f?p=&APP_ID.:59:&SESSION.::&DEBUG.:::'
,p_page_id=>59
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(9066944925442254191)
,p_parent_id=>wwv_flow_api.id(6806666430733384110)
,p_short_name=>'Action Items Interactive Report'
,p_link=>'f?p=&APP_ID.:49:&SESSION.::&DEBUG.:::'
,p_page_id=>49
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(9066948621321298259)
,p_parent_id=>wwv_flow_api.id(6806666430733384110)
,p_short_name=>'Milestones Interactive Report'
,p_link=>'f?p=&APP_ID.:63:&SESSION.::&DEBUG.:::'
,p_page_id=>63
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(9068045927118017623)
,p_parent_id=>0
,p_short_name=>'Projects'
,p_long_name=>'&APPLICATION_TITLE.: Project Tracking'
,p_link=>'f?p=&APP_ID.:64:&SESSION.::&DEBUG.:::'
,p_page_id=>64
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(9068155519281076219)
,p_parent_id=>wwv_flow_api.id(6806666430733384110)
,p_short_name=>'Projects &CAT_TITLE. Bar Chart'
,p_link=>'f?p=&APP_ID.:61:&SESSION.::&DEBUG.:::'
,p_page_id=>61
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(9068164614069421871)
,p_parent_id=>0
,p_short_name=>'Projects by Owner'
,p_link=>'f?p=&APP_ID.:65:&SESSION.::&DEBUG.:::'
,p_page_id=>65
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(9068187030187568878)
,p_parent_id=>wwv_flow_api.id(7882081204003628965)
,p_short_name=>'Manage Project Attachments'
,p_link=>'f?p=&APP_ID.:66:&SESSION.::&DEBUG.:::'
,p_page_id=>66
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(9068212422982708578)
,p_parent_id=>wwv_flow_api.id(7882081204003628965)
,p_short_name=>'Manage Project Links'
,p_link=>'f?p=&APP_ID.:67:&SESSION.::&DEBUG.:::'
,p_page_id=>67
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(9068396730726285640)
,p_parent_id=>wwv_flow_api.id(7882081204003628965)
,p_short_name=>'Manage Project Action Items'
,p_link=>'f?p=&APP_ID.:55:&SESSION.::&DEBUG.:::'
,p_page_id=>55
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(11677010680274704513)
,p_parent_id=>wwv_flow_api.id(9012073730906809487)
,p_short_name=>'Create a Project'
,p_link=>'f?p=&APP_ID.:300:&SESSION.::&DEBUG.:::'
,p_page_id=>300
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(11678715811713117525)
,p_parent_id=>wwv_flow_api.id(7882081204003628965)
,p_short_name=>'Manage Project People'
,p_link=>'f?p=&APP_ID.:159:&SESSION.::&DEBUG.:::'
,p_page_id=>159
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(11726872941819110621)
,p_parent_id=>wwv_flow_api.id(5362413383061206108)
,p_short_name=>'Project Roles'
,p_link=>'f?p=&APP_ID.:160:&SESSION.::&DEBUG.:::'
,p_page_id=>160
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(11727259065656130042)
,p_parent_id=>wwv_flow_api.id(11726872941819110621)
,p_short_name=>'Project Role'
,p_link=>'f?p=&APP_ID.:161:&SESSION.'
,p_page_id=>161
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(11861772960621518727)
,p_parent_id=>wwv_flow_api.id(5362413383061206108)
,p_short_name=>'Involvement Levels'
,p_link=>'f?p=&APP_ID.:165:&SESSION.::&DEBUG.:::'
,p_page_id=>165
);
wwv_flow_api.component_end;
end;
/
begin
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>134
,p_default_id_offset=>172493832712964115
,p_default_owner=>'MISO'
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(11861774173182518738)
,p_parent_id=>wwv_flow_api.id(11861772960621518727)
,p_short_name=>'Involvement Level'
,p_link=>'f?p=&APP_ID.:166:&SESSION.'
,p_page_id=>166
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(11918408729117230544)
,p_parent_id=>wwv_flow_api.id(9022135622537534182)
,p_short_name=>'Project Status'
,p_link=>'f?p=&APP_ID.:155:&SESSION.::&DEBUG.:::'
,p_page_id=>155
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(11985373505333877945)
,p_parent_id=>wwv_flow_api.id(9022135622537534182)
,p_short_name=>'Email Past Due'
,p_link=>'f?p=&APP_ID.:100:&SESSION.'
,p_page_id=>100
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(11997307726518099604)
,p_parent_id=>wwv_flow_api.id(9022135622537534182)
,p_short_name=>'Email Upcoming'
,p_link=>'f?p=&APP_ID.:180:&SESSION.'
,p_page_id=>180
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(12093062587133336599)
,p_parent_id=>wwv_flow_api.id(9022135622537534182)
,p_short_name=>'Email Past Due Deliverables Send Job'
,p_link=>'f?p=&APP_ID.:163:&SESSION.::&DEBUG.:::'
,p_page_id=>163
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(12093216183667374091)
,p_parent_id=>wwv_flow_api.id(9022135622537534182)
,p_short_name=>'Email Upcoming Deliverables Send Job'
,p_link=>'f?p=&APP_ID.:167:&SESSION.'
,p_page_id=>167
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(12130246543334790739)
,p_parent_id=>wwv_flow_api.id(7882081204003628965)
,p_short_name=>'Manage Project Resources'
,p_link=>'f?p=&APP_ID.:169:&SESSION.::&DEBUG.:::'
,p_page_id=>169
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(12130247720599790746)
,p_parent_id=>wwv_flow_api.id(12130246543334790739)
,p_short_name=>'Project Resource'
,p_link=>'f?p=&APP_ID.:170:&SESSION.::&DEBUG.:::'
,p_page_id=>170
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(12139422018358542178)
,p_parent_id=>wwv_flow_api.id(12139441396436551038)
,p_short_name=>'Resource Type'
,p_link=>'f?p=&APP_ID.:171:&SESSION.::&DEBUG.:::'
,p_page_id=>171
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(12139441396436551038)
,p_parent_id=>wwv_flow_api.id(5362413383061206108)
,p_short_name=>'Resource Types'
,p_link=>'f?p=&APP_ID.:172:&SESSION.::&DEBUG.:::'
,p_page_id=>172
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(12210240446547746022)
,p_parent_id=>wwv_flow_api.id(5362413383061206108)
,p_short_name=>'Project Sizes'
,p_link=>'f?p=&APP_ID.:156:&SESSION.::&DEBUG.:::'
,p_page_id=>156
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(12210241642777746029)
,p_parent_id=>wwv_flow_api.id(12210240446547746022)
,p_short_name=>'Project Size'
,p_link=>'f?p=&APP_ID.:176:&SESSION.'
,p_page_id=>176
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(12237261631755824380)
,p_parent_id=>wwv_flow_api.id(6806666430733384110)
,p_short_name=>'&APPLICATION_TITLE.: Projects by Resource'
,p_link=>'f?p=&APP_ID.:177:&SESSION.'
,p_page_id=>177
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(12239445183720523529)
,p_parent_id=>wwv_flow_api.id(6806666430733384110)
,p_short_name=>'Project Resources Report'
,p_link=>'f?p=&APP_ID.:158:&SESSION.::&DEBUG.:::'
,p_page_id=>158
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(12505801203003332649)
,p_parent_id=>wwv_flow_api.id(7882081204003628965)
,p_short_name=>'Manage Project Status Reports'
,p_link=>'f?p=&APP_ID.:162:&SESSION.::&DEBUG.:::'
,p_page_id=>162
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(12648841368107162656)
,p_parent_id=>wwv_flow_api.id(6176226608500250667)
,p_short_name=>'Project Viewers'
,p_link=>'f?p=&APP_ID.:164:&SESSION.::&DEBUG.:::'
,p_page_id=>164
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(12696489884815994250)
,p_parent_id=>wwv_flow_api.id(7882042110506790243)
,p_short_name=>'Managing Projects'
,p_link=>'f?p=&APP_ID.:173:&SESSION.::&DEBUG.:::'
,p_page_id=>173
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(12697522067153118880)
,p_parent_id=>wwv_flow_api.id(7882042110506790243)
,p_short_name=>'Emails'
,p_link=>'f?p=&APP_ID.:174:&SESSION.'
,p_page_id=>174
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(12698084959563162003)
,p_parent_id=>wwv_flow_api.id(7882042110506790243)
,p_short_name=>'Reporting'
,p_link=>'f?p=&APP_ID.:178:&SESSION.'
,p_page_id=>178
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(12698232711488208324)
,p_parent_id=>wwv_flow_api.id(7882042110506790243)
,p_short_name=>'Application Administration'
,p_link=>'f?p=&APP_ID.:179:&SESSION.'
,p_page_id=>179
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(13559429027988438792)
,p_parent_id=>wwv_flow_api.id(9022135622537534182)
,p_short_name=>'Work Days'
,p_link=>'f?p=&APP_ID.:57:&SESSION.'
,p_page_id=>57
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(13625219581532016458)
,p_parent_id=>wwv_flow_api.id(9022135622537534182)
,p_short_name=>'Project Templates'
,p_link=>'f?p=&APP_ID.:60:&SESSION.'
,p_page_id=>60
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(13625220752356016463)
,p_parent_id=>wwv_flow_api.id(13625219581532016458)
,p_short_name=>'Project Template'
,p_link=>'f?p=&APP_ID.:77:&SESSION.'
,p_page_id=>77
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(13630306179791829415)
,p_parent_id=>wwv_flow_api.id(13726390832527445232)
,p_short_name=>'Template Milestones'
,p_link=>'f?p=&APP_ID.:47:&SESSION.::&DEBUG.:::'
,p_page_id=>47
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(13630307258901829424)
,p_parent_id=>wwv_flow_api.id(13630306179791829415)
,p_short_name=>'Template Milestone'
,p_link=>'f?p=&APP_ID.:181:&SESSION.::&DEBUG.:::'
,p_page_id=>181
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(13630954456979072161)
,p_parent_id=>wwv_flow_api.id(13726390832527445232)
,p_short_name=>'Template Action Items'
,p_link=>'f?p=&APP_ID.:182:&SESSION.::&DEBUG.:::'
,p_page_id=>182
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(13630955625313072165)
,p_parent_id=>wwv_flow_api.id(13630954456979072161)
,p_short_name=>'Template Action Item'
,p_link=>'f?p=&APP_ID.:183:&SESSION.::&DEBUG.:::'
,p_page_id=>183
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(13726390832527445232)
,p_parent_id=>wwv_flow_api.id(13625219581532016458)
,p_short_name=>'&P184_PROJECT_NAME.'
,p_link=>'f?p=&APP_ID.:184:&SESSION.::&DEBUG.:::'
,p_page_id=>184
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(14126120561276843637)
,p_parent_id=>wwv_flow_api.id(6806666430733384110)
,p_short_name=>'Past Due Milestones'
,p_link=>'f?p=&APP_ID.:29:&SESSION.'
,p_page_id=>29
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(14247169911169513818)
,p_parent_id=>0
,p_short_name=>'&P194_DISPLAY_USERNAME.''s Dashboard'
,p_link=>'f?p=&APP_ID.:194:&SESSION.::&DEBUG.:::'
,p_page_id=>194
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(16136420641066211652)
,p_parent_id=>wwv_flow_api.id(9022135622537534182)
,p_short_name=>'Email Project Details'
,p_link=>'f?p=&APP_ID.:196:&SESSION.::&DEBUG.:::'
,p_page_id=>196
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(16136722935790274178)
,p_parent_id=>wwv_flow_api.id(9022135622537534182)
,p_short_name=>'Email Project Details Send Job'
,p_link=>'f?p=&APP_ID.:197:&SESSION.::&DEBUG.:::'
,p_page_id=>197
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(16951032307904464553)
,p_parent_id=>wwv_flow_api.id(7882042110506790243)
,p_short_name=>'Access Control'
,p_link=>'f?p=&APP_ID.:198:&SESSION.'
,p_page_id=>198
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(17043582568699688240)
,p_parent_id=>wwv_flow_api.id(9022135622537534182)
,p_short_name=>'Feedback'
,p_link=>'f?p=&APP_ID.:203:&SESSION.::&DEBUG.:::'
,p_page_id=>203
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(18183195488671888917)
,p_parent_id=>wwv_flow_api.id(6806666430733384110)
,p_short_name=>'Projects History Report'
,p_link=>'f?p=&APP_ID.:126:&SESSION.::&DEBUG.:::'
,p_page_id=>126
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(18631901309402336520)
,p_parent_id=>wwv_flow_api.id(9022135622537534182)
,p_short_name=>'Email Project Statuses'
,p_link=>'f?p=&APP_ID.:131:&SESSION.'
,p_page_id=>131
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(18632041897145393337)
,p_parent_id=>wwv_flow_api.id(9022135622537534182)
,p_short_name=>'Email Project Statuses Send Job'
,p_link=>'f?p=&APP_ID.:134:&SESSION.'
,p_page_id=>134
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(18982991747398122193)
,p_parent_id=>wwv_flow_api.id(5362413383061206108)
,p_short_name=>'Regions'
,p_link=>'f?p=&APP_ID.:135:&SESSION.::&DEBUG.:::'
,p_page_id=>135
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(18983155113926161228)
,p_parent_id=>wwv_flow_api.id(18982991747398122193)
,p_short_name=>'Countries'
,p_link=>'f?p=&APP_ID.:205:&SESSION.'
,p_page_id=>205
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(18988573868318209276)
,p_parent_id=>wwv_flow_api.id(7882081204003628965)
,p_short_name=>'Project Countries'
,p_link=>'f?p=&APP_ID.:209:&SESSION.::&DEBUG.:::'
,p_page_id=>209
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(19266098683951042919)
,p_parent_id=>wwv_flow_api.id(5362413383061206108)
,p_short_name=>'Deal Types'
,p_link=>'f?p=&APP_ID.:206:&SESSION.::&DEBUG.:::'
,p_page_id=>206
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(19381671147083496450)
,p_parent_id=>wwv_flow_api.id(6806666430733384110)
,p_short_name=>'Milestones Analysis Report'
,p_link=>'f?p=&APP_ID.:214:&SESSION.::&DEBUG.:::'
,p_page_id=>214
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(19397620245679674005)
,p_parent_id=>wwv_flow_api.id(6806666430733384110)
,p_short_name=>'Action Items Analysis Report'
,p_link=>'f?p=&APP_ID.:216:&SESSION.::&DEBUG.:::'
,p_page_id=>216
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(20101674771003139823)
,p_parent_id=>wwv_flow_api.id(6806666430733384110)
,p_short_name=>'Project Issues Report'
,p_link=>'f?p=&APP_ID.:22:&SESSION.'
,p_page_id=>22
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(20136465588113665142)
,p_parent_id=>wwv_flow_api.id(6806666430733384110)
,p_short_name=>'User Involvement Report'
,p_link=>'f?p=&APP_ID.:95:&SESSION.'
,p_page_id=>95
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(20525814422834958049)
,p_parent_id=>wwv_flow_api.id(14247169911169513818)
,p_short_name=>'Mass Update My Open Action Items'
,p_link=>'f?p=&APP_ID.:212:&SESSION.::&DEBUG.:::'
,p_page_id=>212
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(20650888098520240265)
,p_parent_id=>wwv_flow_api.id(20525814422834958049)
,p_short_name=>'Preview My Action Item Changes'
,p_link=>'f?p=&APP_ID.:213:&SESSION.::&DEBUG.:::'
,p_page_id=>213
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(20754055078705591469)
,p_parent_id=>wwv_flow_api.id(14247169911169513818)
,p_short_name=>'Mass Update My Open Milestones'
,p_link=>'f?p=&APP_ID.:215:&SESSION.::&DEBUG.:215::'
,p_page_id=>215
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(20755375119128752988)
,p_parent_id=>wwv_flow_api.id(20754055078705591469)
,p_short_name=>'Preview My Milestone Changes'
,p_link=>'f?p=&APP_ID.:217:&SESSION.::&DEBUG.:::'
,p_page_id=>217
);
wwv_flow_api.component_end;
end;
/
