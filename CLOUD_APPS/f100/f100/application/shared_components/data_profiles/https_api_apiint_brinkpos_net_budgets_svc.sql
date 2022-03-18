prompt --application/shared_components/data_profiles/https_api_apiint_brinkpos_net_budgets_svc
begin
--   Manifest
--     DATA PROFILE: https://api-apiint.brinkpos.net/budgets.svc
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>100
,p_default_id_offset=>0
,p_default_owner=>'MISO'
);
wwv_flow_api.create_data_profile(
 p_id=>wwv_flow_api.id(46722348830424535)
,p_name=>'https://api-apiint.brinkpos.net/budgets.svc'
,p_format=>'XML'
,p_row_selector=>'/*/HEAD'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(46722538472424540)
,p_data_profile_id=>wwv_flow_api.id(46722348830424535)
,p_name=>'REL'
,p_sequence=>1
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'link[1]/@rel'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(46722863158424540)
,p_data_profile_id=>wwv_flow_api.id(46722348830424535)
,p_name=>'TYPE'
,p_sequence=>2
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'link[1]/@type'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(46723135382424541)
,p_data_profile_id=>wwv_flow_api.id(46722348830424535)
,p_name=>'HREF'
,p_sequence=>3
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'link[1]/@href'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(46723462929424541)
,p_data_profile_id=>wwv_flow_api.id(46722348830424535)
,p_name=>'TYPE2'
,p_sequence=>4
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'STYLE[1]/@type'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(46723745510424541)
,p_data_profile_id=>wwv_flow_api.id(46722348830424535)
,p_name=>'STYLE'
,p_sequence=>5
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'STYLE[1]'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(46724029513424541)
,p_data_profile_id=>wwv_flow_api.id(46722348830424535)
,p_name=>'TITLE'
,p_sequence=>6
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'TITLE[1]'
);
wwv_flow_api.component_end;
end;
/
