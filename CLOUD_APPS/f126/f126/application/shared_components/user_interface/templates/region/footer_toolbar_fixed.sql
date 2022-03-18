prompt --application/shared_components/user_interface/templates/region/footer_toolbar_fixed
begin
--   Manifest
--     REGION TEMPLATE: FOOTER_TOOLBAR_FIXED
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>126
,p_default_id_offset=>101651461840938715
,p_default_owner=>'MISO'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(1713280284433763827)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" data-id="#REGION_STATIC_ID#" data-role="footer" data-theme="b" data-position="fixed" class="#REGION_CSS_CLASSES#" #REGION_ATTRIBUTES#>',
'  #CHANGE#',
'  #BODY#',
'</div> <!-- /footer -->'))
,p_page_plug_template_name=>'Footer Toolbar (Fixed)'
,p_internal_name=>'FOOTER_TOOLBAR_FIXED'
,p_theme_id=>51
,p_theme_class_id=>22
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>3773956337432111625
,p_translate_this_template=>'N'
);
wwv_flow_api.component_end;
end;
/
