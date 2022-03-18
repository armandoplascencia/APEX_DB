prompt --application/shared_components/legacy_data_loads/brink_menu_data1
begin
--   Manifest
--     BRINK_MENU_DATA1
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>100
,p_default_id_offset=>0
,p_default_owner=>'MISO'
);
wwv_flow_api.create_load_table(
 p_id=>wwv_flow_api.id(95971890918337122)
,p_name=>'BRINK_MENU_DATA'
,p_owner=>'#OWNER#'
,p_table_name=>'BRINK_MENU_DATA1'
,p_unique_column_1=>'ID'
,p_is_uk1_case_sensitive=>'N'
,p_is_uk2_case_sensitive=>'N'
,p_is_uk3_case_sensitive=>'N'
,p_skip_validation=>'N'
);
wwv_flow_api.component_end;
end;
/
