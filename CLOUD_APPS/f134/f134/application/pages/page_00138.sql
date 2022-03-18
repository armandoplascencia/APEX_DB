prompt --application/pages/page_00138
begin
--   Manifest
--     PAGE: 00138
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
 p_id=>138
,p_user_interface_id=>wwv_flow_api.id(5783577205373975152)
,p_name=>'Search'
,p_page_mode=>'MODAL'
,p_step_title=>'Search &APPLICATION_TITLE.'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_api.id(5958518907406586753)
,p_step_template=>wwv_flow_api.id(6781101375889890768)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_width=>'700'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_last_upd_yyyymmddhh24miss=>'20190905151826'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(15321854137436843257)
,p_plug_name=>'Search'
,p_region_css_classes=>'search-dialog'
,p_region_template_options=>'#DEFAULT#:t-Form--noPadding:t-Form--large:t-Form--stretchInputs:margin-top-md:margin-bottom-md:margin-left-md:margin-right-md'
,p_plug_template=>wwv_flow_api.id(6781104626075890777)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(15321854337676843259)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(15321854137436843257)
,p_button_name=>'Search'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--stretch'
,p_button_template_id=>wwv_flow_api.id(6781135529450890864)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Search'
,p_button_position=>'BODY'
,p_button_css_classes=>'search-button'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>3
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(15321854496733843260)
,p_branch_name=>'Perform Search'
,p_branch_action=>'f?p=&APP_ID.:8:&SESSION.::&DEBUG.:RP,8:P8_SEARCH,P8_PROJECT:&P138_SEARCH.,&P138_PROJECT.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15321854267042843258)
,p_name=>'P138_SEARCH'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(15321854137436843257)
,p_item_default=>'null'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Search'
,p_placeholder=>'Search projects, people, and more...'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_api.id(6781134578441890854)
,p_item_icon_css_classes=>'fa-search'
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(19239061334431424135)
,p_name=>'P138_PROJECT'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(15321854137436843257)
,p_prompt=>'Filter by Project'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'PROJECTS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select project d, id r',
'from eba_proj_status',
'order by upper(project)'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Search All Projects -'
,p_cHeight=>1
,p_colspan=>9
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_api.id(6781134578441890854)
,p_item_css_classes=>'margin-top-sm'
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(20152066070162308254)
,p_name=>'Add autocomplete off to form'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(20152066174856308255)
,p_event_id=>wwv_flow_api.id(20152066070162308254)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(''form'').attr(''autocomplete'', ''off'' );'
);
wwv_flow_api.component_end;
end;
/
