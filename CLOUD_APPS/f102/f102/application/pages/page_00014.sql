prompt --application/pages/page_00014
begin
--   Manifest
--     PAGE: 00014
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>102
,p_default_id_offset=>0
,p_default_owner=>'MISO'
);
wwv_flow_api.create_page(
 p_id=>14
,p_user_interface_id=>wwv_flow_api.id(47345157114674058)
,p_name=>'by week'
,p_alias=>'BY-WEEK'
,p_step_title=>'by week'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#MYIR .t-fht-thead{',
'  overflow: auto !important;',
'}',
''))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'MISO'
,p_last_upd_yyyymmddhh24miss=>'20220113215235'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(78115466362830146)
,p_plug_name=>'FULL_DATA (CLICK_TO_EXPAND)'
,p_region_name=>'MYIR'
,p_region_template_options=>'#DEFAULT#:js-useLocalStorage:is-expanded:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(47240695057673971)
,p_plug_display_sequence=>30
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID,',
'       GLHOURSTARTTIME,',
'       MONTH,',
'       DAY,',
'       WEEK,',
'       DOW,',
'       YEAR,',
'       HOUR,',
'       OVER_COOK_30S,',
'       NETSALES,',
'       TOTALTRANS,',
'       SOSTOTALTICKETS,',
'       SOSCRITICALLYLATETICKETS,',
'       SOSSECONDS,',
'       AVGSOS_TRANS,',
'       AVGSOS_TICKETDOLLAR,',
'       BREAKFASTSANDWICHES,',
'       HAMBURGERS,',
'       CHEESEBURGERS,',
'       COMBOS,',
'       FRENCHFRIES,',
'       FRY_TICKETMIX,',
'       LABORHOURS,',
'       GENERALMANAGER,',
'       ORDERPLACEDSOSSECONDS,',
'       AVERAGECHECK,',
'       DELIVERYORDERS,',
'       DELIVERYSALES,',
'       TRANSPERMANHOUR,',
'       SALESPERMANHOUR,',
'       TENURE,',
'       TENUREMEDIAN,',
'       PERIOD,',
'       INTERVAL_0_14,',
'       INTERVAL_15_29,',
'       INTERVAL_30_44,',
'       INTERVAL_45_49,',
'       ID_FILE,',
'       ALTERED_FNX,',
'       FUNCTION_ADDED',
'  from MISO_WC_ONE_YEAR_SALES',
'  where year||''_''||month = nvl(:P14_YEAR_MONTH_FOODCATEGORY, year||''_''||month) ',
'        --    and rollup_Type in     (''DAY'')',
'order by --- decode(rollup_type,''MONTH'',1,''WEEK'',2,''DAY'',3,4) , ',
' nvl(week,0) asc, nvl(day ,0 ) asc '))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P14_YEAR_MONTH_FOODCATEGORY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'FULL_DATA (CLICK_TO_EXPAND)'
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
 p_id=>wwv_flow_api.id(77923164817457608)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF:RTF:EMAIL'
,p_owner=>'MISO'
,p_internal_uid=>77923164817457608
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77923272094457609)
,p_db_column_name=>'ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77923396527457610)
,p_db_column_name=>'GLHOURSTARTTIME'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Glhourstarttime'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77923455734457611)
,p_db_column_name=>'MONTH'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Month'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77923522278457612)
,p_db_column_name=>'DAY'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Day'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77923685246457613)
,p_db_column_name=>'WEEK'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Week'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77923717855457614)
,p_db_column_name=>'DOW'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Dow'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77923837481457615)
,p_db_column_name=>'YEAR'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Year'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77923943777457616)
,p_db_column_name=>'HOUR'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Hour'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77924030026457617)
,p_db_column_name=>'OVER_COOK_30S'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Over Cook 30s'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77924168762457618)
,p_db_column_name=>'NETSALES'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Netsales'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77924273827457619)
,p_db_column_name=>'TOTALTRANS'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Totaltrans'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77924349847457620)
,p_db_column_name=>'SOSTOTALTICKETS'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Sostotaltickets'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77924400694457621)
,p_db_column_name=>'SOSCRITICALLYLATETICKETS'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Soscriticallylatetickets'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77924550415457622)
,p_db_column_name=>'SOSSECONDS'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Sosseconds'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77924625985457623)
,p_db_column_name=>'AVGSOS_TRANS'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Avgsos Trans'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77924785560457624)
,p_db_column_name=>'AVGSOS_TICKETDOLLAR'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Avgsos Ticketdollar'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77924872026457625)
,p_db_column_name=>'BREAKFASTSANDWICHES'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Breakfastsandwiches'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77924921931457626)
,p_db_column_name=>'HAMBURGERS'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Hamburgers'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77925050118457627)
,p_db_column_name=>'CHEESEBURGERS'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Cheeseburgers'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77925122191457628)
,p_db_column_name=>'COMBOS'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Combos'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77925243843457629)
,p_db_column_name=>'FRENCHFRIES'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Frenchfries'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77925306621457630)
,p_db_column_name=>'FRY_TICKETMIX'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'Fry Ticketmix'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77925441616457631)
,p_db_column_name=>'LABORHOURS'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'Laborhours'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77925512166457632)
,p_db_column_name=>'GENERALMANAGER'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>'Generalmanager'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77925694338457633)
,p_db_column_name=>'ORDERPLACEDSOSSECONDS'
,p_display_order=>250
,p_column_identifier=>'Y'
,p_column_label=>'Orderplacedsosseconds'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77925779078457634)
,p_db_column_name=>'AVERAGECHECK'
,p_display_order=>260
,p_column_identifier=>'Z'
,p_column_label=>'Averagecheck'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77925871082457635)
,p_db_column_name=>'DELIVERYORDERS'
,p_display_order=>270
,p_column_identifier=>'AA'
,p_column_label=>'Deliveryorders'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77925919703457636)
,p_db_column_name=>'DELIVERYSALES'
,p_display_order=>280
,p_column_identifier=>'AB'
,p_column_label=>'Deliverysales'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77926038980457637)
,p_db_column_name=>'TRANSPERMANHOUR'
,p_display_order=>290
,p_column_identifier=>'AC'
,p_column_label=>'Transpermanhour'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77926159857457638)
,p_db_column_name=>'SALESPERMANHOUR'
,p_display_order=>300
,p_column_identifier=>'AD'
,p_column_label=>'Salespermanhour'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77926209565457639)
,p_db_column_name=>'TENURE'
,p_display_order=>310
,p_column_identifier=>'AE'
,p_column_label=>'Tenure'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77926336055457640)
,p_db_column_name=>'TENUREMEDIAN'
,p_display_order=>320
,p_column_identifier=>'AF'
,p_column_label=>'Tenuremedian'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77926490342457641)
,p_db_column_name=>'PERIOD'
,p_display_order=>330
,p_column_identifier=>'AG'
,p_column_label=>'Period'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77926500906457642)
,p_db_column_name=>'INTERVAL_0_14'
,p_display_order=>340
,p_column_identifier=>'AH'
,p_column_label=>'Interval 0 14'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77926604191457643)
,p_db_column_name=>'INTERVAL_15_29'
,p_display_order=>350
,p_column_identifier=>'AI'
,p_column_label=>'Interval 15 29'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77926715313457644)
,p_db_column_name=>'INTERVAL_30_44'
,p_display_order=>360
,p_column_identifier=>'AJ'
,p_column_label=>'Interval 30 44'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77926884036457645)
,p_db_column_name=>'INTERVAL_45_49'
,p_display_order=>370
,p_column_identifier=>'AK'
,p_column_label=>'Interval 45 49'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77926909707457646)
,p_db_column_name=>'ID_FILE'
,p_display_order=>380
,p_column_identifier=>'AL'
,p_column_label=>'Id File'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77927015953457647)
,p_db_column_name=>'ALTERED_FNX'
,p_display_order=>390
,p_column_identifier=>'AM'
,p_column_label=>'Altered Fnx'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77927120613457648)
,p_db_column_name=>'FUNCTION_ADDED'
,p_display_order=>400
,p_column_identifier=>'AN'
,p_column_label=>'Function Added'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(78129444568837745)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'781295'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ID:GLHOURSTARTTIME:MONTH:DAY:WEEK:DOW:YEAR:HOUR:OVER_COOK_30S:NETSALES:TOTALTRANS:SOSTOTALTICKETS:SOSCRITICALLYLATETICKETS:SOSSECONDS:AVGSOS_TRANS:AVGSOS_TICKETDOLLAR:BREAKFASTSANDWICHES:HAMBURGERS:CHEESEBURGERS:COMBOS:FRENCHFRIES:FRY_TICKETMIX:LABOR'
||'HOURS:GENERALMANAGER:ORDERPLACEDSOSSECONDS:AVERAGECHECK:DELIVERYORDERS:DELIVERYSALES:TRANSPERMANHOUR:SALESPERMANHOUR:TENURE:TENUREMEDIAN:PERIOD:INTERVAL_0_14:INTERVAL_15_29:INTERVAL_30_44:INTERVAL_45_49:ID_FILE:ALTERED_FNX:FUNCTION_ADDED'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(78131184046172604)
,p_plug_name=>'New_explain'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(47255597458673980)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<PRE>',
'create or replace view v_wc_yearly_food_hierarchy as ',
' with food_by_day as (',
'select count(1) hours , year, month , week ,day,  round(sum (totaltrans),2)  ttltrans_sum_of, ',
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
'      order by  year, month , week ,day, rollup_type ),',
' food_by_week as (',
'select count(1) hours , year, month , week ,      round(sum (ttltrans_sum_of),2)  ttltrans_sum_of, ',
'                                                  round(avg (ttltrans_avg_of),2)  ttltrans_avg_of, ',
'                                                  round(min (ttltrans_min_of),2)  ttltrans_min_of, ',
'                                                  round(max (ttltrans_max_of),2)  ttltrans_max_of, ',
'                                                  round(sum (net_sales_sum_of),2)  net_sales_sum_of, ',
'                                                  round(avg (net_sales_avg_of),2)  net_sales_avg_of, ',
'                                                  round(min (net_sales_min_of),2)  net_sales_min_of, ',
'                                                  round(max (net_sales_max_of),2)  net_sales_max_of, ',
'                                                  sum(sum_bkfst_sandwichs)  sum_bkfst_sandwichs,',
'                                                  sum(sum_hamburgers)       sum_hamburgers,',
'                                                  sum(sum_cheeseburgers)    sum_cheeseburgers,',
'                                                  sum(sum_combos)           sum_combos,',
'                                                  sum(sum_frenchfries)      sum_frenchfries ,',
'                                                  ''WEEK'' rollup_type',
' from food_by_day',
'      group by  year, month , week , ''WEEK''  ',
'      order by  year, month , week , rollup_type ),',
' food_by_month as (',
'select count(1) hours , year, month ,             round(sum (ttltrans_sum_of),2)  ttltrans_sum_of, ',
'                                                  round(avg (ttltrans_avg_of),2)  ttltrans_avg_of, ',
'                                                  round(min (ttltrans_min_of),2)  ttltrans_min_of, ',
'                                                  round(max (ttltrans_max_of),2)  ttltrans_max_of, ',
'                                                  round(sum (net_sales_sum_of),2)  net_sales_sum_of, ',
'                                                  round(avg (net_sales_avg_of),2)  net_sales_avg_of, ',
'                                                  round(min (net_sales_min_of),2)  net_sales_min_of, ',
'                                                  round(max (net_sales_max_of),2)  net_sales_max_of, ',
'                                                  sum(sum_bkfst_sandwichs)  sum_bkfst_sandwichs,',
'                                                  sum(sum_hamburgers)       sum_hamburgers,',
'                                                  sum(sum_cheeseburgers)    sum_cheeseburgers,',
'                                                  sum(sum_combos)           sum_combos,',
'                                                  sum(sum_frenchfries)      sum_frenchfries ,',
'                                                  ''MONTH'' rollup_type',
' from food_by_week',
'      group by  year, month  , ''MONTH''  ',
'      order by  year, month  , rollup_type )',
'select hours, year, month,      week,      day, ttltrans_sum_of, ttltrans_avg_of, ttltrans_min_of, ttltrans_max_of, net_sales_sum_of,  net_sales_avg_of,  net_sales_min_of,  net_sales_max_of,sum_bkfst_sandwichs,  sum_hamburgers, sum_cheeseburgers,sum_'
||'combos,  sum_frenchfries , rollup_type from food_by_day',
' union all',
'select hours, year, month,      week, null day, ttltrans_sum_of, ttltrans_avg_of, ttltrans_min_of, ttltrans_max_of, net_sales_sum_of,  net_sales_avg_of,  net_sales_min_of,  net_sales_max_of,sum_bkfst_sandwichs,  sum_hamburgers, sum_cheeseburgers,sum_'
||'combos,  sum_frenchfries , rollup_type from food_by_week',
' union all',
'select hours, year, month, null week, null day, ttltrans_sum_of, ttltrans_avg_of, ttltrans_min_of, ttltrans_max_of, net_sales_sum_of,  net_sales_avg_of,  net_sales_min_of,  net_sales_max_of,sum_bkfst_sandwichs,  sum_hamburgers, sum_cheeseburgers,sum_'
||'combos,  sum_frenchfries , rollup_type from food_by_month',
'</PRE>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(78131819494172611)
,p_plug_name=>'total_trans and netsales by food type'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47253606869673979)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select HOURS,',
'       YEAR,',
'       MONTH,',
'       WEEK,',
'       DAY,',
'       TTLTRANS_SUM_OF,',
'       TTLTRANS_AVG_OF,',
'       TTLTRANS_MIN_OF,',
'       TTLTRANS_MAX_OF,',
'       NET_SALES_SUM_OF,',
'       NET_SALES_AVG_OF,',
'       NET_SALES_MIN_OF,',
'       NET_SALES_MAX_OF,',
'       SUM_BKFST_SANDWICHS,',
'       SUM_HAMBURGERS,',
'       SUM_CHEESEBURGERS,',
'       SUM_COMBOS,',
'       SUM_FRENCHFRIES,',
'       ROLLUP_TYPE,',
'       decode(rollup_type,''MONTH'',1,''WEEK'',2,''DAY'',3,4) sort_key ',
'  from V_WC_YEARLY_FOOD_HIERARCHY ',
'where year||''_''||month = nvl(:P14_YEAR_MONTH_FOODCATEGORY, year||''_''||month) ',
'      -- and rollup_Type      = nvl(:P14_food_type, ''WEEK'' )',
'order by decode(rollup_type,''MONTH'',1,''WEEK'',2,''DAY'',3,4) , nvl(to_number(week),0) asc, nvl(to_number(day) ,0 ) asc ',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P14_YEAR_MONTH_FOODCATEGORY,P14_FOOD_TYPE'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'total_trans and netsales by food type'
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
 p_id=>wwv_flow_api.id(78131947971172612)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF:RTF:EMAIL'
,p_owner=>'MISO'
,p_internal_uid=>78131947971172612
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(78132095016172613)
,p_db_column_name=>'HOURS'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Hours'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(78132106921172614)
,p_db_column_name=>'YEAR'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Year'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(78132226325172615)
,p_db_column_name=>'MONTH'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Month'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(78132399069172616)
,p_db_column_name=>'WEEK'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Week'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(78132482145172617)
,p_db_column_name=>'DAY'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Day'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(78132561033172618)
,p_db_column_name=>'TTLTRANS_SUM_OF'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Ttltrans Sum Of'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(78132659645172619)
,p_db_column_name=>'TTLTRANS_AVG_OF'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Ttltrans Avg Of'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(78132701337172620)
,p_db_column_name=>'TTLTRANS_MIN_OF'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Ttltrans Min Of'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(78132889912172621)
,p_db_column_name=>'TTLTRANS_MAX_OF'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Ttltrans Max Of'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(78132907003172622)
,p_db_column_name=>'NET_SALES_SUM_OF'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Net Sales Sum Of'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(78133042096172623)
,p_db_column_name=>'NET_SALES_AVG_OF'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Net Sales Avg Of'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(78133145981172624)
,p_db_column_name=>'NET_SALES_MIN_OF'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Net Sales Min Of'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(78133266887172625)
,p_db_column_name=>'NET_SALES_MAX_OF'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Net Sales Max Of'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(78133364024172626)
,p_db_column_name=>'SUM_BKFST_SANDWICHS'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Sum Bkfst Sandwichs'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(78133474265172627)
,p_db_column_name=>'SUM_HAMBURGERS'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Sum Hamburgers'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(78133524195172628)
,p_db_column_name=>'SUM_CHEESEBURGERS'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Sum Cheeseburgers'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(78133666231172629)
,p_db_column_name=>'SUM_COMBOS'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Sum Combos'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(78133741265172630)
,p_db_column_name=>'SUM_FRENCHFRIES'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Sum Frenchfries'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(78133879509172631)
,p_db_column_name=>'ROLLUP_TYPE'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Rollup Type'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(78180527307179409)
,p_db_column_name=>'SORT_KEY'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Sort Key'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(78165188805548108)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'781652'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'HOURS:YEAR:MONTH:WEEK:DAY:TTLTRANS_SUM_OF:TTLTRANS_AVG_OF:TTLTRANS_MIN_OF:TTLTRANS_MAX_OF:NET_SALES_SUM_OF:NET_SALES_AVG_OF:NET_SALES_MIN_OF:NET_SALES_MAX_OF:SUM_BKFST_SANDWICHS:SUM_HAMBURGERS:SUM_CHEESEBURGERS:SUM_COMBOS:SUM_FRENCHFRIES:ROLLUP_TYPE:'
||'SORT_KEY'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(78133965881172632)
,p_plug_name=>'BY YEAR & MONTH  (FOOD_TYPE CURRENTLY TURNED OFF ) => Click on Month to see details week (Click on labels on the Left to remove items)'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(47255597458673980)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_jet_chart(
 p_id=>wwv_flow_api.id(78134048029172633)
,p_region_id=>wwv_flow_api.id(78133965881172632)
,p_chart_type=>'bar'
,p_height=>'400'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'horizontal'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'withRescale'
,p_hover_behavior=>'dim'
,p_stack=>'on'
,p_stack_label=>'on'
,p_connect_nulls=>'Y'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_legend_rendered=>'on'
,p_legend_position=>'auto'
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(78134154855172634)
,p_chart_id=>wwv_flow_api.id(78134048029172633)
,p_seq=>10
,p_name=>'New'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select * from v_wc_yearly_food_hierarchy_monthly',
''))
,p_series_name_column_name=>'FOOD_TYPE'
,p_items_value_column_name=>'SUM_FOOD_TYPE'
,p_items_label_column_name=>'Y_AXIS'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
,p_link_target=>'f?p=&APP_ID.:14:&SESSION.::&DEBUG.::P14_YEAR_MONTH_FOODCATEGORY,P14_FOOD_TYPE:&Y_AXIS.,&FOOD_TYPE.'
,p_link_target_type=>'REDIRECT_PAGE'
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(78134287357172635)
,p_chart_id=>wwv_flow_api.id(78134048029172633)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(78134331934172636)
,p_chart_id=>wwv_flow_api.id(78134048029172633)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'none'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(78134655554172639)
,p_plug_name=>'Weekly totals'
,p_parent_plug_id=>wwv_flow_api.id(78133965881172632)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(47255597458673980)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select --HOURS,',
'       YEAR,',
'       MONTH,',
'       WEEK,',
'       DAY,',
'       TTLTRANS_SUM_OF,',
'       TTLTRANS_AVG_OF,',
'       TTLTRANS_MIN_OF,',
'       TTLTRANS_MAX_OF,',
'       NET_SALES_SUM_OF,',
'       NET_SALES_AVG_OF,',
'       NET_SALES_MIN_OF,',
'       NET_SALES_MAX_OF,',
'       SUM_BKFST_SANDWICHS,',
'       SUM_HAMBURGERS,',
'       SUM_CHEESEBURGERS,',
'       SUM_COMBOS,',
'       SUM_FRENCHFRIES,',
'       ROLLUP_TYPE',
'  from V_WC_YEARLY_FOOD_HIERARCHY ',
'where year||''_''||month = nvl(:P14_YEAR_MONTH_FOODCATEGORY, year||''_''||month) ',
'            and rollup_Type in     (''MONTH'',''WEEK'')',
'order by decode(rollup_type,''MONTH'',1,''WEEK'',2,''DAY'',3,4) , nvl(week,0) asc, nvl(day ,0 ) asc '))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Weekly totals'
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
wwv_flow_api.component_end;
end;
/
begin
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>102
,p_default_id_offset=>0
,p_default_owner=>'MISO'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(78134763375172640)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF:RTF:EMAIL'
,p_owner=>'MISO'
,p_internal_uid=>78134763375172640
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(78134816347172641)
,p_db_column_name=>'YEAR'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Year'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(78134997057172642)
,p_db_column_name=>'MONTH'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Month'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(78135045058172643)
,p_db_column_name=>'WEEK'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Week'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(78135116336172644)
,p_db_column_name=>'DAY'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Day'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(78135296521172645)
,p_db_column_name=>'TTLTRANS_SUM_OF'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Ttltrans Sum Of'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(78135398197172646)
,p_db_column_name=>'TTLTRANS_AVG_OF'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Ttltrans Avg Of'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(78135488512172647)
,p_db_column_name=>'TTLTRANS_MIN_OF'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Ttltrans Min Of'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(78135597148172648)
,p_db_column_name=>'TTLTRANS_MAX_OF'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Ttltrans Max Of'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(78135678566172649)
,p_db_column_name=>'NET_SALES_SUM_OF'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Net Sales Sum Of'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(78135789643172650)
,p_db_column_name=>'NET_SALES_AVG_OF'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Net Sales Avg Of'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(78179728783179401)
,p_db_column_name=>'NET_SALES_MIN_OF'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Net Sales Min Of'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(78179884665179402)
,p_db_column_name=>'NET_SALES_MAX_OF'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Net Sales Max Of'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(78179987961179403)
,p_db_column_name=>'SUM_BKFST_SANDWICHS'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Sum Bkfst Sandwichs'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(78180009730179404)
,p_db_column_name=>'SUM_HAMBURGERS'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Sum Hamburgers'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(78180110414179405)
,p_db_column_name=>'SUM_CHEESEBURGERS'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Sum Cheeseburgers'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(78180288467179406)
,p_db_column_name=>'SUM_COMBOS'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Sum Combos'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(78180309547179407)
,p_db_column_name=>'SUM_FRENCHFRIES'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Sum Frenchfries'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(78180421236179408)
,p_db_column_name=>'ROLLUP_TYPE'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Rollup Type'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(78190977462179751)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'781910'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'YEAR:MONTH:WEEK:DAY:TTLTRANS_SUM_OF:TTLTRANS_AVG_OF:TTLTRANS_MIN_OF:TTLTRANS_MAX_OF:NET_SALES_SUM_OF:NET_SALES_AVG_OF:NET_SALES_MIN_OF:NET_SALES_MAX_OF:SUM_BKFST_SANDWICHS:SUM_HAMBURGERS:SUM_CHEESEBURGERS:SUM_COMBOS:SUM_FRENCHFRIES:ROLLUP_TYPE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(78134400565172637)
,p_name=>'P14_YEAR_MONTH_FOODCATEGORY'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(78133965881172632)
,p_prompt=>'Year Month Foodcategory'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(47318190378674024)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(78134555412172638)
,p_name=>'P14_FOOD_TYPE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(78133965881172632)
,p_prompt=>'Food Type'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(47318190378674024)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.component_end;
end;
/
