prompt --application/pages/page_00017
begin
--   Manifest
--     PAGE: 00017
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>110
,p_default_id_offset=>101599614921830918
,p_default_owner=>'MISO'
);
wwv_flow_api.create_page(
 p_id=>17
,p_user_interface_id=>wwv_flow_api.id(14434115216807266717)
,p_name=>'Detailed Results'
,p_alias=>'DETAILED-RESULTS'
,p_step_title=>'Detailed Results'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(14021638908096383157)
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'ALLAN'
,p_last_upd_yyyymmddhh24miss=>'20210518153954'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(14465722391708877071)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(14690173773848251160)
,p_plug_display_sequence=>5
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(17689949455017337264)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(14690191633551251224)
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(21383775092199937113)
,p_plug_name=>'Current Poll'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(14690171167000251156)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(42989615960642110561)
,p_plug_name=>'Result Details'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(14690169852560251151)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select r.id result_id,',
'      case when p.anonymous_yn = ''Y'' then ''anonymous'' else lower(r.email) end respondent,',
'      (select c.community_name',
'         from eba_qpoll_comm_invites c,',
'              eba_qpoll_invites i',
'        where p.id = c.poll_id',
'          and c.id = i.comm_invite_id',
'          and r.respondent_id = i.respondent_id) community,',
'      r.updated submission_date,',
'      d.answer_01||',
'        decode(d.answer_02,null,null,'', ''||d.answer_02)||',
'        decode(d.answer_03,null,null,'', ''||d.answer_03)||',
'        decode(d.answer_04,null,null,'', ''||d.answer_04)||',
'        decode(d.answer_05,null,null,'', ''||d.answer_05)||',
'        decode(d.answer_06,null,null,'', ''||d.answer_06)||',
'        decode(d.answer_07,null,null,'', ''||d.answer_07)||',
'        decode(d.answer_08,null,null,'', ''||d.answer_08)||',
'        decode(d.answer_09,null,null,'', ''||d.answer_09)||',
'        decode(d.answer_10,null,null,'', ''||d.answer_10)||',
'        decode(d.answer_11,null,null,'', ''||d.answer_11)||',
'        decode(d.answer_12,null,null,'', ''||d.answer_12) answer1,',
'      (select d2.answer_01||',
'        decode(d2.answer_02,null,null,'', ''||d2.answer_02)||',
'        decode(d2.answer_03,null,null,'', ''||d2.answer_03)||',
'        decode(d2.answer_04,null,null,'', ''||d2.answer_04)||',
'        decode(d2.answer_05,null,null,'', ''||d2.answer_05)||',
'        decode(d2.answer_06,null,null,'', ''||d2.answer_06)||',
'        decode(d2.answer_07,null,null,'', ''||d2.answer_07)||',
'        decode(d2.answer_08,null,null,'', ''||d2.answer_08)||',
'        decode(d2.answer_09,null,null,'', ''||d2.answer_09)||',
'        decode(d2.answer_10,null,null,'', ''||d2.answer_10)||',
'        decode(d2.answer_11,null,null,'', ''||d2.answer_11)||',
'        decode(d2.answer_12,null,null,'', ''||d2.answer_12)',
'       from EBA_QPOLL_RESULT_DETAILS d2',
'      where r.id = d2.result_id ',
'        and d2.display_sequence = 2) answer2,',
'      (select d2.answer_01||',
'        decode(d2.answer_02,null,null,'', ''||d2.answer_02)||',
'        decode(d2.answer_03,null,null,'', ''||d2.answer_03)||',
'        decode(d2.answer_04,null,null,'', ''||d2.answer_04)||',
'        decode(d2.answer_05,null,null,'', ''||d2.answer_05)||',
'        decode(d2.answer_06,null,null,'', ''||d2.answer_06)||',
'        decode(d2.answer_07,null,null,'', ''||d2.answer_07)||',
'        decode(d2.answer_08,null,null,'', ''||d2.answer_08)||',
'        decode(d2.answer_09,null,null,'', ''||d2.answer_09)||',
'        decode(d2.answer_10,null,null,'', ''||d2.answer_10)||',
'        decode(d2.answer_11,null,null,'', ''||d2.answer_11)||',
'        decode(d2.answer_12,null,null,'', ''||d2.answer_12)',
'       from EBA_QPOLL_RESULT_DETAILS d2',
'      where r.id = d2.result_id ',
'        and d2.display_sequence = 3) answer3,',
'      (select d2.answer_01||',
'        decode(d2.answer_02,null,null,'', ''||d2.answer_02)||',
'        decode(d2.answer_03,null,null,'', ''||d2.answer_03)||',
'        decode(d2.answer_04,null,null,'', ''||d2.answer_04)||',
'        decode(d2.answer_05,null,null,'', ''||d2.answer_05)||',
'        decode(d2.answer_06,null,null,'', ''||d2.answer_06)||',
'        decode(d2.answer_07,null,null,'', ''||d2.answer_07)||',
'        decode(d2.answer_08,null,null,'', ''||d2.answer_08)||',
'        decode(d2.answer_09,null,null,'', ''||d2.answer_09)||',
'        decode(d2.answer_10,null,null,'', ''||d2.answer_10)||',
'        decode(d2.answer_11,null,null,'', ''||d2.answer_11)||',
'        decode(d2.answer_12,null,null,'', ''||d2.answer_12)',
'       from EBA_QPOLL_RESULT_DETAILS d2',
'      where r.id = d2.result_id ',
'        and d2.display_sequence = 4) answer4,',
'      (select d2.answer_01||',
'        decode(d2.answer_02,null,null,'', ''||d2.answer_02)||',
'        decode(d2.answer_03,null,null,'', ''||d2.answer_03)||',
'        decode(d2.answer_04,null,null,'', ''||d2.answer_04)||',
'        decode(d2.answer_05,null,null,'', ''||d2.answer_05)||',
'        decode(d2.answer_06,null,null,'', ''||d2.answer_06)||',
'        decode(d2.answer_07,null,null,'', ''||d2.answer_07)||',
'        decode(d2.answer_08,null,null,'', ''||d2.answer_08)||',
'        decode(d2.answer_09,null,null,'', ''||d2.answer_09)||',
'        decode(d2.answer_10,null,null,'', ''||d2.answer_10)||',
'        decode(d2.answer_11,null,null,'', ''||d2.answer_11)||',
'        decode(d2.answer_12,null,null,'', ''||d2.answer_12)',
'       from EBA_QPOLL_RESULT_DETAILS d2',
'      where r.id = d2.result_id ',
'        and d2.display_sequence = 5) answer5,',
'      (select d2.answer_01||',
'        decode(d2.answer_02,null,null,'', ''||d2.answer_02)||',
'        decode(d2.answer_03,null,null,'', ''||d2.answer_03)||',
'        decode(d2.answer_04,null,null,'', ''||d2.answer_04)||',
'        decode(d2.answer_05,null,null,'', ''||d2.answer_05)||',
'        decode(d2.answer_06,null,null,'', ''||d2.answer_06)||',
'        decode(d2.answer_07,null,null,'', ''||d2.answer_07)||',
'        decode(d2.answer_08,null,null,'', ''||d2.answer_08)||',
'        decode(d2.answer_09,null,null,'', ''||d2.answer_09)||',
'        decode(d2.answer_10,null,null,'', ''||d2.answer_10)||',
'        decode(d2.answer_11,null,null,'', ''||d2.answer_11)||',
'        decode(d2.answer_12,null,null,'', ''||d2.answer_12)',
'       from EBA_QPOLL_RESULT_DETAILS d2',
'      where r.id = d2.result_id ',
'        and d2.display_sequence = 6) answer6,',
'      (select d2.answer_01||',
'        decode(d2.answer_02,null,null,'', ''||d2.answer_02)||',
'        decode(d2.answer_03,null,null,'', ''||d2.answer_03)||',
'        decode(d2.answer_04,null,null,'', ''||d2.answer_04)||',
'        decode(d2.answer_05,null,null,'', ''||d2.answer_05)||',
'        decode(d2.answer_06,null,null,'', ''||d2.answer_06)||',
'        decode(d2.answer_07,null,null,'', ''||d2.answer_07)||',
'        decode(d2.answer_08,null,null,'', ''||d2.answer_08)||',
'        decode(d2.answer_09,null,null,'', ''||d2.answer_09)||',
'        decode(d2.answer_10,null,null,'', ''||d2.answer_10)||',
'        decode(d2.answer_11,null,null,'', ''||d2.answer_11)||',
'        decode(d2.answer_12,null,null,'', ''||d2.answer_12)',
'       from EBA_QPOLL_RESULT_DETAILS d2',
'      where r.id = d2.result_id ',
'        and d2.display_sequence = 7) answer7,',
'      (select d2.answer_01||',
'        decode(d2.answer_02,null,null,'', ''||d2.answer_02)||',
'        decode(d2.answer_03,null,null,'', ''||d2.answer_03)||',
'        decode(d2.answer_04,null,null,'', ''||d2.answer_04)||',
'        decode(d2.answer_05,null,null,'', ''||d2.answer_05)||',
'        decode(d2.answer_06,null,null,'', ''||d2.answer_06)||',
'        decode(d2.answer_07,null,null,'', ''||d2.answer_07)||',
'        decode(d2.answer_08,null,null,'', ''||d2.answer_08)||',
'        decode(d2.answer_09,null,null,'', ''||d2.answer_09)||',
'        decode(d2.answer_10,null,null,'', ''||d2.answer_10)||',
'        decode(d2.answer_11,null,null,'', ''||d2.answer_11)||',
'        decode(d2.answer_12,null,null,'', ''||d2.answer_12)',
'       from EBA_QPOLL_RESULT_DETAILS d2',
'      where r.id = d2.result_id ',
'        and d2.display_sequence = 8) answer8,',
'      (select d2.answer_01||',
'        decode(d2.answer_02,null,null,'', ''||d2.answer_02)||',
'        decode(d2.answer_03,null,null,'', ''||d2.answer_03)||',
'        decode(d2.answer_04,null,null,'', ''||d2.answer_04)||',
'        decode(d2.answer_05,null,null,'', ''||d2.answer_05)||',
'        decode(d2.answer_06,null,null,'', ''||d2.answer_06)||',
'        decode(d2.answer_07,null,null,'', ''||d2.answer_07)||',
'        decode(d2.answer_08,null,null,'', ''||d2.answer_08)||',
'        decode(d2.answer_09,null,null,'', ''||d2.answer_09)||',
'        decode(d2.answer_10,null,null,'', ''||d2.answer_10)||',
'        decode(d2.answer_11,null,null,'', ''||d2.answer_11)||',
'        decode(d2.answer_12,null,null,'', ''||d2.answer_12)',
'       from EBA_QPOLL_RESULT_DETAILS d2',
'      where r.id = d2.result_id ',
'        and d2.display_sequence = 9) answer9,',
'      (select d2.answer_01||',
'        decode(d2.answer_02,null,null,'', ''||d2.answer_02)||',
'        decode(d2.answer_03,null,null,'', ''||d2.answer_03)||',
'        decode(d2.answer_04,null,null,'', ''||d2.answer_04)||',
'        decode(d2.answer_05,null,null,'', ''||d2.answer_05)||',
'        decode(d2.answer_06,null,null,'', ''||d2.answer_06)||',
'        decode(d2.answer_07,null,null,'', ''||d2.answer_07)||',
'        decode(d2.answer_08,null,null,'', ''||d2.answer_08)||',
'        decode(d2.answer_09,null,null,'', ''||d2.answer_09)||',
'        decode(d2.answer_10,null,null,'', ''||d2.answer_10)||',
'        decode(d2.answer_11,null,null,'', ''||d2.answer_11)||',
'        decode(d2.answer_12,null,null,'', ''||d2.answer_12)',
'       from EBA_QPOLL_RESULT_DETAILS d2',
'      where r.id = d2.result_id ',
'        and d2.display_sequence = 10) answer10,',
'      (select d2.answer_01||',
'        decode(d2.answer_02,null,null,'', ''||d2.answer_02)||',
'        decode(d2.answer_03,null,null,'', ''||d2.answer_03)||',
'        decode(d2.answer_04,null,null,'', ''||d2.answer_04)||',
'        decode(d2.answer_05,null,null,'', ''||d2.answer_05)||',
'        decode(d2.answer_06,null,null,'', ''||d2.answer_06)||',
'        decode(d2.answer_07,null,null,'', ''||d2.answer_07)||',
'        decode(d2.answer_08,null,null,'', ''||d2.answer_08)||',
'        decode(d2.answer_09,null,null,'', ''||d2.answer_09)||',
'        decode(d2.answer_10,null,null,'', ''||d2.answer_10)||',
'        decode(d2.answer_11,null,null,'', ''||d2.answer_11)||',
'        decode(d2.answer_12,null,null,'', ''||d2.answer_12)',
'       from EBA_QPOLL_RESULT_DETAILS d2',
'      where r.id = d2.result_id ',
'        and d2.display_sequence = 11) answer11,',
'      (select d2.answer_01||',
'        decode(d2.answer_02,null,null,'', ''||d2.answer_02)||',
'        decode(d2.answer_03,null,null,'', ''||d2.answer_03)||',
'        decode(d2.answer_04,null,null,'', ''||d2.answer_04)||',
'        decode(d2.answer_05,null,null,'', ''||d2.answer_05)||',
'        decode(d2.answer_06,null,null,'', ''||d2.answer_06)||',
'        decode(d2.answer_07,null,null,'', ''||d2.answer_07)||',
'        decode(d2.answer_08,null,null,'', ''||d2.answer_08)||',
'        decode(d2.answer_09,null,null,'', ''||d2.answer_09)||',
'        decode(d2.answer_10,null,null,'', ''||d2.answer_10)||',
'        decode(d2.answer_11,null,null,'', ''||d2.answer_11)||',
'        decode(d2.answer_12,null,null,'', ''||d2.answer_12)',
'       from EBA_QPOLL_RESULT_DETAILS d2',
'      where r.id = d2.result_id ',
'        and d2.display_sequence = 12) answer12,',
'      (select d2.answer_01||',
'        decode(d2.answer_02,null,null,'', ''||d2.answer_02)||',
'        decode(d2.answer_03,null,null,'', ''||d2.answer_03)||',
'        decode(d2.answer_04,null,null,'', ''||d2.answer_04)||',
'        decode(d2.answer_05,null,null,'', ''||d2.answer_05)||',
'        decode(d2.answer_06,null,null,'', ''||d2.answer_06)||',
'        decode(d2.answer_07,null,null,'', ''||d2.answer_07)||',
'        decode(d2.answer_08,null,null,'', ''||d2.answer_08)||',
'        decode(d2.answer_09,null,null,'', ''||d2.answer_09)||',
'        decode(d2.answer_10,null,null,'', ''||d2.answer_10)||',
'        decode(d2.answer_11,null,null,'', ''||d2.answer_11)||',
'        decode(d2.answer_12,null,null,'', ''||d2.answer_12)',
'       from EBA_QPOLL_RESULT_DETAILS d2',
'      where r.id = d2.result_id ',
'        and d2.display_sequence = 13) answer13,',
'      (select d2.answer_01||',
'        decode(d2.answer_02,null,null,'', ''||d2.answer_02)||',
'        decode(d2.answer_03,null,null,'', ''||d2.answer_03)||',
'        decode(d2.answer_04,null,null,'', ''||d2.answer_04)||',
'        decode(d2.answer_05,null,null,'', ''||d2.answer_05)||',
'        decode(d2.answer_06,null,null,'', ''||d2.answer_06)||',
'        decode(d2.answer_07,null,null,'', ''||d2.answer_07)||',
'        decode(d2.answer_08,null,null,'', ''||d2.answer_08)||',
'        decode(d2.answer_09,null,null,'', ''||d2.answer_09)||',
'        decode(d2.answer_10,null,null,'', ''||d2.answer_10)||',
'        decode(d2.answer_11,null,null,'', ''||d2.answer_11)||',
'        decode(d2.answer_12,null,null,'', ''||d2.answer_12)',
'       from EBA_QPOLL_RESULT_DETAILS d2',
'      where r.id = d2.result_id ',
'        and d2.display_sequence = 14) answer14,',
'      (select d2.answer_01||',
'        decode(d2.answer_02,null,null,'', ''||d2.answer_02)||',
'        decode(d2.answer_03,null,null,'', ''||d2.answer_03)||',
'        decode(d2.answer_04,null,null,'', ''||d2.answer_04)||',
'        decode(d2.answer_05,null,null,'', ''||d2.answer_05)||',
'        decode(d2.answer_06,null,null,'', ''||d2.answer_06)||',
'        decode(d2.answer_07,null,null,'', ''||d2.answer_07)||',
'        decode(d2.answer_08,null,null,'', ''||d2.answer_08)||',
'        decode(d2.answer_09,null,null,'', ''||d2.answer_09)||',
'        decode(d2.answer_10,null,null,'', ''||d2.answer_10)||',
'        decode(d2.answer_11,null,null,'', ''||d2.answer_11)||',
'        decode(d2.answer_12,null,null,'', ''||d2.answer_12)',
'       from EBA_QPOLL_RESULT_DETAILS d2',
'      where r.id = d2.result_id ',
'        and d2.display_sequence = 15) answer15,',
'      (select d2.answer_01||',
'        decode(d2.answer_02,null,null,'', ''||d2.answer_02)||',
'        decode(d2.answer_03,null,null,'', ''||d2.answer_03)||',
'        decode(d2.answer_04,null,null,'', ''||d2.answer_04)||',
'        decode(d2.answer_05,null,null,'', ''||d2.answer_05)||',
'        decode(d2.answer_06,null,null,'', ''||d2.answer_06)||',
'        decode(d2.answer_07,null,null,'', ''||d2.answer_07)||',
'        decode(d2.answer_08,null,null,'', ''||d2.answer_08)||',
'        decode(d2.answer_09,null,null,'', ''||d2.answer_09)||',
'        decode(d2.answer_10,null,null,'', ''||d2.answer_10)||',
'        decode(d2.answer_11,null,null,'', ''||d2.answer_11)||',
'        decode(d2.answer_12,null,null,'', ''||d2.answer_12)',
'       from EBA_QPOLL_RESULT_DETAILS d2',
'      where r.id = d2.result_id ',
'        and d2.display_sequence = 16) answer16,',
'      (select d2.answer_01||',
'        decode(d2.answer_02,null,null,'', ''||d2.answer_02)||',
'        decode(d2.answer_03,null,null,'', ''||d2.answer_03)||',
'        decode(d2.answer_04,null,null,'', ''||d2.answer_04)||',
'        decode(d2.answer_05,null,null,'', ''||d2.answer_05)||',
'        decode(d2.answer_06,null,null,'', ''||d2.answer_06)||',
'        decode(d2.answer_07,null,null,'', ''||d2.answer_07)||',
'        decode(d2.answer_08,null,null,'', ''||d2.answer_08)||',
'        decode(d2.answer_09,null,null,'', ''||d2.answer_09)||',
'        decode(d2.answer_10,null,null,'', ''||d2.answer_10)||',
'        decode(d2.answer_11,null,null,'', ''||d2.answer_11)||',
'        decode(d2.answer_12,null,null,'', ''||d2.answer_12)',
'       from EBA_QPOLL_RESULT_DETAILS d2',
'      where r.id = d2.result_id ',
'        and d2.display_sequence = 17) answer17,',
'      (select d2.answer_01||',
'        decode(d2.answer_02,null,null,'', ''||d2.answer_02)||',
'        decode(d2.answer_03,null,null,'', ''||d2.answer_03)||',
'        decode(d2.answer_04,null,null,'', ''||d2.answer_04)||',
'        decode(d2.answer_05,null,null,'', ''||d2.answer_05)||',
'        decode(d2.answer_06,null,null,'', ''||d2.answer_06)||',
'        decode(d2.answer_07,null,null,'', ''||d2.answer_07)||',
'        decode(d2.answer_08,null,null,'', ''||d2.answer_08)||',
'        decode(d2.answer_09,null,null,'', ''||d2.answer_09)||',
'        decode(d2.answer_10,null,null,'', ''||d2.answer_10)||',
'        decode(d2.answer_11,null,null,'', ''||d2.answer_11)||',
'        decode(d2.answer_12,null,null,'', ''||d2.answer_12)',
'       from EBA_QPOLL_RESULT_DETAILS d2',
'      where r.id = d2.result_id ',
'        and d2.display_sequence = 18) answer18,',
'      (select d2.answer_01||',
'        decode(d2.answer_02,null,null,'', ''||d2.answer_02)||',
'        decode(d2.answer_03,null,null,'', ''||d2.answer_03)||',
'        decode(d2.answer_04,null,null,'', ''||d2.answer_04)||',
'        decode(d2.answer_05,null,null,'', ''||d2.answer_05)||',
'        decode(d2.answer_06,null,null,'', ''||d2.answer_06)||',
'        decode(d2.answer_07,null,null,'', ''||d2.answer_07)||',
'        decode(d2.answer_08,null,null,'', ''||d2.answer_08)||',
'        decode(d2.answer_09,null,null,'', ''||d2.answer_09)||',
'        decode(d2.answer_10,null,null,'', ''||d2.answer_10)||',
'        decode(d2.answer_11,null,null,'', ''||d2.answer_11)||',
'        decode(d2.answer_12,null,null,'', ''||d2.answer_12)',
'       from EBA_QPOLL_RESULT_DETAILS d2',
'      where r.id = d2.result_id ',
'        and d2.display_sequence = 19) answer19,',
'      (select d2.answer_01||',
'        decode(d2.answer_02,null,null,'', ''||d2.answer_02)||',
'        decode(d2.answer_03,null,null,'', ''||d2.answer_03)||',
'        decode(d2.answer_04,null,null,'', ''||d2.answer_04)||',
'        decode(d2.answer_05,null,null,'', ''||d2.answer_05)||',
'        decode(d2.answer_06,null,null,'', ''||d2.answer_06)||',
'        decode(d2.answer_07,null,null,'', ''||d2.answer_07)||',
'        decode(d2.answer_08,null,null,'', ''||d2.answer_08)||',
'        decode(d2.answer_09,null,null,'', ''||d2.answer_09)||',
'        decode(d2.answer_10,null,null,'', ''||d2.answer_10)||',
'        decode(d2.answer_11,null,null,'', ''||d2.answer_11)||',
'        decode(d2.answer_12,null,null,'', ''||d2.answer_12)',
'       from EBA_QPOLL_RESULT_DETAILS d2',
'      where r.id = d2.result_id ',
'        and d2.display_sequence = 20) answer20',
'  from EBA_QPOLL_POLLS p,',
'       EBA_QPOLL_RESULTS r,',
'       EBA_QPOLL_RESULT_DETAILS d',
' where p.id = :POLL_ID',
'   and d.display_sequence = 1',
'     and p.id = r.poll_id and',
'       nvl(r.is_valid_yn,''Y'') = ''Y'' and',
'       r.id = d.result_id ',
'  and (p.status_id = 4 or p.status_id = 3 or',
'       ( p.status_id = 2 and ',
'         eba_qpoll.get_access_role (',
'             p_app_id   => :APP_ID,',
'             p_username => :APP_USER) in (''CONTRIBUTOR'',''ADMINISTRATOR'') ) )',
'  and (eba_qpoll.get_access_role (',
'             p_app_id   => :APP_ID,',
'             p_username => :APP_USER) != ''NONE''',
'       or ',
'       (p.all_view_results_yn = ''Y'' and exists ',
'        (select 1',
'           from eba_qpoll_comm_invites c,',
'                eba_qpoll_invites i',
'          where c.poll_id = p.id',
'            and c.id = i.comm_invite_id',
'            and upper(respondent_email) = :APP_USER) ) )'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(42989616057844110561)
,p_name=>'Result Details'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_pivot=>'N'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML:EMAIL'
,p_owner=>'SBKENNED'
,p_internal_uid=>42888016442922279643
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(462701775977777790)
,p_db_column_name=>'RESPONDENT'
,p_display_order=>12
,p_column_identifier=>'AB'
,p_column_label=>'Respondent'
,p_column_link=>'f?p=&APP_ID.:73:&SESSION.::&DEBUG.:RP,73:P73_RESULT_ID:#RESULT_ID#'
,p_column_linktext=>'#RESPONDENT#'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(462702200837777790)
,p_db_column_name=>'SUBMISSION_DATE'
,p_display_order=>29
,p_column_identifier=>'AC'
,p_column_label=>'Submission Date'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'Y'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(462701328053777789)
,p_db_column_name=>'COMMUNITY'
,p_display_order=>33
,p_column_identifier=>'AG'
,p_column_label=>'Community'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(462698947845777785)
,p_db_column_name=>'ANSWER1'
,p_display_order=>43
,p_column_identifier=>'AH'
,p_column_label=>'&P17_Q1.'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_display_condition=>'P17_Q1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(462699346625777786)
,p_db_column_name=>'ANSWER2'
,p_display_order=>53
,p_column_identifier=>'AI'
,p_column_label=>'&P17_Q2.'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_display_condition=>'P17_Q2'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(462699745191777787)
,p_db_column_name=>'ANSWER3'
,p_display_order=>63
,p_column_identifier=>'AJ'
,p_column_label=>'&P17_Q3.'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_display_condition=>'P17_Q3'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(462700196421777787)
,p_db_column_name=>'ANSWER4'
,p_display_order=>73
,p_column_identifier=>'AK'
,p_column_label=>'&P17_Q4.'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_display_condition=>'P17_Q4'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(462700523451777788)
,p_db_column_name=>'ANSWER5'
,p_display_order=>83
,p_column_identifier=>'AL'
,p_column_label=>'&P17_Q5.'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_display_condition=>'P17_Q5'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(462700988777777789)
,p_db_column_name=>'ANSWER6'
,p_display_order=>93
,p_column_identifier=>'AM'
,p_column_label=>'&P17_Q6.'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_display_condition=>'P17_Q6'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(462702541340777791)
,p_db_column_name=>'ANSWER7'
,p_display_order=>103
,p_column_identifier=>'AN'
,p_column_label=>'&P17_Q7.'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_display_condition=>'P17_Q7'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(462702914997777793)
,p_db_column_name=>'ANSWER8'
,p_display_order=>113
,p_column_identifier=>'AO'
,p_column_label=>'&P17_Q8.'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_display_condition=>'P17_Q8'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(462703347261777794)
,p_db_column_name=>'ANSWER9'
,p_display_order=>123
,p_column_identifier=>'AP'
,p_column_label=>'&P17_Q9.'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_display_condition=>'P17_Q9'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(462703761649777794)
,p_db_column_name=>'ANSWER10'
,p_display_order=>133
,p_column_identifier=>'AQ'
,p_column_label=>'&P17_Q10.'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_display_condition=>'P17_Q10'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(462704117141777795)
,p_db_column_name=>'ANSWER11'
,p_display_order=>143
,p_column_identifier=>'AR'
,p_column_label=>'&P17_Q11.'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_display_condition=>'P17_Q11'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(462704522640777795)
,p_db_column_name=>'ANSWER12'
,p_display_order=>153
,p_column_identifier=>'AS'
,p_column_label=>'&P17_Q12.'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_display_condition=>'P17_Q12'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(462705009844777796)
,p_db_column_name=>'ANSWER13'
,p_display_order=>163
,p_column_identifier=>'AT'
,p_column_label=>'&P17_Q13.'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_display_condition=>'P17_Q13'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(462705331086777797)
,p_db_column_name=>'ANSWER14'
,p_display_order=>173
,p_column_identifier=>'AU'
,p_column_label=>'&P17_Q14.'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_display_condition=>'P17_Q14'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(462705795803777797)
,p_db_column_name=>'ANSWER15'
,p_display_order=>183
,p_column_identifier=>'AV'
,p_column_label=>'&P17_Q15.'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_display_condition=>'P17_Q15'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(462706214037777798)
,p_db_column_name=>'ANSWER16'
,p_display_order=>193
,p_column_identifier=>'AW'
,p_column_label=>'&P17_Q16.'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_display_condition=>'P17_Q16'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(462706553664777799)
,p_db_column_name=>'ANSWER17'
,p_display_order=>203
,p_column_identifier=>'AX'
,p_column_label=>'&P17_Q17.'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_display_condition=>'P17_Q17'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(462706930102777800)
,p_db_column_name=>'ANSWER18'
,p_display_order=>213
,p_column_identifier=>'AY'
,p_column_label=>'&P17_Q18.'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_display_condition=>'P17_Q18'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(462707401220777800)
,p_db_column_name=>'ANSWER19'
,p_display_order=>223
,p_column_identifier=>'AZ'
,p_column_label=>'&P17_Q19.'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_display_condition=>'P17_Q19'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(462707795229777801)
,p_db_column_name=>'ANSWER20'
,p_display_order=>233
,p_column_identifier=>'BA'
,p_column_label=>'&P17_Q20.'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_display_condition=>'P17_Q20'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(356233647087239859)
,p_db_column_name=>'RESULT_ID'
,p_display_order=>243
,p_column_identifier=>'BB'
,p_column_label=>'Result Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(42989618933780117976)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'3611085'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'RESPONDENT::ANSWER1:ANSWER2:ANSWER3:ANSWER4:ANSWER5:ANSWER6:ANSWER7:ANSWER8:ANSWER9:ANSWER10:ANSWER11:ANSWER12:ANSWER13:ANSWER14:ANSWER15:ANSWER16:ANSWER17:ANSWER18:ANSWER19:ANSWER20:RESULT_ID'
,p_sort_column_1=>'POLL_ID'
,p_sort_direction_1=>'ASC'
,p_sort_column_2=>'RESPONDENT'
,p_sort_direction_2=>'ASC'
,p_sort_column_3=>'QUESTION_DISPLAY_SEQ'
,p_sort_direction_3=>'ASC'
,p_sort_column_4=>'0'
,p_sort_direction_4=>'ASC'
,p_sort_column_5=>'0'
,p_sort_direction_5=>'ASC'
,p_sort_column_6=>'0'
,p_sort_direction_6=>'ASC'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(462728472967845206)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(14465722391708877071)
,p_button_name=>'BACK'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(14690190887630251216)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Back'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:&LAST_VIEW.:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-angle-double-left'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(479253585848162842)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(14465722391708877071)
,p_button_name=>'cross_poll'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(14690191013111251220)
,p_button_image_alt=>'Alternate View'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:41:&SESSION.:CIR,RIR:&DEBUG.:RP,41,CIR,RIR:IR_POLL_ID:&POLL_ID.'
,p_icon_css_classes=>'fa-chevron-right'
,p_security_scheme=>wwv_flow_api.id(250463977822234829)
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(479253930386166545)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(14465722391708877071)
,p_button_name=>'REMOVE_RESULTS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(14690191414518251222)
,p_button_image_alt=>'Remove Results'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:40:&SESSION.:CIR,RIR:&DEBUG.:RP::'
,p_security_scheme=>wwv_flow_api.id(250463977822234829)
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(462708532959777805)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(42989615960642110561)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--link:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(14690191013111251220)
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&SESSION.::&DEBUG.:RP,&APP_PAGE_ID.,RIR::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_api.component_end;
end;
/
begin
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>110
,p_default_id_offset=>101599614921830918
,p_default_owner=>'MISO'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(462690373710777761)
,p_name=>'P17_POLL_NAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(21383775092199937113)
,p_prompt=>'Poll'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select poll_name from eba_qpoll_polls',
' where id = :POLL_ID'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(14690190497303251212)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(462690664287777770)
,p_name=>'P17_Q1'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(21383775092199937113)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(462691050977777770)
,p_name=>'P17_Q2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(21383775092199937113)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(462691478783777770)
,p_name=>'P17_Q3'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(21383775092199937113)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(462691840615777771)
,p_name=>'P17_Q4'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(21383775092199937113)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(462692306010777771)
,p_name=>'P17_Q5'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(21383775092199937113)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(462692711600777771)
,p_name=>'P17_Q6'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(21383775092199937113)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(462693075893777772)
,p_name=>'P17_Q7'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(21383775092199937113)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(462693507960777772)
,p_name=>'P17_Q8'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(21383775092199937113)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(462693821437777772)
,p_name=>'P17_Q9'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(21383775092199937113)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(462694225071777773)
,p_name=>'P17_Q10'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_api.id(21383775092199937113)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(462694650899777773)
,p_name=>'P17_Q11'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_api.id(21383775092199937113)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(462695095042777773)
,p_name=>'P17_Q12'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_api.id(21383775092199937113)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(462695508822777774)
,p_name=>'P17_Q13'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_api.id(21383775092199937113)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(462695908653777774)
,p_name=>'P17_Q14'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_api.id(21383775092199937113)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(462696224516777774)
,p_name=>'P17_Q15'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_api.id(21383775092199937113)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(462696712195777774)
,p_name=>'P17_Q16'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_api.id(21383775092199937113)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(462697017651777775)
,p_name=>'P17_Q17'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_api.id(21383775092199937113)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(462697460325777775)
,p_name=>'P17_Q18'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_api.id(21383775092199937113)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(462697856988777775)
,p_name=>'P17_Q19'
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_api.id(21383775092199937113)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(462698289808777776)
,p_name=>'P17_Q20'
,p_item_sequence=>310
,p_item_plug_id=>wwv_flow_api.id(21383775092199937113)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(356233496289239857)
,p_name=>'on close'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(479253930386166545)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(356233574777239858)
,p_event_id=>wwv_flow_api.id(356233496289239857)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(42989615960642110561)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(356233796015239860)
,p_name=>'after edit respondent'
,p_event_sequence=>20
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(42989615960642110561)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(356233885294239861)
,p_event_id=>wwv_flow_api.id(356233796015239860)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(42989615960642110561)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(462708953177777811)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'load questions'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'   l_nbr  number := 1;',
'begin',
'',
':P17_Q1 := null;',
':P17_Q2 := null;',
':P17_Q3 := null;',
':P17_Q4 := null;     ',
':P17_Q5 := null;   ',
':P17_Q6 := null;    ',
':P17_Q7 := null;    ',
':P17_Q8 := null;   ',
':P17_Q9 := null; ',
':P17_Q10 := null;',
':P17_Q11 := null;',
':P17_Q12 := null;',
':P17_Q13 := null;',
':P17_Q14 := null;      ',
':P17_Q15 := null;      ',
':P17_Q16 := null; ',
':P17_Q17 := null;   ',
':P17_Q18 := null;     ',
':P17_Q19 := null; ',
':P17_Q20 := null;',
'',
'for c1 in (',
'   select question',
'     from EBA_QPOLL_QUESTIONS',
'    where :POLL_ID = poll_id',
'    order by display_sequence',
') loop',
'   if l_nbr = 1 then',
'      :P17_Q1 := apex_escape.html(c1.question);',
'   elsif l_nbr = 2 then',
'      :P17_Q2 := apex_escape.html(c1.question);',
'   elsif l_nbr = 3 then',
'      :P17_Q3 := apex_escape.html(c1.question);',
'   elsif l_nbr = 4 then',
'      :P17_Q4 := apex_escape.html(c1.question);      ',
'   elsif l_nbr = 5 then',
'      :P17_Q5 := apex_escape.html(c1.question);      ',
'   elsif l_nbr = 6 then',
'      :P17_Q6 := apex_escape.html(c1.question);      ',
'   elsif l_nbr = 7 then',
'      :P17_Q7 := apex_escape.html(c1.question);      ',
'   elsif l_nbr = 8 then',
'      :P17_Q8 := apex_escape.html(c1.question);      ',
'   elsif l_nbr = 9 then',
'      :P17_Q9 := apex_escape.html(c1.question); ',
'   elsif l_nbr = 10 then',
'      :P17_Q10 := apex_escape.html(c1.question); ',
'   elsif l_nbr = 11 then',
'      :P17_Q11 := apex_escape.html(c1.question);',
'   elsif l_nbr = 12 then',
'      :P17_Q12 := apex_escape.html(c1.question);',
'   elsif l_nbr = 13 then',
'      :P17_Q13 := apex_escape.html(c1.question);',
'   elsif l_nbr = 14 then',
'      :P17_Q14 := apex_escape.html(c1.question);      ',
'   elsif l_nbr = 15 then',
'      :P17_Q15 := apex_escape.html(c1.question);      ',
'   elsif l_nbr = 16 then',
'      :P17_Q16 := apex_escape.html(c1.question);      ',
'   elsif l_nbr = 17 then',
'      :P17_Q17 := apex_escape.html(c1.question);      ',
'   elsif l_nbr = 18 then',
'      :P17_Q18 := apex_escape.html(c1.question);      ',
'   elsif l_nbr = 19 then',
'      :P17_Q19 := apex_escape.html(c1.question); ',
'   elsif l_nbr = 20 then',
'      :P17_Q20 := apex_escape.html(c1.question);  ',
'   end if;',
'   l_nbr := l_nbr + 1;',
'end loop;',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.component_end;
end;
/
