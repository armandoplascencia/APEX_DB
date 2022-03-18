prompt --application/pages/page_00024
begin
--   Manifest
--     PAGE: 00024
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
 p_id=>24
,p_user_interface_id=>wwv_flow_api.id(47345157114674058)
,p_name=>'pivot_wc_sales_csv'
,p_alias=>'PIVOT-WC-SALES-CSV'
,p_step_title=>'pivot_wc_sales_csv'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'MISO'
,p_last_upd_yyyymmddhh24miss=>'20220210092449'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(97028228812632583)
,p_plug_name=>'pivot_wc_sales_csv'
,p_region_name=>'PIVOT_1'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(47255597458673980)
,p_plug_display_sequence=>30
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID,                                                                                                                                            ',
'       CASTLE,                                                                                                                                        ',
'       BUSINESSDATE,                                                                                                                                  ',
'       DAYOFWEEK,                                                                                                                                     ',
'       HOURMINUTE,                                                                                                                                    ',
'       PRODUCT,                                                                                                                                       ',
'       PRODUCT_UOM,                                                                                                                                   ',
'       FORECASTEDAMOUNTOZ,                                                                                                                            ',
'       FORECASTEDSALES    ',
'      -- substr(:P24_HOUR_MIN_SLIDER,1                                              , ( instr( :P24_HOUR_MIN_SLIDER ,1 , '':'' ) -1 ) ) first_param,          ',
'      -- substr(:P24_HOUR_MIN_SLIDER, ( instr( :P24_HOUR_MIN_SLIDER ,1 , '':'' ) +1 ) , 99 )                                            second_param                                                   ',
'      -- to_date(substr(:P24_PIVOT_START ,  1 , 10 ),''yyyy-mm-dd'')   first_dt,',
'      -- to_date(substr(:P24_PIVOT_START ,  14 , 99 ),''yyyy-mm-dd'')  second_dt                                                                                                            ',
'  from  WC_SUM_CSV ',
'    where businessdate between to_date(substr(:P24_PIVOT_START ,  1 , 10 ),''yyyy-mm-dd'') and to_date(substr(:P24_PIVOT_START ,  14 , 99 ),''yyyy-mm-dd'') '))
,p_plug_source_type=>'PLUGIN_MULEDEV.PIVOT_REGION'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'my_pivot_div'
,p_attribute_02=>'hourminute'
,p_attribute_03=>'castle,businessdate,product, forecastedamountoz'
,p_attribute_04=>'Y'
,p_attribute_05=>'Table'
,p_attribute_06=>'Y'
,p_attribute_07=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(97089330867554402)
,p_plug_name=>'FILTER_PIVOT'
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(47240695057673971)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>'&P24_PIVOT_START.   and  &P24_PIVOT_END.  and &P24_HOUR_MIN_SLIDER.'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(97091947253554428)
,p_name=>'New'
,p_template=>wwv_flow_api.id(47255597458673980)
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select * from (',
'select  '' 0:00''    ||''  1''  HR1_1 , '' 0:15''   ||''  2''  HR1_2, '' 0:30''    ||''  3''  HR1_3, '' 0:45''    ||''  4''  HR1_4, '' 1:00''   ||''  5''  HR2_1, '' 1:15''   ||''  6''  HR2_2, '' 1:30''   ||''  7''  HR2_3, '' 1:45''   ||''  8''  HR2_4, '' 2:00''   ||''  9''  HR3_1, '' 2:'
||'15''   ||'' 10''  HR3_2, '' 2:30''   ||'' 11''  HR3_3, '' 2:45''    ||'' 12''  HR3_4 ,1 roword from dual union all',
'select  '' 3:00''    ||'' 13''  HR4_1,  '' 3:15''   ||'' 14''  HR4_2, '' 3:30''    ||'' 15''  HR4_3, '' 3:45''    ||'' 16''  HR4_4, '' 4:00''   ||'' 17''  HR5_1, '' 4:15''   ||'' 18''  HR5_2, '' 4:30''   ||'' 19''  HR5_3, '' 4:45''   ||'' 20''  HR5_4, '' 5:00''   ||'' 21''  HR6_1, '' 5:'
||'15''   ||'' 22''  HR6_2, '' 5:30''   ||'' 23''  HR6_3, '' 5:45''    ||'' 24''  HR6_4 ,2 roword from dual union all',
'select  '' 6:00''    ||'' 25''  HR7_1 , '' 6:15''   ||'' 26''  HR7_2, '' 6:30''    ||'' 27''  HR7_3, '' 6:45''    ||'' 28''  HR7_4, '' 7:00''   ||'' 29''  HR8_1, '' 7:15''   ||'' 30''  HR8_2, '' 7:30''   ||'' 31''  HR8_3, '' 7:45''   ||'' 32''  HR8_4, '' 8:00''   ||'' 33''  HR9_1, '' 8:'
||'15''   ||'' 34''  HR9_2, '' 8:30''   ||'' 35''  HR9_3, '' 8:45''    ||'' 36''  HR9_4 ,3 roword from dual union all',
'select  '' 9:00''    ||'' 37'' HR10_1  ,'' 9:15''   ||'' 38'' HR10_2, '' 9:30''    ||'' 39'' HR10_3, '' 9:45''    ||'' 40'' HR10_4, ''10:00''   ||'' 41'' HR11_1, ''10:15''   ||'' 42'' HR11_2, ''10:30''   ||'' 43'' HR11_3, ''10:45''   ||'' 44'' HR11_4, ''11:00''   ||'' 45'' HR12_1, ''11:'
||'15''   ||'' 46'' HR12_2, ''11:30''   ||'' 47'' HR12_3, ''11:45''    ||'' 48'' HR12_4 ,4 roword from dual union all',
'select  ''12:00''    ||'' 49'' HR13_1 , ''12:15''   ||'' 50'' HR13_2, ''12:30''    ||'' 51'' HR13_3, ''12:45''    ||'' 52'' HR13_4, ''13:00''   ||'' 53'' HR14_1, ''13:15''   ||'' 54'' HR14_2, ''13:30''   ||'' 55'' HR14_3, ''13:45''   ||'' 56'' HR14_4, ''14:00''   ||'' 57'' HR15_1, ''14:'
||'15''   ||'' 58'' HR15_2, ''14:30''   ||'' 59'' HR15_3, ''14:45''    ||'' 60'' HR15_4 ,5 roword from dual union all',
'select  ''15:00''    ||'' 61'' HR16_1,  ''15:15''   ||'' 62'' HR16_2, ''15:30''    ||'' 63'' HR16_3, ''15:45''    ||'' 64'' HR16_4, ''16:00''   ||'' 65'' HR17_1, ''16:15''   ||'' 66'' HR17_2, ''16:30''   ||'' 67'' HR17_3, ''16:45''   ||'' 68'' HR17_4, ''17:00''   ||'' 69'' HR18_1, ''17:'
||'15''   ||'' 70'' HR18_2, ''17:30''   ||'' 71'' HR18_3, ''17:45''    ||'' 72'' HR18_4 ,6 roword from dual union all',
'select  ''18:00''    ||'' 73'' HR19_1,  ''18:15''   ||'' 74'' HR19_2, ''18:30''    ||'' 75'' HR19_3, ''18:45''    ||'' 76'' HR19_4, ''19:00''   ||'' 77'' HR20_1, ''19:15''   ||'' 78'' HR20_2, ''19:30''   ||'' 79'' HR20_3, ''19:45''   ||'' 80'' HR20_4, ''20:00''   ||'' 81'' HR21_1, ''20:'
||'15''   ||'' 82'' HR21_2, ''20:30''   ||'' 83'' HR21_3, ''20:45''    ||'' 84'' HR21_4 ,7 roword from dual union all',
'select  ''21:00''    ||'' 85'' HR22_1,  ''21:15''   ||'' 86'' HR22_2, ''21:30''    ||'' 87'' HR22_3, ''21:45''    ||'' 88'' HR22_4, ''22:00''   ||'' 89'' HR23_1, ''22:15''   ||'' 90'' HR23_2, ''22:30''   ||'' 91'' HR23_3, ''22:45''   ||'' 92'' HR23_4, ''23:00''   ||'' 93'' HR24_1, ''23:'
||'15''   ||'' 94'' HR24_2, ''23:30''   ||'' 95'' HR24_3 , ''23:45''   ||'' 96'' HR24_4 ,8 roword from dual',
') order by roword'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(47279275684673993)
,p_query_num_rows=>5
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'ROW_RANGES_WITH_LINKS'
,p_pagination_display_position=>'TOP_AND_BOTTOM_LEFT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(97092289818554431)
,p_query_column_id=>1
,p_column_alias=>'HR1_1'
,p_column_display_sequence=>10
,p_column_heading=>'Hr1 1'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(97092337633554432)
,p_query_column_id=>2
,p_column_alias=>'HR1_2'
,p_column_display_sequence=>20
,p_column_heading=>'Hr1 2'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(97092416676554433)
,p_query_column_id=>3
,p_column_alias=>'HR1_3'
,p_column_display_sequence=>30
,p_column_heading=>'Hr1 3'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(97092531907554434)
,p_query_column_id=>4
,p_column_alias=>'HR1_4'
,p_column_display_sequence=>40
,p_column_heading=>'Hr1 4'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(97092675085554435)
,p_query_column_id=>5
,p_column_alias=>'HR2_1'
,p_column_display_sequence=>50
,p_column_heading=>'Hr2 1'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(97092725426554436)
,p_query_column_id=>6
,p_column_alias=>'HR2_2'
,p_column_display_sequence=>60
,p_column_heading=>'Hr2 2'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(97092881264554437)
,p_query_column_id=>7
,p_column_alias=>'HR2_3'
,p_column_display_sequence=>70
,p_column_heading=>'Hr2 3'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(97092912393554438)
,p_query_column_id=>8
,p_column_alias=>'HR2_4'
,p_column_display_sequence=>80
,p_column_heading=>'Hr2 4'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(97093032477554439)
,p_query_column_id=>9
,p_column_alias=>'HR3_1'
,p_column_display_sequence=>90
,p_column_heading=>'Hr3 1'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(97093152114554440)
,p_query_column_id=>10
,p_column_alias=>'HR3_2'
,p_column_display_sequence=>100
,p_column_heading=>'Hr3 2'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(97093212153554441)
,p_query_column_id=>11
,p_column_alias=>'HR3_3'
,p_column_display_sequence=>110
,p_column_heading=>'Hr3 3'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(97093326089554442)
,p_query_column_id=>12
,p_column_alias=>'HR3_4'
,p_column_display_sequence=>120
,p_column_heading=>'Hr3 4'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(97093431662554443)
,p_query_column_id=>13
,p_column_alias=>'ROWORD'
,p_column_display_sequence=>130
,p_column_heading=>'Roword'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(97090586377554414)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(97089330867554402)
,p_button_name=>'ApplySlider'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(47320743044674027)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Applyslider'
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(97089474888554403)
,p_name=>'P24_PIVOT_START'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(97089330867554402)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select min(to_date_bd_hms)',
'----               --to_char( to_date_bd_hms,''yyyy/mm/dd hh24:mi'')||'' =>''||time_marker d, ',
'---                to_date_bd_hms r',
' from ',
' wc_sum_csv_v order by  to_date_bd_hms  asc',
''))
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>'Pivot Start and End (Double Click to set start and end)'
,p_display_as=>'PLUGIN_PRETIUS_APEX_RANGE_DATE'
,p_cSize=>30
,p_grid_column=>1
,p_field_template=>wwv_flow_api.id(47318974533674024)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'NDP'
,p_attribute_06=>'dateLimit'
,p_attribute_07=>'UL'
,p_attribute_08=>'7'
,p_attribute_10=>'hideOtherMonthDays:showDropdowns:showWeekNumbers:showISOWeekNumbers'
,p_attribute_15=>'both'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(97090404187554413)
,p_name=>'P24_HOUR_MIN_SLIDER'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(97089330867554402)
,p_prompt=>' '
,p_display_as=>'PLUGIN_HR.BILOG.MGORICKI.ADVANCED_SLIDER'
,p_field_template=>wwv_flow_api.id(47318190378674024)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'0'
,p_attribute_03=>'95'
,p_attribute_04=>'1'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_07=>'1'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(97091333975554422)
,p_name=>'P24_PIVOT_START_1'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(97089330867554402)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select min(to_date_bd_hms)',
'----               --to_char( to_date_bd_hms,''yyyy/mm/dd hh24:mi'')||'' =>''||time_marker d, ',
'---                to_date_bd_hms r',
' from ',
' wc_sum_csv_v order by  to_date_bd_hms  asc',
''))
,p_item_default_type=>'SQL_QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(97091467679554423)
,p_name=>'P24_PIVOT_START_2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(97089330867554402)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select min(to_date_bd_hms)',
'----               --to_char( to_date_bd_hms,''yyyy/mm/dd hh24:mi'')||'' =>''||time_marker d, ',
'---                to_date_bd_hms r',
' from ',
' wc_sum_csv_v order by  to_date_bd_hms  asc',
''))
,p_item_default_type=>'SQL_QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(97091549535554424)
,p_name=>'P24_HOUR_MIN_SLIDER_1'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(97089330867554402)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(97091649758554425)
,p_name=>'P24_HOUR_MIN_SLIDER_2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(97089330867554402)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(97090811930554417)
,p_name=>'Act_on_button_apply'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(97090586377554414)
,p_bind_type=>'live'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(97090996964554418)
,p_event_id=>wwv_flow_api.id(97090811930554417)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_MULEDEV.SERVER_REGION_REFRESH'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'-- SELECT rownum, column_value FROM TABLE(wc15_PARSE_DELMITED_TEXT ( ''A,B,   X,    Y, ABC, '',      '',''));',
'begin',
':P24_PIVOT_START_1      := substr(:P24_PIVOT_START ,  1 , 10 ); ',
':P24_PIVOT_START_2      := substr(:P24_PIVOT_START , 14 , 99 ); ',
':P24_HOUR_MIN_SLIDER_1  := substr(:P24_HOUR_MIN_SLIDER,1                                              , ( instr( :P24_HOUR_MIN_SLIDER ,1 , '':'' ) -1 ) );',
':P24_HOUR_MIN_SLIDER_2  := substr(:P24_HOUR_MIN_SLIDER, ( instr( :P24_HOUR_MIN_SLIDER ,1 , '':'' ) +1 ) , 99 );',
'end;',
''))
,p_attribute_02=>'divx'
,p_attribute_03=>'P24_PIVOT_START,P24_PIVOT_START_1,P24_PIVOT_START_2,P24_HOUR_MIN_SLIDER,P24_HOUR_MIN_SLIDER_1,P24_HOUR_MIN_SLIDER_2'
,p_attribute_04=>'0'
,p_attribute_05=>'REPLACE'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(97091749929554426)
,p_event_id=>wwv_flow_api.id(97090811930554417)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_api.component_end;
end;
/
