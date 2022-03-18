prompt --application/pages/page_00200
begin
--   Manifest
--     PAGE: 00200
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
 p_id=>200
,p_user_interface_id=>wwv_flow_api.id(5783577205373975152)
,p_name=>'Project Details'
,p_step_title=>'&P200_PROJECT_NAME.'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(5956243887448595899)
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.js-dynamicHideShowRegion { display: none }',
'.apex-rds { visibility: hidden }',
'.completed-milestones { display: block; font-size: 11px; border-top: 1px solid rgba(0, 0, 0, .1); padding: 8px }',
'.timeline-edit-links .t-StatusList-editLink { position: absolute; right: 8px; top: 8px; font-size: 12px; line-height: 16px; float: right; padding: 4px 8px }',
'.timeline-edit-links .t-StatusList-itemBody { position: relative }',
'.timeline-edit-links .t-StatusList-item { border-bottom: 1px solid rgba(0, 0, 0, .05) }',
'.timeline-edit-links .t-StatusList-item:last-child { border-bottom: none }',
'.t-Report--cleanBorders .t-Report-colHead { border-bottom: 1px solid rgba(0, 0, 0, .05); background-color: #fcfcfc; color: #707070; font-weight: normal; padding-bottom: .8rem; padding-top: .8rem }',
'.t-Report--cleanBorders .js-stickyTableHeader.is-stuck .t-Report-colHead { border-bottom: 0; }',
'.link-comments { color: #707070; word-break: break-word; margin-top: 4px }',
'.link-comments:empty { display: none }',
'.apex-edit-pencil { vertical-align: top }',
'.project-audit-info { font-size: 11px; line-height: 16px; color: #707070; }',
'.t-Report--cleanBorders .t-Report-cell { border-top: 1px solid #F4F4F4; }',
'.updates-region .t-Region-header { border-bottom-color: transparent; }',
'.t-StatusList-itemTitle { font-size: 14px; }',
'.file-icon.fa-file-powerpoint-o,',
'.file-icon.fa-file-excel-o,',
'.file-icon.fa-file-word-o,',
'.file-icon.fa-file-pdf-o,',
'.file-icon.fa-file-image-o,',
'.file-icon.fa-file-o { padding: 4px 8px; text-align: center; color: #FFF; border-radius: 2px; }',
'.file-icon.fa-file-powerpoint-o { background-color: #D24726; }',
'.file-icon.fa-file-excel-o { background-color: #217345; }',
'.file-icon.fa-file-word-o { background-color: #2A579A; }',
'.file-icon.fa-file-pdf-o { background-color: #F40700; }',
'.file-icon.fa-file-image-o { background-color: #F6BB32; }',
'.file-icon.fa-file-o { Background-color: #A5ADB8; }',
'td[headers=ICON] { padding-right: 0; padding-left: 8px; }',
'.t-StatusList-itemTitle { margin-right: 48px; }',
'.small-profile-photo { display: block; width: 32px; height: 32px; background-size: cover; background-repeat: no-repeat; border-radius: 100%; box-shadow: 0 0 0 1px rgba(0, 0, 0, .1) inset; }',
'.t-Comments-userIcon.comment-user-has-photo {',
'    border-width: 0;',
'}',
'.t-Body-title-shrink span.project-key-badge { padding: 4px 8px; line-height: 16px; font-weight: normal; font-size: 10px; margin: 0 0 0 4px; }',
'span.project-key-badge { box-shadow: 0 0 0 1px rgba(0, 0, 0, .15) inset; background-color: rgba(0, 0, 0, .05); font-size: 14px; display: inline-block; line-height: 20px; vertical-align: top; padding: 4px 8px; border-radius: 2px; color: #707070; margi'
||'n: 2px 0; }',
'',
'.t-Badge.is-hidden {',
'    display: none;',
'}'))
,p_step_template=>wwv_flow_api.id(6781087329086890751)
,p_page_template_options=>'#DEFAULT#'
,p_help_text=>'&P200_HELP_TEXT.'
,p_last_updated_by=>'SHAKEEB'
,p_last_upd_yyyymmddhh24miss=>'20191029070736'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(6170184185846053770)
,p_name=>'Status Reports'
,p_region_name=>'projectStatusReports'
,p_template=>wwv_flow_api.id(6781115417665890803)
,p_display_sequence=>120
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_css_classes=>'js-dynamicHideShowRegion'
,p_region_sub_css_classes=>'t-Report--cleanBorders'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:js-showMaximizeButton:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--staticRowColors:t-Report--rowHighlight:t-Report--noBorders'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'    u.status_title,',
'    eba_proj_fw.format_status_report( dbms_lob.substr(u.status_update,450,1), ''Y'',:APP_ID,:APP_SESSION,u.project_id, ''N'', 400, u.id ) note_text,',
'    lower(u.update_owner) created_by,',
'    to_char(u.update_date,:APP_DATE_FORMAT) created_on,',
'    u.id,',
'    u.update_date,',
'    (select us.id from eba_proj_status_users us where upper(u.update_owner) = upper(us.username)) as user_id',
'from eba_proj_status_rpts u,',
'     eba_proj_status p',
'where u.project_id = p.id',
'  AND (  u.update_owner = lower(:APP_USER)',
'         OR',
'         (u.viewable_by = ''Submitter and Project Members''',
'               and exists ( select null',
'                            from eba_proj_user_ref rf,',
'                                eba_proj_status_users usr',
'                            where rf.project_id = p.id',
'                                and rf.user_id = usr.id',
'                                and lower(usr.username) = lower(:APP_USER)',
'                                and eba_proj_fw.is_edit_authorized( usr.username, rf.project_id ) = ''Y'' )',
'         )',
'         OR',
'         u.viewable_by = ''All''',
'      )',
'  AND ( u.project_id = :P200_ID ',
'       /* or (nvl(:P200_INC_CHILD,''N'') = ''Y''',
'            and u.project_id in (select s.id ',
'                                 from EBA_PROJ_STATUS s',
'                                 where s.parent_project_id = :P200_ID)) */',
'      )',
'order by u.update_date desc'))
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(6781122235480890822)
,p_query_num_rows=>1500
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_no_data_found=>'No status reports'
,p_query_row_count_max=>500
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
,p_required_patch=>wwv_flow_api.id(6195737494730111919)
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6173038198718085725)
,p_query_column_id=>1
,p_column_alias=>'STATUS_TITLE'
,p_column_display_sequence=>1
,p_column_heading=>'Status Title'
,p_column_link=>'f?p=&APP_ID.:120:&SESSION.::&DEBUG.:120:P120_STATUS_REPORT_ID:#ID#'
,p_column_linktext=>'#STATUS_TITLE#'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6170184694315053779)
,p_query_column_id=>2
,p_column_alias=>'NOTE_TEXT'
,p_column_display_sequence=>2
,p_column_heading=>'Status Report'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6170185495817053780)
,p_query_column_id=>3
,p_column_alias=>'CREATED_BY'
,p_column_display_sequence=>3
,p_column_heading=>'Submitted By'
,p_use_as_row_header=>'N'
,p_column_html_expression=>'<a href="f?p=&APP_ID.:137:&APP_SESSION.:::137:P137_ID:#USER_ID#">#CREATED_BY#</a>'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6170185208106053780)
,p_query_column_id=>4
,p_column_alias=>'CREATED_ON'
,p_column_display_sequence=>4
,p_column_heading=>'Submitted'
,p_use_as_row_header=>'N'
,p_column_format=>'SINCE'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_report_column_width=>180
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6170449987366157419)
,p_query_column_id=>5
,p_column_alias=>'ID'
,p_column_display_sequence=>6
,p_column_heading=>'Id'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6170185387903053780)
,p_query_column_id=>6
,p_column_alias=>'UPDATE_DATE'
,p_column_display_sequence=>5
,p_column_heading=>'Update Date'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(17313137363170353041)
,p_query_column_id=>7
,p_column_alias=>'USER_ID'
,p_column_display_sequence=>7
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(6172795097059954621)
,p_plug_name=>'Project Content'
,p_region_name=>'projectContentActions'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-LinksList--actions:t-LinksList--showIcons'
,p_plug_template=>wwv_flow_api.id(6781104626075890777)
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_list_id=>wwv_flow_api.id(6172793405258954611)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(6781129762632890837)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'eba_proj_fw.is_edit_authorized(',
'    p_username   => upper(:APP_USER),',
'    p_project_id => :P200_ID ) = ''Y'''))
,p_plug_display_when_cond2=>'PLSQL'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(6172856090806425091)
,p_name=>'Project Validations'
,p_region_name=>'view_validations'
,p_template=>wwv_flow_api.id(6781114406166890801)
,p_display_sequence=>40
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'REGION_POSITION_04'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select lower(verified_by ) verified_by, created ver_date, created, verification_comment',
'from eba_proj_status_verifications',
'where project_id = :P200_ID',
'order by created desc'))
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(6781122235480890822)
,p_query_num_rows=>4
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_no_data_found=>'no validations have been recorded'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
,p_required_patch=>wwv_flow_api.id(6173574406893658297)
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6172856286565425097)
,p_query_column_id=>1
,p_column_alias=>'VERIFIED_BY'
,p_column_display_sequence=>1
,p_column_heading=>'Verified By'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6172856596560425098)
,p_query_column_id=>2
,p_column_alias=>'VER_DATE'
,p_column_display_sequence=>3
,p_column_heading=>'Date'
,p_use_as_row_header=>'N'
,p_column_format=>'DD-MON-YYYY'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6172856391163425098)
,p_query_column_id=>3
,p_column_alias=>'CREATED'
,p_column_display_sequence=>2
,p_column_heading=>'Verified'
,p_use_as_row_header=>'N'
,p_column_format=>'SINCE'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6172856480026425098)
,p_query_column_id=>4
,p_column_alias=>'VERIFICATION_COMMENT'
,p_column_display_sequence=>4
,p_column_heading=>'Comment'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(6175188098818279587)
,p_name=>'Child Projects'
,p_template=>wwv_flow_api.id(6781115417665890803)
,p_display_sequence=>130
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_css_classes=>'js-dynamicHideShowRegion'
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Cards--compact:t-Cards--displayInitials:t-Cards--4cols:t-Cards--desc-2ln:u-colors:t-Cards--animColorFill'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select lvl,',
'   project card_title,',
'    target card_link,',
'   is_current_list_entry,',
'   image,',
'   image_attrib,',
'   image_alt,',
'   attribute1 card_text,',
'   attribute2,',
'   attribute3 card_initials,',
'   null card_subtext',
'from (',
'select  null lvl,',
'        project,',
'        apex_util.prepare_url(''f?p=&APP_ID.:200:''||:APP_SESSION',
'                              ||''::::PROJECT_CAME_FROM,P200_ID:200,''||s.id) target,',
'        null is_current_list_entry,',
'        null image,',
'        null image_attrib,',
'        null image_alt,',
'        ''Status: ''||nvl(c.status_short_desc,''unknown'')||'', Owners: ''||',
'               (   select listagg(eba_proj_fw.get_name_from_email_address(u.username),'', '') within group',
'                       (order by nvl(rf.acl_status_level,r.default_acl_status_level) desc, lower(u.username))',
'                   from eba_proj_user_ref rf,',
'                       eba_proj_status_users u,',
'                       eba_proj_roles r',
'                   where rf.project_id = s.id',
'                       and rf.user_id = u.id',
'                       and rf.role_id = r.id',
'                       and eba_proj_fw.is_edit_authorized( u.username, rf.project_id ) = ''Y'' )',
'         as attribute1,',
'       null attribute2,',
'       NVL(upper(',
'          decode(instr(s.PROJECT,'' ''),',
'                 0, ',
'                 substr(s.PROJECT,1,2),',
'                 substr(s.PROJECT,1,1)||substr(s.PROJECT,instr(s.PROJECT,'' '')+1,1)',
'           )),''CP'')  attribute3',
'from eba_proj_status s,',
'    eba_proj_status_codes c',
'where parent_project_id = :P200_ID',
'    and c.id = s.PROJECT_STATUS',
'    and ( :P200_SHOW_CLOSED_CHILDREN = ''ALL''',
'        or c.is_closed_status = ''N'' )',
'order by lower(project)',
') x'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P200_SHOW_CLOSED_CHILDREN'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(6834801944438429013)
,p_query_num_rows=>1500
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_no_data_found=>'This project has no child projects.'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
,p_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from eba_proj_status s',
'where parent_project_id = :P200_ID'))
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(12771743960155219945)
,p_query_column_id=>1
,p_column_alias=>'LVL'
,p_column_display_sequence=>1
,p_column_heading=>'Lvl'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(12771744103284219946)
,p_query_column_id=>2
,p_column_alias=>'CARD_TITLE'
,p_column_display_sequence=>2
,p_column_heading=>'Card title'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(12771744131104219947)
,p_query_column_id=>3
,p_column_alias=>'CARD_LINK'
,p_column_display_sequence=>3
,p_column_heading=>'Card link'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(12771744232529219948)
,p_query_column_id=>4
,p_column_alias=>'IS_CURRENT_LIST_ENTRY'
,p_column_display_sequence=>4
,p_column_heading=>'Is current list entry'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(12771744408072219949)
,p_query_column_id=>5
,p_column_alias=>'IMAGE'
,p_column_display_sequence=>5
,p_column_heading=>'Image'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(12771744426033219950)
,p_query_column_id=>6
,p_column_alias=>'IMAGE_ATTRIB'
,p_column_display_sequence=>6
,p_column_heading=>'Image attrib'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(12771744579634219951)
,p_query_column_id=>7
,p_column_alias=>'IMAGE_ALT'
,p_column_display_sequence=>7
,p_column_heading=>'Image alt'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(12771744623257219952)
,p_query_column_id=>8
,p_column_alias=>'CARD_TEXT'
,p_column_display_sequence=>8
,p_column_heading=>'Card text'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(12771744803184219953)
,p_query_column_id=>9
,p_column_alias=>'ATTRIBUTE2'
,p_column_display_sequence=>9
,p_column_heading=>'Attribute2'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(12771744925501219955)
,p_query_column_id=>10
,p_column_alias=>'CARD_INITIALS'
,p_column_display_sequence=>10
,p_column_heading=>'Card initials'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(12771745072967219956)
,p_query_column_id=>11
,p_column_alias=>'CARD_SUBTEXT'
,p_column_display_sequence=>11
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(6738629021365327394)
,p_plug_name=>'RDS'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(6781104626075890777)
,p_plug_display_sequence=>110
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_02'
,p_plug_source_type=>'NATIVE_DISPLAY_SELECTOR'
,p_attribute_01=>'STANDARD'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(6859406041913071521)
,p_plug_name=>'Action Items'
,p_region_name=>'projectActionItems'
,p_region_css_classes=>'js-dynamicHideShowRegion timeline-edit-links'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:js-showMaximizeButton:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(6781115417665890803)
,p_plug_display_sequence=>80
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'    x.id,',
'    x.action title,',
'    --',
'    case when x.ACTION_STATUS in (''Closed'',''Not Applicable'') then',
'            ''Black''',
'        when trunc(x.due_date) < trunc(sysdate) then',
'            ''Red''',
'        when trunc(x.due_date) = trunc(sysdate) then',
'            ''Yellow''',
'        else',
'            ''Green''',
'    end as color,',
'    --',
'    case when x.link_url is not null and x.link_text is not null and exists (select null',
'                 from apex_application_build_options',
'                where application_id = :APP_ID',
'                  and build_option_name = ''Action Item Links''',
'                  and build_option_status = ''Include'') then',
'        ''<small><a href="'' || link_url || ''" target="_blank">'' || x.link_text || ''</a></small>''',
'    end as link_text,',
'    --',
'    case when x.ACTION_STATUS in (''Closed'',''Not Applicable'') then',
'            ''Closed or N/A''',
'        when trunc(x.due_date) < trunc(sysdate) then',
'            ''Past Due''',
'        when trunc(x.due_date) = trunc(sysdate) then',
'            ''Due Today''',
'        else',
'            ''Due In The Future''',
'    end as color_label,',
'    --',
'    case when x.ACTION_STATUS = ''Closed'' then',
'            x.completed_date',
'        else',
'            x.due_date',
'    end as calendar_icon_date,',
'    --',
'    /*',
'    apex_util.prepare_url(''f?p=''||:APP_ID||'':78:''||:APP_SESSION',
'                ||'':::78:LAST_VIEW,P78_ACTION_ITEM_ID,P55_ID,P200_ID:200,''',
'                ||x.id||'',''||:P200_ID||'',''||:P200_ID) link,',
'    */',
'    apex_page.get_url(p_application => :APP_ID, p_page => 78, p_items => ''LAST_VIEW,P78_ACTION_ITEM_ID,P55_ID,P200_ID'', p_values => ''200,''||x.id||'',''||:P200_ID||'',''||:P200_ID) link,',
'    --',
'    decode(x.milestone_id,null,null,(select milestone_name m from eba_proj_status_ms j where j.id = x.milestone_id)) milestone,',
'    x.project,',
'    x.action_description,',
'    x.ACTION_STATUS status,',
'    x.due_date due_date,',
'    apex_util.get_since(x.completed_date) as completed,',
'    --',
'    case when apex_util.get_build_option_status (',
'        p_application_id => :APP_ID, ',
'        p_build_option_name => ''Mandatory Action Item Resolution'') = ''INCLUDE'' and resolution is not null then',
'        ''Resolution: '' || x.resolution',
'    else',
'        null',
'    end resolution,',
'    --',
'    apex_util.get_since(x.due_date) display_due_date,',
'    --',
'    case when x.owner_role_id is null then',
'        eba_proj_fw.get_name_from_email_address(x.action_owner_01)',
'            ||decode(x.action_owner_02,null,null,'', ''||eba_proj_fw.get_name_from_email_address(x.action_owner_02))',
'            ||decode(x.action_owner_03,null,null,'', ''||eba_proj_fw.get_name_from_email_address(x.action_owner_03))',
'            ||decode(x.action_owner_04,null,null,'', ''||eba_proj_fw.get_name_from_email_address(x.action_owner_04))',
'    else',
'        nvl(',
'          (select r.name||'': ''||listagg(decode(u.first_name,null,eba_proj_fw.get_name_from_email_address(u.username),',
'                decode(u.last_name, null, eba_proj_fw.get_name_from_email_address(u.username), ',
'                  initcap(u.first_name || '' '' || u.last_name))),'', '')',
'                within group (order by lower(u.username)) owner',
'            from eba_proj_user_ref rf,',
'                eba_proj_status_users u,',
'                eba_proj_roles r',
'            where rf.role_id = x.owner_role_id',
'                and rf.project_id = x.project_id',
'                and u.id = rf.user_id',
'                and r.id = rf.role_id',
'            group by r.name',
'        ), (select ''No ''||r.name||'' defined''',
'            from eba_proj_roles r',
'            where r.id = x.owner_role_id)',
'        )',
'    end as owner,',
'    --',
'    row_key,',
'    ''Project'' project_label,',
'    ''Status'' status_label,',
'    case when eba_proj_fw.is_edit_authorized(',
'        p_username   => upper(:APP_USER),',
'        p_project_id => :P200_ID ) = ''Y'' then',
'        ''<a href="''',
'          ||apex_util.prepare_url(',
'              p_url => ''f?p=''||:APP_ID||'':73:''||:APP_SESSION||'':::73:P73_ID:''||id,',
'              p_triggering_element => ''$(''''#projectActionItems'''')'')||''"',
'         class="t-StatusList-editLink">Edit</a>''',
'    else',
'        null',
'    end as edit_link',
'from',
'(',
'select a.id,',
'       a.row_key,',
'       a.action,',
'       a.action_description,',
'       a.due_date,',
'       a.link_url,',
'       a.link_text,',
'       a.ACTION_STATUS,',
'       a.completed_date,',
'       a.milestone_id,',
'       s.project,',
'       a.resolution,',
'       a.action_owner_01,',
'       a.action_owner_02,',
'       a.action_owner_03,',
'       a.action_owner_04,',
'       a.OWNER_ROLE_ID,',
'       a.project_id',
'from eba_proj_status_ais a,',
'     eba_proj_status s,',
'     eba_proj_status_codes c',
'where a.project_id = s.id',
'    and s.project_status = c.id(+)',
'    and ( ',
'           (',
'               :P200_SHOW_CLOSED_AIS = ''OPEN''',
'               and ',
'               upper(a.action_status) = :P200_SHOW_CLOSED_AIS',
'           )',
'        or',
'           (',
'               :P200_SHOW_CLOSED_AIS = ''ALL''',
'               and ',
'               upper(a.action_status) in (''OPEN'',''CLOSED'',''NOT APPLICABLE'')',
'           )',
'        )',
'    and (',
'            a.project_id = :P200_ID',
'            or ',
'            (a.project_id in (select ps.id from EBA_PROJ_STATUS ps where ps.parent_project_id = :P200_ID))',
'        )',
'order by a.due_date, a.action',
') x',
'where rownum < 100'))
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.TIMELINESTATUSLIST'
,p_plug_query_num_rows=>5000
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_no_data_found=>'No open Action Items found.'
,p_required_patch=>wwv_flow_api.id(11865457074067664047)
,p_attribute_01=>'DUE_DATE'
,p_attribute_02=>'COLOR'
,p_attribute_03=>'TITLE'
,p_attribute_04=>'LINK'
,p_attribute_05=>'DISPLAY_DUE_DATE'
,p_attribute_06=>'PROJECT'
,p_attribute_07=>'MILESTONE'
,p_attribute_08=>'OWNER'
,p_attribute_09=>'ACTION_DESCRIPTION'
,p_attribute_10=>'RESOLUTION'
,p_attribute_11=>'EDIT_LINK'
,p_attribute_12=>'D'
,p_attribute_13=>'STATUS'
,p_attribute_14=>'COLOR_LABEL'
,p_attribute_15=>'LINK_TEXT'
,p_plug_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 x',
'from eba_proj_status_ais a,',
'    eba_proj_status s,',
'    eba_proj_status_codes c',
'where a.project_id = s.id',
'    and s.project_status = c.id(+)',
'    and (a.action_status = ''Open''',
'        or a.due_date > (sysdate - 90) )',
'    and ( a.project_id = :P200_ID',
'        or (a.project_id in (select ps.id from EBA_PROJ_STATUS ps where ps.parent_project_id = :P200_ID)))'))
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(6859406171245071522)
,p_name=>'ID'
,p_data_type=>'NUMBER'
,p_is_visible=>true
,p_heading=>'Id'
,p_display_sequence=>10
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(6859406210003071523)
,p_name=>'TITLE'
,p_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Title'
,p_display_sequence=>20
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(6869174187100721274)
,p_name=>'COLOR'
,p_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Color'
,p_display_sequence=>30
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(6869174282107721275)
,p_name=>'LINK'
,p_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Link'
,p_display_sequence=>40
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(6869174504472721277)
,p_name=>'PROJECT'
,p_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Project'
,p_display_sequence=>60
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(6869174653339721278)
,p_name=>'ACTION_DESCRIPTION'
,p_data_type=>'CLOB'
,p_is_visible=>true
,p_heading=>'Action description'
,p_display_sequence=>70
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(6869174698824721279)
,p_name=>'STATUS'
,p_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Status'
,p_display_sequence=>80
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(6869174872772721280)
,p_name=>'DUE_DATE'
,p_data_type=>'TIMESTAMP_LTZ'
,p_is_visible=>true
,p_heading=>'Due date'
,p_display_sequence=>90
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(6869174962180721281)
,p_name=>'OWNER'
,p_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Owner'
,p_display_sequence=>100
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(6869175008912721282)
,p_name=>'ROW_KEY'
,p_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Row key'
,p_display_sequence=>110
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(12771747143201219977)
,p_name=>'PROJECT_LABEL'
,p_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Project label'
,p_display_sequence=>120
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(12771747224218219978)
,p_name=>'STATUS_LABEL'
,p_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Status label'
,p_display_sequence=>130
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(12851571255642955430)
,p_name=>'EDIT_LINK'
,p_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_display_sequence=>140
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(15321853944610843255)
,p_name=>'COLOR_LABEL'
,p_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Color label'
,p_display_sequence=>150
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(15572834590578687232)
,p_name=>'DISPLAY_DUE_DATE'
,p_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Due'
,p_display_sequence=>160
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(18175886148113760648)
,p_name=>'RESOLUTION'
,p_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Resolution'
,p_display_sequence=>170
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(18405131506874962970)
,p_name=>'LINK_TEXT'
,p_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Link text'
,p_display_sequence=>180
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(19313139980747735045)
,p_name=>'MILESTONE'
,p_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Milestone'
,p_display_sequence=>190
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(19313141068093735056)
,p_name=>'CALENDAR_ICON_DATE'
,p_data_type=>'TIMESTAMP_LTZ'
,p_is_visible=>true
,p_heading=>'Calendar icon date'
,p_display_sequence=>200
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(19313141702947735062)
,p_name=>'COMPLETED'
,p_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Completed'
,p_display_sequence=>210
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(6876982536741771680)
,p_name=>'Milestones'
,p_region_name=>'projectMilestones'
,p_template=>wwv_flow_api.id(6781115417665890803)
,p_display_sequence=>70
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_css_classes=>'js-dynamicHideShowRegion timeline-edit-links'
,p_region_sub_css_classes=>'t-Report--cleanBorders'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:js-showMaximizeButton:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--staticRowColors:t-Report--rowHighlight:t-Report--noBorders'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select n, row_type, row_type_label, row_type_icon, name, start_date, end_date, completed_date, owner,',
'    ''<span class="t-Badge t-Badge--basic t-Badge--xsmall is-''',
'        ||apex_escape.html(color_code)||'' w100p">''||apex_escape.html(status)||''</span>'' status,',
'    disp_link, edit_link, add_link, ai_link',
'from ( ',
'         select mn.milestone_number||''.0'' n,',
'            ''<strong>''||apex_escape.html(m.milestone_name)||''</strong>'' name,',
'            ''Milestone'' row_type_label,',
'            ''milestone'' row_type,',
'            case when upper(m.milestone_status) = ''OPEN'' then ''fa-flag-o''',
'                 else ''fa-flag'' end as row_type_icon,',
'            m.milestone_start_date start_date,',
'            m.milestone_date end_date,',
'            m.completed_date completed_date,',
'            case when m.owner_role_id is null then',
'                eba_proj_fw.get_name_from_email_address(m.milestone_owner)',
'            else',
'                nvl((select r.name||'': ''||listagg(decode(u.first_name,null,eba_proj_fw.get_name_from_email_address(u.username),decode(u.last_name, null, eba_proj_fw.get_name_from_email_address(u.username), initcap(u.first_name || '' '' || u.last_name))'
||'),'', '')',
'                        within group (order by lower(u.username)) owner',
'                    from eba_proj_user_ref rf,',
'                        eba_proj_status_users u,',
'                        eba_proj_roles r',
'                    where rf.role_id = m.owner_role_id',
'                        and rf.project_id = m.project_id',
'                        and u.id = rf.user_id',
'                        and r.id = rf.role_id',
'                    group by r.name',
'                ), (select ''No ''||r.name||'' defined''',
'                    from eba_proj_roles r',
'                    where r.id = m.owner_role_id)',
'                )',
'            end as owner,',
'            m.milestone_status status,',
'            m.project_id pj_id,',
'            m.id ms_id,',
'            null ai_id,',
'            case when upper(m.milestone_status) = ''OPEN'' and trunc(m.milestone_date) > trunc(sysdate) then ''success''',
'                when upper(m.milestone_status) = ''OPEN'' and trunc(m.milestone_date) = trunc(sysdate) then ''warning''',
'                when upper(m.milestone_status) = ''OPEN'' /* past due */ then ''danger''',
'                else ''complete'' end as color_code,',
'            mn.milestone_number o1,',
'            0                   o2,',
'            apex_util.prepare_url(''f?p=''||:APP_ID||'':107:''||:APP_SESSION||'':::107:P107_ID,P107_PROJECT_ID,P200_ID:''',
'                ||m.id||'',''||m.project_id||'',''||m.project_id) disp_link,',
'            apex_util.prepare_url(''f?p=''||:APP_ID||'':48:''||:APP_SESSION||'':::48:P48_ID,P48_PROJECT_ID:''||m.id||'',''||m.project_id) edit_link,',
'            case when eba_proj_fw.are_ms_ai_restricted( p_application_id => :APP_ID,',
'                                                        p_username   => upper(:APP_USER),',
'                                                        p_project_id => :P200_ID ) = ''N''',
'                    and eba_proj_stat_ui.get_authorization_level( p_username => upper(:APP_USER) ) >= 2 then',
'                ''<button type="button" class="t-Button t-Button--small t-Button--simple u-pullRight" onClick="''',
'                    ||apex_util.prepare_url(''f?p=''||:APP_ID||'':73:''||:APP_SESSION||'':::73:P73_PROJECT_ID,P73_MILESTONE_ID:''',
'                                            ||:P200_ID||'',''||m.id)||''">Add Action Item</button>''',
'             end as add_link,',
'             null as ai_link',
'        from eba_proj_status_ms m,',
'            eba_proj_status_ms_no_v mn',
'        where mn.project_id = m.project_id',
'            and mn.milestone_id = m.id',
'            and ( :P200_SHOW_CLOSED_MSS = ''ALL''',
'                or upper(m.milestone_status) = :P200_SHOW_CLOSED_MSS )',
'            and m.project_id = :P200_ID',
'    union all',
'        select mn.milestone_number||''.''||an.action_item_number n,',
'            apex_escape.html(a.action) name,',
'            ''Action Item'' row_type_label,',
'            ''action-item'' row_type,',
'            case when upper(a.action_status) = ''OPEN'' then ''icon-action-item''',
'                 else ''fa fa-check icon-action-item'' end as row_type_icon,',
'            null start_date,',
'            a.due_date end_date,',
'            a.completed_date completed_date,',
'            case when a.owner_role_id is null then',
'                eba_proj_fw.get_name_from_email_address(a.action_owner_01)',
'                    ||nvl2(a.action_owner_02,'', ''||eba_proj_fw.get_name_from_email_address(a.action_owner_02),null)',
'                    ||nvl2(a.action_owner_03,'', ''||eba_proj_fw.get_name_from_email_address(a.action_owner_03),null)',
'                    ||nvl2(a.action_owner_04,'', ''||eba_proj_fw.get_name_from_email_address(a.action_owner_04),null)',
'            else',
'                nvl((select r.name||'': ''||listagg(decode(u.first_name,null,eba_proj_fw.get_name_from_email_address(u.username),decode(u.last_name, null, eba_proj_fw.get_name_from_email_address(u.username), initcap(u.first_name || '' '' || u.last_name))'
||'),'', '')',
'                        within group (order by lower(u.username)) owner',
'                    from eba_proj_user_ref rf,',
'                        eba_proj_status_users u,',
'                        eba_proj_roles r',
'                    where rf.role_id = a.owner_role_id',
'                        and rf.project_id = a.project_id',
'                        and u.id = rf.user_id',
'                        and r.id = rf.role_id',
'                    group by r.name',
'                ), (select ''No ''||r.name||'' defined''',
'                    from eba_proj_roles r',
'                    where r.id = a.owner_role_id)',
'                )',
'            end as owner,',
'            a.action_status status,',
'            a.project_id pj_id,',
'            a.milestone_id ms_id,',
'            a.id ai_id,',
'            case when upper(a.action_status) = ''OPEN'' and trunc(a.due_date) > trunc(sysdate) then ''success''',
'                when upper(a.action_status) = ''OPEN'' and trunc(a.due_date) = trunc(sysdate) then ''warning''',
'                when upper(a.action_status) = ''OPEN'' /* past due */ then ''danger''',
'                else ''complete'' end as color_code,',
'            mn.milestone_number   o1,',
'            an.action_item_number o2,',
'            apex_util.prepare_url(''f?p=''||:APP_ID||'':78:''||:APP_SESSION||'':::107:LAST_VIEW,P78_GOTO,P78_ACTION_ITEM_ID,P55_ID,P200_ID:200,MS,''',
'                ||a.id||'',''||a.project_id||'',''||a.project_id) disp_link,',
'            apex_util.prepare_url(''f?p=''||:APP_ID||'':73:''||:APP_SESSION||'':::73:P73_ID:''||a.id) edit_link,',
'            null add_link,',
'            case when a.link_url is null then null',
'                else ''<a href="'' ||apex_escape.html(a.link_url)|| ''" target="_blank">''',
'                    ||apex_escape.html(a.link_text)|| ''</a>'' ',
'            end as ai_link',
'        from eba_proj_status_ais a,',
'            eba_proj_status_ms m,',
'            eba_proj_status_ms_no_v mn,',
'            eba_proj_status_ai_no_tbl an',
'        where mn.project_id = a.project_id',
'            and mn.milestone_id = a.milestone_id',
'            and an.project_id = a.project_id',
'            and an.action_item_id = a.id',
'            and m.project_id = a.project_id',
'            and m.id = a.milestone_id',
'            and apex_util.get_build_option_status( p_application_id => :APP_ID,',
'                                                   p_build_option_name => ''Project Action Items'') = ''INCLUDE''',
'            and ( :P200_SHOW_CLOSED_MSS = ''ALL''',
'                or (upper(m.milestone_status) = :P200_SHOW_CLOSED_MSS',
'                   and upper(a.action_status) = :P200_SHOW_CLOSED_MSS)',
'            )',
'            and nvl(:P200_HIDE_ASSOC_AIS,''N'') = ''N''',
'            and a.project_id = :P200_ID -- mike',
'    )',
'where pj_id = :P200_ID',
'    /* ( pj_id = :P200_ID',
'        or pj_id in (select ps.id from eba_proj_status ps where ps.parent_project_id = :P200_ID )',
'    ) */',
'order by o1, o2'))
,p_footer=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-StatusList-legend" style="padding: 8px; border-top: 1px solid rgba(0,0,0,.05); font-size: 11px;">',
'    <strong>Status Color Coding:</strong>',
'    <span class="t-Badge t-Badge--basic t-Badge--small is-complete">Closed</span>',
'    <span class="t-Badge t-Badge--basic t-Badge--small is-danger">Past Due</span>',
'    <span class="t-Badge t-Badge--basic t-Badge--small is-warning">Due Today</span>',
'    <span class="t-Badge t-Badge--basic t-Badge--small is-success">Due in the Future</span>',
'</div>'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(6781122235480890822)
,p_query_num_rows=>50000
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
,p_required_patch=>wwv_flow_api.id(11865439575942748770)
,p_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select m.id,',
'    m.milestone_name title,',
'    case when m.milestone_status = ''Completed'' then',
'            ''Black''',
'        when trunc(m.milestone_date) < trunc(current_date) then',
'            ''Red''',
'        when trunc(m.milestone_date) = trunc(current_date) then',
'            ''Yellow''',
'        else',
'            ''Green''',
'    end as color,',
'    case when m.milestone_status = ''Closed'' then',
'            ''Closed''',
'        when trunc(m.milestone_date) < trunc(sysdate) then',
'            ''Past Due''',
'        when trunc(m.milestone_date) = trunc(sysdate) then',
'            ''Due Today''',
'        else',
'            ''Due In The Future''',
'    end as color_label,',
'    apex_util.prepare_url(''f?p=''||:APP_ID||'':107:''||:APP_SESSION',
'        ||'':::107:P107_ID,P107_PROJECT_ID,P200_ID:''',
'        ||m.id||'',''||m.project_id||'',''||:P200_ID) link,',
'    case when :P200_INC_CHILD = ''Y'' and m.project_id <> :P200_ID then',
'            ( select p.project from eba_proj_status p where p.id = m.project_id )',
'        else',
'            null',
'    end as child_project,',
'    m.milestone_description,',
'    m.milestone_date,',
'    m.milestone_status,',
'    m.milestone_start_date,',
'    case when m.owner_role_id is null then',
'        (select ''<a href="''||apex_util.prepare_url(''f?p='' || :APP_ID || '':137:'' || :APP_SESSION || '':::137:P137_ID:'' || u.id) || ''">'' || m.milestone_owner || ''</a>''',
'           from eba_proj_status_users u',
'          where instr(upper(m.milestone_owner),upper(u.username)) > 0',
'    else',
'        nvl((select r.name||'': ''||listagg(''<a href="''||apex_util.prepare_url(''f?p='' || :APP_ID || '':137:'' || :APP_SESSION || '':::137:P137_ID:'' || u.id) || ''">'' || lower(u.username) || ''</a>'','', '')',
'                within group (order by ''<a href="''||apex_util.prepare_url(''f?p='' || :APP_ID || '':137:'' || :APP_SESSION || '':::137:P137_ID:'' || u.id) || ''">'' || lower(u.username) || ''</a>'') owner',
'            from eba_proj_user_ref rf,',
'                eba_proj_status_users u,',
'                eba_proj_roles r',
'            where rf.role_id = m.owner_role_id',
'                and rf.project_id = m.project_id',
'                and u.id = rf.user_id',
'                and r.id = rf.role_id',
'            group by r.name',
'        ),  (select ''No ''||r.name||'' defined''',
'            from eba_proj_roles r',
'            where r.id = m.owner_role_id)',
'        )',
'    end as milestone_owner,',
'    nvl((select count(*) from eba_proj_status_ais a where a.milestone_id = m.id and a.action_status = ''Open''),0)',
'        ||'' Open Action Items'' ai_open,',
'    case when eba_proj_fw.is_edit_authorized(',
'        p_username   => upper(:APP_USER),',
'        p_project_id => :P200_ID ) = ''Y'' then',
'        decode(nvl(is_major_yn,''N''),''Y'',''<b>MAJOR MILESTONE</b>'',null) || ',
'        ''<a href="''',
'          ||apex_util.prepare_url(',
'              p_url => ''f?p=''||:APP_ID||'':48:''||:APP_SESSION||'':::48:P48_ID:''||m.id,',
'              p_triggering_element => ''$(''''#projectMilestones'''')'')||''"',
'         class="t-StatusList-editLink">Edit</a>''',
'    else',
'        decode(nvl(is_major_yn,''N''),''Y'',''<b>MAJOR MILESTONE</b>'',null)',
'    end as description3',
'from eba_proj_status_ms m',
'where ( m.project_id = :P200_ID ',
'        or (nvl(:P200_INC_CHILD,''N'') = ''Y'' and ',
'            m.project_id in (select id ',
'                             from eba_proj_status s',
'                             where parent_project_id = :P200_ID))',
'      )',
'  and ( ',
'           (',
'               :P200_SHOW_CLOSED_MSS = ''OPEN''',
'               and ',
'               upper(m.milestone_status) = :P200_SHOW_CLOSED_MSS',
'           )',
'        or',
'           (',
'               :P200_SHOW_CLOSED_MSS = ''ALL''',
'               and ',
'               upper(m.milestone_status) in (''OPEN'',''CLOSED'')',
'               and',
'               m.milestone_date > (sysdate - 90)',
'           )',
'      )',
'order by milestone_date, milestone_name, id'))
);
wwv_flow_api.component_end;
end;
/
begin
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>134
,p_default_id_offset=>172493832712964115
,p_default_owner=>'MISO'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1478043008616104769)
,p_query_column_id=>1
,p_column_alias=>'N'
,p_column_display_sequence=>2
,p_column_heading=>'Item #'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1478043107526104770)
,p_query_column_id=>2
,p_column_alias=>'ROW_TYPE'
,p_column_display_sequence=>3
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1478043244388104771)
,p_query_column_id=>3
,p_column_alias=>'ROW_TYPE_LABEL'
,p_column_display_sequence=>13
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1478043365183104772)
,p_query_column_id=>4
,p_column_alias=>'ROW_TYPE_ICON'
,p_column_display_sequence=>11
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1478043424821104773)
,p_query_column_id=>5
,p_column_alias=>'NAME'
,p_column_display_sequence=>4
,p_column_heading=>'Name'
,p_use_as_row_header=>'N'
,p_column_html_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="a-MediaBlock row-#ROW_TYPE#">',
'  <div class="a-MediaBlock-graphic">',
'    <span class="t-Icon milestones-icon fa #ROW_TYPE_ICON#" aria-hidden="true"></span><span class="u-VisuallyHidden">#ROW_TYPE_LABEL#</span> ',
'  </div>',
'  <div class="a-MediaBlock-content">',
'    <a href="#DISP_LINK#">#NAME#</a>',
'    #ADD_LINK#',
'  </div>',
'</div>'))
,p_heading_alignment=>'LEFT'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1478043510974104774)
,p_query_column_id=>6
,p_column_alias=>'START_DATE'
,p_column_display_sequence=>6
,p_column_heading=>'Start'
,p_use_as_row_header=>'N'
,p_column_format=>'DD-MON-YYYY'
,p_column_css_class=>'nowrap'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1478043636572104775)
,p_query_column_id=>7
,p_column_alias=>'END_DATE'
,p_column_display_sequence=>7
,p_column_heading=>'End'
,p_use_as_row_header=>'N'
,p_column_format=>'DD-MON-YYYY'
,p_column_css_class=>'nowrap'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1478043744049104776)
,p_query_column_id=>8
,p_column_alias=>'COMPLETED_DATE'
,p_column_display_sequence=>8
,p_column_heading=>'Completed'
,p_use_as_row_header=>'N'
,p_column_format=>'DD-MON-YYYY'
,p_column_css_class=>'nowrap'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1478043821610104777)
,p_query_column_id=>9
,p_column_alias=>'OWNER'
,p_column_display_sequence=>5
,p_column_heading=>'Owner'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1478043933798104778)
,p_query_column_id=>10
,p_column_alias=>'STATUS'
,p_column_display_sequence=>9
,p_column_heading=>'Status'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1478044046599104779)
,p_query_column_id=>11
,p_column_alias=>'DISP_LINK'
,p_column_display_sequence=>10
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1478044129608104780)
,p_query_column_id=>12
,p_column_alias=>'EDIT_LINK'
,p_column_display_sequence=>1
,p_column_link=>'#EDIT_LINK#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="">'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXPRESSION'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'eba_proj_fw.is_edit_authorized(',
'    p_username   => upper(:APP_USER),',
'    p_project_id => :P200_ID ) = ''Y'''))
,p_display_when_condition2=>'PLSQL'
,p_report_column_required_role=>wwv_flow_api.id(7306166303644991446)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1478044215135104781)
,p_query_column_id=>13
,p_column_alias=>'ADD_LINK'
,p_column_display_sequence=>12
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1478044382653104782)
,p_query_column_id=>14
,p_column_alias=>'AI_LINK'
,p_column_display_sequence=>14
,p_column_heading=>'Link'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_required_patch=>wwv_flow_api.id(19245477420249490834)
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(7672571082055804287)
,p_name=>'Issues'
,p_region_name=>'projectIssues'
,p_template=>wwv_flow_api.id(6781115417665890803)
,p_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_css_classes=>'js-dynamicHideShowRegion'
,p_region_sub_css_classes=>'t-Report--cleanBorders'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:js-showMaximizeButton:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--staticRowColors:t-Report--noBorders:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select i.id,',
'    i.project_id,',
'    i.cat_id as category,',
'    i.ref_num as reference_number,',
'    i.issue,',
'    case when i.owner_role_id is null then',
'        eba_proj_fw.get_name_from_email_address(i.issue_owner)',
'    else',
'        nvl((select r.name||'': ''||listagg(decode(u.first_name,null,eba_proj_fw.get_name_from_email_address(u.username),decode(u.last_name, null, eba_proj_fw.get_name_from_email_address(u.username), initcap(u.first_name || '' '' || u.last_name))),'', '')',
'                within group (order by lower(u.username)) owner',
'            from eba_proj_user_ref rf,',
'                eba_proj_status_users u,',
'                eba_proj_roles r',
'            where rf.role_id = i.owner_role_id',
'                and rf.project_id = i.project_id',
'                and u.id = rf.user_id',
'                and r.id = rf.role_id',
'            group by r.name',
'        ), (select ''No ''||r.name||'' defined''',
'            from eba_proj_roles r',
'            where r.id = i.owner_role_id)',
'        )',
'    end as issue_owner,',
'    i.issue_level,',
'    (select u.id from eba_proj_status_users u where upper(i.created_by) = upper(u.username)) as user_id,',
'    decode(i.is_open,''Y'',''Open'',''N'',''Closed'',i.is_open) status,',
'    decode(i.link_01,null,'' '',',
'           ''<a href="''||apex_escape.html(i.link_01)',
'           ||''" target="_blank" class="t-Button t-Button--icon t-Button--small" title="''',
'           ||apex_escape.html(nvl(i.link_name_01,''Open Issue Link''))||''">''',
'           ||''<span class="t-Icon fa fa-external-link"></span></a>'') link,',
'    lower(i.created_by) created_by,',
'    i.updated,',
'    (   select project',
'        from eba_proj_status x',
'        where x.id = i.project_id) project',
'from eba_proj_status_issues i',
'where ( i.project_id = :P200_ID ',
'   /*     or (nvl(:P200_INC_CHILD,''N'') = ''Y'' and ',
'            i.project_id in (select s.id ',
'                             from eba_proj_status s',
'                             where s.parent_project_id = :P200_ID)) */',
'      )',
'  and ( ',
'           (',
'               :P200_SHOW_CLOSED_ISSUES = ''OPEN''',
'               and ',
'               i.is_open = ''Y''',
'           )',
'        or',
'           (',
'               :P200_SHOW_CLOSED_ISSUES = ''ALL''',
'               and ',
'               i.is_open in (''Y'',''N'')',
'           )',
'      )',
'order by issue_level, upper(issue), i.updated desc'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(6781122235480890822)
,p_query_num_rows=>1500
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_no_data_found=>'No open Issues found.'
,p_query_row_count_max=>500
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
,p_required_patch=>wwv_flow_api.id(7672710716776835218)
,p_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from EBA_PROJ_STATUS_ISSUES l',
'where ( l.project_id = :P200_ID ',
'        or (nvl(:P200_INC_CHILD,''N'') = ''Y'' and ',
'            l.project_id in (select s.id ',
'                             from EBA_PROJ_STATUS s',
'                             where s.parent_project_id = :P200_ID))',
'    )'))
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(7673304238927998829)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>1
,p_column_heading=>'<span class="u-VisuallyHidden">Edit</span>'
,p_column_link=>'f?p=&APP_ID.:24:&SESSION.::&DEBUG.:RP,24:P24_ID,P24_PROJECT_ID:#ID#,#PROJECT_ID#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="">'
,p_column_alignment=>'CENTER'
,p_display_when_cond_type=>'EXPRESSION'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'eba_proj_fw.is_edit_authorized(',
'    p_username   => upper(:APP_USER),',
'    p_project_id => :P200_ID ) = ''Y'''))
,p_display_when_condition2=>'PLSQL'
,p_report_column_required_role=>wwv_flow_api.id(7306166303644991446)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(7672571396663804295)
,p_query_column_id=>2
,p_column_alias=>'PROJECT_ID'
,p_column_display_sequence=>3
,p_column_heading=>'Project ID'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3945327159323585391)
,p_query_column_id=>3
,p_column_alias=>'CATEGORY'
,p_column_display_sequence=>5
,p_column_heading=>'Category'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_api.id(4036494858285212916)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_required_patch=>wwv_flow_api.id(4036491964090119980)
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3945327209314585392)
,p_query_column_id=>4
,p_column_alias=>'REFERENCE_NUMBER'
,p_column_display_sequence=>6
,p_column_heading=>'Reference Identifier'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_required_patch=>wwv_flow_api.id(4036492193169131049)
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(7672657465968816079)
,p_query_column_id=>5
,p_column_alias=>'ISSUE'
,p_column_display_sequence=>4
,p_column_heading=>'Issue'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(7672657975404816080)
,p_query_column_id=>6
,p_column_alias=>'ISSUE_OWNER'
,p_column_display_sequence=>7
,p_column_heading=>'Owner'
,p_use_as_row_header=>'N'
,p_column_html_expression=>'<a href="f?p=&APP_ID.:137:&APP_SESSION.:::137:P137_ID:#USER_ID#">#ISSUE_OWNER#</a>'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(7672658314970816080)
,p_query_column_id=>7
,p_column_alias=>'ISSUE_LEVEL'
,p_column_display_sequence=>8
,p_column_heading=>'Level'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_api.id(228697740287420773)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(17313137155082353039)
,p_query_column_id=>8
,p_column_alias=>'USER_ID'
,p_column_display_sequence=>13
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(19974070970265191832)
,p_query_column_id=>9
,p_column_alias=>'STATUS'
,p_column_display_sequence=>9
,p_column_heading=>'Status'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(12851634414442955462)
,p_query_column_id=>10
,p_column_alias=>'LINK'
,p_column_display_sequence=>12
,p_column_heading=>'<span class="u-VisuallyHidden">Issue Link</span>'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_report_column_width=>32
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(7672572565201804297)
,p_query_column_id=>11
,p_column_alias=>'CREATED_BY'
,p_column_display_sequence=>10
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(7674097330114376668)
,p_query_column_id=>12
,p_column_alias=>'UPDATED'
,p_column_display_sequence=>11
,p_column_heading=>'Updated'
,p_use_as_row_header=>'N'
,p_column_format=>'SINCE'
,p_heading_alignment=>'LEFT'
,p_report_column_width=>180
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(7672573735431804298)
,p_query_column_id=>13
,p_column_alias=>'PROJECT'
,p_column_display_sequence=>2
,p_hidden_column=>'Y'
,p_display_when_cond_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_display_when_condition=>'P200_INC_CHILD'
,p_display_when_condition2=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(7850657692478246056)
,p_name=>'Project Header'
,p_template=>wwv_flow_api.id(6781104626075890777)
,p_display_sequence=>100
,p_region_css_classes=>'flex_projects'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-AVPList--leftAligned'
,p_display_point=>'REGION_POSITION_02'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select s.project,',
'    s.id,',
'    s.project_start_date,',
'    s.project_customer as customer,',
'    s.parent_project_id,',
'    s.deal_type_id as deal_type,',
'    nvl(s.restrict_ms_ai_management,''N'') as prevent_changes,',
'    decode(s.parent_project_id,null,null,',
'        (   select project',
'            from eba_proj_status p',
'            where p.id = s.parent_project_id )) parent_project_name,',
'    (   select count(*)',
'        from eba_proj_status p',
'        where p.parent_project_id = s.id ) child_projects,',
'    s.tags,',
'    ''<a href="''||apex_escape.html(url)||''">''||apex_escape.html(substr(s.url,1,120))||''</a>'' url,',
'    replace(apex_escape.html(s.description),chr(10),''<br>'') as description,',
'    --',
'    (   select category',
'        from eba_proj_status_cats pc',
'        where s.cat_id = pc.id ) category,',
'    replace(apex_escape.html(trim(s.goal)),chr(10),''<br>'') as goal,',
'    apex_escape.html(nvl((  select status_short_desc',
'                            from eba_proj_status_codes c',
'                            where c.id = s.project_status),',
'                        ''unknown'')) project_status,',
'    apex_escape.html(nvl((  select cc.color_code',
'                            from eba_proj_color_codes cc',
'                            where c.color_code_id = cc.id),',
'                        ''#777'')) project_color,',
'    s.project_flex_n01,',
'    s.project_flex_n02,',
'    s.project_flex_n03,',
'    s.project_flex_n04,',
'    s.project_flex_d01,',
'    s.project_flex_d02,',
'    s.project_flex_d03,',
'    s.project_flex_d04,',
'    s.project_flex_d05,',
'    s.project_flex_d06,',
'    s.project_flex_d07,',
'    s.project_flex_d08,',
'    s.project_flex_d09,',
'    s.project_flex_d10,',
'    s.project_flex_d11,',
'    s.project_flex_d12,',
'    s.project_flex_01,',
'    s.project_flex_02,',
'    s.project_flex_03,',
'    s.project_flex_04,',
'    s.project_flex_05,',
'    s.project_flex_06,',
'    s.project_flex_07,',
'    s.project_flex_08,',
'    s.project_flex_clob,',
'    s.acl_status_level,',
'    ( select sz.project_size from eba_proj_status_sizes sz where sz.id = s.size_id ) project_size,',
'    s.updated,',
'    eba_proj_fw.get_name_from_email_address(s.updated_by) updated_by,',
'    s.headline,',
'    s.requesting_team,',
'    s.impacted_environment,',
'    s.created,',
'    eba_proj_fw.get_name_from_email_address(s.created_by) created_by',
'from eba_proj_status s, eba_proj_status_codes c',
'where s.id = :P200_ID',
'    and c.id = s.project_status(+)',
'order by 1',
''))
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(6781124130846890827)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'0'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'0'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_prn_format=>'PDF'
,p_prn_output_show_link=>'Y'
,p_prn_output_link_text=>'Print'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width_units=>'PERCENTAGE'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#9bafde'
,p_prn_header_font_color=>'#ffffff'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'normal'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#efefef'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6096757290900127300)
,p_query_column_id=>1
,p_column_alias=>'PROJECT'
,p_column_display_sequence=>1
,p_column_heading=>'Project'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(7850657895142246057)
,p_query_column_id=>2
,p_column_alias=>'ID'
,p_column_display_sequence=>2
,p_column_heading=>'ID'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(4402850072124412402)
,p_query_column_id=>3
,p_column_alias=>'PROJECT_START_DATE'
,p_column_display_sequence=>13
,p_column_heading=>'Project Start Date'
,p_use_as_row_header=>'N'
,p_column_format=>'DD-MON-YYYY'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from eba_proj_status s',
'where s.id = :P200_ID and project_start_date is not null'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(7850657997405246059)
,p_query_column_id=>4
,p_column_alias=>'CUSTOMER'
,p_column_display_sequence=>6
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(7850658098019246059)
,p_query_column_id=>5
,p_column_alias=>'PARENT_PROJECT_ID'
,p_column_display_sequence=>18
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18405131171088962967)
,p_query_column_id=>6
,p_column_alias=>'DEAL_TYPE'
,p_column_display_sequence=>5
,p_column_heading=>'Deal Type'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'  from eba_proj_status',
' where id = :P200_ID',
'   and deal_type_id is not null',
'   and exists (select null ',
'                 from eba_proj_deal_types',
'                where is_active_yn = ''Y'')',
'   and exists (select null',
'                 from apex_application_build_options',
'                where application_id = :APP_ID',
'                  and build_option_name = ''Project Deal Types''',
'                  and build_option_status = ''Include'')'))
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_api.id(19267269827873371215)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(17635524779599690861)
,p_query_column_id=>7
,p_column_alias=>'PREVENT_CHANGES'
,p_column_display_sequence=>9
,p_column_heading=>'Prevent Changes'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'  from eba_proj_status',
' where id = :P200_ID',
'   and RESTRICT_MS_AI_MANAGEMENT = ''Y'''))
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_api.id(9019252630556871632)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(7850658203980246059)
,p_query_column_id=>8
,p_column_alias=>'PARENT_PROJECT_NAME'
,p_column_display_sequence=>3
,p_hidden_column=>'Y'
,p_display_when_cond_type=>'ITEM_IS_NOT_NULL'
,p_display_when_condition=>'P200_PARENT_PROJECT_ID'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(7850658280137246059)
,p_query_column_id=>9
,p_column_alias=>'CHILD_PROJECTS'
,p_column_display_sequence=>19
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(7850658503662246059)
,p_query_column_id=>10
,p_column_alias=>'TAGS'
,p_column_display_sequence=>16
,p_column_heading=>'Tags'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from eba_proj_status s',
'where s.id = :P200_ID and tags is not null'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6090717908096740175)
,p_query_column_id=>11
,p_column_alias=>'URL'
,p_column_display_sequence=>20
,p_column_heading=>'URL'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from eba_proj_status s',
'where s.id = :P200_ID and url is not null'))
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(5858640505746184423)
,p_query_column_id=>12
,p_column_alias=>'DESCRIPTION'
,p_column_display_sequence=>11
,p_column_heading=>'Description'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from eba_proj_status s',
'where s.id = :P200_ID and description is not null'))
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(7850658610617246059)
,p_query_column_id=>13
,p_column_alias=>'CATEGORY'
,p_column_display_sequence=>4
,p_column_heading=>'&CAT_TITLE.'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null from eba_proj_status s',
'where s.id = :P200_ID and cat_id is not null'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(7850658879991246059)
,p_query_column_id=>14
,p_column_alias=>'GOAL'
,p_column_display_sequence=>12
,p_column_heading=>'Goal'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from eba_proj_status s',
'where s.id = :P200_ID and goal is not null'))
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(7850658998477246059)
,p_query_column_id=>15
,p_column_alias=>'PROJECT_STATUS'
,p_column_display_sequence=>7
,p_column_heading=>'Status'
,p_use_as_row_header=>'N'
,p_column_html_expression=>'<span class="proj-status-color" style="background-color: #PROJECT_COLOR#"></span><span class="proj-status-label">#PROJECT_STATUS#</span>'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6176232292813447080)
,p_query_column_id=>16
,p_column_alias=>'PROJECT_COLOR'
,p_column_display_sequence=>21
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6255260808386553836)
,p_query_column_id=>17
,p_column_alias=>'PROJECT_FLEX_N01'
,p_column_display_sequence=>22
,p_column_heading=>'Number'
,p_use_as_row_header=>'N'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>'select null from eba_proj_flex_registry where flexible_table = ''EBA_PROJ_STATUS'' and flexible_column = ''PROJECT_FLEX_N01'' and active_yn = ''Y'' and assigned_yn = ''Y'''
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_inline_lov=>'STATIC2(~,*):1*1~2*2~3*3~4*4~5*5~6*6~7*7~8*8~9*9~99*99'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_required_patch=>wwv_flow_api.id(6252446509804687380)
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6255260894754553841)
,p_query_column_id=>18
,p_column_alias=>'PROJECT_FLEX_N02'
,p_column_display_sequence=>23
,p_column_heading=>'Test Select'
,p_use_as_row_header=>'N'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>'select null from eba_proj_flex_registry where flexible_table = ''EBA_PROJ_STATUS'' and flexible_column = ''PROJECT_FLEX_N02'' and active_yn = ''Y'' and assigned_yn = ''Y'''
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_inline_lov=>'STATIC2(~,*):111*111~111*111~1*1~111*111~11111*11111~1*1~11*11~11*11~11*11~1111*1111'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_required_patch=>wwv_flow_api.id(6252446509804687380)
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6255260983137553841)
,p_query_column_id=>19
,p_column_alias=>'PROJECT_FLEX_N03'
,p_column_display_sequence=>24
,p_column_heading=>'Project Flex N03'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'from eba_proj_flex_registry',
'where flexible_table = ''EBA_PROJ_STATUS''',
'    and flexible_column = ''PROJECT_FLEX_N03''',
'    and active_yn = ''Y''',
'    and assigned_yn = ''Y'''))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_required_patch=>wwv_flow_api.id(6252446509804687380)
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6255261093098553841)
,p_query_column_id=>20
,p_column_alias=>'PROJECT_FLEX_N04'
,p_column_display_sequence=>25
,p_column_heading=>'Project Flex N04'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'from eba_proj_flex_registry',
'where flexible_table = ''EBA_PROJ_STATUS''',
'    and flexible_column = ''PROJECT_FLEX_N04''',
'    and active_yn = ''Y''',
'    and assigned_yn = ''Y'''))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_required_patch=>wwv_flow_api.id(6252446509804687380)
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6255261181727553841)
,p_query_column_id=>21
,p_column_alias=>'PROJECT_FLEX_D01'
,p_column_display_sequence=>26
,p_column_heading=>'testingg'
,p_use_as_row_header=>'N'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>'select null from eba_proj_flex_registry where flexible_table = ''EBA_PROJ_STATUS'' and flexible_column = ''PROJECT_FLEX_D01'' and active_yn = ''Y'' and assigned_yn = ''Y'''
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_required_patch=>wwv_flow_api.id(6252446509804687380)
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6255261282475553841)
,p_query_column_id=>22
,p_column_alias=>'PROJECT_FLEX_D02'
,p_column_display_sequence=>27
,p_column_heading=>'hhhh'
,p_use_as_row_header=>'N'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>'select null from eba_proj_flex_registry where flexible_table = ''EBA_PROJ_STATUS'' and flexible_column = ''PROJECT_FLEX_D02'' and active_yn = ''Y'' and assigned_yn = ''Y'''
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_required_patch=>wwv_flow_api.id(6252446509804687380)
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6255261398197553841)
,p_query_column_id=>23
,p_column_alias=>'PROJECT_FLEX_D03'
,p_column_display_sequence=>28
,p_column_heading=>'yyyy'
,p_use_as_row_header=>'N'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>'select null from eba_proj_flex_registry where flexible_table = ''EBA_PROJ_STATUS'' and flexible_column = ''PROJECT_FLEX_D03'' and active_yn = ''Y'' and assigned_yn = ''Y'''
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_required_patch=>wwv_flow_api.id(6252446509804687380)
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6255261493898553841)
,p_query_column_id=>24
,p_column_alias=>'PROJECT_FLEX_D04'
,p_column_display_sequence=>29
,p_column_heading=>'ssss'
,p_use_as_row_header=>'N'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>'select null from eba_proj_flex_registry where flexible_table = ''EBA_PROJ_STATUS'' and flexible_column = ''PROJECT_FLEX_D04'' and active_yn = ''Y'' and assigned_yn = ''Y'''
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_required_patch=>wwv_flow_api.id(6252446509804687380)
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(4112882985049300474)
,p_query_column_id=>25
,p_column_alias=>'PROJECT_FLEX_D05'
,p_column_display_sequence=>30
,p_column_heading=>'Project flex d05'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'from eba_proj_flex_registry',
'where flexible_table = ''EBA_PROJ_STATUS''',
'    and flexible_column = ''PROJECT_FLEX_D05''',
'    and active_yn = ''Y''',
'    and assigned_yn = ''Y'''))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(4112883029373300475)
,p_query_column_id=>26
,p_column_alias=>'PROJECT_FLEX_D06'
,p_column_display_sequence=>31
,p_column_heading=>'Project flex d06'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'from eba_proj_flex_registry',
'where flexible_table = ''EBA_PROJ_STATUS''',
'    and flexible_column = ''PROJECT_FLEX_D06''',
'    and active_yn = ''Y''',
'    and assigned_yn = ''Y'''))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.component_end;
end;
/
begin
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>134
,p_default_id_offset=>172493832712964115
,p_default_owner=>'MISO'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(4112883154175300476)
,p_query_column_id=>27
,p_column_alias=>'PROJECT_FLEX_D07'
,p_column_display_sequence=>32
,p_column_heading=>'Project flex d07'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'from eba_proj_flex_registry',
'where flexible_table = ''EBA_PROJ_STATUS''',
'    and flexible_column = ''PROJECT_FLEX_D07''',
'    and active_yn = ''Y''',
'    and assigned_yn = ''Y'''))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(4112883275803300477)
,p_query_column_id=>28
,p_column_alias=>'PROJECT_FLEX_D08'
,p_column_display_sequence=>33
,p_column_heading=>'Project flex d08'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'from eba_proj_flex_registry',
'where flexible_table = ''EBA_PROJ_STATUS''',
'    and flexible_column = ''PROJECT_FLEX_D08''',
'    and active_yn = ''Y''',
'    and assigned_yn = ''Y'''))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(4112883399494300478)
,p_query_column_id=>29
,p_column_alias=>'PROJECT_FLEX_D09'
,p_column_display_sequence=>34
,p_column_heading=>'Project flex d09'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'from eba_proj_flex_registry',
'where flexible_table = ''EBA_PROJ_STATUS''',
'    and flexible_column = ''PROJECT_FLEX_D09''',
'    and active_yn = ''Y''',
'    and assigned_yn = ''Y'''))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(4112883416820300479)
,p_query_column_id=>30
,p_column_alias=>'PROJECT_FLEX_D10'
,p_column_display_sequence=>35
,p_column_heading=>'Project flex d10'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'from eba_proj_flex_registry',
'where flexible_table = ''EBA_PROJ_STATUS''',
'    and flexible_column = ''PROJECT_FLEX_D10''',
'    and active_yn = ''Y''',
'    and assigned_yn = ''Y'''))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(4112883514173300480)
,p_query_column_id=>31
,p_column_alias=>'PROJECT_FLEX_D11'
,p_column_display_sequence=>36
,p_column_heading=>'Project flex d11'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'from eba_proj_flex_registry',
'where flexible_table = ''EBA_PROJ_STATUS''',
'    and flexible_column = ''PROJECT_FLEX_D11''',
'    and active_yn = ''Y''',
'    and assigned_yn = ''Y'''))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(4112883670543300481)
,p_query_column_id=>32
,p_column_alias=>'PROJECT_FLEX_D12'
,p_column_display_sequence=>37
,p_column_heading=>'Project flex d12'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'from eba_proj_flex_registry',
'where flexible_table = ''EBA_PROJ_STATUS''',
'    and flexible_column = ''PROJECT_FLEX_D12''',
'    and active_yn = ''Y''',
'    and assigned_yn = ''Y'''))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6255261704936555361)
,p_query_column_id=>33
,p_column_alias=>'PROJECT_FLEX_01'
,p_column_display_sequence=>38
,p_column_heading=>'lov'
,p_use_as_row_header=>'N'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>'select null from eba_proj_flex_registry where flexible_table = ''EBA_PROJ_STATUS'' and flexible_column = ''PROJECT_FLEX_01'' and active_yn = ''Y'' and assigned_yn = ''Y'''
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_inline_lov=>'STATIC2(~,*):1*1~2*2~3*3~4*4~5*5~6*6'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_required_patch=>wwv_flow_api.id(6252446509804687380)
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6255261804544555363)
,p_query_column_id=>34
,p_column_alias=>'PROJECT_FLEX_02'
,p_column_display_sequence=>39
,p_column_heading=>'text flex'
,p_use_as_row_header=>'N'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>'select null from eba_proj_flex_registry where flexible_table = ''EBA_PROJ_STATUS'' and flexible_column = ''PROJECT_FLEX_02'' and active_yn = ''Y'' and assigned_yn = ''Y'''
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_inline_lov=>'select state_name d, st r from DEMO_STATES'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_required_patch=>wwv_flow_api.id(6252446509804687380)
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6255261888709555363)
,p_query_column_id=>35
,p_column_alias=>'PROJECT_FLEX_03'
,p_column_display_sequence=>40
,p_column_heading=>'Project Flex 03'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'from eba_proj_flex_registry',
'where flexible_table = ''EBA_PROJ_STATUS''',
'    and flexible_column = ''PROJECT_FLEX_03''',
'    and active_yn = ''Y''',
'    and assigned_yn = ''Y'''))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_required_patch=>wwv_flow_api.id(6252446509804687380)
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6255261998311555363)
,p_query_column_id=>36
,p_column_alias=>'PROJECT_FLEX_04'
,p_column_display_sequence=>41
,p_column_heading=>'Project Flex 04'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'from eba_proj_flex_registry',
'where flexible_table = ''EBA_PROJ_STATUS''',
'    and flexible_column = ''PROJECT_FLEX_04''',
'    and active_yn = ''Y''',
'    and assigned_yn = ''Y'''))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_required_patch=>wwv_flow_api.id(6252446509804687380)
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6255262107406555363)
,p_query_column_id=>37
,p_column_alias=>'PROJECT_FLEX_05'
,p_column_display_sequence=>42
,p_column_heading=>'Project Flex 05'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'from eba_proj_flex_registry',
'where flexible_table = ''EBA_PROJ_STATUS''',
'    and flexible_column = ''PROJECT_FLEX_05''',
'    and active_yn = ''Y''',
'    and assigned_yn = ''Y'''))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_required_patch=>wwv_flow_api.id(6252446509804687380)
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6255262186282555363)
,p_query_column_id=>38
,p_column_alias=>'PROJECT_FLEX_06'
,p_column_display_sequence=>43
,p_column_heading=>'Project Flex 06'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'from eba_proj_flex_registry',
'where flexible_table = ''EBA_PROJ_STATUS''',
'    and flexible_column = ''PROJECT_FLEX_06''',
'    and active_yn = ''Y''',
'    and assigned_yn = ''Y'''))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_required_patch=>wwv_flow_api.id(6252446509804687380)
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6255262283153555363)
,p_query_column_id=>39
,p_column_alias=>'PROJECT_FLEX_07'
,p_column_display_sequence=>44
,p_column_heading=>'Project Flex 07'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'from eba_proj_flex_registry',
'where flexible_table = ''EBA_PROJ_STATUS''',
'    and flexible_column = ''PROJECT_FLEX_07''',
'    and active_yn = ''Y''',
'    and assigned_yn = ''Y'''))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_required_patch=>wwv_flow_api.id(6252446509804687380)
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6255262396289555363)
,p_query_column_id=>40
,p_column_alias=>'PROJECT_FLEX_08'
,p_column_display_sequence=>45
,p_column_heading=>'Project Flex 08'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'from eba_proj_flex_registry',
'where flexible_table = ''EBA_PROJ_STATUS''',
'    and flexible_column = ''PROJECT_FLEX_08''',
'    and active_yn = ''Y''',
'    and assigned_yn = ''Y'''))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_required_patch=>wwv_flow_api.id(6252446509804687380)
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6255262505004555363)
,p_query_column_id=>41
,p_column_alias=>'PROJECT_FLEX_CLOB'
,p_column_display_sequence=>46
,p_column_heading=>'Large'
,p_use_as_row_header=>'N'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>'select null from eba_proj_flex_registry where flexible_table = ''EBA_PROJ_STATUS'' and flexible_column = ''PROJECT_FLEX_CLOB'' and active_yn = ''Y'' and assigned_yn = ''Y'''
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_required_patch=>wwv_flow_api.id(6252446509804687380)
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(11854916555456688330)
,p_query_column_id=>42
,p_column_alias=>'ACL_STATUS_LEVEL'
,p_column_display_sequence=>8
,p_column_heading=>'Access Control'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_api.id(11154171524619972300)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(12093255035374299467)
,p_query_column_id=>43
,p_column_alias=>'PROJECT_SIZE'
,p_column_display_sequence=>17
,p_column_heading=>'Project Size'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'from eba_proj_status prj',
'where prj.id = :P200_ID',
'    and prj.size_id is not null',
'    and exists (select null',
'                from apex_application_build_options',
'                where application_id = :APP_ID',
'                    and build_option_name = ''Project Sizes''',
'                    and build_option_status = ''Include'')'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(17040873784930774048)
,p_query_column_id=>44
,p_column_alias=>'UPDATED'
,p_column_display_sequence=>48
,p_column_heading=>'Last Updated'
,p_use_as_row_header=>'N'
,p_column_format=>'SINCE'
,p_column_html_expression=>'#UPDATED# by #UPDATED_BY# <button type="button" class="t-Button t-Button--icon t-Button--small t-Button--iconRight" onclick="f?p=&APP_ID.:202:&APP_SESSION.:::RP:P202_ID:#ID#"><span class="t-Button-label">View Recent History</span><span class="t-Icon '
||'t-Icon--right fa fa-external-link" aria-hidden="true"></span></button>'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(17040873826184774049)
,p_query_column_id=>45
,p_column_alias=>'UPDATED_BY'
,p_column_display_sequence=>49
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(2760163864637015478)
,p_query_column_id=>46
,p_column_alias=>'HEADLINE'
,p_column_display_sequence=>10
,p_column_heading=>'Headline'
,p_use_as_row_header=>'N'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null from eba_proj_status s',
'where s.id = :P200_ID and headline is not null'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_required_patch=>wwv_flow_api.id(2770584289789526386)
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(2760163915378015479)
,p_query_column_id=>47
,p_column_alias=>'REQUESTING_TEAM'
,p_column_display_sequence=>14
,p_column_heading=>'Requesting Team'
,p_use_as_row_header=>'N'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null from eba_proj_status s',
'where s.id = :P200_ID and requesting_team is not null'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_required_patch=>wwv_flow_api.id(2770586391043537687)
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(2760164024170015480)
,p_query_column_id=>48
,p_column_alias=>'IMPACTED_ENVIRONMENT'
,p_column_display_sequence=>15
,p_column_heading=>'Impacted Environment'
,p_use_as_row_header=>'N'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null from eba_proj_status s',
'where s.id = :P200_ID and impacted_environment is not null'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_required_patch=>wwv_flow_api.id(2770586993360548656)
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3945324580389585365)
,p_query_column_id=>49
,p_column_alias=>'CREATED'
,p_column_display_sequence=>47
,p_column_heading=>'Created'
,p_use_as_row_header=>'N'
,p_column_format=>'SINCE'
,p_column_html_expression=>'#CREATED# by #CREATED_BY# '
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3945324674455585366)
,p_query_column_id=>50
,p_column_alias=>'CREATED_BY'
,p_column_display_sequence=>50
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(7850660011671246063)
,p_name=>'Links'
,p_region_name=>'projectLinks'
,p_template=>wwv_flow_api.id(6781115417665890803)
,p_display_sequence=>100
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_css_classes=>'js-dynamicHideShowRegion'
,p_region_sub_css_classes=>'t-Report--cleanBorders'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:js-showMaximizeButton:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--staticRowColors:t-Report--rowHighlight:t-Report--noBorders'
,p_region_attributes=>'style="display: none;"'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'    ilv.edit,',
'    ilv.project_id,',
'    nvl(ilv.link_text, ilv.LINK_TARGET) link_text,',
'    decode( nvl(ilv.gold_yn, ''N''), ''N'', null, ''Y'', ''Gold'') as gold_label,',
'    decode( nvl(ilv.gold_yn, ''N''), ''N'', ''is-hidden'', ''Y'', ''is-warning'') as gold_class,',
'    ilv.LINK_TARGET,',
'    eba_proj_fw.get_name_from_email_address(ilv.created_by) created_by,',
'    ilv.created,',
'    ilv.link_comments,',
'    null link,',
'    --',
'    (   select project',
'        from eba_proj_status x',
'        where x.id = project_id) project,',
'    --',
'    apex_util.prepare_url( eba_proj_fw.profile_url(created_by) ) as profile_url',
'from ',
'(',
'select',
'    l.id edit,',
'    l.project_id,',
'    l.LINK_TEXT,',
'    l.LINK_TARGET,',
'    l.gold_yn,',
'    created_by,',
'    l.created,',
'    l.link_comments',
'from eba_proj_status_links l',
'where l.project_id = :P200_ID',
'order by nvl(l.gold_yn, ''N'') desc, l.created desc',
') ilv',
'where rownum <= 50'))
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(6781122235480890822)
,p_query_num_rows=>50
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No links'
,p_query_row_count_max=>500
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
,p_required_patch=>wwv_flow_api.id(11865509704474723851)
,p_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from EBA_PROJ_STATUS_LINKS l',
'where ( l.project_id = :P200_ID ',
'        or (nvl(:P200_INC_CHILD,''N'') = ''Y'' and ',
'            l.project_id in (select s.id ',
'                             from EBA_PROJ_STATUS s',
'                             where s.parent_project_id = :P200_ID))',
'    )'))
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(12740549336249130803)
,p_query_column_id=>1
,p_column_alias=>'EDIT'
,p_column_display_sequence=>1
,p_column_heading=>'<span class="u-VisuallyHidden">Edit</span>'
,p_column_link=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.::P3_ID:#EDIT#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="">'
,p_column_alignment=>'CENTER'
,p_display_when_cond_type=>'EXPRESSION'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'eba_proj_fw.is_edit_authorized(',
'    p_username   => upper(:APP_USER),',
'    p_project_id => :P200_ID ) = ''Y'''))
,p_display_when_condition2=>'PLSQL'
,p_report_column_required_role=>wwv_flow_api.id(7306166303644991446)
,p_report_column_width=>32
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(7850660203982246064)
,p_query_column_id=>2
,p_column_alias=>'PROJECT_ID'
,p_column_display_sequence=>3
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(7850660300342246064)
,p_query_column_id=>3
,p_column_alias=>'LINK_TEXT'
,p_column_display_sequence=>4
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18107013879396389937)
,p_query_column_id=>4
,p_column_alias=>'GOLD_LABEL'
,p_column_display_sequence=>11
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18107013973780389938)
,p_query_column_id=>5
,p_column_alias=>'GOLD_CLASS'
,p_column_display_sequence=>12
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(7850660384583246064)
,p_query_column_id=>6
,p_column_alias=>'LINK_TARGET'
,p_column_display_sequence=>5
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(7850660503669246064)
,p_query_column_id=>7
,p_column_alias=>'CREATED_BY'
,p_column_display_sequence=>8
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(7850660603996246064)
,p_query_column_id=>8
,p_column_alias=>'CREATED'
,p_column_display_sequence=>9
,p_column_heading=>'Added'
,p_use_as_row_header=>'N'
,p_column_format=>'Since'
,p_column_html_expression=>'#CREATED# by<br><a href="#PROFILE_URL#">#CREATED_BY#</a>'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_report_column_width=>140
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(7850660692403246064)
,p_query_column_id=>9
,p_column_alias=>'LINK_COMMENTS'
,p_column_display_sequence=>6
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(12851571591981955433)
,p_query_column_id=>10
,p_column_alias=>'LINK'
,p_column_display_sequence=>7
,p_column_heading=>'Link'
,p_use_as_row_header=>'N'
,p_column_html_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK_TARGET#" target="_blank">#LINK_TEXT#</a> <span class="t-Badge t-Badge--orb t-Badge--small #GOLD_CLASS#">#GOLD_LABEL#</span>',
'<div class="link-comments">#LINK_COMMENTS#</div>'))
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(7850660788081246064)
,p_query_column_id=>11
,p_column_alias=>'PROJECT'
,p_column_display_sequence=>2
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_display_when_cond_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_display_when_condition=>'P200_INC_CHILD'
,p_display_when_condition2=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(17313137033118353038)
,p_query_column_id=>12
,p_column_alias=>'PROFILE_URL'
,p_column_display_sequence=>10
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(7850661299834246064)
,p_name=>'Attachments'
,p_region_name=>'projectAttachments'
,p_template=>wwv_flow_api.id(6781115417665890803)
,p_display_sequence=>110
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_css_classes=>'js-dynamicHideShowRegion'
,p_region_sub_css_classes=>'t-Report--cleanBorders'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:js-showMaximizeButton:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--staticRowColors:t-Report--rowHighlight:t-Report--noBorders'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select f.id,',
'    ''<span class="t-Icon file-icon fa ''',
'        ||decode(substr(upper(f.filename),-4),',
'            ''.PPT'', ''fa-file-powerpoint-o'',',
'            ''.XLS'', ''fa-file-excel-o'',',
'            ''.DOC'', ''fa-file-word-o'',',
'            ''.PDF'', ''fa-file-pdf-o'',',
'            ''.GIF'', ''fa-file-image-o'',',
'            ''.PNG'', ''fa-file-image-o'',',
'            ''.JPG'', ''fa-file-image-o'',',
'            decode(substr(upper(f.filename),-5),',
'                ''.PPTX'', ''fa-file-powerpoint-o'',',
'                ''.XLSX'', ''fa-file-excel-o'',',
'                ''.DOCX'', ''fa-file-word-o'',',
'                ''.TIFF'', ''fa-file-image-o'',',
'                    ''fa-file-o''))',
'        ||''"></span>'' as icon,',
'    f.filename,',
'    apex_util.prepare_url( eba_proj_fw.profile_url(f.created_by) ) as profile_url,',
'    apex_util.get_blob_file_src(''P43_FILE_BLOB'',f.id) as file_link,',
'    f.file_mimetype,',
'    f.file_charset,',
'    apex_util.filesize_mask(dbms_lob.getlength(file_blob)) f_len,',
'    decode(sign(length(f.file_comments)-100),',
'                1, substr(f.file_comments,1,100)||''...'',',
'                f.file_comments) file_comments,',
'    decode( nvl(f.gold_yn, ''N''), ''N'', null, ''Y'', ''Gold'') as gold_label,',
'    decode( nvl(f.gold_yn, ''N''), ''N'', ''is-hidden'', ''Y'', ''is-warning'') as gold_class,',
'    f.created,',
'    f.updated,',
'    eba_proj_fw.get_name_from_email_address(f.created_by) created_by,',
'    (   select project',
'        from eba_proj_status s',
'        where s.id = f.project_id ) project,',
'    apex_util.prepare_url(''f?p=''||:APP_ID||'':106:''||:APP_SESSION||'':::106:P106_ID,P106_PROJECT_ID:''||f.id||'',''||f.project_id) doc_link,',
'    null edit,',
'    null download_button',
'from',
'(',
'select ',
'    ID,',
'    PROJECT_ID,',
'    FILENAME,',
'    file_comments,',
'    file_blob,',
'    file_charset,',
'    file_mimetype,',
'    gold_yn,',
'    created_by,',
'    created,',
'    updated',
'from EBA_PROJ_STATUS_FILES ',
'where project_id = :P200_ID ',
'order by nvl(gold_yn, ''N'') desc, created desc',
') f',
'where rownum <= 50'))
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(6781122235480890822)
,p_query_num_rows=>50
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_no_data_found=>'No attachments'
,p_query_row_count_max=>20
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
,p_required_patch=>wwv_flow_api.id(11865439785610750633)
,p_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from EBA_PROJ_STATUS_FILES f',
'where ( f.project_id = :P200_ID ',
'        or ( nvl(:P200_INC_CHILD,''N'') = ''Y''',
'            and  f.project_id in (select s.id ',
'                                  from EBA_PROJ_STATUS s',
'                                  where s.parent_project_id = :P200_ID))',
'    )'))
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(7850661485183246065)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>3
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(12851634316702955461)
,p_query_column_id=>2
,p_column_alias=>'ICON'
,p_column_display_sequence=>2
,p_column_heading=>'<span class="u-VisuallyHidden">File Icon</span>'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_report_column_width=>32
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(7850661592932246065)
,p_query_column_id=>3
,p_column_alias=>'FILENAME'
,p_column_display_sequence=>6
,p_column_heading=>'Name'
,p_use_as_row_header=>'N'
,p_column_html_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="f?p=&APP_ID.:106:&APP_SESSION.::::P106_ID,P106_PROJECT_ID:#ID#,&P200_ID.">#FILENAME#</a> <span class="t-Badge t-Badge--orb t-Badge--small #GOLD_CLASS#">#GOLD_LABEL#</span>',
'<div class="link-comments">#FILE_COMMENTS#</div>'))
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(17313136900007353036)
,p_query_column_id=>4
,p_column_alias=>'PROFILE_URL'
,p_column_display_sequence=>17
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(7850662211471246065)
,p_query_column_id=>5
,p_column_alias=>'FILE_LINK'
,p_column_display_sequence=>14
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(7850661704807246065)
,p_query_column_id=>6
,p_column_alias=>'FILE_MIMETYPE'
,p_column_display_sequence=>7
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(7850661792725246065)
,p_query_column_id=>7
,p_column_alias=>'FILE_CHARSET'
,p_column_display_sequence=>8
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(7850661904861246065)
,p_query_column_id=>8
,p_column_alias=>'F_LEN'
,p_column_display_sequence=>9
,p_column_heading=>'Size'
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(7850662008280246065)
,p_query_column_id=>9
,p_column_alias=>'FILE_COMMENTS'
,p_column_display_sequence=>10
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18107014043359389939)
,p_query_column_id=>10
,p_column_alias=>'GOLD_LABEL'
,p_column_display_sequence=>18
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(17957891021773970147)
,p_query_column_id=>11
,p_column_alias=>'GOLD_CLASS'
,p_column_display_sequence=>5
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(7850662084491246065)
,p_query_column_id=>12
,p_column_alias=>'CREATED'
,p_column_display_sequence=>12
,p_column_heading=>'Added'
,p_use_as_row_header=>'N'
,p_column_format=>'Since'
,p_column_html_expression=>'#CREATED# by<br><a href="#PROFILE_URL#">#CREATED_BY#</a>'
,p_heading_alignment=>'LEFT'
,p_report_column_width=>180
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6266267303298877375)
,p_query_column_id=>13
,p_column_alias=>'UPDATED'
,p_column_display_sequence=>13
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(7850662382332246065)
,p_query_column_id=>14
,p_column_alias=>'CREATED_BY'
,p_column_display_sequence=>11
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(5953410202533678525)
,p_query_column_id=>15
,p_column_alias=>'PROJECT'
,p_column_display_sequence=>4
,p_column_heading=>'Project'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_display_when_condition=>'P200_INC_CHILD'
,p_display_when_condition2=>'Y'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6086784996720303588)
,p_query_column_id=>16
,p_column_alias=>'DOC_LINK'
,p_column_display_sequence=>15
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(12851571507218955432)
,p_query_column_id=>17
,p_column_alias=>'EDIT'
,p_column_display_sequence=>1
,p_column_heading=>'<span class="u-VisuallyHidden">Edit</span>'
,p_column_link=>'f?p=&APP_ID.:43:&SESSION.::&DEBUG.:RP:P43_ID:#ID#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="">'
,p_column_alignment=>'CENTER'
,p_display_when_cond_type=>'EXPRESSION'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'eba_proj_fw.is_edit_authorized(',
'    p_username   => upper(:APP_USER),',
'    p_project_id => :P200_ID ) = ''Y'''))
,p_display_when_condition2=>'PLSQL'
,p_report_column_width=>32
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(12851633855000955456)
,p_query_column_id=>18
,p_column_alias=>'DOWNLOAD_BUTTON'
,p_column_display_sequence=>16
,p_column_heading=>'<span class="u-VisuallyHidden">Download</a>'
,p_column_link=>'#FILE_LINK#'
,p_column_linktext=>'<span class="t-Icon fa fa-download"></span>'
,p_column_link_attr=>'class="t-Button t-Button--icon t-Button--small" title="Download #FILENAME#"'
,p_column_alignment=>'CENTER'
,p_report_column_width=>32
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(7850662880860246065)
,p_name=>'Updates'
,p_region_name=>'projectUpdates'
,p_template=>wwv_flow_api.id(6781115417665890803)
,p_display_sequence=>90
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_css_classes=>'js-dynamicHideShowRegion updates-region'
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Comments--chat'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'    case when upper(username) = upper(:APP_USER) then ''is-active'' else '' '' end comment_modifiers,',
'    status_update_type||decode(is_active_yn,''Y'','''','' (inactive)'') note_type,',
'    regexp_replace(nvl(formatted_update,status_update),',
'                   ''##BREAK##.*'',''<br />...<a href="''||apex_util.prepare_url(''f?p=''||:APP_ID||'':129:''||:APP_SESSION',
'                                            ||''::NO:129:P200_ID,P129_ID,P129_PROJECT_ID:''',
'                                            ||project_id||'',''||update_id||'',''||project_id)||''">View More</a>'',',
'                  1,0,''n'') comment_text,',
'    '''' attribute_1,',
'    '''' attribute_2,',
'    '''' attribute_3,',
'    '''' attribute_4,',
'    decode(first_name,null,lower(username),decode(last_name, null, lower(username), initcap(first_name || '' '' || last_name))) user_name,',
'    apex_util.get_since(update_date) comment_date,',
'    case',
'    when dbms_lob.getlength(photo_blob) > 0 then',
'        ''comment-user-has-photo''',
'    else',
'        ''u-color-''||(ora_hash(created_by,44) + 1)',
'    end icon_modifier,',
'    case',
'        when dbms_lob.getlength(photo_blob) > 0 then',
'            ''<span class="small-profile-photo" style="background-image: url(''''''',
'              ||apex_util.prepare_url(''f?p=''||:APP_ID||'':IMAGE:''||:APP_SESSION||''::::GET_ID:''||apex_escape.html(username))',
'              ||'''''');"></span>''',
'        else',
'            upper(decode(instr(replace(created_by,''.'','' ''),'' ''),',
'                         0, ',
'                         substr(created_by,1,2),',
'                         substr(created_by,1,1)||substr(created_by,instr(replace(created_by,''.'','' ''),'' '')+1,1)',
'                  ))',
'    end user_icon,',
'    case when (eba_proj_fw.is_edit_authorized( p_username => upper(:APP_USER),',
'                                              p_project_id => project_id ) = ''Y''',
'               and',
'               created_by = :APP_USER',
'              )',
'            then ''Edit''',
'        else ''''',
'    end as actions,',
'    decode(gold_yn, null, '' '', ''N'', null, ''Y'', ''Gold'') as gold_label,',
'    decode(gold_yn, null, '' '', ''N'', ''is-hidden'', ''Y'', ''is-warning'') as gold_class,',
'    update_id,',
'    update_date,',
'    apex_util.prepare_url(eba_proj_fw.profile_url(update_owner)) as profile_url',
'from',
'(',
'select ',
'       (select status_update_type from eba_proj_status_update_types t where x.update_type = t.id) status_update_type,',
'       (select is_active_yn from eba_proj_status_update_types t where x.update_type = t.id) is_active_yn,',
'       x.formatted_update,',
'       x.status_update,',
'       x.gold_yn,',
'       x.project_id,',
'       x.id update_id,',
'       x.created_by,',
'       x.update_date,',
'       x.update_owner,',
'       us.first_name,',
'       us.last_name,',
'       us.photo_blob,',
'       us.username',
'from eba_proj_status_updates$ x,',
'     eba_proj_status_users us',
'where x.upper_update_owner = us.username and',
'      x.id in ',
'(',
'select j.id from',
'(',
'select u.id',
'from eba_proj_status_updates$ u',
'where exists (select null from eba_proj_status ps where ps.id = u.project_id and ps.id = :P200_ID)',
'      and u.project_id = :P200_ID',
'      and ((:P200_SHOW_ONLY_GOLD = ''GOLD'' and nvl(u.gold_yn,''N'') = ''Y'') or nvl(:P200_SHOW_ONLY_GOLD,''ALL'') = ''ALL'')',
'order by u.updated desc',
') j',
'where rownum < 10',
') ',
') order by update_date desc'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P200_ID,P200_SHOW_ONLY_GOLD'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(6781121834246890819)
,p_query_headings_type=>'QUERY_COLUMNS'
,p_query_num_rows=>10
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No project updates found.'
,p_query_row_count_max=>500
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
,p_required_patch=>wwv_flow_api.id(11865461959584682542)
,p_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 x',
'from EBA_PROJ_STATUS_UPDATES u,',
'    EBA_PROJ_STATUS_UPDATE_TYPES t',
'where u.update_type = t.id(+)',
'    and ( u.project_id = :P200_ID ',
'        or (nvl(:P200_INC_CHILD,''N'') = ''Y''',
'            and u.project_id in (select s.id ',
'                                 from EBA_PROJ_STATUS s',
'                                 where s.parent_project_id = :P200_ID))',
'    )',
'union all',
'select 1 x',
'from eba_proj_history f',
'where component_id = :P200_ID ',
'union all',
'select 1 x',
'from eba_proj_history f,',
'    eba_proj_status_ais ai',
'where f.table_name = ''STATUS_AIS''',
'    and f.component_id = ai.id',
'    and ai.project_id = :P200_ID ',
'union all',
'select 1 x',
'from eba_proj_history f,',
'    eba_proj_status_ms ms',
'where f.table_name = ''STATUS_MS''',
'    and f.component_id = ms.id',
'    and ms.project_id = :P200_ID'))
);
wwv_flow_api.component_end;
end;
/
begin
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>134
,p_default_id_offset=>172493832712964115
,p_default_owner=>'MISO'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6799289610983377587)
,p_query_column_id=>1
,p_column_alias=>'COMMENT_MODIFIERS'
,p_column_display_sequence=>14
,p_column_heading=>'Comment modifiers'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(7850663299664246067)
,p_query_column_id=>2
,p_column_alias=>'NOTE_TYPE'
,p_column_display_sequence=>1
,p_column_heading=>'Note Type'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6738629227388327396)
,p_query_column_id=>3
,p_column_alias=>'COMMENT_TEXT'
,p_column_display_sequence=>8
,p_column_heading=>'Comment Text'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(7850663497411246067)
,p_query_column_id=>4
,p_column_alias=>'ATTRIBUTE_1'
,p_column_display_sequence=>3
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(7850663583620246067)
,p_query_column_id=>5
,p_column_alias=>'ATTRIBUTE_2'
,p_column_display_sequence=>4
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(7850663680559246067)
,p_query_column_id=>6
,p_column_alias=>'ATTRIBUTE_3'
,p_column_display_sequence=>2
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(7850663798364246067)
,p_query_column_id=>7
,p_column_alias=>'ATTRIBUTE_4'
,p_column_display_sequence=>5
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6738629353963327397)
,p_query_column_id=>8
,p_column_alias=>'USER_NAME'
,p_column_display_sequence=>9
,p_column_heading=>'Username'
,p_use_as_row_header=>'N'
,p_column_html_expression=>'<a href="#PROFILE_URL#">#USER_NAME#</a>'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6738629449801327398)
,p_query_column_id=>9
,p_column_alias=>'COMMENT_DATE'
,p_column_display_sequence=>10
,p_column_heading=>'Comment Date'
,p_use_as_row_header=>'N'
,p_column_html_expression=>'#COMMENT_DATE# <span class="t-Badge t-Badge--orb t-Badge--small #GOLD_CLASS#">#GOLD_LABEL#</span>'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6738629507470327399)
,p_query_column_id=>10
,p_column_alias=>'ICON_MODIFIER'
,p_column_display_sequence=>11
,p_column_heading=>'Icon modifier'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6738629586588327400)
,p_query_column_id=>11
,p_column_alias=>'USER_ICON'
,p_column_display_sequence=>12
,p_column_heading=>'User icon'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6738629682392327401)
,p_query_column_id=>12
,p_column_alias=>'ACTIONS'
,p_column_display_sequence=>13
,p_column_heading=>'Actions'
,p_column_link=>'f?p=&APP_ID.:12:&SESSION.::&DEBUG.:RP,12:P12_ID:#UPDATE_ID#'
,p_column_linktext=>'#ACTIONS#'
,p_heading_alignment=>'LEFT'
,p_report_column_required_role=>wwv_flow_api.id(7306166303644991446)
,p_derived_column=>'N'
,p_include_in_export=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18107014211141389940)
,p_query_column_id=>13
,p_column_alias=>'GOLD_LABEL'
,p_column_display_sequence=>16
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18107014299807389941)
,p_query_column_id=>14
,p_column_alias=>'GOLD_CLASS'
,p_column_display_sequence=>17
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(7850663091261246066)
,p_query_column_id=>15
,p_column_alias=>'UPDATE_ID'
,p_column_display_sequence=>6
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(7852089301924105061)
,p_query_column_id=>16
,p_column_alias=>'UPDATE_DATE'
,p_column_display_sequence=>7
,p_column_heading=>'Update Date'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(17313136984755353037)
,p_query_column_id=>17
,p_column_alias=>'PROFILE_URL'
,p_column_display_sequence=>15
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(7850684803474340043)
,p_plug_name=>'Hidden Items'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(6781104626075890777)
,p_plug_display_sequence=>20
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
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(7882080910949628964)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(6781117976757890807)
,p_plug_display_sequence=>90
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(8972392840601050532)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(6781135716305890867)
,p_plug_display_condition_type=>'NEVER'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(11575120504928865332)
,p_name=>'People'
,p_region_name=>'projectPeople'
,p_template=>wwv_flow_api.id(6781115417665890803)
,p_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_css_classes=>'js-dynamicHideShowRegion'
,p_region_sub_css_classes=>'t-Report--cleanBorders'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:js-showMaximizeButton:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--staticRowColors:t-Report--noBorders:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select rf.id,',
'    u.id as person_id,',
'    case',
'        when dbms_lob.getlength(u.photo_blob) > 0 then',
'            apex_util.prepare_url(''f?p=''||:APP_ID||'':IMAGE:''||:APP_SESSION||''::::GET_ID:''||apex_escape.html(u.username))',
'        else',
'            ''#APP_IMAGES#no-photo.png''',
'    end user_photo,',
'    r.name role,',
'    decode(u.first_name,null,lower(u.username),decode(u.last_name, null, lower(u.username), initcap(u.first_name || '' '' || u.last_name))) person,',
'    rf.created,',
'    lower(rf.created_by) created_by,',
'    rf.updated,',
'    lower(rf.updated_by) updated_by,',
'    case',
'        when 1 = (select acl_status_level from eba_proj_status p where p.id = :P200_ID) then',
'            -- Open; show P-Track access level',
'            (   select apex_escape.html(access_level)',
'                from eba_proj_status_access_levels pal',
'                where pal.id = u.access_level_id )',
'        else',
'            -- Restricted. Show project access level',
'            case',
'                when nvl(rf.acl_status_level,r.default_acl_status_level) = 1 and u.access_level_id >= 1 then',
'                    ''Read Only''',
'                when nvl(rf.acl_status_level,r.default_acl_status_level) = 2 and u.access_level_id > 1 then',
'                    ''Edit''',
'                when nvl(rf.acl_status_level,r.default_acl_status_level) = 3 and u.access_level_id > 1 then',
'                    ''Full Access''',
'                when nvl(rf.acl_status_level,r.default_acl_status_level) in (2,3) and u.access_level_id = 1 then',
'                    ''<a href="'' || apex_util.prepare_url( ''f?p='' || :APP_ID || '':201:'' || :APP_SESSION || '':::201:P201_USER_ID,P201_APP_ROLE,P201_PROJ_ROLE:'' || u.id || '',Reader,'' || decode(nvl(rf.acl_status_level,r.default_acl_status_level),2,''Read '
||'/ Write'',3,''Read / Write (with Admin)'',''Read / Write'') ) || ''"><span class="t-Badge t-Badge--orb is-danger">Read</span></a>''',
'                when nvl(rf.acl_status_level,r.default_acl_status_level) in (2,3) and u.access_level_id < 1 then',
'                    ''<a href="'' || apex_util.prepare_url( ''f?p='' || :APP_ID || '':201:'' || :APP_SESSION || '':::201:P201_USER_ID,P201_APP_ROLE,P201_PROJ_ROLE:'' || u.id || '',No Access,'' || decode(nvl(rf.acl_status_level,r.default_acl_status_level),2,''Re'
||'ad / Write'',3,''Read / Write (with Admin)'',''Read / Write'') ) || ''"><span class="t-Badge t-Badge--orb is-danger">No Access</span></a>''',
'            end',
'    end as access_level,',
'    (   select  involvement_level||decode(PERCENTAGE ,null,null,'' - ''||PERCENTAGE ||''%'') x',
'        from eba_proj_involvement_levels il',
'        where il.id = rf.involvement_level_id',
'    ) involvement,',
'    substr(notes,1,100) notes',
'from eba_proj_user_ref rf,',
'    eba_proj_roles r,',
'    eba_proj_status_users u',
'where rf.project_id = :P200_ID',
'    and rf.user_id = u.id',
'    and rf.role_id = r.id',
''))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(6781122235480890822)
,p_query_num_rows=>2000
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(12093254919477299466)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>1
,p_column_heading=>'<span class="u-VisuallyHidden">Edit</span>'
,p_column_link=>'f?p=&APP_ID.:150:&SESSION.::&DEBUG.:RP,150:P150_ID:#ID#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="">'
,p_column_alignment=>'CENTER'
,p_display_when_cond_type=>'EXPRESSION'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'eba_proj_fw.is_edit_authorized(',
'    p_username   => upper(:APP_USER),',
'    p_project_id => :P200_ID,',
'    p_min_auth   => 3 ) = ''Y'''))
,p_display_when_condition2=>'PLSQL'
,p_report_column_required_role=>wwv_flow_api.id(7306166303644991446)
,p_report_column_width=>32
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(15168144961452469065)
,p_query_column_id=>2
,p_column_alias=>'PERSON_ID'
,p_column_display_sequence=>12
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(15321854681287843262)
,p_query_column_id=>3
,p_column_alias=>'USER_PHOTO'
,p_column_display_sequence=>2
,p_column_heading=>'<span class="u-VisuallyHidden">Photo</span>'
,p_use_as_row_header=>'N'
,p_column_html_expression=>'<span class="small-profile-photo" style="background-image: url(#USER_PHOTO#);"></span>'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(11575120537583865333)
,p_query_column_id=>4
,p_column_alias=>'ROLE'
,p_column_display_sequence=>4
,p_column_heading=>'Role'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(11575120710007865334)
,p_query_column_id=>5
,p_column_alias=>'PERSON'
,p_column_display_sequence=>3
,p_column_heading=>'Name'
,p_use_as_row_header=>'N'
,p_column_html_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="f?p=&APP_ID.:137:&APP_SESSION.::::P137_ID:#PERSON_ID#">#PERSON#</a>',
'<div class="person-notes">#NOTES#</div>'))
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>2
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(11575120787203865335)
,p_query_column_id=>6
,p_column_alias=>'CREATED'
,p_column_display_sequence=>6
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(11575120856266865336)
,p_query_column_id=>7
,p_column_alias=>'CREATED_BY'
,p_column_display_sequence=>7
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(11575121006919865337)
,p_query_column_id=>8
,p_column_alias=>'UPDATED'
,p_column_display_sequence=>10
,p_column_heading=>'Updated'
,p_use_as_row_header=>'N'
,p_column_format=>'Since'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_report_column_width=>120
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(11575121093288865338)
,p_query_column_id=>9
,p_column_alias=>'UPDATED_BY'
,p_column_display_sequence=>8
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(11575121215259865340)
,p_query_column_id=>10
,p_column_alias=>'ACCESS_LEVEL'
,p_column_display_sequence=>11
,p_column_heading=>'Access'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(12093253631748299453)
,p_query_column_id=>11
,p_column_alias=>'INVOLVEMENT'
,p_column_display_sequence=>5
,p_column_heading=>'Involvement'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_default_sort_dir=>'desc'
,p_disable_sort_column=>'N'
,p_display_when_cond_type=>'EXPRESSION'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_util.get_build_option_status(',
'    p_application_id => :APP_ID,',
'    p_build_option_name => ''Project User Involvement''',
') = ''INCLUDE'''))
,p_display_when_condition2=>'PLSQL'
,p_report_column_width=>120
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14113379503191159481)
,p_query_column_id=>12
,p_column_alias=>'NOTES'
,p_column_display_sequence=>9
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(12093211532791299432)
,p_name=>'Resources'
,p_region_name=>'projectResources'
,p_template=>wwv_flow_api.id(6781115417665890803)
,p_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_css_classes=>'js-dynamicHideShowRegion'
,p_region_sub_css_classes=>'t-Report--cleanBorders'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:js-showMaximizeButton:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--staticRowColors:t-Report--rowHighlight:t-Report--noBorders'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select rs.id,',
'    rs.project_id,',
'    rs.resource_name,',
'    t.resource_type,',
'    rs.notes notes,',
'    eba_proj_fw.get_name_from_email_address(rs.created_by) created_by,',
'    rs.updated,',
'    (   select project',
'        from eba_proj_status x',
'        where x.id = rs.project_id) project,',
'    apex_util.prepare_url( eba_proj_fw.profile_url(rs.created_by) ) as profile_url',
'from eba_proj_resources rs,',
'     eba_proj_resource_types t',
'where ( rs.project_id = :P200_ID ',
'   /*     or (nvl(:P200_INC_CHILD,''N'') = ''Y'' and ',
'            rs.project_id in (select s.id ',
'                              from EBA_PROJ_STATUS s',
'                              where s.parent_project_id = :P200_ID)) */',
'      )',
'  and t.id = rs.resource_type_id',
'order by lower(rs.resource_name);'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(6781122235480890822)
,p_query_num_rows=>1500
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_no_data_found=>'No Issues'
,p_query_row_count_max=>500
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'Y'
,p_required_patch=>wwv_flow_api.id(12130127162343753660)
,p_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'from eba_proj_resources rs,',
'    eba_proj_resource_types t',
'where ( rs.project_id = :P200_ID ',
'        or (nvl(:P200_INC_CHILD,''N'') = ''Y'' and ',
'            rs.project_id in (select s.id ',
'                              from EBA_PROJ_STATUS s',
'                              where s.parent_project_id = :P200_ID))',
'    )',
'    and t.id = rs.resource_type_id;'))
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(12093212345894299440)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>1
,p_column_link=>'f?p=&APP_ID.:170:&SESSION.::&DEBUG.:RP,170:P170_ID,P170_PROJECT_ID:#ID#,#PROJECT_ID#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="">'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXPRESSION'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'eba_proj_fw.is_edit_authorized(',
'    p_username   => upper(:APP_USER),',
'    p_project_id => :P200_ID ) = ''Y'''))
,p_display_when_condition2=>'PLSQL'
,p_report_column_required_role=>wwv_flow_api.id(7306166303644991446)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(12093212447420299441)
,p_query_column_id=>2
,p_column_alias=>'PROJECT_ID'
,p_column_display_sequence=>2
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(12093212968344299446)
,p_query_column_id=>3
,p_column_alias=>'RESOURCE_NAME'
,p_column_display_sequence=>5
,p_column_heading=>'Resource'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(12093213020502299447)
,p_query_column_id=>4
,p_column_alias=>'RESOURCE_TYPE'
,p_column_display_sequence=>6
,p_column_heading=>'Type'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(12093213139648299448)
,p_query_column_id=>5
,p_column_alias=>'NOTES'
,p_column_display_sequence=>7
,p_column_heading=>'Notes'
,p_use_as_row_header=>'N'
,p_column_html_expression=>'#NOTES#'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(12093212725883299444)
,p_query_column_id=>6
,p_column_alias=>'CREATED_BY'
,p_column_display_sequence=>3
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(12093212300002299439)
,p_query_column_id=>7
,p_column_alias=>'UPDATED'
,p_column_display_sequence=>8
,p_column_heading=>'Updated'
,p_use_as_row_header=>'N'
,p_column_format=>'SINCE'
,p_column_html_expression=>'#UPDATED# by<br><a href="#PROFILE_URL#">#CREATED_BY#</a>'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_report_column_width=>180
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(12093212909618299445)
,p_query_column_id=>8
,p_column_alias=>'PROJECT'
,p_column_display_sequence=>4
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_display_when_cond_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_display_when_condition=>'P200_INC_CHILD'
,p_display_when_condition2=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(17313137267845353040)
,p_query_column_id=>9
,p_column_alias=>'PROFILE_URL'
,p_column_display_sequence=>9
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(12505845951407353057)
,p_plug_name=>'History'
,p_region_css_classes=>'history-region'
,p_icon_css_classes=>'fa-clock-o'
,p_region_template_options=>'#DEFAULT#:t-Alert--horizontal:t-Alert--customIcons:t-Alert--info:t-Alert--accessibleHeading'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(6781102788551890771)
,p_plug_display_sequence=>140
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_history varchar2(4000);',
'begin',
'    for c1 in',
'    (',
'        select',
'            ''<p class="project-audit-info">Project last updated <strong>''||apex_util.get_since(s.updated)',
'                ||''</strong> by <strong><a href="'' || ',
'                apex_util.prepare_url( eba_proj_fw.profile_url(s.updated_by) ) || ''">'' ||',
'                apex_escape.html(lower(s.updated_by))||''</a></strong>.',
'             <br />Project created ''||apex_util.get_since(s.created) ||'' by ''||apex_escape.html(lower(s.created_by))',
'                ||''.</span>'' as history',
'          from eba_proj_status s, eba_proj_status_codes c',
'         where s.id = :P200_ID',
'           and c.id = s.project_status(+)',
'    )',
'    loop',
'        l_history := c1.history;',
'    end loop;',
'    sys.htp.p( l_history );',
'end;'))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NEVER'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(12689322342905044293)
,p_plug_name=>'More'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:js-useLocalStorage:is-expanded:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(6781111273838890791)
,p_plug_display_sequence=>150
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(17706319782044588462)
,p_plug_name=>'Content Completeness'
,p_parent_plug_id=>wwv_flow_api.id(12689322342905044293)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody:t-Region--stacked'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(6781115417665890803)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'with build_opts as (',
'    select build_option_name',
'    from apex_application_build_options',
'    where application_id = :APP_ID',
'        and build_option_status = ''Include''',
')',
'select',
'    metric,',
'/*    case',
'        when the_score < 0 then',
'            0',
'    else',
'*/        the_score/*',
'    end the_score*/,',
'    max_value ',
'from',
'    (',
'        select  ''Project has an owner'' metric,',
'            case when exists (select null',
'                              from eba_proj_user_ref rf,',
'                                  eba_proj_status_users u',
'                              where rf.project_id = p.id',
'                                  and rf.user_id = u.id',
'                                  and eba_proj_fw.is_edit_authorized( u.username, rf.project_id ) = ''Y''',
'                             )',
'                    then 20 else 0 end as the_score,',
'                20 max_value',
'        from eba_proj_status p where id = :P200_ID',
'        union all ',
'        select  ''Project has a URL'' metric, ',
'                decode(url,null,0,10) the_score,',
'                10 max_value',
'        from eba_proj_status where id = :P200_ID',
'        union all ',
'        select  ''Project has a goal'' metric, ',
'                decode(goal,null,0,20) the_score,',
'                20 max_value',
'        from eba_proj_status where id = :P200_ID',
'        union all',
'        select  ''Project has a goal longer then 200 characters'' metric, ',
'                decode(goal,null,0,10) the_score,',
'                10 max_value',
'        from eba_proj_status where id = :P200_ID and nvl(length(goal),0) >= 200',
'        union all ',
'        select  ''Project has description longer then 200 characters'' metric, ',
'                decode(description,null,0,10) the_score,',
'                10 max_value ',
'        from eba_proj_status where id = :P200_ID and nvl(length(description),0) >= 200',
'        union all ',
'        select  ''Project has tags'' metric, ',
'                decode(s.tags,null,0,10) the_score,',
'                10 max_value ',
'        from eba_proj_status s where id = :P200_ID',
'        union all ',
'        select  ''Project has description'' metric, ',
'                decode(description,null,0,20) the_score,',
'                20 max_value ',
'        from eba_proj_status where id = :P200_ID',
'        union all',
'        select  nvl(max(''Project has milestones''),''Project has milestones'') metric, ',
'                decode(count(*),0,0,20) the_score,',
'                nvl(max(20),20) max_value ',
'        from eba_proj_status_ms m,',
'            build_opts bo',
'        where  m.project_id = :P200_ID',
'            and bo.build_option_name = ''Project Milestones''',
'        union all',
'        select  nvl(max(''Project has milestones past due (deduction)''),''Project has milestones past due (deduction)'') metric, ',
'                decode(count(*),0,0,-50) the_score,',
'                nvl(max(0),0) max_value ',
'        from eba_proj_status_ms m,',
'            build_opts bo',
'        where  m.project_id = :P200_ID',
'            and m.milestone_status = ''Open''',
'            and m.milestone_date < current_date',
'            and bo.build_option_name = ''Project Milestones''',
'        union all',
'        select  nvl(max(''Project has links''),''Project has links'') metric, ',
'                decode(count(*),0,0,10) the_score,',
'                nvl(max(10),10) max_value ',
'        from eba_proj_status_links l,',
'            build_opts bo',
'        where l.project_id = :P200_ID ',
'            and bo.build_option_name = ''Project Links''',
'        union all',
'        select  nvl(max(''Project has action items''),''Project has action items'') metric, ',
'                decode(count(*),0,0,20) the_score,',
'                nvl(max(20),20) max_value ',
'        from eba_proj_status_ais a,',
'            build_opts bo',
'        where a.project_id = :P200_ID',
'            and bo.build_option_name = ''Project Action Items''',
'        union all',
'        select  nvl(max(''Project has action items past due (deduction)''),''Project has action items pastdue (deduction)'') metric, ',
'                decode(count(*),0,0,-50) the_score,',
'                nvl(max(0),0) max_value ',
'        from eba_proj_status_ais a,',
'            build_opts bo',
'        where a.project_id = :P200_ID',
'            and a.action_status = ''Open''',
'            and a.due_date < current_date',
'            and bo.build_option_name = ''Project Action Items''',
'        union all',
'        select  nvl(max(''Project has project updates''),''Project has project updates'') metric, ',
'                decode(count(*),0,0,10) the_score,',
'                nvl(max(10),10) max_value ',
'        from eba_proj_status_updates u,',
'            build_opts bo',
'        where  u.project_id = :P200_ID ',
'            and bo.build_option_name = ''Project Updates''',
'        union all',
'        select  nvl(max(''Project has project updates in last week''),''Project has project updates in last week'') metric, ',
'                decode(count(*),0,0,10) the_score,',
'                nvl(max(10),10) max_value ',
'        from eba_proj_status_updates u,',
'            build_opts bo',
'        where  u.project_id = :P200_ID',
'            and u.update_date > (sysdate - 7)',
'            and bo.build_option_name = ''Project Updates''',
'        union all',
'        select  nvl(max(''Project has attachments''),''Project has attachments'') metric, ',
'                decode(count(*),0,0,5) the_score,',
'                nvl(max(5),5) max_value ',
'        from eba_proj_status_files u,',
'            build_opts bo',
'        where  u.project_id = :P200_ID ',
'            and bo.build_option_name = ''Project Attachments''',
'        union all',
'        select  nvl(max(''Project has status reports''),''Project has status reports'') metric, ',
'                decode(count(*),0,0,10) the_score,',
'                nvl(max(10),10) max_value ',
'        from eba_proj_status_rpts u,',
'            build_opts bo',
'        where u.project_id = :P200_ID',
'            and bo.build_option_name = ''Project Status Reports''',
'        union all',
'        select  nvl(max(''Project status is not desirable''),''Project status is not desirable'') metric, ',
'                decode(count(*),0,0,-20) the_score,',
'                nvl(max(0),0) max_value ',
'        from eba_proj_status s , EBA_PROJ_STATUS_CODES c',
'        where s.id = :P200_ID and s.PROJECT_STATUS = c.id and nvl(c.is_desirable_yn,''Y'') = ''N''',
'        union all',
'        select  nvl(max(''Project has been validated''),''Project has been validated'') metric, ',
'                decode(max((',
'                    select count(*)',
'                    from eba_proj_status_verifications v',
'                    where v.project_id = :P200_ID )),0,0,20) the_score,',
'                nvl(max(20),20) max_value ',
'        from eba_proj_status ps,',
'            build_opts bo',
'        where ps.id = :P200_ID',
'            and bo.build_option_name = ''Project Validations''',
'        union all',
'        select  nvl(max(''Project has been validated in last week''),''Project has been validated in last week'') metric, ',
'                decode(max((select count(*) from eba_proj_status_verifications v',
'        where v.project_id = :P200_ID and v.created > (sysdate - 7))),0,0,30) the_score,',
'                nvl(max(30),30) max_value ',
'        from eba_proj_status ps,',
'            build_opts bo',
'        where ps.id = :P200_ID',
'            and bo.build_option_name = ''Project Validations''',
'        union all',
'        select ''Project has been validated in last week by project owner'' metric, ',
'            case when exists (  select null',
'                                from eba_proj_user_ref rf,',
'                                    eba_proj_status_users u,',
'                                    eba_proj_roles r,',
'                                    eba_proj_status_verifications v',
'                                where rf.project_id = p.id',
'                                    and rf.user_id = u.id',
'                                    and rf.role_id = r.id',
'                                    and nvl(rf.acl_status_level,r.default_acl_status_level) >= 2',
'                                    and v.project_id = p.id',
'                                    and v.created > (sysdate-7)',
'                                    and upper(v.verified_by) = upper(u.username)',
'                             )',
'                then 30 else 0 end as the_score,',
'            30 max_value ',
'        from eba_proj_status p,',
'            build_opts bo',
'        where p.id = :P200_ID',
'            and bo.build_option_name = ''Project Validations''',
'    ) x',
'order by 1'))
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.COMPLETENESS'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'NOT_EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from eba_proj_status s, eba_proj_status_codes c',
'where s.id = :P200_ID',
'    and c.id = s.project_status(+)',
'   and is_closed_status = ''Y'''))
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_required_patch=>wwv_flow_api.id(6173573097872616906)
,p_attribute_01=>'66'
,p_attribute_02=>'Strong'
,p_attribute_03=>'33'
,p_attribute_04=>'Moderate'
,p_attribute_05=>'10'
,p_attribute_06=>'Weak'
,p_attribute_07=>'Very Weak'
,p_attribute_08=>'Completeness Score Details'
);
wwv_flow_api.component_end;
end;
/
begin
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>134
,p_default_id_offset=>172493832712964115
,p_default_owner=>'MISO'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(17706325479245710594)
,p_plug_name=>'Usage Last 90 Days'
,p_parent_plug_id=>wwv_flow_api.id(12689322342905044293)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(6781115417665890803)
,p_plug_display_sequence=>30
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'with x as (',
'select',
'    count(*) c,',
'    count(distinct app_username) u',
'from',
'    eba_proj_status_clicks',
'where',
'    project_id = :P200_ID ',
'and',
'    view_timestamp > sysdate - 90',
'    )',
'select',
'     c,',
'    ''Views'' l,',
'    1 disp',
'from',
'    x',
'UNION',
'select',
'    u  c,',
'    ''Users'' l,',
'    2 disp',
'from',
'    x',
'order by disp    '))
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.BADGE_LIST'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'L'
,p_attribute_02=>'C'
,p_attribute_04=>'f?p=&APP_ID.:127:&APP_SESSION.:::127:P127_ID:&P200_ID.'
,p_attribute_05=>'2'
,p_attribute_06=>'L'
,p_attribute_07=>'DOT'
,p_attribute_08=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(17706326093013733493)
,p_plug_name=>'Validations'
,p_parent_plug_id=>wwv_flow_api.id(12689322342905044293)
,p_region_template_options=>'#DEFAULT#:t-Region--hiddenOverflow:t-Region--stacked'
,p_plug_template=>wwv_flow_api.id(6781115417665890803)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    verified_by,',
'    created',
'from',
'    eba_proj_status_verifications ',
'where',
'    project_id = :P200_ID',
'order by',
'    created desc',
''))
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.VALIDATOR'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'NOT_EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from eba_proj_status s,',
'       eba_proj_status_codes c',
' where s.id = :P200_ID',
'   and c.id = s.project_status(+)',
'   and is_closed_status = ''Y''',
'union all',
'select 1',
'  from dual',
' where eba_proj_fw.is_edit_authorized(',
'    p_username   => upper(:APP_USER),',
'    p_project_id => :P200_ID ) = ''N'''))
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_required_patch=>wwv_flow_api.id(6173574406893658297)
,p_attribute_01=>'f?p=&APP_ID.:122:&SESSION.::&DEBUG.:RP,122:P122_ID,LAST_VIEW:&P200_ID.,200'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(18936891929877923945)
,p_name=>'Countries'
,p_region_name=>'projectCountries'
,p_template=>wwv_flow_api.id(6781115417665890803)
,p_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_css_classes=>'js-dynamicHideShowRegion'
,p_region_sub_css_classes=>'t-Report--cleanBorders'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:js-showMaximizeButton:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--staticRowColors:t-Report--noBorders:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select rf.id,',
'    c.region_id,',
'    c.country_code,',
'    rf.country_id,',
'    eba_proj_fw.get_name_from_email_address(rf.created_by) created_by,',
'    rf.created,',
'    eba_proj_fw.get_name_from_email_address(rf.updated_by) updated_by,',
'    rf.updated',
'from eba_proj_status_country_ref rf,',
'    eba_proj_countries c',
'where rf.project_id = :P200_ID',
'    and rf.country_id = c.id',
''))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(6781122235480890822)
,p_query_num_rows=>2000
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
,p_required_patch=>wwv_flow_api.id(18990974587291614877)
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18936893294376923958)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>1
,p_column_heading=>'<span class="u-VisuallyHidden">Edit</span>'
,p_column_link=>'f?p=&APP_ID.:210:&SESSION.::&DEBUG.:RP,210:P210_ID:#ID#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="">'
,p_column_alignment=>'CENTER'
,p_display_when_cond_type=>'EXPRESSION'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'eba_proj_fw.is_edit_authorized(',
'    p_username   => upper(:APP_USER),',
'    p_project_id => :P200_ID,',
'    p_min_auth   => 2 ) = ''Y'''))
,p_display_when_condition2=>'PLSQL'
,p_report_column_required_role=>wwv_flow_api.id(7306166303644991446)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18936893495278923960)
,p_query_column_id=>2
,p_column_alias=>'REGION_ID'
,p_column_display_sequence=>2
,p_column_heading=>'Region'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_api.id(18983254159362181359)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18936903573039923961)
,p_query_column_id=>3
,p_column_alias=>'COUNTRY_CODE'
,p_column_display_sequence=>3
,p_column_heading=>'Country Code'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18936903697702923962)
,p_query_column_id=>4
,p_column_alias=>'COUNTRY_ID'
,p_column_display_sequence=>4
,p_column_heading=>'Country'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>2
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_api.id(18988387543173150410)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18936892980904923955)
,p_query_column_id=>5
,p_column_alias=>'CREATED_BY'
,p_column_display_sequence=>6
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18936892864557923954)
,p_query_column_id=>6
,p_column_alias=>'CREATED'
,p_column_display_sequence=>5
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18936893142447923957)
,p_query_column_id=>7
,p_column_alias=>'UPDATED_BY'
,p_column_display_sequence=>8
,p_column_heading=>'Updated By'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18936893015526923956)
,p_query_column_id=>8
,p_column_alias=>'UPDATED'
,p_column_display_sequence=>7
,p_column_heading=>'Updated'
,p_use_as_row_header=>'N'
,p_column_format=>'Since'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_report_column_width=>120
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(5862891098802688127)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(6212459901559585507)
,p_button_name=>'Follow'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(6781135529450890864)
,p_button_image_alt=>'Follow'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_execute_validations=>'N'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ''Followed''',
'from eba_proj_status_favorites',
'where user_name = upper(:APP_USER)',
'    and content_id = :P200_ID',
'    and content_type = ''PROJECT'''))
,p_button_condition_type=>'NOT_EXISTS'
,p_button_cattributes=>'title="Click to follow"'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(5866509290953632404)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(6212459901559585507)
,p_button_name=>'Unfollow'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--primary:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(6781134954745890861)
,p_button_image_alt=>'Followed'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_execute_validations=>'N'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ''Followed''',
'from eba_proj_status_favorites',
'where user_name = upper(:APP_USER)',
'    and content_id = :P200_ID',
'    and content_type = ''PROJECT'''))
,p_button_condition_type=>'EXISTS'
,p_icon_css_classes=>'fa-check'
,p_button_cattributes=>'title="Click to unfollow"'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(7850656087494246053)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(6212459901559585507)
,p_button_name=>'EDIT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(6781135529450890864)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Edit Project'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:2:P2_ID:&P200_ID.'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'eba_proj_fw.is_edit_authorized(',
'    p_username   => upper(:APP_USER),',
'    p_project_id => :P200_ID,',
'    p_min_auth   => 3 ) = ''Y'''))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_security_scheme=>wwv_flow_api.id(7306166303644991446)
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(525989885294977603)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(11575120504928865332)
,p_button_name=>'EMAIL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_api.id(6781134785393890859)
,p_button_image_alt=>'Email Project Members'
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'  from eba_proj_user_ref rf,',
'       eba_proj_roles r,',
'       eba_proj_status_users u',
' where rf.project_id = :P200_ID',
'   and rf.user_id = u.id',
'   and rf.role_id = r.id',
'   and (',
'           instr(u.username,''@'') > 0',
'           or',
'           (',
'               instr(u.username,''@'') = 0',
'               and',
'               u.email_address is not null',
'           )',
'        )'))
,p_button_condition_type=>'EXISTS'
,p_icon_css_classes=>'fa-envelope-o'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(7850659807419246063)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(6859406041913071521)
,p_button_name=>'ADDACTIONITEM'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_api.id(6781134785393890859)
,p_button_image_alt=>'Add Action Item'
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:73:&SESSION.::&DEBUG.:RP,73:P73_PROJECT_ID,LAST_VIEW:&P200_ID.,200'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'eba_proj_fw.are_ms_ai_restricted(',
'    p_application_id => :APP_ID,',
'    p_username   => upper(:APP_USER),',
'    p_project_id => :P200_ID ) = ''N'''))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_icon_css_classes=>'fa-plus'
,p_security_scheme=>wwv_flow_api.id(7306166303644991446)
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(12093211655379299433)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(12093211532791299432)
,p_button_name=>'ADD_RESOURCE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_api.id(6781134785393890859)
,p_button_image_alt=>'Add Resource'
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:170:&SESSION.::&DEBUG.:RP,170:P170_PROJECT_ID:&P200_ID.'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'eba_proj_fw.is_edit_authorized(',
'    p_username   => upper(:APP_USER),',
'    p_project_id => :P200_ID ) = ''Y'''))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_icon_css_classes=>'fa-plus'
,p_security_scheme=>wwv_flow_api.id(7306166303644991446)
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(18175884288607760629)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(6876982536741771680)
,p_button_name=>'CALENDAR'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_api.id(6781134785393890859)
,p_button_image_alt=>'Calendar View'
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.:RP,5:P5_PROJECT:&P200_ID.'
,p_icon_css_classes=>'fa-calendar'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(18936892072607923946)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(18936891929877923945)
,p_button_name=>'VIEWCOUNTRIES'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_api.id(6781134785393890859)
,p_button_image_alt=>'View Countries'
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:209:&SESSION.::&DEBUG.:RP,RIR,209:P209_ID,LAST_VIEW:&P200_ID.,200'
,p_icon_css_classes=>'fa-chevron-right'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(6849110170701414945)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(6876982536741771680)
,p_button_name=>'GANTT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--small'
,p_button_template_id=>wwv_flow_api.id(6781135529450890864)
,p_button_image_alt=>'Gantt'
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:68:&SESSION.::&DEBUG.:RP,68:P68_PROJECT:&P200_ID.'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(7850659585622246061)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(6859406041913071521)
,p_button_name=>'VIEWACTIONITEMS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_api.id(6781134785393890859)
,p_button_image_alt=>'View Action Items'
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:55:&SESSION.::&DEBUG.:55:P55_ID,LAST_VIEW:&P200_ID.,200'
,p_icon_css_classes=>'fa-chevron-right'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(11575121201025865339)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(11575120504928865332)
,p_button_name=>'ADD_PERSON'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_api.id(6781134785393890859)
,p_button_image_alt=>'Add Person'
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:150:&SESSION.::&DEBUG.:RP,24:P150_ID,P150_PROJECT_ID:,&P200_ID.'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'eba_proj_fw.is_edit_authorized(',
'    p_username   => upper(:APP_USER),',
'    p_project_id => :P200_ID,',
'    p_min_auth   => 3 ) = ''Y'''))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_icon_css_classes=>'fa-plus'
,p_security_scheme=>wwv_flow_api.id(7306166303644991446)
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(12093211801677299434)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(12093211532791299432)
,p_button_name=>'VIEW_RESOURCES'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_api.id(6781134785393890859)
,p_button_image_alt=>'View Resources'
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:169:&SESSION.::&DEBUG.:RP,RIR,169:P169_PROJECT_ID,LAST_VIEW:&P200_ID.,200'
,p_icon_css_classes=>'fa-chevron-right'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(18936892144908923947)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(18936891929877923945)
,p_button_name=>'ADD_COUNTRY'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_api.id(6781134785393890859)
,p_button_image_alt=>'Add Country'
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:210:&SESSION.::&DEBUG.:RP,210:P210_ID,P210_PROJECT_ID:,&P200_ID.'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'eba_proj_fw.is_edit_authorized(',
'    p_username   => upper(:APP_USER),',
'    p_project_id => :P200_ID,',
'    p_min_auth   => 2 ) = ''Y'''))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_icon_css_classes=>'fa-plus'
,p_security_scheme=>wwv_flow_api.id(7306166303644991446)
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(7850664802084246069)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(6876982536741771680)
,p_button_name=>'ADDMILESTONE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_api.id(6781134785393890859)
,p_button_image_alt=>'Add Milestone'
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:48:&SESSION.::&DEBUG.:RP,48:P48_PROJECT_ID,LAST_VIEW:&P200_ID.,200'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'eba_proj_fw.are_ms_ai_restricted(',
'    p_application_id => :APP_ID,',
'    p_username   => upper(:APP_USER),',
'    p_project_id => :P200_ID ) = ''N'''))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_icon_css_classes=>'fa-plus'
,p_security_scheme=>wwv_flow_api.id(7306166303644991446)
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(11575121673315865344)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(11575120504928865332)
,p_button_name=>'VIEWPEOPLE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_api.id(6781134785393890859)
,p_button_image_alt=>'View People'
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:159:&SESSION.::&DEBUG.:159:P159_PROJECT_ID,LAST_VIEW:&P200_ID.,200'
,p_icon_css_classes=>'fa-chevron-right'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(7850664992545246069)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(6876982536741771680)
,p_button_name=>'VIEWMILESTONES'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_api.id(6781134785393890859)
,p_button_image_alt=>'View Milestones'
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:34:&SESSION.::&DEBUG.:34:P34_ID,LAST_VIEW:&P200_ID.,200'
,p_icon_css_classes=>'fa-chevron-right'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(7850664191964246067)
,p_button_sequence=>130
,p_button_plug_id=>wwv_flow_api.id(7850662880860246065)
,p_button_name=>'ADDSTATUSUPDATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_api.id(6781134785393890859)
,p_button_image_alt=>'Add Project Update'
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:12:&SESSION.::&DEBUG.:RP,12:P12_PROJECT_ID:&P200_ID.'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'eba_proj_fw.is_edit_authorized(',
'    p_username   => upper(:APP_USER),',
'    p_project_id => :P200_ID ) = ''Y'''))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_icon_css_classes=>'fa-plus'
,p_security_scheme=>wwv_flow_api.id(7306166303644991446)
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(7850664396036246067)
,p_button_sequence=>140
,p_button_plug_id=>wwv_flow_api.id(7850662880860246065)
,p_button_name=>'VIEWSTATUSUPDATES'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_api.id(6781134785393890859)
,p_button_image_alt=>'View Project Updates'
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:75:&SESSION.::&DEBUG.:RP,75:P75_PROJECT,LAST_VIEW:&P200_ID.,200'
,p_icon_css_classes=>'fa-chevron-right'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(7672574143523804300)
,p_button_sequence=>150
,p_button_plug_id=>wwv_flow_api.id(7672571082055804287)
,p_button_name=>'ADD_ISSUE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_api.id(6781134785393890859)
,p_button_image_alt=>'Add Issue'
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:24:&SESSION.::&DEBUG.:RP,24:P24_PROJECT_ID:&P200_ID.'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'eba_proj_fw.is_edit_authorized(',
'    p_username   => upper(:APP_USER),',
'    p_project_id => :P200_ID ) = ''Y'''))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_icon_css_classes=>'fa-plus'
,p_security_scheme=>wwv_flow_api.id(7306166303644991446)
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(7850661104445246064)
,p_button_sequence=>150
,p_button_plug_id=>wwv_flow_api.id(7850660011671246063)
,p_button_name=>'ADD_LINK'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_api.id(6781134785393890859)
,p_button_image_alt=>'Add Link'
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.:RP,3:P3_PROJECT_ID:&P200_ID.'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'eba_proj_fw.is_edit_authorized(',
'    p_username   => upper(:APP_USER),',
'    p_project_id => :P200_ID ) = ''Y'''))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_icon_css_classes=>'fa-plus'
,p_security_scheme=>wwv_flow_api.id(7306166303644991446)
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(7850660905315246064)
,p_button_sequence=>160
,p_button_plug_id=>wwv_flow_api.id(7850660011671246063)
,p_button_name=>'VIEWLINKS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_api.id(6781134785393890859)
,p_button_image_alt=>'View Links'
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:67:&SESSION.::&DEBUG.:67:P67_ID,LAST_VIEW:&P200_ID.,200'
,p_icon_css_classes=>'fa-chevron-right'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(7672574598273804301)
,p_button_sequence=>170
,p_button_plug_id=>wwv_flow_api.id(7672571082055804287)
,p_button_name=>'VIEWISSUES'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_api.id(6781134785393890859)
,p_button_image_alt=>'View Issues'
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:92:&SESSION.::&DEBUG.:92:P92_ID,LAST_VIEW:&P200_ID.,200'
,p_icon_css_classes=>'fa-chevron-right'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(7850662688165246065)
,p_button_sequence=>170
,p_button_plug_id=>wwv_flow_api.id(7850661299834246064)
,p_button_name=>'ADDATTACHMENT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_api.id(6781134785393890859)
,p_button_image_alt=>'Add Attachment'
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:43:&SESSION.::&DEBUG.:RP,43:P43_PROJECT_ID:&P200_ID.'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'eba_proj_fw.is_edit_authorized(',
'    p_username   => upper(:APP_USER),',
'    p_project_id => :P200_ID ) = ''Y'''))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_icon_css_classes=>'fa-plus'
,p_security_scheme=>wwv_flow_api.id(7306166303644991446)
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(6170185602300053780)
,p_button_sequence=>190
,p_button_plug_id=>wwv_flow_api.id(6170184185846053770)
,p_button_name=>'ADDSTATUSUPDATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_api.id(6781134785393890859)
,p_button_image_alt=>'Add Status Report'
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:116:&SESSION.::&DEBUG.:116:P116_PROJECT_ID,LAST_VIEW:&P200_ID.,200'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'eba_proj_fw.is_edit_authorized(',
'    p_username   => upper(:APP_USER),',
'    p_project_id => :P200_ID ) = ''Y'''))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_icon_css_classes=>'fa-plus'
,p_security_scheme=>wwv_flow_api.id(7306166303644991446)
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(7850662494642246065)
,p_button_sequence=>190
,p_button_plug_id=>wwv_flow_api.id(7850661299834246064)
,p_button_name=>'VIEWATTACHMENTS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_api.id(6781134785393890859)
,p_button_image_alt=>'View Attachments'
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:66:&SESSION.::&DEBUG.:66:P66_ID,LAST_VIEW:&P200_ID.,200'
,p_icon_css_classes=>'fa-chevron-right'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(6170185781539053780)
,p_button_sequence=>200
,p_button_plug_id=>wwv_flow_api.id(6170184185846053770)
,p_button_name=>'VIEWSTATUSUPDATES'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_api.id(6781134785393890859)
,p_button_image_alt=>'View Status Reports'
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:162:&SESSION.::&DEBUG.:RP,162:P162_ID,LAST_VIEW:&P200_ID.,200'
,p_icon_css_classes=>'fa-chevron-right'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(5858924687523292564)
,p_button_sequence=>210
,p_button_plug_id=>wwv_flow_api.id(6175188098818279587)
,p_button_name=>'ADD_PROJECT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_api.id(6781134785393890859)
,p_button_image_alt=>'Add Project'
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:300:&SESSION.::&DEBUG.:300, 301, 302:P300_PARENT_PROJECT_ID:&P200_ID.'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'eba_proj_fw.is_edit_authorized(',
'    p_username   => upper(:APP_USER),',
'    p_project_id => :P200_ID,',
'    p_min_auth   => 3 ) = ''Y'''))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_icon_css_classes=>'fa-plus'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
,p_security_scheme=>wwv_flow_api.id(7306166303644991446)
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(7904106198283380085)
,p_branch_action=>'f?p=&APP_ID.:200:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_branch_comment=>'Created 30-APR-2012 13:01 by CBCHO'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3464855603990033899)
,p_name=>'P200_HIDE_ASSOC_AIS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(6876982536741771680)
,p_item_default=>'N'
,p_prompt=>'Hide Associated Action Items'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov=>'STATIC:Hide Associated Action Items;Y'
,p_begin_on_new_line=>'N'
,p_grid_column=>5
,p_grid_label_column_span=>0
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'from eba_proj_status_ms m',
'where ( m.project_id = :P200_ID ',
'        or (nvl(:P200_INC_CHILD,''N'') = ''Y'' and ',
'            m.project_id in (select id ',
'                             from eba_proj_status s',
'                             where parent_project_id = :P200_ID))',
'      )'))
,p_display_when_type=>'EXISTS'
,p_field_template=>wwv_flow_api.id(6781134578441890854)
,p_item_template_options=>'#DEFAULT#:margin-left-none'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'1'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(5861358106128305115)
,p_name=>'P200_ROW_KEY'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(7850684803474340043)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select row_key',
'from eba_proj_status',
'where id = :P200_ID'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(5906658096149525902)
,p_name=>'P200_INC_CHILD'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(7850684803474340043)
,p_item_default=>'N'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'U'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6839207001254763837)
,p_name=>'P200_LAST_UPD_ID'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(7850684803474340043)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(7850657299148246055)
,p_name=>'P200_SHOW'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(7850684803474340043)
,p_item_default=>'PARENT'
,p_source=>'PARENT'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(7850657481154246056)
,p_name=>'P200_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(7850684803474340043)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(7850685302566349261)
,p_name=>'P200_PROJECT_NAME'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(7850684803474340043)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ps.project',
'from eba_proj_status ps',
'where ps.id = :P200_ID'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(7900455885672135856)
,p_name=>'P200_PARENT_PROJECT_ID'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(7850684803474340043)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select parent_project_id',
'from eba_proj_status s',
'where id = :P200_ID'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15411670954962263968)
,p_name=>'P200_SHOW_CLOSED_MSS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(6876982536741771680)
,p_item_default=>'OPEN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov=>'STATIC:Show All Milestones (Open and Closed);ALL'
,p_grid_label_column_span=>0
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'from eba_proj_status_ms m',
'where ( m.project_id = :P200_ID ',
'        or (nvl(:P200_INC_CHILD,''N'') = ''Y'' and ',
'            m.project_id in (select id ',
'                             from eba_proj_status s',
'                             where parent_project_id = :P200_ID))',
'      )'))
,p_display_when_type=>'EXISTS'
,p_field_template=>wwv_flow_api.id(6781134578441890854)
,p_item_template_options=>'#DEFAULT#:margin-left-none'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'1'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15434098232548468467)
,p_name=>'P200_SHOW_CLOSED_AIS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(6859406041913071521)
,p_item_default=>'OPEN'
,p_prompt=>'Show All Action Items'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov=>'STATIC:Show All Action Items (Open and Closed);ALL'
,p_grid_label_column_span=>0
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'  from eba_proj_status_ais a,',
'       eba_proj_status s,',
'       eba_proj_status_codes c',
' where a.project_id = s.id',
'   and s.project_status = c.id(+)',
'   and (',
'            a.project_id = :P200_ID',
'            or ',
'            (a.project_id in (select ps.id from EBA_PROJ_STATUS ps where ps.parent_project_id = :P200_ID))',
'       )'))
,p_display_when_type=>'EXISTS'
,p_field_template=>wwv_flow_api.id(6781134578441890854)
,p_item_template_options=>'#DEFAULT#:margin-left-none'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'1'
);
wwv_flow_api.component_end;
end;
/
begin
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>134
,p_default_id_offset=>172493832712964115
,p_default_owner=>'MISO'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18132640013810772930)
,p_name=>'P200_SHOW_CLOSED_CHILDREN'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(6175188098818279587)
,p_item_default=>'OPEN'
,p_prompt=>'Show All Child Projects'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov=>'STATIC:Show All Child Projects (Open and Closed);ALL'
,p_grid_label_column_span=>0
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'from eba_proj_status s,',
'    eba_proj_status_codes c',
'where s.parent_project_id = :P200_ID'))
,p_display_when_type=>'EXISTS'
,p_field_template=>wwv_flow_api.id(6781134578441890854)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'1'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(19167489050095858475)
,p_name=>'P200_SHOW_CLOSED_ISSUES'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(7672571082055804287)
,p_item_default=>'OPEN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov=>'STATIC:Show All Issues (Open and Closed);ALL'
,p_cattributes_element=>'style="padding-left:15px;"'
,p_grid_label_column_span=>0
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'from eba_proj_status_issues i',
'where (i.project_id = :P200_ID ',
'        or (nvl(:P200_INC_CHILD,''N'') = ''Y'' and ',
'            i.project_id in (select id ',
'                             from eba_proj_status s',
'                             where parent_project_id = :P200_ID))',
'      )'))
,p_display_when_type=>'EXISTS'
,p_field_template=>wwv_flow_api.id(6781134578441890854)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'1'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(19850569649909020733)
,p_name=>'P200_SHOW_ONLY_GOLD'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(7850662880860246065)
,p_item_default=>'ALL'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov=>'STATIC:Show Only "Gold" Updates;GOLD'
,p_grid_label_column_span=>0
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'  from eba_proj_status_updates u,',
'       eba_proj_status s,',
'       eba_proj_status_codes c',
' where u.project_id = s.id',
'   and s.project_status = c.id(+)',
'   and u.gold_yn = ''Y''',
'   and (',
'            u.project_id = :P200_ID',
'            or ',
'            (u.project_id in (select ps.id from EBA_PROJ_STATUS ps where ps.parent_project_id = :P200_ID))',
'       )'))
,p_display_when_type=>'EXISTS'
,p_field_template=>wwv_flow_api.id(6781134578441890854)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'1'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(21157152573935596472)
,p_name=>'P200_MS_CNT'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(7850684803474340043)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(21157152645900596473)
,p_name=>'P200_AI_CNT'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(7850684803474340043)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(21421205789927207729)
,p_name=>'P200_ISS_CNT'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(7850684803474340043)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(3464856007324033903)
,p_computation_sequence=>10
,p_computation_item=>'P200_HIDE_ASSOC_AIS'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'N'
,p_compute_when=>'P200_HIDE_ASSOC_AIS'
,p_compute_when_type=>'ITEM_IS_NULL'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(7850686308022369803)
,p_computation_sequence=>10
,p_computation_item=>'P200_PROJECT_NAME'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'QUERY'
,p_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ps.project||'' - ''|| nvl(eba_proj_fw.get_project_rowkey(p_project_id => :P200_ID), ps.row_key) x',
'from eba_proj_status ps',
'where ps.id = :P200_ID'))
,p_computation_error_message=>'Unable to determine project name'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(15466902774832804742)
,p_computation_sequence=>10
,p_computation_item=>'P200_SHOW_CLOSED_MSS'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'OPEN'
,p_compute_when=>'P200_SHOW_CLOSED_MSS'
,p_compute_when_type=>'ITEM_IS_NULL'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(15466902910455804743)
,p_computation_sequence=>10
,p_computation_item=>'P200_SHOW_CLOSED_AIS'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'OPEN'
,p_compute_when=>'P200_SHOW_CLOSED_AIS'
,p_compute_when_type=>'ITEM_IS_NULL'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(19850570030025020737)
,p_computation_sequence=>10
,p_computation_item=>'P200_SHOW_ONLY_GOLD'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'ALL'
,p_compute_when=>'P200_SHOW_ONLY_GOLD'
,p_compute_when_type=>'ITEM_IS_NULL'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(19974070832738191831)
,p_computation_sequence=>10
,p_computation_item=>'P200_SHOW_CLOSED_ISSUES'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'OPEN'
,p_compute_when=>'P200_SHOW_CLOSED_ISSUES'
,p_compute_when_type=>'ITEM_IS_NULL'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(21157152730872596474)
,p_computation_sequence=>10
,p_computation_item=>'P200_AI_CNT'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'QUERY'
,p_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select count(*)',
'  from eba_proj_status_ais',
' where project_id = :P200_ID'))
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(21157152859548596475)
,p_computation_sequence=>10
,p_computation_item=>'P200_MS_CNT'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'QUERY'
,p_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select count(*)',
'  from eba_proj_status_ms',
' where project_id = :P200_ID'))
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(21421205878567207730)
,p_computation_sequence=>10
,p_computation_item=>'P200_ISS_CNT'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'QUERY'
,p_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select count(*)',
'  from eba_proj_status_issues',
' where project_id = :P200_ID'))
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(7850665680016246071)
,p_computation_sequence=>20
,p_computation_item=>'LAST_VIEW'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'&APP_PAGE_ID.'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(12189612332943421330)
,p_name=>'Go To People'
,p_event_sequence=>40
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'location.hash == ''#projectPeople'''
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(12189612493296421331)
,p_event_id=>wwv_flow_api.id(12189612332943421330)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(''a[href="#projectPeople"]'').click();'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(18936903770390923963)
,p_name=>'Go To Countries'
,p_event_sequence=>50
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'location.hash == ''#projectCountries'''
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(18936903895024923964)
,p_event_id=>wwv_flow_api.id(18936903770390923963)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(''a[href="#projectCountries"]'').click();'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(12189612809643421334)
,p_name=>'Go To Resources'
,p_event_sequence=>60
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'location.hash == ''#projectResources'''
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(12189612818497421335)
,p_event_id=>wwv_flow_api.id(12189612809643421334)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(''a[href="#projectResources"]'').click();'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(12189612559018421332)
,p_name=>'Go To Issues'
,p_event_sequence=>70
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'location.hash == ''#projectIssues'''
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(12189612659838421333)
,p_event_id=>wwv_flow_api.id(12189612559018421332)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(''a[href="#projectIssues"]'').click();'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(12189613022484421337)
,p_name=>'Go To Milestones'
,p_event_sequence=>80
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'location.hash == ''#projectMilestones'''
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(12189613206442421338)
,p_event_id=>wwv_flow_api.id(12189613022484421337)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(''a[href="#projectMilestones"]'').click();'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(12189613220756421339)
,p_name=>'Go To Action Items'
,p_event_sequence=>90
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'location.hash == ''#projectActionItems'''
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(12189613390797421340)
,p_event_id=>wwv_flow_api.id(12189613220756421339)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(''a[href="#projectActionItems"]'').click();'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(12189613417097421341)
,p_name=>'Go To Links'
,p_event_sequence=>100
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'location.hash == ''#projectLinks'''
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(12189613573757421342)
,p_event_id=>wwv_flow_api.id(12189613417097421341)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(''a[href="#projectLinks"]'').click();'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(12189614096535421347)
,p_name=>'Go To Updates'
,p_event_sequence=>110
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'location.hash == ''#projectUpdates'''
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(12189614138552421348)
,p_event_id=>wwv_flow_api.id(12189614096535421347)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(''a[href="#projectUpdates"]'').click();'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(12189613678869421343)
,p_name=>'Go To Attachments'
,p_event_sequence=>120
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'location.hash == ''#projectAttachments'''
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(12189613733915421344)
,p_event_id=>wwv_flow_api.id(12189613678869421343)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(''a[href="#projectAttachments"]'').click();'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(12189613874407421345)
,p_name=>'Go To Status Reports'
,p_event_sequence=>130
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'location.hash == ''#projectStatusReports'''
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(12189614004948421346)
,p_event_id=>wwv_flow_api.id(12189613874407421345)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(''a[href="#projectStatusReports"]'').click();'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(11755343441441499257)
,p_name=>'Refresh Updates'
,p_event_sequence=>140
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'#projectUpdates, #projectContentActions'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'this.data && this.data.dialogPageId == "12"'
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(11755343589958499258)
,p_event_id=>wwv_flow_api.id(11755343441441499257)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(7850662880860246065)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(3845119586207116896)
,p_event_id=>wwv_flow_api.id(11755343441441499257)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(7850657692478246056)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(11755343769470499260)
,p_name=>'Refresh Links'
,p_event_sequence=>150
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'#projectLinks, #projectContentActions'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'this.data && this.data.dialogPageId == "3"'
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(11755343907300499261)
,p_event_id=>wwv_flow_api.id(11755343769470499260)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(7850660011671246063)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(3845119468565116895)
,p_event_id=>wwv_flow_api.id(11755343769470499260)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(7850657692478246056)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(12771733314367219939)
,p_name=>'Refresh Attachments'
,p_event_sequence=>160
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'#projectAttachments, #projectContentActions'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'this.data && this.data.dialogPageId == "43"'
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(12771733453483219940)
,p_event_id=>wwv_flow_api.id(12771733314367219939)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(7850661299834246064)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(3845119649387116897)
,p_event_id=>wwv_flow_api.id(12771733314367219939)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(7850657692478246056)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(11755344428138499267)
,p_name=>'Refresh Action Items'
,p_event_sequence=>170
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'window'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'(this.data && this.data.dialogPageId == "73") || (this.data && this.data.P87_CASCADE_AI === ''Yes'' && this.data.dialogPageId == "87")'
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(11755344599884499268)
,p_event_id=>wwv_flow_api.id(11755344428138499267)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(6859406041913071521)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(19974073385650191856)
,p_event_id=>wwv_flow_api.id(11755344428138499267)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(6876982536741771680)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(3845119738538116898)
,p_event_id=>wwv_flow_api.id(11755344428138499267)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(7850657692478246056)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(12771733101833219936)
,p_name=>'Refresh Milestones'
,p_event_sequence=>180
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'#projectMilestones, #projectContentActions'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'this.data && (this.data.dialogPageId == "48" || this.data.dialogPageId == "87")'
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(12771733209907219937)
,p_event_id=>wwv_flow_api.id(12771733101833219936)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(6876982536741771680)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(3845119811247116899)
,p_event_id=>wwv_flow_api.id(12771733101833219936)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(7850657692478246056)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(11755345270024499275)
,p_name=>'Refresh People'
,p_event_sequence=>190
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'#projectPeople, #projectContentActions'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'this.data && this.data.dialogPageId == "150"'
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(11755345334643499276)
,p_event_id=>wwv_flow_api.id(11755345270024499275)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(11575120504928865332)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(3845119983583116900)
,p_event_id=>wwv_flow_api.id(11755345270024499275)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(7850657692478246056)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(18936903996516923965)
,p_name=>'Refresh Countries'
,p_event_sequence=>200
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'#projectCountries, #projectContentActions'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'this.data && this.data.dialogPageId == "210"'
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(18936904016385923966)
,p_event_id=>wwv_flow_api.id(18936903996516923965)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(18936891929877923945)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(3845120052994116901)
,p_event_id=>wwv_flow_api.id(18936903996516923965)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(7850657692478246056)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(12771732710209219932)
,p_name=>'Refresh Issues'
,p_event_sequence=>210
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'#projectIssues, #projectContentActions'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'this.data && this.data.dialogPageId == "24"'
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(12771732790004219933)
,p_event_id=>wwv_flow_api.id(12771732710209219932)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(7672571082055804287)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(3845120179456116902)
,p_event_id=>wwv_flow_api.id(12771732710209219932)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(7850657692478246056)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(12771732838585219934)
,p_name=>'Refresh Resources'
,p_event_sequence=>220
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'#projectResources, #projectContentActions'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'this.data && this.data.dialogPageId == "170"'
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(12771732943669219935)
,p_event_id=>wwv_flow_api.id(12771732838585219934)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(12093211532791299432)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(3845120216252116903)
,p_event_id=>wwv_flow_api.id(12771732838585219934)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(7850657692478246056)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(12771743530423219941)
,p_name=>'Refresh Status Reports'
,p_event_sequence=>230
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'#projectStatusReports, #projectContentActions'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'this.data && this.data.dialogPageId == "116"'
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(12771743618284219942)
,p_event_id=>wwv_flow_api.id(12771743530423219941)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(6170184185846053770)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(3845120372901116904)
,p_event_id=>wwv_flow_api.id(12771743530423219941)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(7850657692478246056)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(11755345420960499277)
,p_name=>'Handle Show / Hide Content Regions'
,p_event_sequence=>240
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(11755345599587499278)
,p_event_id=>wwv_flow_api.id(11755345420960499277)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'(function() {',
'  function toggleRegion() {',
'      var $region = $(this)',
'        showIssuesRegion = $region.find(''#projectIssues_heading'').length === 1 && Number($v(''P200_ISS_CNT'')) > 0;',
'        showMilestonesRegion = $region.find(''#projectMilestones_heading'').length === 1 && Number($v(''P200_MS_CNT'')) > 0;',
'        showActionItemsRegion = $region.find(''#projectActionItems_heading'').length === 1 && Number($v(''P200_AI_CNT'')) > 0;',
'        noDataFound = $region.find(''.nodatafound'').length === 1;',
'      ',
'      //triggering after hide/show because that what the RDS response to',
'      if (noDataFound && !showIssuesRegion && !showMilestonesRegion && !showActionItemsRegion) {',
'        $region.hide();',
'        $region.trigger(''apexafterhide'');',
'      } else {',
'        $region.show();',
'        $region.trigger(''apexaftershow'');',
'      }',
'  }',
'  ',
'  function initHIdeShowRegions() {',
'    var $regions = $(''.js-dynamicHideShowRegion''),',
'        $rds = $(''.apex-rds'');',
'',
'    $regions',
'      .each(toggleRegion)',
'      .on(''apexafterrefresh'', toggleRegion);',
' ',
'    //using visiblity over display to avoid DOM movement issues',
'    $rds.css(''visibility'', ''visible'');',
'',
'    if ($v(''P200_SHOW_CLOSED_MSS'') == ''ALL''){',
'        $(''span.completed-milestones'').show();',
'    }',
'    else{',
'       $(''span.completed-milestones'').hide();',
'    }',
'  } ',
'',
'  //using load because document.ready here goes before the RDS has added its listeners',
'  $(window).on(''theme42ready'',initHIdeShowRegions);',
'}())'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(15411670471328263963)
,p_name=>'Toggle Action Items'
,p_event_sequence=>250
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P200_SHOW_CLOSED_AIS'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(15411670605136263964)
,p_event_id=>wwv_flow_api.id(15411670471328263963)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P200_SHOW_CLOSED_AIS := nvl(:P200_SHOW_CLOSED_AIS,''OPEN'');'
,p_attribute_02=>'P200_SHOW_CLOSED_AIS'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(15411670685924263965)
,p_event_id=>wwv_flow_api.id(15411670471328263963)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(6859406041913071521)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(15411671035542263969)
,p_name=>'Toggle Milestones'
,p_event_sequence=>260
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P200_SHOW_CLOSED_MSS'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(15411671130959263970)
,p_event_id=>wwv_flow_api.id(15411671035542263969)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P200_SHOW_CLOSED_MSS := nvl(:P200_SHOW_CLOSED_MSS,''OPEN'');'
,p_attribute_02=>'P200_SHOW_CLOSED_MSS'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(15411671231434263971)
,p_event_id=>wwv_flow_api.id(15411671035542263969)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(6876982536741771680)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(15411671790438263976)
,p_name=>'refresh on close after add ai'
,p_event_sequence=>270
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(7850659807419246063)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(15411671901538263977)
,p_event_id=>wwv_flow_api.id(15411671790438263976)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(6859406041913071521)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(21421206025227207732)
,p_event_id=>wwv_flow_api.id(15411671790438263976)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'(function() {',
'  function toggleRegion() {',
'      var $region = $(this)',
'        showIssuesRegion = $region.find(''#projectIssues_heading'').length === 1 && Number($v(''P200_ISS_CNT'')) > 0;',
'        showMilestonesRegion = $region.find(''#projectMilestones_heading'').length === 1 && Number($v(''P200_MS_CNT'')) > 0;',
'        showActionItemsRegion = $region.find(''#projectActionItems_heading'').length === 1 && Number($v(''P200_AI_CNT'')) > 0;',
'        noDataFound = $region.find(''.nodatafound'').length === 1;',
'      ',
'      //triggering after hide/show because that what the RDS response to',
'      if (noDataFound && !showIssuesRegion && !showMilestonesRegion && !showActionItemsRegion) {',
'        $region.hide();',
'        $region.trigger(''apexafterhide'');',
'      } else {',
'        $region.show();',
'        $region.trigger(''apexaftershow'');',
'      }',
'  }',
'  ',
'  function initHIdeShowRegions() {',
'    var $regions = $(''.js-dynamicHideShowRegion''),',
'        $rds = $(''.apex-rds'');',
'',
'    $regions',
'      .each(toggleRegion)',
'      .on(''apexafterrefresh'', toggleRegion);',
' ',
'    //using visiblity over display to avoid DOM movement issues',
'    $rds.css(''visibility'', ''visible'');',
'',
'    if ($v(''P200_SHOW_CLOSED_MSS'') == ''ALL''){',
'        $(''span.completed-milestones'').show();',
'    }',
'    else{',
'       $(''span.completed-milestones'').hide();',
'    }',
'  } ',
'',
'  //using load because document.ready here goes before the RDS has added its listeners',
'  $(window).on(''theme42ready'',initHIdeShowRegions);',
'}())'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(15411671977558263978)
,p_name=>'refresh on close after add ms'
,p_event_sequence=>280
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(7850664802084246069)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(21421206119392207733)
,p_event_id=>wwv_flow_api.id(15411671977558263978)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'(function() {',
'  function toggleRegion() {',
'      var $region = $(this)',
'        showIssuesRegion = $region.find(''#projectIssues_heading'').length === 1 && Number($v(''P200_ISS_CNT'')) > 0;',
'        showMilestonesRegion = $region.find(''#projectMilestones_heading'').length === 1 && Number($v(''P200_MS_CNT'')) > 0;',
'        showActionItemsRegion = $region.find(''#projectActionItems_heading'').length === 1 && Number($v(''P200_AI_CNT'')) > 0;',
'        noDataFound = $region.find(''.nodatafound'').length === 1;',
'      ',
'      //triggering after hide/show because that what the RDS response to',
'      if (noDataFound && !showIssuesRegion && !showMilestonesRegion && !showActionItemsRegion) {',
'        $region.hide();',
'        $region.trigger(''apexafterhide'');',
'      } else {',
'        $region.show();',
'        $region.trigger(''apexaftershow'');',
'      }',
'  }',
'  ',
'  function initHIdeShowRegions() {',
'    var $regions = $(''.js-dynamicHideShowRegion''),',
'        $rds = $(''.apex-rds'');',
'',
'    $regions',
'      .each(toggleRegion)',
'      .on(''apexafterrefresh'', toggleRegion);',
' ',
'    //using visiblity over display to avoid DOM movement issues',
'    $rds.css(''visibility'', ''visible'');',
'',
'    if ($v(''P200_SHOW_CLOSED_MSS'') == ''ALL''){',
'        $(''span.completed-milestones'').show();',
'    }',
'    else{',
'       $(''span.completed-milestones'').hide();',
'    }',
'  } ',
'',
'  //using load because document.ready here goes before the RDS has added its listeners',
'  $(window).on(''theme42ready'',initHIdeShowRegions);',
'}())'))
);
wwv_flow_api.component_end;
end;
/
begin
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>134
,p_default_id_offset=>172493832712964115
,p_default_owner=>'MISO'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(15440627457852744429)
,p_event_id=>wwv_flow_api.id(15411671977558263978)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(6876982536741771680)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(18132640190037772931)
,p_name=>'Refresh Child Projects'
,p_event_sequence=>290
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P200_SHOW_CLOSED_CHILDREN'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(18132640242991772932)
,p_event_id=>wwv_flow_api.id(18132640190037772931)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(6175188098818279587)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(18175886594239760652)
,p_name=>'Adjust landing for location.hash'
,p_event_sequence=>300
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'location.hash > '''''
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(18175886690014760653)
,p_event_id=>wwv_flow_api.id(18175886594239760652)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(''li.apex-rds-item apex-rds-selected a'').click();',
'location.hash = '''';',
'location.href = location.href;'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(19167489209673858476)
,p_name=>'Toggle Issues'
,p_event_sequence=>310
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P200_SHOW_CLOSED_ISSUES'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(19167489398269858478)
,p_event_id=>wwv_flow_api.id(19167489209673858476)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P200_SHOW_CLOSED_ISSUES := nvl(:P200_SHOW_CLOSED_ISSUES,''OPEN'');'
,p_attribute_02=>'P200_SHOW_CLOSED_ISSUES'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(19167489233726858477)
,p_event_id=>wwv_flow_api.id(19167489209673858476)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(7672571082055804287)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(19850569777452020734)
,p_name=>'Toggle Updates'
,p_event_sequence=>320
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P200_SHOW_ONLY_GOLD'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(19850569842490020735)
,p_event_id=>wwv_flow_api.id(19850569777452020734)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P200_SHOW_ONLY_GOLD := nvl(:P200_SHOW_ONLY_GOLD,''ALL'');'
,p_attribute_02=>'P200_SHOW_ONLY_GOLD'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(19850570009150020736)
,p_event_id=>wwv_flow_api.id(19850569777452020734)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(7850662880860246065)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(19850573960596020776)
,p_name=>'Refresh MS & AI regions after AI edit close'
,p_event_sequence=>330
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(6859406041913071521)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(19850574056481020777)
,p_event_id=>wwv_flow_api.id(19850573960596020776)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(6859406041913071521)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(19850574120345020778)
,p_event_id=>wwv_flow_api.id(19850573960596020776)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(6876982536741771680)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(21421205963636207731)
,p_event_id=>wwv_flow_api.id(19850573960596020776)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'(function() {',
'  function toggleRegion() {',
'      var $region = $(this)',
'        showIssuesRegion = $region.find(''#projectIssues_heading'').length === 1 && Number($v(''P200_ISS_CNT'')) > 0;',
'        showMilestonesRegion = $region.find(''#projectMilestones_heading'').length === 1 && Number($v(''P200_MS_CNT'')) > 0;',
'        showActionItemsRegion = $region.find(''#projectActionItems_heading'').length === 1 && Number($v(''P200_AI_CNT'')) > 0;',
'        noDataFound = $region.find(''.nodatafound'').length === 1;',
'      ',
'      //triggering after hide/show because that what the RDS response to',
'      if (noDataFound && !showIssuesRegion && !showMilestonesRegion && !showActionItemsRegion) {',
'        $region.hide();',
'        $region.trigger(''apexafterhide'');',
'      } else {',
'        $region.show();',
'        $region.trigger(''apexaftershow'');',
'      }',
'  }',
'  ',
'  function initHIdeShowRegions() {',
'    var $regions = $(''.js-dynamicHideShowRegion''),',
'        $rds = $(''.apex-rds'');',
'',
'    $regions',
'      .each(toggleRegion)',
'      .on(''apexafterrefresh'', toggleRegion);',
' ',
'    //using visiblity over display to avoid DOM movement issues',
'    $rds.css(''visibility'', ''visible'');',
'',
'    if ($v(''P200_SHOW_CLOSED_MSS'') == ''ALL''){',
'        $(''span.completed-milestones'').show();',
'    }',
'    else{',
'       $(''span.completed-milestones'').hide();',
'    }',
'  } ',
'',
'  //using load because document.ready here goes before the RDS has added its listeners',
'  $(window).on(''theme42ready'',initHIdeShowRegions);',
'}())'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(20233641973893250563)
,p_name=>'Refresh MS & AI regions after MS edit close'
,p_event_sequence=>340
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(6876982536741771680)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(20233642029194250564)
,p_event_id=>wwv_flow_api.id(20233641973893250563)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(6876982536741771680)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(20233642203134250565)
,p_event_id=>wwv_flow_api.id(20233641973893250563)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(6859406041913071521)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(21421206218231207734)
,p_event_id=>wwv_flow_api.id(20233641973893250563)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'(function() {',
'  function toggleRegion() {',
'      var $region = $(this)',
'        showIssuesRegion = $region.find(''#projectIssues_heading'').length === 1 && Number($v(''P200_ISS_CNT'')) > 0;',
'        showMilestonesRegion = $region.find(''#projectMilestones_heading'').length === 1 && Number($v(''P200_MS_CNT'')) > 0;',
'        showActionItemsRegion = $region.find(''#projectActionItems_heading'').length === 1 && Number($v(''P200_AI_CNT'')) > 0;',
'        noDataFound = $region.find(''.nodatafound'').length === 1;',
'      ',
'      //triggering after hide/show because that what the RDS response to',
'      if (noDataFound && !showIssuesRegion && !showMilestonesRegion && !showActionItemsRegion) {',
'        $region.hide();',
'        $region.trigger(''apexafterhide'');',
'      } else {',
'        $region.show();',
'        $region.trigger(''apexaftershow'');',
'      }',
'  }',
'  ',
'  function initHIdeShowRegions() {',
'    var $regions = $(''.js-dynamicHideShowRegion''),',
'        $rds = $(''.apex-rds'');',
'',
'    $regions',
'      .each(toggleRegion)',
'      .on(''apexafterrefresh'', toggleRegion);',
' ',
'    //using visiblity over display to avoid DOM movement issues',
'    $rds.css(''visibility'', ''visible'');',
'',
'    if ($v(''P200_SHOW_CLOSED_MSS'') == ''ALL''){',
'        $(''span.completed-milestones'').show();',
'    }',
'    else{',
'       $(''span.completed-milestones'').hide();',
'    }',
'  } ',
'',
'  //using load because document.ready here goes before the RDS has added its listeners',
'  $(window).on(''theme42ready'',initHIdeShowRegions);',
'}())'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(3464855775741033900)
,p_name=>'Hide MS AAIs'
,p_event_sequence=>350
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P200_HIDE_ASSOC_AIS'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(3464855847642033901)
,p_event_id=>wwv_flow_api.id(3464855775741033900)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P200_HIDE_ASSOC_AIS := nvl(:P200_HIDE_ASSOC_AIS,''N'');'
,p_attribute_02=>'P200_HIDE_ASSOC_AIS'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(3464855934131033902)
,p_event_id=>wwv_flow_api.id(3464855775741033900)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(6876982536741771680)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(515250919465859774)
,p_name=>'Email everybody in this project'
,p_event_sequence=>360
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(525989885294977603)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(515251020285859775)
,p_event_id=>wwv_flow_api.id(515250919465859774)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var spinner$ = apex.util.showSpinner( $( "#projectPeople" ) );',
'// generateEmails is an Ajax Callback defined on this page that returns an JSON object.',
'apex.server.process( "generateEmails", {',
'    x01: $v( ''P200_ID'' )',
'}, {',
'    success: function(pData) {',
'        var list = pData.emails.join( ''; '' );',
'        window.location.href = encodeURI(''mailto:'' + list + ''?subject='') + encodeURIComponent( $v( ''P200_PROJECT_NAME'' ) );',
'        spinner$.remove();',
'    },',
'    error: function(pData) {',
'        console.log(pData);',
'    }',
'});',
''))
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(5862891207404691088)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'follow'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'merge into eba_proj_status_favorites dest',
'using (',
'    select upper(:APP_USER) user_name, :P200_ID content_id, ''PROJECT'' content_type',
'    from dual',
'    ) src',
'on ( dest.user_name = src.user_name and dest.content_id = src.content_id and dest.content_type = src.content_type )',
'when not matched then',
'    insert (dest.user_name, dest.content_id, dest.content_type)',
'    values (src.user_name, src.content_id, src.content_type);'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(5862891098802688127)
,p_process_success_message=>'Following project.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(5866509589266635423)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'unfollow'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'delete from eba_proj_status_favorites',
'where user_name = upper(:APP_USER)',
'    and content_id = :P200_ID',
'    and content_type = ''PROJECT'';'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(5866509290953632404)
,p_process_success_message=>'No longer following project.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(12288021856073109843)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Enforce ACL'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_found boolean := false;',
'begin',
'    for c1 in ( select null',
'                from eba_proj_status',
'                where id = :P200_ID ) loop',
'        l_found := true;',
'    end loop;',
'    if l_found = false then',
'        owa_util.redirect_url(',
'            apex_util.prepare_url(''f?p=''||:APP_ID||'':HOME:''||:APP_SESSION)',
'        );',
'        apex_application.stop_apex_engine;',
'    end if;',
'end loop;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(6169915798449703943)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'count clicks'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'insert into EBA_PROJ_STATUS_CLICKS (project_id) values (:P200_ID);',
'delete from EBA_PROJ_STATUS_CLICKS where VIEW_TIMESTAMP < (sysdate - 90);',
'commit;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(515251130333859776)
,p_process_sequence=>10
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'generateEmails'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'',
'  apex_json.open_object;',
'  apex_json.open_array(''emails'');',
'  ',
'    for c1 in (select',
'       case',
'           when instr(u.username,''@'') > 0 then',
'               u.username',
'           when instr(u.username,''@'') = 0 and u.email_address is not null then',
'               u.email_address',
'       end as email',
'    from eba_proj_user_ref rf,',
'       eba_proj_roles r,',
'       eba_proj_status_users u',
'    where rf.project_id = apex_application.g_x01',
'       and rf.user_id = u.id',
'       and rf.role_id = r.id )',
'',
'    LOOP',
'      apex_json.write( c1.email );',
'    END LOOP;',
'',
'    apex_json.close_all;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.component_end;
end;
/
