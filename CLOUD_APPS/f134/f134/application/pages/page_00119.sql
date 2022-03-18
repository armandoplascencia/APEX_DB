prompt --application/pages/page_00119
begin
--   Manifest
--     PAGE: 00119
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
 p_id=>119
,p_user_interface_id=>wwv_flow_api.id(5783577205373975152)
,p_name=>'Additional Required Items'
,p_page_mode=>'MODAL'
,p_step_title=>'Additional Required Items'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_api.id(5956243783292594674)
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_api.id(7306165779537991444)
,p_protection_level=>'C'
,p_last_upd_yyyymmddhh24miss=>'20190905143039'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(737128058259619905)
,p_plug_name=>'Report 1'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>wwv_flow_api.id(6781113968619890797)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select "ID", ',
'"PAGE_ID",',
'"ITEM_NAME",',
'"CREATED",',
'"CREATED_BY",',
'"UPDATED",',
'"UPDATED_BY"',
'from "#OWNER#"."EBA_PROJ_REQUIRED_ITEMS" ',
'  ',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(737128470274619906)
,p_name=>'Report 1'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No Additional Required Items found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_download_formats=>'CSV:HTML:EMAIL:XLSX:PDF:RTF'
,p_detail_link=>'f?p=&APP_ID.:124:&APP_SESSION.::::P124_ID:#ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="Edit">'
,p_owner=>'ALLAN'
,p_internal_uid=>562123768185976450
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(737128513901619907)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(737128991383619907)
,p_db_column_name=>'PAGE_ID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Page'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(737129380303619908)
,p_db_column_name=>'ITEM_NAME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Item Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(737129720579619908)
,p_db_column_name=>'CREATED'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Created'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(737130128341619908)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(737130539236619909)
,p_db_column_name=>'UPDATED'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Updated'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(737130908196619909)
,p_db_column_name=>'UPDATED_BY'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Updated By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(737133502660624457)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'5621289'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ID:PAGE_ID:ITEM_NAME:CREATED:CREATED_BY:UPDATED:UPDATED_BY'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(4466204272010285701)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(737128058259619905)
,p_button_name=>'RESET'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(6781134785393890859)
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&SESSION.::&DEBUG.:RP,&APP_PAGE_ID.,RIR::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(4466203766979285696)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(737128058259619905)
,p_button_name=>'REMOVE_ALL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>wwv_flow_api.id(6781135529450890864)
,p_button_image_alt=>'Remove All Assignments'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'select null from EBA_PROJ_REQUIRED_ITEMS'
,p_button_condition_type=>'EXISTS'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(737131359233619909)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(737128058259619905)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(6781135529450890864)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Assign Item as Required'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:124:&SESSION.::&DEBUG.:124'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(524870412081582497)
,p_branch_name=>'Back to self on delete all'
,p_branch_action=>'f?p=&APP_ID.:119:&SESSION.::&DEBUG.:119::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(4466203766979285696)
,p_branch_sequence=>10
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(4466203804787285697)
,p_name=>'Confirm delete all'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(4466203766979285696)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(4466203942285285698)
,p_event_id=>wwv_flow_api.id(4466203804787285697)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'Are you sure you want to permanently remove all of your Additional Required Item assignments? '
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(4466204187320285700)
,p_event_id=>wwv_flow_api.id(4466203804787285697)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_01=>'REMOVE_ALL'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(524869906523582492)
,p_name=>'Refresh on Add'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(737131359233619909)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(524870026994582493)
,p_event_id=>wwv_flow_api.id(524869906523582492)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(737128058259619905)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(524870106890582494)
,p_name=>'Refresh on Edit'
,p_event_sequence=>30
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(737128058259619905)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(524870270270582495)
,p_event_id=>wwv_flow_api.id(524870106890582494)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(737128058259619905)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(4466204060977285699)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Remove All Required Assignments'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_opt_tmplt_id number;',
'begin',
'    select label_template_id ',
'      into l_opt_tmplt_id',
'      from APEX_APPLICATION_TEMP_LABEL  ',
'     where template_name = ''Optional''  ',
'       and application_id = :APP_ID;',
'',
'    for c1 in',
'    (',
'        select page_id, item_name from EBA_PROJ_REQUIRED_ITEMS',
'    )',
'    loop',
'        apex_app_builder_api.edit_page_item ( ',
'            p_page_id             => c1.page_id, ',
'            p_item_name           => c1.item_name, ',
'            p_is_required         => false,',
'            p_label_template_id   => l_opt_tmplt_id',
'        );',
'        delete from EBA_PROJ_REQUIRED_ITEMS where page_id = c1.page_id and item_name = c1.item_name;',
'    end loop;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(4466203766979285696)
);
wwv_flow_api.component_end;
end;
/
