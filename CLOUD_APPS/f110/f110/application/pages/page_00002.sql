prompt --application/pages/page_00002
begin
--   Manifest
--     PAGE: 00002
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
 p_id=>2
,p_user_interface_id=>wwv_flow_api.id(14434115216807266717)
,p_name=>'Build Options'
,p_alias=>'BUILD-OPTIONS'
,p_page_mode=>'MODAL'
,p_step_title=>'Build Options'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(16485731932639691338)
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_api.id(250463977822234829)
,p_protection_level=>'C'
,p_help_text=>'<p>Build options allow for specific application functionality to be included and available, or excluded and not available.</p>'
,p_last_updated_by=>'MIKE'
,p_last_upd_yyyymmddhh24miss=>'20210203151017'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(14093487981577290990)
,p_plug_name=>'Build Options mike'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(14690169852560251151)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'       build_option_id ID, ',
'       build_option_name build_option, ',
'       build_option_status, ',
'       apex_item.hidden(1, build_option_id) ||',
'       apex_item.hidden(2, build_option_status) ||',
'       apex_item.switch ( ',
'            p_idx => 3,',
'            p_value => build_option_status,',
'            p_on_value => ''Include'',',
'            p_on_label => ''Yes'',',
'            p_off_value => ''Exclude'',',
'            p_off_label => ''No'',',
'            p_item_id => ''BO_OPT_'' || rownum,',
'            p_item_label => apex_escape.html(build_option_name) || '': Is Enabled'',',
'            p_attributes => ''style="white-space:pre;"'') toggle_build_option,',
'       component_comment,',
'       last_updated_on updated,',
'       lower(last_updated_by) updated_by,',
'       (select count(*) from apex_application_pages p where p.application_id = :APP_ID and p.build_option = bo.build_option_name) pages,',
'       (select count(*) from apex_application_page_regions p where p.application_id = :APP_ID and p.build_option = bo.build_option_name) regions,',
'       (select count(*) from apex_application_page_buttons p where p.application_id = :APP_ID and p.build_option = bo.build_option_name) buttons,',
'(select count(*) from apex_application_page_items p where p.application_id = :APP_ID and p.build_option = bo.build_option_name',
') items',
'  from apex_application_build_options bo',
' where application_id = :APP_ID'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(14093488197865290992)
,p_name=>'Build Options'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
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
,p_owner=>'MIKE'
,p_internal_uid=>996501720076593565
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14093488280766290999)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'ID'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14093488399159291005)
,p_db_column_name=>'BUILD_OPTION'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Build Option'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14093488509567291006)
,p_db_column_name=>'BUILD_OPTION_STATUS'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Current Status'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14093488601437291006)
,p_db_column_name=>'TOGGLE_BUILD_OPTION'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Status'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14093488695507291006)
,p_db_column_name=>'COMPONENT_COMMENT'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Comment'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14093488791293291006)
,p_db_column_name=>'UPDATED'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Updated'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14093488890007291006)
,p_db_column_name=>'UPDATED_BY'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Updated By'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14093489009781291006)
,p_db_column_name=>'PAGES'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Pages'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14093489090380291006)
,p_db_column_name=>'REGIONS'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Regions'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14093489210364291006)
,p_db_column_name=>'BUTTONS'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Buttons'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14093489302750291006)
,p_db_column_name=>'ITEMS'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Items'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(14093489392205291007)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'9965030'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'BUILD_OPTION:BUILD_OPTION_STATUS:COMPONENT_COMMENT:TOGGLE_BUILD_OPTION:PAGES:REGIONS:BUTTONS:ITEMS:UPDATED:UPDATED_BY:'
,p_sort_column_1=>'BUILD_OPTION'
,p_sort_direction_1=>'ASC'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(14093489799620291013)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(14093487981577290990)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--link:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(14690191013111251220)
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&SESSION.::&DEBUG.:RP,&APP_PAGE_ID.,RIR::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(14093489589994291008)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(14093487981577290990)
,p_button_name=>'APPLY_CHANGES'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(14690191414518251222)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(14093490902900291020)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'update'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'for i in 1..apex_application.g_f01.count loop',
'    for c1 in ( select application_id, build_option_name, build_option_status',
'                from apex_application_build_options',
'                where apex_application.g_f01(i) = build_option_id',
'                   and application_Id = :APP_ID) loop',
'        if c1.build_option_status != apex_application.g_f03(i) then',
'            apex_util.set_build_option_status(  p_application_id => :APP_ID,',
'                                                p_id => apex_application.g_f01(i),',
'                                                p_build_status => upper(apex_application.g_f03(i)) );',
'        end if;',
'    end loop;',
'end loop;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Build Option Status(es) failed to be updated.'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Build Option Status(es) updated.'
);
wwv_flow_api.component_end;
end;
/
