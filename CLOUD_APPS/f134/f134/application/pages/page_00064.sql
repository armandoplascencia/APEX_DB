prompt --application/pages/page_00064
begin
--   Manifest
--     PAGE: 00064
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
 p_id=>64
,p_user_interface_id=>wwv_flow_api.id(5783577205373975152)
,p_name=>'&APPLICATION_TITLE.: Home'
,p_alias=>'HOME'
,p_step_title=>'&APPLICATION_TITLE.: Home'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_api.id(5956243887448595899)
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.homepage-hero .t-HeroRegion-form,',
'.homepage-hero .t-HeroRegion-buttons {',
'  display: table-cell;',
'  vertical-align: middle;',
'}',
'',
'@media only screen and (max-width: 640px) {',
'    .homepage-hero .t-HeroRegion-form,',
'    .homepage-hero .t-HeroRegion-buttons {',
'        vertical-align: top;',
'    }',
'}',
'',
'.pa-Cards .t-Card .t-Card-titleWrap { padding: 16px 12px; }',
'.pa-Cards .t-Card .t-Card-title { text-align: left; }',
'.pa-Cards .t-Card .t-Card-title .fa { vertical-align: top; line-height: 24px; color: rgba(0, 0, 0, 0.50); margin-right: 4px; }',
'.pa-Cards .t-Card .t-Card-body { padding: 0px; border-top-width: 0; }',
'.pa-Cards-body { display: block; }',
'.pa-Cards-body-row { display: -webkit-box; display: -ms-flexbox; display: flex; padding: 12px; }',
'.pa-Cards-body-title { -webkit-box-flex: 1; -ms-flex-positive: 1; flex-grow: 1; font-size: 14px; line-height: 24px; color: rgba(0, 0, 0, 0.65); }',
'.pa-Cards-body-header { background: rgba(0, 0, 0, .05); -webkit-box-align: end; -ms-flex-align: end; align-items: flex-end; }',
'.pa-Cards-body-header .pa-Cards-body-title { color: rgba(0, 0, 0, 0.85); }',
'.pa-Cards-body-badgeContainer { -ms-flex-negative: 0; flex-shrink: 0; min-width: 15%; text-align: center; margin-left: 4px; }',
'.pa-Cards-body-badgeLabel { display: block; font-size: 11px; line-height: 16px; color: rgba(0, 0, 0, .55); margin-bottom: 4px; }',
'.pa-Cards-body-badge { display: inline-block; background: rgba(0, 0, 0, .075); padding: 4px 8px; line-height: 16px; border-radius: 16px; font-size: 12px; min-width: 32px; text-align: center; color: rgba(0, 0, 0, .65); }',
'.pa-Cards-body-badge:hover, .pa-Cards-body-badge:focus { -webkit-box-shadow: 0 0 0 2px rgba(5, 114, 206, 0.50); box-shadow: 0 0 0 2px rgba(5, 114, 206, 0.50); }',
'.pa-Cards-body-badge--hot { background-color: #0572ce; color: #FFF; }',
'.pa-Cards .t-Card-colorFill { display: none; pointer-events: none;}',
'.pa-Cards--hideInfo .t-Card-info { display: none; }',
'.pa-Cards .t-Card-info { padding: 8px 12px; border-top: 1px solid rgba(0, 0, 0, .05); margin-top: 0; background-color: rgba(0, 0, 0, .01); }',
'.pa-Cards .t-Card .t-Card-title {margin-right: 64px;}',
'.pa-Cards .t-Card-icon {',
'    background-color: transparent !important;',
'}',
'.pa-Cards .t-Card-icon .t-Icon {',
'    width: auto;',
'}',
'',
'.project-edit-link {opacity: 0; transition: 0.2s ease;}',
'.pa-Cards .t-Card:hover .project-edit-link {opacity: 1;}',
'',
'span.project-logo {',
'    display: block;',
'    width: 100%;',
'    background-size: cover;',
'    height: 100%;',
'    border-radius: 2px;',
'    background-position: 50%;',
'    background-repeat: no-repeat;',
'}',
'',
'.t-Cards-item.has-image .t-Card-icon {',
'    border-radius: 0;',
'    background-color: transparent;',
'}',
'.t-Cards-item.has-initials {',
'    ',
'}',
'img.apex-edit-pencil {',
'    width: 16px;',
'    height: 16px;',
'    border-radius: 0;',
'}'))
,p_step_template=>wwv_flow_api.id(6781077225859890733)
,p_page_template_options=>'#DEFAULT#'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'This page provides a listing of all projects.  Using this page you can:',
'',
'<ul>',
'<li>Filter projects using left side filter bar</li>',
'<li>Control sort order of projects</li>',
'<li>Create new projects, assuming you have the privilege</li>',
'</ul>',
'',
'<p>Counts of action items, milestones, and issues represent the number that are open and the number of updates that were created within the last 30 days.</p>'))
,p_last_upd_yyyymmddhh24miss=>'20190906085417'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(3959683125102815162)
,p_name=>'Simple Cards'
,p_template=>wwv_flow_api.id(6781104626075890777)
,p_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:u-colors:t-Cards--basic:t-Cards--displayInitials:t-Cards--3cols:t-Cards--desc-3ln:t-Cards--animColorFill'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select card_title,',
'       card_link,',
'       card_icon,',
'       case when substr(card_initials, 1, 4) = ''<spa'' then',
'           ''has-image''',
'       else',
'           ''has-initials''',
'       end as card_modifiers,',
'       card_text,',
'       card_subtext,',
'       case when substr(card_initials, 1, 4) = ''<spa'' then',
'           card_initials',
'       else',
'           decode(instr(card_initials,'' ''),',
'                 0, ',
'                 substr(card_initials,1,2),',
'                 substr(card_initials,1,1)||substr(card_initials,instr(card_initials,'' '')+1,1)',
'           )',
'      end as card_initials,',
'      x.created,',
'      x.updated',
'from',
'(',
'select ',
'      s.PROJECT  card_title, ',
'      apex_util.prepare_url(''f?p=''||:APP_ID||'':200:''||:APP_SESSION||'':::200:P200_ID:''||s.id) card_link,',
'      null card_icon,',
'      null card_modifiers,',
'      --',
'      --',
'      rtrim(c.status_short_desc||'', ''||',
'      nvl(s.headline,nvl(s.description ,s.goal)),'', '')',
'      card_text,',
'     --',
'    decode(eba_proj_stat_ui.is_project_open(s.id), 0, ''Closed Project'', 1, ''Open Project'') || '', ''||',
'    decode(s.acl_status_level,1,''Open Access'',2,''Restricted Access'',3,''Restricted Access'') || '', ''||',
'    case when eba_proj_fw.get_preference_value( ''MOST_IMPORTANT_PROJECT_ROLE'' ) != ''Preference does not exist'' and exists',
'         (select null',
'            from eba_proj_user_ref rf,',
'                 eba_proj_status_users u,',
'                 eba_proj_roles r',
'           where rf.project_id = s.id',
'             and rf.user_id = u.id',
'             and rf.role_id = r.id',
'             and r.id = eba_proj_fw.get_preference_value( ''MOST_IMPORTANT_PROJECT_ROLE'' )',
'             and eba_proj_fw.is_edit_authorized( u.username, rf.project_id ) = ''Y'') then',
'        (   select listagg(decode(u.first_name,null,eba_proj_fw.get_name_from_email_address(u.username),decode(u.last_name, null, eba_proj_fw.get_name_from_email_address(u.username), initcap(u.first_name || '' '' || u.last_name))),'', '') within group',
'                (order by nvl(rf.acl_status_level,r.default_acl_status_level) desc, lower(u.username))',
'            from eba_proj_user_ref rf,',
'                eba_proj_status_users u,',
'                eba_proj_roles r',
'            where rf.project_id = s.id',
'                and rf.user_id = u.id',
'                and rf.role_id = r.id',
'                and r.id = eba_proj_fw.get_preference_value( ''MOST_IMPORTANT_PROJECT_ROLE'' )',
'                and eba_proj_fw.is_edit_authorized( u.username, rf.project_id ) = ''Y'' )',
'    else',
'        (   select listagg(decode(u.first_name,null,eba_proj_fw.get_name_from_email_address(u.username),decode(u.last_name, null, eba_proj_fw.get_name_from_email_address(u.username), initcap(u.first_name || '' '' || u.last_name))),'', '') within group',
'                (order by nvl(rf.acl_status_level,r.default_acl_status_level) desc, lower(u.username))',
'            from eba_proj_user_ref rf,',
'                eba_proj_status_users u,',
'                eba_proj_roles r',
'            where rf.project_id = s.id',
'                and rf.user_id = u.id',
'                and rf.role_id = r.id',
'                and eba_proj_fw.is_edit_authorized( u.username, rf.project_id ) = ''Y'' )',
'    end as card_subtext,',
'   case when s.logo_blob is null then',
'       upper(',
'           replace(replace(',
'               replace(replace(replace(replace(replace(s.project,''-'','' ''),'','','' ''),'';'','' ''),''|'','' ''),''/'','' ''),',
'           ''  '','' ''),''  '','' ''))',
'   else',
'       ''<span class="project-logo" style="background-image: url(''''''||apex_util.get_blob_file_src(p_item_name  => ''P2_LOGO'',p_v1 => s.id, p_content_disposition => ''inline'')||'''''');" aria-hidden="true"></span>''',
'   end as card_initials,',
'   s.created,',
'   s.updated',
'from EBA_PROJ_STATUS s,',
'     eba_proj_status_codes c',
'where c.id = s.PROJECT_STATUS(+) and ',
'      s.project is not null',
'    --',
'     and (NVL(:P64_OWNER,''0'') = ''0'' or',
'          exists (select null',
'                  from eba_proj_user_ref rf,',
'                      eba_proj_status_users u,',
'                      eba_proj_roles r',
'                  where lower(u.id) = lower(:P64_OWNER)',
'                      and rf.user_id = u.id',
'                      and rf.project_id = s.id',
'                      and rf.role_id = r.id',
'                      and eba_proj_fw.is_edit_authorized( u.username, rf.project_id ) = ''Y''',
'                 )',
'            )',
'    and (:P64_STATUS is null or '':''||:P64_STATUS||'':'' like ''%:''||s.project_status||'':%'')',
'    and (:P64_SIZE is null or s.size_id = :P64_SIZE)',
'    and (nvl(:P64_CATEGORY,0) = 0 or s.cat_id = :P64_CATEGORY)',
'    and (nvl(:P64_DEAL_TYPE,0) = 0 or s.deal_type_id = :P64_DEAL_TYPE)',
'    and (:P64_SEARCH is null ',
'           or instr(upper(s.PROJECT),upper(:P64_SEARCH))>0',
'           or instr(upper(s.goal),upper(:P64_SEARCH))>0',
'           or instr(upper(s.description),upper(:P64_SEARCH))>0',
'           or instr(upper(s.row_key),upper(:P64_SEARCH))>0',
'           or instr(upper(s.code_name),upper(:P64_SEARCH))>0 ',
'           )',
'    and (NVL(:P64_FOLLOWING,''0'') != ''1'' or',
'             exists (',
'             select 1 from EBA_PROJ_STATUS_FAVORITES f ',
'             where f.content_id = s.id and f.user_name = upper(:APP_USER)))',
') x',
'where nvl(:P64_DISPLAY,''SIMPLECARDS'') = ''SIMPLECARDS''',
'order by decode(nvl(:P64_SORT,''DATE''),',
'                 ''DATE'',to_char(greatest(x.updated,x.created),''YYYYMMDDHH24MISS''),',
'                 ''CREATED'',to_char(x.created,''YYYYMMDDHH24MISS''),',
'                 ''x'') desc nulls last,',
'             decode(nvl(:P64_SORT,''DATE''),',
'                 ''PROJECT'', x.card_title,',
'                 ''x'') nulls last'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P64_STATUS,P64_OWNER,P64_CATEGORY,P64_FOLLOWING,P64_SEARCH,P64_DISPLAY,P64_SORT,P64_ROWS,P64_SIZE'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(6834801944438429013)
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_num_rows_item=>'P64_ROWS'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3959683222642815163)
,p_query_column_id=>1
,p_column_alias=>'CARD_TITLE'
,p_column_display_sequence=>1
,p_column_heading=>'Card title'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3959683372872815164)
,p_query_column_id=>2
,p_column_alias=>'CARD_LINK'
,p_column_display_sequence=>2
,p_column_heading=>'Card link'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3959683442363815165)
,p_query_column_id=>3
,p_column_alias=>'CARD_ICON'
,p_column_display_sequence=>3
,p_column_heading=>'Card icon'
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3959683542739815166)
,p_query_column_id=>4
,p_column_alias=>'CARD_MODIFIERS'
,p_column_display_sequence=>4
,p_column_heading=>'Card modifiers'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3959683639502815167)
,p_query_column_id=>5
,p_column_alias=>'CARD_TEXT'
,p_column_display_sequence=>5
,p_column_heading=>'Card text'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3959683752980815168)
,p_query_column_id=>6
,p_column_alias=>'CARD_SUBTEXT'
,p_column_display_sequence=>6
,p_column_heading=>'Card subtext'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3959683870419815169)
,p_query_column_id=>7
,p_column_alias=>'CARD_INITIALS'
,p_column_display_sequence=>7
,p_column_heading=>'Card initials'
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(4200108013324826270)
,p_query_column_id=>8
,p_column_alias=>'CREATED'
,p_column_display_sequence=>8
,p_column_heading=>'Created'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(4200108113767826271)
,p_query_column_id=>9
,p_column_alias=>'UPDATED'
,p_column_display_sequence=>9
,p_column_heading=>'Updated'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(6019022790414287768)
,p_plug_name=>'Hidden Items'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(6781104626075890777)
,p_plug_display_sequence=>120
,p_plug_display_point=>'REGION_POSITION_07'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(6019022999765290495)
,p_plug_name=>'About Filtering'
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(6781114406166890801)
,p_plug_display_sequence=>110
,p_plug_display_point=>'REGION_POSITION_04'
,p_plug_source=>'<p>You can filter the rows returned by this query by clicking on the <strong>Filters</strong> control and checking data values.  All checked values within a group will be or-ed, values in different groups will be and-ed.  Search filters are also and-'
||'ed, and multiple general search filters are also and-ed. </p>'
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
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(6829615159548260385)
,p_name=>'Project Cards'
,p_template=>wwv_flow_api.id(6781104626075890777)
,p_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_sub_css_classes=>'pa-Cards'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:u-colors:t-Cards--basic:t-Cards--displayInitials:t-Cards--cols:t-Cards--animColorFill'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select id,',
'       card_title,',
'       null as card_link,',
'       card_icon,',
'       card_modifiers,',
'       card_text,',
'       description,',
'       case when headline is not null then',
'           ''<br><strong>Headline:</strong> '' || headline || ''<br><strong>Updated:</strong> '' || apex_util.get_since(updated) || '' by '' || lower(updated_by)',
'       else',
'           ''<br><strong>Updated:</strong> '' || apex_util.get_since(updated) || '' by '' || lower(updated_by)',
'       end as headline,',
'       rtrim(card_subtext, '', '') as card_subtext,',
'       created,',
'       updated,',
'       ai_display,',
'       ms_display,',
'       pi_display,',
'       up_display,',
'       ai_me_url,',
'       ai_tm_url,',
'       ms_me_url,',
'       ms_tm_url,',
'       pi_me_url,',
'       pi_tm_url,',
'       up_me_url,',
'       up_tm_url,',
'       ai_me_cnt,',
'       ai_tm_cnt,',
'       ms_me_cnt,',
'       ms_tm_cnt,',
'       pi_me_cnt,',
'       pi_tm_cnt,',
'       up_me_cnt,',
'       up_tm_cnt,',
'       decode(ms_me_cnt,0,'' '',''pa-Cards-body-badge--hot'') ms_me_is_hot,',
'       decode(ai_me_cnt,0,'' '',''pa-Cards-body-badge--hot'') ai_me_is_hot,',
'       decode(pi_me_cnt,0,'' '',''pa-Cards-body-badge--hot'') pi_me_is_hot,',
'       decode(up_me_cnt,0,'' '',''pa-Cards-body-badge--hot'') up_me_is_hot,',
'       decode(instr(card_initials,'' ''),',
'                 0, ',
'                 substr(card_initials,1,2),',
'                 substr(card_initials,1,1)||substr(card_initials,instr(card_initials,'' '')+1,1)',
'           ) card_initials',
'from',
'(',
'select ',
'      s.id,',
'      s.PROJECT  card_title, ',
'      apex_util.prepare_url(''f?p=''||:APP_ID||'':200:''||:APP_SESSION||'':::200:P200_ID:''||s.id) card_link,',
'      null card_icon,',
'      null card_modifiers,',
'      rtrim(c.status_short_desc||'', ''||nvl(s.headline,nvl(s.description ,s.goal)),'', '') card_text,',
'      rtrim(nvl(s.description, s.goal),'', '') description,',
'      case when s.HEADLINE_LAST_UPDATED is not null then',
'           apex_util.get_since(s.HEADLINE_LAST_UPDATED) || '': '' || s.headline',
'      else',
'           null',
'      end as headline,',
'      s.project,',
'      s.created,',
'      s.updated,',
'      s.updated_by,',
'      --',
'      case when apex_util.get_build_option_status(',
'                    p_application_id    => :APP_ID,',
'                    p_build_option_name => ''Project Action Items''',
'                ) = ''INCLUDE'' then',
'          '' ''',
'      else',
'          ''style="display: none"''',
'      end AI_DISPLAY,',
'      case when apex_util.get_build_option_status(',
'                    p_application_id    => :APP_ID,',
'                    p_build_option_name => ''Project Milestones''',
'                ) = ''INCLUDE'' then',
'          '' ''',
'      else',
'          ''style="display: none"''',
'      end MS_DISPLAY,',
'      case when apex_util.get_build_option_status(',
'                    p_application_id    => :APP_ID,',
'                    p_build_option_name => ''Project Issues''',
'                ) = ''INCLUDE'' then',
'          '' ''',
'      else',
'          ''style="display: none"''',
'      end PI_DISPLAY,',
'      case when apex_util.get_build_option_status(',
'                    p_application_id    => :APP_ID,',
'                    p_build_option_name => ''Project Updates''',
'                ) = ''INCLUDE'' then',
'          '' ''',
'      else',
'          ''style="display: none"''',
'      end UP_DISPLAY,',
'      --',
'      apex_util.prepare_url(''f?p='' || :APP_ID || '':55:'' || :APP_SESSION || ''::NO:55,RP,RIR:P55_ID,P200_ID,P55_OWNER:'' || s.id || '','' || s.id || '','' || :APP_USER) as ai_me_url,',
'      apex_util.prepare_url(''f?p='' || :APP_ID || '':55:'' || :APP_SESSION || ''::NO:55,RP,RIR:P55_ID,P200_ID:'' || s.id || '','' || s.id) as ai_tm_url,',
'      apex_util.prepare_url(''f?p='' || :APP_ID || '':34:'' || :APP_SESSION || ''::NO:34,RP,RIR:P34_ID,P200_ID,P34_OWNER:'' || s.id || '','' || s.id || '','' || lower(:APP_USER) || '',Open'') as ms_me_url,',
'      apex_util.prepare_url(''f?p='' || :APP_ID || '':34:'' || :APP_SESSION || ''::NO:34,RP,RIR:P34_ID,P200_ID:'' || s.id || '','' || s.id) as ms_tm_url,',
'      apex_util.prepare_url(''f?p='' || :APP_ID || '':92:'' || :APP_SESSION || ''::NO:92,RP,RIR:P92_ID,P200_ID,IRC_ISSUE_OWNER,IR_OPEN:'' || s.id || '','' || s.id || '','' || :NICE_USERNAME || '',Open'') as pi_me_url,',
'      apex_util.prepare_url(''f?p='' || :APP_ID || '':92:'' || :APP_SESSION || ''::NO:92,RP,RIR:P92_ID,P200_ID,IR_OPEN:'' || s.id || '','' || s.id || '',Open'') as pi_tm_url,',
'      apex_util.prepare_url(''f?p='' || :APP_ID || '':75:'' || :APP_SESSION || ''::NO:75,RP,RIR:P75_PROJECT,P200_ID,P75_UPDATED,P75_UPDATE_BY:'' || s.id || '','' || s.id || '',30,'' || :APP_USER) as up_me_url,',
'      apex_util.prepare_url(''f?p='' || :APP_ID || '':75:'' || :APP_SESSION || ''::NO:75,RP,RIR:P75_PROJECT,P200_ID,P75_UPDATED:'' || s.id || '','' || s.id || '',30'') as up_tm_url,',
'      --',
'      (select count(*) from eba_proj_status_ais ai where ai.action_status = ''Open'' and (upper(ai.action_owner_01) = :APP_USER or upper(ai.action_owner_02) = :APP_USER or upper(ai.action_owner_03) = :APP_USER or upper(ai.action_owner_04) = :APP_USER o'
||'r exists (select null from eba_proj_user_ref rf where rf.project_id = ai.project_id and rf.user_id = :CURRENT_USER_ID and rf.role_id = ai.owner_role_id)) and ai.project_id = s.id) as ai_me_cnt,',
'      (select count(*) from eba_proj_status_ais where action_status = ''Open'' and project_id = s.id) as ai_tm_cnt,',
'      (select count(*) from eba_proj_status_ms ms where ms.milestone_status = ''Open'' and (upper(ms.milestone_owner) = :APP_USER or exists (select null from eba_proj_user_ref rf where rf.project_id = ms.project_id and rf.user_id = :CURRENT_USER_ID and'
||' rf.role_id = ms.owner_role_id)) and ms.project_id = s.id) as ms_me_cnt,',
'      (select count(*) from eba_proj_status_ms where milestone_status = ''Open'' and project_id = s.id) as ms_tm_cnt,',
'      (select count(*) from eba_proj_status_issues i where i.is_open = ''Y'' and (upper(i.issue_owner) = :APP_USER or exists (select null from eba_proj_user_ref rf where rf.project_id = i.project_id and rf.user_id = :CURRENT_USER_ID and rf.role_id = i.'
||'owner_role_id)) and i.project_id = s.id) as pi_me_cnt,',
'      (select count(*) from eba_proj_status_issues where is_open = ''Y'' and project_id = s.id) as pi_tm_cnt,',
'      (select count(*) from eba_proj_status_updates u where upper(u.update_owner) = :APP_USER and u.project_id = s.id and u.created >= sysdate - 30) as up_me_cnt,',
'      (select count(*) from eba_proj_status_updates u where u.project_id = s.id and u.created >= sysdate - 30) as up_tm_cnt,',
'      --',
'      (select ''<strong>'' || STATUS_SHORT_DESC || ''</strong>'' from EBA_PROJ_STATUS_CODES where id = s.project_status) || '', '' ||',
'      decode(eba_proj_stat_ui.is_project_open(s.id), 0, ''Closed Project, '', 1, null) ||',
'      decode(eba_proj_stat_ui.is_project_open(s.id), 0, decode(s.acl_status_level,1,''Open Access, '',2,''Restricted Access, '',3,''Restricted Access, ''), 1, null) ||',
'      case when eba_proj_fw.get_preference_value( ''MOST_IMPORTANT_PROJECT_ROLE'' ) != ''Preference does not exist'' and exists',
'         (select null',
'            from eba_proj_user_ref rf,',
'                 eba_proj_status_users u,',
'                 eba_proj_roles r',
'           where rf.project_id = s.id',
'             and rf.user_id = u.id',
'             and rf.role_id = r.id',
'             and r.id = eba_proj_fw.get_preference_value( ''MOST_IMPORTANT_PROJECT_ROLE'' )',
'             and eba_proj_fw.is_edit_authorized( u.username, rf.project_id ) = ''Y'') then',
'        (   select listagg(decode(u.first_name,null,eba_proj_fw.get_name_from_email_address(u.username),decode(u.last_name, null, eba_proj_fw.get_name_from_email_address(u.username), initcap(u.first_name || '' '' || u.last_name))),'', '') within group',
'                (order by nvl(rf.acl_status_level,r.default_acl_status_level) desc, lower(u.username))',
'            from eba_proj_user_ref rf,',
'                eba_proj_status_users u,',
'                eba_proj_roles r',
'            where rf.project_id = s.id',
'                and rf.user_id = u.id',
'                and rf.role_id = r.id',
'                and r.id = eba_proj_fw.get_preference_value( ''MOST_IMPORTANT_PROJECT_ROLE'' )',
'                and eba_proj_fw.is_edit_authorized( u.username, rf.project_id ) = ''Y'' )',
'      else',
'        (   select listagg(decode(u.first_name,null,eba_proj_fw.get_name_from_email_address(u.username),decode(u.last_name, null, eba_proj_fw.get_name_from_email_address(u.username), initcap(u.first_name || '' '' || u.last_name))),'', '') within group',
'                (order by nvl(rf.acl_status_level,r.default_acl_status_level) desc, lower(u.username))',
'            from eba_proj_user_ref rf,',
'                eba_proj_status_users u,',
'                eba_proj_roles r',
'            where rf.project_id = s.id',
'                and rf.user_id = u.id',
'                and rf.role_id = r.id',
'                and eba_proj_fw.is_edit_authorized( u.username, rf.project_id ) = ''Y'' )',
'      end as card_subtext,',
'      upper(',
'       replace(replace(',
'           replace(replace(replace(replace(replace(s.project,''-'','' ''),'','','' ''),'';'','' ''),''|'','' ''),''/'','' ''),',
'       ''  '','' ''),''  '','' '')) card_initials',
'from EBA_PROJ_STATUS s,',
'     eba_proj_status_codes c',
'where c.id = s.PROJECT_STATUS(+) and ',
'      s.project is not null',
'    --',
'     and (NVL(:P64_OWNER,''0'') = ''0'' or',
'          exists (select null',
'                  from eba_proj_user_ref rf,',
'                      eba_proj_status_users u,',
'                      eba_proj_roles r',
'                  where lower(u.id) = lower(:P64_OWNER)',
'                      and rf.user_id = u.id',
'                      and rf.project_id = s.id',
'                      and rf.role_id = r.id',
'                      and eba_proj_fw.is_edit_authorized( u.username, rf.project_id ) = ''Y''',
'                 )',
'            )',
'    and (:P64_STATUS is null or '':''||:P64_STATUS||'':'' like ''%:''||s.project_status||'':%'')',
'    and (:P64_SIZE is null or s.size_id = :P64_SIZE)',
'    and (nvl(:P64_CATEGORY,0) = 0 or s.cat_id = :P64_CATEGORY)',
'    and (nvl(:P64_DEAL_TYPE,0) = 0 or s.deal_type_id = :P64_DEAL_TYPE)',
'    and (:P64_SEARCH is null ',
'           or instr(upper(s.PROJECT),upper(:P64_SEARCH))>0',
'           or instr(upper(s.goal),upper(:P64_SEARCH))>0',
'           or instr(upper(s.description),upper(:P64_SEARCH))>0',
'           or instr(upper(s.row_key),upper(:P64_SEARCH))>0',
'           or instr(upper(s.code_name),upper(:P64_SEARCH))>0 ',
'           )',
'    and (NVL(:P64_FOLLOWING,''0'') != ''1'' or',
'             exists (',
'             select 1 from EBA_PROJ_STATUS_FAVORITES f ',
'             where f.content_id = s.id and f.user_name = upper(:APP_USER)))',
') x',
'where nvl(:P64_DISPLAY,''CARDS'') = ''CARDS''',
'order by      ',
'             decode(nvl(:P64_SORT,''DATE''),',
'                 ''DATE'',to_char(greatest(x.updated,x.created),''YYYYMMDDHH24MISS''),',
'                 ''CREATED'',to_char(x.created,''YYYYMMDDHH24MISS''),',
'                 ''x'') desc nulls last,',
'             decode(nvl(:P64_SORT,''DATE''),',
'                 ''PROJECT'', x.card_title,',
'                 ''x'') nulls last'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P64_STATUS,P64_OWNER,P64_CATEGORY,P64_FOLLOWING,P64_SEARCH,P64_DISPLAY,P64_SORT,P64_ROWS,P64_SIZE'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(6834801944438429013)
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_no_data_found=>'No Projects Found'
,p_query_more_data=>'Too many projects to display, please filter'
,p_query_num_rows_item=>'P64_ROWS'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(336347107374425760)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>27
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6829615208043260386)
,p_query_column_id=>2
,p_column_alias=>'CARD_TITLE'
,p_column_display_sequence=>1
,p_column_heading=>'Card title'
,p_column_link=>'f?p=&APP_ID.:200:&SESSION.::&DEBUG.:RP,200:P200_ID:#ID#'
,p_column_linktext=>'#CARD_TITLE#'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(224574446883478218)
,p_query_column_id=>3
,p_column_alias=>'CARD_LINK'
,p_column_display_sequence=>36
,p_column_heading=>'Card Link'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6829615461678260388)
,p_query_column_id=>4
,p_column_alias=>'CARD_ICON'
,p_column_display_sequence=>2
,p_column_heading=>'Card icon'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6829615527768260389)
,p_query_column_id=>5
,p_column_alias=>'CARD_MODIFIERS'
,p_column_display_sequence=>3
,p_column_heading=>'Card modifiers'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6829615644242260390)
,p_query_column_id=>6
,p_column_alias=>'CARD_TEXT'
,p_column_display_sequence=>4
,p_column_heading=>'Card text'
,p_use_as_row_header=>'N'
,p_column_html_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="pa-Cards-body">',
'  <div class="pa-Cards-body-row pa-Cards-body-header" #MS_DISPLAY#>',
'    <span class="pa-Cards-body-title">Milestones</span>',
'    <span class="pa-Cards-body-badgeContainer">',
'      <span class="pa-Cards-body-badgeLabel">Me</span>',
'      <a href="#MS_ME_URL#" class="pa-Cards-body-badge #MS_ME_IS_HOT#">#MS_ME_CNT#</a>',
'    </span>',
'    <span class="pa-Cards-body-badgeContainer">',
'      <span class="pa-Cards-body-badgeLabel">Total</span>',
'      <a href="#MS_TM_URL#" class="pa-Cards-body-badge">#MS_TM_CNT#</a>',
'    </span>',
'  </div>',
'  <div class="pa-Cards-body-row" #AI_DISPLAY#>',
'    <span class="pa-Cards-body-title">Action Items</span>',
'    <span class="pa-Cards-body-badgeContainer">',
'      <a href="#AI_ME_URL#" class="pa-Cards-body-badge #AI_ME_IS_HOT#">#AI_ME_CNT#</a>',
'    </span>',
'    <span class="pa-Cards-body-badgeContainer">',
'      <a href="#AI_TM_URL#" class="pa-Cards-body-badge">#AI_TM_CNT#</a>',
'    </span>',
'  </div>',
'  <div class="pa-Cards-body-row" #PI_DISPLAY#>',
'    <span class="pa-Cards-body-title">Issues</span>',
'    <span class="pa-Cards-body-badgeContainer">',
'      <a href="#PI_ME_URL#" class="pa-Cards-body-badge #PI_ME_IS_HOT#">#PI_ME_CNT#</a>',
'    </span>',
'    <span class="pa-Cards-body-badgeContainer">',
'      <a href="#PI_TM_URL#" class="pa-Cards-body-badge">#PI_TM_CNT#</a>',
'    </span>',
'  </div>',
'  <div class="pa-Cards-body-row" #UP_DISPLAY#>',
'    <span class="pa-Cards-body-title">Updates</span>',
'    <span class="pa-Cards-body-badgeContainer">',
'      <a href="#UP_ME_URL#" class="pa-Cards-body-badge #UP_ME_IS_HOT#">#UP_ME_CNT#</a>',
'    </span>',
'    <span class="pa-Cards-body-badgeContainer">',
'      <a href="#UP_TM_URL#" class="pa-Cards-body-badge">#UP_TM_CNT#</a>',
'    </span>',
'  </div>',
'</div>'))
,p_heading_alignment=>'LEFT'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3845118878776116889)
,p_query_column_id=>7
,p_column_alias=>'DESCRIPTION'
,p_column_display_sequence=>34
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3845119063583116891)
,p_query_column_id=>8
,p_column_alias=>'HEADLINE'
,p_column_display_sequence=>35
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
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
 p_id=>wwv_flow_api.id(6829615724450260391)
,p_query_column_id=>9
,p_column_alias=>'CARD_SUBTEXT'
,p_column_display_sequence=>5
,p_column_heading=>'Card subtext'
,p_use_as_row_header=>'N'
,p_column_html_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#CARD_SUBTEXT#',
'#HEADLINE#',
''))
,p_heading_alignment=>'LEFT'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3878184886395047757)
,p_query_column_id=>10
,p_column_alias=>'CREATED'
,p_column_display_sequence=>32
,p_column_heading=>'Created'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3878184969675047758)
,p_query_column_id=>11
,p_column_alias=>'UPDATED'
,p_column_display_sequence=>33
,p_column_heading=>'Updated'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3591866278230606291)
,p_query_column_id=>12
,p_column_alias=>'AI_DISPLAY'
,p_column_display_sequence=>23
,p_column_heading=>'Ai display'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3591866337625606292)
,p_query_column_id=>13
,p_column_alias=>'MS_DISPLAY'
,p_column_display_sequence=>24
,p_column_heading=>'Ms display'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3591866489802606293)
,p_query_column_id=>14
,p_column_alias=>'PI_DISPLAY'
,p_column_display_sequence=>25
,p_column_heading=>'Pi display'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3591866566991606294)
,p_query_column_id=>15
,p_column_alias=>'UP_DISPLAY'
,p_column_display_sequence=>26
,p_column_heading=>'Up display'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3591865318777606282)
,p_query_column_id=>16
,p_column_alias=>'AI_ME_URL'
,p_column_display_sequence=>15
,p_column_heading=>'Ai me url'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3591865466130606283)
,p_query_column_id=>17
,p_column_alias=>'AI_TM_URL'
,p_column_display_sequence=>16
,p_column_heading=>'Ai tm url'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3591865591747606284)
,p_query_column_id=>18
,p_column_alias=>'MS_ME_URL'
,p_column_display_sequence=>17
,p_column_heading=>'Ms me url'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3591865633944606285)
,p_query_column_id=>19
,p_column_alias=>'MS_TM_URL'
,p_column_display_sequence=>18
,p_column_heading=>'Ms tm url'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3591865782875606286)
,p_query_column_id=>20
,p_column_alias=>'PI_ME_URL'
,p_column_display_sequence=>19
,p_column_heading=>'Pi me url'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3591865828715606287)
,p_query_column_id=>21
,p_column_alias=>'PI_TM_URL'
,p_column_display_sequence=>20
,p_column_heading=>'Pi tm url'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3591865966783606288)
,p_query_column_id=>22
,p_column_alias=>'UP_ME_URL'
,p_column_display_sequence=>21
,p_column_heading=>'Up me url'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3591866023185606289)
,p_query_column_id=>23
,p_column_alias=>'UP_TM_URL'
,p_column_display_sequence=>22
,p_column_heading=>'Up tm url'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3591864138587606270)
,p_query_column_id=>24
,p_column_alias=>'AI_ME_CNT'
,p_column_display_sequence=>7
,p_column_heading=>'Ai me cnt'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3591864212793606271)
,p_query_column_id=>25
,p_column_alias=>'AI_TM_CNT'
,p_column_display_sequence=>8
,p_column_heading=>'Ai tm cnt'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3591864387616606272)
,p_query_column_id=>26
,p_column_alias=>'MS_ME_CNT'
,p_column_display_sequence=>9
,p_column_heading=>'Ms me cnt'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3591864492362606273)
,p_query_column_id=>27
,p_column_alias=>'MS_TM_CNT'
,p_column_display_sequence=>10
,p_column_heading=>'Ms tm cnt'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3591864596168606274)
,p_query_column_id=>28
,p_column_alias=>'PI_ME_CNT'
,p_column_display_sequence=>11
,p_column_heading=>'Pi me cnt'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3591864694437606275)
,p_query_column_id=>29
,p_column_alias=>'PI_TM_CNT'
,p_column_display_sequence=>12
,p_column_heading=>'Pi tm cnt'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3591864765195606276)
,p_query_column_id=>30
,p_column_alias=>'UP_ME_CNT'
,p_column_display_sequence=>13
,p_column_heading=>'Up me cnt'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3591864825634606277)
,p_query_column_id=>31
,p_column_alias=>'UP_TM_CNT'
,p_column_display_sequence=>14
,p_column_heading=>'Up tm cnt'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(336347217538425761)
,p_query_column_id=>32
,p_column_alias=>'MS_ME_IS_HOT'
,p_column_display_sequence=>28
,p_column_heading=>'Ms me is hot'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(336347352339425762)
,p_query_column_id=>33
,p_column_alias=>'AI_ME_IS_HOT'
,p_column_display_sequence=>29
,p_column_heading=>'Ai me is hot'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(336347445568425763)
,p_query_column_id=>34
,p_column_alias=>'PI_ME_IS_HOT'
,p_column_display_sequence=>30
,p_column_heading=>'Pi me is hot'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(336347532360425764)
,p_query_column_id=>35
,p_column_alias=>'UP_ME_IS_HOT'
,p_column_display_sequence=>31
,p_column_heading=>'Up me is hot'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6829615856430260392)
,p_query_column_id=>36
,p_column_alias=>'CARD_INITIALS'
,p_column_display_sequence=>6
,p_column_heading=>'Card initials'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:RP,2:P2_ID:#ID#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="">'
,p_column_link_attr=>'title="Edit Project #CARD_TITLE#" class="project-edit-link"'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXPRESSION'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'eba_proj_fw.is_edit_authorized(',
'    p_username   => upper(:APP_USER),',
'    p_project_id => :P200_ID,',
'    p_min_auth   => 3 ) = ''Y'''))
,p_display_when_condition2=>'PLSQL'
,p_report_column_required_role=>wwv_flow_api.id(7306166303644991446)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(9068045725488017617)
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
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(9068046630834023420)
,p_plug_name=>'Search'
,p_region_template_options=>'#DEFAULT#:t-Region--hiddenOverflow:t-Form--stretchInputs:t-Region--hideHeader'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(6781115417665890803)
,p_plug_display_sequence=>100
,p_plug_display_point=>'REGION_POSITION_02'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(11748514665332776784)
,p_name=>'Project Report'
,p_template=>wwv_flow_api.id(6781115417665890803)
,p_display_sequence=>70
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_sub_css_classes=>'project-summary t-Report--inline'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:js-showMaximizeButton:t-Region--removeHeader:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--staticRowColors:t-Report--horizontalBorders:t-Report--rowHighlightOff'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select decode(s.parent_project_id,null,s.project||''000'',(select project from eba_proj_status p where p.id = s.parent_project_id)||''111''||s.project) sort_text,',
'    decode(s.parent_project_id,null,',
'        ''<a href="''||',
'        apex_util.prepare_url(''f?p=''||:APP_ID||'':200:''||:APP_SESSION||'':::200:P200_ID:''||s.id)||''">''||',
'        apex_escape.html(s.project)||''</a>'',',
'        ''<a href="''||',
'        apex_util.prepare_url(''f?p=''||:APP_ID||'':200:''||:APP_SESSION||'':::200:P200_ID:''||s.id)||',
'        ''"><span class="child-project-marker">''||apex_escape.html(s.project)||''</span></a>'') project,',
'    s.parent_project_id,',
'    c.status_short_desc status,',
'    (   select listagg(decode(u.first_name,null,eba_proj_fw.get_name_from_email_address(u.username),decode(u.last_name, null, eba_proj_fw.get_name_from_email_address(u.username), initcap(u.first_name || '' '' || u.last_name))),'', '') within group',
'            (order by nvl(rf.acl_status_level,r.default_acl_status_level) desc, lower(u.username))',
'        from eba_proj_user_ref rf,',
'            eba_proj_status_users u,',
'            eba_proj_roles r',
'        where rf.project_id = s.id',
'            and rf.user_id = u.id',
'            and rf.role_id = r.id',
'            and eba_proj_fw.is_edit_authorized( u.username, rf.project_id ) = ''Y'' ) as people,',
'    (   select listagg(lower(u.username),'', '') within group',
'            (order by nvl(rf.acl_status_level,r.default_acl_status_level) desc, lower(u.username))',
'        from eba_proj_user_ref rf,',
'            eba_proj_status_users u,',
'            eba_proj_roles r',
'        where rf.project_id = s.id',
'            and rf.user_id = u.id',
'            and rf.role_id = r.id',
'            and eba_proj_fw.is_edit_authorized( u.username, rf.project_id ) = ''Y'' ) as all_owners,',
'    (select category from EBA_PROJ_STATUS_CATS  cat where cat.id = s.cat_id) category,',
'    s.updated,',
'    s.id project_id,',
'    eba_proj_stat_get_con_comp(s.id) complete_status,',
'    ( select sz.project_size from eba_proj_status_sizes sz where sz.id = s.size_id ) project_size,',
'    case when eba_proj_fw.is_edit_authorized( :APP_USER, s.id ) = ''Y'' then',
'        ''<a href="''||apex_util.prepare_url(''f?p=''||:APP_ID||'':2:''||:APP_SESSION',
'            ||'':::RP,2:P2_ID,P200_ID:''||s.id||'',''||s.id)',
'            ||''"><img src="''||:IMAGE_PREFIX||''app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt=""></a>''',
'        else '' ''',
'    end as edit_link',
'from EBA_PROJ_STATUS s,',
'     eba_proj_status_codes c',
'where c.id = s.PROJECT_STATUS(+) and ',
'      s.project is not null',
'    --',
'     and (NVL(:P64_OWNER,''0'') = ''0'' ',
'            or exists ( select null',
'                        from eba_proj_user_ref rf,',
'                            eba_proj_status_users u,',
'                            eba_proj_roles r',
'                        where rf.project_id = s.id',
'                            and rf.user_id = u.id',
'                            and rf.role_id = r.id',
'                            and eba_proj_fw.is_edit_authorized( u.username, rf.project_id ) = ''Y''',
'                            and u.id = lower(:P64_OWNER))',
'    )',
'    and (:P64_STATUS is null or '':''||:P64_STATUS||'':'' like ''%:''||s.project_status||'':%'')',
'    and (:P64_SIZE is null or s.size_id = :P64_SIZE)',
'    and (nvl(:P64_CATEGORY,0) = 0 or s.cat_id = :P64_CATEGORY)',
'    and (nvl(:P64_DEAL_TYPE,0) = 0 or s.deal_type_id = :P64_DEAL_TYPE)',
'    and (:P64_SEARCH is null ',
'          or instr(upper(s.PROJECT),upper(:P64_SEARCH))>0',
'          or instr(upper(s.goal),upper(:P64_SEARCH))>0',
'          or instr(upper(s.description),upper(:P64_SEARCH))>0',
'          or instr(upper(s.row_key),upper(:P64_SEARCH))>0',
'          or instr(upper(s.code_name),upper(:P64_SEARCH))>0 ',
'          ) ',
'    and (NVL(:P64_FOLLOWING,''0'') != ''1'' or',
'            exists (',
'            select 1 from EBA_PROJ_STATUS_FAVORITES f ',
'            where f.content_id = s.id and f.user_name = upper(:APP_USER)))',
'    and nvl(:P64_DISPLAY,''CARDS'') = ''REPORT''',
'order by      ',
'             decode(nvl(:P64_SORT,''DATE''),',
'                 ''DATE'',to_char(greatest(s.updated,s.created),''YYYYMMDDHH24MISS''),',
'                 ''CREATED'',to_char(s.created,''YYYYMMDDHH24MISS''),',
'                 ''x'') desc nulls last,',
'             decode(nvl(:P64_SORT,''DATE''),',
'                 ''PROJECT'', s.project,',
'                 ''x'') nulls last'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P64_STATUS,P64_OWNER,P64_CATEGORY,P64_FOLLOWING,P64_SEARCH,P64_DISPLAY,P64_SORT,P64_ROWS,P64_SIZE'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(6781122235480890822)
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' '
,p_query_break_cols=>'0'
,p_query_no_data_found=>'No Projects Found'
,p_query_more_data=>'Too many projects to display, please filter'
,p_query_num_rows_item=>'P64_ROWS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>100000
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(11748518478655776805)
,p_query_column_id=>1
,p_column_alias=>'SORT_TEXT'
,p_column_display_sequence=>12
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(11748516167594776795)
,p_query_column_id=>2
,p_column_alias=>'PROJECT'
,p_column_display_sequence=>4
,p_column_heading=>'Project'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(11748516961599776798)
,p_query_column_id=>3
,p_column_alias=>'PARENT_PROJECT_ID'
,p_column_display_sequence=>3
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(11748517334056776800)
,p_query_column_id=>4
,p_column_alias=>'STATUS'
,p_column_display_sequence=>6
,p_column_heading=>'Status'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(20398312958648735531)
,p_query_column_id=>5
,p_column_alias=>'PEOPLE'
,p_column_display_sequence=>7
,p_column_heading=>'Owners'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(11748518098126776803)
,p_query_column_id=>6
,p_column_alias=>'ALL_OWNERS'
,p_column_display_sequence=>8
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(11748515412560776793)
,p_query_column_id=>7
,p_column_alias=>'CATEGORY'
,p_column_display_sequence=>9
,p_column_heading=>'&CAT_TITLE.'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'YES'
,p_derived_column=>'N'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(11748515764099776794)
,p_query_column_id=>8
,p_column_alias=>'UPDATED'
,p_column_display_sequence=>11
,p_column_heading=>'Updated'
,p_use_as_row_header=>'N'
,p_column_format=>'SINCE'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(11748516557773776796)
,p_query_column_id=>9
,p_column_alias=>'PROJECT_ID'
,p_column_display_sequence=>2
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(11748514940288776791)
,p_query_column_id=>10
,p_column_alias=>'COMPLETE_STATUS'
,p_column_display_sequence=>10
,p_column_heading=>'Completeness'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(12093256120611299478)
,p_query_column_id=>11
,p_column_alias=>'PROJECT_SIZE'
,p_column_display_sequence=>5
,p_column_heading=>'Size'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXPRESSION'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_util.get_build_option_status (',
'    p_application_id => :APP_ID,',
'    p_build_option_name => ''Project Sizes''',
') = ''INCLUDE'''))
,p_display_when_condition2=>'PLSQL'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18340398147332778474)
,p_query_column_id=>12
,p_column_alias=>'EDIT_LINK'
,p_column_display_sequence=>1
,p_column_heading=>'<span class="u-VisuallyHidden">Edit</span>'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_report_column_required_role=>wwv_flow_api.id(7306166303644991446)
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(13025536372490524809)
,p_name=>'Users Pending Approval'
,p_template=>wwv_flow_api.id(6781104626075890777)
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null id,',
'    ''warning'' ALERT_TYPE,',
'    ''Users Pending Approval'' as ALERT_TITLE,',
'    ''<a href="''',
'        ||apex_util.prepare_url(''f?p=''||:APP_ID||'':89:''||:APP_SESSION||'':::RIR:IREQ_ACCESS_LEVEL_ID:Pending Approval'')',
'        ||''" title="Manage the Access Control List">''||count(*)',
'        ||case when count(*) = 1 then '' user</a> is'' else '' users</a> are'' end',
'        ||'' pending approval. Click here to manage the access control list.'' ALERT_DESC,',
'    '''' alert_action',
'from eba_proj_status_users',
'where access_level_id = 0'))
,p_required_role=>wwv_flow_api.id(7306165779537991444)
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'from eba_proj_status_users',
'where access_level_id = 0'))
,p_display_condition_type=>'EXISTS'
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(6781119468078890811)
,p_query_num_rows=>100
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_break_cols=>'0'
,p_query_num_rows_type=>'0'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(13025536654457524812)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>1
,p_column_heading=>'ID'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(13025537043857524813)
,p_query_column_id=>2
,p_column_alias=>'ALERT_TYPE'
,p_column_display_sequence=>4
,p_column_heading=>'Alert Type'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(13025537472755524814)
,p_query_column_id=>3
,p_column_alias=>'ALERT_TITLE'
,p_column_display_sequence=>2
,p_column_heading=>'Alert Title'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(13025537855335524814)
,p_query_column_id=>4
,p_column_alias=>'ALERT_DESC'
,p_column_display_sequence=>3
,p_column_heading=>'Alert Desc'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(13025538233172524815)
,p_query_column_id=>5
,p_column_alias=>'ALERT_ACTION'
,p_column_display_sequence=>5
,p_column_heading=>'Alert Action'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(13025546709035616063)
,p_plug_name=>'ACL Warning'
,p_region_template_options=>'#DEFAULT#:t-Alert--colorBG:t-Alert--defaultIcons:t-Alert--warning:t-Alert--horizontal'
,p_plug_template=>wwv_flow_api.id(6781102788551890771)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.ACL_WARNING'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>'EBA_proj_fw.get_preference_value(''ACCESS_CONTROL_ENABLED'') = ''N'''
,p_plug_display_when_cond2=>'PLSQL'
,p_attribute_01=>'f?p=&APP_ID.:SETTINGS:&SESSION.::&DEBUG.:RP::'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(13025554039284528608)
,p_name=>'Notifications'
,p_template=>wwv_flow_api.id(6781104626075890777)
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'    id,',
'    decode(lower(NOTIFICATION_TYPE),''yellow'',''warning'',''red'',''danger'',lower(NOTIFICATION_TYPE)) as ALERT_TYPE,',
'    NOTIFICATION_NAME as ALERT_TITLE,',
'    NOTIFICATION_DESCRIPTION as ALERT_DESC,',
'    '''' alert_action',
'  from EBA_PROJ_STATUS_NOTIFICATIONS',
' where (DISPLAY_FROM is null or DISPLAY_FROM <= current_date) and',
'       (DISPLAY_UNTIL is null or DISPLAY_UNTIL >= current_date)',
' order by nvl(DISPLAY_SEQUENCE,0),NOTIFICATION_NAME'))
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'  from EBA_PROJ_STATUS_NOTIFICATIONS',
' where (DISPLAY_FROM is null or DISPLAY_FROM <= current_date) and',
'       (DISPLAY_UNTIL is null or DISPLAY_UNTIL >= current_date)'))
,p_display_condition_type=>'EXISTS'
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(6781119468078890811)
,p_query_num_rows=>100
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' '
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(13025554401336528610)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>1
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(13025554743033528611)
,p_query_column_id=>2
,p_column_alias=>'ALERT_TYPE'
,p_column_display_sequence=>2
,p_column_heading=>'Alert Type'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(13025555130128528611)
,p_query_column_id=>3
,p_column_alias=>'ALERT_TITLE'
,p_column_display_sequence=>3
,p_column_heading=>'Alert Title'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(13025555607130528611)
,p_query_column_id=>4
,p_column_alias=>'ALERT_DESC'
,p_column_display_sequence=>4
,p_column_heading=>'Alert Desc'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(13025555993102528612)
,p_query_column_id=>5
,p_column_alias=>'ALERT_ACTION'
,p_column_display_sequence=>5
,p_column_heading=>'Alert Action'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(13025573970329539375)
,p_plug_name=>'Show Timezone'
,p_region_template_options=>'#DEFAULT#:margin-top-md'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="clear:both;"'
,p_plug_template=>wwv_flow_api.id(6781104626075890777)
,p_plug_display_sequence=>80
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_point=>'BODY'
,p_plug_source=>'<div class="subInfoTextRegion"><p>Dates and Times are displayed in the <a href="&P64_TIMEZONE_URL.">&P64_TIMEZONE.</a> timezone.</p></div>'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(14250094974724497974)
,p_plug_name=>'&APPLICATION_TITLE.'
,p_region_name=>'projectMilestones'
,p_region_css_classes=>'homepage-hero'
,p_icon_css_classes=>'app-p-track'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(6781110778030890789)
,p_plug_display_sequence=>70
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'for c1 in ( select preference_value',
'            from eba_proj_preferences',
'            where preference_name = ''APPLICATION_SUBTITLE''',
'            union all',
'            select ''Collaboratively track projects, milestones, and action items.''',
'            from dual',
'            where not exists ( select null',
'                               from eba_proj_preferences',
'                               where preference_name = ''APPLICATION_SUBTITLE'')',
'          ) loop',
'    sys.htp.p(''<p>''||apex_escape.html(c1.preference_value)||''</p>'');',
'end loop;'))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(14250095266886497976)
,p_plug_name=>'Search'
,p_parent_plug_id=>wwv_flow_api.id(14250094974724497974)
,p_region_css_classes=>'t-Form--search'
,p_region_template_options=>'#DEFAULT#:t-Form--xlarge'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(6781104626075890777)
,p_plug_display_sequence=>80
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NEVER'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
,p_plug_comment=>'I have conditioned this out as we now have an omnipresent search in the page header.'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(13033815104942771631)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(6212459901559585507)
,p_button_name=>'VIEW_DASHBOARD'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_api.id(6781134785393890859)
,p_button_image_alt=>'View Dashboard'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:51:&SESSION.::&DEBUG.:RP::'
,p_icon_css_classes=>'fa-dashboard'
,p_required_patch=>wwv_flow_api.id(11916093816142635755)
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(8148433021648064652)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(9068046630834023420)
,p_button_name=>'P64_GO'
,p_button_static_id=>'P64_GO'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>wwv_flow_api.id(6781135529450890864)
,p_button_image_alt=>'Search'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition_type=>'NEVER'
,p_request_source=>'Go'
,p_request_source_type=>'STATIC'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(9068047233329023432)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(9068046630834023420)
,p_button_name=>'P64_RESET'
,p_button_static_id=>'P64_RESET'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(6781134954745890861)
,p_button_image_alt=>'Reset'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:64:&SESSION.::&DEBUG.:RP,64::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(2770759840833065667)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(14250094974724497974)
,p_button_name=>'DASHBOARD'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--pillStart'
,p_button_template_id=>wwv_flow_api.id(6781134785393890859)
,p_button_image_alt=>'Go to Dashboard'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:51:&SESSION.::&DEBUG.:RP::'
,p_icon_css_classes=>'fa-dial-gauge-chart'
,p_required_patch=>wwv_flow_api.id(11916093816142635755)
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(2770759984472065668)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(14250094974724497974)
,p_button_name=>'INTERACTIVE_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--pillEnd:t-Button--gapRight'
,p_button_template_id=>wwv_flow_api.id(6781134785393890859)
,p_button_image_alt=>'Go to Interactive Report'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:RP::'
,p_icon_css_classes=>'fa-table'
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
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(14017074725258634155)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(14250094974724497974)
,p_button_name=>'CREATE_PROJECT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(6781135529450890864)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create Project'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:300:&SESSION.::&DEBUG.:RP,300,301,302,303::'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'(',
'    eba_proj_stat_ui.get_authorization_level(:APP_USER) >= 2',
'    and',
'    replace(eba_proj_fw.get_preference_value( ''PROJECT_CREATE_REQ_AUTH_ROLE'' ),''Preference does not exist'',''CONTRIBUTORS'') =  ''CONTRIBUTORS''',
')',
'or',
'(',
'    eba_proj_stat_ui.get_authorization_level(:APP_USER) >= 3',
'    and',
'    replace(eba_proj_fw.get_preference_value( ''PROJECT_CREATE_REQ_AUTH_ROLE'' ),''Preference does not exist'',''CONTRIBUTORS'') =  ''ADMINS''',
')',
'or',
'(',
'    eba_proj_stat_ui.get_authorization_level(:APP_USER) >= 4',
'    and',
'    replace(eba_proj_fw.get_preference_value( ''PROJECT_CREATE_REQ_AUTH_ROLE'' ),''Preference does not exist'',''CONTRIBUTORS'') =  ''SUPER_ADMINS''',
')'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_button_css_classes=>'create-button'
,p_security_scheme=>wwv_flow_api.id(7306166303644991446)
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(1330525973928516062)
,p_branch_name=>'Go to Getting Started Page'
,p_branch_action=>'f?p=&APP_ID.:1000:&SESSION.::&DEBUG.:RP::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_HEADER'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_branch_condition_type=>'EXPRESSION'
,p_branch_condition=>'eba_proj_fw.get_preference_value(''FIRST_RUN'') = ''YES'''
,p_branch_condition_text=>'PLSQL'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6183854707407101828)
,p_name=>'P64_FOLLOWING'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(9068046630834023420)
,p_prompt=>'Following'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'I AM FOLLOWING'
,p_lov=>'.'||wwv_flow_api.id(6183854885111104245)||'.'
,p_lov_display_null=>'YES'
,p_field_template=>wwv_flow_api.id(6899231875758612224)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'U'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'1'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6333677697982836696)
,p_name=>'P64_MODE'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(6019022790414287768)
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'U'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6946333590934115484)
,p_name=>'P64_ROWS'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(9068046630834023420)
,p_item_default=>'50'
,p_prompt=>'Rows'
,p_source=>'50'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'NUMBER OF ROWS'
,p_lov=>'.'||wwv_flow_api.id(6946138101745024023)||'.'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(6899231875758612224)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'U'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(9068047043156023427)
,p_name=>'P64_CATEGORY'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(9068046630834023420)
,p_item_default=>'0'
,p_prompt=>'&CAT_TITLE.'
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
,p_field_template=>wwv_flow_api.id(6899231875758612224)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'U'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(9068047443869023432)
,p_name=>'P64_STATUS'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(9068046630834023420)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    r varchar2(400) := null; ',
'begin',
'    for c1 in ( select sc.id',
'                from eba_proj_status_codes sc',
'                where is_active_yn = ''Y''',
'                    and ( ''ALL'' = nvl( (select preference_value',
'                            from eba_proj_user_preferences pr',
'                            where pr.username = v(''APP_USER'')',
'                                and pr.preference_name = ''NAVIGATION MENU'' ), ''OPEN'' )',
'                        or sc.is_closed_status = ''N''',
'                )',
'                order by display_sequence ) loop',
'        r := r||c1.id||'':'';',
'    end loop;',
'    return r;',
'exception when others then return ''0'';',
'end;'))
,p_item_default_type=>'FUNCTION_BODY'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Status'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    r varchar2(400) := null; ',
'begin',
'    for c1 in ( select sc.id',
'                from eba_proj_status_codes sc',
'                where is_active_yn = ''Y''',
'                    and ( ''ALL'' = nvl( (select preference_value',
'                            from eba_proj_user_preferences pr',
'                            where pr.username = v(''APP_USER'')',
'                                and pr.preference_name = ''NAVIGATION MENU'' ), ''OPEN'' )',
'                        or sc.is_closed_status = ''N''',
'                )',
'                order by display_sequence ) loop',
'        r := r||c1.id||'':'';',
'    end loop;',
'    return r;',
'exception when others then return ''0'';',
'end;'))
,p_source_type=>'FUNCTION_BODY'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_CHECKBOX'
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
,p_field_template=>wwv_flow_api.id(6899231875758612224)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'U'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'1'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(9068047626218023433)
,p_name=>'P64_OWNER'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(9068046630834023420)
,p_item_default=>'0'
,p_prompt=>'Project Person'
,p_source=>'0'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'DISTINCT PROJECT OWNERS BY ID'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select eba_proj_fw.get_name_from_email_address(u.username) d, u.id r',
'from eba_proj_status_users u',
'where exists ( select null',
'               from eba_proj_user_ref rf,',
'                   eba_proj_roles r,',
'                   eba_proj_status p,',
'                   eba_proj_status_codes sc',
'               where rf.user_id = u.id',
'                   and p.id = rf.project_id',
'                   and rf.role_id = r.id',
'                   and eba_proj_fw.is_edit_authorized( u.username, rf.project_id ) = ''Y''',
'                   and p.project_status = sc.id',
'                   and sc.is_closed_status != ''Y'' )',
'order by eba_proj_fw.get_name_from_email_address(u.username)'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- All People -'
,p_lov_null_value=>'0'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(6899231875758612224)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'U'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(9068194725842104077)
,p_name=>'P64_SORT'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(9068046630834023420)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Sort'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select nvl(home_sort_filter_value,''DATE'')',
'  from eba_proj_status_users',
' where id = :CURRENT_USER_ID;'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'PROJECT SORT OPTIONS'
,p_lov=>'.'||wwv_flow_api.id(9068195017577130138)||'.'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(6899231875758612224)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'U'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(9068388718031999258)
,p_name=>'P64_SEARCH'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(9068046630834023420)
,p_prompt=>'Project Search'
,p_placeholder=>'Search Projects'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>64
,p_cMaxlength=>4000
,p_field_template=>wwv_flow_api.id(6781134578441890854)
,p_item_icon_css_classes=>'fa-search'
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(11347041309035087574)
,p_name=>'P64_DISPLAY'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(9068046630834023420)
,p_item_default=>'SIMPLECARDS'
,p_prompt=>'Display As'
,p_source=>'SIMPLECARDS'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Cards;CARDS,Report;REPORT,Simple Cards;SIMPLECARDS'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(6899231875758612224)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'U'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12093256110386299477)
,p_name=>'P64_SIZE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(9068046630834023420)
,p_prompt=>'Size'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select project_size d, ID r',
'from EBA_PROJ_STATUS_SIZES',
'order by display_sequence;'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- All Sizes -'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(6899231875758612224)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'U'
,p_lov_display_extra=>'NO'
,p_required_patch=>wwv_flow_api.id(12240751934287757551)
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13025761351067642746)
,p_name=>'P64_TIMEZONE_URL'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(6019022790414287768)
,p_source=>'apex_util.prepare_url(''f?p=''||:APP_ID||'':99:''||:APP_SESSION)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13025762644649644607)
,p_name=>'P64_TIMEZONE'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(6019022790414287768)
,p_source=>'nvl(apex_util.get_session_time_zone(),''unknown'')'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14250095625033497977)
,p_name=>'P64_SEARCH_1'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(14250095266886497976)
,p_prompt=>'Search'
,p_placeholder=>'Search'
,p_display_as=>'NATIVE_AUTO_COMPLETE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select project',
'from EBA_PROJ_STATUS',
'order by 1'))
,p_cSize=>48
,p_cMaxlength=>400
,p_field_template=>wwv_flow_api.id(6781134578441890854)
,p_item_icon_css_classes=>'fa-search'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'CONTAINS_IGNORE'
,p_attribute_04=>'Y'
,p_attribute_05=>'500'
,p_attribute_06=>'N'
,p_attribute_07=>'N'
,p_attribute_08=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(19313138340463735029)
,p_name=>'P64_DEAL_TYPE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(9068046630834023420)
,p_prompt=>'Deal Type'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'DEAL TYPES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    deal_type d,',
'    id r',
'from',
'    eba_proj_deal_types',
'where',
'    is_active_yn = ''Y''',
'order by',
'    display_sequence'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- All Deal Types -'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(6899231875758612224)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'U'
,p_lov_display_extra=>'NO'
,p_required_patch=>wwv_flow_api.id(19245446063791282124)
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(9068047837760025511)
,p_computation_sequence=>10
,p_computation_item=>'LAST_VIEW'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'64'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(6333677887414841545)
,p_computation_sequence=>20
,p_computation_item=>'P64_MODE'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'GRID'
,p_compute_when=>'P64_MODE'
,p_compute_when_type=>'ITEM_IS_NULL'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(13193036905118755076)
,p_computation_sequence=>30
,p_computation_item=>'PROJECT_CAME_FROM'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'&APP_PAGE_ID.'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(6829614869544260382)
,p_name=>'Refresh Results'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P64_STATUS,P64_OWNER,P64_CATEGORY,P64_FOLLOWING,P64_SEARCH,P64_ROWS,P64_SORT,P64_SIZE,P64_DEAL_TYPE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(19313138602518735031)
,p_event_id=>wwv_flow_api.id(6829614869544260382)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'update eba_proj_status_users',
'   set home_sort_filter_value = :P64_SORT',
' where id = :CURRENT_USER_ID;'))
,p_attribute_02=>'P64_STATUS,P64_OWNER,P64_CATEGORY,P64_FOLLOWING,P64_SEARCH,P64_ROWS,P64_SORT,P64_SIZE,P64_DEAL_TYPE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(6829616661902260400)
,p_event_id=>wwv_flow_api.id(6829614869544260382)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(6829615159548260385)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(11347041400000087575)
,p_event_id=>wwv_flow_api.id(6829614869544260382)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(11748514665332776784)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(4145552935034246200)
,p_event_id=>wwv_flow_api.id(6829614869544260382)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(3959683125102815162)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(11347041437009087576)
,p_name=>'Change View to Cards'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P64_DISPLAY'
,p_condition_element=>'P64_DISPLAY'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'CARDS'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(11755340750417499230)
,p_event_id=>wwv_flow_api.id(11347041437009087576)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(11748514665332776784)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(3959683929312815170)
,p_event_id=>wwv_flow_api.id(11347041437009087576)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(3959683125102815162)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(11347041636276087578)
,p_event_id=>wwv_flow_api.id(11347041437009087576)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(6829615159548260385)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(11347041608750087577)
,p_event_id=>wwv_flow_api.id(11347041437009087576)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(6829615159548260385)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(3945324711681585367)
,p_name=>'Change View to Cards On Load'
,p_event_sequence=>30
,p_condition_element=>'P64_DISPLAY'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'CARDS'
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(3945324877644585368)
,p_event_id=>wwv_flow_api.id(3945324711681585367)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(11748514665332776784)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(3945324911821585369)
,p_event_id=>wwv_flow_api.id(3945324711681585367)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(6829615159548260385)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(3945325091061585370)
,p_event_id=>wwv_flow_api.id(3945324711681585367)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(6829615159548260385)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(3945325168716585371)
,p_event_id=>wwv_flow_api.id(3945324711681585367)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(3959683125102815162)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(3949664253469209801)
,p_name=>'Change View to Simple Cards'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P64_DISPLAY'
,p_condition_element=>'P64_DISPLAY'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'SIMPLECARDS'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(3949664384095209802)
,p_event_id=>wwv_flow_api.id(3949664253469209801)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(11748514665332776784)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(3949664652547209805)
,p_event_id=>wwv_flow_api.id(3949664253469209801)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(6829615159548260385)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(3959684103465815172)
,p_event_id=>wwv_flow_api.id(3949664253469209801)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(3959683125102815162)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(3959684046189815171)
,p_event_id=>wwv_flow_api.id(3949664253469209801)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(3959683125102815162)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(3945325268464585372)
,p_name=>'Change View to Simple Cards On Load'
,p_event_sequence=>50
,p_condition_element=>'P64_DISPLAY'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'SIMPLECARDS'
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(3945325303572585373)
,p_event_id=>wwv_flow_api.id(3945325268464585372)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(11748514665332776784)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(3945325434918585374)
,p_event_id=>wwv_flow_api.id(3945325268464585372)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(3959683125102815162)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(3945325601514585375)
,p_event_id=>wwv_flow_api.id(3945325268464585372)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(6829615159548260385)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(3945325681010585376)
,p_event_id=>wwv_flow_api.id(3945325268464585372)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(3959683125102815162)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(3949664790193209806)
,p_name=>'Change View to Report'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P64_DISPLAY'
,p_condition_element=>'P64_DISPLAY'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'REPORT'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(3959682612314815157)
,p_event_id=>wwv_flow_api.id(3949664790193209806)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(6829615159548260385)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(3959684260007815173)
,p_event_id=>wwv_flow_api.id(3949664790193209806)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(3959683125102815162)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(3959682769387815158)
,p_event_id=>wwv_flow_api.id(3949664790193209806)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(11748514665332776784)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(3959682832042815159)
,p_event_id=>wwv_flow_api.id(3949664790193209806)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(11748514665332776784)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(3945325770892585377)
,p_name=>'Change View to Report On Load'
,p_event_sequence=>70
,p_condition_element=>'P64_DISPLAY'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'REPORT'
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(3945325856426585378)
,p_event_id=>wwv_flow_api.id(3945325770892585377)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(3959683125102815162)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(3945325976965585379)
,p_event_id=>wwv_flow_api.id(3945325770892585377)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(6829615159548260385)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(3945326017979585380)
,p_event_id=>wwv_flow_api.id(3945325770892585377)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(11748514665332776784)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(3945326114720585381)
,p_event_id=>wwv_flow_api.id(3945325770892585377)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(11748514665332776784)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(15321854759747843263)
,p_name=>'Perform Search on Enter'
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P64_SEARCH'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'this.browserEvent.which === 13'
,p_bind_type=>'bind'
,p_bind_event_type=>'keydown'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(15321854970299843265)
,p_event_id=>wwv_flow_api.id(15321854759747843263)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(6829615159548260385)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(3945326620391585386)
,p_event_id=>wwv_flow_api.id(15321854759747843263)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(3959683125102815162)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(15321855078872843266)
,p_event_id=>wwv_flow_api.id(15321854759747843263)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(11748514665332776784)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(15321855424121843270)
,p_event_id=>wwv_flow_api.id(15321854759747843263)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CANCEL_EVENT'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(9068077613930548440)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'clear cache for this page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_process_when=>'reset_page'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_api.component_end;
end;
/
