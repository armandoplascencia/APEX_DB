prompt --application/pages/page_00022
begin
--   Manifest
--     PAGE: 00022
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
 p_id=>22
,p_user_interface_id=>wwv_flow_api.id(5783577205373975152)
,p_name=>'Project Issues Report'
,p_step_title=>'Project Issues Report'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(5956244196798598610)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'This is an interactive report of all project issues. Click the <strong>Reset</strong> button to reset the interactive report. Click the <strong>Actions</strong> button to define the number of rows displayed per page, filter, format, download, and/or '
||'save the interactive report.'
,p_last_upd_yyyymmddhh24miss=>'20190904142831'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(20101674347200139822)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(6781117976757890807)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(8972392840601050532)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(6781135716305890867)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NEVER'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(20101674945602139826)
,p_plug_name=>'Project Issues Report'
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton'
,p_plug_template=>wwv_flow_api.id(6781113968619890797)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select i.id,',
'       p.cat_id as category,',
'       p.project_status,',
'       case when p.project_status not in (select id from eba_proj_status_codes where is_closed_status = ''Y'') then',
'           ''Open''',
'       else',
'           ''Closed''',
'       end project_open_status,',
'       (select listagg(region_name, '', '') within group (order by region_name) from (select region_name from eba_proj_regions where id in (select region_id from eba_proj_countries where id in (select country_id from eba_proj_status_country_ref$ where '
||'project_id = p.id)))) region,',
'       i.tags,',
'       i.project_id,',
'       i.project_id as prj_id,',
'       i.cat_id as issue_category,',
'       i.issue,',
'       i.resolution,',
'       i.issue_detail,',
'       case when eba_proj_fw.is_edit_authorized(',
'                     p_username   => upper(:APP_USER),',
'                     p_project_id => i.project_id ) = ''Y'' then',
'           ''<a href="'' || apex_util.prepare_url(''f?p='' || :APP_ID || '':24:'' || :APP_SESSION || '':::24:P24_ID,P24_PROJECT_ID:'' || i.id || '','' || i.project_id) || ''"><img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil'
||'" alt="Edit Issue" /></a>''',
'       else',
'           null',
'       end as edit,',
'       case when i.owner_role_id is null then',
'           eba_proj_fw.get_name_from_email_address(i.issue_owner)',
'       else',
'           nvl((select r.name||'': ''||listagg(decode(u.first_name,null,eba_proj_fw.get_name_from_email_address(u.username),decode(u.last_name, null, eba_proj_fw.get_name_from_email_address(u.username), initcap(u.first_name || '' '' || u.last_name))),'', '
||''')',
'                   within group (order by lower(u.username)) owner',
'               from eba_proj_user_ref rf,',
'                    eba_proj_status_users u,',
'                    eba_proj_roles r',
'              where rf.role_id = i.owner_role_id',
'                and rf.project_id = i.project_id',
'                and u.id = rf.user_id',
'                and r.id = rf.role_id',
'              group by r.name',
'            ), (select ''No ''||r.name||'' defined''',
'                  from eba_proj_roles r',
'                 where r.id = i.owner_role_id)',
'            )',
'       end as issue_owner,',
'       i.issue_level,',
'       i.is_open,',
'       i.ref_num,',
'       i.resolved_on,',
'       i.created,',
'       case when i.link_01 is not null then i.link_01 end as url,',
'       lower(i.created_by) created_by,',
'       i.updated,',
'       lower(i.updated_by) updated_by',
'  from eba_proj_status_issues i, eba_proj_status p',
' where i.project_id = p.id'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(20101675030000139826)
,p_name=>'Project Issues Report'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLSX:PDF:RTF'
,p_owner=>'ALLAN'
,p_internal_uid=>18873198417305636698
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(20101675488225139828)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Edit'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(20101675900816139832)
,p_db_column_name=>'PROJECT_ID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Project'
,p_column_link=>'f?p=&APP_ID.:200:&SESSION.::&DEBUG.:RP,200:P200_ID:#PRJ_ID#'
,p_column_linktext=>'#PROJECT_ID#'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_api.id(11677310552046892880)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(20101676283436139832)
,p_db_column_name=>'ISSUE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Issue'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(20101676612848139833)
,p_db_column_name=>'RESOLUTION'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Resolution'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(20101677028011139833)
,p_db_column_name=>'ISSUE_DETAIL'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Issue Detail'
,p_allow_sorting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'CLOB'
,p_heading_alignment=>'LEFT'
,p_rpt_show_filter_lov=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(20101677865686139834)
,p_db_column_name=>'ISSUE_OWNER'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Issue Owner'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(20101678218261139835)
,p_db_column_name=>'ISSUE_LEVEL'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Issue Level'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_api.id(228697740287420773)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(20101678655838139835)
,p_db_column_name=>'IS_OPEN'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Is Open'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_api.id(9019252630556871632)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(20101679036363139835)
,p_db_column_name=>'RESOLVED_ON'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Resolved On'
,p_column_html_expression=>'<span style="white-space:nowrap;">#RESOLVED_ON#</span>'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'fmDD-MON-YYYY'
,p_tz_dependent=>'Y'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(20101679509744139836)
,p_db_column_name=>'CREATED'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Created'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'DD-MON-YYYY'
,p_tz_dependent=>'Y'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(20101679896462139836)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(20101680280693139836)
,p_db_column_name=>'UPDATED'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Updated'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'DD-MON-YYYY'
,p_tz_dependent=>'Y'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(20101680666347139837)
,p_db_column_name=>'UPDATED_BY'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Updated By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(19974123655097191859)
,p_db_column_name=>'EDIT'
,p_display_order=>24
,p_column_identifier=>'P'
,p_column_label=>'Edit'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_display_condition_type=>'FUNCTION_BODY'
,p_display_condition=>'return NVL(:REQUEST,''EMPTY'') NOT IN (''CSV'',''XLS'',''PDF'',''XML'',''RTF'',''HTMLD'');'
,p_display_condition2=>'PLSQL'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3845118289775116883)
,p_db_column_name=>'CATEGORY'
,p_display_order=>34
,p_column_identifier=>'Q'
,p_column_label=>'Project Category'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_api.id(9022120840149879876)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3591863988378606268)
,p_db_column_name=>'PROJECT_STATUS'
,p_display_order=>44
,p_column_identifier=>'R'
,p_column_label=>'Project Status'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_api.id(9025721939150772116)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3591864089719606269)
,p_db_column_name=>'PROJECT_OPEN_STATUS'
,p_display_order=>54
,p_column_identifier=>'S'
,p_column_label=>'Project Open Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(4379006461992736284)
,p_db_column_name=>'REF_NUM'
,p_display_order=>64
,p_column_identifier=>'T'
,p_column_label=>'Reference Number'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3878187455301047783)
,p_db_column_name=>'PRJ_ID'
,p_display_order=>74
,p_column_identifier=>'U'
,p_column_label=>'Prj id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3878187547903047784)
,p_db_column_name=>'ISSUE_CATEGORY'
,p_display_order=>84
,p_column_identifier=>'V'
,p_column_label=>'Issue Category'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_api.id(4036494858285212916)
,p_rpt_show_filter_lov=>'1'
,p_required_patch=>wwv_flow_api.id(4036491964090119980)
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(820204059746460385)
,p_db_column_name=>'TAGS'
,p_display_order=>94
,p_column_identifier=>'W'
,p_column_label=>'Tags'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(291222851752557116)
,p_db_column_name=>'URL'
,p_display_order=>104
,p_column_identifier=>'X'
,p_column_label=>'URL'
,p_column_link=>'#URL#'
,p_column_linktext=>'#URL#'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(196856813573043127)
,p_db_column_name=>'REGION'
,p_display_order=>114
,p_column_identifier=>'Y'
,p_column_label=>'Region'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(20101603215860943302)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'188731267'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'EDIT:ISSUE:PROJECT_ID:CATEGORY:ISSUE_CATEGORY:RESOLUTION:ISSUE_DETAIL:ISSUE_OWNER:ISSUE_LEVEL:IS_OPEN:RESOLVED_ON:UPDATED::REGION'
,p_sort_column_1=>'ISSUE_LEVEL'
,p_sort_direction_1=>'ASC'
,p_sort_column_2=>'UPDATED'
,p_sort_direction_2=>'DESC'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(19974073436973191857)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(20101674945602139826)
,p_button_name=>'RESET'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(6781134785393890859)
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&SESSION.::&DEBUG.:RP,&APP_PAGE_ID.,RIR::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(2080319716320023591)
,p_name=>'Refresh on edit'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(20101674945602139826)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(2080319897499023592)
,p_event_id=>wwv_flow_api.id(2080319716320023591)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(20101674945602139826)
);
wwv_flow_api.component_end;
end;
/
