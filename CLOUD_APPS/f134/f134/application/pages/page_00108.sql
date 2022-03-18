prompt --application/pages/page_00108
begin
--   Manifest
--     PAGE: 00108
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
 p_id=>108
,p_user_interface_id=>wwv_flow_api.id(5783577205373975152)
,p_name=>'Reassign Action Items'
,p_page_mode=>'MODAL'
,p_step_title=>'Reassign Action Items'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_api.id(5956243783292594674)
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_api.id(7306165779537991444)
,p_protection_level=>'C'
,p_help_text=>'<p>This page is used to reassign ownership of action items. Select the user the Action Item is currently assigned to from the "Change From" select list, type in the username of the new assignee in the "Change To" text field, and click the <strong>Cha'
||'nge Owner</strong> button.</p>'
,p_last_upd_yyyymmddhh24miss=>'20190905140239'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(6084474892436630232)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(6781117976757890807)
,p_plug_display_sequence=>30
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(8972392840601050532)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(6781135716305890867)
,p_plug_display_condition_type=>'NEVER'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(6084479180753712651)
,p_plug_name=>'Action Items'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(6781113968619890797)
,p_plug_display_sequence=>30
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select action_item_owner,',
'       (select count(*) ',
'     from EBA_PROJ_STATUS_AIS ',
'     where lower(action_item_owner) = lower(ACTION_OWNER_01) or',
'           lower(action_item_owner) = lower(ACTION_OWNER_02) or',
'           lower(action_item_owner) = lower(ACTION_OWNER_03) or',
'           lower(action_item_owner) = lower(ACTION_OWNER_04)) count_of_action_items',
'from',
'(',
'select distinct lower(d) action_item_owner',
'from (',
'select ACTION_OWNER_01 d',
'from   EBA_PROJ_STATUS_AIS',
'where ACTION_OWNER_01 is not null',
'union',
'select ACTION_OWNER_02 d',
'from   EBA_PROJ_STATUS_AIS',
'where ACTION_OWNER_02 is not null',
'union',
'select ACTION_OWNER_03 d',
'from   EBA_PROJ_STATUS_AIS',
'where ACTION_OWNER_03 is not null',
'union',
'select ACTION_OWNER_04 d',
'from   EBA_PROJ_STATUS_AIS',
'where ACTION_OWNER_04 is not null',
') x',
') y'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>8.5
,p_prn_height=>11
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#9bafde'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'normal'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#efefef'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(6084479303885712651)
,p_name=>'Action Items'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_save_rpt_public=>'Y'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLSX:PDF:RTF'
,p_owner=>'MIKE'
,p_internal_uid=>779494924352574978
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(6084480580378723505)
,p_db_column_name=>'ACTION_ITEM_OWNER'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Action Item Owner'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(6084483387993902297)
,p_db_column_name=>'COUNT_OF_ACTION_ITEMS'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Count of Action Items'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(6084479681445712857)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'7794954'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>100
,p_report_columns=>'ACTION_ITEM_OWNER:COUNT_OF_ACTION_ITEMS'
,p_sort_column_1=>'ACTION_ITEM_OWNER'
,p_sort_direction_1=>'ASC'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(6084481389457743556)
,p_plug_name=>'Rename Owner'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--noPadding:t-ButtonRegion--noUI'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(6781104860657890779)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(6084480895906735890)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(6084479180753712651)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(6781134785393890859)
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:108:&SESSION.::&DEBUG.:RP,108,RIR::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(6084482511845816175)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(6084479180753712651)
,p_button_name=>'RENAME_OWNER'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(6781135529450890864)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Change Owner'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(6084483103786834192)
,p_branch_name=>'branch back to same page with success message'
,p_branch_action=>'f?p=&APP_ID.:108:&SESSION.::&DEBUG.:RP,108::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6084481986811766120)
,p_name=>'P108_CHANGE_FROM'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(6084481389457743556)
,p_prompt=>'Change From'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct substr(lower(d),1,64) d, lower(d) r ',
'from (',
'select ACTION_OWNER_01 d',
'from   EBA_PROJ_STATUS_AIS',
'where ACTION_OWNER_01 is not null',
'union',
'select ACTION_OWNER_02 d',
'from   EBA_PROJ_STATUS_AIS',
'where ACTION_OWNER_02 is not null',
'union',
'select ACTION_OWNER_03 d',
'from   EBA_PROJ_STATUS_AIS',
'where ACTION_OWNER_03 is not null',
'union',
'select ACTION_OWNER_04 d',
'from   EBA_PROJ_STATUS_AIS',
'where ACTION_OWNER_04 is not null',
')',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select -'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(748281375605960061)
,p_item_template_options=>'#DEFAULT#:margin-left-sm'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6084482206208772339)
,p_name=>'P108_CHANGE_TO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(6084481389457743556)
,p_prompt=>'Change To'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>64
,p_cMaxlength=>4000
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(748281375605960061)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(6084482797909831141)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'update action item owner'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'update EBA_PROJ_STATUS_AIS set ACTION_OWNER_01 = lower(:P108_CHANGE_TO) where lower(ACTION_OWNER_01) = lower(:P108_CHANGE_FROM);',
'update EBA_PROJ_STATUS_AIS set ACTION_OWNER_02 = lower(:P108_CHANGE_TO) where lower(ACTION_OWNER_02) = lower(:P108_CHANGE_FROM);',
'update EBA_PROJ_STATUS_AIS set ACTION_OWNER_03 = lower(:P108_CHANGE_TO) where lower(ACTION_OWNER_03) = lower(:P108_CHANGE_FROM);',
'update EBA_PROJ_STATUS_AIS set ACTION_OWNER_04 = lower(:P108_CHANGE_TO) where lower(ACTION_OWNER_04) = lower(:P108_CHANGE_FROM);'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action item owner changed from &P108_CHANGE_FROM. to &P108_CHANGE_TO..'
);
wwv_flow_api.component_end;
end;
/
