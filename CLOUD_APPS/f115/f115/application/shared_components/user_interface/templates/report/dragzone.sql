prompt --application/shared_components/user_interface/templates/report/dragzone
begin
--   Manifest
--     ROW TEMPLATE: DRAGZONE
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>115
,p_default_id_offset=>358200981570066140
,p_default_owner=>'MISO'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(189330881036624926)
,p_row_template_name=>'DragZone'
,p_internal_name=>'DRAGZONE'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div>',
'    <li data-hea_id=''#HEA_ID#'' data-hea_text=''#HEA_TEXT#'' class=''draglist-el'' draggable=true>#HEA_TEXT#<hr></li>',
'</div>',
'',
''))
,p_row_template_before_rows=>' <ul class=''draglist'' ondragstart=''handleDrag(event)''>'
,p_row_template_after_rows=>' </ul>'
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_theme_id=>42
,p_theme_class_id=>7
,p_translate_this_template=>'N'
);
wwv_flow_api.component_end;
end;
/
