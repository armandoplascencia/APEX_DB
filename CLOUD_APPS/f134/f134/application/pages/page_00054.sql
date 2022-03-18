prompt --application/pages/page_00054
begin
--   Manifest
--     PAGE: 00054
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
 p_id=>54
,p_user_interface_id=>wwv_flow_api.id(5783577205373975152)
,p_name=>'Merge Projects'
,p_step_title=>'Merge Projects'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(5956243887448595899)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(7306166303644991446)
,p_protection_level=>'C'
,p_help_text=>'Select your "Project to Merge" and click the <strong>Next ></strong> button to merge the two projects. Click the <strong>Cancel</strong> button to return to the project details page.'
,p_last_upd_yyyymmddhh24miss=>'20190909132747'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(9035815145370108941)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(6781117976757890807)
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(8972392840601050532)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(6781135716305890867)
,p_plug_display_condition_type=>'NEVER'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(9035815841128114833)
,p_plug_name=>'Merge Projects'
,p_region_template_options=>'#DEFAULT#:t-Region--hiddenOverflow:t-Form--labelsAbove:t-Region--hideHeader'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(6781115417665890803)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
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
 p_id=>wwv_flow_api.id(9035818418029240622)
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
 p_id=>wwv_flow_api.id(9035818639593240625)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(6212459901559585507)
,p_button_name=>'NEXT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(6781134954745890861)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Next'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_icon_css_classes=>'fa-chevron-right'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(8148480226571766943)
,p_branch_action=>'f?p=&APP_ID.:74:&SESSION.::&DEBUG.:::'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(9035818639593240625)
,p_branch_sequence=>10
,p_save_state_before_branch_yn=>'Y'
,p_branch_comment=>'Created 02-JUL-2011 18:36 by MIKE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(9035816034118131740)
,p_name=>'P54_PRIMARY_PROJECT'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(9035815841128114833)
,p_prompt=>'Primary Project - merge into this project'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'SELECT PROJECT'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select d, r',
'from ( select ltrim(replace(SYS_CONNECT_BY_PATH(project, '':TREESEP:''), '':TREESEP:'','' / ''), ''/ '') d,',
'           id r',
'       from eba_proj_status',
'       start with parent_project_id is null',
'           connect by prior id = parent_project_id',
'           order siblings by project )',
'union all',
'select ps.project d, ps.id r',
'from eba_proj_status ps',
'where ps.parent_project_id is not null',
'    and not exists ( select null',
'                     from eba_proj_status p2',
'                     where p2.id = ps.parent_project_id );'))
,p_lov_display_null=>'YES'
,p_cSize=>80
,p_cMaxlength=>4000
,p_tag_attributes=>'style="width: 500px"'
,p_field_template=>wwv_flow_api.id(6781134673650890856)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(9035817927941233957)
,p_name=>'P54_MERGE_PROJECT'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(9035815841128114833)
,p_prompt=>'Project to Merge - project will no longer exist after merge'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select vw.d, vw.r',
'from (select ltrim(replace(SYS_CONNECT_BY_PATH(project, '':TREESEP:''), '':TREESEP:'','' / ''), ''/ '') d, id r',
'      from eba_proj_status',
'      start with parent_project_id is null',
'      connect by prior id = parent_project_id',
'      order siblings by upper(project)',
') vw',
'where vw.r in ( -- Two different children can be merged.',
'                select eps_sec.id',
'                from eba_proj_status eps_pri,',
'                    eba_proj_status eps_sec',
'                where eps_pri.id = :P54_PRIMARY_PROJECT',
'                    and eps_pri.parent_project_id is not null',
'                    and eps_sec.id != eps_pri.id',
'                    and eps_sec.parent_project_id is not null',
'                -- Two different parents can be merged.',
'                union all',
'                select eps_sec.id',
'                from eba_proj_status eps_pri,',
'                    eba_proj_status eps_sec',
'                where eps_pri.id = :P54_PRIMARY_PROJECT',
'                    and eps_pri.parent_project_id is null',
'                    and eps_sec.id != eps_pri.id',
'                    and eps_sec.parent_project_id is null',
'                -- A child of another project can be reparented into a different parent',
'                union all',
'                select eps_sec.id',
'                from eba_proj_status eps_pri,',
'                    eba_proj_status eps_sec',
'                where eps_pri.id = :P54_PRIMARY_PROJECT',
'                    and eps_pri.parent_project_id is null',
'                    and eps_pri.id != eps_sec.parent_project_id',
'                    and eps_sec.parent_project_id is not null',
'                -- A child can be merged into its own parent, perhaps?',
'                union all',
'                select eps_sec.id',
'                from eba_proj_status eps_sec',
'                where eps_sec.parent_project_id = :P54_PRIMARY_PROJECT',
'    ) or :P54_PRIMARY_PROJECT is null',
'order by upper(d)'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P54_PRIMARY_PROJECT'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>80
,p_cMaxlength=>4000
,p_tag_attributes=>'style="width: 500px;"'
,p_field_template=>wwv_flow_api.id(6781134673650890856)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_api.component_end;
end;
/
