prompt --application/pages/page_00380
begin
--   Manifest
--     PAGE: 00380
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>110
,p_default_id_offset=>101599614921830918
,p_default_owner=>'MISO'
);
wwv_flow_api.create_page(
 p_id=>380
,p_user_interface_id=>wwv_flow_api.id(14434115216807266717)
,p_name=>'for section image dislay'
,p_alias=>'FOR-SECTION-IMAGE-DISLAY'
,p_step_title=>'for section image dislay'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'ALLAN'
,p_last_upd_yyyymmddhh24miss=>'20210518153549'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(13126416979128936573)
,p_plug_name=>'REGION'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(14690171167000251156)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_query_num_rows=>15
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>'1 = 2'
,p_plug_display_when_cond2=>'PLSQL'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13126417392931936576)
,p_name=>'P380_ID'
,p_item_sequence=>5
,p_item_plug_id=>wwv_flow_api.id(13126416979128936573)
,p_use_cache_before_default=>'NO'
,p_source=>'ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13126417873222936578)
,p_name=>'P380_IMAGE_BLOB'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(13126416979128936573)
,p_use_cache_before_default=>'NO'
,p_item_default=>'Download'
,p_prompt=>'Image'
,p_source=>'IMAGE_BLOB'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_FILE'
,p_cSize=>60
,p_cMaxlength=>4000
,p_field_template=>wwv_flow_api.id(14690190497303251212)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'DB_COLUMN'
,p_attribute_02=>'IMAGE_MIMETYPE'
,p_attribute_03=>'IMAGE_FILENAME'
,p_attribute_04=>'IMAGE_CHARSET'
,p_attribute_05=>'IMAGE_LAST_UPDATED'
,p_attribute_06=>'Y'
,p_attribute_08=>'attachment'
,p_attribute_12=>'INLINE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(13126419163872946956)
,p_process_sequence=>20
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from EBA_QPOLL_SECTIONS'
,p_attribute_02=>'EBA_QPOLL_SECTIONS'
,p_attribute_03=>'P380_ID'
,p_attribute_04=>'ID'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(13126418259468936589)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'raise error'
,p_process_sql_clob=>'raise_application_error(-20001,''This page is not runnable by this application'');'
,p_process_clob_language=>'PLSQL'
);
wwv_flow_api.component_end;
end;
/
