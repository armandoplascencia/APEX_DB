prompt --application/pages/page_00018
begin
--   Manifest
--     PAGE: 00018
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
 p_id=>18
,p_user_interface_id=>wwv_flow_api.id(47345157114674058)
,p_name=>'15_min_window_API_CODE'
,p_alias=>'15-MIN-WINDOW-API-CODE'
,p_step_title=>'15_min_window_API_CODE'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'MISO'
,p_last_upd_yyyymmddhh24miss=>'20220130221714'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(94346049325069008)
,p_plug_name=>'CODE_for_Summary'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(47255597458673980)
,p_plug_display_sequence=>10
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
'</PRE>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.component_end;
end;
/
