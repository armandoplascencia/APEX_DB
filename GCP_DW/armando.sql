CREATE OR REPLACE FORCE VIEW "WC_SUM_CSV_V" ("TO_DATE_BD_HMS", "V_HHMM", "TIME_MARKER", "UNIX_TIME") AS 
  with abc as ( 
    select distinct to_date( to_char(businessdate,'yyyy/mm/dd') ||' '||hourminute,'yyyy/mm/dd hh24:mi:ss') to_date_bd_hms
from miso.wc_sum_csv 
 order by  to_date( to_char(businessdate,'yyyy/mm/dd') ||' '||hourminute,'yyyy/mm/dd hh24:mi:ss') 
 ) ,
 xyz as ( select  rownum rownmfnd,  to_date_bd_hms , to_char(to_date_bd_hms,'hh24:mi') v_hhmm from abc )
 select to_date_bd_hms , v_hhmm, 
( case 
 when v_hhmm =  '00:00' then  1
 when v_hhmm =  '00:15' then  2
 when v_hhmm =  '00:30' then  3
 when v_hhmm =  '00:45' then  4
 when v_hhmm =  '01:00' then  5
 when v_hhmm =  '01:15' then  6
 when v_hhmm =  '01:30' then  7
 when v_hhmm =  '01:45' then  8
 when v_hhmm =  '02:00' then  9
 when v_hhmm =  '02:15' then 10
 when v_hhmm =  '02:30' then 11
 when v_hhmm =  '02:45' then 12
 when v_hhmm =  '03:00' then 13
 when v_hhmm =  '03:15' then 14
 when v_hhmm =  '03:30' then 15
 when v_hhmm =  '03:45' then 16
 when v_hhmm =  '04:00' then 17
 when v_hhmm =  '04:15' then 18
 when v_hhmm =  '04:30' then 19
 when v_hhmm =  '04:45' then 20
 when v_hhmm =  '05:00' then 21
 when v_hhmm =  '05:15' then 22
 when v_hhmm =  '05:30' then 23
 when v_hhmm =  '05:45' then 24
 when v_hhmm =  '06:00' then 25
 when v_hhmm =  '06:15' then 26
 when v_hhmm =  '06:30' then 27
 when v_hhmm =  '06:45' then 28
 when v_hhmm =  '07:00' then 29
 when v_hhmm =  '07:15' then 30
 when v_hhmm =  '07:30' then 31
 when v_hhmm =  '07:45' then 32
 when v_hhmm =  '08:00' then 33
 when v_hhmm =  '08:15' then 34
 when v_hhmm =  '08:30' then 35
 when v_hhmm =  '08:45' then 36
 when v_hhmm =  '09:00' then 37
 when v_hhmm =  '09:15' then 38
 when v_hhmm =  '09:30' then 39
 when v_hhmm =  '09:45' then 40
 when v_hhmm = '10:00' then 41
 when v_hhmm = '10:15' then 42
 when v_hhmm = '10:30' then 43
 when v_hhmm = '10:45' then 44
 when v_hhmm = '11:00' then 45
 when v_hhmm = '11:15' then 46
 when v_hhmm = '11:30' then 47
 when v_hhmm = '11:45' then 48
 when v_hhmm = '12:00' then 49
 when v_hhmm = '12:15' then 50
 when v_hhmm = '12:30' then 51
 when v_hhmm = '12:45' then 52
 when v_hhmm = '13:00' then 53
 when v_hhmm = '13:15' then 54
 when v_hhmm = '13:30' then 55
 when v_hhmm = '13:45' then 56
 when v_hhmm = '14:00' then 57
 when v_hhmm = '14:15' then 58
 when v_hhmm = '14:30' then 59
 when v_hhmm = '14:45' then 60
 when v_hhmm = '15:00' then 61
 when v_hhmm = '15:15' then 62
 when v_hhmm = '15:30' then 63
 when v_hhmm = '15:45' then 64
 when v_hhmm = '16:00' then 65
 when v_hhmm = '16:15' then 66
 when v_hhmm = '16:30' then 67
 when v_hhmm = '16:45' then 68
 when v_hhmm = '17:00' then 69
 when v_hhmm = '17:15' then 70
 when v_hhmm = '17:30' then 71
 when v_hhmm = '17:45' then 72
 when v_hhmm = '18:00' then 73
 when v_hhmm = '18:15' then 74
 when v_hhmm = '18:30' then 75
 when v_hhmm = '18:45' then 76
 when v_hhmm = '19:00' then 77
 when v_hhmm = '19:15' then 78
 when v_hhmm = '19:30' then 79
 when v_hhmm = '19:45' then 80
 when v_hhmm = '20:00' then 81
 when v_hhmm = '20:15' then 82
 when v_hhmm = '20:30' then 83
 when v_hhmm = '20:45' then 84
 when v_hhmm = '21:00' then 85
 when v_hhmm = '21:15' then 86
 when v_hhmm = '21:30' then 87
 when v_hhmm = '21:45' then 88
 when v_hhmm = '22:00' then 89
 when v_hhmm = '22:15' then 90
 when v_hhmm = '22:30' then 91
 when v_hhmm = '22:45' then 92
 when v_hhmm = '23:00' then 93
 when v_hhmm = '23:15' then 94
 when v_hhmm = '23:30' then 95
 when v_hhmm = '23:45' then 96
 else 0 end) time_marker   , round(date_to_unix(to_date_bd_hms,'America/Los_Angeles')) epoch_unix_Time 
  from xyz
/



CREATE OR REPLACE FORCE VIEW "ARMANDO_WC_CALENDAR_BY_DAY" ("WEEK", "MONTH", "MON", "TUE", "WED", "THU", "FRI", "SAT", "SUN") AS 
  SELECT
    TO_NUMBER(SUBSTR(x.week, 3))                                                AS week,
    x.month,
    MAX(DECODE(TO_CHAR(x.day, 'D'), '1', TO_NUMBER(TO_CHAR(x.day, 'FMDD'))))    AS mon,
    MAX(DECODE(TO_CHAR(x.day, 'D'), '2', TO_NUMBER(TO_CHAR(x.day, 'FMDD'))))    AS tue,
    MAX(DECODE(TO_CHAR(x.day, 'D'), '3', TO_NUMBER(TO_CHAR(x.day, 'FMDD'))))    AS wed,
    MAX(DECODE(TO_CHAR(x.day, 'D'), '4', TO_NUMBER(TO_CHAR(x.day, 'FMDD'))))    AS thu,
    MAX(DECODE(TO_CHAR(x.day, 'D'), '5', TO_NUMBER(TO_CHAR(x.day, 'FMDD'))))    AS fri,
    MAX(DECODE(TO_CHAR(x.day, 'D'), '6', TO_NUMBER(TO_CHAR(x.day, 'FMDD'))))    AS sat,
    MAX(DECODE(TO_CHAR(x.day, 'D'), '7', TO_NUMBER(TO_CHAR(x.day, 'FMDD'))))    AS sun
FROM (
    SELECT
                TRUNC(SYSDATE, 'Y') + LEVEL - 1                                         AS day,
        TO_CHAR(TRUNC(SYSDATE, 'Y') + LEVEL - 1, 'IYIW')                        AS week,
        TO_CHAR(TRUNC(SYSDATE, 'Y') + LEVEL - 1, 'MM/YYYY')                     AS month
    FROM DUAL
    CONNECT BY LEVEL <= ADD_MONTHS(TRUNC(SYSDATE, 'Y'), 24) - TRUNC(SYSDATE, 'Y')
) x
GROUP BY x.month, x.week
ORDER BY x.month, x.week
/


CREATE OR REPLACE FORCE VIEW "DW_V_GET_EPOCH_START_END" ("INCR_MINS", "SECS_IN", "PERIOD_P1", "START_SEC_P1", "START_DATE_P1", "END_SEC_P1", "END_DATE_P1", "START_DATE_DT") AS 
  with abc as ( select column_value from table ( dw_v_get_epoch_number_ntt_PTF (999999999999999999999999) ) )
 ,  get_dates as (
 select 15 INCR_MINS,899 SECS_IN,
           1*abc.column_value Period_p1 , 
                                                                      decode(abc.column_value,1,0  ,     900*(abc.column_value-1    ) )                            start_sec_p1, 
                                              to_char(unix_to_date(   decode(abc.column_value,1,0  ,    (900*abc.column_value)-900  ) ) ,'yyyy/mm/dd hh24:mi:ss')  START_DATE_P1,
                                                                      decode(abc.column_value,1,899,    (900*abc.column_value)-1      )                            end_sec_p1, 
                                              to_char(unix_to_date(   decode(abc.column_value,1,899,    (900*abc.column_value) -1   ) ) ,'yyyy/mm/dd hh24:mi:ss')  end_DATE_P1,
                                                      unix_to_date(   decode(abc.column_value,1,0,      (900*abc.column_value)-900  ) )                            start_date_dt                                             
   from  abc 
   where   unix_to_date(   decode(abc.column_value,1,0,    (900*abc.column_value)-900      ) ) 
    between 
     to_date('1970/01/01 00:00:00','yyyy/mm/dd hh24:mi:ss') and
     to_date('2023/07/01 00:00:00','yyyy/mm/dd hh24:mi:ss')
 ) select "INCR_MINS","SECS_IN","PERIOD_P1","START_SEC_P1","START_DATE_P1","END_SEC_P1","END_DATE_P1","START_DATE_DT" from get_dates
/

