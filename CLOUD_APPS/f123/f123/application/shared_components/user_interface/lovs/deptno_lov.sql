prompt --application/shared_components/user_interface/lovs/deptno_lov
begin
--   Manifest
--     DEPTNO LOV
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>123
,p_default_id_offset=>111717178695017138
,p_default_owner=>'MISO'
);
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(3258160275735714126)
,p_lov_name=>'DEPTNO LOV'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct deptno d, deptno r',
'  from eba_demo_cs_emp',
' order by 1'))
,p_source_type=>'LEGACY_SQL'
,p_location=>'LOCAL'
);
wwv_flow_api.component_end;
end;
/
