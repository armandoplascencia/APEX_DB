prompt --application/shared_components/user_interface/templates/button/interactive_report_button_next
begin
--   Manifest
--     BUTTON TEMPLATE: INTERACTIVE_REPORT_BUTTON_NEXT
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>127
,p_default_id_offset=>99999615750817235
,p_default_owner=>'MISO'
);
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(108705633618896464)
,p_template_name=>'Interactive Report Button (Next)'
,p_internal_name=>'INTERACTIVE_REPORT_BUTTON_NEXT'
,p_template=>'<a href="#LINK#" class="uButtonIR nextButton #BUTTON_CSS_CLASSES#" id="#BUTTON_ID#" #BUTTON_ATTRIBUTES# role="button"><span>#LABEL#<img src="#IMAGE_PREFIX#f_spacer.gif" class="uButtonIcon nextIcon" alt=""></span></a> '
,p_hot_template=>'<a href="#LINK#" class="uButtonIR uHotButton nextButton #BUTTON_CSS_CLASSES#" id="#BUTTON_ID#" #BUTTON_ATTRIBUTES# role="button"><span>#LABEL#<img src="#IMAGE_PREFIX#f_spacer.gif" class="uButtonIcon nextIcon" alt=""></span></a> '
,p_translate_this_template=>'N'
,p_theme_class_id=>5
,p_template_comment=>'Standard Button'
,p_theme_id=>26
);
wwv_flow_api.component_end;
end;
/
