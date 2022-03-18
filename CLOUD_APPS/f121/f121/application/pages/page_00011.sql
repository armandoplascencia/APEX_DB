prompt --application/pages/page_00011
begin
--   Manifest
--     PAGE: 00011
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>121
,p_default_id_offset=>0
,p_default_owner=>'MISO'
);
wwv_flow_api.create_page(
 p_id=>11
,p_user_interface_id=>wwv_flow_api.id(95153343667962421)
,p_name=>'ticket_metrics'
,p_alias=>'TICKET-METRICS'
,p_step_title=>'ticket_metrics'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'MISO'
,p_last_upd_yyyymmddhh24miss=>'20220203023552'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(94346132797069009)
,p_plug_name=>'details'
,p_region_template_options=>'#DEFAULT#:js-useLocalStorage:is-expanded:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(95051951925962343)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<pre>',
'begin',
'    dbms_errlog.create_error_log(        dml_table_name => ''ZENDESK_TICKET_METRICS'' );',
'end;',
'',
'select table_name from user_Tables where table_name like ''%ZEN%'' and table_name like ''%$%'';',
'ERR$_ZENDESK_TICKET_METRICS',
'',
'',
'Ticket Metrics are represented as JSON objects with the following properties:',
'',
'Name 	                            Type 	Read-only 	Mandatory 	Description',
'================================================================================================================================================',
'agent_wait_time_in_minutes 	        object 	true 	    false 	    Number of minutes the agent spent waiting during calendar and business hours',
'assigned_at 	                    string 	true 	    false 	    When the ticket was assigned',
'assignee_stations 	                integer true 	    false 	    Number of assignees the ticket had',
'assignee_updated_at 	            string 	true 	    false 	    When the assignee last updated the ticket',
'created_at 	                        string 	true 	    false 	    When the record was created',
'first_resolution_time_in_minutes 	object 	true 	    false 	    Number of minutes to the first resolution time during calendar and business hours',
'full_resolution_time_in_minutes 	object 	true 	    false 	    Number of minutes to the full resolution during calendar and business hours',
'group_stations 	                    integer true 	    false 	    Number of groups the ticket passed through',
'id 	                                integer true 	    false 	    Automatically assigned when the client is created',
'initially_assigned_at 	            string 	true 	    false 	    When the ticket was initially assigned',
'latest_comment_added_at 	        string 	true 	    false 	    When the latest comment was added',
'on_hold_time_in_minutes 	        object 	true 	    false 	    Number of minutes on hold',
'reopens 	                        integer true 	    false 	    Total number of times the ticket was reopened',
'replies 	                        integer true 	    false 	    The number of public replies added to a ticket by an agent',
'reply_time_in_minutes 	            object 	true 	    false 	    Number of minutes to the first reply during calendar and business hours',
'requester_updated_at 	            string 	true 	    false 	    When the requester last updated the ticket',
'requester_wait_time_in_minutes 	    object 	true 	    false 	    Number of minutes the requester spent waiting during calendar and business hours',
'solved_at 	                        string 	true 	    false 	    When the ticket was solved',
'status_updated_at 	                string 	true 	    false 	    When the status of the ticket was last updated',
'ticket_id 	                        integer true 	    false 	    Id of the associated ticket',
'updated_at 	                        string 	true 	    false 	    When the record was last updated',
'url 	                           string 	true 	    false 	    The API url of the ticket metric',
'</pre>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(94346223387069010)
,p_name=>'ERR$_ZENDESK_TICKET_METRICS'
,p_template=>wwv_flow_api.id(95051951925962343)
,p_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:js-useLocalStorage:is-expanded:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>'select * from   apex_collections where collection_name = ''ERR_ZENDESK_TICKET_METRICS'''
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(95087496814962365)
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
 p_id=>wwv_flow_api.id(95737952963907126)
,p_query_column_id=>1
,p_column_alias=>'COLLECTION_NAME'
,p_column_display_sequence=>10
,p_column_heading=>'Collection Name'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(95738097596907127)
,p_query_column_id=>2
,p_column_alias=>'SEQ_ID'
,p_column_display_sequence=>20
,p_column_heading=>'Seq Id'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(95738108170907128)
,p_query_column_id=>3
,p_column_alias=>'C001'
,p_column_display_sequence=>30
,p_column_heading=>'C001'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(95738299634907129)
,p_query_column_id=>4
,p_column_alias=>'C002'
,p_column_display_sequence=>40
,p_column_heading=>'C002'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(95738317144907130)
,p_query_column_id=>5
,p_column_alias=>'C003'
,p_column_display_sequence=>50
,p_column_heading=>'C003'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(95738406956907131)
,p_query_column_id=>6
,p_column_alias=>'C004'
,p_column_display_sequence=>60
,p_column_heading=>'C004'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(95738567583907132)
,p_query_column_id=>7
,p_column_alias=>'C005'
,p_column_display_sequence=>70
,p_column_heading=>'C005'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(95738688764907133)
,p_query_column_id=>8
,p_column_alias=>'C006'
,p_column_display_sequence=>80
,p_column_heading=>'C006'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(95738741344907134)
,p_query_column_id=>9
,p_column_alias=>'C007'
,p_column_display_sequence=>90
,p_column_heading=>'C007'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(95738818616907135)
,p_query_column_id=>10
,p_column_alias=>'C008'
,p_column_display_sequence=>100
,p_column_heading=>'C008'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(95738953311907136)
,p_query_column_id=>11
,p_column_alias=>'C009'
,p_column_display_sequence=>110
,p_column_heading=>'C009'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(95739002763907137)
,p_query_column_id=>12
,p_column_alias=>'C010'
,p_column_display_sequence=>120
,p_column_heading=>'C010'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(95739143827907138)
,p_query_column_id=>13
,p_column_alias=>'C011'
,p_column_display_sequence=>130
,p_column_heading=>'C011'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(95739242921907139)
,p_query_column_id=>14
,p_column_alias=>'C012'
,p_column_display_sequence=>140
,p_column_heading=>'C012'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(95739345431907140)
,p_query_column_id=>15
,p_column_alias=>'C013'
,p_column_display_sequence=>150
,p_column_heading=>'C013'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(95739476216907141)
,p_query_column_id=>16
,p_column_alias=>'C014'
,p_column_display_sequence=>160
,p_column_heading=>'C014'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(95739590438907142)
,p_query_column_id=>17
,p_column_alias=>'C015'
,p_column_display_sequence=>170
,p_column_heading=>'C015'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(95739685866907143)
,p_query_column_id=>18
,p_column_alias=>'C016'
,p_column_display_sequence=>180
,p_column_heading=>'C016'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(95739727178907144)
,p_query_column_id=>19
,p_column_alias=>'C017'
,p_column_display_sequence=>190
,p_column_heading=>'C017'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(95739881202907145)
,p_query_column_id=>20
,p_column_alias=>'C018'
,p_column_display_sequence=>200
,p_column_heading=>'C018'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(95739988019907146)
,p_query_column_id=>21
,p_column_alias=>'C019'
,p_column_display_sequence=>210
,p_column_heading=>'C019'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(95740039306907147)
,p_query_column_id=>22
,p_column_alias=>'C020'
,p_column_display_sequence=>220
,p_column_heading=>'C020'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(95740174544907148)
,p_query_column_id=>23
,p_column_alias=>'C021'
,p_column_display_sequence=>230
,p_column_heading=>'C021'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(95740206380907149)
,p_query_column_id=>24
,p_column_alias=>'C022'
,p_column_display_sequence=>240
,p_column_heading=>'C022'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(95740338026907150)
,p_query_column_id=>25
,p_column_alias=>'C023'
,p_column_display_sequence=>250
,p_column_heading=>'C023'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(95753023008977301)
,p_query_column_id=>26
,p_column_alias=>'C024'
,p_column_display_sequence=>260
,p_column_heading=>'C024'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(95753161202977302)
,p_query_column_id=>27
,p_column_alias=>'C025'
,p_column_display_sequence=>270
,p_column_heading=>'C025'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(95753291856977303)
,p_query_column_id=>28
,p_column_alias=>'C026'
,p_column_display_sequence=>280
,p_column_heading=>'C026'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(95753318253977304)
,p_query_column_id=>29
,p_column_alias=>'C027'
,p_column_display_sequence=>290
,p_column_heading=>'C027'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(95753497008977305)
,p_query_column_id=>30
,p_column_alias=>'C028'
,p_column_display_sequence=>300
,p_column_heading=>'C028'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(95753578373977306)
,p_query_column_id=>31
,p_column_alias=>'C029'
,p_column_display_sequence=>310
,p_column_heading=>'C029'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(95753684490977307)
,p_query_column_id=>32
,p_column_alias=>'C030'
,p_column_display_sequence=>320
,p_column_heading=>'C030'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(95753734169977308)
,p_query_column_id=>33
,p_column_alias=>'C031'
,p_column_display_sequence=>330
,p_column_heading=>'C031'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(95753899117977309)
,p_query_column_id=>34
,p_column_alias=>'C032'
,p_column_display_sequence=>340
,p_column_heading=>'C032'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(95753943159977310)
,p_query_column_id=>35
,p_column_alias=>'C033'
,p_column_display_sequence=>350
,p_column_heading=>'C033'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(95754001685977311)
,p_query_column_id=>36
,p_column_alias=>'C034'
,p_column_display_sequence=>360
,p_column_heading=>'C034'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(95754105855977312)
,p_query_column_id=>37
,p_column_alias=>'C035'
,p_column_display_sequence=>370
,p_column_heading=>'C035'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(95754206034977313)
,p_query_column_id=>38
,p_column_alias=>'C036'
,p_column_display_sequence=>380
,p_column_heading=>'C036'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(95754318308977314)
,p_query_column_id=>39
,p_column_alias=>'C037'
,p_column_display_sequence=>390
,p_column_heading=>'C037'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(95754452744977315)
,p_query_column_id=>40
,p_column_alias=>'C038'
,p_column_display_sequence=>400
,p_column_heading=>'C038'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(95754567537977316)
,p_query_column_id=>41
,p_column_alias=>'C039'
,p_column_display_sequence=>410
,p_column_heading=>'C039'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(95754672104977317)
,p_query_column_id=>42
,p_column_alias=>'C040'
,p_column_display_sequence=>420
,p_column_heading=>'C040'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(95754778908977318)
,p_query_column_id=>43
,p_column_alias=>'C041'
,p_column_display_sequence=>430
,p_column_heading=>'C041'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(95754883029977319)
,p_query_column_id=>44
,p_column_alias=>'C042'
,p_column_display_sequence=>440
,p_column_heading=>'C042'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(95754955232977320)
,p_query_column_id=>45
,p_column_alias=>'C043'
,p_column_display_sequence=>450
,p_column_heading=>'C043'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(95755064376977321)
,p_query_column_id=>46
,p_column_alias=>'C044'
,p_column_display_sequence=>460
,p_column_heading=>'C044'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(95755199851977322)
,p_query_column_id=>47
,p_column_alias=>'C045'
,p_column_display_sequence=>470
,p_column_heading=>'C045'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(95755213244977323)
,p_query_column_id=>48
,p_column_alias=>'C046'
,p_column_display_sequence=>480
,p_column_heading=>'C046'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(95755364680977324)
,p_query_column_id=>49
,p_column_alias=>'C047'
,p_column_display_sequence=>490
,p_column_heading=>'C047'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(95755487161977325)
,p_query_column_id=>50
,p_column_alias=>'C048'
,p_column_display_sequence=>500
,p_column_heading=>'C048'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(95755533598977326)
,p_query_column_id=>51
,p_column_alias=>'C049'
,p_column_display_sequence=>510
,p_column_heading=>'C049'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(95755667922977327)
,p_query_column_id=>52
,p_column_alias=>'C050'
,p_column_display_sequence=>520
,p_column_heading=>'C050'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(95755741936977328)
,p_query_column_id=>53
,p_column_alias=>'CLOB001'
,p_column_display_sequence=>530
,p_column_heading=>'Clob001'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(95755876978977329)
,p_query_column_id=>54
,p_column_alias=>'BLOB001'
,p_column_display_sequence=>540
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(95755957304977330)
,p_query_column_id=>55
,p_column_alias=>'XMLTYPE001'
,p_column_display_sequence=>550
,p_column_heading=>'Xmltype001'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(95756077473977331)
,p_query_column_id=>56
,p_column_alias=>'N001'
,p_column_display_sequence=>560
,p_column_heading=>'N001'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(95756199308977332)
,p_query_column_id=>57
,p_column_alias=>'N002'
,p_column_display_sequence=>570
,p_column_heading=>'N002'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(95756296745977333)
,p_query_column_id=>58
,p_column_alias=>'N003'
,p_column_display_sequence=>580
,p_column_heading=>'N003'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(95756323793977334)
,p_query_column_id=>59
,p_column_alias=>'N004'
,p_column_display_sequence=>590
,p_column_heading=>'N004'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(95756461786977335)
,p_query_column_id=>60
,p_column_alias=>'N005'
,p_column_display_sequence=>600
,p_column_heading=>'N005'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(95756522175977336)
,p_query_column_id=>61
,p_column_alias=>'D001'
,p_column_display_sequence=>610
,p_column_heading=>'D001'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(95756641801977337)
,p_query_column_id=>62
,p_column_alias=>'D002'
,p_column_display_sequence=>620
,p_column_heading=>'D002'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(95756733899977338)
,p_query_column_id=>63
,p_column_alias=>'D003'
,p_column_display_sequence=>630
,p_column_heading=>'D003'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(95756837368977339)
,p_query_column_id=>64
,p_column_alias=>'D004'
,p_column_display_sequence=>640
,p_column_heading=>'D004'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(95756962130977340)
,p_query_column_id=>65
,p_column_alias=>'D005'
,p_column_display_sequence=>650
,p_column_heading=>'D005'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(95757072381977341)
,p_query_column_id=>66
,p_column_alias=>'MD5_ORIGINAL'
,p_column_display_sequence=>660
,p_column_heading=>'Md5 Original'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(94349716399069045)
,p_plug_name=>'ZENDESK_TICKET_METRICS'
,p_region_template_options=>'#DEFAULT#:js-useLocalStorage:is-expanded:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(95051951925962343)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_query_type=>'TABLE'
,p_query_table=>'ZENDESK_TICKET_METRICS'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'ZENDESK_TICKET_METRICS'
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
 p_id=>wwv_flow_api.id(94349880886069046)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF:RTF:EMAIL'
,p_owner=>'MISO'
,p_internal_uid=>94349880886069046
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(94349922984069047)
,p_db_column_name=>'ID_1'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Id 1'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(94350064589069048)
,p_db_column_name=>'ID'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(94350187054069049)
,p_db_column_name=>'URL'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Url'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(94350230628069050)
,p_db_column_name=>'REOPENS'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Reopens'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95735494767907101)
,p_db_column_name=>'REPLIES'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Replies'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95735575441907102)
,p_db_column_name=>'SOLVED_AT'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Solved At'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95735671566907103)
,p_db_column_name=>'TICKET_ID'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Ticket Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95735771580907104)
,p_db_column_name=>'CREATED_AT'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Created At'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95735823192907105)
,p_db_column_name=>'UPDATED_AT'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Updated At'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95735975106907106)
,p_db_column_name=>'ASSIGNED_AT'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Assigned At'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95736063199907107)
,p_db_column_name=>'GROUP_STATIONS'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Group Stations'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95736158540907108)
,p_db_column_name=>'ASSIGNEE_STATIONS'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Assignee Stations'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95736255077907109)
,p_db_column_name=>'STATUS_UPDATED_AT'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Status Updated At'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95736327591907110)
,p_db_column_name=>'ASSIGNEE_UPDATED_AT'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Assignee Updated At'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95736480951907111)
,p_db_column_name=>'REQUESTER_UPDATED_AT'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Requester Updated At'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95736587430907112)
,p_db_column_name=>'INITIALLY_ASSIGNED_AT'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Initially Assigned At'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95736666598907113)
,p_db_column_name=>'BUSINESS'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Business'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95736711697907114)
,p_db_column_name=>'CALENDAR'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Calendar'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95736857617907115)
,p_db_column_name=>'LATEST_COMMENT_ADDED_AT'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Latest Comment Added At'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95736968614907116)
,p_db_column_name=>'BUSINESS2'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Business2'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95737077665907117)
,p_db_column_name=>'CALENDAR2'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Calendar2'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95737123973907118)
,p_db_column_name=>'BUSINESS3'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'Business3'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95737253507907119)
,p_db_column_name=>'CALENDAR3'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'Calendar3'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.component_end;
end;
/
begin
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>121
,p_default_id_offset=>0
,p_default_owner=>'MISO'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95737336353907120)
,p_db_column_name=>'BUSINESS4'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>'Business4'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95737424669907121)
,p_db_column_name=>'CALENDAR4'
,p_display_order=>250
,p_column_identifier=>'Y'
,p_column_label=>'Calendar4'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95737548092907122)
,p_db_column_name=>'BUSINESS5'
,p_display_order=>260
,p_column_identifier=>'Z'
,p_column_label=>'Business5'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95737608556907123)
,p_db_column_name=>'CALENDAR5'
,p_display_order=>270
,p_column_identifier=>'AA'
,p_column_label=>'Calendar5'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95737720109907124)
,p_db_column_name=>'BUSINESS6'
,p_display_order=>280
,p_column_identifier=>'AB'
,p_column_label=>'Business6'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95737815618907125)
,p_db_column_name=>'CALENDAR6'
,p_display_order=>290
,p_column_identifier=>'AC'
,p_column_label=>'Calendar6'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(95751592947908973)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_type=>'CHART'
,p_report_alias=>'957516'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ID_1:ID:URL:REOPENS:REPLIES:SOLVED_AT:TICKET_ID:CREATED_AT:UPDATED_AT:ASSIGNED_AT:GROUP_STATIONS:ASSIGNEE_STATIONS:STATUS_UPDATED_AT:ASSIGNEE_UPDATED_AT:REQUESTER_UPDATED_AT:INITIALLY_ASSIGNED_AT:BUSINESS:CALENDAR:LATEST_COMMENT_ADDED_AT:BUSINESS2:CA'
||'LENDAR2:BUSINESS3:CALENDAR3:BUSINESS4:CALENDAR4:BUSINESS5:CALENDAR5:BUSINESS6:CALENDAR6'
,p_chart_type=>'pie'
,p_chart_label_column=>'ID'
,p_chart_aggregate=>'COUNT'
,p_chart_sorting=>'DEFAULT'
,p_chart_orientation=>'vertical'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(95703529472771727)
,p_plug_name=>'Button Bar'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--noUI'
,p_plug_template=>wwv_flow_api.id(95033754678962332)
,p_plug_display_sequence=>60
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P11_FILE'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(95705555720771730)
,p_plug_name=>'Data Source'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(95063787534962349)
,p_plug_display_sequence=>80
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(95705919398771731)
,p_plug_name=>'Upload a File'
,p_parent_plug_id=>wwv_flow_api.id(95705555720771730)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(95032749270962332)
,p_plug_display_sequence=>30
,p_plug_display_point=>'BODY'
,p_plug_display_condition_type=>'ITEM_IS_NULL'
,p_plug_display_when_condition=>'P11_FILE'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(95708097720771734)
,p_plug_name=>'Loaded File'
,p_parent_plug_id=>wwv_flow_api.id(95705555720771730)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(95032749270962332)
,p_plug_display_sequence=>40
,p_plug_display_point=>'BODY'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P11_FILE'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(95709674416771738)
,p_name=>'Preview'
,p_template=>wwv_flow_api.id(95063787534962349)
,p_display_sequence=>90
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--staticRowColors:t-Report--rowHighlight:t-Report--horizontalBorders:t-Report--hideNoPagination'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select p.line_number,',
'       p.col001, p.col002, p.col003, p.col004, p.col005, p.col006, p.col007, p.col008, p.col009, p.col010',
'       -- add more columns (col011 to col300) here.',
'  from apex_application_temp_files f, ',
'       table( apex_data_parser.parse(',
'                  p_content          => f.blob_content,',
'                  p_file_name        => f.filename,',
'                  p_add_headers_row  => ''Y'',',
'                  p_file_charset      => ''AL32UTF8'',',
'                  p_max_rows         => 10 ) ) p',
' where f.name = :P11_FILE'))
,p_display_when_condition=>'P11_FILE'
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(95087496814962365)
,p_query_headings_type=>'NO_HEADINGS'
,p_query_num_rows=>50
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_prn_output=>'N'
,p_prn_format=>'PDF'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(95709973762771748)
,p_query_column_id=>1
,p_column_alias=>'LINE_NUMBER'
,p_column_display_sequence=>1
,p_column_heading=>'Line Number'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(95710350104771749)
,p_query_column_id=>2
,p_column_alias=>'COL001'
,p_column_display_sequence=>2
,p_column_heading=>'Col001'
,p_heading_alignment=>'LEFT'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(95710793416771749)
,p_query_column_id=>3
,p_column_alias=>'COL002'
,p_column_display_sequence=>3
,p_column_heading=>'Col002'
,p_heading_alignment=>'LEFT'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(95711191688771750)
,p_query_column_id=>4
,p_column_alias=>'COL003'
,p_column_display_sequence=>4
,p_column_heading=>'Col003'
,p_heading_alignment=>'LEFT'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(95711591608771750)
,p_query_column_id=>5
,p_column_alias=>'COL004'
,p_column_display_sequence=>5
,p_column_heading=>'Col004'
,p_heading_alignment=>'LEFT'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(95711913922771750)
,p_query_column_id=>6
,p_column_alias=>'COL005'
,p_column_display_sequence=>6
,p_column_heading=>'Col005'
,p_heading_alignment=>'LEFT'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(95712363001771750)
,p_query_column_id=>7
,p_column_alias=>'COL006'
,p_column_display_sequence=>7
,p_column_heading=>'Col006'
,p_heading_alignment=>'LEFT'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(95712793489771751)
,p_query_column_id=>8
,p_column_alias=>'COL007'
,p_column_display_sequence=>8
,p_column_heading=>'Col007'
,p_heading_alignment=>'LEFT'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(95713141816771751)
,p_query_column_id=>9
,p_column_alias=>'COL008'
,p_column_display_sequence=>9
,p_column_heading=>'Col008'
,p_heading_alignment=>'LEFT'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(95713572416771751)
,p_query_column_id=>10
,p_column_alias=>'COL009'
,p_column_display_sequence=>10
,p_column_heading=>'Col009'
,p_heading_alignment=>'LEFT'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(95713978216771751)
,p_query_column_id=>11
,p_column_alias=>'COL010'
,p_column_display_sequence=>11
,p_column_heading=>'Col010'
,p_heading_alignment=>'LEFT'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(95757103287977342)
,p_plug_name=>'How created ? '
,p_region_template_options=>'#DEFAULT#:js-useLocalStorage:is-expanded:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(95051951925962343)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<pre>',
'rmand@LAPTOP-K0S2D5LN MINGW64 /c/sam',
'$ cat   zendesk_ticket_metrics.sh',
'#!/bin/sh',
'#! dependencies',
'#! $ cat template.ksh',
'#! (curl https://misorobotics.zendesk.com/api/v2/ticket_metrics.json?page=~PAGENUM~ -v -u sscudder@misorobotics.com/token:3OdyewqLJBXTa2wADSdBHHLsO8t6nvtyFdD3m38m -H "Content-Type: application/json" ) > json_tmp.rename_~PAGENUM~',
'#! $ cat keep_template.ksh',
'#! (curl https://misorobotics.zendesk.com/api/v2/ticket_metrics.json?page=~PAGENUM~ -v -u sscudder@misorobotics.com/token:3OdyewqLJBXTa2wADSdBHHLsO8t6nvtyFdD3m38m -H "Content-Type: application/json" ) > json_tmp.rename_~PAGENUM~',
'',
'cd "/c/sam"',
'',
'function sed_fnx {',
'umask a=rwx o=rwx g=rwx',
' timestamp=$(date +%y_%m_%d__%H_%M_%S)',
' tempfilesed=sed_file${$}.${timestamp}',
' sourcefileinsed=${3}',
'',
' if [[ -f ${tempfilesed} ]]',
'  then',
'    chmod 777 ${tempfilesed}',
'    rm -f ${tempfilesed}',
'    touch ${tempfilesed}',
'    chmod 777 ${tempfilesed}',
'  else',
'    touch ${tempfilesed}',
'    chmod 777 ${tempfilesed}',
' fi',
'',
' echo "sed_fnx received as param 1=Source to replace =>"${1}',
' echo "sed_fnx received as param 2=new string to use =>"${2}',
' echo "sed_fnx received as param 3=in file           =>"${sourcefileinsed}',
' echo "sed_fnx received as param 4=temp file that use=>"${tempfilesed}',
'',
' sed ''s~''"$1"''~''"$2"''~g'' ${sourcefileinsed} >  ${tempfilesed}',
' mv ${sourcefileinsed} ${sourcefileinsed}${timestamp}',
' #!chmod 444 ${tempfilesed}',
' mv ${tempfilesed} ${sourcefileinsed}',
' if [[ "${?}" = "0" ]]',
' then',
'  echo "change successful "',
'  chmod 777  ${sourcefileinsed}${timestamp}',
'  rm -f ${sourcefileinsed}${timestamp}',
' else',
'  echo "change failed, rolling back"',
'  mv ${sourcefileinsed}${timestamp} ${sourcefileinsed}',
' fi',
'}',
'',
'export DBQT=''"''',
'',
'if [ -f error_on_purpose.output ]',
'then',
'        rm  error_on_purpose.output',
'      echo "removing old file error_on_purpose.output"',
'fi',
'',
' (curl https://misorobotics.zendesk.com/api/v2/ticket_metrics.json?page=99999999999999 -v -u sscudder@misorobotics.com/token:3OdyewqLJBXTa2wADSdBHHLsO8t6nvtyFdD3m38m -H "Content-Type: application/json" ) > error_on_purpose.output',
' cat  error_on_purpose.output',
'  sed_fnx "${DBQT}" "_"  error_on_purpose.output',
' cat  error_on_purpose.output',
'  export new_error_on_purpose=` cat  error_on_purpose.output | sed ''s\{\_\g'' | sed ''s\}\_\\g'' `',
'  typeset -i rows_to_iterate=`echo ${new_error_on_purpose} | cut -d'':'' -f6 | sed ''s~_~~g''`',
'  typeset -i run_x_times=`expr ${rows_to_iterate} / 100 `',
'  typeset -i modulus_run_x_times=`expr ${rows_to_iterate} % 100 `',
'',
'  if [[ ${modulus_run_x_times} > 0 ]]',
'  then',
'   run_x_times=(${run_x_times}+1)',
'  fi',
'',
'  if [[ -f run_all_ticket_metrics.ksh ]]',
'   then',
'         rm  run_all_ticket_metrics.ksh',
'  fi',
'      touch   run_all_ticket_metrics.ksh',
'',
'  for i in $(seq  ${run_x_times})',
'  do',
'    if [ -f json_tmp.rename ]',
'    then',
'         rm json_tmp.rename',
'    fi',
'   echo "looping thu i"${i}',
'   export pass_page=${i}',
'   #!  echo "(curl https://misorobotics.zendesk.com/api/v2/ticket_metrics.json?page=${i} -v -u sscudder@misorobotics.com/token:3OdyewqLJBXTa2wADSdBHHLsO8t6nvtyFdD3m38m -H ${DBQT}Content-Type: application/json${DBQT} ) > json_tmp.rename_${i} " > run_a'
||'ll_ticket_metrics.ksh',
'   cat template.ksh | sed ''s^~PAGENUM~^''"$pass_page"''^g'' >>  run_all_ticket_metrics.ksh',
' done',
'   chmod 777 run_all_ticket_metrics.ksh',
'   . run_all_ticket_metrics.ksh',
'',
' for ij in `ls -1 | grep  json_tmp.rename_`',
' do',
'  mv ${ij} ${ij}.json',
' done',
'',
' for ij in `ls -1 | grep  json_tmp.rename_`',
' do',
' cat ${ij} >>  master.json',
' echo "send file"${ij}',
' done',
'',
'#! export get_final=`curl https://misorobotics.zendesk.com/api/v2/ticket_metrics.json?page=99999999999999 -v -u sscudder@misorobotics.com/token:3OdyewqLJBXTa2wADSdBHHLsO8t6nvtyFdD3m38m -H "Content-Type: application/json" | grep \',
'#! ''"next_page":null,"previou',
'',
'======================',
'$ cat run_all_ticket_metrics.ksh',
'(curl https://misorobotics.zendesk.com/api/v2/ticket_metrics.json?page=1 -v -u sscudder@misorobotics.com/token:3OdyewqLJBXTa2wADSdBHHLsO8t6nvtyFdD3m38m -H "Content-Type: application/json" ) > json_tmp.rename_1',
'(curl https://misorobotics.zendesk.com/api/v2/ticket_metrics.json?page=2 -v -u sscudder@misorobotics.com/token:3OdyewqLJBXTa2wADSdBHHLsO8t6nvtyFdD3m38m -H "Content-Type: application/json" ) > json_tmp.rename_2',
'(curl https://misorobotics.zendesk.com/api/v2/ticket_metrics.json?page=3 -v -u sscudder@misorobotics.com/token:3OdyewqLJBXTa2wADSdBHHLsO8t6nvtyFdD3m38m -H "Content-Type: application/json" ) > json_tmp.rename_3',
'(curl https://misorobotics.zendesk.com/api/v2/ticket_metrics.json?page=4 -v -u sscudder@misorobotics.com/token:3OdyewqLJBXTa2wADSdBHHLsO8t6nvtyFdD3m38m -H "Content-Type: application/json" ) > json_tmp.rename_4',
'(curl https://misorobotics.zendesk.com/api/v2/ticket_metrics.json?page=5 -v -u sscudder@misorobotics.com/token:3OdyewqLJBXTa2wADSdBHHLsO8t6nvtyFdD3m38m -H "Content-Type: application/json" ) > json_tmp.rename_5',
'(curl https://misorobotics.zendesk.com/api/v2/ticket_metrics.json?page=6 -v -u sscudder@misorobotics.com/token:3OdyewqLJBXTa2wADSdBHHLsO8t6nvtyFdD3m38m -H "Content-Type: application/json" ) > json_tmp.rename_6',
'(curl https://misorobotics.zendesk.com/api/v2/ticket_metrics.json?page=7 -v -u sscudder@misorobotics.com/token:3OdyewqLJBXTa2wADSdBHHLsO8t6nvtyFdD3m38m -H "Content-Type: application/json" ) > json_tmp.rename_7',
'(curl https://misorobotics.zendesk.com/api/v2/ticket_metrics.json?page=8 -v -u sscudder@misorobotics.com/token:3OdyewqLJBXTa2wADSdBHHLsO8t6nvtyFdD3m38m -H "Content-Type: application/json" ) > json_tmp.rename_8',
'(curl https://misorobotics.zendesk.com/api/v2/ticket_metrics.json?page=9 -v -u sscudder@misorobotics.com/token:3OdyewqLJBXTa2wADSdBHHLsO8t6nvtyFdD3m38m -H "Content-Type: application/json" ) > json_tmp.rename_9',
'(curl https://misorobotics.zendesk.com/api/v2/ticket_metrics.json?page=10 -v -u sscudder@misorobotics.com/token:3OdyewqLJBXTa2wADSdBHHLsO8t6nvtyFdD3m38m -H "Content-Type: application/json" ) > json_tmp.rename_10',
'(curl https://misorobotics.zendesk.com/api/v2/ticket_metrics.json?page=11 -v -u sscudder@misorobotics.com/token:3OdyewqLJBXTa2wADSdBHHLsO8t6nvtyFdD3m38m -H "Content-Type: application/json" ) > json_tmp.rename_11',
'(curl https://misorobotics.zendesk.com/api/v2/ticket_metrics.json?page=12 -v -u sscudder@misorobotics.com/token:3OdyewqLJBXTa2wADSdBHHLsO8t6nvtyFdD3m38m -H "Content-Type: application/json" ) > json_tmp.rename_12',
'(curl https://misorobotics.zendesk.com/api/v2/ticket_metrics.json?page=13 -v -u sscudder@misorobotics.com/token:3OdyewqLJBXTa2wADSdBHHLsO8t6nvtyFdD3m38m -H "Content-Type: application/json" ) > json_tmp.rename_13',
'(curl https://misorobotics.zendesk.com/api/v2/ticket_metrics.json?page=14 -v -u sscudder@misorobotics.com/token:3OdyewqLJBXTa2wADSdBHHLsO8t6nvtyFdD3m38m -H "Content-Type: application/json" ) > json_tmp.rename_14',
'(curl https://misorobotics.zendesk.com/api/v2/ticket_metrics.json?page=15 -v -u sscudder@misorobotics.com/token:3OdyewqLJBXTa2wADSdBHHLsO8t6nvtyFdD3m38m -H "Content-Type: application/json" ) > json_tmp.rename_15',
'(curl https://misorobotics.zendesk.com/api/v2/ticket_metrics.json?page=16 -v -u sscudder@misorobotics.com/token:3OdyewqLJBXTa2wADSdBHHLsO8t6nvtyFdD3m38m -H "Content-Type: application/json" ) > json_tmp.rename_16',
'(curl https://misorobotics.zendesk.com/api/v2/ticket_metrics.json?page=17 -v -u sscudder@misorobotics.com/token:3OdyewqLJBXTa2wADSdBHHLsO8t6nvtyFdD3m38m -H "Content-Type: application/json" ) > json_tmp.rename_17',
'(curl https://misorobotics.zendesk.com/api/v2/ticket_metrics.json?page=18 -v -u sscudder@misorobotics.com/token:3OdyewqLJBXTa2wADSdBHHLsO8t6nvtyFdD3m38m -H "Content-Type: application/json" ) > json_tmp.rename_18',
'(curl https://misorobotics.zendesk.com/api/v2/ticket_metrics.json?page=19 -v -u sscudder@misorobotics.com/token:3OdyewqLJBXTa2wADSdBHHLsO8t6nvtyFdD3m38m -H "Content-Type: application/json" ) > json_tmp.rename_19',
'(curl https://misorobotics.zendesk.com/api/v2/ticket_metrics.json?page=20 -v -u sscudder@misorobotics.com/token:3OdyewqLJBXTa2wADSdBHHLsO8t6nvtyFdD3m38m -H "Content-Type: application/json" ) > json_tmp.rename_20',
'(curl https://misorobotics.zendesk.com/api/v2/ticket_metrics.json?page=21 -v -u sscudder@misorobotics.com/token:3OdyewqLJBXTa2wADSdBHHLsO8t6nvtyFdD3m38m -H "Content-Type: application/json" ) > json_tmp.rename_21',
'(curl https://misorobotics.zendesk.com/api/v2/ticket_metrics.json?page=22 -v -u sscudder@misorobotics.com/token:3OdyewqLJBXTa2wADSdBHHLsO8t6nvtyFdD3m38m -H "Content-Type: application/json" ) > json_tmp.rename_22',
'(curl https://misorobotics.zendesk.com/api/v2/ticket_metrics.json?page=23 -v -u sscudder@misorobotics.com/token:3OdyewqLJBXTa2wADSdBHHLsO8t6nvtyFdD3m38m -H "Content-Type: application/json" ) > json_tmp.rename_23',
'(curl https://misorobotics.zendesk.com/api/v2/ticket_metrics.json?page=24 -v -u sscudder@misorobotics.com/token:3OdyewqLJBXTa2wADSdBHHLsO8t6nvtyFdD3m38m -H "Content-Type: application/json" ) > json_tmp.rename_24',
'(curl https://misorobotics.zendesk.com/api/v2/ticket_metrics.json?page=25 -v -u sscudder@misorobotics.com/token:3OdyewqLJBXTa2wADSdBHHLsO8t6nvtyFdD3m38m -H "Content-Type: application/json" ) > json_tmp.rename_25',
'(curl https://misorobotics.zendesk.com/api/v2/ticket_metrics.json?page=26 -v -u sscudder@misorobotics.com/token:3OdyewqLJBXTa2wADSdBHHLsO8t6nvtyFdD3m38m -H "Content-Type: application/json" ) > json_tmp.rename_26',
'(curl https://misorobotics.zendesk.com/api/v2/ticket_metrics.json?page=27 -v -u sscudder@misorobotics.com/token:3OdyewqLJBXTa2wADSdBHHLsO8t6nvtyFdD3m38m -H "Content-Type: application/json" ) > json_tmp.rename_27',
'(curl https://misorobotics.zendesk.com/api/v2/ticket_metrics.json?page=28 -v -u sscudder@misorobotics.com/token:3OdyewqLJBXTa2wADSdBHHLsO8t6nvtyFdD3m38m -H "Content-Type: application/json" ) > json_tmp.rename_28',
'(curl https://misorobotics.zendesk.com/api/v2/ticket_metrics.json?page=29 -v -u sscudder@misorobotics.com/token:3OdyewqLJBXTa2wADSdBHHLsO8t6nvtyFdD3m38m -H "Content-Type: application/json" ) > json_tmp.rename_29',
'(curl https://misorobotics.zendesk.com/api/v2/ticket_metrics.json?page=30 -v -u sscudder@misorobotics.com/token:3OdyewqLJBXTa2wADSdBHHLsO8t6nvtyFdD3m38m -H "Content-Type: application/json" ) > json_tmp.rename_30',
'(curl https://misorobotics.zendesk.com/api/v2/ticket_metrics.json?page=31 -v -u sscudder@misorobotics.com/token:3OdyewqLJBXTa2wADSdBHHLsO8t6nvtyFdD3m38m -H "Content-Type: application/json" ) > json_tmp.rename_31',
'(curl https://misorobotics.zendesk.com/api/v2/ticket_metrics.json?page=32 -v -u sscudder@misorobotics.com/token:3OdyewqLJBXTa2wADSdBHHLsO8t6nvtyFdD3m38m -H "Content-Type: application/json" ) > json_tmp.rename_32',
'(curl https://misorobotics.zendesk.com/api/v2/ticket_metrics.json?page=33 -v -u sscudder@misorobotics.com/token:3OdyewqLJBXTa2wADSdBHHLsO8t6nvtyFdD3m38m -H "Content-Type: application/json" ) > json_tmp.rename_33',
'(curl https://misorobotics.zendesk.com/api/v2/ticket_metrics.json?page=34 -v -u sscudder@misorobotics.com/token:3OdyewqLJBXTa2wADSdBHHLsO8t6nvtyFdD3m38m -H "Content-Type: application/json" ) > json_tmp.rename_34',
'(curl https://misorobotics.zendesk.com/api/v2/ticket_metrics.json?page=35 -v -u sscudder@misorobotics.com/token:3OdyewqLJBXTa2wADSdBHHLsO8t6nvtyFdD3m38m -H "Content-Type: application/json" ) > json_tmp.rename_35',
'',
'</pre>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(95923371865984704)
,p_plug_name=>'DELETE ALL OLD DATA'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(95063787534962349)
,p_plug_display_sequence=>70
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(95923219694984703)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(95923371865984704)
,p_button_name=>'delete_all'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(95128934179962396)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'delete all old data'
,p_button_position=>'BODY'
,p_button_redirect_url=>'f?p=&APP_ID.:12:&SESSION.::&DEBUG.:::'
,p_grid_new_row=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(95704026303771728)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(95703529472771727)
,p_button_name=>'CLEAR'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(95128836075962396)
,p_button_image_alt=>'Clear'
,p_button_position=>'REGION_TEMPLATE_NEXT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(95704320042771729)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(95703529472771727)
,p_button_name=>'LOAD'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(95128836075962396)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Load Data'
,p_button_position=>'REGION_TEMPLATE_NEXT'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(95706394943771731)
,p_name=>'P11_FILE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(95705919398771731)
,p_prompt=>'Upload a File'
,p_display_as=>'NATIVE_FILE'
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_api.id(95126059752962392)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'APEX_APPLICATION_TEMP_FILES'
,p_attribute_06=>'Y'
,p_attribute_08=>'attachment'
,p_attribute_09=>'SESSION'
,p_attribute_10=>'N'
,p_attribute_12=>'DROPZONE_BLOCK'
,p_attribute_14=>'Supported formats JSON'
,p_attribute_15=>'999000'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(95706745728771732)
,p_name=>'P11_ERROR_ROW_COUNT'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(95705919398771731)
,p_display_as=>'NATIVE_HIDDEN'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(95708460112771735)
,p_name=>'P11_FILE_NAME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(95708097720771734)
,p_item_default=>'Pasted Data'
,p_prompt=>'Loaded File'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(95126389788962393)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(95708937034771735)
,p_computation_sequence=>10
,p_computation_item=>'P11_FILE_NAME'
,p_computation_type=>'QUERY'
,p_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select filename',
'  from apex_application_temp_files ',
' where name = :P11_FILE'))
,p_compute_when=>'P11_FILE'
,p_compute_when_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(95709372308771738)
,p_validation_name=>'Is valid file type'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if apex_data_parser.assert_file_type(',
'       p_file_name => :P11_FILE_NAME,',
'       p_file_type => apex_data_parser.c_file_type_json )',
'then',
'    return true;',
'else',
'    :P11_FILE := null;',
'    return false;',
'end if;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Invalid file type. Supported file types JSON.'
,p_associated_item=>wwv_flow_api.id(95706394943771731)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(95707155284771733)
,p_name=>'Upload a File'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P11_FILE'
,p_condition_element=>'P11_FILE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(95707644056771734)
,p_event_id=>wwv_flow_api.id(95707155284771733)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(95704869628771729)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_DATA_LOADING'
,p_process_name=>'Load Data'
,p_attribute_01=>wwv_flow_api.id(95702700472768822)
,p_attribute_02=>'FILE'
,p_attribute_03=>'P11_FILE'
,p_attribute_08=>'P11_ERROR_ROW_COUNT'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(95704320042771729)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(95705239831771730)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Cache'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>':REQUEST = ''CLEAR'' or :P11_ERROR_ROW_COUNT = 0'
,p_process_when_type=>'EXPRESSION'
,p_process_when2=>'PLSQL'
);
wwv_flow_api.component_end;
end;
/
