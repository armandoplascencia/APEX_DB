prompt --application/pages/page_00039
begin
--   Manifest
--     PAGE: 00039
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>129
,p_default_id_offset=>101668256384016436
,p_default_owner=>'MISO'
);
wwv_flow_api.create_page(
 p_id=>39
,p_user_interface_id=>wwv_flow_api.id(3038757958926989645)
,p_name=>'Reset Data'
,p_alias=>'RESET-DATA'
,p_step_title=>'Reset Data'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_step_template=>wwv_flow_api.id(3692212414657414737)
,p_page_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'ALLAN'
,p_last_upd_yyyymmddhh24miss=>'20210301103321'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(3236048760761890021)
,p_plug_name=>'Manage Sample Application'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(3692227943213414771)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_source=>'<span class="infoTextRegion"><p>Click the reset data button to reset application state.</p></span>'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(3236049456036890024)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(3692230518481414776)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(3236043968975858584)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(3692251387321414861)
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(3236048957245890021)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(3236049456036890024)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(3692251275023414859)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:35:&SESSION.::&DEBUG.:RP::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(3236049171862890022)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(3236049456036890024)
,p_button_name=>'reset_data'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(3692251275023414859)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Reset Data'
,p_button_position=>'REGION_TEMPLATE_EDIT'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(3236050748513899010)
,p_branch_name=>'go back to admin'
,p_branch_action=>'f?p=&APP_ID.:35:&SESSION.::&DEBUG.:RP::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(3236049752340890024)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'reset data'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'',
'    delete from eba_restdemo_sample_emp;',
'    delete from eba_restdemo_sample_urls;',
'    delete from eba_restdemo_sample_github;',
'    delete from eba_restdemo_sample_lang;',
'',
'    insert into eba_restdemo_sample_urls ( name, url ) values (''Github API'', ''https://api.github.com'');',
'    ',
'    insert into eba_restdemo_sample_lang values (''Java'', ''James Gosling'');',
'    insert into eba_restdemo_sample_lang values (''PLSQL'', ''Oracle Corporation'');',
'    insert into eba_restdemo_sample_lang values (''Ruby'', ''Yukihiro Matsumoto'' );',
'    insert into eba_restdemo_sample_lang values (''Python'', ''Guido van Rossum'');',
unistr('    insert into eba_restdemo_sample_lang values (''CSS'', ''H\00E5kon Wium Lie'');'),
'    insert into eba_restdemo_sample_lang values (''C#'', ''Microsoft Corporation'' );',
'    insert into eba_restdemo_sample_lang values (''Go'', ''Google'');',
'    insert into eba_restdemo_sample_lang values (''Shell'', ''N/A'');',
'    insert into eba_restdemo_sample_lang values (''SQLPL'', ''N/A'');',
'',
'end;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Application has been reset.'
);
wwv_flow_api.component_end;
end;
/
