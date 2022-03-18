prompt --application/shared_components/logic/build_options
begin
--   Manifest
--     BUILD OPTIONS: 126
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>126
,p_default_id_offset=>101651461840938715
,p_default_owner=>'MISO'
);
wwv_flow_api.create_build_option(
 p_id=>wwv_flow_api.id(1713314835132982612)
,p_build_option_name=>'Include External / Internal Event Types'
,p_build_option_status=>'INCLUDE'
,p_on_upgrade_keep_status=>true
,p_build_option_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Differentiate between events that can be viewed by the public (external) and those that can only be viewed by those entered into the Access Control List (internal).',
'This option requires the Access Control Scope to be set to ''Reader access for any authenticated user''. By populating the Contact Email on events with the relevant addresses from users listed in the Access Control List, the Contact can be used to sear'
||'ch for events specifically for that person.'))
);
wwv_flow_api.create_build_option(
 p_id=>wwv_flow_api.id(1760476393448857035)
,p_build_option_name=>'Show Updates'
,p_build_option_status=>'INCLUDE'
,p_on_upgrade_keep_status=>true
,p_build_option_comment=>'Enable or disable the display of event updates.'
);
wwv_flow_api.create_build_option(
 p_id=>wwv_flow_api.id(1774773895817943118)
,p_build_option_name=>'Show Time'
,p_build_option_status=>'INCLUDE'
,p_on_upgrade_keep_status=>true
,p_build_option_comment=>'Select whether time will be displayed on calendar entries. If included, the calendar will also show Week and Day views.'
);
wwv_flow_api.create_build_option(
 p_id=>wwv_flow_api.id(1938766493817367015)
,p_build_option_name=>'Include Multiple Calendars'
,p_build_option_status=>'INCLUDE'
,p_on_upgrade_keep_status=>true
,p_build_option_comment=>'Determine whether multiple calendars can be defined, and events can be entered against the different calendars. Administrators can optionally define which calendars a specific user can view and edit. '
);
wwv_flow_api.component_end;
end;
/
