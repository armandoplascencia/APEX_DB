prompt --application/pages/page_00014
begin
--   Manifest
--     PAGE: 00014
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>111
,p_default_id_offset=>77418401682728923
,p_default_owner=>'MISO'
);
wwv_flow_api.create_page(
 p_id=>14
,p_user_interface_id=>wwv_flow_api.id(88335304271078742)
,p_name=>'demo'
,p_alias=>'DEMO'
,p_step_title=>'demo'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'MISO'
,p_last_upd_yyyymmddhh24miss=>'20220105233843'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(76994632135120427)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(88250109972078651)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<pre>',
'https://apex.world/ords/f?p=100:710:6836519763036::::P710_PLG_ID:COM.GM.CSV2TABLE',
'',
'declare',
'    l_cnt pls_integer :=0;',
'    l_table_name varchar2(30) := ''CSV2TABLE_DEMO_REMOTE_URL'';',
'    l_create_table_sql varchar2(32767) := ''create table ''|| l_table_name ||''',
'    ( URL varchar2(1000), filesize number)'';',
'',
'begin',
'    --create table',
'    select count(1) into l_cnt from all_objects where object_name = l_table_name and object_type=''TABLE'';',
'    if l_cnt > 0 then',
'        execute immediate ''drop table ''|| l_table_name;',
'    end if;',
'    select count(1) into l_cnt from all_objects where object_name = l_table_name and object_type=''TABLE'';',
'    if l_cnt = 0 then',
'        execute immediate l_create_table_sql;',
'    end if;',
'   ',
'exception',
' when others then',
'    dbms_output.put_line(''csv2table creation failed '');',
'    raise;',
'end;',
'/',
'',
'--insert into CSV2TABLE_DEMO_REMOTE_URL(url,filesize) values (''https://gopalmallya.com/csv/move_to_canada.csv'',10764);',
'--insert into CSV2TABLE_DEMO_REMOTE_URL(url,filesize) values (''https://gopalmallya.com/csv/job-automation-probability.csv'',108150); ',
'--insert into CSV2TABLE_DEMO_REMOTE_URL(url,filesize) values (''https://gopalmallya.com/csv/US-shooting-incidents.csv'',1334713);  ',
'insert into CSV2TABLE_DEMO_REMOTE_URL(url,filesize) values (''https://gopalmallya.com/csv/uber-rides-data1.csv'',58604196);  ',
'--insert into CSV2TABLE_DEMO_REMOTE_URL(url,filesize) values (''https://gopalmallya.com/csv/credit_line.csv.csv'',90470092);  ',
'commit;',
'</pre>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.component_end;
end;
/
