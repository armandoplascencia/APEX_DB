prompt --application/pages/page_00011
begin
--   Manifest
--     PAGE: 00011
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>124
,p_default_id_offset=>97439342994982660
,p_default_owner=>'MISO'
);
wwv_flow_api.create_page(
 p_id=>11
,p_user_interface_id=>wwv_flow_api.id(1218849447906494434)
,p_tab_set=>'TS1'
,p_name=>'Delete Files'
,p_alias=>'DELETE-FILES'
,p_step_title=>'Delete Files'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_nav_list_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_upd_yyyymmddhh24miss=>'20200131120506'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(3338656041709011953)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(2006238623050932729)
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(14891877536180482574)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(2006262221594932810)
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(3338657237564024825)
,p_plug_name=>'Delete Files'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(2006223170705932693)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_source=>'<span class="infoTextRegion"><p>This action will delete all files used by this application.  Project data will not be deleted.  You may wish to delete sample files to conserve space.</p></span>'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(3338657643105026440)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(3338656041709011953)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(2006262149464932808)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:7:&SESSION.::&DEBUG.:::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(3338657840394026442)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(3338656041709011953)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--simple:t-Button--danger'
,p_button_template_id=>wwv_flow_api.id(2006262149464932808)
,p_button_image_alt=>'Delete Files'
,p_button_position=>'REGION_TEMPLATE_DELETE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(3338659448430037436)
,p_branch_action=>'f?p=&APP_ID.:7:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_branch_comment=>'Created 27-APR-2012 07:39 by MIKE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(3338658220379029268)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'delete files'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'delete from EBA_DEMO_FILES;',
'commit;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(3338657840394026442)
,p_process_success_message=>'All rows deleted from files table.'
);
wwv_flow_api.component_end;
end;
/
