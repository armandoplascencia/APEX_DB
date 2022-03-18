prompt --application/pages/page_00007
begin
--   Manifest
--     PAGE: 00007
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>133
,p_default_id_offset=>0
,p_default_owner=>'MISO'
);
wwv_flow_api.create_page(
 p_id=>7
,p_user_interface_id=>wwv_flow_api.id(104891014803699938)
,p_name=>'GCP_Date_ranges_tested'
,p_alias=>'GCP-DATE-RANGES-TESTED'
,p_step_title=>'GCP_Date_ranges_tested'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'MISO'
,p_last_upd_yyyymmddhh24miss=>'20220308021449'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(105534688455276139)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(104801457324699859)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<PRE>',
'create or replace view gcp_find_t_ranges_sam as ',
'with abc as ',
'(',
' select min(t) min_t, max(t) max_t from (',
' select to_number(t)           t from GCP_BIGQUERY_WC_CLEAN where t           is not null and gcp_is_number (t) = 1',
'  union all',
' select to_number(dumped)      t from GCP_BIGQUERY_WC_CLEAN where dumped      is not null  and gcp_is_number (dumped) = 1',
'  union all',
' select to_number(prepared)    t from GCP_BIGQUERY_WC_CLEAN where prepared    is not null  and gcp_is_number (prepared) = 1',
'  union all',
' select to_number(submerged)   t from GCP_BIGQUERY_WC_CLEAN where submerged   is not null  and gcp_is_number (submerged) = 1',
'  union all',
' select to_number(unsubmerged) t from GCP_BIGQUERY_WC_CLEAN where unsubmerged is not null  and gcp_is_number (unsubmerged) = 1',
'  )',
')',
'select abc.min_t, abc.max_t, unix_to_Date(min_t) min_t_dt , unix_to_Date(max_t) max_t_dt ',
' from abc; ',
'',
'',
'CREATE or replace  FUNCTION gcp_is_number (p_string IN VARCHAR2)',
'   RETURN INT',
'IS',
'   v_new_num NUMBER;',
'BEGIN',
'   v_new_num := TO_NUMBER(p_string);',
'   RETURN 1;',
'EXCEPTION',
'WHEN VALUE_ERROR THEN',
'   RETURN 0;',
'END gcp_is_number;',
'',
'</PRE>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(105534752611276140)
,p_name=>'New'
,p_template=>wwv_flow_api.id(104801457324699859)
,p_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'TABLE'
,p_query_table=>'GCP_FIND_T_RANGES_SAM'
,p_include_rowid_column=>false
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(104825178856699877)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(105534823731276141)
,p_query_column_id=>1
,p_column_alias=>'MIN_T'
,p_column_display_sequence=>10
,p_column_heading=>'Min T'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(105534976725276142)
,p_query_column_id=>2
,p_column_alias=>'MAX_T'
,p_column_display_sequence=>20
,p_column_heading=>'Max T'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(105535075320276143)
,p_query_column_id=>3
,p_column_alias=>'MIN_T_DT'
,p_column_display_sequence=>30
,p_column_heading=>'Min T Dt'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(105535148856276144)
,p_query_column_id=>4
,p_column_alias=>'MAX_T_DT'
,p_column_display_sequence=>40
,p_column_heading=>'Max T Dt'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.component_end;
end;
/
