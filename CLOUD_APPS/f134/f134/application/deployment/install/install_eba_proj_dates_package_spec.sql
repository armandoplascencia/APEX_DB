prompt --application/deployment/install/install_eba_proj_dates_package_spec
begin
--   Manifest
--     INSTALL: INSTALL-eba_proj_dates package spec
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
 p_id=>wwv_flow_api.id(13562171338987923354)
,p_install_id=>wwv_flow_api.id(9012014618759672631)
,p_name=>'eba_proj_dates package spec'
,p_sequence=>60
,p_script_type=>'INSTALL'
,p_script_option=>'PACKAGE_SPEC'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'CREATE OR REPLACE PACKAGE "EBA_PROJ_DATES" as',
'',
'    function get_next_workday( p_date in timestamp ) return timestamp;',
'',
'    function get_prev_workday( p_date in timestamp ) return timestamp;',
'',
'    function add_workdays( p_date in timestamp, p_days in number ) return timestamp;',
'',
'    function days_between( p_start in timestamp, p_end in timestamp ) return number;',
'',
'    procedure gen_quarters( p_start_month in varchar2 default ''01'', p_timezone in varchar2, p_num_years in number, p_year_fmt in varchar2, p_delimiter in varchar2 );',
'',
'end eba_proj_dates;',
'/',
'',
''))
);
wwv_flow_api.create_install_object(
 p_id=>wwv_flow_api.id(13562171496512923358)
,p_script_id=>wwv_flow_api.id(13562171338987923354)
,p_object_owner=>'#OWNER#'
,p_object_type=>'PACKAGE'
,p_object_name=>'EBA_PROJ_DATES'
,p_last_updated_on=>to_date('20160201202327','YYYYMMDDHH24MISS')
,p_created_by=>'DAVID'
,p_created_on=>to_date('20160201202327','YYYYMMDDHH24MISS')
);
wwv_flow_api.component_end;
end;
/
