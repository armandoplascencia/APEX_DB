prompt --application/shared_components/user_interface/templates/button/standard_button
begin
--   Manifest
--     BUTTON TEMPLATE: STANDARD_BUTTON
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>126
,p_default_id_offset=>101651461840938715
,p_default_owner=>'MISO'
);
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(1713291666966763854)
,p_template_name=>'Standard Button'
,p_internal_name=>'STANDARD_BUTTON'
,p_template=>'<button id="#BUTTON_ID#" type="button" data-inline="true" onclick="#JAVASCRIPT#" class="ui-btn #BUTTON_CSS_CLASSES#" #BUTTON_ATTRIBUTES#>#LABEL#</button>'
,p_hot_template=>'<button id="#BUTTON_ID#" type="button" data-inline="true" onclick="#JAVASCRIPT#" class="ui-btn ui-btn-b #BUTTON_CSS_CLASSES#" #BUTTON_ATTRIBUTES#>#LABEL#</button>'
,p_reference_id=>3773985424233098554
,p_translate_this_template=>'N'
,p_theme_class_id=>1
,p_default_template_options=>'ui-btn-inline:ui-corner-all'
,p_theme_id=>51
);
wwv_flow_api.component_end;
end;
/
