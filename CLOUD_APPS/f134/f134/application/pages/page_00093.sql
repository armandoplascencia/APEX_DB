prompt --application/pages/page_00093
begin
--   Manifest
--     PAGE: 00093
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>134
,p_default_id_offset=>172493832712964115
,p_default_owner=>'MISO'
);
wwv_flow_api.create_page(
 p_id=>93
,p_user_interface_id=>wwv_flow_api.id(5783577205373975152)
,p_name=>'Add Project Update'
,p_step_title=>'Add Project Update'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(5956244094027597768)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(7306166303644991446)
,p_protection_level=>'C'
,p_last_upd_yyyymmddhh24miss=>'20190905130147'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(7972954590731184908)
,p_plug_name=>'Add Project Update'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(6781115417665890803)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(7972956305500190348)
,p_plug_name=>'Add Update'
,p_region_name=>'add_update_modal'
,p_parent_plug_id=>wwv_flow_api.id(7972954590731184908)
,p_component_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(7972955407985184911)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(6781117976757890807)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(8972392840601050532)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(6781135716305890867)
,p_plug_display_condition_type=>'NEVER'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(7972954982410184909)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(6212459901559585507)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(6781135529450890864)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:&LAST_VIEW.:&SESSION.::&DEBUG.:::'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(7972956694182190349)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(6212459901559585507)
,p_button_name=>'ADD_UPDATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(6781135529450890864)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Update'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(7972955998446184924)
,p_branch_action=>'f?p=&APP_ID.:200:&SESSION.::&DEBUG.::P200_ID,LAST_VIEW:&P93_PROJECT.,200&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_branch_comment=>'Created 30-JUL-2012 08:48 by SHAKEEB'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(7972955204385184909)
,p_name=>'P93_PROJECT'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(7972954590731184908)
,p_prompt=>'Project'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'AVAILABLE PROJECTS (HIERARCHICAL)'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'with data as (',
'    select parent_project_id, id, project',
'    from eba_proj_status',
'    where project_status not in ( select id',
'                                  from eba_proj_status_codes',
'                                  where is_closed_status = ''Y''',
'                            )',
'        and eba_proj_fw.is_edit_authorized( p_username => ''APP_USER'',',
'                                            p_project_id => id ) = ''Y''',
'',
')',
'select d, r',
'from ( select ltrim(replace(SYS_CONNECT_BY_PATH(project, '':TREESEP:''), '':TREESEP:'','' / ''), ''/ '') d,',
'           id r',
'       from data',
'       start with parent_project_id is null',
'           connect by prior id = parent_project_id',
'           order siblings by project )',
'union all',
'select ps.project d, ps.id r',
'from data ps',
'where ps.parent_project_id is not null',
'    and not exists ( select null',
'                     from data p2',
'                     where p2.id = ps.parent_project_id );'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select Project -'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(6781134744367890857)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(7972956903740190350)
,p_name=>'P93_UPDATE_TYPE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(7972954590731184908)
,p_prompt=>'Type'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select id',
'from EBA_PROJ_STATUS_UPDATE_TYPES',
'where is_active_yn = ''Y''',
'and status_update_type = ''Status'''))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'UPDATE TYPES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select status_update_type d, id r',
'from   EBA_PROJ_STATUS_UPDATE_TYPES',
'where is_active_yn = ''Y''',
'order by display_sequence'))
,p_field_template=>wwv_flow_api.id(6781134673650890856)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'5'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(7972957092945190350)
,p_name=>'P93_UPDATE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(7972954590731184908)
,p_prompt=>'Update'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>80
,p_cMaxlength=>32767
,p_cHeight=>5
,p_field_template=>wwv_flow_api.id(6781134673650890856)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'NONE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(7972961695503215876)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'add update'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'insert into EBA_PROJ_STATUS_UPDATES ',
'(project_id, status_update, update_type, include_on_status_rpt)',
'values ',
'(:P93_PROJECT, :P93_UPDATE, :P93_UPDATE_TYPE, ''Y'');',
'',
':P93_UPDATE := null;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Project Updated Added'
);
wwv_flow_api.component_end;
end;
/
