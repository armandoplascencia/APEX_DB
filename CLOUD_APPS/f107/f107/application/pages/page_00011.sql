prompt --application/pages/page_00011
begin
--   Manifest
--     PAGE: 00011
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>107
,p_default_id_offset=>0
,p_default_owner=>'MISO'
);
wwv_flow_api.create_page(
 p_id=>11
,p_user_interface_id=>wwv_flow_api.id(63894538847235817)
,p_name=>'DW_V_MISO_DATE_TIME_EPOCH'
,p_alias=>'DW-V-MISO-DATE-TIME-EPOCH'
,p_step_title=>'DW_V_MISO_DATE_TIME_EPOCH'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'MISO'
,p_last_upd_yyyymmddhh24miss=>'20211215011532'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(69199186794918527)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(63804998619235739)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<PRE>',
'CREATE OR REPLACE FORCE VIEW "DW_V_MISO_DATE_TIME_EPOCH" ("MDD_TIME_ID", "MDD_DAY_NAME", "MDD_DAY_NUMBER_IN_WEEK", "MDD_DAY_NUMBER_IN_MONTH", "MDD_DAY_NUMBER_IN_YEAR", "MDD_DW_MISO_DATE_DIM_ID", "MDD_CALENDAR_WEEK_NUMBER", "MDD_WEEK_ENDING_DATE", "MD'
||'D_CALENDAR_MONTH_NUMBER", "MDD_DAYS_IN_CAL_MONTH", "MDD_END_OF_CAL_MONTH", "MDD_CALENDAR_MONTH_NAME", "MDD_DAYS_IN_CAL_QUARTER", "MDD_BEG_OF_CAL_QUARTER", "MDD_END_OF_CAL_QUARTER", "MDD_CALENDAR_QUARTER_NUMBER", "MDD_CALENDAR_YEAR", "MDD_DAYS_IN_CAL_'
||'YEAR", "MDD_END_OF_CAL_YEAR", "MDD_BEG_OF_CAL_YEAR", "MDD_TIME_ID_AS_DATE", "MTHD_SECOND_IN_TIME", "MTHD_HOUR", "MTHD_MINUTE", "MTHD_SECOND", "MTHD_TIME", "MTHD_PERIOD", "MTHD_DW_MISO_TIME_HHMMSS_DIM_ID", "EPOCH_PST_DATE", "EPOCH_PST_DATE_STR") AS ',
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
'    DW_MISO_TIME_HHMMSS_DIM.SECOND_IN_TIME   as mthd_SECOND_IN_TIME,',
'    DW_MISO_TIME_HHMMSS_DIM.HOUR             as mthd_HOUR,',
'    DW_MISO_TIME_HHMMSS_DIM.MINUTE           as mthd_MINUTE,',
'    DW_MISO_TIME_HHMMSS_DIM.SECOND           as mthd_SECOND,',
'    DW_MISO_TIME_HHMMSS_DIM.TIME             as mthd_TIME,',
'    DW_MISO_TIME_HHMMSS_DIM.PERIOD           as mthd_PERIOD,',
'    DW_MISO_TIME_HHMMSS_DIM.DW_MISO_TIME_HHMMSS_DIM_ID as mthd_DW_MISO_TIME_HHMMSS_DIM_ID ,',
'     DW_MISO_DATE_TIME_EPOCH.EPOCH_PST_DATE, ',
'     DW_MISO_DATE_TIME_EPOCH.EPOCH_PST_DATE_STR ',
' from DW_MISO_DATE_TIME_EPOCH DW_MISO_DATE_TIME_EPOCH,',
'      DW_MISO_TIME_HHMMSS_DIM DW_MISO_TIME_HHMMSS_DIM,',
'      DW_MISO_DATE_DIM        DW_MISO_DATE_DIM ',
' where  DW_MISO_DATE_TIME_EPOCH.DW_MISO_DATE_DIM_ID        = DW_MISO_DATE_DIM.DW_MISO_DATE_DIM_ID',
'    and DW_MISO_DATE_TIME_EPOCH.DW_MISO_TIME_HHMMSS_DIM_ID = DW_MISO_TIME_HHMMSS_DIM.DW_MISO_TIME_HHMMSS_DIM_ID;',
'',
'=================================================================',
'CREATE TABLE  "DW_MISO_DATE_DIM" ',
'   (	"DW_MISO_DATE_DIM_ID" NUMBER DEFAULT ON NULL  "DW_MISO_DATE_DIM_SEQ"."NEXTVAL" NOT NULL ENABLE, ',
'	"TIME_ID" TIMESTAMP (6) WITH LOCAL TIME ZONE, ',
'	"DAY_NAME" VARCHAR2(4000 CHAR) COLLATE "USING_NLS_COMP", ',
'	"DAY_NUMBER_IN_WEEK" VARCHAR2(4000 CHAR) COLLATE "USING_NLS_COMP", ',
'	"DAY_NUMBER_IN_MONTH" VARCHAR2(4000 CHAR) COLLATE "USING_NLS_COMP", ',
'	"DAY_NUMBER_IN_YEAR" VARCHAR2(4000 CHAR) COLLATE "USING_NLS_COMP", ',
'	"CALENDAR_WEEK_NUMBER" VARCHAR2(4000 CHAR) COLLATE "USING_NLS_COMP", ',
'	"WEEK_ENDING_DATE" TIMESTAMP (6) WITH LOCAL TIME ZONE, ',
'	"CALENDAR_MONTH_NUMBER" VARCHAR2(4000 CHAR) COLLATE "USING_NLS_COMP", ',
'	"DAYS_IN_CAL_MONTH" VARCHAR2(4000 CHAR) COLLATE "USING_NLS_COMP", ',
'	"END_OF_CAL_MONTH" TIMESTAMP (6) WITH LOCAL TIME ZONE, ',
'	"CALENDAR_MONTH_NAME" VARCHAR2(4000 CHAR) COLLATE "USING_NLS_COMP", ',
'	"DAYS_IN_CAL_QUARTER" NUMBER, ',
'	"BEG_OF_CAL_QUARTER" TIMESTAMP (6) WITH LOCAL TIME ZONE, ',
'	"END_OF_CAL_QUARTER" TIMESTAMP (6) WITH LOCAL TIME ZONE, ',
'	"CALENDAR_QUARTER_NUMBER" VARCHAR2(4000 CHAR) COLLATE "USING_NLS_COMP", ',
'	"CALENDAR_YEAR" VARCHAR2(4000 CHAR) COLLATE "USING_NLS_COMP", ',
'	"DAYS_IN_CAL_YEAR" NUMBER, ',
'	"BEG_OF_CAL_YEAR" TIMESTAMP (6) WITH LOCAL TIME ZONE, ',
'	"END_OF_CAL_YEAR" TIMESTAMP (6) WITH LOCAL TIME ZONE, ',
'	"TIME_ID_AS_DATE" DATE, ',
'	 CONSTRAINT "DW_MISO_DATE_DIM_ID_PK" PRIMARY KEY ("DW_MISO_DATE_DIM_ID")',
'  USING INDEX  ENABLE',
'   )  DEFAULT COLLATION "USING_NLS_COMP"',
'/',
'=================================================================',
'CREATE TABLE  "DW_MISO_DATE_TIME_EPOCH" ',
'   (	"DW_MISO_DATE_DIM_ID" NUMBER, ',
'	"DW_MISO_TIME_HHMMSS_DIM_ID" NUMBER, ',
'	"ID" NUMBER DEFAULT ON NULL  "DW_MISO_DATE_TIME_EPOCH_SEQ"."NEXTVAL" NOT NULL ENABLE, ',
'	"EPOCH_PST_DATE" DATE, ',
'	"EPOCH_PST_DATE_STR" VARCHAR2(100) COLLATE "USING_NLS_COMP", ',
'	 CONSTRAINT "DW_MISO_DATE_TIME_ID_PK" PRIMARY KEY ("ID")',
'  USING INDEX  ENABLE',
'   )  DEFAULT COLLATION "USING_NLS_COMP"',
'/',
'ALTER TABLE  "DW_MISO_DATE_TIME_EPOCH" ADD CONSTRAINT "DW_MISO_DATE_DW_MISO_DATE_FK" FOREIGN KEY ("DW_MISO_DATE_DIM_ID")',
'	  REFERENCES  "DW_MISO_DATE_DIM" ("DW_MISO_DATE_DIM_ID") ENABLE',
'/',
'ALTER TABLE  "DW_MISO_DATE_TIME_EPOCH" ADD CONSTRAINT "DW_MISO_DATE_DW_MISO_TIME_FK" FOREIGN KEY ("DW_MISO_TIME_HHMMSS_DIM_ID")',
'	  REFERENCES  "DW_MISO_TIME_HHMMSS_DIM" ("DW_MISO_TIME_HHMMSS_DIM_ID") ENABLE',
'/',
'CREATE INDEX  "DW_MISO_DATE_TIME_I1" ON  "DW_MISO_DATE_TIME_EPOCH" ("DW_MISO_DATE_DIM_ID")',
'/',
'CREATE INDEX  "DW_MISO_DATE_TIME_I2" ON  "DW_MISO_DATE_TIME_EPOCH" ("DW_MISO_TIME_HHMMSS_DIM_ID")',
'/',
'CREATE OR REPLACE EDITIONABLE TRIGGER  "DW_MISO_DATE_TIME_EPOCH_BIU" ',
'    before insert ',
'    on DW_MISO_DATE_TIME_EPOCH',
'    for each row ',
'begin ',
'    --if inserting then ',
'        :new.EPOCH_PST_DATE     := unix_to_Date(:new.DW_MISO_DATE_DIM_ID); ',
'        :new.EPOCH_PST_DATE_STR := to_char( unix_to_Date(:new.DW_MISO_DATE_DIM_ID) , ''yyyy/mm/dd hh24:mi:ss''); ',
'    --end if; ',
'end pki_cook_times_biu;',
'/',
'ALTER TRIGGER  "DW_MISO_DATE_TIME_EPOCH_BIU" ENABLE',
'/',
'=================================================================',
'CREATE TABLE  "DW_MISO_TIME_HHMMSS_DIM" ',
'   (	"DW_MISO_TIME_HHMMSS_DIM_ID" NUMBER DEFAULT ON NULL  "DW_MISO_TIME_HHMMSS_DIM_SEQ"."NEXTVAL" NOT NULL ENABLE, ',
'	"SECOND_IN_TIME" NUMBER, ',
'	"HOUR" NUMBER, ',
'	"MINUTE" NUMBER, ',
'	"SECOND" NUMBER, ',
'	"TIME" VARCHAR2(8 CHAR) COLLATE "USING_NLS_COMP", ',
'	"PERIOD" VARCHAR2(100) COLLATE "USING_NLS_COMP", ',
'	 CONSTRAINT "DW_MISO_TIME_HHMMS_HOUR_CC" CHECK (hour in (''0'',''1'',''2'',''3'',''4'',''5'',''6'',''7'',''8'',''9'',''10'',''11'',''12'',''13'',''14'',''15'',''16'',''17'',''18'',''19'',''20'',''21'',''22'',''23'')) ENABLE, ',
'	 CONSTRAINT "DW_MISO_TIME_HHMMS_MINUTE_CC" CHECK (minute in (''0'',''1'',''2'',''3'',''4'',''5'',''6'',''7'',''8'',''9'',''10'',''11'',''12'',''13'',''14'',''15'',''16'',''17'',''18'',''19'',''20'',''21'',''22'',''23'',''24'',''25'',''26'',''27'',''28'',''29'',''30'',''31'',''32'',''33'',''34'',''35'',''36'',''37'',''38'',''39'
||''',''40'',''41'',''42'',''43'',''44'',''45'',''46'',''47'',''48'',''49'',''50'',''51'',''52'',''53'',''54'',''55'',''56'',''57'',''58'',''59'')) ENABLE, ',
'	 CONSTRAINT "DW_MISO_TIME_HHMMS_SECOND_CC" CHECK (second in (''0'',''1'',''2'',''3'',''4'',''5'',''6'',''7'',''8'',''9'',''10'',''11'',''12'',''13'',''14'',''15'',''16'',''17'',''18'',''19'',''20'',''21'',''22'',''23'',''24'',''25'',''26'',''27'',''28'',''29'',''30'',''31'',''32'',''33'',''34'',''35'',''36'',''37'',''38'',''39'
||''',''40'',''41'',''42'',''43'',''44'',''45'',''46'',''47'',''48'',''49'',''50'',''51'',''52'',''53'',''54'',''55'',''56'',''57'',''58'',''59'')) ENABLE, ',
'	 CONSTRAINT "DW_MISO_TIME_HHMMS_PERIOD_CC" CHECK (period in (''AM'',''PM'')) ENABLE, ',
'	 CONSTRAINT "DW_MISO_TIME_HHMMS_ID_PK" PRIMARY KEY ("DW_MISO_TIME_HHMMSS_DIM_ID")',
'  USING INDEX  ENABLE',
'   )  DEFAULT COLLATION "USING_NLS_COMP"',
'/',
'',
'',
'</PRE>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(69199257798918528)
,p_name=>'DW_MISO_DATE_DIM'
,p_template=>wwv_flow_api.id(63804998619235739)
,p_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DW_MISO_DATE_DIM_ID,',
'       TIME_ID,',
'       DAY_NAME,',
'       DAY_NUMBER_IN_WEEK,',
'       DAY_NUMBER_IN_MONTH,',
'       DAY_NUMBER_IN_YEAR,',
'       CALENDAR_WEEK_NUMBER,',
'       WEEK_ENDING_DATE,',
'       CALENDAR_MONTH_NUMBER,',
'       DAYS_IN_CAL_MONTH,',
'       END_OF_CAL_MONTH,',
'       CALENDAR_MONTH_NAME,',
'       DAYS_IN_CAL_QUARTER,',
'       BEG_OF_CAL_QUARTER,',
'       END_OF_CAL_QUARTER,',
'       CALENDAR_QUARTER_NUMBER,',
'       CALENDAR_YEAR,',
'       DAYS_IN_CAL_YEAR,',
'       BEG_OF_CAL_YEAR,',
'       END_OF_CAL_YEAR,',
'       TIME_ID_AS_DATE',
'  from DW_MISO_DATE_DIM'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(63828646740235752)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'ROW_RANGES_WITH_LINKS'
,p_pagination_display_position=>'TOP_AND_BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(69199384331918529)
,p_query_column_id=>1
,p_column_alias=>'DW_MISO_DATE_DIM_ID'
,p_column_display_sequence=>10
,p_column_heading=>'Dw Miso Date Dim Id'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(69199412726918530)
,p_query_column_id=>2
,p_column_alias=>'TIME_ID'
,p_column_display_sequence=>20
,p_column_heading=>'Time Id'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(69199560939918531)
,p_query_column_id=>3
,p_column_alias=>'DAY_NAME'
,p_column_display_sequence=>30
,p_column_heading=>'Day Name'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(69199680111918532)
,p_query_column_id=>4
,p_column_alias=>'DAY_NUMBER_IN_WEEK'
,p_column_display_sequence=>40
,p_column_heading=>'Day Number In Week'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(69199732706918533)
,p_query_column_id=>5
,p_column_alias=>'DAY_NUMBER_IN_MONTH'
,p_column_display_sequence=>50
,p_column_heading=>'Day Number In Month'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(69199866331918534)
,p_query_column_id=>6
,p_column_alias=>'DAY_NUMBER_IN_YEAR'
,p_column_display_sequence=>60
,p_column_heading=>'Day Number In Year'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(69199946063918535)
,p_query_column_id=>7
,p_column_alias=>'CALENDAR_WEEK_NUMBER'
,p_column_display_sequence=>70
,p_column_heading=>'Calendar Week Number'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(69200076993918536)
,p_query_column_id=>8
,p_column_alias=>'WEEK_ENDING_DATE'
,p_column_display_sequence=>80
,p_column_heading=>'Week Ending Date'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(69200179470918537)
,p_query_column_id=>9
,p_column_alias=>'CALENDAR_MONTH_NUMBER'
,p_column_display_sequence=>90
,p_column_heading=>'Calendar Month Number'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(69200272704918538)
,p_query_column_id=>10
,p_column_alias=>'DAYS_IN_CAL_MONTH'
,p_column_display_sequence=>100
,p_column_heading=>'Days In Cal Month'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(69200338996918539)
,p_query_column_id=>11
,p_column_alias=>'END_OF_CAL_MONTH'
,p_column_display_sequence=>110
,p_column_heading=>'End Of Cal Month'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(69200404168918540)
,p_query_column_id=>12
,p_column_alias=>'CALENDAR_MONTH_NAME'
,p_column_display_sequence=>120
,p_column_heading=>'Calendar Month Name'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(69200592167918541)
,p_query_column_id=>13
,p_column_alias=>'DAYS_IN_CAL_QUARTER'
,p_column_display_sequence=>130
,p_column_heading=>'Days In Cal Quarter'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(69200614599918542)
,p_query_column_id=>14
,p_column_alias=>'BEG_OF_CAL_QUARTER'
,p_column_display_sequence=>140
,p_column_heading=>'Beg Of Cal Quarter'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(69200747239918543)
,p_query_column_id=>15
,p_column_alias=>'END_OF_CAL_QUARTER'
,p_column_display_sequence=>150
,p_column_heading=>'End Of Cal Quarter'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(69200844005918544)
,p_query_column_id=>16
,p_column_alias=>'CALENDAR_QUARTER_NUMBER'
,p_column_display_sequence=>160
,p_column_heading=>'Calendar Quarter Number'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(69200974626918545)
,p_query_column_id=>17
,p_column_alias=>'CALENDAR_YEAR'
,p_column_display_sequence=>170
,p_column_heading=>'Calendar Year'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(69201063843918546)
,p_query_column_id=>18
,p_column_alias=>'DAYS_IN_CAL_YEAR'
,p_column_display_sequence=>180
,p_column_heading=>'Days In Cal Year'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(69201188456918547)
,p_query_column_id=>19
,p_column_alias=>'BEG_OF_CAL_YEAR'
,p_column_display_sequence=>190
,p_column_heading=>'Beg Of Cal Year'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(69201276771918548)
,p_query_column_id=>20
,p_column_alias=>'END_OF_CAL_YEAR'
,p_column_display_sequence=>200
,p_column_heading=>'End Of Cal Year'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(69201391324918549)
,p_query_column_id=>21
,p_column_alias=>'TIME_ID_AS_DATE'
,p_column_display_sequence=>210
,p_column_heading=>'Time Id As Date'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(69201440947918550)
,p_name=>'DW_MISO_DATE_TIME_EPOCH'
,p_template=>wwv_flow_api.id(63804998619235739)
,p_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DW_MISO_DATE_DIM_ID,',
'       DW_MISO_TIME_HHMMSS_DIM_ID,',
'       ID,',
'       EPOCH_PST_DATE,',
'       EPOCH_PST_DATE_STR',
'  from DW_MISO_DATE_TIME_EPOCH'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(63828646740235752)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(69519978727405701)
,p_query_column_id=>1
,p_column_alias=>'DW_MISO_DATE_DIM_ID'
,p_column_display_sequence=>10
,p_column_heading=>'Dw Miso Date Dim Id'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(69520032991405702)
,p_query_column_id=>2
,p_column_alias=>'DW_MISO_TIME_HHMMSS_DIM_ID'
,p_column_display_sequence=>20
,p_column_heading=>'Dw Miso Time Hhmmss Dim Id'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(69520149631405703)
,p_query_column_id=>3
,p_column_alias=>'ID'
,p_column_display_sequence=>30
,p_column_heading=>'Id'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(69520287371405704)
,p_query_column_id=>4
,p_column_alias=>'EPOCH_PST_DATE'
,p_column_display_sequence=>40
,p_column_heading=>'Epoch Pst Date'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(69520327786405705)
,p_query_column_id=>5
,p_column_alias=>'EPOCH_PST_DATE_STR'
,p_column_display_sequence=>50
,p_column_heading=>'Epoch Pst Date Str'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(69470217026254679)
,p_name=>'DW_V_MISO_DATE_TIME_EPOCH'
,p_template=>wwv_flow_api.id(63804998619235739)
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:js-showMaximizeButton:t-Region--accent1:t-Region--scrollBody:t-Form--slimPadding'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select MDD_TIME_ID,',
'       MDD_DAY_NAME,',
'       MDD_DAY_NUMBER_IN_WEEK,',
'       MDD_DAY_NUMBER_IN_MONTH,',
'       MDD_DAY_NUMBER_IN_YEAR,',
'       trunc(MDD_DW_MISO_DATE_DIM_ID) MDD_DW_MISO_DATE_DIM_ID,',
'       MDD_CALENDAR_WEEK_NUMBER,',
'       MDD_WEEK_ENDING_DATE,',
'       MDD_CALENDAR_MONTH_NUMBER,',
'       MDD_DAYS_IN_CAL_MONTH,',
'       MDD_END_OF_CAL_MONTH,',
'       MDD_CALENDAR_MONTH_NAME,',
'       MDD_DAYS_IN_CAL_QUARTER,',
'       MDD_BEG_OF_CAL_QUARTER,',
'       MDD_END_OF_CAL_QUARTER,',
'       MDD_CALENDAR_QUARTER_NUMBER,',
'       MDD_CALENDAR_YEAR,',
'       MDD_DAYS_IN_CAL_YEAR,',
'       MDD_END_OF_CAL_YEAR,',
'       MDD_BEG_OF_CAL_YEAR,',
'       MDD_TIME_ID_AS_DATE,',
'       MTHD_SECOND_IN_TIME,',
'       MTHD_HOUR,',
'       MTHD_MINUTE,',
'       MTHD_SECOND,',
'       MTHD_TIME,',
'       MTHD_PERIOD,',
'       DIM_15_MIN_WINDOW_FROM_0_2359   mthd_DIM_15_MIN_WINDOW_FROM_0_2359, ',
'       TIME_BY_15_FLOOR                mthd_TIME_BY_15_FLOOR, ',
'       TIME_BY_15_CEILING              mthd_TIME_BY_15_CEILING, ',
'       MTHD_DW_MISO_TIME_HHMMSS_DIM_ID,',
'       EPOCH_PST_DATE,',
'       EPOCH_PST_DATE_STR',
'  from DW_V_MISO_DATE_TIME_EPOCH',
'  '))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(63828646740235752)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'ROW_RANGES_WITH_LINKS'
,p_query_row_count_max=>9999999
,p_pagination_display_position=>'TOP_AND_BOTTOM_RIGHT'
,p_csv_output=>'Y'
,p_csv_output_link_text=>'Download'
,p_prn_output=>'Y'
,p_prn_format=>'PDF'
,p_prn_output_link_text=>'Print'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width_units=>'PERCENTAGE'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'DW_V_MISO_DATE_TIME_EPOCH'
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
,p_sort_null=>'L'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(69470611607254683)
,p_query_column_id=>1
,p_column_alias=>'MDD_TIME_ID'
,p_column_display_sequence=>10
,p_column_heading=>'Mdd Time Id'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(69471020540254684)
,p_query_column_id=>2
,p_column_alias=>'MDD_DAY_NAME'
,p_column_display_sequence=>20
,p_column_heading=>'Mdd Day Name'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(69471489629254685)
,p_query_column_id=>3
,p_column_alias=>'MDD_DAY_NUMBER_IN_WEEK'
,p_column_display_sequence=>30
,p_column_heading=>'Mdd Day Number In Week'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(69471838315254685)
,p_query_column_id=>4
,p_column_alias=>'MDD_DAY_NUMBER_IN_MONTH'
,p_column_display_sequence=>40
,p_column_heading=>'Mdd Day Number In Month'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(69472248548254685)
,p_query_column_id=>5
,p_column_alias=>'MDD_DAY_NUMBER_IN_YEAR'
,p_column_display_sequence=>50
,p_column_heading=>'Mdd Day Number In Year'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(69472680914254685)
,p_query_column_id=>6
,p_column_alias=>'MDD_DW_MISO_DATE_DIM_ID'
,p_column_display_sequence=>60
,p_column_heading=>'Mdd Dw Miso Date Dim Id'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(69473013616254686)
,p_query_column_id=>7
,p_column_alias=>'MDD_CALENDAR_WEEK_NUMBER'
,p_column_display_sequence=>70
,p_column_heading=>'Mdd Calendar Week Number'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(69473436555254686)
,p_query_column_id=>8
,p_column_alias=>'MDD_WEEK_ENDING_DATE'
,p_column_display_sequence=>80
,p_column_heading=>'Mdd Week Ending Date'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(69473834720254686)
,p_query_column_id=>9
,p_column_alias=>'MDD_CALENDAR_MONTH_NUMBER'
,p_column_display_sequence=>90
,p_column_heading=>'Mdd Calendar Month Number'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(69474201422254686)
,p_query_column_id=>10
,p_column_alias=>'MDD_DAYS_IN_CAL_MONTH'
,p_column_display_sequence=>100
,p_column_heading=>'Mdd Days In Cal Month'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(69474666900254687)
,p_query_column_id=>11
,p_column_alias=>'MDD_END_OF_CAL_MONTH'
,p_column_display_sequence=>110
,p_column_heading=>'Mdd End Of Cal Month'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(69475017670254687)
,p_query_column_id=>12
,p_column_alias=>'MDD_CALENDAR_MONTH_NAME'
,p_column_display_sequence=>120
,p_column_heading=>'Mdd Calendar Month Name'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(69475455550254687)
,p_query_column_id=>13
,p_column_alias=>'MDD_DAYS_IN_CAL_QUARTER'
,p_column_display_sequence=>130
,p_column_heading=>'Mdd Days In Cal Quarter'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(69475858383254687)
,p_query_column_id=>14
,p_column_alias=>'MDD_BEG_OF_CAL_QUARTER'
,p_column_display_sequence=>140
,p_column_heading=>'Mdd Beg Of Cal Quarter'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(69476243480254687)
,p_query_column_id=>15
,p_column_alias=>'MDD_END_OF_CAL_QUARTER'
,p_column_display_sequence=>150
,p_column_heading=>'Mdd End Of Cal Quarter'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(69476632773254688)
,p_query_column_id=>16
,p_column_alias=>'MDD_CALENDAR_QUARTER_NUMBER'
,p_column_display_sequence=>160
,p_column_heading=>'Mdd Calendar Quarter Number'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(69477040312254688)
,p_query_column_id=>17
,p_column_alias=>'MDD_CALENDAR_YEAR'
,p_column_display_sequence=>170
,p_column_heading=>'Mdd Calendar Year'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(69477443646254688)
,p_query_column_id=>18
,p_column_alias=>'MDD_DAYS_IN_CAL_YEAR'
,p_column_display_sequence=>180
,p_column_heading=>'Mdd Days In Cal Year'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(69477887169254688)
,p_query_column_id=>19
,p_column_alias=>'MDD_END_OF_CAL_YEAR'
,p_column_display_sequence=>190
,p_column_heading=>'Mdd End Of Cal Year'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(69478276858254689)
,p_query_column_id=>20
,p_column_alias=>'MDD_BEG_OF_CAL_YEAR'
,p_column_display_sequence=>200
,p_column_heading=>'Mdd Beg Of Cal Year'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(69478686785254689)
,p_query_column_id=>21
,p_column_alias=>'MDD_TIME_ID_AS_DATE'
,p_column_display_sequence=>210
,p_column_heading=>'Mdd Time Id As Date'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(69479013786254689)
,p_query_column_id=>22
,p_column_alias=>'MTHD_SECOND_IN_TIME'
,p_column_display_sequence=>220
,p_column_heading=>'Mthd Second In Time'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(69479484580254689)
,p_query_column_id=>23
,p_column_alias=>'MTHD_HOUR'
,p_column_display_sequence=>230
,p_column_heading=>'Mthd Hour'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(69479812830254690)
,p_query_column_id=>24
,p_column_alias=>'MTHD_MINUTE'
,p_column_display_sequence=>240
,p_column_heading=>'Mthd Minute'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(69480230300254690)
,p_query_column_id=>25
,p_column_alias=>'MTHD_SECOND'
,p_column_display_sequence=>250
,p_column_heading=>'Mthd Second'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(69480626205254690)
,p_query_column_id=>26
,p_column_alias=>'MTHD_TIME'
,p_column_display_sequence=>260
,p_column_heading=>'Mthd Time'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(69481054561254690)
,p_query_column_id=>27
,p_column_alias=>'MTHD_PERIOD'
,p_column_display_sequence=>270
,p_column_heading=>'Mthd Period'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(73204495613617813)
,p_query_column_id=>28
,p_column_alias=>'MTHD_DIM_15_MIN_WINDOW_FROM_0_2359'
,p_column_display_sequence=>310
,p_column_heading=>'Mthd Dim 15 Min Window From 0 2359'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(73204534407617814)
,p_query_column_id=>29
,p_column_alias=>'MTHD_TIME_BY_15_FLOOR'
,p_column_display_sequence=>320
,p_column_heading=>'Mthd Time By 15 Floor'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(73204621069617815)
,p_query_column_id=>30
,p_column_alias=>'MTHD_TIME_BY_15_CEILING'
,p_column_display_sequence=>330
,p_column_heading=>'Mthd Time By 15 Ceiling'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(69481443494254691)
,p_query_column_id=>31
,p_column_alias=>'MTHD_DW_MISO_TIME_HHMMSS_DIM_ID'
,p_column_display_sequence=>280
,p_column_heading=>'Mthd Dw Miso Time Hhmmss Dim Id'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(69481868456254691)
,p_query_column_id=>32
,p_column_alias=>'EPOCH_PST_DATE'
,p_column_display_sequence=>290
,p_column_heading=>'Epoch Pst Date'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(69482268507254691)
,p_query_column_id=>33
,p_column_alias=>'EPOCH_PST_DATE_STR'
,p_column_display_sequence=>300
,p_column_heading=>'Epoch Pst Date Str'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.component_end;
end;
/
begin
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>107
,p_default_id_offset=>0
,p_default_owner=>'MISO'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(69520440397405706)
,p_name=>'DW_MISO_TIME_HHMMSS_DIM'
,p_template=>wwv_flow_api.id(63804998619235739)
,p_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DW_MISO_TIME_HHMMSS_DIM_ID,',
'       SECOND_IN_TIME,',
'       HOUR,',
'       MINUTE,',
'       SECOND,',
'       TIME,',
'       PERIOD,',
'       DIM_15_MIN_WINDOW_FROM_0_2359,',
'       TIME_BY_15_FLOOR,',
'       TIME_BY_15_CEILING',
'  from DW_MISO_TIME_HHMMSS_DIM'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(63828646740235752)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(69520504692405707)
,p_query_column_id=>1
,p_column_alias=>'DW_MISO_TIME_HHMMSS_DIM_ID'
,p_column_display_sequence=>10
,p_column_heading=>'Dw Miso Time Hhmmss Dim Id'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(69520645914405708)
,p_query_column_id=>2
,p_column_alias=>'SECOND_IN_TIME'
,p_column_display_sequence=>20
,p_column_heading=>'Second In Time'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(69520722763405709)
,p_query_column_id=>3
,p_column_alias=>'HOUR'
,p_column_display_sequence=>30
,p_column_heading=>'Hour'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(69520829525405710)
,p_query_column_id=>4
,p_column_alias=>'MINUTE'
,p_column_display_sequence=>40
,p_column_heading=>'Minute'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(69520994815405711)
,p_query_column_id=>5
,p_column_alias=>'SECOND'
,p_column_display_sequence=>50
,p_column_heading=>'Second'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(69521069066405712)
,p_query_column_id=>6
,p_column_alias=>'TIME'
,p_column_display_sequence=>60
,p_column_heading=>'Time'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(69521131294405713)
,p_query_column_id=>7
,p_column_alias=>'PERIOD'
,p_column_display_sequence=>70
,p_column_heading=>'Period'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(73204145534617810)
,p_query_column_id=>8
,p_column_alias=>'DIM_15_MIN_WINDOW_FROM_0_2359'
,p_column_display_sequence=>80
,p_column_heading=>'Dim 15 Min Window From 0 2359'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(73204230261617811)
,p_query_column_id=>9
,p_column_alias=>'TIME_BY_15_FLOOR'
,p_column_display_sequence=>90
,p_column_heading=>'Time By 15 Floor'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(73204319228617812)
,p_query_column_id=>10
,p_column_alias=>'TIME_BY_15_CEILING'
,p_column_display_sequence=>100
,p_column_heading=>'Time By 15 Ceiling'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.component_end;
end;
/
