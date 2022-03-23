
  CREATE TABLE "MISO"."MISO_WC_ONE_YEAR_SALES" 
   (	"ID" NUMBER DEFAULT to_number(sys_guid(),'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'), 
	"GLHOURSTARTTIME" DATE, 
	"MONTH"           NUMBER, 
	"DAY"             NUMBER, 
	"WEEK"            NUMBER, 
	"DOW"             NUMBER, 
	"YEAR"            NUMBER, 
	"HOUR"            NUMBER, 
	"OVER_COOK_30S"   VARCHAR2(4000 BYTE) COLLATE "USING_NLS_COMP", 
	"NETSALES"        NUMBER, 
	"TOTALTRANS"      NUMBER, 
	"SOSTOTALTICKETS" NUMBER, 
	"SOSCRITICALLYLATETICKETS" NUMBER, 
	"SOSSECONDS"      NUMBER, 
	"AVGSOS_TRANS"    NUMBER, 
	"AVGSOS_TICKETDOLLAR" NUMBER, 
	"BREAKFASTSANDWICHES" NUMBER, 
	"HAMBURGERS"     NUMBER, 
	"CHEESEBURGERS"  NUMBER, 
	"COMBOS"         NUMBER, 
	"FRENCHFRIES"    NUMBER, 
	"FRY_TICKETMIX"  VARCHAR2(50 BYTE) COLLATE "USING_NLS_COMP", 
	"LABORHOURS"     NUMBER, 
	"GENERALMANAGER" NUMBER, 
	"ORDERPLACEDSOSSECONDS" NUMBER, 
	"AVERAGECHECK"    NUMBER, 
	"DELIVERYORDERS"  NUMBER, 
	"DELIVERYSALES"   NUMBER, 
	"TRANSPERMANHOUR" NUMBER, 
	"SALESPERMANHOUR" NUMBER, 
	"TENURE"          NUMBER, 
	"TENUREMEDIAN"    NUMBER, 
	"PERIOD"          NUMBER, 
	"INTERVAL_0_14"   NUMBER, 
	"INTERVAL_15_29"  NUMBER, 
	"INTERVAL_30_44"  NUMBER, 
	"INTERVAL_45_49"  NUMBER, 
	"ID_FILE"         NUMBER, 
	"ALTERED_FNX"     VARCHAR2(100 BYTE) COLLATE "USING_NLS_COMP", 
	"FUNCTION_ADDED"  VARCHAR2(400 BYTE) COLLATE "USING_NLS_COMP"
   );
--------------------------------------------------------
--  DDL for Index SYS_C0032004
--------------------------------------------------------

  CREATE UNIQUE INDEX "MISO"."SYS_C0032004" ON "MISO"."MISO_WC_ONE_YEAR_SALES" ("ID");

--------------------------------------------------------
--  Constraints for Table MISO_WC_ONE_YEAR_SALES
--------------------------------------------------------

  ALTER TABLE "MISO"."MISO_WC_ONE_YEAR_SALES" ADD PRIMARY KEY ("ID")  USING INDEX;


  CREATE OR REPLACE FORCE EDITIONABLE VIEW "MISO"."V_WC_YEARLY_FOOD_HIERARCHY2" ("CNTR", "HOURS", "YEAR", "MONTH", "WEEK", "DAY", "TTLTRANS_SUM_OF", "TTLTRANS_AVG_OF", "TTLTRANS_MIN_OF", "TTLTRANS_MAX_OF", "NET_SALES_SUM_OF", "NET_SALES_AVG_OF", "NET_SALES_MIN_OF", "NET_SALES_MAX_OF", "SUM_BKFST_SANDWICHS", "SUM_HAMBURGERS", "SUM_CHEESEBURGERS", "SUM_COMBOS", "SUM_FRENCHFRIES", "ROLLUP_TYPE") DEFAULT COLLATION "USING_NLS_COMP"  AS 
  with food_by_hour as (
select count(1) cntr,  year, month , week ,day,  hour,
                                                  round(sum (totaltrans),2)  ttltrans_sum_of, 
                                                  round(avg (totaltrans),2)  ttltrans_avg_of, 
                                                  round(min (totaltrans),2)  ttltrans_min_of, 
                                                  round(max (totaltrans),2)  ttltrans_max_of, 
                                                  round(sum (netsales),2)  net_sales_sum_of, 
                                                  round(avg (netsales),2)  net_sales_avg_of, 
                                                  round(min (netsales),2)  net_sales_min_of, 
                                                  round(max (netsales),2)  net_sales_max_of, 
                                                  sum(BREAKFASTSANDWICHES) sum_bkfst_sandwichs,
                                                  sum(hamburgers   )       sum_hamburgers,
                                                  sum(cheeseburgers)       sum_cheeseburgers,
                                                  sum(BREAKFASTSANDWICHES) sum_combos,
                                                  sum(BREAKFASTSANDWICHES) sum_frenchfries ,
                                                  'HOUR' rollup_type
 from MISO_WC_ONE_YEAR_SALES
      group by  year, month , week ,day,HOUR, 'HOUR'  
      order by  year, month , week ,day,HOUR, rollup_type
      ) --select * from food_by_hour where year=2021 and month = 1 and day = 1 order by hour, day, week, month, year;
  , food_by_day as (
select sum(1) cntr,  year, month , week ,day, null hour ,
                                                  round(sum (totaltrans),2)  ttltrans_sum_of, 
                                                  round(avg (totaltrans),2)  ttltrans_avg_of, 
                                                  round(min (totaltrans),2)  ttltrans_min_of, 
                                                  round(max (totaltrans),2)  ttltrans_max_of, 
                                                  round(sum (netsales),2)  net_sales_sum_of, 
                                                  round(avg (netsales),2)  net_sales_avg_of, 
                                                  round(min (netsales),2)  net_sales_min_of, 
                                                  round(max (netsales),2)  net_sales_max_of, 
                                                  sum(BREAKFASTSANDWICHES) sum_bkfst_sandwichs,
                                                  sum(hamburgers   )       sum_hamburgers,
                                                  sum(cheeseburgers)       sum_cheeseburgers,
                                                  sum(BREAKFASTSANDWICHES) sum_combos,
                                                  sum(BREAKFASTSANDWICHES) sum_frenchfries ,
                                                  'DAY' rollup_type
 from MISO_WC_ONE_YEAR_SALES
      group by  year, month , week ,day, 'DAY'  
      order by  year, month , week ,day, rollup_type 
      ) --select * from food_by_day where year=2021 and month = 1  order by hour, day, week, month, year;
      ,
 food_by_week as (
select sum(1) cntr, year, month , week , null day, null hour, 
                                                  round(sum (totaltrans),2)  ttltrans_sum_of, 
                                                  round(avg (totaltrans),2)  ttltrans_avg_of, 
                                                  round(min (totaltrans),2)  ttltrans_min_of, 
                                                  round(max (totaltrans),2)  ttltrans_max_of, 
                                                  round(sum (netsales),2)  net_sales_sum_of, 
                                                  round(avg (netsales),2)  net_sales_avg_of, 
                                                  round(min (netsales),2)  net_sales_min_of, 
                                                  round(max (netsales),2)  net_sales_max_of, 
                                                  sum(BREAKFASTSANDWICHES) sum_bkfst_sandwichs,
                                                  sum(hamburgers   )       sum_hamburgers,
                                                  sum(cheeseburgers)       sum_cheeseburgers,
                                                  sum(BREAKFASTSANDWICHES) sum_combos,
                                                  sum(BREAKFASTSANDWICHES) sum_frenchfries ,
                                                  'WEEK' rollup_type
 from MISO_WC_ONE_YEAR_SALES
      group by  year, month , week , --null day,null  hour,
       'WEEK'  
      order by  year, month , week , rollup_type
      )  ---select * from food_by_week where year=2021 and month = 1     order by  year, month , week ,day, rollup_type 
      ,
 food_by_month as (
select count(1) cntr, year, month , null week, null day, null hour,        
                                                  round(sum (totaltrans),2)  ttltrans_sum_of, 
                                                  round(avg (totaltrans),2)  ttltrans_avg_of, 
                                                  round(min (totaltrans),2)  ttltrans_min_of, 
                                                  round(max (totaltrans),2)  ttltrans_max_of, 
                                                  round(sum (netsales),2)  net_sales_sum_of, 
                                                  round(avg (netsales),2)  net_sales_avg_of, 
                                                  round(min (netsales),2)  net_sales_min_of, 
                                                  round(max (netsales),2)  net_sales_max_of, 
                                                  sum(BREAKFASTSANDWICHES) sum_bkfst_sandwichs,
                                                  sum(hamburgers   )       sum_hamburgers,
                                                  sum(cheeseburgers)       sum_cheeseburgers,
                                                  sum(BREAKFASTSANDWICHES) sum_combos,
                                                  sum(BREAKFASTSANDWICHES) sum_frenchfries ,
                                                  'MONTH' rollup_type
 from  MISO_WC_ONE_YEAR_SALES
      group by  year, month  , 'MONTH'  
      order by  year, month  , rollup_type ) ,
 food_by_year as (
select count(1) cntr, year, null month , null week, null day, null hour,        
                                                  round(sum (totaltrans),2)  ttltrans_sum_of, 
                                                  round(avg (totaltrans),2)  ttltrans_avg_of, 
                                                  round(min (totaltrans),2)  ttltrans_min_of, 
                                                  round(max (totaltrans),2)  ttltrans_max_of, 
                                                  round(sum (netsales),2)  net_sales_sum_of, 
                                                  round(avg (netsales),2)  net_sales_avg_of, 
                                                  round(min (netsales),2)  net_sales_min_of, 
                                                  round(max (netsales),2)  net_sales_max_of, 
                                                  sum(BREAKFASTSANDWICHES) sum_bkfst_sandwichs,
                                                  sum(hamburgers   )       sum_hamburgers,
                                                  sum(cheeseburgers)       sum_cheeseburgers,
                                                  sum(BREAKFASTSANDWICHES) sum_combos,
                                                  sum(BREAKFASTSANDWICHES) sum_frenchfries ,
                                                  'YEAR' rollup_type
 from  MISO_WC_ONE_YEAR_SALES
      group by  year , 'MONTH'  
      order by  year,  rollup_type )  --    select cntr, hour, year, month, null week, null day, ttltrans_sum_of, ttltrans_avg_of, ttltrans_min_of, ttltrans_max_of, net_sales_sum_of,  net_sales_avg_of,  net_sales_min_of,  net_sales_max_of,sum_bkfst_sandwichs,  sum_hamburgers, sum_cheeseburgers,sum_combos,  sum_frenchfries , rollup_type from food_by_year
select cntr, hour, year, month,      week,      day, ttltrans_sum_of, ttltrans_avg_of, ttltrans_min_of, ttltrans_max_of, net_sales_sum_of,  net_sales_avg_of,  net_sales_min_of,  net_sales_max_of,sum_bkfst_sandwichs,  sum_hamburgers, sum_cheeseburgers,sum_combos,  sum_frenchfries , rollup_type from food_by_hour
 union all
select cntr, hour, year, month,      week,      day, ttltrans_sum_of, ttltrans_avg_of, ttltrans_min_of, ttltrans_max_of, net_sales_sum_of,  net_sales_avg_of,  net_sales_min_of,  net_sales_max_of,sum_bkfst_sandwichs,  sum_hamburgers, sum_cheeseburgers,sum_combos,  sum_frenchfries , rollup_type from food_by_day
 union all
select cntr, hour, year, month,      week, null day, ttltrans_sum_of, ttltrans_avg_of, ttltrans_min_of, ttltrans_max_of, net_sales_sum_of,  net_sales_avg_of,  net_sales_min_of,  net_sales_max_of,sum_bkfst_sandwichs,  sum_hamburgers, sum_cheeseburgers,sum_combos,  sum_frenchfries , rollup_type from food_by_week
 union all
select cntr, hour, year, month, null week, null day, ttltrans_sum_of, ttltrans_avg_of, ttltrans_min_of, ttltrans_max_of, net_sales_sum_of,  net_sales_avg_of,  net_sales_min_of,  net_sales_max_of,sum_bkfst_sandwichs,  sum_hamburgers, sum_cheeseburgers,sum_combos,  sum_frenchfries , rollup_type from food_by_month
 union all
select cntr, hour, year, month, null week, null day, ttltrans_sum_of, ttltrans_avg_of, ttltrans_min_of, ttltrans_max_of, net_sales_sum_of,  net_sales_avg_of,  net_sales_min_of,  net_sales_max_of,sum_bkfst_sandwichs,  sum_hamburgers, sum_cheeseburgers,sum_combos,  sum_frenchfries , rollup_type from food_by_year
;