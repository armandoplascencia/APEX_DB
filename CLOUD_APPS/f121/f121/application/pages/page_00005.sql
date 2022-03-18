prompt --application/pages/page_00005
begin
--   Manifest
--     PAGE: 00005
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
 p_id=>5
,p_user_interface_id=>wwv_flow_api.id(95153343667962421)
,p_name=>'Zendesk 01012022 000000 Search'
,p_alias=>'ZENDESK-01012022-000000-SEARCH'
,p_step_title=>'Zendesk 01012022 000000 Search'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#SCROLL .t-fht-thead{',
'  overflow: auto !important;',
'}'))
,p_step_template=>wwv_flow_api.id(95006976710962309)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'MISO'
,p_last_upd_yyyymmddhh24miss=>'20220203190238'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(89462672783669807)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(95063787534962349)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(95240202428962950)
,p_name=>'Zendesk 01012022 000000'
,p_region_name=>'SCROLL'
,p_template=>wwv_flow_api.id(95063787534962349)
,p_display_sequence=>30
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton:t-Region--showIcon:t-Region--hideHeader:t-Region--accent1:t-Region--scrollBody:t-Form--slimPadding:t-Form--stretchInputs:margin-top-sm:margin-bottom-sm:margin-left-sm:margin-right-sm'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID_1,',
'       ID,',
'       URL,',
'       NAME,',
'       PHONE,',
'       ADDRESS,',
'       BRAND_ID,',
'       FORMATTED_PHONE,',
'       REL,',
'       NAME2,',
'       PHONE2,',
'       ADDRESS2,',
'       BRAND_ID2,',
'       FORMATTED_PHONE2,',
'       CHANNEL,',
'       TYPE,',
'       DUE_AT,',
'       STATUS,',
'       SUBJECT,',
'       BRAND_ID3,',
'       GROUP_ID,',
'       PRIORITY,',
'       IS_PUBLIC,',
'       RECIPIENT,',
'       CREATED_AT,',
'       PROBLEM_ID,',
'       UPDATED_AT,',
'       ASSIGNEE_ID,',
'       DESCRIPTION,',
'       EXTERNAL_ID,',
'       RAW_SUBJECT,',
'       REQUESTER_ID,',
'       SUBMITTER_ID,',
'       HAS_INCIDENTS,',
'       FORUM_TOPIC_ID,',
'       TICKET_FORM_ID,',
'       ORGANIZATION_ID,',
'       ALLOW_ATTACHMENTS,',
'       ALLOW_CHANNELBACK,',
'       GENERATED_TIMESTAMP,',
'       SATISFACTION_RATING',
'  from ZENDESK_01012022_000000',
' where substr(subject,1,50) = nvl(:P5_NEW, substr(subject,1,50) )'))
,p_query_row_template=>wwv_flow_api.id(95087496814962365)
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_item=>'P5_ROWS_PER_PAGE'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>100000
,p_pagination_display_position=>'TOP_AND_BOTTOM_LEFT'
,p_csv_output=>'N'
,p_prn_output=>'N'
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
,p_prn_page_header=>'Zendesk 01012022 000000'
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
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(95244232375962961)
,p_query_column_id=>1
,p_column_alias=>'ID_1'
,p_column_display_sequence=>1
,p_column_heading=>'Id 1'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(95244642174962961)
,p_query_column_id=>2
,p_column_alias=>'ID'
,p_column_display_sequence=>2
,p_column_heading=>'ID'
,p_column_format=>'999G999G999G999G999G999G999G999G999G990'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(95245031304962961)
,p_query_column_id=>3
,p_column_alias=>'URL'
,p_column_display_sequence=>3
,p_column_heading=>'URL'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(95245421369962962)
,p_query_column_id=>4
,p_column_alias=>'NAME'
,p_column_display_sequence=>4
,p_column_heading=>'Name'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(95245891660962962)
,p_query_column_id=>5
,p_column_alias=>'PHONE'
,p_column_display_sequence=>5
,p_column_heading=>'Phone'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(95246227460962962)
,p_query_column_id=>6
,p_column_alias=>'ADDRESS'
,p_column_display_sequence=>6
,p_column_heading=>'Address'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(95246669767962962)
,p_query_column_id=>7
,p_column_alias=>'BRAND_ID'
,p_column_display_sequence=>7
,p_column_heading=>'Brand Id'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(95247057999962963)
,p_query_column_id=>8
,p_column_alias=>'FORMATTED_PHONE'
,p_column_display_sequence=>8
,p_column_heading=>'Formatted Phone'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(95247496210962963)
,p_query_column_id=>9
,p_column_alias=>'REL'
,p_column_display_sequence=>9
,p_column_heading=>'Rel'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(95247815809962963)
,p_query_column_id=>10
,p_column_alias=>'NAME2'
,p_column_display_sequence=>10
,p_column_heading=>'Name2'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(95248233500962963)
,p_query_column_id=>11
,p_column_alias=>'PHONE2'
,p_column_display_sequence=>11
,p_column_heading=>'Phone2'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(95248627683962964)
,p_query_column_id=>12
,p_column_alias=>'ADDRESS2'
,p_column_display_sequence=>12
,p_column_heading=>'Address2'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(95249033145962964)
,p_query_column_id=>13
,p_column_alias=>'BRAND_ID2'
,p_column_display_sequence=>13
,p_column_heading=>'Brand Id2'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(95249469724962964)
,p_query_column_id=>14
,p_column_alias=>'FORMATTED_PHONE2'
,p_column_display_sequence=>14
,p_column_heading=>'Formatted Phone2'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(95249871307962964)
,p_query_column_id=>15
,p_column_alias=>'CHANNEL'
,p_column_display_sequence=>15
,p_column_heading=>'Channel'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(95250211271962965)
,p_query_column_id=>16
,p_column_alias=>'TYPE'
,p_column_display_sequence=>16
,p_column_heading=>'Type'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(95250621464962965)
,p_query_column_id=>17
,p_column_alias=>'DUE_AT'
,p_column_display_sequence=>17
,p_column_heading=>'Due At'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(95251014895962965)
,p_query_column_id=>18
,p_column_alias=>'STATUS'
,p_column_display_sequence=>18
,p_column_heading=>'Status'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(95251417751962965)
,p_query_column_id=>19
,p_column_alias=>'SUBJECT'
,p_column_display_sequence=>19
,p_column_heading=>'Subject'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(95251813405962965)
,p_query_column_id=>20
,p_column_alias=>'BRAND_ID3'
,p_column_display_sequence=>20
,p_column_heading=>'Brand Id3'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(95252202136962966)
,p_query_column_id=>21
,p_column_alias=>'GROUP_ID'
,p_column_display_sequence=>21
,p_column_heading=>'Group Id'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(95252620445962966)
,p_query_column_id=>22
,p_column_alias=>'PRIORITY'
,p_column_display_sequence=>22
,p_column_heading=>'Priority'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(95253093890962966)
,p_query_column_id=>23
,p_column_alias=>'IS_PUBLIC'
,p_column_display_sequence=>23
,p_column_heading=>'Is Public'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(95253479697962966)
,p_query_column_id=>24
,p_column_alias=>'RECIPIENT'
,p_column_display_sequence=>24
,p_column_heading=>'Recipient'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(95253866654962967)
,p_query_column_id=>25
,p_column_alias=>'CREATED_AT'
,p_column_display_sequence=>25
,p_column_heading=>'Created At'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(95254293417962967)
,p_query_column_id=>26
,p_column_alias=>'PROBLEM_ID'
,p_column_display_sequence=>26
,p_column_heading=>'Problem Id'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(95254675923962967)
,p_query_column_id=>27
,p_column_alias=>'UPDATED_AT'
,p_column_display_sequence=>27
,p_column_heading=>'Updated At'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(95255084270962967)
,p_query_column_id=>28
,p_column_alias=>'ASSIGNEE_ID'
,p_column_display_sequence=>28
,p_column_heading=>'Assignee Id'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(95255454710962967)
,p_query_column_id=>29
,p_column_alias=>'DESCRIPTION'
,p_column_display_sequence=>29
,p_column_heading=>'Description'
,p_use_as_row_header=>'N'
,p_column_html_expression=>'<PRE>#DESCRIPTION#</PRE>'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(95255897038962968)
,p_query_column_id=>30
,p_column_alias=>'EXTERNAL_ID'
,p_column_display_sequence=>30
,p_column_heading=>'External Id'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(95256256328962968)
,p_query_column_id=>31
,p_column_alias=>'RAW_SUBJECT'
,p_column_display_sequence=>31
,p_column_heading=>'Raw Subject'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(95256669787962968)
,p_query_column_id=>32
,p_column_alias=>'REQUESTER_ID'
,p_column_display_sequence=>32
,p_column_heading=>'Requester Id'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(95257070377962968)
,p_query_column_id=>33
,p_column_alias=>'SUBMITTER_ID'
,p_column_display_sequence=>33
,p_column_heading=>'Submitter Id'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(95257438061962970)
,p_query_column_id=>34
,p_column_alias=>'HAS_INCIDENTS'
,p_column_display_sequence=>34
,p_column_heading=>'Has Incidents'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(95257896498962970)
,p_query_column_id=>35
,p_column_alias=>'FORUM_TOPIC_ID'
,p_column_display_sequence=>35
,p_column_heading=>'Forum Topic Id'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(95258294797962970)
,p_query_column_id=>36
,p_column_alias=>'TICKET_FORM_ID'
,p_column_display_sequence=>36
,p_column_heading=>'Ticket Form Id'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(95258667898962971)
,p_query_column_id=>37
,p_column_alias=>'ORGANIZATION_ID'
,p_column_display_sequence=>37
,p_column_heading=>'Organization Id'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(95259078102962971)
,p_query_column_id=>38
,p_column_alias=>'ALLOW_ATTACHMENTS'
,p_column_display_sequence=>38
,p_column_heading=>'Allow Attachments'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(95259426082962971)
,p_query_column_id=>39
,p_column_alias=>'ALLOW_CHANNELBACK'
,p_column_display_sequence=>39
,p_column_heading=>'Allow Channelback'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(95259865895962971)
,p_query_column_id=>40
,p_column_alias=>'GENERATED_TIMESTAMP'
,p_column_display_sequence=>40
,p_column_heading=>'Generated Timestamp'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(95260276973962972)
,p_query_column_id=>41
,p_column_alias=>'SATISFACTION_RATING'
,p_column_display_sequence=>41
,p_column_heading=>'Satisfaction Rating'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(95240363253962950)
,p_plug_name=>'Search'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(95063787534962349)
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>4
,p_plug_display_point=>'REGION_POSITION_02'
,p_plug_source_type=>'NATIVE_FACETED_SEARCH'
,p_filtered_region_id=>wwv_flow_api.id(95240202428962950)
,p_attribute_01=>'N'
,p_attribute_06=>'E'
,p_attribute_07=>'Y'
,p_attribute_08=>'#active_facets'
,p_attribute_09=>'Y'
,p_attribute_12=>'10000'
,p_attribute_13=>'Y'
,p_attribute_15=>'10'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(95243151335962952)
,p_plug_name=>'Button Bar'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--noPadding:t-ButtonRegion--noUI'
,p_plug_template=>wwv_flow_api.id(95033754678962332)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_source=>'<div id="active_facets"></div>'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(95260791912962972)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(95073177747962355)
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(95006144045962302)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(95130284495962397)
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(95243643363962953)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(95243151335962952)
,p_button_name=>'RESET'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(95128934179962396)
,p_button_image_alt=>'Reset'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.:RR,5::'
,p_icon_css_classes=>'fa-undo'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(89462557310669806)
,p_name=>'P5_NEW'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(89462672783669807)
,p_prompt=>'CURRENT SUBJECT SEARCH'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(95126389788962393)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(89462830625669809)
,p_name=>'P5_NEW_1'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(95240363253962950)
,p_prompt=>'SUBJECT'
,p_source=>'SUBJECT'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'null'
,p_item_template_options=>'#DEFAULT#'
,p_fc_collapsible=>true
,p_fc_initial_collapsed=>false
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_show_more_count=>5
,p_fc_filter_values=>true
,p_fc_sort_by_top_counts=>true
,p_fc_show_selected_first=>true
,p_fc_show_chart=>true
,p_fc_initial_chart=>true
,p_fc_toggleable=>true
,p_fc_initial_toggled=>true
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(95240816766962951)
,p_name=>'P5_SEARCH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(95240363253962950)
,p_prompt=>'Search'
,p_source=>'REL,NAME2,URL,NAME,PHONE,ADDRESS,FORMATTED_PHONE'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_SEARCH'
,p_attribute_01=>'ROW'
,p_attribute_02=>'FACET'
,p_fc_collapsible=>true
,p_fc_initial_collapsed=>false
,p_fc_show_chart=>false
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(95241202477962951)
,p_name=>'P5_CHANNEL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(95240363253962950)
,p_prompt=>'Channel'
,p_source=>'CHANNEL'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_attribute_01=>'1'
,p_attribute_02=>'VERTICAL'
,p_fc_collapsible=>true
,p_fc_initial_collapsed=>false
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_show_more_count=>5
,p_fc_sort_by_top_counts=>true
,p_fc_show_chart=>true
,p_fc_toggleable=>false
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(95241620094962952)
,p_name=>'P5_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(95240363253962950)
,p_prompt=>'Name'
,p_source=>'NAME'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_attribute_01=>'1'
,p_attribute_02=>'VERTICAL'
,p_fc_collapsible=>true
,p_fc_initial_collapsed=>false
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_show_more_count=>5
,p_fc_sort_by_top_counts=>true
,p_fc_show_chart=>true
,p_fc_toggleable=>false
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(95242454887962952)
,p_name=>'P5_FORMATTED_PHONE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(95240363253962950)
,p_prompt=>'Formatted Phone'
,p_source=>'FORMATTED_PHONE'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_attribute_01=>'1'
,p_attribute_02=>'VERTICAL'
,p_fc_collapsible=>true
,p_fc_initial_collapsed=>false
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_show_more_count=>5
,p_fc_sort_by_top_counts=>true
,p_fc_show_chart=>true
,p_fc_toggleable=>false
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(95923479583984705)
,p_name=>'P5_ROWS_PER_PAGE'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(95260791912962972)
,p_prompt=>'rows_per_page'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select rowsperpg, rowsperpg from (',
'select 1  rowsperpg from dual union all',
'select 5  rowsperpg from dual union all',
'select 10 rowsperpg from dual union all',
'select 20 rowsperpg from dual )'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(95126389788962393)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'SUBMIT'
,p_attribute_03=>'Y'
);
wwv_flow_api.component_end;
end;
/
