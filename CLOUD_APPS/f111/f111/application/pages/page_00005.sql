prompt --application/pages/page_00005
begin
--   Manifest
--     PAGE: 00005
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>111
,p_default_id_offset=>77418401682728923
,p_default_owner=>'MISO'
);
wwv_flow_api.create_page(
 p_id=>5
,p_user_interface_id=>wwv_flow_api.id(88335304271078742)
,p_name=>'csv using apex_data_parser'
,p_alias=>'CSV-USING-APEX-DATA-PARSER'
,p_step_title=>'csv using apex_data_parser'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'GOPALMALLYA'
,p_last_upd_yyyymmddhh24miss=>'20210111040646'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(88186734264814546)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(88250109972078651)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(88186994853814548)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(88186734264814546)
,p_button_name=>'upload'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(88312652773078712)
,p_button_image_alt=>'Upload'
,p_button_position=>'BODY'
,p_grid_new_row=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(88186854067814547)
,p_name=>'P5_FILE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(88186734264814546)
,p_prompt=>'File'
,p_display_as=>'NATIVE_FILE'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(88311549130078708)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'APEX_APPLICATION_TEMP_FILES'
,p_attribute_09=>'SESSION'
,p_attribute_10=>'N'
,p_attribute_12=>'INLINE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(88187071322814549)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'upload'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'insert into csv_staging2 (filename, c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17,c18,c19,c20)',
'select  f.filename, col001, col002, col003, col004, col005, ',
'                    col006, col007, col008, col009, col010,',
'                    col011, col012, col013, col014, col015, ',
'                    col016, col017, col018, col019, col020   ',
'',
'                    -- more columns (col011 to col300) can be selected here.',
'  from apex_application_temp_files f, ',
'       table( apex_data_parser.parse(',
'                  p_content                     => f.blob_content,',
'                  p_add_headers_row             => ''Y'',',
'                  --p_max_rows                    => 500,',
'                  --p_store_profile_to_collection => ''FILE_PARSER_COLLECTION'',',
'                  p_file_name                   => f.filename ) ) p',
' where f.name = :P5_FILE;',
' end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.component_end;
end;
/
