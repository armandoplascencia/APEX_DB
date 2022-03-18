prompt --application/shared_components/navigation/breadcrumbs/breadcrumb
begin
--   Manifest
--     MENU: Breadcrumb
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>112
,p_default_id_offset=>101618418936909290
,p_default_owner=>'MISO'
);
wwv_flow_api.create_menu(
 p_id=>wwv_flow_api.id(17940232663340213707)
,p_name=>'Breadcrumb'
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(1460607837548150376)
,p_parent_id=>wwv_flow_api.id(17940235776415236405)
,p_short_name=>'ACL Features'
,p_link=>'f?p=&APP_ID.:123:&SESSION.'
,p_page_id=>123
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(2129924317059195695)
,p_parent_id=>wwv_flow_api.id(17940377774345011578)
,p_short_name=>'Application Timeline'
,p_link=>'f?p=&APP_ID.:124:&SESSION.::&DEBUG.:::'
,p_page_id=>124
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(2666288943154644373)
,p_parent_id=>wwv_flow_api.id(16522780207779727478)
,p_short_name=>'Customer Issues'
,p_link=>'f?p=&APP_ID.:131:&SESSION.::&DEBUG.:::'
,p_page_id=>131
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(2666552063397538089)
,p_parent_id=>wwv_flow_api.id(17940235776415236405)
,p_short_name=>'Issue Statuses'
,p_link=>'f?p=&APP_ID.:132:&SESSION.'
,p_page_id=>132
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(2666705876867407237)
,p_short_name=>'Issues'
,p_link=>'f?p=&APP_ID.:134:&SESSION.'
,p_page_id=>134
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(13642928407651142727)
,p_parent_id=>wwv_flow_api.id(17940377774345011578)
,p_short_name=>'All Customers'
,p_link=>'f?p=&APP_ID.:93:&SESSION.'
,p_page_id=>93
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(14380747706023230146)
,p_parent_id=>wwv_flow_api.id(17940235776415236405)
,p_short_name=>'Reference Statuses'
,p_link=>'f?p=&APP_ID.:94:&SESSION.::&DEBUG.:::'
,p_page_id=>94
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(14820275020085293577)
,p_parent_id=>wwv_flow_api.id(17940235776415236405)
,p_short_name=>'Page Privileges'
,p_link=>'f?p=&APP_ID.:26:&SESSION.::&DEBUG.:::'
,p_page_id=>26
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(14837428822653752473)
,p_parent_id=>wwv_flow_api.id(17940235776415236405)
,p_short_name=>'Application Settings'
,p_link=>'f?p=&APP_ID.:28:&SESSION.::&DEBUG.:::'
,p_page_id=>28
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(14915458903710622425)
,p_parent_id=>wwv_flow_api.id(17940235776415236405)
,p_short_name=>'Username Format'
,p_link=>'f?p=&APP_ID.:16:&SESSION.'
,p_page_id=>16
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(14915469025626644199)
,p_parent_id=>wwv_flow_api.id(17940235776415236405)
,p_short_name=>'Add Multiple Users'
,p_link=>'f?p=&APP_ID.:73:&SESSION.::&DEBUG.:::'
,p_page_id=>73
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(14915487098493683212)
,p_parent_id=>wwv_flow_api.id(17940235776415236405)
,p_short_name=>'Add Multiple Users'
,p_link=>'f?p=&APP_ID.:74:&SESSION.::&DEBUG.:::'
,p_page_id=>74
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(14948021621705258832)
,p_parent_id=>wwv_flow_api.id(17940235776415236405)
,p_short_name=>'Industries'
,p_link=>'f?p=&APP_ID.:27:&SESSION.::&DEBUG.:::'
,p_page_id=>27
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(14948022315906258839)
,p_parent_id=>wwv_flow_api.id(14948021621705258832)
,p_short_name=>'Industry'
,p_link=>'f?p=&APP_ID.:30:&SESSION.::&DEBUG.:::'
,p_page_id=>30
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(14964674098353772734)
,p_parent_id=>0
,p_short_name=>'Customers'
,p_link=>'f?p=&APP_ID.:59:&SESSION.::&DEBUG.:::'
,p_page_id=>59
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(14973790933938471953)
,p_short_name=>'Preferences'
,p_link=>'f?p=&APP_ID.:65:&SESSION.'
,p_page_id=>65
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(15034086013743696161)
,p_parent_id=>wwv_flow_api.id(16522780207779727478)
,p_short_name=>'Validate Customer'
,p_link=>'f?p=&APP_ID.:10:&SESSION.'
,p_page_id=>10
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(15036900198264320102)
,p_parent_id=>wwv_flow_api.id(17940235776415236405)
,p_short_name=>'Build Options'
,p_link=>'f?p=&APP_ID.:11:&SESSION.'
,p_page_id=>11
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(15039768923003350247)
,p_parent_id=>wwv_flow_api.id(16522780207779727478)
,p_short_name=>'Customer Usage Metrics'
,p_link=>'f?p=&APP_ID.:13:&SESSION.'
,p_page_id=>13
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(15056251714643272558)
,p_parent_id=>wwv_flow_api.id(17940377774345011578)
,p_short_name=>'Application Activity by Page'
,p_link=>'f?p=&APP_ID.:24:&SESSION.'
,p_page_id=>24
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(15066376317747081899)
,p_parent_id=>wwv_flow_api.id(17940377774345011578)
,p_short_name=>'Application Activity'
,p_link=>'f?p=&APP_ID.:46:&SESSION.'
,p_page_id=>46
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(15168092522848906965)
,p_parent_id=>wwv_flow_api.id(17940235776415236405)
,p_short_name=>'Welcome Text'
,p_link=>'f?p=&APP_ID.:14:&SESSION.'
,p_page_id=>14
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(15335339498797601448)
,p_parent_id=>wwv_flow_api.id(17940235776415236405)
,p_short_name=>'Application Theme Style'
,p_link=>'f?p=&APP_ID.:70:&SESSION.'
,p_page_id=>70
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(15486029501976205637)
,p_parent_id=>0
,p_short_name=>'Manage Sample Data'
,p_link=>'f?p=&APP_ID.:77:&SESSION.::&DEBUG.:::'
,p_page_id=>77
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(15741913781358306317)
,p_parent_id=>wwv_flow_api.id(17940235776415236405)
,p_short_name=>'Reference Types'
,p_link=>'f?p=&APP_ID.:78:&SESSION.'
,p_page_id=>78
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(15741929893563369604)
,p_parent_id=>wwv_flow_api.id(15741913781358306317)
,p_short_name=>'Reference Type Details'
,p_link=>'f?p=&APP_ID.:79:&SESSION.'
,p_page_id=>79
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(15790448299628350517)
,p_parent_id=>wwv_flow_api.id(17940235776415236405)
,p_short_name=>'Access Control List'
,p_link=>'f?p=&APP_ID.:57:&SESSION.::&DEBUG.:::'
,p_page_id=>57
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(15871101826141173108)
,p_parent_id=>wwv_flow_api.id(17940377774345011578)
,p_short_name=>'Customers by Category'
,p_link=>'f?p=&APP_ID.:32:&SESSION.::&DEBUG.:::'
,p_page_id=>32
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(15871107205674222831)
,p_parent_id=>wwv_flow_api.id(14964674098353772734)
,p_short_name=>'Geographies'
,p_link=>'f?p=&APP_ID.:85:&SESSION.::&DEBUG.:::'
,p_page_id=>85
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(15872022649058333105)
,p_parent_id=>wwv_flow_api.id(14964674098353772734)
,p_short_name=>'Referenceability'
,p_link=>'f?p=&APP_ID.:86:&SESSION.::&DEBUG.:::'
,p_page_id=>86
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(15919358877904967618)
,p_parent_id=>wwv_flow_api.id(17940235776415236405)
,p_short_name=>'Reference Phases'
,p_link=>'f?p=&APP_ID.:87:&SESSION.'
,p_page_id=>87
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(15919360121859967620)
,p_parent_id=>wwv_flow_api.id(15919358877904967618)
,p_short_name=>'Reference Phase'
,p_link=>'f?p=&APP_ID.:88:&SESSION.'
,p_page_id=>88
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(15944254331709826704)
,p_parent_id=>wwv_flow_api.id(17940235776415236405)
,p_short_name=>'Sales Channels'
,p_link=>'f?p=&APP_ID.:89:&SESSION.::&DEBUG.:::'
,p_page_id=>89
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(15944256134201835542)
,p_short_name=>'Sales Channel'
,p_link=>'f?p=&FLOW_ID.:90:&SESSION.'
,p_page_id=>90
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(15956592013985842503)
,p_parent_id=>wwv_flow_api.id(15790448299628350517)
,p_short_name=>'User Details'
,p_link=>'f?p=&APP_ID.:58:&SESSION.::&DEBUG.:::'
,p_page_id=>58
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(15969567913319870233)
,p_parent_id=>wwv_flow_api.id(15872022649058333105)
,p_short_name=>'Referenceability Report'
,p_link=>'f?p=&APP_ID.:91:&SESSION.::&DEBUG.:::'
,p_page_id=>91
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(15970196877919692424)
,p_short_name=>'Products'
,p_link=>'f?p=&FLOW_ID.:92:&SESSION.'
,p_page_id=>92
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(15987843695440919454)
,p_parent_id=>wwv_flow_api.id(17940369486194920397)
,p_short_name=>'Data Loading'
,p_link=>'f?p=&APP_ID.:60:&SESSION.'
,p_page_id=>60
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(15987851419724919477)
,p_parent_id=>wwv_flow_api.id(17940369486194920397)
,p_short_name=>'Data Loading'
,p_link=>'f?p=&APP_ID.:61:&SESSION.'
,p_page_id=>61
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(15987853618714919480)
,p_parent_id=>wwv_flow_api.id(17940369486194920397)
,p_short_name=>'Data Loading'
,p_link=>'f?p=&APP_ID.:62:&SESSION.'
,p_page_id=>62
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(15987860526334919489)
,p_parent_id=>wwv_flow_api.id(17940369486194920397)
,p_short_name=>'Data Loading'
,p_link=>'f?p=&APP_ID.:63:&SESSION.'
,p_page_id=>63
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(16066031419350031657)
,p_parent_id=>wwv_flow_api.id(17940235776415236405)
,p_short_name=>'Access Control Configuration'
,p_link=>'f?p=&FLOW_ID.:35:&SESSION.'
,p_page_id=>35
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(16409338108210046346)
,p_short_name=>'Search Results'
,p_link=>'f?p=&FLOW_ID.:15:&SESSION.'
,p_page_id=>15
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(16446718995062771851)
,p_parent_id=>wwv_flow_api.id(17940235776415236405)
,p_short_name=>'Notifications'
,p_link=>'f?p=&FLOW_ID.:34:&SESSION.'
,p_page_id=>34
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(16447197016199852313)
,p_parent_id=>wwv_flow_api.id(16446718995062771851)
,p_short_name=>'Notification'
,p_link=>'f?p=&FLOW_ID.:36:&SESSION.'
,p_page_id=>36
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(16522780207779727478)
,p_parent_id=>wwv_flow_api.id(14964674098353772734)
,p_short_name=>'&CUSTOMER.'
,p_link=>'f?p=&APP_ID.:50:&SESSION.::&DEBUG.:::'
,p_page_id=>50
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(16523840622078930704)
,p_parent_id=>wwv_flow_api.id(16522780207779727478)
,p_short_name=>'Customer Updates'
,p_link=>'f?p=&APP_ID.:47:&SESSION.::&DEBUG.:::'
,p_page_id=>47
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(16523983218165951854)
,p_parent_id=>wwv_flow_api.id(16522780207779727478)
,p_short_name=>'Customer Links'
,p_link=>'f?p=&FLOW_ID.:51:&SESSION.'
,p_page_id=>51
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(16524019504824954900)
,p_parent_id=>wwv_flow_api.id(16522780207779727478)
,p_short_name=>'Customer Attachments'
,p_link=>'f?p=&APP_ID.:52:&SESSION.::&DEBUG.:::'
,p_page_id=>52
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(16690206025076212397)
,p_parent_id=>wwv_flow_api.id(16524019504824954900)
,p_short_name=>'Customer Attachment'
,p_link=>'f?p=&APP_ID.:64:&SESSION.::&DEBUG.:::'
,p_page_id=>64
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(16691486997919287722)
,p_parent_id=>wwv_flow_api.id(16523983218165951854)
,p_short_name=>'Link'
,p_link=>'f?p=&FLOW_ID.:66:&SESSION.'
,p_page_id=>66
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(16694107496333444641)
,p_parent_id=>wwv_flow_api.id(16522780207779727478)
,p_short_name=>'Customer Products'
,p_link=>'f?p=&APP_ID.:67:&SESSION.::&DEBUG.:::'
,p_page_id=>67
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(16694107816681444643)
,p_parent_id=>wwv_flow_api.id(16694107496333444641)
,p_short_name=>'Product'
,p_link=>'f?p=&FLOW_ID.:68:&SESSION.'
,p_page_id=>68
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(16694246311146421590)
,p_parent_id=>wwv_flow_api.id(16522780207779727478)
,p_short_name=>'Customer Contacts'
,p_link=>'f?p=&FLOW_ID.:25:&SESSION.'
,p_page_id=>25
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(16694246619750421591)
,p_parent_id=>wwv_flow_api.id(16694246311146421590)
,p_short_name=>'Customer Contact'
,p_link=>'f?p=&APP_ID.:37:&SESSION.::&DEBUG.:::'
,p_page_id=>37
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(16711497224805184592)
,p_parent_id=>wwv_flow_api.id(14973790933938471953)
,p_short_name=>'Time Zone'
,p_link=>'f?p=&APP_ID.:76:&SESSION.::&DEBUG.:::'
,p_page_id=>76
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(16734216796923512951)
,p_parent_id=>wwv_flow_api.id(16523840622078930704)
,p_short_name=>'Maintain Update'
,p_link=>'f?p=&APP_ID.:7:&SESSION.::&DEBUG.:::'
,p_page_id=>7
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(16809751622489192161)
,p_parent_id=>wwv_flow_api.id(17940235776415236405)
,p_short_name=>'Application Error Log'
,p_link=>'f?p=&APP_ID.:175:&SESSION.::&DEBUG.:::'
,p_page_id=>175
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(16837720096511524262)
,p_parent_id=>wwv_flow_api.id(17940377774345011578)
,p_short_name=>'Activity Calendar'
,p_link=>'f?p=&FLOW_ID.:21:&SESSION.'
,p_page_id=>21
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(17027836300815837757)
,p_parent_id=>wwv_flow_api.id(17940235776415236405)
,p_short_name=>'Countries'
,p_link=>'f?p=&APP_ID.:98:&SESSION.'
,p_page_id=>98
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(17101742198038141776)
,p_parent_id=>wwv_flow_api.id(17940235776415236405)
,p_short_name=>'Customer Statuses'
,p_link=>'f?p=&APP_ID.:102:&SESSION.'
,p_page_id=>102
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(17101781473547106893)
,p_parent_id=>wwv_flow_api.id(17101742198038141776)
,p_short_name=>'Status Details'
,p_link=>'f?p=&APP_ID.:103:&SESSION.'
,p_page_id=>103
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(17226558548731679787)
,p_parent_id=>wwv_flow_api.id(17940235776415236405)
,p_short_name=>'Customer Use Cases'
,p_link=>'f?p=&APP_ID.:104:&SESSION.'
,p_page_id=>104
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(17226946405381734359)
,p_parent_id=>wwv_flow_api.id(17226558548731679787)
,p_short_name=>'Use Case Details'
,p_link=>'f?p=&APP_ID.:105:&SESSION.'
,p_page_id=>105
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(17815750546377834729)
,p_parent_id=>wwv_flow_api.id(17940235776415236405)
,p_short_name=>'Implementation Partners'
,p_link=>'f?p=&APP_ID.:106:&SESSION.'
,p_page_id=>106
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(17815752598884834741)
,p_parent_id=>wwv_flow_api.id(17815750546377834729)
,p_short_name=>'Implementation Partner Details'
,p_link=>'f?p=&APP_ID.:107:&SESSION.'
,p_page_id=>107
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(17816190805116003518)
,p_parent_id=>wwv_flow_api.id(17940235776415236405)
,p_short_name=>'Competitors'
,p_link=>'f?p=&APP_ID.:108:&SESSION.'
,p_page_id=>108
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(17816192153044003534)
,p_parent_id=>wwv_flow_api.id(17816190805116003518)
,p_short_name=>'Competitor Details'
,p_link=>'f?p=&APP_ID.:109:&SESSION.'
,p_page_id=>109
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(17862620356118896122)
,p_parent_id=>wwv_flow_api.id(17940235776415236405)
,p_short_name=>'Product Families'
,p_link=>'f?p=&APP_ID.:112:&SESSION.'
,p_page_id=>112
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(17862621531444896134)
,p_parent_id=>wwv_flow_api.id(17862620356118896122)
,p_short_name=>'Product Family Details'
,p_link=>'f?p=&APP_ID.:113:&SESSION.'
,p_page_id=>113
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(17878169959853036791)
,p_short_name=>'Partners'
,p_link=>'f?p=&FLOW_ID.:115:&SESSION.'
,p_page_id=>115
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(17878236851937056970)
,p_short_name=>'Competitors'
,p_link=>'f?p=&APP_ID.:116:&SESSION.'
,p_page_id=>116
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(17892956018384989681)
,p_short_name=>'Search Results'
,p_link=>'f?p=&FLOW_ID.:33:&SESSION.'
,p_page_id=>33
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(17895075040529358328)
,p_parent_id=>wwv_flow_api.id(17940377774345011578)
,p_short_name=>'Updates'
,p_link=>'f?p=&APP_ID.:22:&SESSION.::&DEBUG.:::'
,p_page_id=>22
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(17896373033150233073)
,p_parent_id=>0
,p_short_name=>'Help'
,p_link=>'f?p=&APP_ID.:31:&SESSION.::&DEBUG.:::'
,p_page_id=>31
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(17904705522330211819)
,p_parent_id=>wwv_flow_api.id(17940235776415236405)
,p_short_name=>'Products'
,p_link=>'f?p=&FLOW_ID.:42:&SESSION.'
,p_page_id=>42
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(17904705725585211820)
,p_parent_id=>wwv_flow_api.id(17904705522330211819)
,p_short_name=>'Product'
,p_link=>'f?p=&FLOW_ID.:43:&SESSION.'
,p_page_id=>43
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(17905118634630359911)
,p_parent_id=>0
,p_short_name=>'Products and Services'
,p_link=>'f?p=&APP_ID.:44:&SESSION.::&DEBUG.:::'
,p_page_id=>44
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(17905145219776945712)
,p_parent_id=>wwv_flow_api.id(17905118634630359911)
,p_short_name=>'Customer Product Use'
,p_link=>'f?p=&FLOW_ID.:19:&SESSION.'
,p_page_id=>19
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(17905548931334300649)
,p_parent_id=>wwv_flow_api.id(17940377774345011578)
,p_short_name=>'Activity'
,p_link=>'f?p=&FLOW_ID.:45:&SESSION.'
,p_page_id=>45
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(17905733925722569821)
,p_parent_id=>wwv_flow_api.id(17940235776415236405)
,p_short_name=>'Geographies'
,p_link=>'f?p=&FLOW_ID.:48:&SESSION.'
,p_page_id=>48
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(17907041141608851369)
,p_parent_id=>wwv_flow_api.id(17905733925722569821)
,p_short_name=>'Geography'
,p_link=>'f?p=&FLOW_ID.:49:&SESSION.'
,p_page_id=>49
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(17912515320929505284)
,p_parent_id=>wwv_flow_api.id(17940377774345011578)
,p_short_name=>'Tags'
,p_link=>'f?p=&FLOW_ID.:40:&SESSION.'
,p_page_id=>40
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(17940235776415236405)
,p_parent_id=>0
,p_short_name=>' Administration'
,p_link=>'f?p=&APP_ID.:12:&SESSION.::&DEBUG.:::'
,p_page_id=>12
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(17940249484088692686)
,p_parent_id=>wwv_flow_api.id(17940235776415236405)
,p_short_name=>'Categories'
,p_link=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.:::'
,p_page_id=>3
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(17940249970713698276)
,p_parent_id=>wwv_flow_api.id(17940249484088692686)
,p_short_name=>'Category Details'
,p_link=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.:::'
,p_page_id=>4
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(17940359678819785821)
,p_parent_id=>wwv_flow_api.id(17940235776415236405)
,p_short_name=>'Contact Types'
,p_link=>'f?p=&APP_ID.:8:&SESSION.::&DEBUG.:::'
,p_page_id=>8
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(17940360058518789408)
,p_parent_id=>wwv_flow_api.id(17940359678819785821)
,p_short_name=>' Contact Type Details'
,p_link=>'f?p=&APP_ID.:9:&SESSION.::&DEBUG.:::'
,p_page_id=>9
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(17940360470985792980)
,p_parent_id=>wwv_flow_api.id(17940235776415236405)
,p_short_name=>'Customer Types'
,p_link=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.:::'
,p_page_id=>5
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(17940360883583806100)
,p_parent_id=>wwv_flow_api.id(17940360470985792980)
,p_short_name=>'Customer Type Code'
,p_link=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.:::'
,p_page_id=>6
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(17940369486194920397)
,p_parent_id=>0
,p_short_name=>' Contacts'
,p_link=>'f?p=&APP_ID.:18:&SESSION.::&DEBUG.:::'
,p_page_id=>18
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(17940369865546923890)
,p_parent_id=>wwv_flow_api.id(17940369486194920397)
,p_short_name=>' Contact Details'
,p_link=>'f?p=&APP_ID.:20:&SESSION.::&DEBUG.:::'
,p_page_id=>20
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(17940371080915937810)
,p_parent_id=>0
,p_short_name=>' Dashboard'
,p_link=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
,p_page_id=>1
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(17940371464770942609)
,p_parent_id=>0
,p_short_name=>'Customer'
,p_link=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:::'
,p_page_id=>2
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(17940377774345011578)
,p_parent_id=>0
,p_short_name=>'Reports'
,p_link=>'f?p=&APP_ID.:17:&SESSION.::&DEBUG.:::'
,p_page_id=>17
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(17940382258462035323)
,p_parent_id=>wwv_flow_api.id(17940377774345011578)
,p_short_name=>'Recent Updates'
,p_link=>'f?p=&APP_ID.:29:&SESSION.::&DEBUG.:::'
,p_page_id=>29
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(17940383276124040437)
,p_parent_id=>wwv_flow_api.id(17940377774345011578)
,p_short_name=>'Top Users'
,p_link=>'f?p=&APP_ID.:23:&SESSION.::&DEBUG.:::'
,p_page_id=>23
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(18235122638621687645)
,p_parent_id=>wwv_flow_api.id(17940235776415236405)
,p_short_name=>'Upload Customers'
,p_link=>'f?p=&APP_ID.:125:&SESSION.'
,p_page_id=>125
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(18235138924355687679)
,p_parent_id=>wwv_flow_api.id(17940235776415236405)
,p_short_name=>'Upload Customers'
,p_link=>'f?p=&APP_ID.:126:&SESSION.'
,p_page_id=>126
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(18235143216189687683)
,p_parent_id=>wwv_flow_api.id(17940235776415236405)
,p_short_name=>'Upload Customers'
,p_link=>'f?p=&APP_ID.:127:&SESSION.'
,p_page_id=>127
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(18235165874531687722)
,p_parent_id=>wwv_flow_api.id(17940235776415236405)
,p_short_name=>'Upload Customers'
,p_link=>'f?p=&APP_ID.:128:&SESSION.'
,p_page_id=>128
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(18238961791756504225)
,p_parent_id=>wwv_flow_api.id(17940235776415236405)
,p_short_name=>'Activity Types'
,p_link=>'f?p=&APP_ID.:53:&SESSION.'
,p_page_id=>53
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(18238963060838504230)
,p_parent_id=>wwv_flow_api.id(18238961791756504225)
,p_short_name=>'Activity Type'
,p_link=>'f?p=&APP_ID.:54:&SESSION.'
,p_page_id=>54
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(18245857878735786379)
,p_short_name=>'Activities'
,p_link=>'f?p=&APP_ID.:55:&SESSION.'
,p_page_id=>55
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(18245859023672786392)
,p_parent_id=>wwv_flow_api.id(18245857878735786379)
,p_short_name=>'Activity Details'
,p_link=>'f?p=&APP_ID.:56:&SESSION.'
,p_page_id=>56
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(18268300389540449495)
,p_parent_id=>wwv_flow_api.id(18245857878735786379)
,p_short_name=>'&P145_ACTIVITY.'
,p_link=>'f?p=&APP_ID.:145:&SESSION.::&DEBUG.:::'
,p_page_id=>145
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(18281224711770884864)
,p_parent_id=>wwv_flow_api.id(16522780207779727478)
,p_short_name=>'Customer Activities'
,p_link=>'f?p=&APP_ID.:149:&SESSION.'
,p_page_id=>149
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(18281225891276884876)
,p_parent_id=>wwv_flow_api.id(18281224711770884864)
,p_short_name=>'Customer Activity'
,p_link=>'f?p=&APP_ID.:150:&SESSION.'
,p_page_id=>150
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(18831820060611561448)
,p_parent_id=>wwv_flow_api.id(17940235776415236405)
,p_short_name=>'Review Feedback'
,p_link=>'f?p=&APP_ID.:119:&SESSION.::&DEBUG.:::'
,p_page_id=>119
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(18835481438580424764)
,p_parent_id=>wwv_flow_api.id(17940235776415236405)
,p_short_name=>'Email Log'
,p_link=>'f?p=&APP_ID.:121:&SESSION.'
,p_page_id=>121
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(20347058284271667848)
,p_parent_id=>wwv_flow_api.id(15970196877919692424)
,p_short_name=>'Referenceability'
,p_link=>'f?p=&APP_ID.:100:&SESSION.'
,p_page_id=>100
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(20409636199462004966)
,p_parent_id=>wwv_flow_api.id(20347058284271667848)
,p_short_name=>'Referenceability Report'
,p_link=>'f?p=&APP_ID.:122:&SESSION.'
,p_page_id=>122
);
wwv_flow_api.component_end;
end;
/
