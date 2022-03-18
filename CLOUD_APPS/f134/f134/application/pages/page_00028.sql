prompt --application/pages/page_00028
begin
--   Manifest
--     PAGE: 00028
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
 p_id=>28
,p_user_interface_id=>wwv_flow_api.id(5783577205373975152)
,p_name=>'Attachments'
,p_step_title=>'Attachments'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_api.id(5956243887448595899)
,p_step_template=>wwv_flow_api.id(6781077225859890733)
,p_protection_level=>'C'
,p_help_text=>'This page shows a cards report of project attachments. Use the filter controls on the left to change the results displayed on the right.'
,p_last_upd_yyyymmddhh24miss=>'20190905080004'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(6835026816318081176)
,p_name=>'Attachments'
,p_template=>wwv_flow_api.id(6781104626075890777)
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'t-Cards--desc-3ln:t-Cards--basic:u-colors:t-Cards--displayInitials:t-Cards--3cols:t-Cards--animColorFill'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select filename card_title,',
'    apex_util.prepare_url(''f?p=''||:APP_ID||'':106:''||:APP_SESSION',
'        ||'':::106:P106_ID,P106_PROJECT_ID:''||id||'',''||project_id) card_link,',
'    null card_icon,',
'    project||decode(file_comments,null,null,'' - '')||file_comments card_text,',
'    -- ',
'    decode(NVL(f_len,0),0,null,to_char(round(f_len/1024),''999G999G999G990''))',
'        ||''K, created ''||apex_util.get_since(created)|| '' '' || lower(created_by) card_subtext,',
'    --',
'    upper(decode(instr(filename,''.'',1,2),0,',
'        decode(instr(filename,''.''),0,''AA'',substr(filename,instr(filename,''.'')+1,3)),',
'        decode(instr(filename,''.'',1,2),0,''AA'',substr(filename,instr(filename,''.'',1,2)+1,3))',
'        )) card_initials',
'from (',
'select      ',
'            f.id,',
'            f.filename,',
'            f.file_mimetype,',
'            f.file_charset,',
'            dbms_lob.getlength(f.file_blob) f_len,',
'            f.FILE_COMMENTS,',
'            f.created, ',
'            f.created_by,',
'            f.project_id,',
'            p.project',
'        from EBA_PROJ_STATUS_FILES f,',
'             eba_proj_status p',
'        where p.id = f.project_id and',
'              (:P28_SEARCH is null or ',
'               instr(upper(filename),upper(:P28_SEARCH)) > 0 or',
'               instr(upper(file_comments),upper(:P28_SEARCH)) > 0 or',
'               instr(upper(p.project),upper(:P28_SEARCH)) > 0',
'              )',
'              and',
'              (NVL(:P28_TYPE ,''0'') = ''0'' or ',
'               instr(upper(filename),''.''||upper(:P28_TYPE)) > 0',
'              )',
'              and ',
'              (NVL(:P28_CATEGORY,0 ) = 0 or p.cat_id = :P28_CATEGORY )',
'              and',
'              (NVL(:P28_CONTRIBUTOR,''0'' ) = ''0'' or f.created_by = :P28_CONTRIBUTOR  )',
'              and',
'              (NVL(:P28_STATUS ,''0'' ) = ''0'' or p.PROJECT_STATUS = :P28_STATUS   ) ',
') ILV',
'order by decode(:P28_SORT,''DATE'',to_char(created,''YYYYMMDDHH24MISS''),''x'' ) desc,',
'         decode(:P28_SORT,''SIZE'',f_len,0) desc,',
'         decode(:P28_SORT,''FILE'',filename,''x'') ,',
'         decode(:P28_SORT,''CONT'',upper(created_by),''x'') ,',
'         to_char(created,''YYYYMMDDHH24MISS'') desc'))
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(6834801944438429013)
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'0'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_item=>'P28_ROWS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6835029809277100829)
,p_query_column_id=>1
,p_column_alias=>'CARD_TITLE'
,p_column_display_sequence=>1
,p_column_heading=>'Card Title'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6835029902732100829)
,p_query_column_id=>2
,p_column_alias=>'CARD_LINK'
,p_column_display_sequence=>2
,p_column_heading=>'Card Link'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6835029986311100829)
,p_query_column_id=>3
,p_column_alias=>'CARD_ICON'
,p_column_display_sequence=>3
,p_column_heading=>'Card Icon'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6835030162599100829)
,p_query_column_id=>4
,p_column_alias=>'CARD_TEXT'
,p_column_display_sequence=>4
,p_column_heading=>'Card Text'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6835030228927100829)
,p_query_column_id=>5
,p_column_alias=>'CARD_SUBTEXT'
,p_column_display_sequence=>5
,p_column_heading=>'Card Subtext'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6835030297242100829)
,p_query_column_id=>6
,p_column_alias=>'CARD_INITIALS'
,p_column_display_sequence=>6
,p_column_heading=>'Card Initials'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(6835089986135155280)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'t-BreadcrumbRegion--useBreadcrumbTitle'
,p_plug_template=>wwv_flow_api.id(6781117976757890807)
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(8972392840601050532)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(6781135716305890867)
,p_plug_display_condition_type=>'NEVER'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(6835139670284398060)
,p_plug_name=>'Filters'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody:t-Form--stretchInputs:t-Form--labelsAbove:t-Region--hideHeader'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(6781115417665890803)
,p_plug_display_sequence=>30
,p_plug_display_point=>'REGION_POSITION_02'
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(6835141213137476270)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(6835139670284398060)
,p_button_name=>'RESET'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(6781134954745890861)
,p_button_image_alt=>'Reset'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&SESSION.::&DEBUG.:RP,&APP_PAGE_ID.,RIR::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(6835148112140577454)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(6835139670284398060)
,p_button_name=>'SEARCH'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(6781135529450890864)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Search'
,p_button_position=>'REGION_TEMPLATE_CREATE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6835140348439459907)
,p_name=>'P28_SEARCH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(6835139670284398060)
,p_prompt=>'Search'
,p_placeholder=>'Search'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>64
,p_cMaxlength=>4000
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(6781134578441890854)
,p_item_icon_css_classes=>'fa-search'
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6835140523885465725)
,p_name=>'P28_CATEGORY'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(6835139670284398060)
,p_item_default=>'0'
,p_prompt=>'Project &CAT_TITLE.'
,p_source=>'0'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'CATEGORIES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select CATEGORY display_value, ID return_value ',
'from EBA_PROJ_STATUS_CATS',
'where is_active_yn = ''Y''',
'order by display_sequence nulls last, 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- All &CAT_TITLE_PL. -'
,p_lov_null_value=>'0'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(6781134673650890856)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6835140708843467498)
,p_name=>'P28_SORT'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(6835139670284398060)
,p_item_default=>'DATE'
,p_prompt=>'Sort'
,p_source=>'DATE'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'ATTACHMENT SORT OPTIONS'
,p_lov=>'.'||wwv_flow_api.id(6835144492685550761)||'.'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(6781134673650890856)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6835140978604468944)
,p_name=>'P28_ROWS'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(6835139670284398060)
,p_item_default=>'50'
,p_prompt=>'Rows'
,p_source=>'50'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'NUMBER OF ROWS'
,p_lov=>'.'||wwv_flow_api.id(6946138101745024023)||'.'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(6781134673650890856)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'U'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6835152507890634114)
,p_name=>'P28_TYPE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(6835139670284398060)
,p_item_default=>'0'
,p_prompt=>'Type'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select e, e r',
'from (',
'select distinct',
'      upper(decode(instr(filename,''.'',1,2),0,',
'       decode(instr(filename,''.''),0,''AA'',substr(filename,instr(filename,''.'')+1,3)),',
'       decode(instr(filename,''.'',1,2),0,''AA'',substr(filename,instr(filename,''.'',1,2)+1,3))',
'       )) e',
'from   EBA_PROJ_STATUS_FILES f',
'where instr(filename,''.'') > 0',
') x',
'where LENGTH(trim(e)) = 3 and INSTR(e,''.'') = 0 and INSTR(e,''_'') = 0',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- All -'
,p_lov_null_value=>'0'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(6781134673650890856)
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6835719226530065652)
,p_name=>'P28_CONTRIBUTOR'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(6835139670284398060)
,p_item_default=>'0'
,p_prompt=>'Contributor'
,p_source=>'0'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct lower(f.created_by) display,',
'          f.created_by return',
'        from EBA_PROJ_STATUS_FILES f',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- All &CAT_TITLE_PL. -'
,p_lov_null_value=>'0'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(6781134673650890856)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6835728170064250514)
,p_name=>'P28_STATUS'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(6835139670284398060)
,p_item_default=>'0'
,p_prompt=>'Project Status'
,p_source=>'0'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'STATUS CODES WITH COUNTS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select display_value, return_value',
'from',
'(',
'select STATUS_short_desc || '' (''||count(*)||'')'' display_value, ',
'       sc.ID return_value ,',
'       sc.display_sequence',
'from EBA_PROJ_STATUS_CODES sc, eba_proj_status s',
'where is_active_yn = ''Y'' and ',
'      status_short_desc is not null and',
'      s.project_status = sc.id',
'group by sc.STATUS_short_desc, sc.id, sc. display_sequence',
'order by 3,1',
') x'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- All -'
,p_lov_null_value=>'0'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(6781134673650890856)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.component_end;
end;
/
