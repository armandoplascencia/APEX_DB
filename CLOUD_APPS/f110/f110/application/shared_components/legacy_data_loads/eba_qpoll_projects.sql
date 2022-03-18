prompt --application/shared_components/legacy_data_loads/eba_qpoll_projects
begin
--   Manifest
--     EBA_QPOLL_PROJECTS
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>110
,p_default_id_offset=>101599614921830918
,p_default_owner=>'MISO'
);
wwv_flow_api.create_load_table(
 p_id=>wwv_flow_api.id(16553770521702078487)
,p_name=>'Decison Projects'
,p_owner=>'#OWNER#'
,p_table_name=>'EBA_QPOLL_PROJECTS'
,p_unique_column_1=>'PROJECT_NAME'
,p_is_uk1_case_sensitive=>'N'
,p_unique_column_2=>'PROJECT_OWNER'
,p_is_uk2_case_sensitive=>'N'
,p_is_uk3_case_sensitive=>'N'
,p_skip_validation=>'N'
);
wwv_flow_api.component_end;
end;
/
