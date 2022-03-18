prompt --application/pages/page_00001
begin
--   Manifest
--     PAGE: 00001
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>119
,p_default_id_offset=>0
,p_default_owner=>'MISO'
);
wwv_flow_api.create_page(
 p_id=>1
,p_user_interface_id=>wwv_flow_api.id(93432223114969068)
,p_name=>'Home'
,p_alias=>'HOME'
,p_step_title=>'Cook_Right_COFFEE'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'MISO'
,p_last_upd_yyyymmddhh24miss=>'20220204210106'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(78183299154179436)
,p_plug_name=>'model'
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(93323021493968986)
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'NEW OBJECTS NEEDED',
'<img src="#APP_IMAGES#model_miso_dim.png">',
''))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(93462529692969170)
,p_plug_name=>'Cook_Right_COFFEE (DB MODEL IS BELOW)'
,p_icon_css_classes=>'app-icon'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(93332846888968991)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(94183865042976572)
,p_plug_name=>'Page Navigation (DB MODEL IS BELOW)'
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:u-colors:t-Cards--displaySubtitle:t-Cards--featured t-Cards--block force-fa-lg:t-Cards--displayIcons:t-Cards--spanHorizontally:t-Cards--hideBody:t-Cards--animRaiseCard'
,p_plug_template=>wwv_flow_api.id(93323021493968986)
,p_plug_display_sequence=>30
,p_plug_display_point=>'BODY'
,p_list_id=>wwv_flow_api.id(94175912586976567)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(93383566523969022)
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(94345978223069007)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(93323021493968986)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<PRE>',
'create or replace FUNCTION unix_to_date(unix_sec NUMBER)',
'RETURN date',
'IS',
'ret_date DATE;',
'BEGIN',
'    ret_date:=TO_DATE(''19700101'',''YYYYMMDD'')+( 1/ 24/ 60/ 60)*unix_sec;',
'    RETURN ret_date;',
'END;',
'/',
'',
'create or replace function date_to_unix ( v_date in date, v_location in varchar2)',
' return number',
'as',
'v_return number := 0;',
'begin',
'select ',
'( CAST(',
'    FROM_TZ(',
'      CAST( v_date AS TIMESTAMP ),     -- Cast to timestamp',
'      v_location /*''America/Los_Angeles''     -- Convert to expected Time Zone */',
'    )',
'    AT TIME ZONE ''UTC''                     -- Convert Time Zone to UTC',
'    AS DATE                                -- Cast back to DATE data type',
'  )',
'  - DATE ''1970-01-01''',
')*24*60*60  into v_return from dual;',
'return(v_return);',
'exception when others then return(-1);',
'end;',
'/',
'',
'CREATE OR REPLACE TYPE dw_v_get_epoch_p1_number_ntt AS TABLE OF NUMBER;',
'/',
'CREATE FUNCTION        dw_v_get_epoch_number_ntt_PTF ( periods_in IN PLS_INTEGER ) ',
'  RETURN dw_v_get_epoch_p1_number_ntt PIPELINED IS',
'    BEGIN',
'       FOR i IN 1 .. periods_in ',
'       LOOP',
'          PIPE ROW (i);',
'       END LOOP;',
'       RETURN;',
'END;',
'/',
'',
'',
'',
'create or replace view dw_v_get_epoch_start_end as  ',
'with abc as ( select column_value from table ( dw_v_get_epoch_number_ntt_PTF (999999999999999999999999) ) )',
' ,  get_dates as (',
' select ----15 INCR_MINS,899 SECS_IN,',
'           1*abc.column_value Period_p1 , ',
'                                                                      decode(abc.column_value,1,0  ,     900*(abc.column_value-1    ) )                            start_sec_p1, ',
'                                              to_char(unix_to_date(   decode(abc.column_value,1,0  ,    (900*abc.column_value)-900  ) ) ,''yyyy/mm/dd hh24:mi:ss'')  START_DATE_P1,',
'                                                                      decode(abc.column_value,1,899,    (900*abc.column_value)-1      )                            end_sec_p1, ',
'                                              to_char(unix_to_date(   decode(abc.column_value,1,899,    (900*abc.column_value) -1   ) ) ,''yyyy/mm/dd hh24:mi:ss'')  end_DATE_P1,',
'                                                      unix_to_date(   decode(abc.column_value,1,0,      (900*abc.column_value)-900  ) )                            start_date_dt                                             ',
'   from  abc ',
'   where   unix_to_date(   decode(abc.column_value,1,0,    (900*abc.column_value)-900      ) ) ',
'    between ',
'     to_date(''1970/01/01 00:00:00'',''yyyy/mm/dd hh24:mi:ss'') and',
'     to_date(''2026/01/01 00:00:00'',''yyyy/mm/dd hh24:mi:ss'')',
' ) select * from get_dates;',
'',
'',
'===============',
'select * from dw_v_get_epoch_start_end ',
'where  start_date_dt   between ',
'     to_date(''2020/01/01 00:00:00'',''yyyy/mm/dd hh24:mi:ss'') and',
'     sysdate + 180',
'',
'https://gd49ef7d5e3cd2d-db202110212330.adb.us-phoenix-1.oraclecloudapps.com/ords/miso/unix_time_date/get_15_min_incr_ranges',
'',
'https://gd49ef7d5e3cd2d-db202110212330.adb.us-phoenix-1.oraclecloudapps.com/ords/miso/unix_time_date/get_15_min_incr_ranges_csv',
'Below find the logic for creation of 15 min windows of time.',
'If we have your operational summary data to place into these buckets, ',
'we can then use this as a framework to compare data against.',
'',
'A great deal of miso data is based on unix time so the below is necessary',
'for use to identify where our operations data lies within your summary data.',
'',
'If each of the below urls are placed into a browser,',
'your data will be available.  You could also use curl to dump that data to disk',
'if you wish to get a local copy of it.',
'',
'https://gd49ef7d5e3cd2d-db202110212330.adb.us-phoenix-1.oraclecloudapps.com/ords/miso/unix_time_date/get_15_min_incr_ranges',
'',
'https://gd49ef7d5e3cd2d-db202110212330.adb.us-phoenix-1.oraclecloudapps.com/ords/miso/unix_time_date/get_15_min_incr_ranges_csv',
'',
'CREATE OR REPLACE FORCE VIEW "DW_V_MISO_DATE_TIME_EPOCH" ',
'("MDD_TIME_ID", "MDD_DAY_NAME", "MDD_DAY_NUMBER_IN_WEEK", "MDD_DAY_NUMBER_IN_MONTH", ',
' "MDD_DAY_NUMBER_IN_YEAR", "MDD_DW_MISO_DATE_DIM_ID", "MDD_CALENDAR_WEEK_NUMBER", "MDD_WEEK_ENDING_DATE", "MDD_CALENDAR_MONTH_NUMBER", ',
' "MDD_DAYS_IN_CAL_MONTH", "MDD_END_OF_CAL_MONTH", "MDD_CALENDAR_MONTH_NAME", "MDD_DAYS_IN_CAL_QUARTER", "MDD_BEG_OF_CAL_QUARTER", ',
' "MDD_END_OF_CAL_QUARTER", "MDD_CALENDAR_QUARTER_NUMBER", "MDD_CALENDAR_YEAR", "MDD_DAYS_IN_CAL_YEAR", "MDD_END_OF_CAL_YEAR", ',
' "MDD_BEG_OF_CAL_YEAR", "MDD_TIME_ID_AS_DATE", "MTHD_SECOND_IN_TIME", "MTHD_HOUR", "MTHD_MINUTE", "MTHD_SECOND", "MTHD_TIME", ',
' "MTHD_PERIOD", "DIM_15_MIN_WINDOW_FROM_0_2359", "TIME_BY_15_FLOOR", "TIME_BY_15_CEILING", "MTHD_DW_MISO_TIME_HHMMSS_DIM_ID", "EPOCH_PST_DATE", "EPOCH_PST_DATE_STR") AS ',
'  select',
'    DW_MISO_DATE_DIM.TIME_ID                 as mdd_TIME_ID,',
'    DW_MISO_DATE_DIM.DAY_NAME                as mdd_DAY_NAME,',
'    DW_MISO_DATE_DIM.DAY_NUMBER_IN_WEEK      as mdd_DAY_NUMBER_IN_WEEK,',
'    DW_MISO_DATE_DIM.DAY_NUMBER_IN_MONTH     as mdd_DAY_NUMBER_IN_MONTH,',
'    DW_MISO_DATE_DIM.DAY_NUMBER_IN_YEAR      as mdd_DAY_NUMBER_IN_YEAR,',
'    DW_MISO_DATE_DIM.DW_MISO_DATE_DIM_ID     as mdd_DW_MISO_DATE_DIM_ID,',
'    DW_MISO_DATE_DIM.CALENDAR_WEEK_NUMBER    as mdd_CALENDAR_WEEK_NUMBER,',
'    DW_MISO_DATE_DIM.WEEK_ENDING_DATE        as mdd_WEEK_ENDING_DATE,',
'    DW_MISO_DATE_DIM.CALENDAR_MONTH_NUMBER   as mdd_CALENDAR_MONTH_NUMBER,',
'    DW_MISO_DATE_DIM.DAYS_IN_CAL_MONTH       as mdd_DAYS_IN_CAL_MONTH,',
'    DW_MISO_DATE_DIM.END_OF_CAL_MONTH        as mdd_END_OF_CAL_MONTH,',
'    DW_MISO_DATE_DIM.CALENDAR_MONTH_NAME     as mdd_CALENDAR_MONTH_NAME,',
'    DW_MISO_DATE_DIM.DAYS_IN_CAL_QUARTER     as mdd_DAYS_IN_CAL_QUARTER,',
'    DW_MISO_DATE_DIM.BEG_OF_CAL_QUARTER      as mdd_BEG_OF_CAL_QUARTER,',
'    DW_MISO_DATE_DIM.END_OF_CAL_QUARTER      as mdd_END_OF_CAL_QUARTER,',
'    DW_MISO_DATE_DIM.CALENDAR_QUARTER_NUMBER as mdd_CALENDAR_QUARTER_NUMBER,',
'    DW_MISO_DATE_DIM.CALENDAR_YEAR           as mdd_CALENDAR_YEAR,',
'    DW_MISO_DATE_DIM.DAYS_IN_CAL_YEAR        as mdd_DAYS_IN_CAL_YEAR,',
'    DW_MISO_DATE_DIM.END_OF_CAL_YEAR         as mdd_END_OF_CAL_YEAR,',
'    DW_MISO_DATE_DIM.BEG_OF_CAL_YEAR         as mdd_BEG_OF_CAL_YEAR,',
'    DW_MISO_DATE_DIM.TIME_ID_AS_DATE         as mdd_TIME_ID_AS_DATE,',
'    ---------------------------',
'    DW_MISO_TIME_HHMMSS_DIM.SECOND_IN_TIME   as mthd_SECOND_IN_TIME,',
'    DW_MISO_TIME_HHMMSS_DIM.HOUR             as mthd_HOUR,',
'    DW_MISO_TIME_HHMMSS_DIM.MINUTE           as mthd_MINUTE,',
'    DW_MISO_TIME_HHMMSS_DIM.SECOND           as mthd_SECOND,',
'    DW_MISO_TIME_HHMMSS_DIM.TIME             as mthd_TIME,',
'    DW_MISO_TIME_HHMMSS_DIM.PERIOD           as mthd_PERIOD,',
'    DW_MISO_TIME_HHMMSS_DIM.DIM_15_MIN_WINDOW_FROM_0_2359 as DIM_15_MIN_WINDOW_FROM_0_2359,',
'    DW_MISO_TIME_HHMMSS_DIM.TIME_BY_15_FLOOR              as TIME_BY_15_FLOOR,',
'    DW_MISO_TIME_HHMMSS_DIM.TIME_BY_15_CEILING            as TIME_BY_15_CEILING  ,',
'    DW_MISO_TIME_HHMMSS_DIM.DW_MISO_TIME_HHMMSS_DIM_ID as mthd_DW_MISO_TIME_HHMMSS_DIM_ID ,',
'    ---------------------------',
'    DW_MISO_DATE_TIME_EPOCH.EPOCH_PST_DATE, ',
'    DW_MISO_DATE_TIME_EPOCH.EPOCH_PST_DATE_STR ',
' from miso.DW_MISO_DATE_TIME_EPOCH DW_MISO_DATE_TIME_EPOCH,',
'      miso.DW_MISO_TIME_HHMMSS_DIM DW_MISO_TIME_HHMMSS_DIM,',
'      miso.DW_MISO_DATE_DIM        DW_MISO_DATE_DIM ',
' where  DW_MISO_DATE_TIME_EPOCH.DW_MISO_DATE_DIM_ID        = DW_MISO_DATE_DIM.DW_MISO_DATE_DIM_ID',
'    and DW_MISO_DATE_TIME_EPOCH.DW_MISO_TIME_HHMMSS_DIM_ID = DW_MISO_TIME_HHMMSS_DIM.DW_MISO_TIME_HHMMSS_DIM_ID',
'/',
'',
'</PRE>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(95757750751977348)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(93323021493968986)
,p_plug_display_sequence=>70
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
' time dim model to revie',
'<img src="#APP_IMAGES#tbl_dw_miso_date_dim.png">',
'',
''))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(95757869983977349)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(93323021493968986)
,p_plug_display_sequence=>80
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
' time dim data',
'<img src="#APP_IMAGES#model_01_29_2022_v1_.png">'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(95926706723984738)
,p_plug_name=>'rpt_by_15_epoch__01/01/2022__sysdate+30'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(93340776291968995)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select * from dw_v_get_epoch_start_end ',
'where  start_date_dt   between sysdate-1 and sysdate',
'    -- to_date(''2022/01/01 00:00:00'',''yyyy/mm/dd hh24:mi:ss'') and',
'    -- sysdate + 30'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'rpt_by_15_epoch__01/01/2022__sysdate+30'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(95926896839984739)
,p_max_row_count=>'1000000'
,p_allow_save_rpt_public=>'Y'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'TOP_AND_BOTTOM_LEFT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF:RTF:EMAIL'
,p_owner=>'MISO'
,p_internal_uid=>95926896839984739
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95926924560984740)
,p_db_column_name=>'INCR_MINS'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Incr Mins'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95927069626984741)
,p_db_column_name=>'SECS_IN'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Secs In'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95927161889984742)
,p_db_column_name=>'PERIOD_P1'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Period P1'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95927232220984743)
,p_db_column_name=>'START_SEC_P1'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Start Sec P1'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95927331332984744)
,p_db_column_name=>'START_DATE_P1'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Start Date P1'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95927428116984745)
,p_db_column_name=>'END_SEC_P1'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'End Sec P1'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95927535414984746)
,p_db_column_name=>'END_DATE_P1'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'End Date P1'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95927652566984747)
,p_db_column_name=>'START_DATE_DT'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Start Date Dt'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(95927789969984748)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(94345978223069007)
,p_button_name=>'New'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(93407833682969039)
,p_button_image_alt=>'New'
,p_button_position=>'ABOVE_BOX'
,p_button_alignment=>'LEFT'
);
wwv_flow_api.component_end;
end;
/
