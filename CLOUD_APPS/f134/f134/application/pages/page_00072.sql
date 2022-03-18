prompt --application/pages/page_00072
begin
--   Manifest
--     PAGE: 00072
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
 p_id=>72
,p_user_interface_id=>wwv_flow_api.id(5783577205373975152)
,p_name=>'Projects Tree View'
,p_step_title=>'Projects Tree View'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(5956243887448595899)
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'body .tree-region > .uRegionContent {background:#fff url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAA0AQMAAAD2XSnSAAAABlBMVEX///8AAABVwtN+AAAAAnRSTlMABQb5ObcAAAARSURBVBhXY/gPBgxDjBqSAADAu5tlDu+LxwAAAABJRU5ErkJggg==) 0 8px}',
'body .tree ul ins{display:none}',
'body .tree ul {',
'  margin: 0 !important;',
'}',
'body .tree li{padding-left:16px}',
'body .tree-classic li a.clicked,',
'body .tree-classic li a.clicked:hover,',
'body .tree-classic li span.clicked{background:#F0F0F0;color:#4B66A7;font-weight:bold;border-color:#E0E0E0;padding:4px 8px}',
'body .tree li a,',
'body .tree li span{padding:4px;color:#4B66A7;border-radius:2px;border:1px solid transparent; margin-left: 16px;}',
'body .tree-classic ul,',
'body .tree-classic li.leaf{background:none}',
'body .a-TreeView li a:hover,',
'body .a-TreeView li span:hover{background:#E8F3FC;border-color:#D3EAFC;}',
'span.fa-folder {cursor:pointer;}',
'a.a-TreeView-label {cursor:pointer;}',
'body .tree-classic li.open{background-position:-28px -24px}',
'body .tree-classic li.closed{background-position:-4px 0}',
'body .tree-classic li.open,',
'body .tree-classic li.closed{background-image:url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAYAAABXAvmHAAABk0lEQVRo3u2YMUvDUBDHQ4l1EXTJ6lKFThIc1E0Hx2a0+ClcTHBtLS1J0SZVJEihULWIgwUJrV8iaz5B946FTvV/9gQHP0BO7g8/8rj3hrvk3nu5MwyVSqXKu4qivS8UCj'
||'d47EuO4QF0wQXYlhhABALgg1twDjYkBRCCFrgGTdBGWlEwp8CUEgA5XgN10OCvESIQsu2JDaBcLj96nncmLoUsy7rv9Xrvi8XieblcHojZxEiZDt74cDabfcDxKhCxB76PUcdx+lmWfcLpS7Ap5ggqlUqDyWSSwOkQ7Iq7BObz+RscPxZ7DcP5df0dVKlUKpVKpVL9O61RecoFU8Sl628ingt4be5+04uj0ejFWDXNAq67m0yLbV2sobo7'
||'n+1NOHZSqVT6xqrLQU2DGkNjn+ZoTa7zKE3TO9M0O/zm60yTbDQnoeLbcV13yPuhwbTJRnMidvN0Or2iXhOnkk9jskmqu7fiOH79OYFoTDZRZyq6H1XbtvsEjcVdCtTlG4/HgyRJnqR0/P4K4hAc6R2vUqnk6At217X2O08aGgAAAABJRU5ErkJggg==);background-repeat:no-repeat}',
'body .tree li.closed>a,',
'body .tree li.open>a{font-weight:bold}'))
,p_step_template=>wwv_flow_api.id(6781074610982890727)
,p_page_template_options=>'#DEFAULT#'
,p_required_patch=>wwv_flow_api.id(19890960485833316269)
,p_protection_level=>'C'
,p_help_text=>'This report just shows all projects in a "tree" view, where different "branches" (children projects) can be expanded and collapsed. Click the <strong>Collapse All</strong> button to return to the default view (all folders collapsed). Click the <stron'
||'g>Expand All</strong> button to open all folders (display all child projects).'
,p_page_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.xtree > .ltr > li {display: block !important;}',
'.uRegionContent .tree li a, .tree li span {',
'padding: 4px;',
'border: 1px solid transparent;',
'}',
'.uRegionContent .tree-default li a:hover, .tree-default li a.hover, .tree-default li span {',
'padding: 4px;',
'}',
'.uRegionContent .tree ins {background: none transparent;}',
''))
,p_last_upd_yyyymmddhh24miss=>'20190905105613'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(5956320899422740001)
,p_plug_name=>'Parent and Child Projects Tree'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(6781115417665890803)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select case when connect_by_isleaf = 1 then 0',
'            when level = 1             then 1',
'            else                           -1',
'       end as status, ',
'       level, ',
'       project as title, ',
'       ''fa-folder'' as icon, ',
'       id as value, ',
'       null as tooltip, ',
'       apex_util.prepare_url(''f?p=''||:APP_ID||'':200:''||:APP_SESSION||'':::200:P200_ID:''||id) as link ',
'from eba_proj_status p',
'start with parent_project_id is null',
'connect by prior id = parent_project_id',
'order siblings by project'))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_JSTREE'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_02=>'S'
,p_attribute_04=>'N'
,p_attribute_06=>'tree651336726281602329'
,p_attribute_08=>'fa'
,p_attribute_10=>'TITLE'
,p_attribute_11=>'LEVEL'
,p_attribute_12=>'ICON'
,p_attribute_15=>'STATUS'
,p_attribute_20=>'VALUE'
,p_attribute_23=>'LEVEL'
,p_attribute_24=>'LINK'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(5956336495139903846)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(6781117976757890807)
,p_plug_display_sequence=>30
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(8972392840601050532)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(6781135716305890867)
,p_plug_display_condition_type=>'NEVER'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(5956321286044740006)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(6212459901559585507)
,p_button_name=>'CONTRACT_ALL'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(6781135529450890864)
,p_button_image_alt=>'Collapse All'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_redirect_url=>'javascript:apex.widget.tree.collapse_all(''tree651336726281602329'');'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(5956321496911740006)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(6212459901559585507)
,p_button_name=>'EXPAND_ALL'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(6781135529450890864)
,p_button_image_alt=>'Expand All'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_redirect_url=>'javascript:apex.widget.tree.expand_all(''tree651336726281602329'');'
,p_button_css_classes=>'uButtonAlt'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(13193036407478755071)
,p_computation_sequence=>10
,p_computation_item=>'PROJECT_CAME_FROM'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'&APP_PAGE_ID.'
);
wwv_flow_api.component_end;
end;
/
