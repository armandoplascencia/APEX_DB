prompt --application/shared_components/user_interface/lovs/wb_transaction_tranaction_type_desc
begin
--   Manifest
--     WB_TRANSACTION.TRANACTION_TYPE_DESC
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>104
,p_default_id_offset=>0
,p_default_owner=>'MISO'
);
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(42187448666534933)
,p_lov_name=>'WB_TRANSACTION.TRANACTION_TYPE_DESC'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'WB_TRANSACTION'
,p_return_column_name=>'TRANSACTION_ID'
,p_display_column_name=>'TRANACTION_TYPE_DESC'
,p_default_sort_column_name=>'TRANACTION_TYPE_DESC'
,p_default_sort_direction=>'ASC'
);
wwv_flow_api.component_end;
end;
/
