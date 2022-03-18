prompt --application/pages/page_00020
begin
--   Manifest
--     PAGE: 00020
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
 p_id=>20
,p_user_interface_id=>wwv_flow_api.id(1222136671983413726)
,p_name=>'Group Members'
,p_alias=>'GROUP-MEMBERS2'
,p_page_mode=>'MODAL'
,p_step_title=>'Group Members'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_api.id(1797830282832014291)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(3336588977096114584)
,p_protection_level=>'C'
,p_last_updated_by=>'ALLAN'
,p_last_upd_yyyymmddhh24miss=>'20210301102340'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(2518081480436582389)
,p_name=>'Group Members'
,p_template=>wwv_flow_api.id(1797853323124014327)
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight:t-Report--inline'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select email_address',
'  from EBA_ca_email_group_mbrs',
' where group_id = :P20_GROUP_ID',
' order by 1'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(1797862998400014346)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'1'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(2518081913367582390)
,p_query_column_id=>1
,p_column_alias=>'EMAIL_ADDRESS'
,p_column_display_sequence=>1
,p_column_heading=>'Members'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(2518082293800582391)
,p_plug_name=>'Button bar'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--noUI'
,p_plug_template=>wwv_flow_api.id(1797842835406014310)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(2518082682785582392)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(2518082293800582391)
,p_button_name=>'CLOSE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1797876708820014393)
,p_button_image_alt=>'Close'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_execute_validations=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(2518083105882582392)
,p_name=>'P20_GROUP_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(2518081480436582389)
,p_item_default=>'&P15_GROUP_ID.'
,p_prompt=>'Group'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'EMAIL GROUPS WITH CNT'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select name || '' ('' || cnt  || ',
'          case when cnt = 1 then '' member)''',
'               else '' members)'' end d, ',
'       group_id r ',
'  from (',
'select g.group_id,',
'       g.group_name name,',
'       count(*) cnt    ',
'  from EBA_ca_email_groups g, ',
'       EBA_ca_email_group_mbrs m',
' where m.group_id = g.group_id',
' group by g.group_id, g.group_name',
')',
'order by name'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(1797875685625014383)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(301786004879095067)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(2518082682785582392)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(301786049523095068)
,p_event_id=>wwv_flow_api.id(301786004879095067)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_api.component_end;
end;
/
