prompt --application/pages/page_00033
begin
--   Manifest
--     PAGE: 00033
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>106
,p_default_id_offset=>0
,p_default_owner=>'MISO'
);
wwv_flow_api.create_page(
 p_id=>33
,p_user_interface_id=>wwv_flow_api.id(48908740043344081)
,p_name=>'WALK_ALL'
,p_alias=>'WALK-ALL'
,p_step_title=>'WALK_ALL'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'MISO'
,p_last_upd_yyyymmddhh24miss=>'20211230220406'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(49479669722798513)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(48819161814344010)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<PRE>',
'CREATE OR REPLACE FORCE VIEW "SVY_V_SYND_SVY_WALK_ALL" ("QNAME", "QUESTION_NUMBER", "QUESTION_ORDER", "RTNAME", "QTNAME_1", "QCNAME_2", "STNAME_3", "SSNAME_4", "STARTED_DATE", "COMPLETED_DATE", "PCT_COMPLETED", "SURVEY_NUMBER", "SNAME", "SURVEY_START'
||'_TIME", "SURVEY_END_TIME", "LAST_UPDATE", "UTNAME_6", "URNAME_7", "UNAME_8", "PHONENUMBER_OFFICE", "PHONENUMBER_MOBILE", "HASHED_PASSWORD", "EMAIL", "CREATED", "ACTIVE_FLAG") AS ',
'  select SVY_QUESTION.NAME                as qNAME,',
'       SVY_QUESTION.QUESTION_NUMBER     as QUESTION_NUMBER,',
'       SVY_QUESTION.QUESTION_ORDER      as QUESTION_ORDER,',
'       SVY_RESPONSE_TYPE.NAME           as rtNAME,',
'       SVY_QUESTION_TYPE.NAME           as qtNAME_1,',
'       SVY_QUESTION_CATEGORY.NAME       as qcNAME_2,',
'       SVY_SURVEY_TYPE.NAME             as stNAME_3,',
'       SVY_SURVEY_STATUS.NAME           as ssNAME_4,',
'       SVY_SURVEY_USEROF.STARTED_DATE   as STARTED_DATE,',
'       SVY_SURVEY_USEROF.COMPLETED_DATE as COMPLETED_DATE,',
'       SVY_SURVEY_USEROF.PCT_COMPLETED  as PCT_COMPLETED,',
'       SVY_SURVEY.SURVEY_NUMBER         as SURVEY_NUMBER,',
'       SVY_SURVEY.NAME                  as sNAME,',
'       SVY_SURVEY.SURVEY_START_TIME     as SURVEY_START_TIME,',
'       SVY_SURVEY.SURVEY_END_TIME       as SURVEY_END_TIME,',
'       SVY_SURVEY_USEROF.LAST_UPDATE    as LAST_UPDATE,',
'       SVY_USER_TITLE.NAME              as utNAME_6,',
'       SVY_USER_ROLE.NAME               as urNAME_7,',
'       SVY_USEROF.NAME                  as uNAME_8,',
'       SVY_USEROF.PHONENUMBER_OFFICE    as PHONENUMBER_OFFICE,',
'       SVY_USEROF.PHONENUMBER_MOBILE    as PHONENUMBER_MOBILE,',
'       SVY_USEROF.HASHED_PASSWORD       as HASHED_PASSWORD,',
'       SVY_USEROF.EMAIL                 as EMAIL,',
'       SVY_USEROF.CREATED               as CREATED,',
'       SVY_USEROF.ACTIVE_FLAG           as ACTIVE_FLAG ',
' from  SVY_RESPONSE             SVY_RESPONSE,',
'       SVY_QUESTION             SVY_QUESTION,',
'       SVY_RESPONSE_TYPE        SVY_RESPONSE_TYPE,',
'       SVY_QUESTION_CATEGORY    SVY_QUESTION_CATEGORY,',
'       SVY_QUESTION_TYPE        SVY_QUESTION_TYPE,',
'       SVY_SURVEY_USEROF        SVY_SURVEY_USEROF,',
'       SVY_SURVEY               SVY_SURVEY,',
'       SVY_USEROF               SVY_USEROF,',
'       SVY_USER_ROLE            SVY_USER_ROLE,',
'       SVY_USER_TITLE           SVY_USER_TITLE,',
'       SVY_SURVEY_STATUS        SVY_SURVEY_STATUS,',
'       SVY_SURVEY_TYPE          SVY_SURVEY_TYPE ',
' where  SVY_QUESTION.QUESTION_CATEGORY_ID = SVY_QUESTION_CATEGORY.ID(+)',
'    and SVY_QUESTION.QUESTION_TYPE_ID     = SVY_QUESTION_TYPE.ID(+)',
'    and SVY_QUESTION.RESPONSE_TYPE_ID     = SVY_RESPONSE_TYPE.ID(+)',
'    and SVY_RESPONSE.QUESTION_ID          = SVY_QUESTION.ID(+)',
'    and SVY_RESPONSE.SURVEY_USEROF        = SVY_SURVEY_USEROF.ID(+)',
'    and SVY_SURVEY.SURVEY_STATUS_ID       = SVY_SURVEY_STATUS.ID(+)',
'    and SVY_SURVEY.SURVEY_TYPE_ID         = SVY_SURVEY_TYPE.ID(+)',
'    and SVY_SURVEY_USEROF.SURVEY_ID       = SVY_SURVEY.ID(+)',
'    and SVY_SURVEY_USEROF.USEROF_ID       = SVY_USEROF.ID(+)',
'    and SVY_USEROF.USER_ROLE_ID           = SVY_USER_ROLE.ID(+)',
'    and SVY_USEROF.USER_TITLE_ID          = SVY_USER_TITLE.ID(+)',
'/',
'',
'</PRE>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(49508291066483544)
,p_plug_name=>'WALK_ALL SVY_V_SYND_SVY_WALK_ALL'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(48817248700344009)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'TABLE'
,p_query_table=>'SVY_V_SYND_SVY_WALK_ALL'
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
,p_prn_page_header=>'WALK_ALL SVY_V_SYND_SVY_WALK_ALL'
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
 p_id=>wwv_flow_api.id(49508360573483544)
,p_name=>'WALK_ALL'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLSX:PDF:RTF'
,p_owner=>'MISO'
,p_internal_uid=>49508360573483544
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49508790375483545)
,p_db_column_name=>'QNAME'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Qname'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49509103265483547)
,p_db_column_name=>'QUESTION_NUMBER'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Question Number'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49509565037483547)
,p_db_column_name=>'QUESTION_ORDER'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Question Order'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49509993558483548)
,p_db_column_name=>'RTNAME'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Rtname'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49510392277483549)
,p_db_column_name=>'QTNAME_1'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Qtname 1'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49510786151483549)
,p_db_column_name=>'QCNAME_2'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Qcname 2'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49511182962483550)
,p_db_column_name=>'STNAME_3'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Stname 3'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49511517081483551)
,p_db_column_name=>'SSNAME_4'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Ssname 4'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49511939835483552)
,p_db_column_name=>'STARTED_DATE'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Started Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'Y'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49512301468483552)
,p_db_column_name=>'COMPLETED_DATE'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Completed Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'Y'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49512766728483553)
,p_db_column_name=>'PCT_COMPLETED'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Pct Completed'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49513118215483553)
,p_db_column_name=>'SURVEY_NUMBER'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Survey Number'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49513590038483554)
,p_db_column_name=>'SNAME'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Sname'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49513982479483554)
,p_db_column_name=>'SURVEY_START_TIME'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Survey Start Time'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'Y'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49514312402483555)
,p_db_column_name=>'SURVEY_END_TIME'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Survey End Time'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'Y'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49514742028483555)
,p_db_column_name=>'LAST_UPDATE'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Last Update'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'Y'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49515121248483556)
,p_db_column_name=>'UTNAME_6'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'Utname 6'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49515507953483556)
,p_db_column_name=>'URNAME_7'
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'Urname 7'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49515961759483557)
,p_db_column_name=>'UNAME_8'
,p_display_order=>19
,p_column_identifier=>'S'
,p_column_label=>'Uname 8'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49516327263483557)
,p_db_column_name=>'PHONENUMBER_OFFICE'
,p_display_order=>20
,p_column_identifier=>'T'
,p_column_label=>'Phonenumber Office'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49516740476483558)
,p_db_column_name=>'PHONENUMBER_MOBILE'
,p_display_order=>21
,p_column_identifier=>'U'
,p_column_label=>'Phonenumber Mobile'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49517101875483558)
,p_db_column_name=>'HASHED_PASSWORD'
,p_display_order=>22
,p_column_identifier=>'V'
,p_column_label=>'Hashed Password'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49517534116483559)
,p_db_column_name=>'EMAIL'
,p_display_order=>23
,p_column_identifier=>'W'
,p_column_label=>'Email'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49517912087483559)
,p_db_column_name=>'CREATED'
,p_display_order=>24
,p_column_identifier=>'X'
,p_column_label=>'Created'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'Y'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49518340416483560)
,p_db_column_name=>'ACTIVE_FLAG'
,p_display_order=>25
,p_column_identifier=>'Y'
,p_column_label=>'Active Flag'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(49519219152485407)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'495193'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'QNAME:QUESTION_NUMBER:QUESTION_ORDER:RTNAME:QTNAME_1:QCNAME_2:STNAME_3:SSNAME_4:STARTED_DATE:COMPLETED_DATE:PCT_COMPLETED:SURVEY_NUMBER:SNAME:SURVEY_START_TIME:SURVEY_END_TIME:LAST_UPDATE:UTNAME_6:URNAME_7:UNAME_8:PHONENUMBER_OFFICE:PHONENUMBER_MOBIL'
||'E:HASHED_PASSWORD:EMAIL:CREATED:ACTIVE_FLAG'
);
wwv_flow_api.component_end;
end;
/
