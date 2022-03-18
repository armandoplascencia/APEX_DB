prompt --application/pages/page_00012
begin
--   Manifest
--     PAGE: 00012
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
 p_id=>12
,p_user_interface_id=>wwv_flow_api.id(14434115216807266717)
,p_name=>'Top Users'
,p_alias=>'TOP-USERS'
,p_page_mode=>'MODAL'
,p_step_title=>'Top Users'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(16485731932639691338)
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_api.id(250463977822234829)
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_comment=>'Page Access Protection needs to be unrestricted for since filter to work correctly. Allan 23-jan-2020'
,p_last_updated_by=>'ALLAN'
,p_last_upd_yyyymmddhh24miss=>'20210407105025'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(16416695136562542998)
,p_plug_name=>'Button Bar'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--noUI'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(14690162135548251137)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_translate_title=>'N'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(17709733447362830300)
,p_plug_name=>'Top Users'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(14690169852560251151)
,p_plug_display_sequence=>20
,p_plug_new_grid_column=>false
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'lower(USERID)                   as THE_USER,',
'count(*)                        as PAGE_EVENTS,',
'median(ELAP)                    as MEDIAN_ELAPSED,',
'sum(NUM_ROWS)                   as ROWS_FETCHED,',
'sum(decode(IR_SEARCH,null,0,1)) as IR_SEARCHES,',
'sum(decode(SQLERRM,null,0,1))   as ERRORS,',
'max(time_stamp)                 as MOST_RECENT',
'from apex_activity_log l',
'where flow_id = :app_id  and ',
'      time_stamp > sysdate - to_number(:P12_SINCE,''9999999990.99999999999'',''NLS_NUMERIC_CHARACTERS=''''.,'''''')',
'and userid is not null',
'group by lower(userid)'))
,p_plug_source_type=>'NATIVE_IR'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(17709733564853830300)
,p_name=>'Top Users'
,p_max_row_count=>'10000'
,p_max_row_count_message=>'This query returns more than #MAX_ROW_COUNT# rows, please filter your data to ensure complete results.'
,p_no_data_found_message=>'No data found.'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_pivot=>'N'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML:EMAIL'
,p_allow_exclude_null_values=>'N'
,p_allow_hide_extra_columns=>'N'
,p_icon_view_columns_per_row=>1
,p_owner=>'PATRICKM'
,p_internal_uid=>3753948556023392056
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(17709734452208830303)
,p_db_column_name=>'MOST_RECENT'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Most Recent'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14554356629973969199)
,p_db_column_name=>'THE_USER'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'The User'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14554356718966969203)
,p_db_column_name=>'PAGE_EVENTS'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Page Events'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14554356830385969203)
,p_db_column_name=>'MEDIAN_ELAPSED'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Median Elapsed'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990D0000'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14554356933653969203)
,p_db_column_name=>'ROWS_FETCHED'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Rows Fetched'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14554357025931969204)
,p_db_column_name=>'IR_SEARCHES'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'IR Searches'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14554357132975969204)
,p_db_column_name=>'ERRORS'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Errors'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(17709734552748830512)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'9206333'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'THE_USER:PAGE_EVENTS:MEDIAN_ELAPSED:ROWS_FETCHED:IR_SEARCHES:ERRORS:MOST_RECENT'
,p_sort_column_1=>'MOST_RECENT'
,p_sort_direction_1=>'DESC'
,p_sort_column_2=>'Page_Events'
,p_sort_direction_2=>'DESC'
,p_sort_column_3=>'Page Events'
,p_sort_direction_3=>'DESC'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(16416748225442587091)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(17709733447362830300)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--link:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(14690191013111251220)
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&SESSION.::&DEBUG.:RP,&APP_PAGE_ID.,RIR::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(16416695334001543001)
,p_name=>'P12_SINCE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(16416695136562542998)
,p_item_default=>'00001.0000000000'
,p_prompt=>'Timeframe'
,p_source=>'00001.0000000000'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'TIMEFRAME (2 WEEKS)'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select wwv_flow_lang.system_message(''N_MINUTES'',''15'') d, ',
'trim(to_char(15/(24*60),''00000.99999999999'',''NLS_NUMERIC_CHARACTERS=''''.,'''''')) t from dual',
'union all ',
'select wwv_flow_lang.system_message(''N_MINUTES'',''30'') d, ',
'trim(to_char(30/(24*60),''00000.99999999999'',''NLS_NUMERIC_CHARACTERS=''''.,'''''')) t from dual',
'union all ',
'select wwv_flow_lang.system_message(''N_HOUR'',''1'') d, ',
'trim(to_char(1/24,''00000.99999999999'',''NLS_NUMERIC_CHARACTERS=''''.,'''''')) t from dual',
'union all ',
'select wwv_flow_lang.system_message(''N_MINUTES'',''90'') d, ',
'trim(to_char(90/(24*60),''00000.99999999999'',''NLS_NUMERIC_CHARACTERS=''''.,'''''')) t from dual',
'union all ',
'select wwv_flow_lang.system_message(''N_HOURS'',''2'') d, ',
'trim(to_char(1/12,''00000.99999999999'',''NLS_NUMERIC_CHARACTERS=''''.,''''''))  t from dual',
'union all ',
'select wwv_flow_lang.system_message(''N_HOURS'',''3'') d, ',
'trim(to_char(3/24,''00000.99999999999'',''NLS_NUMERIC_CHARACTERS=''''.,''''''))  t from dual',
'union all ',
'select wwv_flow_lang.system_message(''N_HOURS'',''4'') d, ',
'trim(to_char(4/24,''00000.99999999999'',''NLS_NUMERIC_CHARACTERS=''''.,''''''))  t from dual',
'union all ',
'select wwv_flow_lang.system_message(''N_HOURS'',''5'') d, ',
'trim(to_char(5/24,''00000.99999999999'',''NLS_NUMERIC_CHARACTERS=''''.,''''''))  t from dual',
'union all ',
'select wwv_flow_lang.system_message(''N_HOURS'',''6'') d, ',
'trim(to_char(6/24,''00000.99999999999'',''NLS_NUMERIC_CHARACTERS=''''.,'''''')) t from dual',
'union all ',
'select wwv_flow_lang.system_message(''N_HOURS'',''8'') d, ',
'trim(to_char(8/24,''00000.99999999999'',''NLS_NUMERIC_CHARACTERS=''''.,'''''')) t from dual',
'union all ',
'select wwv_flow_lang.system_message(''N_HOURS'',''10'') d, ',
'trim(to_char(10/24,''00000.99999999999'',''NLS_NUMERIC_CHARACTERS=''''.,'''''')) t from dual',
'union all ',
'select wwv_flow_lang.system_message(''N_HOURS'',''12'') d, ',
'trim(to_char(12/24,''00000.99999999999'',''NLS_NUMERIC_CHARACTERS=''''.,'''''')) t from dual',
'union all ',
'select wwv_flow_lang.system_message(''N_HOURS'',''16'') d, ',
'trim(to_char(16/24,''00000.9999999999'',''NLS_NUMERIC_CHARACTERS=''''.,'''''')) t from dual',
'union all ',
'select wwv_flow_lang.system_message(''N_DAY'',''1'') d, trim(to_char(1,''00000.9999999999'')) t from dual',
'union all ',
'select wwv_flow_lang.system_message(''N_DAYS'',''2'') d, trim(to_char(2,''00000.9999999999'')) t from dual',
'union all ',
'select wwv_flow_lang.system_message(''N_DAYS'',''3'') d, trim(to_char(3,''00000.9999999999'')) t from dual',
'union all ',
'select wwv_flow_lang.system_message(''N_DAYS'',''4'') d, trim(to_char(4,''00000.9999999999'')) t from dual',
'union all ',
'select wwv_flow_lang.system_message(''N_DAYS'',''5'') d, trim(to_char(5,''00000.9999999999'')) t from dual',
'union all ',
'select wwv_flow_lang.system_message(''N_WEEK'',''1'') d, trim(to_char(7,''00000.9999999999'')) t from dual',
'union all ',
'select wwv_flow_lang.system_message(''N_WEEKS'',''2'') d, trim(to_char(14,''00000.9999999999'')) t from dual',
'order by 2'))
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(14690190497303251212)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'REDIRECT_SET_VALUE'
);
wwv_flow_api.component_end;
end;
/
