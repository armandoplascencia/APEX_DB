prompt --application/shared_components/data_loads/brands_dld
begin
--   Manifest
--     DATA LOAD: Brands_DLD
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>103
,p_default_id_offset=>0
,p_default_owner=>'MISO'
);
wwv_flow_api.create_data_profile(
 p_id=>wwv_flow_api.id(21443776078722001)
,p_name=>'Brands_DLD'
,p_format=>'CSV'
,p_encoding=>'utf-8'
,p_csv_enclosed=>'"'
,p_has_header_row=>true
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(21444006615722038)
,p_data_profile_id=>wwv_flow_api.id(21443776078722001)
,p_name=>'NAME'
,p_sequence=>1
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>1020
,p_selector_type=>'NAME'
,p_selector=>'BRAND'
);
wwv_flow_api.create_load_table(
 p_id=>wwv_flow_api.id(21444265854722040)
,p_name=>'Brands_DLD'
,p_static_id=>'Brands_DLD'
,p_target_type=>'TABLE'
,p_table_name=>'BRAND'
,p_data_profile_id=>wwv_flow_api.id(21443776078722001)
,p_loading_method=>'APPEND'
,p_commit_interval=>200
,p_error_handling=>'ABORT'
,p_skip_validation=>'N'
);
wwv_flow_api.component_end;
end;
/
