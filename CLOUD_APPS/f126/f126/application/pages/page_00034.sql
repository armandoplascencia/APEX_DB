prompt --application/pages/page_00034
begin
--   Manifest
--     PAGE: 00034
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>126
,p_default_id_offset=>101651461840938715
,p_default_owner=>'MISO'
);
wwv_flow_api.create_page(
 p_id=>34
,p_user_interface_id=>wwv_flow_api.id(1222136671983413726)
,p_name=>'Event Updates'
,p_alias=>'EVENT-UPDATES'
,p_step_title=>'Event Updates'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_api.id(1398772477606929854)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'    This page shows all of the updates for a particular event. Click the <strong>Add Update</strong> button to add a new update to this event.',
'</p>'))
,p_last_updated_by=>'ALLAN'
,p_last_upd_yyyymmddhh24miss=>'20210301102340'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(3338672275886245053)
,p_name=>'Updates'
,p_template=>wwv_flow_api.id(1797853323124014327)
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Comments--chat'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'        '''' class, --use grayComment for gray look',
'        ''Note'' note_type,',
'        replace(dbms_lob.substr(note,2000,1),chr(10),''<br />'') comment_text,',
'        '''' attribute_1,',
'        '''' attribute_2,',
'        '''' attribute_3,',
'        '''' attribute_4,',
'        lower(created_by) user_name,',
'        apex_util.get_since(created) comment_date,',
'        upper(',
'          decode(instr(replace(created_by,''.'','' ''),'' ''),',
'                 0, ',
'                 substr(created_by,1,2),',
'                 substr(created_by,1,1)||substr(created_by,instr(replace(created_by,''.'','' ''),'' '')+1,1)',
'           )) user_icon,',
'        ''Edit'' actions,',
'        created,',
'        id note_id',
'from EBA_CA_NOTES ',
'where   event_id = :P34_ID',
'union all',
'select',
'        ''grayComment'' class, --use grayComment for gray look',
'        ''Update'' note_type,',
'        initcap(replace(replace(COLUMN_NAME,''_ID'',null),''_'','' '')) comment_text,',
'        '' changed from "''||OLD_VALUE||''"'' attribute_1,',
'        '' to "''||new_value||''"'' attribute_2,',
'        '' '' attribute_3,',
'        '' '' attribute_4,',
'        lower(CHANGED_BY) user_name,',
'        apex_util.get_since(CHANGE_DATE) comment_date,',
'        upper(',
'          decode(instr(replace(changed_by,''.'','' ''),'' ''),',
'                 0, ',
'                 substr(changed_by,1,2),',
'                 substr(changed_by,1,1)||substr(changed_by,instr(replace(changed_by,''.'','' ''),'' '')+1,1)',
'           )) user_icon,',
'        null actions,',
'        CHANGE_DATE,',
'        null note_id',
'from EBA_CA_HISTORY f',
'where component_id = :P34_ID',
'order by 11 desc'))
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(1797862214297014343)
,p_query_headings_type=>'QUERY_COLUMNS'
,p_query_num_rows=>5000
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_break_cols=>'0'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>5000
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3338672470303245055)
,p_query_column_id=>1
,p_column_alias=>'CLASS'
,p_column_display_sequence=>1
,p_column_heading=>'Class'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3338672554282245056)
,p_query_column_id=>2
,p_column_alias=>'NOTE_TYPE'
,p_column_display_sequence=>2
,p_column_heading=>'Note Type'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1628309776664229477)
,p_query_column_id=>3
,p_column_alias=>'COMMENT_TEXT'
,p_column_display_sequence=>9
,p_column_heading=>'Comment text'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3338672749223245057)
,p_query_column_id=>4
,p_column_alias=>'ATTRIBUTE_1'
,p_column_display_sequence=>3
,p_column_heading=>'Attribute 1'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3338672861259245057)
,p_query_column_id=>5
,p_column_alias=>'ATTRIBUTE_2'
,p_column_display_sequence=>4
,p_column_heading=>'Attribute 2'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3338672949891245057)
,p_query_column_id=>6
,p_column_alias=>'ATTRIBUTE_3'
,p_column_display_sequence=>5
,p_column_heading=>'Attribute 3'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3338673075677245057)
,p_query_column_id=>7
,p_column_alias=>'ATTRIBUTE_4'
,p_column_display_sequence=>6
,p_column_heading=>'Attribute 4'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1628309852644229478)
,p_query_column_id=>8
,p_column_alias=>'USER_NAME'
,p_column_display_sequence=>10
,p_column_heading=>'User name'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1628309949678229479)
,p_query_column_id=>9
,p_column_alias=>'COMMENT_DATE'
,p_column_display_sequence=>11
,p_column_heading=>'Comment date'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1628310058205229480)
,p_query_column_id=>10
,p_column_alias=>'USER_ICON'
,p_column_display_sequence=>12
,p_column_heading=>'User icon'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1628310165988229481)
,p_query_column_id=>11
,p_column_alias=>'ACTIONS'
,p_column_display_sequence=>13
,p_column_heading=>'Actions'
,p_column_link=>'f?p=&APP_ID.:33:&SESSION.::&DEBUG.:RP,33:P33_ID:#NOTE_ID#'
,p_column_linktext=>'#ACTIONS#'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3338673452902245057)
,p_query_column_id=>12
,p_column_alias=>'CREATED'
,p_column_display_sequence=>7
,p_column_heading=>'Created'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3338673576544245057)
,p_query_column_id=>13
,p_column_alias=>'NOTE_ID'
,p_column_display_sequence=>8
,p_column_heading=>'Note Id'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(3338673674557245057)
,p_plug_name=>'Button Bar'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--noPadding:t-ButtonRegion--noUI'
,p_plug_template=>wwv_flow_api.id(1797842835406014310)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(3338674461949245058)
,p_plug_name=>'Event Updates'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1797855891776014330)
,p_plug_display_sequence=>1
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(9022023598749333527)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(1797876791493014394)
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(1797845257256390468)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(3338674461949245058)
,p_button_name=>'ADD_UPDATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1797876708820014393)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Update'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:33:&SESSION.::&DEBUG.:RP,33:P33_EVENT_ID:&P34_ID.'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3338673857564245057)
,p_name=>'P34_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(3338673674557245057)
,p_prompt=>'Event Name:'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_named_lov=>'EVENTS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select event_name d, event_id r',
'from   eba_ca_events',
'order by 1'))
,p_field_template=>wwv_flow_api.id(1797875685625014383)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
,p_attribute_02=>'LOV'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(3338675056264245059)
,p_computation_sequence=>10
,p_computation_item=>'P3_EVENT_ID'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'ITEM_VALUE'
,p_computation=>'P34_ID'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(3338675257089245060)
,p_computation_sequence=>10
,p_computation_item=>'LAST_VIEW'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'34'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(1797845779709390473)
,p_name=>'Refresh Report'
,p_event_sequence=>10
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'window'
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1797845888924390474)
,p_event_id=>wwv_flow_api.id(1797845779709390473)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(3338672275886245053)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1797845940474390475)
,p_event_id=>wwv_flow_api.id(1797845779709390473)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.message.showPageSuccess(''Action Processed.'');'
);
wwv_flow_api.component_end;
end;
/
