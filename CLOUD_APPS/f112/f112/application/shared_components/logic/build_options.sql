prompt --application/shared_components/logic/build_options
begin
--   Manifest
--     BUILD OPTIONS: 112
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>112
,p_default_id_offset=>101618418936909290
,p_default_owner=>'MISO'
);
wwv_flow_api.create_build_option(
 p_id=>wwv_flow_api.id(1263250094405801751)
,p_build_option_name=>'Display Row Key'
,p_build_option_status=>'EXCLUDE'
,p_default_on_export=>'EXCLUDE'
,p_on_upgrade_keep_status=>true
,p_build_option_comment=>'Row Keys are alphanumeric unique identifiers that can be used to easily identify a specific customer.  If you wish to see these unique identifiers in the application set to Include; if you do not wish to see these unique identifiers in the applicatio'
||'n set to exclude.'
);
wwv_flow_api.create_build_option(
 p_id=>wwv_flow_api.id(1263332270599875393)
,p_build_option_name=>'Discount Percentage'
,p_build_option_status=>'INCLUDE'
,p_on_upgrade_keep_status=>true
,p_build_option_comment=>'Include a customer attribute that tracks discount percentage at the customer level.  Including the discount will allow this value to be displayed and edited within the application.  Excluding this attribute will hide this feature from the application'
||'.'
);
wwv_flow_api.create_build_option(
 p_id=>wwv_flow_api.id(1263332554156881504)
,p_build_option_name=>'Total Contract Value (TCV)'
,p_build_option_status=>'INCLUDE'
,p_on_upgrade_keep_status=>true
,p_build_option_comment=>'A status of include will expose an Total Contract Value (TCV) attribute of customers.  A status of exclude will hide the attribute.'
);
wwv_flow_api.create_build_option(
 p_id=>wwv_flow_api.id(1263333678179908262)
,p_build_option_name=>'Annual Recurring Revenue (ARR)'
,p_build_option_status=>'INCLUDE'
,p_on_upgrade_keep_status=>true
,p_build_option_comment=>'A status of include will expose an Annual Recurring Revenue attribute of customers.  A status of exclude will hide the attribute.'
);
wwv_flow_api.create_build_option(
 p_id=>wwv_flow_api.id(1436969897904658887)
,p_build_option_name=>'Competitors'
,p_build_option_status=>'INCLUDE'
,p_on_upgrade_keep_status=>true
,p_build_option_comment=>'This feature allows the tracking of competitors, and which customers they are competing against you on.'
);
wwv_flow_api.create_build_option(
 p_id=>wwv_flow_api.id(1440121485808683569)
,p_build_option_name=>'Partners'
,p_build_option_status=>'INCLUDE'
,p_on_upgrade_keep_status=>true
,p_build_option_comment=>'This feature allows the tracking of partners, and which customers they are working with you on.'
);
wwv_flow_api.create_build_option(
 p_id=>wwv_flow_api.id(2666312778173766103)
,p_build_option_name=>'Issues'
,p_build_option_status=>'INCLUDE'
,p_on_upgrade_keep_status=>true
,p_build_option_comment=>'This feature allows end-users to capture and record customer issues.'
);
wwv_flow_api.create_build_option(
 p_id=>wwv_flow_api.id(14388443627311190296)
,p_build_option_name=>'Customer Referencability'
,p_build_option_status=>'INCLUDE'
,p_on_upgrade_keep_status=>true
,p_build_option_comment=>'Support reference attributes at the customer level.'
);
wwv_flow_api.create_build_option(
 p_id=>wwv_flow_api.id(14388502044040264448)
,p_build_option_name=>'Product Referencability'
,p_build_option_status=>'INCLUDE'
,p_on_upgrade_keep_status=>true
,p_build_option_comment=>'Support reference attributes at the customer product level.'
);
wwv_flow_api.create_build_option(
 p_id=>wwv_flow_api.id(14975584692285760063)
,p_build_option_name=>'Number_of_users'
,p_build_option_status=>'INCLUDE'
,p_on_upgrade_keep_status=>true
,p_build_option_comment=>'Expose the number of users attribute'
);
wwv_flow_api.create_build_option(
 p_id=>wwv_flow_api.id(15036893820067294196)
,p_build_option_name=>'Content Completeness Widget'
,p_build_option_status=>'INCLUDE'
,p_on_upgrade_keep_status=>true
,p_build_option_comment=>'This build option controls whether the "Content Completeness" plugin region is displayed on the Customer details page or not.'
);
wwv_flow_api.create_build_option(
 p_id=>wwv_flow_api.id(15036894013381297313)
,p_build_option_name=>'Validations Widget'
,p_build_option_status=>'INCLUDE'
,p_on_upgrade_keep_status=>true
,p_build_option_comment=>'This build option controls whether the "Validations" plugin region is displayed on the Customer details page or not.'
);
wwv_flow_api.create_build_option(
 p_id=>wwv_flow_api.id(15056260724496335381)
,p_build_option_name=>'Geography'
,p_build_option_status=>'INCLUDE'
,p_on_upgrade_keep_status=>true
,p_build_option_comment=>'Including will allow reporting and management of geography by customer.  Excluding will not show the geography attribute for customers.'
);
wwv_flow_api.create_build_option(
 p_id=>wwv_flow_api.id(15056284008974600818)
,p_build_option_name=>'Products and Services'
,p_build_option_status=>'INCLUDE'
,p_on_upgrade_keep_status=>true
,p_build_option_comment=>'Use this build option to enable or disable products and services application functionality.'
);
wwv_flow_api.create_build_option(
 p_id=>wwv_flow_api.id(15056291296847667269)
,p_build_option_name=>'Contacts'
,p_build_option_status=>'INCLUDE'
,p_on_upgrade_keep_status=>true
,p_build_option_comment=>'Use this build option to enable or disable tracking of customer contacts.'
);
wwv_flow_api.create_build_option(
 p_id=>wwv_flow_api.id(15056358001044725725)
,p_build_option_name=>'Reports'
,p_build_option_status=>'INCLUDE'
,p_on_upgrade_keep_status=>true
,p_build_option_comment=>'Enable or disable the application reporting tab that provides summary reporting of application data.  Disable this option to keep the application more terse and focused, enable this option to enable additional reporting functionality.'
);
wwv_flow_api.create_build_option(
 p_id=>wwv_flow_api.id(15056435820874445484)
,p_build_option_name=>'Customer Data Loading'
,p_build_option_status=>'INCLUDE'
,p_on_upgrade_keep_status=>true
,p_build_option_comment=>'Allow application contributors to load customer data from CSV files or cut and paste via a data loading wizard.'
);
wwv_flow_api.create_build_option(
 p_id=>wwv_flow_api.id(16988511387376186907)
,p_build_option_name=>'Strategic Customer Program'
,p_build_option_status=>'EXCLUDE'
,p_default_on_export=>'EXCLUDE'
,p_on_upgrade_keep_status=>true
,p_build_option_comment=>'Support tracking whether a customer is a "Strategic Customer Program" customer or not.'
);
wwv_flow_api.create_build_option(
 p_id=>wwv_flow_api.id(17027876044460849001)
,p_build_option_name=>'Countries'
,p_build_option_status=>'EXCLUDE'
,p_default_on_export=>'EXCLUDE'
,p_on_upgrade_keep_status=>true
,p_build_option_comment=>'Including will allow reporting and management of countries by customer. Excluding will not show the country attribute for customers.'
);
wwv_flow_api.create_build_option(
 p_id=>wwv_flow_api.id(17217818275744521140)
,p_build_option_name=>'Customer Use Case'
,p_build_option_status=>'EXCLUDE'
,p_default_on_export=>'EXCLUDE'
,p_on_upgrade_keep_status=>true
,p_build_option_comment=>'Support a use case status attribute at the customer level (development, test/stage, production, etc...).'
);
wwv_flow_api.create_build_option(
 p_id=>wwv_flow_api.id(17239619681760599362)
,p_build_option_name=>'Customer Status'
,p_build_option_status=>'INCLUDE'
,p_default_on_export=>'INCLUDE'
,p_on_upgrade_keep_status=>true
,p_build_option_comment=>'Support a status attribute at the customer level.'
);
wwv_flow_api.create_build_option(
 p_id=>wwv_flow_api.id(18239047336378534071)
,p_build_option_name=>'Activities'
,p_build_option_status=>'INCLUDE'
,p_on_upgrade_keep_status=>true
,p_build_option_comment=>'This feature allows the tracking of contacts who have attended various events.'
);
wwv_flow_api.create_build_option(
 p_id=>wwv_flow_api.id(18831429921399487739)
,p_build_option_name=>'Feedback'
,p_build_option_status=>'INCLUDE'
,p_on_upgrade_keep_status=>true
,p_build_option_comment=>'This feature allows end-users to submit feedback about the application that can be emailed and viewed by application administrators.'
);
wwv_flow_api.component_end;
end;
/
