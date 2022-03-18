prompt --application/pages/page_01000
begin
--   Manifest
--     PAGE: 01000
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
 p_id=>1000
,p_user_interface_id=>wwv_flow_api.id(14434115216807266717)
,p_name=>'Getting Started'
,p_alias=>'GETTING-STARTED'
,p_step_title=>'Getting Started'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.step-container { max-width: 768px; margin: 1.6rem auto }',
'.step-container .t-HeroRegion:not(.t-HeroRegion--featured) .t-HeroRegion-wrap { padding: 0 }',
'.t-Alert--info .t-Alert-icon { vertical-align: top }',
'.t-Alert--horizontal .t-Alert-title { line-height: 2.8rem }',
'.content-well { background: rgba(0, 0, 0, .05); border-radius: 2px; padding: 1.6rem }',
'.users-table .t-Report-report thead { display: none }',
'.users-table .t-Report-cell { padding: 0.8rem 0; font-size: 1.4rem; line-height: 1.5 }',
'.cta-button {padding: 16px 32px; font-size: 16px;}',
'.t-Card-info {',
'  margin-top: 0;',
'}',
'',
'.t-Card-desc {',
'  display: none;',
'}',
'',
'.t-Card-title {',
'  font-weight: 400;',
'}',
'.apex-item-yes-no {white-space:pre;}'))
,p_step_template=>wwv_flow_api.id(14690156334092251112)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'ALLAN'
,p_last_upd_yyyymmddhh24miss=>'20210301100151'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(8143321270974702732)
,p_plug_name=>'Default Email Address'
,p_region_css_classes=>'step-container'
,p_icon_css_classes=>'fa-number-5'
,p_region_template_options=>'#DEFAULT#:t-Alert--horizontal:t-Alert--customIcons:t-Alert--info'
,p_plug_template=>wwv_flow_api.id(14690160537466251126)
,p_plug_display_sequence=>70
,p_plug_display_point=>'BODY'
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>'Define the email address that this application will use to send emails to end-users and poll-takers.'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>'eba_qpoll_fw.get_preference_value(''FIRST_RUN'') = ''YES'''
,p_plug_display_when_cond2=>'PLSQL'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(10132937228628812694)
,p_plug_name=>'Introduction Wizard'
,p_region_css_classes=>'step-container'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(14690161967644251135)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>'eba_qpoll_fw.get_preference_value(''FIRST_RUN'') = ''YES'''
,p_plug_display_when_cond2=>'PLSQL'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(10132937098695812693)
,p_plug_name=>'Welcome to &APPLICATION_TITLE.'
,p_parent_plug_id=>wwv_flow_api.id(10132937228628812694)
,p_icon_css_classes=>'app-live-poll'
,p_region_template_options=>'t-HeroRegion--noPadding'
,p_plug_template=>wwv_flow_api.id(14690166820479251144)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_source=>'Please take a moment to complete this first time setup.'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(10132937275092812695)
,p_plug_name=>'Access Control'
,p_region_css_classes=>'step-container'
,p_icon_css_classes=>'fa-number-1'
,p_region_template_options=>'#DEFAULT#:t-Alert--horizontal:t-Alert--customIcons:t-Alert--info'
,p_plug_template=>wwv_flow_api.id(14690160537466251126)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>'<p>Access Control enables you to control the level of access users have to the application.  Your user account is automatically configured as an Administrator.</p>'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>'eba_qpoll_fw.get_preference_value(''FIRST_RUN'') = ''YES'''
,p_plug_display_when_cond2=>'PLSQL'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(10132939450657812716)
,p_plug_name=>'ACL Level'
,p_parent_plug_id=>wwv_flow_api.id(10132937275092812695)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(14690161967644251135)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(10132937418910812696)
,p_plug_name=>'Sample Data'
,p_region_css_classes=>'step-container'
,p_icon_css_classes=>'fa-number-3'
,p_region_template_options=>'#DEFAULT#:t-Alert--horizontal:t-Alert--customIcons:t-Alert--info'
,p_plug_template=>wwv_flow_api.id(14690160537466251126)
,p_plug_display_sequence=>40
,p_plug_display_point=>'BODY'
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>'Loading Sample Data will enable you to explore the functionality of the app with pre-populated sample data.'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>'eba_qpoll_fw.get_preference_value(''FIRST_RUN'') = ''YES'''
,p_plug_display_when_cond2=>'PLSQL'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(10132937536029812697)
,p_plug_name=>'Application Options'
,p_region_css_classes=>'step-container'
,p_icon_css_classes=>'fa-number-4'
,p_region_template_options=>'#DEFAULT#:t-Alert--horizontal:t-Alert--customIcons:t-Alert--info'
,p_plug_template=>wwv_flow_api.id(14690160537466251126)
,p_plug_display_sequence=>60
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'  from apex_application_build_options',
' where application_id = :APP_ID',
'   and eba_qpoll_fw.get_preference_value(''FIRST_RUN'') = ''YES'''))
,p_plug_footer=>'<p>Additional options are available, to view and set these navigate to the build option console under administration.</p>'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(10132939908502812721)
,p_name=>'Feature Configuration'
,p_parent_plug_id=>wwv_flow_api.id(10132937536029812697)
,p_template=>wwv_flow_api.id(14690161967644251135)
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--staticRowColors:t-Report--rowHighlightOff:t-Report--horizontalBorders'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'    build_option_id ID, ',
'    build_option_name build_option, ',
'    build_option_status, ',
'    apex_item.hidden(p_idx => 1, p_value => build_option_id) ||',
'    apex_item.hidden(p_idx => 2, p_value => build_option_status) ||',
'    apex_item.switch ( ',
'       p_idx => 3,',
'       p_value => build_option_status,',
'       p_on_value => ''Include'',',
'       p_on_label => ''Yes'',',
'       p_off_value => ''Exclude'',',
'       p_off_label => ''No'',',
'       p_item_id => ''BO_OPT_'' || rownum,',
'       p_item_label => apex_escape.html(build_option_name) || '': Is Enabled'',',
'       p_attributes => ''style="white-space:pre;"'') toggle_build_option,',
'    component_comment,',
'    last_updated_on updated,',
'    lower(last_updated_by) updated_by',
'from',
'    apex_application_build_options bo',
'where',
'    application_id = :APP_ID',
'order by',
'    2 asc'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(14690179856222251179)
,p_query_num_rows=>500
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(8160577760545365581)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>1
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(8160578229994365581)
,p_query_column_id=>2
,p_column_alias=>'BUILD_OPTION'
,p_column_display_sequence=>2
,p_column_heading=>'Feature'
,p_use_as_row_header=>'N'
,p_column_html_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<strong>#BUILD_OPTION#</strong><br>',
'#COMPONENT_COMMENT#'))
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(8160578626869365581)
,p_query_column_id=>3
,p_column_alias=>'BUILD_OPTION_STATUS'
,p_column_display_sequence=>3
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(8160579011495365582)
,p_query_column_id=>4
,p_column_alias=>'TOGGLE_BUILD_OPTION'
,p_column_display_sequence=>4
,p_column_heading=>'Enabled'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(8160579415907365582)
,p_query_column_id=>5
,p_column_alias=>'COMPONENT_COMMENT'
,p_column_display_sequence=>5
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(8160579834656365582)
,p_query_column_id=>6
,p_column_alias=>'UPDATED'
,p_column_display_sequence=>6
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(8160580241857365583)
,p_query_column_id=>7
,p_column_alias=>'UPDATED_BY'
,p_column_display_sequence=>7
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(10132940823061812730)
,p_plug_name=>'Users'
,p_region_css_classes=>'step-container'
,p_icon_css_classes=>'fa-number-2'
,p_region_template_options=>'#DEFAULT#:t-Alert--horizontal:t-Alert--customIcons:t-Alert--info'
,p_plug_template=>wwv_flow_api.id(14690160537466251126)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>'eba_qpoll_fw.get_preference_value(''FIRST_RUN'') = ''YES'''
,p_plug_display_when_cond2=>'PLSQL'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(10132938075261812703)
,p_name=>'Users'
,p_parent_plug_id=>wwv_flow_api.id(10132940823061812730)
,p_template=>wwv_flow_api.id(14690161967644251135)
,p_display_sequence=>10
,p_region_sub_css_classes=>'users-table'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Cards--compact:t-Cards--displayIcons:t-Cards--4cols:t-Cards--animColorFill'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    apex_util.prepare_url( ''f?p='' || :APP_ID || '':92:'' || :APP_SESSION',
'                          || ''::::P92_USERNAME,P92_ROLE,P92_SEQUENCE:''',
'                          || lower(apex_escape.html(c001)) || '','' || C002 || '','' || seq_id ) as card_link,',
'    lower(c001) as username,',
'    c002 card_subtext,',
'    case c002 ',
'        when ''Administrator'' then ''fa-user-wrench'' ',
'        when ''Contributor'' then ''fa-user-edit'' ',
'        when ''Reader'' then ''fa-user''',
'    end as card_icon,',
'    case c002 ',
'        when ''Administrator'' then ''u-color-15'' ',
'        when ''Contributor'' then ''u-color-4'' ',
'        when ''Reader'' then ''u-color-1''',
'    end as card_color,',
'    rownum,',
'    lower(c001) card_title,',
'    null card_text',
'from',
'    apex_collections',
'where',
'    collection_name = ''NEW_USERS''',
'order by n001 desc, c001'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(14690176823515251171)
,p_query_num_rows=>500
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(8160574394474365572)
,p_query_column_id=>1
,p_column_alias=>'CARD_LINK'
,p_column_display_sequence=>3
,p_column_heading=>'Card link'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(8160573623907365571)
,p_query_column_id=>2
,p_column_alias=>'USERNAME'
,p_column_display_sequence=>1
,p_column_heading=>'Username'
,p_use_as_row_header=>'N'
,p_column_html_expression=>'<a href="#CARD_LINK#" role="button" class="t-Button t-Button--icon t-Button--noUI t-Button--iconLeft"><span aria-hidden="true" class="t-Icon t-Icon--left fa #CARD_ICON#" title="#USERNAME# - #CARD_SUBTEXT#"></span>#USERNAME#</a>'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(8160573207142365571)
,p_query_column_id=>3
,p_column_alias=>'CARD_SUBTEXT'
,p_column_display_sequence=>7
,p_column_heading=>'Card subtext'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(8160572005002365568)
,p_query_column_id=>4
,p_column_alias=>'CARD_ICON'
,p_column_display_sequence=>4
,p_column_heading=>'Card icon'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(8327700199397114727)
,p_query_column_id=>5
,p_column_alias=>'CARD_COLOR'
,p_column_display_sequence=>8
,p_column_heading=>'Card color'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(8160573963664365572)
,p_query_column_id=>6
,p_column_alias=>'ROWNUM'
,p_column_display_sequence=>2
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(8160572385985365570)
,p_query_column_id=>7
,p_column_alias=>'CARD_TITLE'
,p_column_display_sequence=>5
,p_column_heading=>'Card title'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(8160572829897365570)
,p_query_column_id=>8
,p_column_alias=>'CARD_TEXT'
,p_column_display_sequence=>6
,p_column_heading=>'Card text'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(10132940903315812731)
,p_plug_name=>'Buttons'
,p_region_css_classes=>'step-container'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--noUI'
,p_plug_template=>wwv_flow_api.id(14690162135548251137)
,p_plug_display_sequence=>90
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(10144268192859072291)
,p_plug_name=>'First Time Setup Completed'
,p_region_css_classes=>'step-container'
,p_region_template_options=>'#DEFAULT#:t-Alert--wizard:t-Alert--defaultIcons:t-Alert--info'
,p_plug_template=>wwv_flow_api.id(14690160537466251126)
,p_plug_display_sequence=>80
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>'The first time setup has already been completed for &APPLICATION_TITLE..'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>'eba_qpoll_fw.get_preference_value(''FIRST_RUN'') = ''NO'''
,p_plug_display_when_cond2=>'PLSQL'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(8160575512964365575)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(10132940903315812731)
,p_button_name=>'COMPLETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(14690191013111251220)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Complete Setup'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_condition=>'eba_qpoll_fw.get_preference_value(''FIRST_RUN'') = ''YES'''
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_button_css_classes=>'cta-button'
,p_icon_css_classes=>'fa-check-circle'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(8160580947674365583)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(10144268192859072291)
,p_button_name=>'OK'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(14690191414518251222)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Continue'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:RP::'
,p_button_condition=>'eba_qpoll_fw.get_preference_value(''FIRST_RUN'') = ''NO'''
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(8160574830405365572)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(10132938075261812703)
,p_button_name=>'ADD_USER'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(14690191013111251220)
,p_button_image_alt=>'Add User'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:92:&SESSION.::&DEBUG.:RP,92::'
,p_icon_css_classes=>'fa-user-plus'
,p_button_cattributes=>'style="margin-top:10px;"'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(8160585243061365606)
,p_branch_name=>'Go To Page HOME'
,p_branch_action=>'f?p=&APP_ID.:HOME_DESKTOP:&SESSION.::&DEBUG.:RP::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(8160575512964365575)
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8143321472635702734)
,p_name=>'P1000_FROM'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(8143321270974702732)
,p_prompt=>'From Email Address'
,p_placeholder=>'live-poll@mycompany.com'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>50
,p_cMaxlength=>255
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_api.id(14690190146706251208)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8160570583454365559)
,p_name=>'P1000_ACL_CONFIG'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(10132939450657812716)
,p_item_default=>'PUBLIC_READONLY'
,p_prompt=>'Access Control Level'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'ACCESS CONTROL SCOPE'
,p_lov=>'.'||wwv_flow_api.id(16485692418758166489)||'.'
,p_field_template=>wwv_flow_api.id(14690190640308251212)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'1'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8160570964004365565)
,p_name=>'P1000_USERNAME_FORMAT'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(10132939450657812716)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Username Format'
,p_source=>'eba_qpoll_fw.get_preference_value (''USERNAME_FORMAT'')'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'USERNAME_FORMAT'
,p_lov=>'.'||wwv_flow_api.id(14723963128388029634)||'.'
,p_begin_on_new_line=>'N'
,p_display_when=>'instr(:APP_USER,''@'') > 0'
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_field_template=>wwv_flow_api.id(14690190640308251212)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'1'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8160576774755365578)
,p_name=>'P1000_LOAD_SAMPLE_YN'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(10132937418910812696)
,p_item_default=>'Y'
,p_prompt=>'Load Sample Data'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC2:Yes - Load Sample Data;Y,No - Do Not Load Sample Data;N'
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_api.id(14690190146706251208)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'1'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(8160583313548365600)
,p_name=>'Refresh Users Region on Modal Close'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(7912541685184758252)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(8160583842949365605)
,p_event_id=>wwv_flow_api.id(8160583313548365600)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(10132938075261812703)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(8160584227238365605)
,p_name=>'Refresh on edit'
,p_event_sequence=>20
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(10132938075261812703)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(8160584710875365606)
,p_event_id=>wwv_flow_api.id(8160584227238365605)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(10132938075261812703)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(8160582521376365598)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Reset User Collection'
,p_process_sql_clob=>'apex_collection.truncate_collection(p_collection_name => ''NEW_USERS'');'
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>':REQUEST = ''CC'' and apex_collection.collection_exists(p_collection_name => ''NEW_USERS'')'
,p_process_when_type=>'EXPRESSION'
,p_process_when2=>'PLSQL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(8160581301907365595)
,p_process_sequence=>20
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Create NEW_USERS Collection'
,p_process_sql_clob=>'apex_collection.create_or_truncate_collection(p_collection_name => ''NEW_USERS'');'
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'return not apex_collection.collection_exists(p_collection_name => ''NEW_USERS'');'
,p_process_when_type=>'FUNCTION_BODY'
,p_process_when2=>'PLSQL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(8160581713959365596)
,p_process_sequence=>30
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Add Current User to Collection'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'for c1 in (',
'   select role_id',
'     from APEX_APPL_ACL_ROLES ',
'    where application_id = :APP_ID ',
'      and role_name = ''Administrator''',
') loop',
'   apex_collection.add_member(',
'      p_collection_name => ''NEW_USERS'',',
'      p_c001            => lower(:APP_USER),',
'      p_n001            => c1.role_id );',
'end loop;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'apex_collection.collection_member_count(p_collection_name => ''NEW_USERS'') = 0'
,p_process_when_type=>'EXPRESSION'
,p_process_when2=>'PLSQL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(8160582135467365596)
,p_process_sequence=>40
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set Username Format based on current user''s username'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if instr(:APP_USER,''@'') > 0 then',
'    eba_qpoll_fw.set_preference_value (''USERNAME_FORMAT'',''EMAIL'');',
'else',
'    eba_qpoll_fw.set_preference_value (''USERNAME_FORMAT'',''STRING'');',
'end if;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(8160582890320365598)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Process Page Data'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    -- Enable ACL',
'    eba_qpoll_fw.set_preference_value (',
'        p_preference_name  => ''ACCESS_CONTROL_ENABLED'',',
'        p_preference_value => ''Y'' );',
'    ',
'    -- Set ACL Scope',
'    eba_qpoll_fw.set_preference_value (',
'        p_preference_name  => ''ACCESS_CONTROL_SCOPE'',',
'        p_preference_value => :P1000_ACL_CONFIG );',
'',
'    -- Define Username Preference',
'    if instr(:APP_USER,''@'') > 0 then',
'        eba_qpoll_fw.set_preference_value (',
'            p_preference_name  => ''USERNAME_FORMAT'',',
'            p_preference_value => :P1000_USERNAME_FORMAT );',
'    end if;',
'',
'    -- Add Users',
'    begin',
'       for c1 in (',
'          select c001 as username,',
'                 n001 as role_id',
'            from apex_collections',
'           where collection_name = ''NEW_USERS''',
'             and lower(c001) not in (select distinct user_name_lc',
'                                       from APEX_APPL_ACL_USERS',
'                                      where APPLICATION_ID = :APP_ID)',
'       ) loop',
'          apex_acl.add_user_role (',
'              p_application_id => :APP_ID, ',
'              p_user_name => c1.username, ',
'              p_role_id => c1.role_id );',
'       end loop;',
'    exception',
'      when others then',
'        null;',
'    end;',
'',
'    -- Get rid of the collection',
'    apex_collection.delete_collection(p_collection_name => ''NEW_USERS'');',
'',
'    -- Load Sample Data',
'    if :P1000_LOAD_SAMPLE_YN = ''Y'' then',
'        eba_qpoll.eba_qpoll_data_load;',
'    end if;',
'',
'    -- Set Build Options',
'    for i in 1..apex_application.g_f01.count',
'    loop',
'        for c1 in ( select application_id, build_option_name, build_option_status',
'                    from apex_application_build_options',
'                    where apex_application.g_f01(i) = build_option_id',
'                       and application_Id = :APP_ID)',
'        loop',
'            if c1.build_option_status != apex_application.g_f03(i) then',
'                apex_util.set_build_option_status(  p_application_id => :APP_ID,',
'                                                    p_id => apex_application.g_f01(i),',
'                                                    p_build_status => upper(apex_application.g_f03(i)) );',
'            end if;',
'        end loop;',
'    end loop;',
'',
'    -- Set Email From Address',
'    eba_qpoll_fw.set_preference_value(''NOTIFICATION_EMAIL_FROM'',lower(:P1000_FROM));',
'',
'    -- Set First Run to No',
'    eba_qpoll_fw.set_preference_value (',
'        p_preference_name  => ''FIRST_RUN'',',
'        p_preference_value => ''NO'' );',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(8160575512964365575)
,p_process_success_message=>'Access Control has been enabled, defined users have been added, and application settings have been successfully updated.'
);
wwv_flow_api.component_end;
end;
/
