prompt --application/pages/page_00002
begin
--   Manifest
--     PAGE: 00002
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>122
,p_default_id_offset=>95867510745092563
,p_default_owner=>'MISO'
);
wwv_flow_api.create_page(
 p_id=>2
,p_user_interface_id=>wwv_flow_api.id(123714247170158254)
,p_name=>'Choose Tables'
,p_page_mode=>'MODAL'
,p_step_title=>'Choose Tables'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'APPS'
,p_last_upd_yyyymmddhh24miss=>'20190414133748'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(123728516520165164)
,p_plug_name=>'Choose Tables'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(123640097058158157)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(123728766635165166)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(123728516520165164)
,p_button_name=>'BTN_GENERATE_TRIGGERS'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(123692354553158220)
,p_button_image_alt=>'Generate Triggers'
,p_button_position=>'BODY'
,p_grid_new_row=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(123728697641165165)
,p_name=>'P2_CHOOSE_TABLES'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(123728516520165164)
,p_prompt=>'Choose your table(s)'
,p_display_as=>'NATIVE_SHUTTLE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ut.table_name as owner_table_name,',
'       ut.table_name',
'  from user_tables ut',
' order by ut.table_name;'))
,p_cHeight=>5
,p_field_template=>wwv_flow_api.id(123692036535158213)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'ALL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(123728859484165167)
,p_process_sequence=>10
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'String to Table'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'   p_tables     APEX_APPLICATION_GLOBAL.vc_arr2;',
'   p_return     boolean        := NULL;',
'   p_prc_name   varchar2(100)  := ''String to Table: '';',
'   p_msg_return varchar2(4000) := NULL;',
'',
'BEGIN',
'   p_tables := APEX_UTIL.string_to_table(:P2_CHOOSE_TABLES);',
'',
'   for i in 1..p_tables.count loop',
'      p_return := AUDIT_PKG.fu_generate_trigger_b (p_tables(i), p_msg_return);',
'',
'      if p_return != TRUE then',
'         APEX_ERROR.add_error (p_message => p_msg_return,',
'                               p_display_location => ''INLINE_IN_NOTIFICATION'');',
'      end if;',
'   end loop;',
'',
'EXCEPTION',
'   when others then',
'      APEX_ERROR.add_error (p_message => ''Error '' || p_prc_name || to_char (sqlcode) || '' - '' || sqlerrm,',
'                            p_display_location => ''INLINE_IN_NOTIFICATION'');',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Triggers successfully created.'
);
wwv_flow_api.component_end;
end;
/
