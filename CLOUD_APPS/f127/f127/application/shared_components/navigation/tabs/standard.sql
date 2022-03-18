prompt --application/shared_components/navigation/tabs/standard
begin
--   Manifest
--     TABS: 127
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>127
,p_default_id_offset=>99999615750817235
,p_default_owner=>'MISO'
);
wwv_flow_api.create_tab(
 p_id=>wwv_flow_api.id(108708728635896501)
,p_tab_set=>'TS1'
,p_tab_sequence=>10
,p_tab_name=>'T_HOME'
,p_tab_text=>'Home'
,p_tab_step=>1
);
wwv_flow_api.create_tab(
 p_id=>wwv_flow_api.id(67057076823497683996)
,p_tab_set=>'TS1'
,p_tab_sequence=>20
,p_tab_name=>'Jobs'
,p_tab_text=>'Jobs'
,p_tab_step=>3
);
wwv_flow_api.create_tab(
 p_id=>wwv_flow_api.id(101071158482448398)
,p_tab_set=>'TS1'
,p_tab_sequence=>30
,p_tab_name=>'Reports'
,p_tab_text=>'Reports'
,p_tab_step=>2
);
wwv_flow_api.component_end;
end;
/
