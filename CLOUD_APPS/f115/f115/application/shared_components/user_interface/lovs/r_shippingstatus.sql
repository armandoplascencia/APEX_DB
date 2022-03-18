prompt --application/shared_components/user_interface/lovs/r_shippingstatus
begin
--   Manifest
--     R_SHIPPINGSTATUS
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>115
,p_default_id_offset=>358200981570066140
,p_default_owner=>'MISO'
);
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(188418308458906945)
,p_lov_name=>'R_SHIPPINGSTATUS'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'R_SHIPPINGSTATUS'
,p_return_column_name=>'SPS_ID'
,p_display_column_name=>'SPS_NAME'
,p_default_sort_column_name=>'SPS_NAME'
,p_default_sort_direction=>'ASC'
);
wwv_flow_api.component_end;
end;
/
