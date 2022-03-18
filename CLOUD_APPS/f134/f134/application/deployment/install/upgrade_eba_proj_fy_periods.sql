prompt --application/deployment/install/upgrade_eba_proj_fy_periods
begin
--   Manifest
--     INSTALL: UPGRADE-EBA_PROJ_FY_PERIODS
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
 p_id=>wwv_flow_api.id(3478836086226576691)
,p_install_id=>wwv_flow_api.id(9012014618759672631)
,p_name=>'EBA_PROJ_FY_PERIODS'
,p_sequence=>840
,p_script_type=>'UPGRADE'
,p_condition_type=>'NOT_EXISTS'
,p_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'from user_tables',
'where table_name = ''EBA_PROJ_FY_PERIODS'''))
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'CREATE TABLE  "EBA_PROJ_FY_PERIODS" ',
'   (    "ID" NUMBER, ',
'    "ROW_VERSION_NUMBER" NUMBER, ',
'    "PERIOD_NAME" VARCHAR2(255) NOT NULL ENABLE, ',
'    "FIRST_DAY" TIMESTAMP (6) WITH LOCAL TIME ZONE, ',
'    "LAST_DAY" TIMESTAMP (6) WITH LOCAL TIME ZONE, ',
'    "FISCAL_YEAR" NUMBER(2,0)',
'   )',
'/'))
);
wwv_flow_api.component_end;
end;
/
