prompt --application/pages/page_00129
begin
--   Manifest
--     PAGE: 00129
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>134
,p_default_id_offset=>172493832712964115
,p_default_owner=>'MISO'
);
wwv_flow_api.create_page(
 p_id=>129
,p_user_interface_id=>wwv_flow_api.id(5783577205373975152)
,p_name=>'Project Update'
,p_page_mode=>'MODAL'
,p_step_title=>'Project Update'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(5956243887448595899)
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.t-Alert--noUI {',
'    box-shadow: none;',
'    margin: 0;',
'    background: none rgba(0,0,0,.1);',
'border-radius: 0;',
'border-width: 0;',
'}'))
,p_step_template=>wwv_flow_api.id(6781091254287890756)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_height=>'680'
,p_dialog_width=>'720'
,p_dialog_max_width=>'1280'
,p_dialog_attributes=>'resizable:true'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_last_upd_yyyymmddhh24miss=>'20190909115719'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(6177037894593973490)
,p_plug_name=>'Hidden Items'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(6781104626075890777)
,p_plug_display_sequence=>50
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(6177040304122014044)
,p_plug_name=>'Project Update'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(6781104626075890777)
,p_plug_display_sequence=>30
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'for c1 in (',
'select u.id,',
'       u.status_update,',
'       nvl(u.formatted_update,u.status_update) formatted_update,',
'       u.project_id, ',
'       u.row_key update_row_key ',
'from EBA_PROJ_STATUS_UPDATES u',
'where u.id = :P129_ID',
'    ) loop',
'    sys.htp.p( replace(c1.formatted_update,''##BREAK##'', '''') );',
'end loop;'))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(12905528396678123529)
,p_plug_name=>'Update Info'
,p_region_css_classes=>'t-Alert--accessibleHeading t-Alert--noUI'
,p_icon_css_classes=>'fa-comment-o'
,p_region_template_options=>'#DEFAULT#:t-Alert--horizontal:t-Alert--customIcons:t-Alert--info'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(6781102788551890771)
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'for c1 in (',
'select u.id,',
'       u.update_date,',
'       u.UPDATE_OWNER ',
'from EBA_PROJ_STATUS_UPDATES u',
'where u.id = :P129_ID',
'    ) loop',
'    sys.htp.p(''<p class="comment-header">''',
'              ||lower(apex_escape.html(c1.update_owner))||'' &middot; ''',
'              || apex_util.get_since(c1.update_date)||''</p>'');',
'end loop;'))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(6177044297037125629)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(12905528396678123529)
,p_button_name=>'EDIT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(6781134785393890859)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Edit Update'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:12:&SESSION.::&DEBUG.:RP,12:P12_ID:&P129_ID.'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select row_key ',
'from EBA_PROJ_STATUS_UPDATES ',
'where id = :P129_ID and upper(created_by) = upper(:APP_USER)'))
,p_button_condition_type=>'EXISTS'
,p_icon_css_classes=>'fa-pencil'
,p_security_scheme=>wwv_flow_api.id(7306166303644991446)
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6177038206877975204)
,p_name=>'P129_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(6177037894593973490)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6177038403210976873)
,p_name=>'P129_PROJECT_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(6177037894593973490)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6839051790264415357)
,p_name=>'P129_NEXT_ID'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(6177037894593973490)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6839052172518417303)
,p_name=>'P129_PREVIOUS_ID'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(6177037894593973490)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(12905528716308123533)
,p_name=>'Refresh on Dialog Close'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(6177044297037125629)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(12905528850284123534)
,p_event_id=>wwv_flow_api.id(12905528716308123533)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(6839052354906420912)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'calc next and previous IDs'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'l_project_id number;',
'l_id         number := :P129_ID;',
'begin',
'for c1 in (select project_id from EBA_PROJ_STATUS_UPDATES x where x.id = l_id) loop l_project_id := c1.project_id; end loop;',
':P129_NEXT_ID := 0;',
':P129_PREVIOUS_ID := 0;',
'',
'for c1 in (',
'    select u.id',
'    from EBA_PROJ_STATUS_UPDATES u',
'    where PROJECT_ID = l_project_id and',
'          update_date > (select update_date from EBA_PROJ_STATUS_UPDATES x where x.id = l_id)',
'    order by UPDATE_DATE asc) loop',
':P129_NEXT_ID := c1.id;',
'exit;',
'end loop;',
'',
'for c1 in (',
'    select u.id',
'    from EBA_PROJ_STATUS_UPDATES u',
'    where PROJECT_ID = l_project_id and',
'          update_date < (select update_date from EBA_PROJ_STATUS_UPDATES x where x.id = l_id)',
'    order by UPDATE_DATE desc) loop',
':P129_PREVIOUS_ID := c1.id;',
'exit;',
'end loop;',
'end;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_api.component_end;
end;
/
