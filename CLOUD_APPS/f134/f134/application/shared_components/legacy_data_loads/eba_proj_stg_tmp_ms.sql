prompt --application/shared_components/legacy_data_loads/eba_proj_stg_tmp_ms
begin
--   Manifest
--     EBA_PROJ_STG_TMP_MS
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>134
,p_default_id_offset=>172493832712964115
,p_default_owner=>'MISO'
);
wwv_flow_api.create_load_table(
 p_id=>wwv_flow_api.id(20152600299145729522)
,p_name=>'Template Milestones'
,p_owner=>'#OWNER#'
,p_table_name=>'EBA_PROJ_STG_TMP_MS'
,p_unique_column_1=>'ID'
,p_is_uk1_case_sensitive=>'N'
,p_is_uk2_case_sensitive=>'N'
,p_is_uk3_case_sensitive=>'N'
,p_skip_validation=>'N'
);
wwv_flow_api.create_load_table_lookup(
 p_id=>wwv_flow_api.id(20152990312585802210)
,p_load_table_id=>wwv_flow_api.id(20152600299145729522)
,p_load_column_name=>'OWNER_ROLE_ID'
,p_lookup_owner=>'#OWNER#'
,p_lookup_table_name=>'EBA_PROJ_ROLES'
,p_key_column=>'ID'
,p_display_column=>'NAME'
,p_insert_new_value=>'N'
);
wwv_flow_api.create_load_table_lookup(
 p_id=>wwv_flow_api.id(20152982079450793696)
,p_load_table_id=>wwv_flow_api.id(20152600299145729522)
,p_load_column_name=>'TEMPLATE_ID'
,p_lookup_owner=>'#OWNER#'
,p_lookup_table_name=>'EBA_PROJ_TEMPLATES'
,p_key_column=>'ID'
,p_display_column=>'NAME'
,p_insert_new_value=>'N'
);
wwv_flow_api.create_load_table_rule(
 p_id=>wwv_flow_api.id(20153043274287819183)
,p_load_table_id=>wwv_flow_api.id(20152600299145729522)
,p_load_column_name=>'DUE_DATE_OFFSET'
,p_rule_name=>'Due Date Offsset Not Null'
,p_rule_type=>'PLSQL_EXPRESSION'
,p_rule_sequence=>10
,p_rule_expression1=>'replace(:DUE_DATE_OFFSET, null, 1)'
,p_rule_expression2=>':DUE_DATE_OFFSET'
);
wwv_flow_api.component_end;
end;
/
