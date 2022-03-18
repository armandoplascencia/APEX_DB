prompt --application/shared_components/user_interface/templates/report/qp_content_row
begin
--   Manifest
--     ROW TEMPLATE: QP_CONTENT_ROW
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>110
,p_default_id_offset=>101599614921830918
,p_default_owner=>'MISO'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(317211898351773752)
,p_row_template_name=>'[qp] Content Row'
,p_internal_name=>'QP_CONTENT_ROW'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="qa-ContentRowReport-item #ITEM_CSS_MODIFIERS#" #ITEM_CUSTOM_ATTRS#>',
'  <div class="qa-ContentRowReport-itemWrap">',
'    <div class="qa-ContentRowReport-itemSelection">#ITEM_SELECTION#</div>',
'    <div class="qa-ContentRowReport-itemIconWrap">#ITEM_ICON#</div>',
'    <div class="qa-ContentRowReport-itemBody">',
'      <div class="qa-ContentRowReport-itemContent">',
'        <h2 class="qa-ContentRowReport-itemTitle"><a href="#ITEM_LINK#">#ITEM_TITLE#</a></h2>',
'        <div class="qa-ContentRowReport-itemDescription">#ITEM_DESCRIPTION#</div>',
'      </div>',
'      <div class="qa-ContentRowReport-itemMisc">#ITEM_MISC#</div>',
'      <div class="qa-ContentRowReport-itemActions">#ITEM_ACTIONS#</div>',
'    </div>',
'  </div>',
'</li>',
''))
,p_row_template_condition1=>'''#ITEM_LINK#'' is not null'
,p_row_template2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="qa-ContentRowReport-item #ITEM_CSS_MODIFIERS#" #ITEM_CUSTOM_ATTRS#>',
'  <div class="qa-ContentRowReport-itemWrap">',
'    <div class="qa-ContentRowReport-itemSelection">#ITEM_SELECTION#</div>',
'    <div class="qa-ContentRowReport-itemIconWrap">#ITEM_ICON#</div>',
'    <div class="qa-ContentRowReport-itemBody">',
'      <div class="qa-ContentRowReport-itemContent">',
'        <h2 class="qa-ContentRowReport-itemTitle">#ITEM_TITLE#</h2>',
'        <div class="qa-ContentRowReport-itemDescription">#ITEM_DESCRIPTION#</div>',
'      </div>',
'      <div class="qa-ContentRowReport-itemMisc">#ITEM_MISC#</div>',
'      <div class="qa-ContentRowReport-itemActions">#ITEM_ACTIONS#</div>',
'    </div>',
'  </div>',
'</li>',
''))
,p_row_template_before_rows=>'<div class="qa-ContentRowReport #COMPONENT_CSS_CLASSES#" id="report_#REGION_STATIC_ID#" #REPORT_ATTRIBUTES#><ul class="qa-ContentRowReport-items">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'</div>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'NOT_CONDITIONAL'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'NOT_CONDITIONAL'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>1
,p_translate_this_template=>'N'
);
wwv_flow_api.component_end;
end;
/
