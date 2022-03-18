prompt --application/pages/page_00005
begin
--   Manifest
--     PAGE: 00005
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
 p_id=>5
,p_user_interface_id=>wwv_flow_api.id(14434115216807266717)
,p_name=>'Publish Poll'
,p_alias=>'PUBLISH-POLL'
,p_page_mode=>'MODAL'
,p_step_title=>'Publish Poll'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(14008957981820441125)
,p_step_template=>wwv_flow_api.id(14690159074482251121)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(250464227793234829)
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_last_upd_yyyymmddhh24miss=>'20200116130020'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(14286157294691975208)
,p_plug_name=>'Publish Poll'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(14690161967644251135)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_source=>'<p>Please confirm you want to Publish this poll.</p>'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(356230060154239823)
,p_plug_name=>'test data'
,p_parent_plug_id=>wwv_flow_api.id(14286157294691975208)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(14690161967644251135)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_source=>'<p>Before you Publish, you may want to remove your responses collected during this Testing period.</p>'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from EBA_QPOLL_RESULTS',
' where poll_id = :POLL_ID',
'   and nvl(is_valid_yn,''Y'') = ''Y''',
'   and preactive_yn = ''Y'''))
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(356230258284239825)
,p_plug_name=>'invite only'
,p_parent_plug_id=>wwv_flow_api.id(14286157294691975208)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(14690161967644251135)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p/>',
'<p>Once published, you would then send invitations to those whom you want to participate.</p>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from EBA_QPOLL_POLLS',
' where id = :POLL_ID',
'   and invite_only_yn = ''Y'''))
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(356230366849239826)
,p_plug_name=>'not invite only'
,p_parent_plug_id=>wwv_flow_api.id(14286157294691975208)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(14690161967644251135)
,p_plug_display_sequence=>30
,p_plug_display_point=>'BODY'
,p_plug_source=>'<p>Once published, you can then use the Poll URL, under Additional Details, to request users to participate.</p>'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from EBA_QPOLL_POLLS',
' where id = :POLL_ID',
'   and invite_only_yn = ''N'''))
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(28561505057698153197)
,p_plug_name=>'buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(14690162135548251137)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(353949087274643047)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(28561505057698153197)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(14690191414518251222)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(356230119254239824)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(28561505057698153197)
,p_button_name=>'DELETE_TEST_DATA'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(14690191414518251222)
,p_button_image_alt=>'Delete Test Data'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:82:&SESSION.::&DEBUG.:RP::'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from EBA_QPOLL_RESULTS',
' where poll_id = :POLL_ID',
'   and nvl(is_valid_yn,''Y'') = ''Y''',
'   and preactive_yn = ''Y'''))
,p_button_condition_type=>'EXISTS'
,p_button_cattributes=>'style="text-align: center;"'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(353949388053643066)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(28561505057698153197)
,p_button_name=>'PUBLISH'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--gapLeft'
,p_button_template_id=>wwv_flow_api.id(14690191414518251222)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Publish Poll'
,p_button_position=>'REGION_TEMPLATE_NEXT'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(353951152603643163)
,p_branch_name=>'Branch to Polls Page'
,p_branch_action=>'f?p=&APP_ID.:100:&SESSION.::&DEBUG.:RP::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(353950203236643139)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(353949087274643047)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(353950682987643146)
,p_event_id=>wwv_flow_api.id(353950203236643139)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(353949787594643129)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'publish poll'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'update eba_qpoll_polls',
'   set status_id = 3',
' where id = :POLL_ID;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(353949388053643066)
,p_process_success_message=>'Poll is Published.  You can now send Invitations, if appropriate.'
);
wwv_flow_api.component_end;
end;
/
