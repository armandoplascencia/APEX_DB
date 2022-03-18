prompt --application/pages/page_00038
begin
--   Manifest
--     PAGE: 00038
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
 p_id=>38
,p_user_interface_id=>wwv_flow_api.id(14434115216807266717)
,p_name=>'Sections'
,p_alias=>'SECTIONS'
,p_page_mode=>'MODAL'
,p_step_title=>'Sections'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(14008957981820441125)
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'ALLAN'
,p_last_upd_yyyymmddhh24miss=>'20210518154121'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(13126277466125094482)
,p_plug_name=>'Sections'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(14690161967644251135)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(13126291418873203139)
,p_plug_name=>'buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(14690162135548251137)
,p_plug_display_sequence=>30
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(13126412272363919247)
,p_plug_name=>'Question Image (Optional)'
,p_region_template_options=>'t-Region--hiddenOverflow'
,p_plug_template=>wwv_flow_api.id(14690171167000251156)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'   c integer := 0;',
'begin',
'   for c2 in (',
'      select image_height, image_width',
'        from EBA_QPOLL_SECTIONS',
'       where id = :P38_ID',
'         and NVL(dbms_lob.getlength(IMAGE_BLOB),0) > 0',
'   ) loop',
'      c := c + 1;',
'      sys.htp.p(''<p><img src="''||apex_util.get_blob_file_src(''P38_IMAGE_BLOB'',:P38_ID)||''"'');',
'      if c2.image_height is not null then',
'         sys.htp.p('' height="''|| c2.image_height ||''"'');',
'      end if;',
'      if c2.image_width is not null then',
'         sys.htp.p('' width="''|| c2.image_width ||''"'');',
'      end if;',
'      sys.htp.p('' /></p>'');',
'   end loop;',
'   if c = 0 then',
'       sys.htp.p(''<p>No image has been selected click the <strong>choose file</strong> button to add an image.</p>'');',
'   end if;',
'end;'))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'        from EBA_QPOLL_SECTIONS',
'where id = :P38_ID and NVL(dbms_lob.getlength(IMAGE_BLOB),0) > 0'))
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(13126427975397052677)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(13126412272363919247)
,p_button_name=>'REMOVE_IMAGE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(14690191414518251222)
,p_button_image_alt=>'Remove Image'
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(13126277921652094483)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(13126291418873203139)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(14690191414518251222)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_condition=>'P38_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(13126277855308094483)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(13126291418873203139)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(14690191414518251222)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Section'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_condition=>'P38_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(13126278118892094483)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(13126291418873203139)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(14690191414518251222)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_PREVIOUS'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(13126278052636094483)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(13126291418873203139)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>wwv_flow_api.id(14690191414518251222)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_PREVIOUS'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P38_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(13126428387359057094)
,p_branch_name=>'remove image'
,p_branch_action=>'f?p=&APP_ID.:38:&SESSION.::&DEBUG.:RP::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(13126427975397052677)
,p_branch_sequence=>10
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(356231875131239841)
,p_branch_name=>'for first section'
,p_branch_action=>'f?p=&APP_ID.:100:&SESSION.::&DEBUG.:RP::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>20
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13126280085686094490)
,p_name=>'P38_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(13126277466125094482)
,p_use_cache_before_default=>'NO'
,p_source=>'ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13126280380176094518)
,p_name=>'P38_POLL_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(13126277466125094482)
,p_use_cache_before_default=>'NO'
,p_source=>'POLL_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13126280791163094521)
,p_name=>'P38_DISPLAY_SEQUENCE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(13126277466125094482)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Display Sequence'
,p_source=>'DISPLAY_SEQUENCE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>5
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(14690190497303251212)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13126281204578094521)
,p_name=>'P38_TITLE'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(13126277466125094482)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Title'
,p_source=>'TITLE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(14690190733279251214)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13126281619863094522)
,p_name=>'P38_SECTION_TEXT'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(13126277466125094482)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Section Text'
,p_source=>'SECTION_TEXT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>4000
,p_cHeight=>4
,p_field_template=>wwv_flow_api.id(14690190497303251212)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13126282053121094522)
,p_name=>'P38_IMAGE_BLOB'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(13126277466125094482)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Image'
,p_source=>'IMAGE_BLOB'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_FILE'
,p_cSize=>60
,p_cMaxlength=>255
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
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13126282394286094523)
,p_name=>'P38_IMAGE_WIDTH'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(13126277466125094482)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Image Width'
,p_source=>'IMAGE_WIDTH'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>5
,p_cMaxlength=>255
,p_colspan=>4
,p_field_template=>wwv_flow_api.id(14690190497303251212)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13126282851156094523)
,p_name=>'P38_IMAGE_HEIGHT'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(13126277466125094482)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Height'
,p_source=>'IMAGE_HEIGHT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>5
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_api.id(14690190497303251212)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13126287608979104991)
,p_name=>'P38_POLL_NAME'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(13126277466125094482)
,p_prompt=>'Poll'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(14690190497303251212)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(13126293949372256038)
,p_computation_sequence=>10
,p_computation_item=>'P38_POLL_ID'
,p_computation_type=>'ITEM_VALUE'
,p_computation=>'POLL_ID'
,p_compute_when=>'P38_POLL_ID'
,p_compute_when_type=>'ITEM_IS_NULL'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(13126288466453133464)
,p_computation_sequence=>20
,p_computation_item=>'P38_POLL_NAME'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'QUERY'
,p_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select poll_name',
'  from eba_qpoll_polls',
' where id = :POLL_ID'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(4635722703453686787)
,p_name=>'close'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(13126278118892094483)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(4635722797548686788)
,p_event_id=>wwv_flow_api.id(4635722703453686787)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(13126285432888094528)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from EBA_QPOLL_SECTIONS'
,p_attribute_02=>'EBA_QPOLL_SECTIONS'
,p_attribute_03=>'P38_ID'
,p_attribute_04=>'ID'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(13126285825530094528)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of EBA_QPOLL_SECTIONS'
,p_attribute_02=>'EBA_QPOLL_SECTIONS'
,p_attribute_03=>'P38_ID'
,p_attribute_04=>'ID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(13126286231765094528)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(13126278052636094483)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(13126427556324050646)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'remove image'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'update EBA_QPOLL_QUESTIONS',
'set IMAGE_BLOB = null, IMAGE_CHARSET  = null, IMAGE_MIMETYPE = null, IMAGE_FILENAME = null, IMAGE_LAST_UPDATED = null',
'where id = :P18_ID;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(13126427975397052677)
,p_process_success_message=>'Image removed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(4635722353786686784)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'close modal'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'for c1 in (',
'   select count(*) cnt',
'     from eba_qpoll_sections',
'    where poll_id = :POLL_ID',
') loop',
'   if c1.cnt > 1 and :REQUEST != ''REMOVE_IMAGE'' then',
'      return TRUE;',
'   end if;',
'end loop;',
'',
'return FALSE;'))
,p_process_when_type=>'FUNCTION_BODY'
,p_process_when2=>'PLSQL'
);
wwv_flow_api.component_end;
end;
/
