prompt --application/deployment/install/upgrade_populate_fiscal_quarters
begin
--   Manifest
--     INSTALL: UPGRADE-Populate Fiscal Quarters
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>134
,p_default_id_offset=>172493832712964115
,p_default_owner=>'MISO'
);
wwv_flow_api.create_install_script(
 p_id=>wwv_flow_api.id(3478836721201583288)
,p_install_id=>wwv_flow_api.id(9012014618759672631)
,p_name=>'Populate Fiscal Quarters'
,p_sequence=>1030
,p_script_type=>'UPGRADE'
,p_condition_type=>'NOT_EXISTS'
,p_condition=>'select null from eba_proj_fy_periods'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    eba_proj_dates.gen_quarters(p_start_month => ''01'', p_timezone => ''US/Pacific'', p_num_years => 30, p_year_fmt => ''YYYY'', p_delimiter => '' - '');',
'end;',
'/'))
);
wwv_flow_api.component_end;
end;
/
