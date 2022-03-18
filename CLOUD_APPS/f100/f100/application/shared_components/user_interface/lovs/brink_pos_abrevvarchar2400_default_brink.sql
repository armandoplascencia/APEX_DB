prompt --application/shared_components/user_interface/lovs/brink_pos_abrevvarchar2400_default_brink
begin
--   Manifest
--     BRINK_POS.ABREVVARCHAR2400_DEFAULT_BRINK
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>100
,p_default_id_offset=>0
,p_default_owner=>'MISO'
);
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(46232869757879358)
,p_lov_name=>'BRINK_POS.ABREVVARCHAR2400_DEFAULT_BRINK'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'BRINK_POS'
,p_return_column_name=>'BRINK_PO_ID'
,p_display_column_name=>'ABREVVARCHAR2400_DEFAULT_BRINK'
,p_default_sort_column_name=>'ABREVVARCHAR2400_DEFAULT_BRINK'
,p_default_sort_direction=>'ASC'
);
wwv_flow_api.component_end;
end;
/
