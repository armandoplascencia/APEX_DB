prompt --application/pages/page_00006
begin
--   Manifest
--     PAGE: 00006
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>133
,p_default_id_offset=>0
,p_default_owner=>'MISO'
);
wwv_flow_api.create_page(
 p_id=>6
,p_user_interface_id=>wwv_flow_api.id(104891014803699938)
,p_name=>'V_WC_YEARLY_FOOD_HIERARCHY2'
,p_alias=>'V-WC-YEARLY-FOOD-HIERARCHY2'
,p_step_title=>'V_WC_YEARLY_FOOD_HIERARCHY2'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'MISO'
,p_last_upd_yyyymmddhh24miss=>'20220305010216'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(105225026195661412)
,p_plug_name=>'"MISO"."V_WC_YEARLY_FOOD_HIERARCHY2" '
,p_region_template_options=>'#DEFAULT#:js-useLocalStorage:is-expanded:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(104781806506699849)
,p_plug_display_sequence=>80
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<PRE>',
'--------------------------------------------------------',
'--  DDL for View V_WC_YEARLY_FOOD_HIERARCHY2',
'--------------------------------------------------------',
'',
'  CREATE OR REPLACE FORCE EDITIONABLE VIEW "MISO"."V_WC_YEARLY_FOOD_HIERARCHY2" ("CNTR", "HOURS", "YEAR", "MONTH", "WEEK", "DAY", "TTLTRANS_SUM_OF", "TTLTRANS_AVG_OF", "TTLTRANS_MIN_OF", "TTLTRANS_MAX_OF", "NET_SALES_SUM_OF", "NET_SALES_AVG_OF", "NET'
||'_SALES_MIN_OF", "NET_SALES_MAX_OF", "SUM_BKFST_SANDWICHS", "SUM_HAMBURGERS", "SUM_CHEESEBURGERS", "SUM_COMBOS", "SUM_FRENCHFRIES", "ROLLUP_TYPE") DEFAULT COLLATION "USING_NLS_COMP"  AS ',
'  with food_by_hour as (',
'select count(1) cntr,  year, month , week ,day,  hour,',
'                                                  round(sum (totaltrans),2)  ttltrans_sum_of, ',
'                                                  round(avg (totaltrans),2)  ttltrans_avg_of, ',
'                                                  round(min (totaltrans),2)  ttltrans_min_of, ',
'                                                  round(max (totaltrans),2)  ttltrans_max_of, ',
'                                                  round(sum (netsales),2)  net_sales_sum_of, ',
'                                                  round(avg (netsales),2)  net_sales_avg_of, ',
'                                                  round(min (netsales),2)  net_sales_min_of, ',
'                                                  round(max (netsales),2)  net_sales_max_of, ',
'                                                  sum(BREAKFASTSANDWICHES) sum_bkfst_sandwichs,',
'                                                  sum(hamburgers   )       sum_hamburgers,',
'                                                  sum(cheeseburgers)       sum_cheeseburgers,',
'                                                  sum(BREAKFASTSANDWICHES) sum_combos,',
'                                                  sum(BREAKFASTSANDWICHES) sum_frenchfries ,',
'                                                  ''HOUR'' rollup_type',
' from MISO_WC_ONE_YEAR_SALES',
'      group by  year, month , week ,day,HOUR, ''HOUR''  ',
'      order by  year, month , week ,day,HOUR, rollup_type',
'      ) --select * from food_by_hour where year=2021 and month = 1 and day = 1 order by hour, day, week, month, year;',
'  , food_by_day as (',
'select sum(1) cntr,  year, month , week ,day, null hour ,',
'                                                  round(sum (totaltrans),2)  ttltrans_sum_of, ',
'                                                  round(avg (totaltrans),2)  ttltrans_avg_of, ',
'                                                  round(min (totaltrans),2)  ttltrans_min_of, ',
'                                                  round(max (totaltrans),2)  ttltrans_max_of, ',
'                                                  round(sum (netsales),2)  net_sales_sum_of, ',
'                                                  round(avg (netsales),2)  net_sales_avg_of, ',
'                                                  round(min (netsales),2)  net_sales_min_of, ',
'                                                  round(max (netsales),2)  net_sales_max_of, ',
'                                                  sum(BREAKFASTSANDWICHES) sum_bkfst_sandwichs,',
'                                                  sum(hamburgers   )       sum_hamburgers,',
'                                                  sum(cheeseburgers)       sum_cheeseburgers,',
'                                                  sum(BREAKFASTSANDWICHES) sum_combos,',
'                                                  sum(BREAKFASTSANDWICHES) sum_frenchfries ,',
'                                                  ''DAY'' rollup_type',
' from MISO_WC_ONE_YEAR_SALES',
'      group by  year, month , week ,day, ''DAY''  ',
'      order by  year, month , week ,day, rollup_type ',
'      ) --select * from food_by_day where year=2021 and month = 1  order by hour, day, week, month, year;',
'      ,',
' food_by_week as (',
'select sum(1) cntr, year, month , week , null day, null hour, ',
'                                                  round(sum (totaltrans),2)  ttltrans_sum_of, ',
'                                                  round(avg (totaltrans),2)  ttltrans_avg_of, ',
'                                                  round(min (totaltrans),2)  ttltrans_min_of, ',
'                                                  round(max (totaltrans),2)  ttltrans_max_of, ',
'                                                  round(sum (netsales),2)  net_sales_sum_of, ',
'                                                  round(avg (netsales),2)  net_sales_avg_of, ',
'                                                  round(min (netsales),2)  net_sales_min_of, ',
'                                                  round(max (netsales),2)  net_sales_max_of, ',
'                                                  sum(BREAKFASTSANDWICHES) sum_bkfst_sandwichs,',
'                                                  sum(hamburgers   )       sum_hamburgers,',
'                                                  sum(cheeseburgers)       sum_cheeseburgers,',
'                                                  sum(BREAKFASTSANDWICHES) sum_combos,',
'                                                  sum(BREAKFASTSANDWICHES) sum_frenchfries ,',
'                                                  ''WEEK'' rollup_type',
' from MISO_WC_ONE_YEAR_SALES',
'      group by  year, month , week , --null day,null  hour,',
'       ''WEEK''  ',
'      order by  year, month , week , rollup_type',
'      )  ---select * from food_by_week where year=2021 and month = 1     order by  year, month , week ,day, rollup_type ',
'      ,',
' food_by_month as (',
'select count(1) cntr, year, month , null week, null day, null hour,        ',
'                                                  round(sum (totaltrans),2)  ttltrans_sum_of, ',
'                                                  round(avg (totaltrans),2)  ttltrans_avg_of, ',
'                                                  round(min (totaltrans),2)  ttltrans_min_of, ',
'                                                  round(max (totaltrans),2)  ttltrans_max_of, ',
'                                                  round(sum (netsales),2)  net_sales_sum_of, ',
'                                                  round(avg (netsales),2)  net_sales_avg_of, ',
'                                                  round(min (netsales),2)  net_sales_min_of, ',
'                                                  round(max (netsales),2)  net_sales_max_of, ',
'                                                  sum(BREAKFASTSANDWICHES) sum_bkfst_sandwichs,',
'                                                  sum(hamburgers   )       sum_hamburgers,',
'                                                  sum(cheeseburgers)       sum_cheeseburgers,',
'                                                  sum(BREAKFASTSANDWICHES) sum_combos,',
'                                                  sum(BREAKFASTSANDWICHES) sum_frenchfries ,',
'                                                  ''MONTH'' rollup_type',
' from  MISO_WC_ONE_YEAR_SALES',
'      group by  year, month  , ''MONTH''  ',
'      order by  year, month  , rollup_type ) ,',
' food_by_year as (',
'select count(1) cntr, year, null month , null week, null day, null hour,        ',
'                                                  round(sum (totaltrans),2)  ttltrans_sum_of, ',
'                                                  round(avg (totaltrans),2)  ttltrans_avg_of, ',
'                                                  round(min (totaltrans),2)  ttltrans_min_of, ',
'                                                  round(max (totaltrans),2)  ttltrans_max_of, ',
'                                                  round(sum (netsales),2)  net_sales_sum_of, ',
'                                                  round(avg (netsales),2)  net_sales_avg_of, ',
'                                                  round(min (netsales),2)  net_sales_min_of, ',
'                                                  round(max (netsales),2)  net_sales_max_of, ',
'                                                  sum(BREAKFASTSANDWICHES) sum_bkfst_sandwichs,',
'                                                  sum(hamburgers   )       sum_hamburgers,',
'                                                  sum(cheeseburgers)       sum_cheeseburgers,',
'                                                  sum(BREAKFASTSANDWICHES) sum_combos,',
'                                                  sum(BREAKFASTSANDWICHES) sum_frenchfries ,',
'                                                  ''YEAR'' rollup_type',
' from  MISO_WC_ONE_YEAR_SALES',
'      group by  year , ''MONTH''  ',
'      order by  year,  rollup_type )  --    select cntr, hour, year, month, null week, null day, ttltrans_sum_of, ttltrans_avg_of, ttltrans_min_of, ttltrans_max_of, net_sales_sum_of,  net_sales_avg_of,  net_sales_min_of,  net_sales_max_of,sum_bkfst_s'
||'andwichs,  sum_hamburgers, sum_cheeseburgers,sum_combos,  sum_frenchfries , rollup_type from food_by_year',
'select cntr, hour, year, month,      week,      day, ttltrans_sum_of, ttltrans_avg_of, ttltrans_min_of, ttltrans_max_of, net_sales_sum_of,  net_sales_avg_of,  net_sales_min_of,  net_sales_max_of,sum_bkfst_sandwichs,  sum_hamburgers, sum_cheeseburgers'
||',sum_combos,  sum_frenchfries , rollup_type from food_by_hour',
' union all',
'select cntr, hour, year, month,      week,      day, ttltrans_sum_of, ttltrans_avg_of, ttltrans_min_of, ttltrans_max_of, net_sales_sum_of,  net_sales_avg_of,  net_sales_min_of,  net_sales_max_of,sum_bkfst_sandwichs,  sum_hamburgers, sum_cheeseburgers'
||',sum_combos,  sum_frenchfries , rollup_type from food_by_day',
' union all',
'select cntr, hour, year, month,      week, null day, ttltrans_sum_of, ttltrans_avg_of, ttltrans_min_of, ttltrans_max_of, net_sales_sum_of,  net_sales_avg_of,  net_sales_min_of,  net_sales_max_of,sum_bkfst_sandwichs,  sum_hamburgers, sum_cheeseburgers'
||',sum_combos,  sum_frenchfries , rollup_type from food_by_week',
' union all',
'select cntr, hour, year, month, null week, null day, ttltrans_sum_of, ttltrans_avg_of, ttltrans_min_of, ttltrans_max_of, net_sales_sum_of,  net_sales_avg_of,  net_sales_min_of,  net_sales_max_of,sum_bkfst_sandwichs,  sum_hamburgers, sum_cheeseburgers'
||',sum_combos,  sum_frenchfries , rollup_type from food_by_month',
' union all',
'select cntr, hour, year, month, null week, null day, ttltrans_sum_of, ttltrans_avg_of, ttltrans_min_of, ttltrans_max_of, net_sales_sum_of,  net_sales_avg_of,  net_sales_min_of,  net_sales_max_of,sum_bkfst_sandwichs,  sum_hamburgers, sum_cheeseburgers'
||',sum_combos,  sum_frenchfries , rollup_type from food_by_year',
';',
'</PRE>',
''))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(105225143267661413)
,p_plug_name=>'"MISO"."MISO_WC_ONE_YEAR_SALES"'
,p_region_template_options=>'#DEFAULT#:js-useLocalStorage:is-expanded:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(104781806506699849)
,p_plug_display_sequence=>70
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<PRE>',
'This assumes that each Brand WHITE CASTLE will have its own analytics tables in GCP BIG QUERY.',
'This also assumes that additional attributes like ',
'   STORE,',
'   CONFIGURATION,',
'   PRODUCT',
'   ETC  will be added and rolledup accordingly.',
'',
'select    count(*), rollup_type ',
'     from V_WC_YEARLY_FOOD_HIERARCHY2 ',
' group by rollup_type ',
' order by decode(rollup_type, ''HOUR'',1,''DAY'',2,''WEEK'',3,''MONTH'',4,''YEAR'',5);',
'',
'Expect to find these row counts. ',
'',
'ROWS LABEL',
'==== =======',
'8206 HOUR',
'343	 DAY',
'60	 WEEK',
'13	 MONTH',
'2	 YEAR',
'',
'We will have to take the algorithms in ',
'',
'==> https://misorobotics.atlassian.net/wiki/spaces/MP/pages/1814102057/Miso+KI+v1.0+-+Flippy+2+Data+Requirements',
'',
'Break them down from QLIK syntax to either',
'  1) bigquery',
'  2) external source the pushs into big query the analytics precreated already.',
'',
'Here is a sample table ',
'--------------------------------------------------------',
'--  DDL for Table MISO_WC_ONE_YEAR_SALES',
'--------------------------------------------------------',
'',
'  CREATE TABLE "MISO"."MISO_WC_ONE_YEAR_SALES" ',
'   (	"ID" NUMBER DEFAULT to_number(sys_guid(),''XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX''), ',
'	"GLHOURSTARTTIME" DATE, ',
'	"MONTH"           NUMBER, ',
'	"DAY"             NUMBER, ',
'	"WEEK"            NUMBER, ',
'	"DOW"             NUMBER, ',
'	"YEAR"            NUMBER, ',
'	"HOUR"            NUMBER, ',
'	"OVER_COOK_30S"   VARCHAR2(4000 BYTE) COLLATE "USING_NLS_COMP", ',
'	"NETSALES"        NUMBER, ',
'	"TOTALTRANS"      NUMBER, ',
'	"SOSTOTALTICKETS" NUMBER, ',
'	"SOSCRITICALLYLATETICKETS" NUMBER, ',
'	"SOSSECONDS"      NUMBER, ',
'	"AVGSOS_TRANS"    NUMBER, ',
'	"AVGSOS_TICKETDOLLAR" NUMBER, ',
'	"BREAKFASTSANDWICHES" NUMBER, ',
'	"HAMBURGERS"     NUMBER, ',
'	"CHEESEBURGERS"  NUMBER, ',
'	"COMBOS"         NUMBER, ',
'	"FRENCHFRIES"    NUMBER, ',
'	"FRY_TICKETMIX"  VARCHAR2(50 BYTE) COLLATE "USING_NLS_COMP", ',
'	"LABORHOURS"     NUMBER, ',
'	"GENERALMANAGER" NUMBER, ',
'	"ORDERPLACEDSOSSECONDS" NUMBER, ',
'	"AVERAGECHECK"    NUMBER, ',
'	"DELIVERYORDERS"  NUMBER, ',
'	"DELIVERYSALES"   NUMBER, ',
'	"TRANSPERMANHOUR" NUMBER, ',
'	"SALESPERMANHOUR" NUMBER, ',
'	"TENURE"          NUMBER, ',
'	"TENUREMEDIAN"    NUMBER, ',
'	"PERIOD"          NUMBER, ',
'	"INTERVAL_0_14"   NUMBER, ',
'	"INTERVAL_15_29"  NUMBER, ',
'	"INTERVAL_30_44"  NUMBER, ',
'	"INTERVAL_45_49"  NUMBER, ',
'	"ID_FILE"         NUMBER, ',
'	"ALTERED_FNX"     VARCHAR2(100 BYTE) COLLATE "USING_NLS_COMP", ',
'	"FUNCTION_ADDED"  VARCHAR2(400 BYTE) COLLATE "USING_NLS_COMP"',
'   );',
'--------------------------------------------------------',
'--  DDL for Index SYS_C0032004',
'--------------------------------------------------------',
'',
'  CREATE UNIQUE INDEX "MISO"."SYS_C0032004" ON "MISO"."MISO_WC_ONE_YEAR_SALES" ("ID");',
'',
'--------------------------------------------------------',
'--  Constraints for Table MISO_WC_ONE_YEAR_SALES',
'--------------------------------------------------------',
'',
'  ALTER TABLE "MISO"."MISO_WC_ONE_YEAR_SALES" ADD PRIMARY KEY ("ID")  USING INDEX;',
'',
'  See hierarchy views below',
'',
'</PRE>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(105225344114661415)
,p_plug_name=>'V_WC_YEARLY_FOOD_HIERARCHY2'
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(104781806506699849)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_query_type=>'TABLE'
,p_query_table=>'V_WC_YEARLY_FOOD_HIERARCHY2'
,p_query_where=>'rollup_type = nvl( :P6_NEW , rollup_Type) '
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P6_NEW'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'V_WC_YEARLY_FOOD_HIERARCHY2'
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
 p_id=>wwv_flow_api.id(105225488031661416)
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
,p_internal_uid=>105225488031661416
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(105225519671661417)
,p_db_column_name=>'CNTR'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Cntr'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(105225666179661418)
,p_db_column_name=>'HOURS'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Hours'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(105225732629661419)
,p_db_column_name=>'YEAR'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Year'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(105225839839661420)
,p_db_column_name=>'MONTH'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Month'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(105225967890661421)
,p_db_column_name=>'WEEK'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Week'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(105226069574661422)
,p_db_column_name=>'DAY'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Day'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(105226109734661423)
,p_db_column_name=>'TTLTRANS_SUM_OF'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Ttltrans Sum Of'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(105226251854661424)
,p_db_column_name=>'TTLTRANS_AVG_OF'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Ttltrans Avg Of'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(105226338434661425)
,p_db_column_name=>'TTLTRANS_MIN_OF'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Ttltrans Min Of'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(105226456171661426)
,p_db_column_name=>'TTLTRANS_MAX_OF'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Ttltrans Max Of'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(105226554589661427)
,p_db_column_name=>'NET_SALES_SUM_OF'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Net Sales Sum Of'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(105226687954661428)
,p_db_column_name=>'NET_SALES_AVG_OF'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Net Sales Avg Of'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(105226763281661429)
,p_db_column_name=>'NET_SALES_MIN_OF'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Net Sales Min Of'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(105226879936661430)
,p_db_column_name=>'NET_SALES_MAX_OF'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Net Sales Max Of'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(105226930041661431)
,p_db_column_name=>'SUM_BKFST_SANDWICHS'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Sum Bkfst Sandwichs'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(105227021367661432)
,p_db_column_name=>'SUM_HAMBURGERS'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Sum Hamburgers'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(105227101859661433)
,p_db_column_name=>'SUM_CHEESEBURGERS'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Sum Cheeseburgers'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(105227269917661434)
,p_db_column_name=>'SUM_COMBOS'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Sum Combos'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(105227351384661435)
,p_db_column_name=>'SUM_FRENCHFRIES'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Sum Frenchfries'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(105227441143661436)
,p_db_column_name=>'ROLLUP_TYPE'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Rollup Type'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(105517581735904776)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1055176'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'CNTR:HOURS:YEAR:MONTH:WEEK:DAY:TTLTRANS_SUM_OF:TTLTRANS_AVG_OF:TTLTRANS_MIN_OF:TTLTRANS_MAX_OF:NET_SALES_SUM_OF:NET_SALES_AVG_OF:NET_SALES_MIN_OF:NET_SALES_MAX_OF:SUM_BKFST_SANDWICHS:SUM_HAMBURGERS:SUM_CHEESEBURGERS:SUM_COMBOS:SUM_FRENCHFRIES:ROLLUP_'
||'TYPE'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(105228031759661442)
,p_plug_name=>'MISO.V_WC_YEARLY_FOOD_HIERARCHY2FD'
,p_region_template_options=>'#DEFAULT#:js-useLocalStorage:is-expanded:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(104781806506699849)
,p_plug_display_sequence=>90
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<PRE>  CREATE OR REPLACE VIEW "MISO"."V_WC_YEARLY_FOOD_HIERARCHY2FD" as ',
'  with food_by_hour as (',
'select count(1) cntr,  year, month , week ,day,  hour,',
'                                                  sum(BREAKFASTSANDWICHES) sum_bkfst_sandwichs,',
'                                                  sum(hamburgers   )       sum_hamburgers,',
'                                                  sum(cheeseburgers)       sum_cheeseburgers,',
'                                                  sum(BREAKFASTSANDWICHES) sum_combos,',
'                                                  sum(BREAKFASTSANDWICHES) sum_frenchfries ,',
'                                                  ''HOUR'' rollup_type',
' from MISO_WC_ONE_YEAR_SALES',
'      group by  year, month , week ,day,HOUR, ''HOUR''  ',
'      order by  year, month , week ,day,HOUR, rollup_type',
'      ) --select * from food_by_hour where year=2021 and month = 1 and day = 1 order by hour, day, week, month, year;',
'  , food_by_day as (',
'select sum(1) cntr,  year, month , week ,day, null hour ,',
'                                                  sum(BREAKFASTSANDWICHES) sum_bkfst_sandwichs,',
'                                                  sum(hamburgers   )       sum_hamburgers,',
'                                                  sum(cheeseburgers)       sum_cheeseburgers,',
'                                                  sum(BREAKFASTSANDWICHES) sum_combos,',
'                                                  sum(BREAKFASTSANDWICHES) sum_frenchfries ,',
'                                                  ''DAY'' rollup_type',
' from MISO_WC_ONE_YEAR_SALES',
'      group by  year, month , week ,day, ''DAY''  ',
'      order by  year, month , week ,day, rollup_type ',
'      ) --select * from food_by_day where year=2021 and month = 1  order by hour, day, week, month, year;',
'      ,',
' food_by_week as (',
'select sum(1) cntr, year, month , week , null day, null hour, ',
'                                                  sum(BREAKFASTSANDWICHES) sum_bkfst_sandwichs,',
'                                                  sum(hamburgers   )       sum_hamburgers,',
'                                                  sum(cheeseburgers)       sum_cheeseburgers,',
'                                                  sum(BREAKFASTSANDWICHES) sum_combos,',
'                                                  sum(BREAKFASTSANDWICHES) sum_frenchfries ,',
'                                                  ''WEEK'' rollup_type',
' from MISO_WC_ONE_YEAR_SALES',
'      group by  year, month , week , --null day,null  hour,',
'       ''WEEK''  ',
'      order by  year, month , week , rollup_type',
'      )  ---select * from food_by_week where year=2021 and month = 1     order by  year, month , week ,day, rollup_type ',
'      ,',
' food_by_month as (',
'select count(1) cntr, year, month , null week, null day, null hour,        ',
'                                                  sum(BREAKFASTSANDWICHES) sum_bkfst_sandwichs,',
'                                                  sum(hamburgers   )       sum_hamburgers,',
'                                                  sum(cheeseburgers)       sum_cheeseburgers,',
'                                                  sum(BREAKFASTSANDWICHES) sum_combos,',
'                                                  sum(BREAKFASTSANDWICHES) sum_frenchfries ,',
'                                                  ''MONTH'' rollup_type',
' from  MISO_WC_ONE_YEAR_SALES',
'      group by  year, month  , ''MONTH''  ',
'      order by  year, month  , rollup_type ) ,',
' food_by_year as (',
'select count(1) cntr, year, null month , null week, null day, null hour,        ',
'                                                  sum(BREAKFASTSANDWICHES) sum_bkfst_sandwichs,',
'                                                  sum(hamburgers   )       sum_hamburgers,',
'                                                  sum(cheeseburgers)       sum_cheeseburgers,',
'                                                  sum(BREAKFASTSANDWICHES) sum_combos,',
'                                                  sum(BREAKFASTSANDWICHES) sum_frenchfries ,',
'                                                  ''YEAR'' rollup_type',
' from  MISO_WC_ONE_YEAR_SALES',
'      group by  year , ''MONTH''  ',
'      order by  year,  rollup_type )  ',
'--    select cntr, hour, year, month, null week, null day, ttltrans_sum_of, ttltrans_avg_of, ttltrans_min_of, ttltrans_max_of, net_sales_sum_of,  net_sales_avg_of,  net_sales_min_of,  net_sales_max_of,sum_bkfst_sandwichs,  sum_hamburgers, sum_cheeseb'
||'urgers,sum_combos,  sum_frenchfries , rollup_type from food_by_year',
'select cntr, hour, year, month,      week,      day,   sum_bkfst_sandwichs SUM_VALUE , ''BK_SANDWICHS''  LABEL_OF  , rollup_type from food_by_hour   union all',
'select cntr, hour, year, month,      week,      day,   sum_bkfst_sandwichs SUM_VALUE , ''BK_SANDWICHS''  LABEL_OF  , rollup_type from food_by_day    union all',
'select cntr, hour, year, month,      week, null day,   sum_bkfst_sandwichs SUM_VALUE , ''BK_SANDWICHS''  LABEL_OF  , rollup_type from food_by_week   union all',
'select cntr, hour, year, month, null week, null day,   sum_bkfst_sandwichs SUM_VALUE , ''BK_SANDWICHS''  LABEL_OF  , rollup_type from food_by_month  union all',
'select cntr, hour, year, month, null week, null day,   sum_bkfst_sandwichs SUM_VALUE , ''BK_SANDWICHS''  LABEL_OF  , rollup_type from food_by_year',
'    union all -----------------------------                                                            ',
'select cntr, hour, year, month,      week,      day,   sum_hamburgers      SUM_VALUE , ''HAMBURGERS''    LABEL_OF  , rollup_type from food_by_hour   union all',
'select cntr, hour, year, month,      week,      day,   sum_hamburgers      SUM_VALUE , ''HAMBURGERS''    LABEL_OF  , rollup_type from food_by_day    union all',
'select cntr, hour, year, month,      week, null day,   sum_hamburgers      SUM_VALUE , ''HAMBURGERS''    LABEL_OF  , rollup_type from food_by_week   union all',
'select cntr, hour, year, month, null week, null day,   sum_hamburgers      SUM_VALUE , ''HAMBURGERS''    LABEL_OF  , rollup_type from food_by_month  union all',
'select cntr, hour, year, month, null week, null day,   sum_hamburgers      SUM_VALUE , ''HAMBURGERS''    LABEL_OF  , rollup_type from food_by_year   ',
' union all -----------------------------',
'select cntr, hour, year, month,      week,      day,   sum_cheeseburgers   SUM_VALUE , ''CHEESEBURGERS'' LABEL_OF  , rollup_type from food_by_hour   union all',
'select cntr, hour, year, month,      week,      day,   sum_cheeseburgers   SUM_VALUE , ''CHEESEBURGERS'' LABEL_OF  , rollup_type from food_by_day    union all',
'select cntr, hour, year, month,      week, null day,   sum_cheeseburgers   SUM_VALUE , ''CHEESEBURGERS'' LABEL_OF  , rollup_type from food_by_week   union all',
'select cntr, hour, year, month, null week, null day,   sum_cheeseburgers   SUM_VALUE , ''CHEESEBURGERS'' LABEL_OF  , rollup_type from food_by_month  union all',
'select cntr, hour, year, month, null week, null day,   sum_cheeseburgers   SUM_VALUE , ''CHEESEBURGERS'' LABEL_OF  , rollup_type from food_by_year   ',
' union all -----------------------------',
'select cntr, hour, year, month,      week,      day,   sum_combos          SUM_VALUE , ''COMBOS''        LABEL_OF  , rollup_type from food_by_hour   union all',
'select cntr, hour, year, month,      week,      day,   sum_combos          SUM_VALUE , ''COMBOS''        LABEL_OF  , rollup_type from food_by_day    union all',
'select cntr, hour, year, month,      week, null day,   sum_combos          SUM_VALUE , ''COMBOS''        LABEL_OF  , rollup_type from food_by_week   union all',
'select cntr, hour, year, month, null week, null day,   sum_combos          SUM_VALUE , ''COMBOS''        LABEL_OF  , rollup_type from food_by_month  union all',
'select cntr, hour, year, month, null week, null day,   sum_combos          SUM_VALUE , ''COMBOS''        LABEL_OF  , rollup_type from food_by_year   ',
' union all -----------------------------',
'select cntr, hour, year, month,      week,      day,   sum_frenchfries     SUM_VALUE , ''FRENCHFRIES''   LABEL_OF  , rollup_type from food_by_hour   union all',
'select cntr, hour, year, month,      week,      day,   sum_frenchfries     SUM_VALUE , ''FRENCHFRIES''   LABEL_OF  , rollup_type from food_by_day    union all',
'select cntr, hour, year, month,      week, null day,   sum_frenchfries     SUM_VALUE , ''FRENCHFRIES''   LABEL_OF  , rollup_type from food_by_week   union all',
'select cntr, hour, year, month, null week, null day,   sum_frenchfries     SUM_VALUE , ''FRENCHFRIES''   LABEL_OF  , rollup_type from food_by_month  union all',
'select cntr, hour, year, month, null week, null day,   sum_frenchfries     SUM_VALUE , ''FRENCHFRIES''   LABEL_OF  , rollup_type from food_by_year;',
'',
'select CNTR,',
'       HOUR,',
'       YEAR,',
'       MONTH,',
'       WEEK,',
'       DAY,',
'       SUM_VALUE,    ',
'       decode(rollup_type, ''HOUR'',hour,''DAY'',day,''WEEK'',week,''MONTH'',year||''_''||month,''YEAR'',year)',
'        ||''_''||LABEL_OF LABEL_OF,',
'       ROLLUP_TYPE',
' from (',
'select CNTR,',
'       HOUR,',
'       YEAR,',
'       MONTH,',
'       WEEK,',
'       DAY,',
'       SUM_VALUE,    ',
'       LABEL_OF,',
'       ROLLUP_TYPE',
'  from V_WC_YEARLY_FOOD_HIERARCHY2FD  where ',
' rollup_type = nvl( :P6_NEW , rollup_Type) ',
' ) ',
'</PRE>',
''))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.component_end;
end;
/
begin
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>133
,p_default_id_offset=>0
,p_default_owner=>'MISO'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(105228119158661443)
,p_plug_name=>'DRIVER (example of how we can prebuild_analytics by ROLLUP_TYPE . I am using WC Provided YEARLY SALES DATA, to prove to them that the  rpts are accuate by using their data.'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(104801457324699859)
,p_plug_display_sequence=>40
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(105228531978661447)
,p_plug_name=>'V_WC_YEARLY_FOOD_HIERARCHY2FD'
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(104781806506699849)
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select CNTR,',
'       HOUR,',
'       YEAR,',
'       MONTH,',
'       WEEK,',
'       DAY,',
'       SUM_VALUE,',
'       LABEL_OF,',
'       ROLLUP_TYPE',
'  from V_WC_YEARLY_FOOD_HIERARCHY2FD  where ',
' rollup_type = nvl( :P6_NEW , rollup_Type) '))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P6_NEW'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'V_WC_YEARLY_FOOD_HIERARCHY2FD'
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
 p_id=>wwv_flow_api.id(105228661180661448)
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
,p_internal_uid=>105228661180661448
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(105228778189661449)
,p_db_column_name=>'CNTR'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Cntr'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(105530827340276101)
,p_db_column_name=>'YEAR'
,p_display_order=>30
,p_column_identifier=>'B'
,p_column_label=>'Year'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(105530980315276102)
,p_db_column_name=>'MONTH'
,p_display_order=>40
,p_column_identifier=>'C'
,p_column_label=>'Month'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(105531074516276103)
,p_db_column_name=>'WEEK'
,p_display_order=>50
,p_column_identifier=>'D'
,p_column_label=>'Week'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(105531129466276104)
,p_db_column_name=>'DAY'
,p_display_order=>60
,p_column_identifier=>'E'
,p_column_label=>'Day'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(105532584255276118)
,p_db_column_name=>'ROLLUP_TYPE'
,p_display_order=>200
,p_column_identifier=>'F'
,p_column_label=>'Rollup Type'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(105532689498276119)
,p_db_column_name=>'HOUR'
,p_display_order=>210
,p_column_identifier=>'G'
,p_column_label=>'Hour'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(105532706731276120)
,p_db_column_name=>'SUM_VALUE'
,p_display_order=>220
,p_column_identifier=>'H'
,p_column_label=>'Sum Value'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(105532836762276121)
,p_db_column_name=>'LABEL_OF'
,p_display_order=>230
,p_column_identifier=>'I'
,p_column_label=>'Label Of'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(105542755187297715)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1055428'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'CNTR:YEAR:MONTH:WEEK:DAY:ROLLUP_TYPE:HOUR:SUM_VALUE:LABEL_OF'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(105228233873661444)
,p_name=>'P6_NEW'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(105228119158661443)
,p_prompt=>'BY_TIME'
,p_display_as=>'NATIVE_SHUTTLE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ''(''||cntr||'')''||rollup_type d, rollup_Type r from (',
'select    count(*) cntr , rollup_type ',
'     from V_WC_YEARLY_FOOD_HIERARCHY2 ',
' group by rollup_type ',
' order by decode(rollup_type, ''HOUR'',1,''DAY'',2,''WEEK'',3,''MONTH'',4,''YEAR'',5) ',
')'))
,p_cHeight=>5
,p_field_template=>wwv_flow_api.id(104864052684699904)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'ALL'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(105228378545661445)
,p_name=>'New_P6'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P6_NEW'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(105228446586661446)
,p_event_id=>wwv_flow_api.id(105228378545661445)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_01=>'NEW_P6'
,p_attribute_02=>'Y'
);
wwv_flow_api.component_end;
end;
/
