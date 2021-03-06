prompt --application/shared_components/plugins/item_type/pl_ostrowskibartosz_apex_enhancedlovitem
begin
--   Manifest
--     PLUGIN: PL.OSTROWSKIBARTOSZ.APEX.ENHANCEDLOVITEM
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>107
,p_default_id_offset=>0
,p_default_owner=>'MISO'
);
wwv_flow_api.create_plugin(
 p_id=>wwv_flow_api.id(511429967211344646)
,p_plugin_type=>'ITEM TYPE'
,p_name=>'PL.OSTROWSKIBARTOSZ.APEX.ENHANCEDLOVITEM'
,p_display_name=>'Pretius APEX Enhanced LOV item'
,p_supported_ui_types=>'DESKTOP'
,p_supported_component_types=>'APEX_APPLICATION_PAGE_ITEMS:APEX_APPL_PAGE_IG_COLUMNS'
,p_image_prefix => nvl(wwv_flow_application_install.get_static_plugin_file_prefix('ITEM TYPE','PL.OSTROWSKIBARTOSZ.APEX.ENHANCEDLOVITEM'),'')
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#PLUGIN_FILES#enhancedLovItem.js',
'#PLUGIN_FILES#mustache.js'))
,p_css_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#PLUGIN_FILES#enhancedLovItem.css',
''))
,p_api_version=>2
,p_render_function=>'#OWNER#.APEX_ENHANCED_LOV_ITEM.render'
,p_meta_data_function=>'#OWNER#.APEX_ENHANCED_LOV_ITEM.meta_data'
,p_ajax_function=>'#OWNER#.APEX_ENHANCED_LOV_ITEM.ajax'
,p_standard_attributes=>'VISIBLE:FORM_ELEMENT:SESSION_STATE:READONLY:ESCAPE_OUTPUT:QUICKPICK:SOURCE:ELEMENT:WIDTH:PLACEHOLDER:ICON:LOV:LOV_DISPLAY_NULL:CASCADING_LOV:JOIN_LOV:FILTER:LINK'
,p_substitute_attributes=>true
,p_subscribe_plugin_settings=>true
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'APEX Enhanced LOV item is powerful combobox to select singular / multiple values in two modes: autocomplete and popup report. The plugin provides high customization possibilities through its attributes. ',
'</p>',
'<p>',
'  Author: Bartosz Ostrowski, Twitter: bostrowsk1, E-mail: ostrowski.bartosz@gmail.com',
'</p>'))
,p_version_identifier=>'1.1.1'
,p_about_url=>'https://github.com/bostrowski/APEX-Enhanced-Lov-Item'
,p_files_version=>193
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(511489988073078165)
,p_plugin_id=>wwv_flow_api.id(511429967211344646)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_prompt=>'Autocomplete Settings'
,p_attribute_type=>'CHECKBOXES'
,p_is_required=>false
,p_default_value=>'RS'
,p_supported_ui_types=>'DESKTOP'
,p_supported_component_types=>'APEX_APPLICATION_PAGE_ITEMS:APEX_APPL_PAGE_IG_COLUMNS'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(511507172891456160)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'IN_LIST'
,p_depending_on_expression=>'AUTOCOMPLETE'
,p_lov_type=>'STATIC'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'  This attribute allows to define what functionalities will be available to end-user in autocomplete mode.',
'</p>'))
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(511490560025079514)
,p_plugin_attribute_id=>wwv_flow_api.id(511489988073078165)
,p_display_sequence=>10
,p_display_value=>'Use Custom Search Logic'
,p_return_value=>'UCSL'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'When checked it is possible to define extra SQL Query conditions for the query provided in <strong>List of Values > SQL query</strong> attribute.',
'</p>',
'<p>',
'<i>See "Custom search logic" attribute help text to learn more</i>',
'</p>'))
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(511490979037080537)
,p_plugin_attribute_id=>wwv_flow_api.id(511489988073078165)
,p_display_sequence=>20
,p_display_value=>'Use Custom Template'
,p_return_value=>'UCT'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'When checked it is possible to define HTML template for result row. ',
'</p>',
'<p>',
'<i>See "Custom template" attribute help text to learn more</i>',
'</p>'))
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(512767246229930213)
,p_plugin_attribute_id=>wwv_flow_api.id(511489988073078165)
,p_display_sequence=>30
,p_display_value=>'Limit Displayed Tags'
,p_return_value=>'LDT'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'When checked it is possible to define how many values will be rendered as tags in input section, after end-user selects values in autocomplete or popup report. ',
'</p>',
'<p>',
'<i>See "Number of tags" attribute help text to learn more</i>',
'</p>'))
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(513278994482398569)
,p_plugin_attribute_id=>wwv_flow_api.id(511489988073078165)
,p_display_sequence=>40
,p_display_value=>'Minimal Input Length'
,p_return_value=>'MIL'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'When checked it is possible to define how many characters is required to perform autocomplete. ',
'</p>',
'<p>',
'<i>See "Minimal input length" attribute help text to learn more</i>',
'</p>'))
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(513351090617754551)
,p_plugin_attribute_id=>wwv_flow_api.id(511489988073078165)
,p_display_sequence=>50
,p_display_value=>'Rapid Selection'
,p_return_value=>'RS'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'  Rapid Selection attributes describes behaviour of the plugin while selecting values (via <code>Enter key</code> or <code>Left Mouse Button</code>) in Autocomplete mode.',
'  Behaviour is different for singular and multiple selection.',
'</p>',
'<dl>',
'  <dt>Singular selection</dt>',
'  <dd>',
'    <p>',
'      When <strong>checked</strong>, selecting value is followed by clearing search input without closing autocomplete. ',
'    </p>',
'    <p>',
'      When <strong>not checked</strong>, selecting value is followed by closing autocomplete.',
'    </p>',
'  </dd>',
'  <dt>Multiple selection</dt>',
'  <dd>',
'    <p>',
'      When <strong>checked</strong>, selecting value is followed by clearing search input without closing autocomplete. ',
'    </p>',
'    <p>',
'      When <strong>not checked</strong>, selecting value doesn''t result in clearing search input without closing autocomplete.',
'    </p>',
'',
'  </dd>',
'</dl>'))
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(306348412147196608)
,p_plugin_attribute_id=>wwv_flow_api.id(511489988073078165)
,p_display_sequence=>60
,p_display_value=>'Hide Toolbar'
,p_return_value=>'HT'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(511491331626083774)
,p_plugin_id=>wwv_flow_api.id(511429967211344646)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>2
,p_display_sequence=>20
,p_prompt=>'Custom Search Logic'
,p_attribute_type=>'TEXTAREA'
,p_is_required=>true
,p_supported_ui_types=>'DESKTOP'
,p_supported_component_types=>'APEX_APPLICATION_PAGE_ITEMS:APEX_APPL_PAGE_IG_COLUMNS'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(511489988073078165)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'IN_LIST'
,p_depending_on_expression=>'UCSL'
,p_examples=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'If SQL query is defined as below:',
'</p>',
'<p>',
'<pre>',
'<code>',
'select',
'  EMPNO r,',
'  ENAME d,',
'  JOB,',
'  MGR,',
'  HIREDATE,',
'  SAL,',
'  COMM,',
'  DEPTNO',
'from',
'  emp</code>',
'</pre>',
'</p>',
'<p>',
'The example <strong>Custom search logic</strong> can be defined as:',
'</p>',
'<pre><code>',
'and ( ',
'  d like :SEARCH_STRING||''%''',
'  or to_char(r) = :SEARCH_STRING',
'  or job like ''%''||:SEARCH_STRING||''%''',
')',
'order by',
'  d asc',
'</code></pre>'))
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'This attribute can be used to define custom search logic for autocomplete mode. Conditions should start with operator <code>AND</code> and search phrase provided by end-user should be referenced by <code>:SEARCH_STRING</code> bind variable.',
'</p>',
'<p>',
'If column to filter data has defined alias (in SQL Query) then the alias should be referenced in <strong>Custom Search Logic</strong> .',
'</p>',
'<p>',
'Additionaly you can define order by clause to sort autocomplete results.',
'</p>'))
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(511491966302086204)
,p_plugin_id=>wwv_flow_api.id(511429967211344646)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>3
,p_display_sequence=>45
,p_prompt=>'Custom Autocomplete Template'
,p_attribute_type=>'JAVASCRIPT'
,p_is_required=>true
,p_supported_ui_types=>'DESKTOP'
,p_supported_component_types=>'APEX_APPLICATION_PAGE_ITEMS:APEX_APPL_PAGE_IG_COLUMNS'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(511489988073078165)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'IN_LIST'
,p_depending_on_expression=>'UCT'
,p_examples=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'If SQL Query is defined as below:',
'</p>',
'<p>',
'<pre><code>select',
'  EMPNO r,',
'  ENAME d,',
'  JOB,',
'  MGR,',
'  HIREDATE,',
'  SAL,',
'  COMM,',
'  DEPTNO',
'from',
'  emp</code></pre>',
'</p>',
'<p>',
'The example <strong>Custom template</strong> can be defined as:',
'</p>',
'<pre><code>if (this.data.selected) {',
'  return ''(''+this.data.R+'') ''+this.data.D+'' (selected)'';  ',
'}',
'else {',
'  return ''(''+this.data.R+'') ''+this.data.D;',
'}',
'</code></pre>'))
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'  This attribute allows to define custom HTML template for singular row of data rendered in autocomplete mode. Row columns can be referenced using <code>this.data.COLUMN_NAME</code>, where <code>COLUMN_NAME</code> is column name (or column alias if u'
||'sed) defined in <strong>List of Values > SQL Query</strong> item attribute. Use <code>this.data.selected</code> <i>(Boolean)</i> to determine whether particular row is selected.',
'</p>',
'<p>',
'All columns names / aliases must be in uppercase.',
'</p>'))
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(511500700942437261)
,p_plugin_id=>wwv_flow_api.id(511429967211344646)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>4
,p_display_sequence=>40
,p_prompt=>'Default Autocomplete Search'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'D%'
,p_supported_component_types=>'APEX_APPLICATION_PAGE_ITEMS:APEX_APPL_PAGE_IG_COLUMNS'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(511489988073078165)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'NOT_IN_LIST'
,p_depending_on_expression=>'UCSL'
,p_lov_type=>'STATIC'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'This attribute narrows result set of data in autocomplete mode using <code>like</code> logic and phrase (referenced by <code>:SEARCH_STRING</code>) provided by end-user.',
'</p>'))
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(511501592723440765)
,p_plugin_attribute_id=>wwv_flow_api.id(511500700942437261)
,p_display_sequence=>10
,p_display_value=>'DISPLAY_COLUMN %'
,p_return_value=>'D%'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'<pre><code>upper(d) like upper(:SEARCH_STRING||''%'')</code></pre>',
'</p>'))
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(511501932475441574)
,p_plugin_attribute_id=>wwv_flow_api.id(511500700942437261)
,p_display_sequence=>20
,p_display_value=>'% DISPLAY_COLUMN'
,p_return_value=>'%D'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'<pre><code>upper(d) like upper(''%''||:SEARCH_STRING)</code></pre>',
'</p>'))
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(511502327217442340)
,p_plugin_attribute_id=>wwv_flow_api.id(511500700942437261)
,p_display_sequence=>30
,p_display_value=>'% DISPLAY_COLUMN %'
,p_return_value=>'%D%'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'<pre><code>upper(d) like upper(''%''||:SEARCH_STRING||''%'')</code></pre>',
'</p>'))
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(511502802940442963)
,p_plugin_attribute_id=>wwv_flow_api.id(511500700942437261)
,p_display_sequence=>40
,p_display_value=>'DISPLAY_COLUMN'
,p_return_value=>'D'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'<pre><code>upper(d) like upper(:SEARCH_STRING)</code></pre>',
'</p>'))
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(511503146264444227)
,p_plugin_attribute_id=>wwv_flow_api.id(511500700942437261)
,p_display_sequence=>50
,p_display_value=>'RETURN_COLUMN %'
,p_return_value=>'R%'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'<pre><code>upper(r) like upper(:SEARCH_STRING||''%'')</code></pre>',
'</p>'))
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(511503525463445351)
,p_plugin_attribute_id=>wwv_flow_api.id(511500700942437261)
,p_display_sequence=>60
,p_display_value=>'% RETURN_COLUMN'
,p_return_value=>'%R'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'<pre><code>upper(r) like upper(''%''||:SEARCH_STRING)</code></pre>',
'</p>'))
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(511503945179446038)
,p_plugin_attribute_id=>wwv_flow_api.id(511500700942437261)
,p_display_sequence=>70
,p_display_value=>'% RETURN_COLUMN %'
,p_return_value=>'%R%'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'<pre><code>upper(r) like upper(''%''||:SEARCH_STRING||''%'')',
'or upper(d) like upper(''%''||:SEARCH_STRING||''%'')</code></pre>',
'</p>'))
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(511504380654446556)
,p_plugin_attribute_id=>wwv_flow_api.id(511500700942437261)
,p_display_sequence=>80
,p_display_value=>'RETURN_COLUMN'
,p_return_value=>'R'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'<pre><code>upper(r) like upper(:SEARCH_STRING)</code></pre>',
'</p>'))
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(511504759917447168)
,p_plugin_attribute_id=>wwv_flow_api.id(511500700942437261)
,p_display_sequence=>90
,p_display_value=>'DISPLAY_OR_RETURN_COLUMN %'
,p_return_value=>'DR%'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'<pre><code>upper(r) like upper(:SEARCH_STRING||''%'')',
'or upper(d) like upper(:SEARCH_STRING||''%'')</code></pre>',
'</p>'))
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(511505126041447838)
,p_plugin_attribute_id=>wwv_flow_api.id(511500700942437261)
,p_display_sequence=>100
,p_display_value=>'% DISPLAY_OR_RETURN_COLUMN'
,p_return_value=>'%DR'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'<pre><code>upper(r) like upper(''%''||:SEARCH_STRING)',
'or upper(d) like upper(''%''||:SEARCH_STRING)</code></pre>',
'</p>'))
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(511505515623448716)
,p_plugin_attribute_id=>wwv_flow_api.id(511500700942437261)
,p_display_sequence=>110
,p_display_value=>'% DISPLAY_OR_RETURN_COLUMN %'
,p_return_value=>'%DR%'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'<pre><code>upper(r) like upper(''%''||:SEARCH_STRING||''%'')',
'or upper(d) like upper(''%''||:SEARCH_STRING||''%'')</code></pre>',
'</p>'))
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(511505945518449375)
,p_plugin_attribute_id=>wwv_flow_api.id(511500700942437261)
,p_display_sequence=>120
,p_display_value=>'DISPLAY_OR_RETURN_COLUMN'
,p_return_value=>'DR'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<pre><code>upper(r) like upper(:SEARCH_STRING)',
'or upper(d) like upper(:SEARCH_STRING)',
'</code></pre>'))
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(511507172891456160)
,p_plugin_id=>wwv_flow_api.id(511429967211344646)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>5
,p_display_sequence=>1
,p_prompt=>'General Settings'
,p_attribute_type=>'CHECKBOXES'
,p_is_required=>false
,p_default_value=>'AUTOCOMPLETE:POPOUP_REPORT:MS'
,p_supported_component_types=>'APEX_APPLICATION_PAGE_ITEMS:APEX_APPL_PAGE_IG_COLUMNS'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'  This attribute allows you to define what funcionalities will be available to end-user.',
'</p>'))
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(511508547333458618)
,p_plugin_attribute_id=>wwv_flow_api.id(511507172891456160)
,p_display_sequence=>10
,p_display_value=>'Autocomplete'
,p_return_value=>'AUTOCOMPLETE'
,p_help_text=>'When checked the end-user can perform autocomplete.'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(511508973283460622)
,p_plugin_attribute_id=>wwv_flow_api.id(511507172891456160)
,p_display_sequence=>20
,p_display_value=>'Popup Report'
,p_return_value=>'POPOUP_REPORT'
,p_help_text=>'When checked the end-user can select values from popup report.'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(511761794622422687)
,p_plugin_attribute_id=>wwv_flow_api.id(511507172891456160)
,p_display_sequence=>30
,p_display_value=>'Multiple Selection'
,p_return_value=>'MS'
,p_help_text=>'When checked end-user can select multiple values in autocomplete and popup report. Otherwise end-user can select singular value.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(511651670225859388)
,p_plugin_id=>wwv_flow_api.id(511429967211344646)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>6
,p_display_sequence=>60
,p_prompt=>'Popup Settings'
,p_attribute_type=>'CHECKBOXES'
,p_is_required=>false
,p_default_value=>'CORSI:RESIZABLE:DRAGGABLE:COE:RPP:SIAC'
,p_supported_component_types=>'APEX_APPLICATION_PAGE_ITEMS:APEX_APPL_PAGE_IG_COLUMNS'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(511507172891456160)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'IN_LIST'
,p_depending_on_expression=>'POPOUP_REPORT'
,p_lov_type=>'STATIC'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'This attribute allows to define what functionalities will be available to end-user in popup report mode.',
'</p>'))
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(512145010247716939)
,p_plugin_attribute_id=>wwv_flow_api.id(511651670225859388)
,p_display_sequence=>20
,p_display_value=>'Report Columns Configuration'
,p_return_value=>'RCC'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'When checked, it is possible to configure column properties in popup report. Available options are:',
'</p>',
'<ul>',
'<li>set default order and direction for data displayed in popup report,</li>',
'<li>set visibility of column in popup report,</li>',
'<li>set heading of column in popup report,</li>',
'<li>set header aligment of column in popup report,</li>',
'<li>set cell aligment of column in popup report,</li>',
'<li>set whether it is possible to filter column in popup report,</li>',
'<li>set whether it is possible to sort column in popup report.</li>',
'</ul>',
'<p>',
'  If property of column is not defined, the plugin uses default value. ',
'</p>',
'<p>',
'<i>See "Report Columns Configuration" attribute help text to learn more</i>',
'</p>'))
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(512157965385480456)
,p_plugin_attribute_id=>wwv_flow_api.id(511651670225859388)
,p_display_sequence=>50
,p_display_value=>'Clicking On Row Selects It'
,p_return_value=>'CORSI'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'When checked, clicking on row in popup report selects radio / checkbox input.',
'</p>'))
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(514272829971373216)
,p_plugin_attribute_id=>wwv_flow_api.id(511651670225859388)
,p_display_sequence=>60
,p_display_value=>'Custom Title'
,p_return_value=>'CT'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'When checked, it is possible to set custom title for popup report. Otherwise input label is used.',
'</p>',
'<p>',
'See "Custom title" attribute help text to learn more.',
'</p>'))
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(514328462771440937)
,p_plugin_attribute_id=>wwv_flow_api.id(511651670225859388)
,p_display_sequence=>70
,p_display_value=>'Resizable'
,p_return_value=>'RESIZABLE'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'When checked, it is possible to resize popup report.',
'</p>'))
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(514328812486449613)
,p_plugin_attribute_id=>wwv_flow_api.id(511651670225859388)
,p_display_sequence=>80
,p_display_value=>'Draggable'
,p_return_value=>'DRAGGABLE'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'When checked, it is possible to change position of popup report.',
'</p>'))
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(514329301713450631)
,p_plugin_attribute_id=>wwv_flow_api.id(511651670225859388)
,p_display_sequence=>90
,p_display_value=>'Close On Escape'
,p_return_value=>'COE'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'When checked, it is possible close popup report by pressing <code>Escape</code> key.',
'</p>'))
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(514363027347534611)
,p_plugin_attribute_id=>wwv_flow_api.id(511651670225859388)
,p_display_sequence=>100
,p_display_value=>'Rows Per Page'
,p_return_value=>'RPP'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'When checked, it is possible to change amount of rows rendered in popup report.',
'</p>'))
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(514363462182536223)
,p_plugin_attribute_id=>wwv_flow_api.id(511651670225859388)
,p_display_sequence=>110
,p_display_value=>'Search In All Columns'
,p_return_value=>'SIAC'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'When checked, it is possible to search for given phrase in all columns of popup report.',
'</p>'))
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(514516892489236464)
,p_plugin_attribute_id=>wwv_flow_api.id(511651670225859388)
,p_display_sequence=>120
,p_display_value=>'Adjust Height To Report Rows'
,p_return_value=>'AHTRR'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'When checked, popup report adjusts its height its content height.',
'</p>'))
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(512145484439725328)
,p_plugin_id=>wwv_flow_api.id(511429967211344646)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>7
,p_display_sequence=>70
,p_prompt=>'Report Columns Configuration'
,p_attribute_type=>'TEXTAREA'
,p_is_required=>true
,p_supported_component_types=>'APEX_APPLICATION_PAGE_ITEMS:APEX_APPL_PAGE_IG_COLUMNS'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(511651670225859388)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'IN_LIST'
,p_depending_on_expression=>'RCC'
,p_examples=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'  If SQL Query is defined as below:',
'</p>',
'<pre><code>select',
'  EMPNO r,',
'  ENAME d,',
'  JOB,',
'  MGR,',
'  HIREDATE,',
'  SAL,',
'  COMM,',
'  DEPTNO',
'from',
'  emp</code></pre>',
'<p>',
'  The example JSON object describing popup report might be defined as below:',
'</p>',
'<pre><code>{',
'  "defaultSort": {',
'    "column": "D",',
'    "direction": "asc"',
'  },',
'  "columns": {',
'    "D": {',
'      "visible": true,',
'      "heading": "Employee name",',
'      "thAlign": "left",',
'      "tdAlign": "left",',
'      "sort": true,',
'      "filter": true',
'    }, ',
'    "JOB": {',
'      "visible": true,',
'      "heading": "Position",',
'      "thAlign": "left",',
'      "tdAlign": "left",',
'      "sort": true,',
'      "filter": true',
'    }, ',
'    "HIREDATE": {',
'      "visible": true,',
'      "heading": "Hire date",',
'      "thAlign": "right",',
'      "tdAlign": "right",',
'      "sort": true,',
'      "filter": false',
'    },',
'    "SAL": {',
'      "visible": true,',
'      "heading": "Salary",',
'      "thAlign": "right",',
'      "tdAlign": "right",',
'      "sort": true,',
'      "filter": false',
'    }    ',
'  }',
'}</code></pre>',
'<p>',
'  In result report will show only 4 columns, but all columns from SQL Query will be available in autocomplete custom search. ',
'</p>',
'<p>',
'  Thanks to this you can define SQL Query as',
'</p>',
'<pre><code>select',
'  empno r,',
'  ename d,',
'  emp.*',
'from',
'  emp',
'</code></pre>',
'<p>',
'  and define what columns should be available in popup report.',
'</p>'))
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'This attribute defines configuration of all columns using JSON syntax.',
'</p>',
'<p>',
'JSON object structure is as below:',
'</p>',
'<pre><code>{',
'  "defaultSort": {',
'    "column": "COLUMN_NAME",',
'    "direction": "DIRECTION"',
'  },',
'  "columns": {',
'    "COLUMN_NAME": {',
'      "heading": "HEADING",',
'      "visible": VISIBILITY,',
'      "thAlign": "ALIGMENT",',
'      "tdAlign": "ALIGMENT",',
'      "sort"   : SORT,',
'      "filter" : FILTER',
'    },',
'    ...',
'}</code></pre>',
'<p>',
'where:',
'<ul>',
'  <li><code>COLUMN_NAME</code> (String);',
'  <li><code>VISIBILITY</code> (Boolean);',
'  <li><code>DIRECTION</code> (String);',
'  <li><code>HEADING</code> (String);',
'  <li><code>ALIGMENT</code> (String);',
'  <li><code>SORT</code> (Boolean);',
'  <li><code>FILTER</code> (Boolean);',
'</ul>',
'</p>',
'',
'<dl>',
'  <dt>defaultSort</dt>',
'  <dd>',
'    <i>',
'      Object is not required.',
'      When provided, all attributes (column and direction) are required. ',
'      When not provided default sort will be applied to first column with direction <code>asc</code>.',
'',
'    </i> ',
'  </dd>',
'  <dt>defaultSort.column</dt>',
'  <dd>',
'    <i>Property is required.</i> <br />',
'    Value should reference column name or alias used in <strong>List of Values > SQL Query</strong>. Column name or alias must be uppercase.',
'  </dd>',
'  <dt>defaultSort.direction</dt>',
'  <dd>',
'    <i>Property is required.</i> <br />',
'    Value can be <code>asc</code> or <code>desc</code>',
'  </dd>',
'  <dt>columns</dt>',
'  <dd>',
'    <i>Object is not required. When not provided all columns from <strong>List of Values > SQL Query</strong> will be rendered with default values for each column property.</i>',
'  </dd>',
'  <dt>columns.COLUMN_NAME</dt>',
'  <dd>',
'    <i>Object is not required.</i> <br />',
'    All columns defined in <strong>List of Values > SQL Query</strong> without definition as <code>COLUMN_NAME</code> object won''t be rendered.',
'  </dd>',
'  <dt>columns.COLUMN_NAME.heading</dt>',
'  <dd>',
'    <i>Property is not required. When it''s not defined the column name / alias will be used for column header text. </i><br />',
'    Given string determines header text for column used in popup report. <br />',
'  </dd>',
'  <dt>columns.COLUMN_NAME.visible</dt>',
'  <dd>',
'    <i>Property is not required. When it''s not defined the default value <code>true</code> is set.</i> <br />',
'    Given value determines whether column is rendered.',
'  </dd>',
'  <dt>columns.COLUMN_NAME.thAlign</dt>',
'  <dd>',
'    <i>Property is not required. When it''s not defined the default aligment <code>left</code> is set.</i> <br />',
'    Given value determines header aligment.',
'  </dd>',
'  <dt>columns.COLUMN_NAME.tdAlign</dt>',
'  <dd>',
'    <i>Property is not required. When it''s not defined the default aligment <code>left</code> is set.</i> <br />',
'    Given value determines cell aligment.',
'  </dd>',
'  <dt>columns.COLUMN_NAME.sort</dt>',
'  <dd>',
'    <i>Property is not required. When it''s not defined the default value <code>false</code> is set.</i><br />',
'    Given value determines whether column sorting via column header is available to end-user.',
'  </dd>',
'  <dt>columns.COLUMN_NAME.filter</dt>',
'  <dd>',
'    <i>Property is not required. When it''s not defined the default value <code>false</code> is set.</i><br />',
'    Given value determines whether column filtering via column header is available to end-user.',
'  </dd>',
'',
'</dl>'))
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(512767661654935705)
,p_plugin_id=>wwv_flow_api.id(511429967211344646)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>8
,p_display_sequence=>15
,p_prompt=>'Number Of Tags'
,p_attribute_type=>'NUMBER'
,p_is_required=>true
,p_default_value=>'0'
,p_supported_component_types=>'APEX_APPLICATION_PAGE_ITEMS:APEX_APPL_PAGE_IG_COLUMNS'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(511489988073078165)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'IN_LIST'
,p_depending_on_expression=>'LDT'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'  Provided numeric value is used to determine how many tags will be rendered after end-user select values. If the number of selected values is greater then provided value, new summary tag will be rendered with text <strong>and X more...</strong> wher'
||'e <strong>X</strong> is number of not rendered (but selected) tags.',
'</p>'))
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(513279392952448677)
,p_plugin_id=>wwv_flow_api.id(511429967211344646)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>9
,p_display_sequence=>11
,p_prompt=>'Minimal Input Length'
,p_attribute_type=>'NUMBER'
,p_is_required=>true
,p_default_value=>'0'
,p_unit=>'Characters'
,p_supported_component_types=>'APEX_APPLICATION_PAGE_ITEMS:APEX_APPL_PAGE_IG_COLUMNS'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(511489988073078165)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'IN_LIST'
,p_depending_on_expression=>'MIL'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Provided numeric value is used to determine when autocomplete should be performed.</p>',
'<ul>',
'  <li>When value is equal <strong>0</strong> the autocomplete shows message <strong>Start typing to get results.</strong>.</li>',
'  <li>When value is greater then <strong>0</strong> the autocomplete shows message <strong>Please enter X or more characters.</strong> where <strong>X</strong> is provided value.</li>',
'</ul>'))
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(514159201382615352)
,p_plugin_id=>wwv_flow_api.id(511429967211344646)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>10
,p_display_sequence=>100
,p_prompt=>'Report Basic Configuration'
,p_attribute_type=>'CHECKBOXES'
,p_is_required=>false
,p_default_value=>'DDC:DRC'
,p_supported_component_types=>'APEX_APPLICATION_PAGE_ITEMS:APEX_APPL_PAGE_IG_COLUMNS'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(511651670225859388)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'NOT_IN_LIST'
,p_depending_on_expression=>'RCC'
,p_lov_type=>'STATIC'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'This attribute defines whether columns with alias <code>D</code> and <code>R</code> are rendered in popup report.',
'</p>',
'<p>',
'<i>This attribute is available only when <strong>Popup settings > Report Columns Configuration</b> is not checked.</i>',
'</p>'))
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(514159479753616264)
,p_plugin_attribute_id=>wwv_flow_api.id(514159201382615352)
,p_display_sequence=>10
,p_display_value=>'Display "Display" Column'
,p_return_value=>'DDC'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'When checked, column with alias <code>D</d> is rendered in popup report.',
'</p>'))
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(514159809949616894)
,p_plugin_attribute_id=>wwv_flow_api.id(514159201382615352)
,p_display_sequence=>20
,p_display_value=>'Display "Return" Column'
,p_return_value=>'DRC'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'When checked, column with alias <code>R</d> is rendered in popup report.',
'</p>'))
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(514273225714376497)
,p_plugin_id=>wwv_flow_api.id(511429967211344646)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>11
,p_display_sequence=>110
,p_prompt=>'Custom Title'
,p_attribute_type=>'TEXT'
,p_is_required=>true
,p_supported_component_types=>'APEX_APPLICATION_PAGE_ITEMS:APEX_APPL_PAGE_IG_COLUMNS'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(511651670225859388)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'IN_LIST'
,p_depending_on_expression=>'CT'
);
wwv_flow_api.component_end;
end;
/
begin
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>107
,p_default_id_offset=>0
,p_default_owner=>'MISO'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(518345447384814907)
,p_plugin_id=>wwv_flow_api.id(511429967211344646)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>12
,p_display_sequence=>62
,p_prompt=>'Dialog Width'
,p_attribute_type=>'NUMBER'
,p_is_required=>true
,p_default_value=>'720'
,p_unit=>'px'
,p_supported_component_types=>'APEX_APPLICATION_PAGE_ITEMS:APEX_APPL_PAGE_IG_COLUMNS'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(511507172891456160)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'IN_LIST'
,p_depending_on_expression=>'POPOUP_REPORT'
,p_help_text=>'This attribute defines popup dialog width.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(518376368065816538)
,p_plugin_id=>wwv_flow_api.id(511429967211344646)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>13
,p_display_sequence=>64
,p_prompt=>'Dialog Height'
,p_attribute_type=>'NUMBER'
,p_is_required=>true
,p_default_value=>'541'
,p_unit=>'px'
,p_supported_component_types=>'APEX_APPLICATION_PAGE_ITEMS:APEX_APPL_PAGE_IG_COLUMNS'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(511651670225859388)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'NOT_IN_LIST'
,p_depending_on_expression=>'AHTRR'
,p_help_text=>'This attribute defines popup dialog height.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(413448871270654764)
,p_plugin_id=>wwv_flow_api.id(511429967211344646)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>14
,p_display_sequence=>140
,p_prompt=>'Autocomplete Results Max Height'
,p_attribute_type=>'NUMBER'
,p_is_required=>true
,p_default_value=>'200'
,p_unit=>'px'
,p_supported_component_types=>'APEX_APPLICATION_PAGE_ITEMS:APEX_APPL_PAGE_IG_COLUMNS'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(511507172891456160)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'IN_LIST'
,p_depending_on_expression=>'AUTOCOMPLETE'
,p_help_text=>'This attribute defines maximum height in pixels for autocomplete.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(413477318516883987)
,p_plugin_id=>wwv_flow_api.id(511429967211344646)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>15
,p_display_sequence=>150
,p_prompt=>'Autocomplete Rows To Fetch'
,p_attribute_type=>'NUMBER'
,p_is_required=>true
,p_default_value=>'20'
,p_supported_component_types=>'APEX_APPLICATION_PAGE_ITEMS:APEX_APPL_PAGE_IG_COLUMNS'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(511507172891456160)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'IN_LIST'
,p_depending_on_expression=>'AUTOCOMPLETE'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'  This attribute defines how many rows will be fetched during one AJAX request.',
'  Scrolling Autocomplete or clicking on <code>Load more...</code> results in fetching next set of data.',
'</p>',
'<ul>',
'  <li>',
'    If fetched data don''t exceed maximum height defined as <strong>Autocomplete Results Max Height</strong>, link <code>Load more ...</code> is displayed.',
'  </li>',
'  <li>',
'    If fetched data exceed maximum height autocomplete uses scroll event for autocomplete container to load next set of data.',
'  </li>',
'</ul>'))
);
wwv_flow_api.create_plugin_std_attribute(
 p_id=>wwv_flow_api.id(511434673609250289)
,p_plugin_id=>wwv_flow_api.id(511429967211344646)
,p_name=>'LOV'
,p_sql_min_column_count=>2
,p_supported_ui_types=>'DESKTOP'
,p_depending_on_has_to_exist=>true
);
wwv_flow_api.create_plugin_event(
 p_id=>wwv_flow_api.id(484118216025327990)
,p_plugin_id=>wwv_flow_api.id(511429967211344646)
,p_name=>'paeli_popup_data_rendered'
,p_display_name=>'Popup report data rendered'
);
wwv_flow_api.create_plugin_event(
 p_id=>wwv_flow_api.id(484117558568327989)
,p_plugin_id=>wwv_flow_api.id(511429967211344646)
,p_name=>'paeli_popup_error'
,p_display_name=>'Popup report error'
);
wwv_flow_api.create_plugin_event(
 p_id=>wwv_flow_api.id(484117863877327990)
,p_plugin_id=>wwv_flow_api.id(511429967211344646)
,p_name=>'paeli_popup_hidden'
,p_display_name=>'Popup report closed'
);
wwv_flow_api.create_plugin_event(
 p_id=>wwv_flow_api.id(484118633271327990)
,p_plugin_id=>wwv_flow_api.id(511429967211344646)
,p_name=>'paeli_popup_shown'
,p_display_name=>'Popup report open'
);
wwv_flow_api.create_plugin_event(
 p_id=>wwv_flow_api.id(484120246824327992)
,p_plugin_id=>wwv_flow_api.id(511429967211344646)
,p_name=>'paeli_prompt_data_appended'
,p_display_name=>'Autocomplete data appended'
);
wwv_flow_api.create_plugin_event(
 p_id=>wwv_flow_api.id(484120623356327992)
,p_plugin_id=>wwv_flow_api.id(511429967211344646)
,p_name=>'paeli_prompt_data_rendered'
,p_display_name=>'Autocomplete data rendered'
);
wwv_flow_api.create_plugin_event(
 p_id=>wwv_flow_api.id(484119813033327991)
,p_plugin_id=>wwv_flow_api.id(511429967211344646)
,p_name=>'paeli_prompt_error'
,p_display_name=>'Autocomplete error'
);
wwv_flow_api.create_plugin_event(
 p_id=>wwv_flow_api.id(484119450717327991)
,p_plugin_id=>wwv_flow_api.id(511429967211344646)
,p_name=>'paeli_prompt_hidden'
,p_display_name=>'Autocomplete closed'
);
wwv_flow_api.create_plugin_event(
 p_id=>wwv_flow_api.id(484119003621327991)
,p_plugin_id=>wwv_flow_api.id(511429967211344646)
,p_name=>'paeli_prompt_shown'
,p_display_name=>'Autocomplete open'
);
wwv_flow_api.component_end;
end;
/
begin
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>107
,p_default_id_offset=>0
,p_default_owner=>'MISO'
);
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2866756E6374696F6E20646566696E654D7573746163686528676C6F62616C2C666163746F7279297B696628747970656F66206578706F7274733D3D3D226F626A6563742226266578706F7274732626747970656F66206578706F7274732E6E6F64654E';
wwv_flow_api.g_varchar2_table(2) := '616D65213D3D22737472696E6722297B666163746F7279286578706F727473297D656C736520696628747970656F6620646566696E653D3D3D2266756E6374696F6E222626646566696E652E616D64297B646566696E65285B226578706F727473225D2C';
wwv_flow_api.g_varchar2_table(3) := '666163746F7279297D656C73657B676C6F62616C2E4D757374616368653D7B7D3B666163746F727928676C6F62616C2E4D75737461636865297D7D2928746869732C66756E6374696F6E206D75737461636865466163746F7279286D7573746163686529';
wwv_flow_api.g_varchar2_table(4) := '7B766172206F626A656374546F537472696E673D4F626A6563742E70726F746F747970652E746F537472696E673B76617220697341727261793D41727261792E697341727261797C7C66756E6374696F6E2069734172726179506F6C7966696C6C286F62';
wwv_flow_api.g_varchar2_table(5) := '6A656374297B72657475726E206F626A656374546F537472696E672E63616C6C286F626A656374293D3D3D225B6F626A6563742041727261795D227D3B66756E6374696F6E20697346756E6374696F6E286F626A656374297B72657475726E2074797065';
wwv_flow_api.g_varchar2_table(6) := '6F66206F626A6563743D3D3D2266756E6374696F6E227D66756E6374696F6E2074797065537472286F626A297B72657475726E2069734172726179286F626A293F226172726179223A747970656F66206F626A7D66756E6374696F6E2065736361706552';
wwv_flow_api.g_varchar2_table(7) := '656745787028737472696E67297B72657475726E20737472696E672E7265706C616365282F5B5C2D5C5B5C5D7B7D28292A2B3F2E2C5C5C5C5E247C235C735D2F672C225C5C242622297D66756E6374696F6E2068617350726F7065727479286F626A2C70';
wwv_flow_api.g_varchar2_table(8) := '726F704E616D65297B72657475726E206F626A213D6E756C6C2626747970656F66206F626A3D3D3D226F626A65637422262670726F704E616D6520696E206F626A7D76617220726567457870546573743D5265674578702E70726F746F747970652E7465';
wwv_flow_api.g_varchar2_table(9) := '73743B66756E6374696F6E20746573745265674578702872652C737472696E67297B72657475726E20726567457870546573742E63616C6C2872652C737472696E67297D766172206E6F6E537061636552653D2F5C532F3B66756E6374696F6E20697357';
wwv_flow_api.g_varchar2_table(10) := '68697465737061636528737472696E67297B72657475726E2174657374526567457870286E6F6E537061636552652C737472696E67297D76617220656E746974794D61703D7B2226223A2226616D703B222C223C223A22266C743B222C223E223A222667';
wwv_flow_api.g_varchar2_table(11) := '743B222C2722273A222671756F743B222C2227223A22262333393B222C222F223A2226237832463B222C2260223A2226237836303B222C223D223A2226237833443B227D3B66756E6374696F6E2065736361706548746D6C28737472696E67297B726574';
wwv_flow_api.g_varchar2_table(12) := '75726E20537472696E6728737472696E67292E7265706C616365282F5B263C3E2227603D5C2F5D2F672C66756E6374696F6E2066726F6D456E746974794D61702873297B72657475726E20656E746974794D61705B735D7D297D76617220776869746552';
wwv_flow_api.g_varchar2_table(13) := '653D2F5C732A2F3B76617220737061636552653D2F5C732B2F3B76617220657175616C7352653D2F5C732A3D2F3B766172206375726C7952653D2F5C732A5C7D2F3B7661722074616752653D2F237C5C5E7C5C2F7C3E7C5C7B7C267C3D7C212F3B66756E';
wwv_flow_api.g_varchar2_table(14) := '6374696F6E20706172736554656D706C6174652874656D706C6174652C74616773297B6966282174656D706C6174652972657475726E5B5D3B7661722073656374696F6E733D5B5D3B76617220746F6B656E733D5B5D3B766172207370616365733D5B5D';
wwv_flow_api.g_varchar2_table(15) := '3B766172206861735461673D66616C73653B766172206E6F6E53706163653D66616C73653B66756E6374696F6E207374726970537061636528297B6966286861735461672626216E6F6E5370616365297B7768696C65287370616365732E6C656E677468';
wwv_flow_api.g_varchar2_table(16) := '2964656C65746520746F6B656E735B7370616365732E706F7028295D7D656C73657B7370616365733D5B5D7D6861735461673D66616C73653B6E6F6E53706163653D66616C73657D766172206F70656E696E6754616752652C636C6F73696E6754616752';
wwv_flow_api.g_varchar2_table(17) := '652C636C6F73696E674375726C7952653B66756E6374696F6E20636F6D70696C65546167732874616773546F436F6D70696C65297B696628747970656F662074616773546F436F6D70696C653D3D3D22737472696E67222974616773546F436F6D70696C';
wwv_flow_api.g_varchar2_table(18) := '653D74616773546F436F6D70696C652E73706C697428737061636552652C32293B69662821697341727261792874616773546F436F6D70696C65297C7C74616773546F436F6D70696C652E6C656E677468213D3D32297468726F77206E6577204572726F';
wwv_flow_api.g_varchar2_table(19) := '722822496E76616C696420746167733A20222B74616773546F436F6D70696C65293B6F70656E696E6754616752653D6E657720526567457870286573636170655265674578702874616773546F436F6D70696C655B305D292B225C5C732A22293B636C6F';
wwv_flow_api.g_varchar2_table(20) := '73696E6754616752653D6E65772052656745787028225C5C732A222B6573636170655265674578702874616773546F436F6D70696C655B315D29293B636C6F73696E674375726C7952653D6E65772052656745787028225C5C732A222B65736361706552';
wwv_flow_api.g_varchar2_table(21) := '656745787028227D222B74616773546F436F6D70696C655B315D29297D636F6D70696C655461677328746167737C7C6D757374616368652E74616773293B766172207363616E6E65723D6E6577205363616E6E65722874656D706C617465293B76617220';
wwv_flow_api.g_varchar2_table(22) := '73746172742C747970652C76616C75652C6368722C746F6B656E2C6F70656E53656374696F6E3B7768696C6528217363616E6E65722E656F732829297B73746172743D7363616E6E65722E706F733B76616C75653D7363616E6E65722E7363616E556E74';
wwv_flow_api.g_varchar2_table(23) := '696C286F70656E696E675461675265293B69662876616C7565297B666F722876617220693D302C76616C75654C656E6774683D76616C75652E6C656E6774683B693C76616C75654C656E6774683B2B2B69297B6368723D76616C75652E63686172417428';
wwv_flow_api.g_varchar2_table(24) := '69293B6966286973576869746573706163652863687229297B7370616365732E7075736828746F6B656E732E6C656E677468297D656C73657B6E6F6E53706163653D747275657D746F6B656E732E70757368285B2274657874222C6368722C7374617274';
wwv_flow_api.g_varchar2_table(25) := '2C73746172742B315D293B73746172742B3D313B6966286368723D3D3D225C6E22297374726970537061636528297D7D696628217363616E6E65722E7363616E286F70656E696E6754616752652929627265616B3B6861735461673D747275653B747970';
wwv_flow_api.g_varchar2_table(26) := '653D7363616E6E65722E7363616E287461675265297C7C226E616D65223B7363616E6E65722E7363616E2877686974655265293B696628747970653D3D3D223D22297B76616C75653D7363616E6E65722E7363616E556E74696C28657175616C73526529';
wwv_flow_api.g_varchar2_table(27) := '3B7363616E6E65722E7363616E28657175616C735265293B7363616E6E65722E7363616E556E74696C28636C6F73696E675461675265297D656C736520696628747970653D3D3D227B22297B76616C75653D7363616E6E65722E7363616E556E74696C28';
wwv_flow_api.g_varchar2_table(28) := '636C6F73696E674375726C795265293B7363616E6E65722E7363616E286375726C795265293B7363616E6E65722E7363616E556E74696C28636C6F73696E675461675265293B747970653D2226227D656C73657B76616C75653D7363616E6E65722E7363';
wwv_flow_api.g_varchar2_table(29) := '616E556E74696C28636C6F73696E675461675265297D696628217363616E6E65722E7363616E28636C6F73696E67546167526529297468726F77206E6577204572726F722822556E636C6F7365642074616720617420222B7363616E6E65722E706F7329';
wwv_flow_api.g_varchar2_table(30) := '3B746F6B656E3D5B747970652C76616C75652C73746172742C7363616E6E65722E706F735D3B746F6B656E732E7075736828746F6B656E293B696628747970653D3D3D2223227C7C747970653D3D3D225E22297B73656374696F6E732E7075736828746F';
wwv_flow_api.g_varchar2_table(31) := '6B656E297D656C736520696628747970653D3D3D222F22297B6F70656E53656374696F6E3D73656374696F6E732E706F7028293B696628216F70656E53656374696F6E297468726F77206E6577204572726F722827556E6F70656E65642073656374696F';
wwv_flow_api.g_varchar2_table(32) := '6E2022272B76616C75652B272220617420272B7374617274293B6966286F70656E53656374696F6E5B315D213D3D76616C7565297468726F77206E6577204572726F722827556E636C6F7365642073656374696F6E2022272B6F70656E53656374696F6E';
wwv_flow_api.g_varchar2_table(33) := '5B315D2B272220617420272B7374617274297D656C736520696628747970653D3D3D226E616D65227C7C747970653D3D3D227B227C7C747970653D3D3D222622297B6E6F6E53706163653D747275657D656C736520696628747970653D3D3D223D22297B';
wwv_flow_api.g_varchar2_table(34) := '636F6D70696C65546167732876616C7565297D7D6F70656E53656374696F6E3D73656374696F6E732E706F7028293B6966286F70656E53656374696F6E297468726F77206E6577204572726F722827556E636C6F7365642073656374696F6E2022272B6F';
wwv_flow_api.g_varchar2_table(35) := '70656E53656374696F6E5B315D2B272220617420272B7363616E6E65722E706F73293B72657475726E206E657374546F6B656E7328737175617368546F6B656E7328746F6B656E7329297D66756E6374696F6E20737175617368546F6B656E7328746F6B';
wwv_flow_api.g_varchar2_table(36) := '656E73297B766172207371756173686564546F6B656E733D5B5D3B76617220746F6B656E2C6C617374546F6B656E3B666F722876617220693D302C6E756D546F6B656E733D746F6B656E732E6C656E6774683B693C6E756D546F6B656E733B2B2B69297B';
wwv_flow_api.g_varchar2_table(37) := '746F6B656E3D746F6B656E735B695D3B696628746F6B656E297B696628746F6B656E5B305D3D3D3D22746578742226266C617374546F6B656E26266C617374546F6B656E5B305D3D3D3D227465787422297B6C617374546F6B656E5B315D2B3D746F6B65';
wwv_flow_api.g_varchar2_table(38) := '6E5B315D3B6C617374546F6B656E5B335D3D746F6B656E5B335D7D656C73657B7371756173686564546F6B656E732E7075736828746F6B656E293B6C617374546F6B656E3D746F6B656E7D7D7D72657475726E207371756173686564546F6B656E737D66';
wwv_flow_api.g_varchar2_table(39) := '756E6374696F6E206E657374546F6B656E7328746F6B656E73297B766172206E6573746564546F6B656E733D5B5D3B76617220636F6C6C6563746F723D6E6573746564546F6B656E733B7661722073656374696F6E733D5B5D3B76617220746F6B656E2C';
wwv_flow_api.g_varchar2_table(40) := '73656374696F6E3B666F722876617220693D302C6E756D546F6B656E733D746F6B656E732E6C656E6774683B693C6E756D546F6B656E733B2B2B69297B746F6B656E3D746F6B656E735B695D3B73776974636828746F6B656E5B305D297B636173652223';
wwv_flow_api.g_varchar2_table(41) := '223A63617365225E223A636F6C6C6563746F722E7075736828746F6B656E293B73656374696F6E732E7075736828746F6B656E293B636F6C6C6563746F723D746F6B656E5B345D3D5B5D3B627265616B3B63617365222F223A73656374696F6E3D736563';
wwv_flow_api.g_varchar2_table(42) := '74696F6E732E706F7028293B73656374696F6E5B355D3D746F6B656E5B325D3B636F6C6C6563746F723D73656374696F6E732E6C656E6774683E303F73656374696F6E735B73656374696F6E732E6C656E6774682D315D5B345D3A6E6573746564546F6B';
wwv_flow_api.g_varchar2_table(43) := '656E733B627265616B3B64656661756C743A636F6C6C6563746F722E7075736828746F6B656E297D7D72657475726E206E6573746564546F6B656E737D66756E6374696F6E205363616E6E657228737472696E67297B746869732E737472696E673D7374';
wwv_flow_api.g_varchar2_table(44) := '72696E673B746869732E7461696C3D737472696E673B746869732E706F733D307D5363616E6E65722E70726F746F747970652E656F733D66756E6374696F6E20656F7328297B72657475726E20746869732E7461696C3D3D3D22227D3B5363616E6E6572';
wwv_flow_api.g_varchar2_table(45) := '2E70726F746F747970652E7363616E3D66756E6374696F6E207363616E287265297B766172206D617463683D746869732E7461696C2E6D61746368287265293B696628216D617463687C7C6D617463682E696E646578213D3D302972657475726E22223B';
wwv_flow_api.g_varchar2_table(46) := '76617220737472696E673D6D617463685B305D3B746869732E7461696C3D746869732E7461696C2E737562737472696E6728737472696E672E6C656E677468293B746869732E706F732B3D737472696E672E6C656E6774683B72657475726E2073747269';
wwv_flow_api.g_varchar2_table(47) := '6E677D3B5363616E6E65722E70726F746F747970652E7363616E556E74696C3D66756E6374696F6E207363616E556E74696C287265297B76617220696E6465783D746869732E7461696C2E736561726368287265292C6D617463683B7377697463682869';
wwv_flow_api.g_varchar2_table(48) := '6E646578297B636173652D313A6D617463683D746869732E7461696C3B746869732E7461696C3D22223B627265616B3B6361736520303A6D617463683D22223B627265616B3B64656661756C743A6D617463683D746869732E7461696C2E737562737472';
wwv_flow_api.g_varchar2_table(49) := '696E6728302C696E646578293B746869732E7461696C3D746869732E7461696C2E737562737472696E6728696E646578297D746869732E706F732B3D6D617463682E6C656E6774683B72657475726E206D617463687D3B66756E6374696F6E20436F6E74';
wwv_flow_api.g_varchar2_table(50) := '65787428766965772C706172656E74436F6E74657874297B746869732E766965773D766965773B746869732E63616368653D7B222E223A746869732E766965777D3B746869732E706172656E743D706172656E74436F6E746578747D436F6E746578742E';
wwv_flow_api.g_varchar2_table(51) := '70726F746F747970652E707573683D66756E6374696F6E20707573682876696577297B72657475726E206E657720436F6E7465787428766965772C74686973297D3B436F6E746578742E70726F746F747970652E6C6F6F6B75703D66756E6374696F6E20';
wwv_flow_api.g_varchar2_table(52) := '6C6F6F6B7570286E616D65297B7661722063616368653D746869732E63616368653B7661722076616C75653B69662863616368652E6861734F776E50726F7065727479286E616D6529297B76616C75653D63616368655B6E616D655D7D656C73657B7661';
wwv_flow_api.g_varchar2_table(53) := '7220636F6E746578743D746869732C6E616D65732C696E6465782C6C6F6F6B75704869743D66616C73653B7768696C6528636F6E74657874297B6966286E616D652E696E6465784F6628222E22293E30297B76616C75653D636F6E746578742E76696577';
wwv_flow_api.g_varchar2_table(54) := '3B6E616D65733D6E616D652E73706C697428222E22293B696E6465783D303B7768696C652876616C7565213D6E756C6C2626696E6465783C6E616D65732E6C656E677468297B696628696E6465783D3D3D6E616D65732E6C656E6774682D31296C6F6F6B';
wwv_flow_api.g_varchar2_table(55) := '75704869743D68617350726F70657274792876616C75652C6E616D65735B696E6465785D293B76616C75653D76616C75655B6E616D65735B696E6465782B2B5D5D7D7D656C73657B76616C75653D636F6E746578742E766965775B6E616D655D3B6C6F6F';
wwv_flow_api.g_varchar2_table(56) := '6B75704869743D68617350726F706572747928636F6E746578742E766965772C6E616D65297D6966286C6F6F6B757048697429627265616B3B636F6E746578743D636F6E746578742E706172656E747D63616368655B6E616D655D3D76616C75657D6966';
wwv_flow_api.g_varchar2_table(57) := '28697346756E6374696F6E2876616C7565292976616C75653D76616C75652E63616C6C28746869732E76696577293B72657475726E2076616C75657D3B66756E6374696F6E2057726974657228297B746869732E63616368653D7B7D7D5772697465722E';
wwv_flow_api.g_varchar2_table(58) := '70726F746F747970652E636C65617243616368653D66756E6374696F6E20636C656172436163686528297B746869732E63616368653D7B7D7D3B5772697465722E70726F746F747970652E70617273653D66756E6374696F6E2070617273652874656D70';
wwv_flow_api.g_varchar2_table(59) := '6C6174652C74616773297B7661722063616368653D746869732E63616368653B76617220746F6B656E733D63616368655B74656D706C6174655D3B696628746F6B656E733D3D6E756C6C29746F6B656E733D63616368655B74656D706C6174655D3D7061';
wwv_flow_api.g_varchar2_table(60) := '72736554656D706C6174652874656D706C6174652C74616773293B72657475726E20746F6B656E737D3B5772697465722E70726F746F747970652E72656E6465723D66756E6374696F6E2072656E6465722874656D706C6174652C766965772C70617274';
wwv_flow_api.g_varchar2_table(61) := '69616C73297B76617220746F6B656E733D746869732E70617273652874656D706C617465293B76617220636F6E746578743D7669657720696E7374616E63656F6620436F6E746578743F766965773A6E657720436F6E746578742876696577293B726574';
wwv_flow_api.g_varchar2_table(62) := '75726E20746869732E72656E646572546F6B656E7328746F6B656E732C636F6E746578742C7061727469616C732C74656D706C617465297D3B5772697465722E70726F746F747970652E72656E646572546F6B656E733D66756E6374696F6E2072656E64';
wwv_flow_api.g_varchar2_table(63) := '6572546F6B656E7328746F6B656E732C636F6E746578742C7061727469616C732C6F726967696E616C54656D706C617465297B766172206275666665723D22223B76617220746F6B656E2C73796D626F6C2C76616C75653B666F722876617220693D302C';
wwv_flow_api.g_varchar2_table(64) := '6E756D546F6B656E733D746F6B656E732E6C656E6774683B693C6E756D546F6B656E733B2B2B69297B76616C75653D756E646566696E65643B746F6B656E3D746F6B656E735B695D3B73796D626F6C3D746F6B656E5B305D3B69662873796D626F6C3D3D';
wwv_flow_api.g_varchar2_table(65) := '3D2223222976616C75653D746869732E72656E64657253656374696F6E28746F6B656E2C636F6E746578742C7061727469616C732C6F726967696E616C54656D706C617465293B656C73652069662873796D626F6C3D3D3D225E222976616C75653D7468';
wwv_flow_api.g_varchar2_table(66) := '69732E72656E646572496E76657274656428746F6B656E2C636F6E746578742C7061727469616C732C6F726967696E616C54656D706C617465293B656C73652069662873796D626F6C3D3D3D223E222976616C75653D746869732E72656E646572506172';
wwv_flow_api.g_varchar2_table(67) := '7469616C28746F6B656E2C636F6E746578742C7061727469616C732C6F726967696E616C54656D706C617465293B656C73652069662873796D626F6C3D3D3D2226222976616C75653D746869732E756E6573636170656456616C756528746F6B656E2C63';
wwv_flow_api.g_varchar2_table(68) := '6F6E74657874293B656C73652069662873796D626F6C3D3D3D226E616D65222976616C75653D746869732E6573636170656456616C756528746F6B656E2C636F6E74657874293B656C73652069662873796D626F6C3D3D3D2274657874222976616C7565';
wwv_flow_api.g_varchar2_table(69) := '3D746869732E72617756616C756528746F6B656E293B69662876616C7565213D3D756E646566696E6564296275666665722B3D76616C75657D72657475726E206275666665727D3B5772697465722E70726F746F747970652E72656E6465725365637469';
wwv_flow_api.g_varchar2_table(70) := '6F6E3D66756E6374696F6E2072656E64657253656374696F6E28746F6B656E2C636F6E746578742C7061727469616C732C6F726967696E616C54656D706C617465297B7661722073656C663D746869733B766172206275666665723D22223B7661722076';
wwv_flow_api.g_varchar2_table(71) := '616C75653D636F6E746578742E6C6F6F6B757028746F6B656E5B315D293B66756E6374696F6E2073756252656E6465722874656D706C617465297B72657475726E2073656C662E72656E6465722874656D706C6174652C636F6E746578742C7061727469';
wwv_flow_api.g_varchar2_table(72) := '616C73297D6966282176616C75652972657475726E3B696628697341727261792876616C756529297B666F7228766172206A3D302C76616C75654C656E6774683D76616C75652E6C656E6774683B6A3C76616C75654C656E6774683B2B2B6A297B627566';
wwv_flow_api.g_varchar2_table(73) := '6665722B3D746869732E72656E646572546F6B656E7328746F6B656E5B345D2C636F6E746578742E707573682876616C75655B6A5D292C7061727469616C732C6F726967696E616C54656D706C617465297D7D656C736520696628747970656F66207661';
wwv_flow_api.g_varchar2_table(74) := '6C75653D3D3D226F626A656374227C7C747970656F662076616C75653D3D3D22737472696E67227C7C747970656F662076616C75653D3D3D226E756D62657222297B6275666665722B3D746869732E72656E646572546F6B656E7328746F6B656E5B345D';
wwv_flow_api.g_varchar2_table(75) := '2C636F6E746578742E707573682876616C7565292C7061727469616C732C6F726967696E616C54656D706C617465297D656C736520696628697346756E6374696F6E2876616C756529297B696628747970656F66206F726967696E616C54656D706C6174';
wwv_flow_api.g_varchar2_table(76) := '65213D3D22737472696E6722297468726F77206E6577204572726F72282243616E6E6F7420757365206869676865722D6F726465722073656374696F6E7320776974686F757420746865206F726967696E616C2074656D706C61746522293B76616C7565';
wwv_flow_api.g_varchar2_table(77) := '3D76616C75652E63616C6C28636F6E746578742E766965772C6F726967696E616C54656D706C6174652E736C69636528746F6B656E5B335D2C746F6B656E5B355D292C73756252656E646572293B69662876616C7565213D6E756C6C296275666665722B';
wwv_flow_api.g_varchar2_table(78) := '3D76616C75657D656C73657B6275666665722B3D746869732E72656E646572546F6B656E7328746F6B656E5B345D2C636F6E746578742C7061727469616C732C6F726967696E616C54656D706C617465297D72657475726E206275666665727D3B577269';
wwv_flow_api.g_varchar2_table(79) := '7465722E70726F746F747970652E72656E646572496E7665727465643D66756E6374696F6E2072656E646572496E76657274656428746F6B656E2C636F6E746578742C7061727469616C732C6F726967696E616C54656D706C617465297B766172207661';
wwv_flow_api.g_varchar2_table(80) := '6C75653D636F6E746578742E6C6F6F6B757028746F6B656E5B315D293B6966282176616C75657C7C697341727261792876616C756529262676616C75652E6C656E6774683D3D3D302972657475726E20746869732E72656E646572546F6B656E7328746F';
wwv_flow_api.g_varchar2_table(81) := '6B656E5B345D2C636F6E746578742C7061727469616C732C6F726967696E616C54656D706C617465297D3B5772697465722E70726F746F747970652E72656E6465725061727469616C3D66756E6374696F6E2072656E6465725061727469616C28746F6B';
wwv_flow_api.g_varchar2_table(82) := '656E2C636F6E746578742C7061727469616C73297B696628217061727469616C732972657475726E3B7661722076616C75653D697346756E6374696F6E287061727469616C73293F7061727469616C7328746F6B656E5B315D293A7061727469616C735B';
wwv_flow_api.g_varchar2_table(83) := '746F6B656E5B315D5D3B69662876616C7565213D6E756C6C2972657475726E20746869732E72656E646572546F6B656E7328746869732E70617273652876616C7565292C636F6E746578742C7061727469616C732C76616C7565297D3B5772697465722E';
wwv_flow_api.g_varchar2_table(84) := '70726F746F747970652E756E6573636170656456616C75653D66756E6374696F6E20756E6573636170656456616C756528746F6B656E2C636F6E74657874297B7661722076616C75653D636F6E746578742E6C6F6F6B757028746F6B656E5B315D293B69';
wwv_flow_api.g_varchar2_table(85) := '662876616C7565213D6E756C6C2972657475726E2076616C75657D3B5772697465722E70726F746F747970652E6573636170656456616C75653D66756E6374696F6E206573636170656456616C756528746F6B656E2C636F6E74657874297B7661722076';
wwv_flow_api.g_varchar2_table(86) := '616C75653D636F6E746578742E6C6F6F6B757028746F6B656E5B315D293B69662876616C7565213D6E756C6C2972657475726E206D757374616368652E6573636170652876616C7565297D3B5772697465722E70726F746F747970652E72617756616C75';
wwv_flow_api.g_varchar2_table(87) := '653D66756E6374696F6E2072617756616C756528746F6B656E297B72657475726E20746F6B656E5B315D7D3B6D757374616368652E6E616D653D226D757374616368652E6A73223B6D757374616368652E76657273696F6E3D22322E322E31223B6D7573';
wwv_flow_api.g_varchar2_table(88) := '74616368652E746167733D5B227B7B222C227D7D225D3B7661722064656661756C745772697465723D6E6577205772697465723B6D757374616368652E636C65617243616368653D66756E6374696F6E20636C656172436163686528297B72657475726E';
wwv_flow_api.g_varchar2_table(89) := '2064656661756C745772697465722E636C656172436163686528297D3B6D757374616368652E70617273653D66756E6374696F6E2070617273652874656D706C6174652C74616773297B72657475726E2064656661756C745772697465722E7061727365';
wwv_flow_api.g_varchar2_table(90) := '2874656D706C6174652C74616773297D3B6D757374616368652E72656E6465723D66756E6374696F6E2072656E6465722874656D706C6174652C766965772C7061727469616C73297B696628747970656F662074656D706C617465213D3D22737472696E';
wwv_flow_api.g_varchar2_table(91) := '6722297B7468726F77206E657720547970654572726F722827496E76616C69642074656D706C617465212054656D706C6174652073686F756C6420626520612022737472696E672220272B276275742022272B747970655374722874656D706C61746529';
wwv_flow_api.g_varchar2_table(92) := '2B27222077617320676976656E2061732074686520666972737420272B22617267756D656E7420666F72206D757374616368652372656E6465722874656D706C6174652C20766965772C207061727469616C732922297D72657475726E2064656661756C';
wwv_flow_api.g_varchar2_table(93) := '745772697465722E72656E6465722874656D706C6174652C766965772C7061727469616C73297D3B6D757374616368652E746F5F68746D6C3D66756E6374696F6E20746F5F68746D6C2874656D706C6174652C766965772C7061727469616C732C73656E';
wwv_flow_api.g_varchar2_table(94) := '64297B76617220726573756C743D6D757374616368652E72656E6465722874656D706C6174652C766965772C7061727469616C73293B696628697346756E6374696F6E2873656E6429297B73656E6428726573756C74297D656C73657B72657475726E20';
wwv_flow_api.g_varchar2_table(95) := '726573756C747D7D3B6D757374616368652E6573636170653D65736361706548746D6C3B6D757374616368652E5363616E6E65723D5363616E6E65723B6D757374616368652E436F6E746578743D436F6E746578743B6D757374616368652E5772697465';
wwv_flow_api.g_varchar2_table(96) := '723D5772697465727D293B';
null;
wwv_flow_api.component_end;
end;
/
begin
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>107
,p_default_id_offset=>0
,p_default_owner=>'MISO'
);
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(511474048443032429)
,p_plugin_id=>wwv_flow_api.id(511429967211344646)
,p_file_name=>'mustache.js'
,p_mime_type=>'application/javascript'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
wwv_flow_api.component_end;
end;
/
begin
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>107
,p_default_id_offset=>0
,p_default_owner=>'MISO'
);
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '242E7769646765742827707265746975732E656E68616E6365644C6F764974656D272C207B0D0A2F2F0D0A2F2F0D0A2020435F4C4F475F4445425547202020203A20617065782E64656275672E4C4F475F4C4556454C2E494E464F2C0D0A2020435F4C4F';
wwv_flow_api.g_varchar2_table(2) := '475F5741524E494E4720203A20617065782E64656275672E4C4F475F4C4556454C2E5741524E2C0D0A2020435F4C4F475F4552524F52202020203A20617065782E64656275672E4C4F475F4C4556454C2E4552524F522C0D0A2020435F4C4F475F4C4556';
wwv_flow_api.g_varchar2_table(3) := '454C362020203A20617065782E64656275672E4C4F475F4C4556454C2E4150505F54524143452C0D0A2020435F4C4F475F4C4556454C392020203A20617065782E64656275672E4C4F475F4C4556454C2E454E47494E455F54524143452C0D0A2F2F0D0A';
wwv_flow_api.g_varchar2_table(4) := '2F2F0D0A2020435F56414C55455F534550415241544F5220202020202020202020202020202020202020202020202020202020203A20273A272C0D0A2020435F444953504C41595F534550415241544F5220202020202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(5) := '20202020202020203A20272C272C0D0A2020435F414A41585F5354415455535F53554343455353202020202020202020202020202020202020202020202020203A202753554343455353272C0D0A2020435F414A41585F5354415455535F4552524F5220';
wwv_flow_api.g_varchar2_table(6) := '20202020202020202020202020202020202020202020202020203A20274552524F52272C0D0A2020435F504F5055505F5345415243485F504C414345484F4C44455220202020202020202020202020202020202020203A2027456E746572206120736561';
wwv_flow_api.g_varchar2_table(7) := '726368207465726D272C0D0A2020435F504F5055505F42544E5F53454C4543545F5445585420202020202020202020202020202020202020202020203A202753656C656374272C0D0A2020435F504F5055505F53484F575F53454C45435445445F4C4142';
wwv_flow_api.g_varchar2_table(8) := '454C202020202020202020202020202020202020203A202253686F77206F6E6C792073656C6563746564222C0D0A2020435F504F5055505F544558545F524F57535F53454C454354454420202020202020202020202020202020202020203A2022416C6C';
wwv_flow_api.g_varchar2_table(9) := '20726573756C74732028253029206F6E2074686973207061676520686173206265656E2073656C65637465642E222C0D0A2020435F504F5055505F544558545F4E4F5F444154415F464F554E445F534541524348202020202020202020202020203A2027';
wwv_flow_api.g_varchar2_table(10) := '4E6F206461746120666F756E6420666F7220736561726368207465726D20222530222E272C0D0A2020435F504F5055505F544558545F4E4F5F444154415F464F554E445F515545525920202020202020202020202020203A202744696374696F6E617279';
wwv_flow_api.g_varchar2_table(11) := '20686173206E6F206461746120746F2072656E6465722E272C0D0A2020435F504F5055505F544558545F434C4541525F46494C544552494E472020202020202020202020202020202020203A2027436C69636B203C6120687265663D226A617661736372';
wwv_flow_api.g_varchar2_table(12) := '6970743A20766F69642830292220636C6173733D22636C65617246696C746572696E67223E686572653C2F613E20746F20636C6561722066696C746572696E672E272C0D0A2020435F504F5055505F544558545F554E53415645445F4348414E47455320';
wwv_flow_api.g_varchar2_table(13) := '20202020202020202020202020202020203A2027596F7520686176652073656C65637465642025302076616C7565732E20436C6F73696E6720776974686F757420736176696E672077696C6C206E6F7420736176652073656C65637465642076616C7565';
wwv_flow_api.g_varchar2_table(14) := '732E272C0D0A2020435F504F5055505F544558545F53454143485F494E5F53454C4543544544202020202020202020202020202020203A2027596F7520686176652066696C746572656420253020726F772873292066726F6D2025312073656C65637465';
wwv_flow_api.g_varchar2_table(15) := '6420726F772873292E203C2F62723E436C69636B203C6120687265663D226A6176617363726970743A20766F69642830292220636C6173733D2273686F7753656C6563746564223E686572653C2F613E20746F20676574206261636B20746F20616C6C20';
wwv_flow_api.g_varchar2_table(16) := '73656C656374656420726F77732E272C0D0A2020435F504F5055505F544558545F46494C54455245445F494E464F20202020202020202020202020202020202020203A2027253020726573756C747320666F756E6420666F722073656172636820746572';
wwv_flow_api.g_varchar2_table(17) := '6D20222531222E20272C0D0A2020435F504F5055505F544558545F45585452415F56414C5545202020202020202020202020202020202020202020203A202756616C75652022253022206973206E6F742077697468696E2064696374696F6E6172792E27';
wwv_flow_api.g_varchar2_table(18) := '2C0D0A2020435F50524F4D50545F4D454E555F455850414E445F5449544C4520202020202020202020202020202020202020203A202753686F77206F72206869646520616C6C2074616773272C0D0A2020435F50524F4D50545F4D454E555F534F52545F';
wwv_flow_api.g_varchar2_table(19) := '5449544C45202020202020202020202020202020202020202020203A2027536F72742074616773272C0D0A2020435F50524F4D50545F4D454E555F434C4541525F5449544C452020202020202020202020202020202020202020203A2027436C65617220';
wwv_flow_api.g_varchar2_table(20) := '616C6C2073656C65637465642076616C756573272C0D0A2020435F50524F4D50545F4D454E555F50415354455F5449544C452020202020202020202020202020202020202020203A202750617374652076616C756573272C0D0A2020435F50524F4D5054';
wwv_flow_api.g_varchar2_table(21) := '5F4D454E555F504F5055505F5449544C452020202020202020202020202020202020202020203A20274F70656E20706F707570207265706F7274272C0D0A2020435F50524F4D50545F544558545F4D494E494D414C5F494E5055545F4C454E4754485F58';
wwv_flow_api.g_varchar2_table(22) := '202020202020202020203A2027506C6561736520656E746572202530206F72206D6F726520636861726163746572732E272C0D0A2020435F50524F4D50545F544558545F4D494E494D414C5F494E5055545F4C454E4754485F3020202020202020202020';
wwv_flow_api.g_varchar2_table(23) := '3A2027537461727420747970696E6720746F2067657420726573756C74732E272C0D0A2020435F50524F4D50545F544558545F4E4F5F444154415F464F554E44202020202020202020202020202020202020203A20274E6F206461746120666F756E642E';
wwv_flow_api.g_varchar2_table(24) := '272C0D0A2020435F50524F4D50545F544558545F534541524348494E4720202020202020202020202020202020202020202020203A2027536561726368696E672E2E2E272C0D0A2020435F50524F4D50545F544558545F52415049445F53454C45435449';
wwv_flow_api.g_varchar2_table(25) := '4F4E20202020202020202020202020202020203A2027537461727420747970696E6720746F2073656C656374206D6F72652E2E2E272C0D0A2020435F50524F4D50545F544558545F4C4F41445F4D4F524520202020202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(26) := '202020203A20274C6F6164206D6F72652E2E2E272C0D0A2020435F4552524F525F44454255475F4F464620202020202020202020202020202020202020202020202020202020203A2022506C6561736520636F6E74616374206170706C69636174696F6E';
wwv_flow_api.g_varchar2_table(27) := '2061646D696E6973747261746F7220666F72206D6F726520696E666F726D6174696F6E2E5C6E44657461696C656420696E666F726D6174696F6E20617661696C61626C6520696E206465627567206D6F64652E222C20200D0A2020435F544147535F4C49';
wwv_flow_api.g_varchar2_table(28) := '4D495445445F4F5448455253202020202020202020202020202020202020202020202020203A2027616E64202530206D6F72652E2E2E272C0D0A2020435F544147535F4C494D495445445F30202020202020202020202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(29) := '2020202020203A202725302073656C6563746564272C0D0A2020435F504F5055505F504147494E4154494F4E5F5052455620202020202020202020202020202020202020202020203A202750726576696F7573272C0D0A2020435F504F5055505F504147';
wwv_flow_api.g_varchar2_table(30) := '494E4154494F4E5F4E45585420202020202020202020202020202020202020202020203A20274E657874272C0D0A2020435F504F5055505F504147494E4154494F4E5F4F46202020202020202020202020202020202020202020202020203A20276F6627';
wwv_flow_api.g_varchar2_table(31) := '2C0D0A2020435F504F5055505F4845414445525F534F52545F4153435F5449544C4520202020202020202020202020202020203A2027536F727420617363656E64696E67272C0D0A2020435F504F5055505F4845414445525F534F52545F444553435F54';
wwv_flow_api.g_varchar2_table(32) := '49544C45202020202020202020202020202020203A2027536F72742064657363656E64696E67272C0D0A2020435F504F5055505F544558545F534541524348494E472020202020202020202020202020202020202020202020203A202757616974696E67';
wwv_flow_api.g_varchar2_table(33) := '20666F7220726573756C74732E2E2E272C0D0A20202F2F76312E312E300D0A2020435F504F5055505F50415354455F54455854415245415F504C414345484F4C4445522020202020202020202020203A202756616C756573206D75737420626520736570';
wwv_flow_api.g_varchar2_table(34) := '6172617465642062792061206E65776C696E6520636861726163746572272C0D0A2020435F504F5055505F50415354455F42544E5F50415253455F544558542020202020202020202020202020202020203A20275061727365272C0D0A2020435F504F50';
wwv_flow_api.g_varchar2_table(35) := '55505F50415354455F42544E5F434C4541525F544558542020202020202020202020202020202020203A2027436C656172272C0D0A2020435F504F5055505F50415354455F42544E5F53454C4543545F5445585420202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(36) := '203A20274170706C79272C0D0A2020435F504F5055505F50415354455F42544E5F4241434B5F54455854202020202020202020202020202020202020203A20274261636B272C0D0A2020435F504F5055505F50415354455F53554D4D4152595F50415354';
wwv_flow_api.g_varchar2_table(37) := '45445F434F554E542020202020202020202020203A2027546F74616C206E756D626572206F66207061737465642076616C756573272C0D0A2020435F504F5055505F50415354455F53554D4D4152595F5041535445445F4C454E47485420202020202020';
wwv_flow_api.g_varchar2_table(38) := '202020203A2027546F74616C206C656E677468206F66207061737465642076616C75657320696E636C7564696E6720736570617261746F72272C0D0A2020435F504F5055505F50415354455F53554D4D4152595F4D41585F4C454E475448202020202020';
wwv_flow_api.g_varchar2_table(39) := '20202020202020203A20274D6178696D756D206C656E677468272C0D0A2020435F504F5055505F50415354455F53554D4D4152595F56414C5545535F544F5F42455F4150504C494544202020203A20274E756D626572206F66207061737465642076616C';
wwv_flow_api.g_varchar2_table(40) := '75657320746F206265206170706C696564202530272C0D0A2020435F504F5055505F50415354455F53554D4D4152595F56414C5545535F455843454544494E475F4C494D495420203A20274E756D626572206F66207061737465642076616C7565732065';
wwv_flow_api.g_varchar2_table(41) := '7863656564696E6720746865206D6178696D756D206C656E677468202530272C0D0A2020435F504F5055505F50415354455F53554D4D4152595F53484F575F4C4953545F414E43484F5220202020202020203A20272873686F77206C69737429272C0D0A';
wwv_flow_api.g_varchar2_table(42) := '2020435F504F5055505F50415354455F53554D4D4152595F4D41584C454E4754485F4E4F5453455420202020202020203A20276E6F7420736574272C0D0A2020435F504F5055505F50415354455F53554D4D4152595F54485F56414C5545535F4F555420';
wwv_flow_api.g_varchar2_table(43) := '202020202020202020203A202756616C75657320657863656564696E67206D6178696D756D206C656E677468206C696D6974272C0D0A2020435F504F5055505F50415354455F53554D4D4152595F54485F56414C5545535F494E20202020202020202020';
wwv_flow_api.g_varchar2_table(44) := '20203A202756616C75657320726561647920746F206265206170706C696564272C0D0A2020435F504F5055505F50415354455F53554D4D4152595F54485F53554D4D41525920202020202020202020202020203A202753756D6D617279272C0D0A0D0A0D';
wwv_flow_api.g_varchar2_table(45) := '0A20205F6372656174653A2066756E6374696F6E28297B0D0A20202020766172200D0A202020202020706F707570436F6C756D6E53657474696E67734A736F6E203D20756E646566696E65643B0D0A0D0A20202020746869732E6C6F6750726566697820';
wwv_flow_api.g_varchar2_table(46) := '3D20272320272B746869732E6F7074696F6E732E706C7567696E2E6E616D652B273A273B0D0A202020202F2F746869732E6C6F67507265666978203D2027232028272B746869732E656C656D656E742E6765742830292E69642B272920272B746869732E';
wwv_flow_api.g_varchar2_table(47) := '6F7074696F6E732E706C7567696E2E6E616D652B273A273B0D0A0D0A20202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F44454255472C20746869732E6C6F675072656669782C20275F637265617465272C2027446562';
wwv_flow_api.g_varchar2_table(48) := '7567206C6576656C203D2022272B617065782E64656275672E6765744C6576656C28292B272227293B0D0A0D0A20202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F44454255472C20746869732E6C6F67507265666978';
wwv_flow_api.g_varchar2_table(49) := '2C20275F637265617465272C20276F7074696F6E73272C207B0D0A202020202020226F7074696F6E73223A20746869732E6F7074696F6E732C200D0A20202020202027776964676574273A20746869730D0A202020207D293B0D0A0D0A20202020746869';
wwv_flow_api.g_varchar2_table(50) := '732E5F73757065722820746869732E6F7074696F6E7320293B0D0A20202020746869732E5F6170706C795472616E736C6174696F6E7328293B0D0A0D0A20202020746869732E706C7567696E53746F70706564203D2066616C73653B0D0A0D0A0D0A2020';
wwv_flow_api.g_varchar2_table(51) := '2020746869732E706C7567696E53657474696E6773203D207B0D0A202020202020226D61786C656E67746822202020202020202020202020202020203A20746869732E6F7074696F6E732E6974656D2E656C656D656E745F6D61785F6C656E6774682C0D';
wwv_flow_api.g_varchar2_table(52) := '0A20202020202022697344656275674F6E22202020202020202020202020202020203A20746869732E6F7074696F6E732E64656275672C0D0A20202020202022646973706C6179457874726122202020202020202020202020203A20746869732E6F7074';
wwv_flow_api.g_varchar2_table(53) := '696F6E732E6974656D2E6C6F765F646973706C61795F65787472612C0D0A20202020202022706F7075705365617263684465626F756E636554696D652220203A203330302C0D0A2020202020202269734175746F636F6D706C657465417661696C61626C';
wwv_flow_api.g_varchar2_table(54) := '652220203A20746869732E6F7074696F6E732E617474726962757465732E73657474696E677320213D206E756C6C20262620746869732E6F7074696F6E732E617474726962757465732E73657474696E67732E696E6465784F6628274155544F434F4D50';
wwv_flow_api.g_varchar2_table(55) := '4C4554452729203E202D312C0D0A202020202020226973506F7075705265706F7274417661696C61626C65222020203A20746869732E6F7074696F6E732E617474726962757465732E73657474696E677320213D206E756C6C20262620746869732E6F70';
wwv_flow_api.g_varchar2_table(56) := '74696F6E732E617474726962757465732E73657474696E67732E696E6465784F662827504F504F55505F5245504F52542729203E202D312C0D0A2020202020202269734D756C7469706C6553656C656374696F6E222020202020203A20746869732E6F70';
wwv_flow_api.g_varchar2_table(57) := '74696F6E732E617474726962757465732E73657474696E677320213D206E756C6C20262620746869732E6F7074696F6E732E617474726962757465732E73657474696E67732E696E6465784F6628274D532729203E202D312C0D0A20202020202022706F';
wwv_flow_api.g_varchar2_table(58) := '707570223A207B0D0A2020202020202020227769647468222020202020202020202020202020202020203A20746869732E6F7074696F6E732E617474726962757465732E706F70757057696474682C0D0A20202020202020202268656967687422202020';
wwv_flow_api.g_varchar2_table(59) := '20202020202020202020202020203A20746869732E6F7074696F6E732E617474726962757465732E706F7075704865696768742C0D0A2020202020202020227469746C65222020202020202020202020202020202020203A20746869732E5F676574506C';
wwv_flow_api.g_varchar2_table(60) := '7567696E53657474696E67735F706F7075705469746C655465787428292C0D0A202020202020202022726F777350657250616765222020202020202020202020203A2031302C0D0A20202020202020202269735265706F72744261736963436F6E662220';
wwv_flow_api.g_varchar2_table(61) := '20202020203A20746869732E5F676574506C7567696E53657474696E67735F69734261736963436F6E66696775726174696F6E28292C20202020202020200D0A20202020202020202F2F7370727761647A2077206B6F6E74656B73636965206973526570';
wwv_flow_api.g_varchar2_table(62) := '6F72744261736963436F6E660D0A20202020202020202269735265706F7274416476616E636564436F6E66222020203A20746869732E6F7074696F6E732E617474726962757465732E706F70757053657474696E677320213D206E756C6C202626207468';
wwv_flow_api.g_varchar2_table(63) := '69732E6F7074696F6E732E617474726962757465732E706F70757053657474696E67732E696E6465784F6628275243432729203E202D312C0D0A2020202020202020226973446973706C6179436F6C756D6E56697369626C6522203A20746869732E6F70';
wwv_flow_api.g_varchar2_table(64) := '74696F6E732E617474726962757465732E706F7075705265706F72744261736963436F6E6620213D206E756C6C20262620746869732E6F7074696F6E732E617474726962757465732E706F7075705265706F72744261736963436F6E662E696E6465784F';
wwv_flow_api.g_varchar2_table(65) := '6628274444432729203E202D312C0D0A202020202020202022697352657475726E436F6C756D6E56697369626C652220203A20746869732E6F7074696F6E732E617474726962757465732E706F7075705265706F72744261736963436F6E6620213D206E';
wwv_flow_api.g_varchar2_table(66) := '756C6C20262620746869732E6F7074696F6E732E617474726962757465732E706F7075705265706F72744261736963436F6E662E696E6465784F6628274452432729203E202D312C0D0A202020202020202022636C69636B4F6E526F7753656C65637473';
wwv_flow_api.g_varchar2_table(67) := '497422202020203A20746869732E6F7074696F6E732E617474726962757465732E706F70757053657474696E677320213D206E756C6C20262620746869732E6F7074696F6E732E617474726962757465732E706F70757053657474696E67732E696E6465';
wwv_flow_api.g_varchar2_table(68) := '784F662827434F5253492729203E202D312C0D0A202020202020202022647261676761626C652220202020202020202020202020203A20746869732E6F7074696F6E732E617474726962757465732E706F70757053657474696E677320213D206E756C6C';
wwv_flow_api.g_varchar2_table(69) := '20262620746869732E6F7074696F6E732E617474726962757465732E706F70757053657474696E67732E696E6465784F662827445241474741424C452729203E202D312C0D0A202020202020202022726573697A61626C65222020202020202020202020';
wwv_flow_api.g_varchar2_table(70) := '2020203A20746869732E6F7074696F6E732E617474726962757465732E706F70757053657474696E677320213D206E756C6C20262620746869732E6F7074696F6E732E617474726962757465732E706F70757053657474696E67732E696E6465784F6628';
wwv_flow_api.g_varchar2_table(71) := '27524553495A41424C452729203E202D312C0D0A202020202020202022636C6F73654F6E45736361706522202020202020202020203A20746869732E6F7074696F6E732E617474726962757465732E706F70757053657474696E677320213D206E756C6C';
wwv_flow_api.g_varchar2_table(72) := '20262620746869732E6F7074696F6E732E617474726962757465732E706F70757053657474696E67732E696E6465784F662827434F452729203E202D312C0D0A20202020202020202273686F77526F7773506572506167652220202020202020203A2074';
wwv_flow_api.g_varchar2_table(73) := '6869732E6F7074696F6E732E617474726962757465732E706F70757053657474696E677320213D206E756C6C20262620746869732E6F7074696F6E732E617474726962757465732E706F70757053657474696E67732E696E6465784F6628275250502729';
wwv_flow_api.g_varchar2_table(74) := '203E202D312C0D0A202020202020202022736561726368496E416C6C436F6C756D6E732220202020203A20746869732E6F7074696F6E732E617474726962757465732E706F70757053657474696E677320213D206E756C6C20262620746869732E6F7074';
wwv_flow_api.g_varchar2_table(75) := '696F6E732E617474726962757465732E706F70757053657474696E67732E696E6465784F662827534941432729203E202D312C0D0A20202020202020202261646A757374486569676874546F526573756C74732220203A20746869732E6F7074696F6E73';
wwv_flow_api.g_varchar2_table(76) := '2E617474726962757465732E706F70757053657474696E677320213D206E756C6C20262620746869732E6F7074696F6E732E617474726962757465732E706F70757053657474696E67732E696E6465784F66282741485452522729203E202D310D0A2020';
wwv_flow_api.g_varchar2_table(77) := '202020207D2C0D0A2020202020202F2F0D0A2020202020202270726F6D7074223A207B0D0A2020202020202020226D61784865696768742220202020202020202020202020203A207061727365496E7428746869732E6F7074696F6E732E617474726962';
wwv_flow_api.g_varchar2_table(78) := '757465732E6175746F436F6D706C6574654D6178486569676874292C0D0A2020202020202020226E617669676174696F6E4465626F756E636554696D6522203A2031302C0D0A2020202020202020226465626F756E636554696D65222020202020202020';
wwv_flow_api.g_varchar2_table(79) := '2020203A203230302C202F2F544244206174727962757420706C7567696E750D0A202020202020202022726F777350657250616765222020202020202020202020203A207061727365496E7428746869732E6F7074696F6E732E61747472696275746573';
wwv_flow_api.g_varchar2_table(80) := '2E6175746F436F6D706C657465526F77733253686F77292C200D0A202020202020202022617265546167734C696D69746564222020202020202020203A20746869732E6F7074696F6E732E617474726962757465732E6175746F436F6D706C6574655365';
wwv_flow_api.g_varchar2_table(81) := '7474696E677320213D206E756C6C20262620746869732E6F7074696F6E732E617474726962757465732E6175746F436F6D706C65746553657474696E67732E696E6465784F6628274C44542729203E202D312C0D0A202020202020202022697343757374';
wwv_flow_api.g_varchar2_table(82) := '6F6D54656D706C61746522202020202020203A20746869732E6F7074696F6E732E617474726962757465732E6175746F436F6D706C65746553657474696E677320213D206E756C6C20262620746869732E6F7074696F6E732E617474726962757465732E';
wwv_flow_api.g_varchar2_table(83) := '6175746F436F6D706C65746553657474696E67732E696E6465784F6628275543542729203E202D312C0D0A202020202020202022746167734E6F2220202020202020202020202020202020203A20746869732E6F7074696F6E732E617474726962757465';
wwv_flow_api.g_varchar2_table(84) := '732E6175746F436F6D706C657465546167734E6F2C0D0A20202020202020202274656D706C617465222020202020202020202020202020203A20746869732E6F7074696F6E732E617474726962757465732E6175746F436F6D706C65746553657474696E';
wwv_flow_api.g_varchar2_table(85) := '677354656D706C6174652C0D0A20202020202020202269734D696E696D616C496E7075744C656E677468222020203A20746869732E6F7074696F6E732E617474726962757465732E6175746F436F6D706C65746553657474696E677320213D206E756C6C';
wwv_flow_api.g_varchar2_table(86) := '20262620746869732E6F7074696F6E732E617474726962757465732E6175746F436F6D706C65746553657474696E67732E696E6465784F6628274D494C2729203E202D312C0D0A2020202020202020226D696E696D616C496E7075744C656E6774682220';
wwv_flow_api.g_varchar2_table(87) := '202020203A20746869732E6F7074696F6E732E617474726962757465732E6175746F436F6D706C6574654D696E496E7075744C656E6774682C0D0A2020202020202020226973526170696453656C656374696F6E22202020202020203A20746869732E6F';
wwv_flow_api.g_varchar2_table(88) := '7074696F6E732E617474726962757465732E6175746F436F6D706C65746553657474696E677320213D206E756C6C20262620746869732E6F7074696F6E732E617474726962757465732E6175746F436F6D706C65746553657474696E67732E696E646578';
wwv_flow_api.g_varchar2_table(89) := '4F66282752532729203E202D312C0D0A20202020202020202268696465546F6F6C626172222020202020202020202020203A20746869732E6F7074696F6E732E617474726962757465732E6175746F436F6D706C65746553657474696E677320213D206E';
wwv_flow_api.g_varchar2_table(90) := '756C6C20262620746869732E6F7074696F6E732E617474726962757465732E6175746F436F6D706C65746553657474696E67732E696E6465784F66282748542729203E202D310D0A20202020202020200D0A2020202020207D0D0A202020207D3B0D0A0D';
wwv_flow_api.g_varchar2_table(91) := '0A20202020746869732E696E707574437373203D207B0D0A2020202020202F2F22626F72646572436F6C6F7222203A20746869732E656C656D656E742E6373732827626F72646572436F6C6F722729203D3D202772676228302C20302C20302927203F20';
wwv_flow_api.g_varchar2_table(92) := '27726762283232332C203232332C203232332927203A20746869732E656C656D656E742E6373732827626F72646572436F6C6F7227292C0D0A20202020202022666F6E7453697A6522202020203A20746869732E656C656D656E742E6373732827666F6E';
wwv_flow_api.g_varchar2_table(93) := '7453697A6527292C0D0A202020202020226C696E654865696768742220203A20746869732E656C656D656E742E63737328276C696E6548656967687427290D0A202020207D3B0D0A0D0A202020206966202820746869732E6F7074696F6E732E6974656D';
wwv_flow_api.g_varchar2_table(94) := '2E6C6F765F636173636164655F706172656E745F6974656D7320213D20756E646566696E65642029207B0D0A2020202020202428746869732E6F7074696F6E732E6974656D2E6C6F765F636173636164655F706172656E745F6974656D73292E6F6E2827';
wwv_flow_api.g_varchar2_table(95) := '6368616E6765272C20746869732E5F6465626F756E636528242E70726F787928746869732E5F636173636164696E674C6F764974656D2C2074686973292C2032353029290D0A202020207D202020200D0A202020200D0A20202020746869732E77696467';
wwv_flow_api.g_varchar2_table(96) := '6574556E69717565496420203D202428273C6469763E3C2F6469763E27292E756E69717565496428292E617474722827696427293B0D0A0D0A20202020746869732E6D61736B203D20746869732E5F6D61736B4372656174654E657728293B0D0A202020';
wwv_flow_api.g_varchar2_table(97) := '20746869732E656C656D656E742E61667465722820746869732E6D61736B2E636F6E7461696E657220293B0D0A202020202F2F70726F6D707420776964746820697320646570656E64656E74206F6E20746869732E6D61736B2E636F6E7461696E65720D';
wwv_flow_api.g_varchar2_table(98) := '0A20202020746869732E70726F6D7074203D20746869732E5F70726F6D70744372656174654E657728293B0D0A0D0A20202020746869732E706F707570203D20746869732E5F706F7075704372656174654F626A65637428293B0D0A0D0A202020207468';
wwv_flow_api.g_varchar2_table(99) := '69732E7061737465203D207B0D0A20202020202022706F707570223A20746869732E5F7061737465506F7075704372656174654E657728292C0D0A20202020202022636C6173736573223A207B0D0A202020202020202022626F6479223A2022626F6479';
wwv_flow_api.g_varchar2_table(100) := '220D0A2020202020207D2C0D0A202020202020227374617465223A207B0D0A202020202020202022706173746564223A205B5D2C0D0A202020202020202022706172736564223A205B5D2C0D0A2020202020202020226F75744F664C696D6974223A205B';
wwv_flow_api.g_varchar2_table(101) := '5D0D0A2020202020207D0D0A20200D0A202020207D3B0D0A0D0A202020206966202820617065782E64656275672E6765744C6576656C2829203E3D20746869732E435F4C4F475F4C4556454C362029207B0D0A202020202020746869732E5F6372656174';
wwv_flow_api.g_varchar2_table(102) := '654D61736B4465627567427574746F6E28293B20200D0A202020207D0D0A0D0A20202020746869732E656C656D656E742E6F6E28276170657872656672657368272C20242E70726F787928746869732E5F6D616E75616C5265667265736843616C6C6261';
wwv_flow_api.g_varchar2_table(103) := '636B2C207468697329293B0D0A0D0A20202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F44454255472C20746869732E6C6F675072656669782C20275F637265617465272C2027506C7567696E20696E7374616E636520';
wwv_flow_api.g_varchar2_table(104) := '637265617465642E20556E69717565206964203D202223272B746869732E776964676574556E6971756549642B272227293B0D0A0D0A20202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C2074686973';
wwv_flow_api.g_varchar2_table(105) := '2E6C6F675072656669782C2027706C7567696E53657474696E6773272C20746869732E706C7567696E53657474696E6773293B202020200D0A202020200D0A0D0A202020206966202820746869732E656C656D656E742E636C6F7365737428272E742D44';
wwv_flow_api.g_varchar2_table(106) := '69616C6F67526567696F6E27292E6C656E677468203E20302029207B0D0A202020202020746869732E656C656D656E742E636C6F7365737428272E742D4469616C6F67526567696F6E2D626F647927292E617070656E642820746869732E70726F6D7074';
wwv_flow_api.g_varchar2_table(107) := '2E636F6E7461696E657220293B0D0A202020207D0D0A20202020656C7365207B0D0A202020202020242827626F647927292E617070656E642820746869732E70726F6D70742E636F6E7461696E657220293B20200D0A202020207D0D0A202020200D0A20';
wwv_flow_api.g_varchar2_table(108) := '202020746869732E656C656D656E742E6869646528293B0D0A0D0A20202020746869732E6967203D207B0D0A202020202020226973456D6265646564496E47726964223A20746869732E656C656D656E742E636C6F7365737428272E612D47562D636F6C';
wwv_flow_api.g_varchar2_table(109) := '756D6E4974656D27292E6C656E677468203E20302C0D0A2020202020202267726964223A20756E646566696E65642C0D0A20202020202022726567696F6E223A20756E646566696E65640D0A202020207D3B0D0A0D0A20202020746869732E5F696E7465';
wwv_flow_api.g_varchar2_table(110) := '6772617465576974684170657841706928293B0D0A0D0A202020206966202820746869732E5F656C656D656E7447657456616C75654C656E6768742829203E20302026262021746869732E706C7567696E53746F707065642029207B0D0A202020202020';
wwv_flow_api.g_varchar2_table(111) := '746869732E5F6765744F6E4C6F61644C6F762820746869732E5F656C656D656E7447657456616C7565282920293B0D0A202020207D0D0A20202020656C7365207B0D0A202020202020746869732E5F70726F6D7074506C616365486F6C64657253686F77';
wwv_flow_api.g_varchar2_table(112) := '28293B0D0A202020207D0D0A0D0A2020202024282077696E646F7720292E726573697A6528242E70726F7879282066756E6374696F6E28297B0D0A202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C';
wwv_flow_api.g_varchar2_table(113) := '392C20746869732E6C6F675072656669782C202777696E646F7720726573697A65642C207265706F736974696F6E2070726F6D707427293B0D0A0D0A2020202020206966202820746869732E70726F6D70742E697356697369626C652029207B0D0A2020';
wwv_flow_api.g_varchar2_table(114) := '2020202020200D0A2020202020202020746869732E5F70726F6D70745265706F736974696F6E28293B0D0A2020202020207D0D0A202020207D2C207468697329293B0D0A20207D2C0D0A2F2F206A517565727920776964676574206E6174697665206D65';
wwv_flow_api.g_varchar2_table(115) := '74686F64730D0A2F2F0D0A20205F64657374726F793A2066756E6374696F6E28297B0D0A0D0A20207D2C0D0A2F2F0D0A20205F7365744F7074696F6E3A2066756E6374696F6E2820704B65792C207056616C75652029207B0D0A20202020696620282070';
wwv_flow_api.g_varchar2_table(116) := '4B6579203D3D3D202276616C7565222029207B0D0A2020202020207056616C7565203D20746869732E5F636F6E73747261696E28207056616C756520293B0D0A202020207D0D0A0D0A20202020746869732E5F73757065722820704B65792C207056616C';
wwv_flow_api.g_varchar2_table(117) := '756520293B0D0A20207D2C20200D0A20206F7074696F6E733A2066756E6374696F6E2820704F7074696F6E7320297B0D0A20202020746869732E5F73757065722820704F7074696F6E7320293B0D0A20207D2C0D0A2F2F0D0A20205F7365744F7074696F';
wwv_flow_api.g_varchar2_table(118) := '6E733A2066756E6374696F6E2820704F7074696F6E732029207B0D0A20202020746869732E5F73757065722820704F7074696F6E7320293B0D0A20207D2C0D0A20202F2A0D0A202020202A0D0A202020202A2066756E6374696F6E206E616D653A205F67';
wwv_flow_api.g_varchar2_table(119) := '6574506C7567696E53657474696E67735F706F7075705469746C65546578740D0A202020202A206465736372697074696F6E20203A0D0A202020202A20706172616D73202020202020203A206E6F6E650D0A202020202A0D0A20202A2F0D0A0D0A20205F';
wwv_flow_api.g_varchar2_table(120) := '676574506C7567696E53657474696E67735F706F7075705469746C65546578743A2066756E6374696F6E2829207B0D0A20202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C362C20746869732E6C6F675072';
wwv_flow_api.g_varchar2_table(121) := '656669782C20275F676574506C7567696E53657474696E67735F706F7075705469746C6554657874272C207B0D0A20202020202022617267756D656E7473223A20617267756D656E74730D0A202020207D293B0D0A0D0A20202020766172207265747572';
wwv_flow_api.g_varchar2_table(122) := '6E56616C7565203D2027756E646566696E6564273B0D0A0D0A2020202069662028200D0A202020202020746869732E6F7074696F6E732E617474726962757465732E706F70757053657474696E677320213D206E756C6C200D0A20202020202026262074';
wwv_flow_api.g_varchar2_table(123) := '6869732E6F7074696F6E732E617474726962757465732E706F70757053657474696E67732E696E6465784F66282743542729203E202D310D0A2020202029207B0D0A20202020202072657475726E56616C7565203D20746869732E6F7074696F6E732E61';
wwv_flow_api.g_varchar2_table(124) := '7474726962757465732E706F7075705469746C65546578740D0A202020207D0D0A20202020656C7365207B0D0A20202020202072657475726E56616C7565203D20746869732E6F7074696F6E732E6974656D2E706C61696E5F6C6162656C3B0D0A202020';
wwv_flow_api.g_varchar2_table(125) := '207D0D0A0D0A20202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C362C20746869732E6C6F675072656669782C20275F676574506C7567696E53657474696E67735F706F7075705469746C6554657874272C';
wwv_flow_api.g_varchar2_table(126) := '202272657475726E73222C207B0D0A2020202020202272657475726E56616C7565223A2072657475726E56616C75650D0A202020207D293B0D0A0D0A2020202072657475726E2072657475726E56616C75653B0D0A20207D2C20200D0A20202F2A0D0A20';
wwv_flow_api.g_varchar2_table(127) := '2020202A0D0A202020202A2066756E6374696F6E206E616D653A205F676574506C7567696E53657474696E67735F69734261736963436F6E66696775726174696F6E0D0A202020202A206465736372697074696F6E20203A0D0A202020202A2070617261';
wwv_flow_api.g_varchar2_table(128) := '6D73202020202020203A206E6F6E650D0A202020202A0D0A20202A2F0D0A20205F676574506C7567696E53657474696E67735F69734261736963436F6E66696775726174696F6E3A2066756E6374696F6E2829207B0D0A20202020766172207265747572';
wwv_flow_api.g_varchar2_table(129) := '6E56616C7565203D2066616C73653B0D0A0D0A20202020696620280D0A2020202020202F2F706F7075702073657474696E677320697320656D7074790D0A202020202020746869732E6F7074696F6E732E617474726962757465732E706F707570536574';
wwv_flow_api.g_varchar2_table(130) := '74696E6773203D3D206E756C6C0D0A2020202020207C7C20280D0A20202020202020202F2F706F7075702073657474696E6773206973206E6F7420656D7074792062757420636865636B626F78206973206E6F7420636865636B65640D0A202020202020';
wwv_flow_api.g_varchar2_table(131) := '2020746869732E6F7074696F6E732E617474726962757465732E706F70757053657474696E677320213D206E756C6C0D0A2020202020202020262620746869732E6F7074696F6E732E617474726962757465732E706F70757053657474696E67732E696E';
wwv_flow_api.g_varchar2_table(132) := '6465784F6628275243432729203D3D202D310D0A202020202020290D0A2020202029207B0D0A20202020202072657475726E56616C7565203D20747275653B0D0A202020207D0D0A20202020617065782E64656275672E6D65737361676528746869732E';
wwv_flow_api.g_varchar2_table(133) := '435F4C4F475F4C4556454C362C20746869732E6C6F675072656669782C20275F676574506C7567696E53657474696E67735F69734261736963436F6E66696775726174696F6E272C207B0D0A20202020202022617267756D656E7473223A20617267756D';
wwv_flow_api.g_varchar2_table(134) := '656E74732C0D0A2020202020202272657475726E223A2072657475726E56616C75650D0A202020207D293B0D0A0D0A2020202072657475726E2072657475726E56616C75653B0D0A20207D2C0D0A20202F2A0D0A202020202A0D0A202020202A2066756E';
wwv_flow_api.g_varchar2_table(135) := '6374696F6E206E616D653A205F636173636164696E674C6F764974656D0D0A202020202A206465736372697074696F6E20203A0D0A202020202A20706172616D73202020202020203A206E6F6E650D0A202020202A0D0A20202A2F20200D0A20205F6361';
wwv_flow_api.g_varchar2_table(136) := '73636164696E674C6F764974656D3A2066756E6374696F6E2820704576656E7420297B0D0A20202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F44454255472C20746869732E6C6F675072656669782C20275F63617363';
wwv_flow_api.g_varchar2_table(137) := '6164696E674C6F764974656D272C207B0D0A20202020202022617267756D656E7473223A20617267756D656E74732C0D0A2020202020202274726967676572696E67456C656D656E74223A20704576656E742E7461726765742C0D0A2020202020202274';
wwv_flow_api.g_varchar2_table(138) := '726967676572696E67456C656D656E7432223A20704576656E742E7461726765742E69642C0D0A2020202020202276616C7565223A20704576656E742E7461726765742E76616C75650D0A202020207D293B0D0A0D0A202020207661720D0A2020202020';
wwv_flow_api.g_varchar2_table(139) := '20616A617844617461203D207B0D0A202020202020202022783031223A2022434153434144494E474C4F56222C0D0A202020202020202022706167654974656D73223A20746869732E5F616A6178476574506167654974656D7328290D0A202020202020';
wwv_flow_api.g_varchar2_table(140) := '7D2C0D0A202020202020616A61784F7074696F6E73203D207B0D0A2020202020202020227461726765742220202020203A20746869732E656C656D656E742E6765742830292C0D0A2020202020202020226265666F726553656E64223A20242E70726F78';
wwv_flow_api.g_varchar2_table(141) := '792866756E6374696F6E28297B0D0A20202020202020202020746869732E5F6D61736B416A61785374617465427574746F6E52756E6E696E6728293B0D0A20202020202020207D2C2074686973292C0D0A202020202020202022636F6D706C657465223A';
wwv_flow_api.g_varchar2_table(142) := '20242E70726F78792866756E6374696F6E28297B0D0A20202020202020202020746869732E5F6D61736B416A61785374617465427574746F6E4869646528293B0D0A20202020202020202020746869732E5F6765744F6E4C6F61644C6F76282074686973';
wwv_flow_api.g_varchar2_table(143) := '2E5F656C656D656E7447657456616C7565282920293B0D0A20202020202020207D2C74686973290D0A2020202020207D3B0D0A0D0A20202020617065782E7365727665722E706C7567696E202820746869732E6F7074696F6E732E706C7567696E2E616A';
wwv_flow_api.g_varchar2_table(144) := '61784964656E7469666965722C20616A6178446174612C20616A61784F7074696F6E7320293B0D0A20207D2C0D0A20202F2A0D0A202020202A0D0A202020202A2066756E6374696F6E206E616D653A205F747269676765724576656E740D0A202020202A';
wwv_flow_api.g_varchar2_table(145) := '206465736372697074696F6E20203A20547269676765727320676976656E206576656E74206F6E2041504558206974656D0D0A202020202A20706172616D733A0D0A202020202A2020202D20704576656E744E616D65202D206576656E74206E616D6520';
wwv_flow_api.g_varchar2_table(146) := '746F206265207472696767657265640D0A202020202A2020202D2070446174612020202020202D206461746120746F20626520706173736564207769746820746865206576656E742028746869732E6461746120696E2064796E616D696320616374696F';
wwv_flow_api.g_varchar2_table(147) := '6E290D0A202020202A0D0A20202A2F0D0A20205F747269676765724576656E743A2066756E6374696F6E2820704576656E744E616D652C2070446174612029207B0D0A20202020617065782E64656275672E6D65737361676528746869732E435F4C4F47';
wwv_flow_api.g_varchar2_table(148) := '5F4C4556454C392C20746869732E6C6F675072656669782C20275F747269676765724576656E74272C207B0D0A20202020202022617267756D656E74732220203A20617267756D656E74732C0D0A20202020202022704576656E744E616D6522203A2070';
wwv_flow_api.g_varchar2_table(149) := '4576656E744E616D652C0D0A202020202020227044617461222020202020203A2070446174610D0A202020207D293B0D0A0D0A20202020617065782E6576656E742E747269676765722820746869732E656C656D656E742E6765742830292C2070457665';
wwv_flow_api.g_varchar2_table(150) := '6E744E616D652C20704461746120293B0D0A20207D2C0D0A20202F2A0D0A202020202A0D0A202020202A2066756E6374696F6E206E616D653A205F6D616E75616C5265667265736843616C6C6261636B0D0A202020202A206465736372697074696F6E20';
wwv_flow_api.g_varchar2_table(151) := '203A0D0A202020202A20706172616D73202020202020203A206E6F6E650D0A202020202A0D0A20202A2F0D0A20205F6D616E75616C5265667265736843616C6C6261636B3A2066756E6374696F6E28297B0D0A20202020617065782E64656275672E6D65';
wwv_flow_api.g_varchar2_table(152) := '737361676528746869732E435F4C4F475F44454255472C20746869732E6C6F675072656669782C20275F6D616E75616C5265667265736843616C6C6261636B272C207B0D0A20202020202022617267756D656E74732220203A20617267756D656E74730D';
wwv_flow_api.g_varchar2_table(153) := '0A202020207D293B0D0A0D0A20202020746869732E5F6765744F6E4C6F61644C6F7628293B0D0A20207D2C0D0A20202F2A0D0A202020202A0D0A202020202A2066756E6374696F6E206E616D653A205F676574436F6C756D6E4964784279436F6C756D6E';
wwv_flow_api.g_varchar2_table(154) := '4E616D650D0A202020202A206465736372697074696F6E20203A200D0A202020202A20706172616D733A0D0A202020202A2020202D2070436F6C756D6E4E616D65202D207462640D0A202020202A0D0A202020202A200D0A20202A2F0D0A20205F676574';
wwv_flow_api.g_varchar2_table(155) := '436F6C756D6E4964784279436F6C756D6E4E616D653A2066756E6374696F6E282070436F6C756D6E4E616D6520297B0D0A20202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F6750';
wwv_flow_api.g_varchar2_table(156) := '72656669782C20275F676574436F6C756D6E4964784279436F6C756D6E4E616D65272C207B0D0A20202020202022617267756D656E74732220203A20617267756D656E74732C0D0A2020202020202270436F6C756D6E4E616D65223A2070436F6C756D6E';
wwv_flow_api.g_varchar2_table(157) := '4E616D652C200D0A20202020202022636F6C756D6E7322202020203A20746869732E6F7074696F6E732E636F6C756D6E730D0A202020207D293B0D0A0D0A20202020766172200D0A20202020202072657475726E56616C7565203D20756E646566696E65';
wwv_flow_api.g_varchar2_table(158) := '643B0D0A0D0A20202020666F722028766172206920696E20746869732E6F7074696F6E732E636F6C756D6E7329207B0D0A2020202020206966202820746869732E6F7074696F6E732E636F6C756D6E735B695D2E434F4C554D4E5F4E414D45203D3D2070';
wwv_flow_api.g_varchar2_table(159) := '436F6C756D6E4E616D6529207B0D0A2020202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F676574436F6C756D6E4964784279436F6C756D6E4E';
wwv_flow_api.g_varchar2_table(160) := '616D6520636F6C756D6E2022272B70436F6C756D6E4E616D652B272220666F756E642C2072657475726E20697473204944582E27293B0D0A202020202020202072657475726E56616C7565203D20746869732E6F7074696F6E732E636F6C756D6E735B69';
wwv_flow_api.g_varchar2_table(161) := '5D2E4944583B0D0A2020202020202020627265616B3B0D0A2020202020207D0D0A202020207D0D0A0D0A20202020696620282072657475726E56616C7565203D3D20756E646566696E65642029207B0D0A202020202020617065782E64656275672E6D65';
wwv_flow_api.g_varchar2_table(162) := '737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F676574436F6C756D6E4964784279436F6C756D6E4E616D6520636F6C756D6E2022272B70436F6C756D6E4E616D652B2722206E6F7420666F75';
wwv_flow_api.g_varchar2_table(163) := '6E642C2072657475726E2031737420636F6C756D6E2E272C20746869732E6F7074696F6E732E636F6C756D6E735B305D2E494458293B0D0A20202020202072657475726E56616C7565203D20746869732E6F7074696F6E732E636F6C756D6E735B305D2E';
wwv_flow_api.g_varchar2_table(164) := '4944583B0D0A202020207D0D0A0D0A20202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F676574436F6C756D6E4964784279436F6C756D6E4E616D6520';
wwv_flow_api.g_varchar2_table(165) := '72657475726E732022272B72657475726E56616C75652B272227293B0D0A0D0A2020202072657475726E2072657475726E56616C75653B0D0A20207D2C0D0A20202F2A0D0A202020202A0D0A202020202A2066756E6374696F6E206E616D653A20707269';
wwv_flow_api.g_varchar2_table(166) := '6E7446756E6374696F6E546F436F6E736F6C650D0A202020202A206465736372697074696F6E20203A200D0A202020202A20706172616D733A0D0A202020202A2020202D0D0A202020202A2020202D0D0A202020202A0D0A20202A2F0D0A20207072696E';
wwv_flow_api.g_varchar2_table(167) := '7446756E6374696F6E546F436F6E736F6C653A2066756E6374696F6E28207046756E6374696F6E426F647920297B0D0A20202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072';
wwv_flow_api.g_varchar2_table(168) := '656669782C20277072696E7446756E6374696F6E546F436F6E736F6C65272C207B0D0A20202020202022617267756D656E747322202020203A20617267756D656E74732C0D0A202020202020227046756E6374696F6E426F6479223A207046756E637469';
wwv_flow_api.g_varchar2_table(169) := '6F6E426F64790D0A202020207D293B0D0A0D0A20202020766172206172726179203D207046756E6374696F6E426F64792E73706C697428225C6E22293B0D0A0D0A20202020666F722028207661722069203D20303B2069203C2061727261792E6C656E67';
wwv_flow_api.g_varchar2_table(170) := '74683B20692B2B2029207B0D0A202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20277072696E7446756E6374696F6E546F436F6E736F6C652023272C';
wwv_flow_api.g_varchar2_table(171) := '2061727261795B695D293B0D0A2020202020202F2F617065782E64656275672E696E666F28746869732E6C6F675072656669782C202723272C2061727261795B695D293B20200D0A202020207D0D0A20207D2C0D0A20202F2A0D0A202020202A0D0A2020';
wwv_flow_api.g_varchar2_table(172) := '20202A2066756E6374696F6E206E616D653A205F70726F6D707450726570617465437573746F6D54656D706C61746546756E6374696F6E0D0A202020202A206465736372697074696F6E20203A200D0A202020202A20706172616D733A0D0A202020202A';
wwv_flow_api.g_varchar2_table(173) := '2020202D0D0A202020202A2020202D0D0A202020202A0D0A20202A2F0D0A20205F70726F6D707450726570617465437573746F6D54656D706C61746546756E6374696F6E3A2066756E6374696F6E28297B0D0A20202020617065782E64656275672E6D65';
wwv_flow_api.g_varchar2_table(174) := '737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F70726F6D707450726570617465437573746F6D54656D706C61746546756E6374696F6E272C207B0D0A20202020202022617267756D656E7473';
wwv_flow_api.g_varchar2_table(175) := '223A20617267756D656E74730D0A202020207D293B0D0A0D0A202020207661722066756E633B0D0A0D0A20202020747279207B0D0A20202020202066756E63203D206E65772046756E6374696F6E280D0A20202020202020202270526F77222C0D0A2020';
wwv_flow_api.g_varchar2_table(176) := '20202020202022746869732E64617461203D2070526F773B5C6E222B0D0A2020202020202020746869732E706C7567696E53657474696E67732E70726F6D70742E74656D706C6174650D0A202020202020293B0D0A0D0A202020202020746869732E7072';
wwv_flow_api.g_varchar2_table(177) := '696E7446756E6374696F6E546F436F6E736F6C65282066756E632E746F537472696E67282920293B0D0A0D0A202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F6750726566';
wwv_flow_api.g_varchar2_table(178) := '69782C20275F70726F6D707450726570617465437573746F6D54656D706C61746546756E6374696F6E272C202266756E6374696F6E206372656174656422293B0D0A202020200D0A202020207D206361746368286572726F7229207B0D0A202020202020';
wwv_flow_api.g_varchar2_table(179) := '617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F70726F6D707450726570617465437573746F6D54656D706C61746546756E6374696F6E272C202266756E6374';
wwv_flow_api.g_varchar2_table(180) := '696F6E2063616E277420626520637265617465643A20222B6572726F722E6D657373616765293B0D0A202020202020746869732E7072696E7446756E6374696F6E546F436F6E736F6C652820746869732E706C7567696E53657474696E67732E70726F6D';
wwv_flow_api.g_varchar2_table(181) := '70742E74656D706C61746520293B0D0A0D0A202020202020746869732E5F6D61736B416A61785374617465427574746F6E5365744572726F72287B0D0A202020202020202022616464496E666F2220203A202746756E6374696F6E2072657475726E696E';
wwv_flow_api.g_varchar2_table(182) := '672070726F6D70742074656D706C61746520686173206572726F72732E272C0D0A2020202020202020226572726F7222202020203A2027496E76616C696420706C7567696E2022272B746869732E6F7074696F6E732E706C7567696E2E6E616D652B2722';
wwv_flow_api.g_varchar2_table(183) := '20636F6E66696775726174696F6E2E272C0D0A20202020202020202274656368496E666F22203A205B0D0A202020202020202020207B0D0A202020202020202020202020226E616D65223A206572726F722E6E616D652C0D0A2020202020202020202020';
wwv_flow_api.g_varchar2_table(184) := '202276616C7565223A206572726F722E6D6573736167650D0A202020202020202020207D2C0D0A202020202020202020207B0D0A202020202020202020202020226E616D65223A202746756E6374696F6E272C0D0A202020202020202020202020227661';
wwv_flow_api.g_varchar2_table(185) := '6C7565223A20746869732E706C7567696E53657474696E67732E70726F6D70742E74656D706C6174650D0A202020202020202020207D0D0A0D0A202020202020202020200D0A20202020202020205D0D0A2020202020207D2C2074727565293B0D0A0D0A';
wwv_flow_api.g_varchar2_table(186) := '202020202020746869732E5F6D61736B416A61785374617465427574746F6E4572726F722820293B0D0A202020207D0D0A202020200D0A202020200D0A2020202072657475726E2066756E633B0D0A0D0A20207D2C0D0A20202F2A0D0A202020202A0D0A';
wwv_flow_api.g_varchar2_table(187) := '202020202A2066756E6374696F6E206E616D653A205F6170706C795472616E736C6174696F6E730D0A202020202A206465736372697074696F6E20203A200D0A202020202A20706172616D733A0D0A202020202A2020202D0D0A202020202A2020202D0D';
wwv_flow_api.g_varchar2_table(188) := '0A202020202A0D0A20202A2F0D0A20205F6170706C795472616E736C6174696F6E733A2066756E6374696F6E28297B0D0A20202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F6750';
wwv_flow_api.g_varchar2_table(189) := '72656669782C20275F6170706C795472616E736C6174696F6E73272C207B0D0A20202020202022617267756D656E7473223A20617267756D656E74730D0A202020207D293B0D0A0D0A20202020766172207472616E736C6174696F6E73203D2074686973';
wwv_flow_api.g_varchar2_table(190) := '2E6F7074696F6E732E617474726962757465732E7472616E736C6174696F6E733B0D0A0D0A2020202069662028207472616E736C6174696F6E732E6C656E677468203E20302029207B0D0A202020202020666F72202820766172206920696E207472616E';
wwv_flow_api.g_varchar2_table(191) := '736C6174696F6E732029207B0D0A2020202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F6170706C795472616E736C6174696F6E73272C207472';
wwv_flow_api.g_varchar2_table(192) := '616E736C6174696F6E735B695D2E5452414E534C415441424C455F4D4553534147452C207472616E736C6174696F6E735B695D2E4D4553534147455F54455854293B0D0A2020202020202020746869735B7472616E736C6174696F6E735B695D2E545241';
wwv_flow_api.g_varchar2_table(193) := '4E534C415441424C455F4D4553534147452E7265706C61636528275041454C495F272C2027435F27295D203D207472616E736C6174696F6E735B695D2E4D4553534147455F544558543B0D0A2020202020207D0D0A202020207D0D0A20207D2C0D0A2020';
wwv_flow_api.g_varchar2_table(194) := '2F2A0D0A202020202A0D0A202020202A2066756E6374696F6E206E616D653A205F696E7465677261746557697468417065784170690D0A202020202A206465736372697074696F6E20203A2068747470733A2F2F646F63732E6F7261636C652E636F6D2F';
wwv_flow_api.g_varchar2_table(195) := '656E2F64617461626173652F6F7261636C652F6170706C69636174696F6E2D657870726573732F31392E312F6165786A732F6974656D2E68746D6C0D0A202020202A20706172616D733A0D0A202020202A2020202D0D0A202020202A2020202D0D0A2020';
wwv_flow_api.g_varchar2_table(196) := '20202A0D0A20202A2F0D0A20205F696E7465677261746557697468417065784170693A2066756E6374696F6E2829207B0D0A20202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F67';
wwv_flow_api.g_varchar2_table(197) := '5072656669782C20275F696E746567726174655769746841706578417069272C207B0D0A20202020202022617267756D656E7473223A20617267756D656E74732C0D0A20202020202022646F6D456C656D656E74223A20746869732E656C656D656E742E';
wwv_flow_api.g_varchar2_table(198) := '6765742830290D0A202020207D293B0D0A0D0A20202020766172200D0A202020202020704F7074696F6E73203D207B0D0A20202020202020202F2A0D0A202020202020202020202A0D0A202020202020202020202A20676574506F70757053656C656374';
wwv_flow_api.g_varchar2_table(199) := '6F720D0A202020202020202020202A0D0A20202020202020202A2F0D0A202020202020202022676574506F70757053656C6563746F72223A20242E70726F7879282066756E6374696F6E28297B0D0A20202020202020202020766172200D0A2020202020';
wwv_flow_api.g_varchar2_table(200) := '2020202020202073656C6563746F7273203D205B0D0A2020202020202020202020202020275B646174612D70726F6D70743D22272B746869732E776964676574556E6971756549642B27225D272C0D0A2020202020202020202020202020275B64617461';
wwv_flow_api.g_varchar2_table(201) := '2D706F7075703D22272B746869732E776964676574556E6971756549642B27225D270D0A20202020202020202020202020202F2F275B646174612D70617374653D22272B746869732E776964676574556E6971756549642B27225D272C0D0A2020202020';
wwv_flow_api.g_varchar2_table(202) := '2020202020202020202F2F275B646174612D6D61736B3D22272B746869732E776964676574556E6971756549642B27225D272020202A2F0D0A2020202020202020202020205D3B0D0A0D0A20202020202020202020617065782E64656275672E6D657373';
wwv_flow_api.g_varchar2_table(203) := '61676528746869732E435F4C4F475F44454255472C20746869732E6C6F675072656669782C20275F696E746567726174655769746841706578417069272C2027676574506F70757053656C6563746F72272C207B0D0A2020202020202020202020202261';
wwv_flow_api.g_varchar2_table(204) := '7267756D656E747322203A20617267756D656E74732C0D0A2020202020202020202020202273656C6563746F72223A2073656C6563746F72732E6A6F696E28272C27292C0D0A2020202020202020202020202273656C6563746F72206576616C223A2024';
wwv_flow_api.g_varchar2_table(205) := '2873656C6563746F72732E6A6F696E28272C2729290D0A202020202020202020207D293B0D0A0D0A2020202020202020202072657475726E2073656C6563746F72732E6A6F696E28272C27293B0D0A20202020202020207D2C207468697320292C0D0A20';
wwv_flow_api.g_varchar2_table(206) := '202020202020202F2A0D0A202020202020202020202A0D0A202020202020202020202A2073657456616C75650D0A202020202020202020202A0D0A20202020202020202A2F0D0A20202020202020202273657456616C7565223A20242E70726F78792866';
wwv_flow_api.g_varchar2_table(207) := '756E6374696F6E28207056616C75652C2070446973706C617956616C75652C207053757070726573734368616E67654576656E742029207B0D0A20202020202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4445';
wwv_flow_api.g_varchar2_table(208) := '4255472C20746869732E6C6F675072656669782C20275F696E746567726174655769746841706578417069272C202773657456616C7565272C207B0D0A20202020202020202020202022617267756D656E7473223A20617267756D656E74732C20202020';
wwv_flow_api.g_varchar2_table(209) := '20202020202020200D0A202020202020202020202020227056616C7565222020202020202020202020202020203A207056616C75652C0D0A2020202020202020202020202270446973706C617956616C75652220202020202020203A2070446973706C61';
wwv_flow_api.g_varchar2_table(210) := '7956616C75652C0D0A202020202020202020202020227053757070726573734368616E67654576656E7422203A207053757070726573734368616E67654576656E740D0A202020202020202020207D293B0D0A0D0A20202020202020202020746869732E';
wwv_flow_api.g_varchar2_table(211) := '5F70726F6D7074456D7074795461677328293B0D0A20202020202020202020746869732E5F70726F6D7074456D7074794D61736B537461746528293B0D0A0D0A2020202020202020202069662028207056616C7565203D3D20756E646566696E6564207C';
wwv_flow_api.g_varchar2_table(212) := '7C207056616C7565203D3D206E756C6C207C7C207056616C756520213D20756E646566696E6564202626207056616C756520213D206E756C6C202626207056616C75652E6C656E677468203D3D20302029207B0D0A202020202020202020202020705661';
wwv_flow_api.g_varchar2_table(213) := '6C7565203D206E756C6C3B0D0A202020202020202020207D0D0A0D0A20202020202020202020746869732E5F656C656D656E7453657456616C756528207056616C756520293B0D0A0D0A2020202020202020202069662028207053757070726573734368';
wwv_flow_api.g_varchar2_table(214) := '616E67654576656E74203D3D2074727565207C7C207053757070726573734368616E67654576656E74203D3D20756E646566696E65642029207B0D0A202020202020202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F';
wwv_flow_api.g_varchar2_table(215) := '475F5741524E494E472C20746869732E6C6F675072656669782C20275F696E746567726174655769746841706578417069272C202773657456616C7565272C20274368616E6765206576656E74206973206E6F7420747269676765726564202853757070';
wwv_flow_api.g_varchar2_table(216) := '72657373204368616E6765204576656E742069732073657420746F202259657322292E27293B0D0A202020202020202020207D0D0A20202020202020202020656C7365207B0D0A202020202020202020202020617065782E64656275672E6D6573736167';
wwv_flow_api.g_varchar2_table(217) := '6528746869732E435F4C4F475F5741524E494E472C20746869732E6C6F675072656669782C20275F696E746567726174655769746841706578417069272C202773657456616C7565272C20274368616E6765206576656E74206973207472696767657265';
wwv_flow_api.g_varchar2_table(218) := '6420285375707072657373204368616E6765204576656E742069732073657420746F20224E6F22292E27293B0D0A0D0A202020202020202020202020746869732E5F747269676765724576656E7428276368616E6765272C20746869732E5F70726F6D70';
wwv_flow_api.g_varchar2_table(219) := '744765744576656E74446174612829293B0D0A2020202020202020202020202F2F617065782E6576656E742E747269676765722820746869732E656C656D656E742E6765742830292C20276368616E67652720293B0D0A202020202020202020207D0D0A';
wwv_flow_api.g_varchar2_table(220) := '0D0A2020202020202020202069662028207056616C7565203D3D206E756C6C2029207B0D0A2020202020202020202020202F2F2072657365742076616C75650D0A2020202020202020202020202F2F20646F206E6F7468696E670D0A2020202020202020';
wwv_flow_api.g_varchar2_table(221) := '20207D0D0A20202020202020202020656C736520696620282070446973706C617956616C756520213D20756E646566696E65642029207B0D0A2020202020202020202020202F2F2076616C756520697320646566696E65640D0A20202020202020202020';
wwv_flow_api.g_varchar2_table(222) := '20202F2F2070446973706C617920697320646566696E65640D0A2020202020202020202020202F2F2072656E646572207461670D0A2020202020202020202020202F2F20666F72206578616D706C6520717569636B207069636B730D0A0D0A2020202020';
wwv_flow_api.g_varchar2_table(223) := '20202020202020746869732E5F6D61736B537461746553656C6563746564416464280D0A20202020202020202020202020207B0D0A2020202020202020202020202020202022646973706C6179223A2070446973706C617956616C75652C0D0A20202020';
wwv_flow_api.g_varchar2_table(224) := '2020202020202020202020202276616C75652220203A207056616C75650D0A20202020202020202020202020207D2C20202020202020202020202020202020202020202020202020202F2F206F626A6563740D0A20202020202020202020202020206661';
wwv_flow_api.g_varchar2_table(225) := '6C73652C202020202020202020202020202020202020202020202F2F2069732065787472612076616C75652C0D0A202020202020202020202020202066616C736520202020202020202020202020202020202020202020202F2F206973206E756C6C2076';
wwv_flow_api.g_varchar2_table(226) := '616C75650D0A202020202020202020202020293B0D0A0D0A202020202020202020202020746869732E5F70726F6D70744170706C7956616C756573282066616C736520293B0D0A202020202020202020202020746869732E5F70726F6D707452656E6465';
wwv_flow_api.g_varchar2_table(227) := '725461677328293B0D0A202020202020202020207D0D0A20202020202020202020656C7365207B0D0A202020202020202020202020746869732E5F6765744F6E4C6F61644C6F7628207056616C756520293B0D0A202020202020202020207D0D0A202020';
wwv_flow_api.g_varchar2_table(228) := '20202020207D2C2074686973292C0D0A20202020202020202F2A0D0A202020202020202020202A0D0A202020202020202020202A206E756C6C56616C75650D0A202020202020202020202A0D0A20202020202020202A2F0D0A2020202020202020226E75';
wwv_flow_api.g_varchar2_table(229) := '6C6C56616C7565223A20746869732E5F6765744974656D4C4F564E756C6C56616C756528292C0D0A20202020202020202F2A0D0A202020202020202020202A0D0A202020202020202020202A207265696E69740D0A202020202020202020202A0D0A2020';
wwv_flow_api.g_varchar2_table(230) := '2020202020202A2F0D0A2020202020202020227265696E6974223A20242E70726F7879282066756E6374696F6E28207056616C75652C2070446973706C617920297B0D0A0D0A20202020202020202020617065782E64656275672E6D6573736167652874';
wwv_flow_api.g_varchar2_table(231) := '6869732E435F4C4F475F44454255472C20746869732E6C6F675072656669782C20275F696E746567726174655769746841706578417069272C20277265696E6974272C207B0D0A20202020202020202020202022617267756D656E7473223A2061726775';
wwv_flow_api.g_varchar2_table(232) := '6D656E74732C0D0A202020202020202020202020227056616C7565223A207056616C75652C0D0A2020202020202020202020202270446973706C6179223A2070446973706C61792C0D0A202020202020202020202020226964223A20746869732E656C65';
wwv_flow_api.g_varchar2_table(233) := '6D656E742E6765742830292E69640D0A202020202020202020207D293B0D0A0D0A20202020202020202020766172200D0A2020202020202020202020202F2F646973706C6179417272203D2070446973706C6179203D3D206E756C6C203F207056616C75';
wwv_flow_api.g_varchar2_table(234) := '652E73706C69742820746869732E435F444953504C41595F534550415241544F522029203A2070446973706C61792E73706C69742820746869732E435F444953504C41595F534550415241544F5220292C0D0A202020202020202020202020646973706C';
wwv_flow_api.g_varchar2_table(235) := '6179417272203D205B5D2C0D0A2020202020202020202020206E6F74456D707479203D2066616C73652C0D0A2020202020202020202020206F626A65637454656D703B0D0A0D0A202020202020202020206966202820746869732E69672E6973456D6265';
wwv_flow_api.g_varchar2_table(236) := '646564496E477269642029207B0D0A202020202020202020202020746869732E69672E726567696F6E203D20746869732E656C656D656E742E636C6F7365737428272E612D494727293B0D0A202020202020202020202020746869732E69672E67726964';
wwv_flow_api.g_varchar2_table(237) := '203D20746869732E69672E726567696F6E2E696E746572616374697665477269642827676574566965777327292E677269643B0D0A202020202020202020207D0D0A0D0A202020202020202020202F2F7265736574206175746F636F6D706C6574652073';
wwv_flow_api.g_varchar2_table(238) := '656172636820737472696E670D0A20202020202020202020746869732E70726F6D70742E696E7075742E76616C286E756C6C293B0D0A0D0A202020202020202020202F2F726573657420706F707570207265706F72742073746174650D0A202020202020';
wwv_flow_api.g_varchar2_table(239) := '20202020746869732E706F7075702E73746174652E736561726368537472696E67202020202020202020203D20756E646566696E65643B0D0A20202020202020202020746869732E706F7075702E73746174652E6C617374466574636865645061676520';
wwv_flow_api.g_varchar2_table(240) := '2020202020203D206E756C6C3B0D0A20202020202020202020746869732E706F7075702E73746174652E736F72746564436F6C756D6E496478202020202020203D206E756C6C3B0D0A20202020202020202020746869732E706F7075702E73746174652E';
wwv_flow_api.g_varchar2_table(241) := '736F72746564436F6C756D6E446972656374696F6E203D2027617363273B0D0A20202020202020202020746869732E706F7075702E73746174652E736561726368436F6C756D6E496478202020202020203D20756E646566696E65643B0D0A200D0A2020';
wwv_flow_api.g_varchar2_table(242) := '2020202020202020746869732E5F70726F6D7074456D7074795461677328293B0D0A20202020202020202020746869732E5F70726F6D7074456D7074794D61736B537461746528293B0D0A0D0A202020202020202020206966202820746869732E706C75';
wwv_flow_api.g_varchar2_table(243) := '67696E53657474696E67732E69734D756C7469706C6553656C656374696F6E2029207B0D0A0D0A20202020202020202020202069662028202141727261792E6973417272617928207056616C756520292029207B0D0A2020202020202020202020202020';
wwv_flow_api.g_varchar2_table(244) := '7056616C7565203D207056616C75652E73706C69742820746869732E435F56414C55455F534550415241544F5220293B0D0A2020202020202020202020207D0D0A0D0A202020202020202020202020747279207B0D0A2020202020202020202020202020';
wwv_flow_api.g_varchar2_table(245) := '646973706C6179417272203D2070446973706C61792E73706C69742820746869732E435F444953504C41595F534550415241544F5220293B0D0A2020202020202020202020207D2063617463682820704572726F722029207B0D0A202020202020202020';
wwv_flow_api.g_varchar2_table(246) := '20202020202F2F20202020202020202020202020200D0A2020202020202020202020202020646973706C6179417272203D207056616C75653B0D0A0D0A2020202020202020202020202020617065782E64656275672E6D65737361676528746869732E43';
wwv_flow_api.g_varchar2_table(247) := '5F4C4F475F5741524E494E472C20746869732E6C6F675072656669782C20277265696E6974272C2027436F756C646E5C27742073706C697420646973706C61792076616C75652873292062656361757365206974206973206E756C6C2E272C207B0D0A20';
wwv_flow_api.g_varchar2_table(248) := '20202020202020202020202020202027704572726F7227203A20704572726F720D0A20202020202020202020202020207D293B2020202020202020202020200D0A2020202020202020202020207D2020202020202020202020200D0A0D0A202020202020';
wwv_flow_api.g_varchar2_table(249) := '20202020202069662028207056616C75652E6C656E677468203D3D2031202626207056616C75655B305D2E6C656E677468203D3D20302029207B0D0A20202020202020202020202020202F2F656D7074792076616C75650D0A2020202020202020202020';
wwv_flow_api.g_varchar2_table(250) := '202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F5741524E494E472C20746869732E6C6F675072656669782C20277265696E6974272C202756616C7565206973206E6F742073657427293B0D0A20202020202020202020';
wwv_flow_api.g_varchar2_table(251) := '20202020746869732E5F656C656D656E7453657456616C75652820222220293B0D0A202020202020202020202020202072657475726E20766F69642830293B0D0A2020202020202020202020207D0D0A0D0A202020202020202020202020666F72202876';
wwv_flow_api.g_varchar2_table(252) := '617220693D303B2069203C207056616C75652E6C656E6774683B20692B2B29207B0D0A20202020202020202020202020206F626A65637454656D70203D207B0D0A202020202020202020202020202020202276616C75652220203A207056616C75655B69';
wwv_flow_api.g_varchar2_table(253) := '5D2C0D0A2020202020202020202020202020202022646973706C6179223A20646973706C61794172725B695D0D0A20202020202020202020202020207D3B0D0A0D0A2020202020202020202020202020746869732E5F6D61736B537461746553656C6563';
wwv_flow_api.g_varchar2_table(254) := '74656441646428200D0A202020202020202020202020202020206F626A65637454656D702C202F2F206F626A6563740D0A2020202020202020202020202020202066616C73652C2020202020202F2F2069732065787472612076616C75650D0A20202020';
wwv_flow_api.g_varchar2_table(255) := '20202020202020202020202066616C7365202020202020202F2F206973206E756C6C2076616C75650D0A2020202020202020202020202020293B0D0A2020202020202020202020207D0D0A0D0A2020202020202020202020206E6F74456D707479203D20';
wwv_flow_api.g_varchar2_table(256) := '7056616C75652E6C656E677468203E20303B0D0A202020202020202020207D0D0A20202020202020202020656C7365207B202F2F73696E67756C61722073656C656374696F6E0D0A20202020202020202020202069662028207056616C75652E6C656E67';
wwv_flow_api.g_varchar2_table(257) := '7468203E20302029207B0D0A20202020202020202020202020206F626A65637454656D70203D207B0D0A202020202020202020202020202020202276616C75652220203A207056616C75652C0D0A2020202020202020202020202020202022646973706C';
wwv_flow_api.g_varchar2_table(258) := '6179223A2070446973706C61790D0A20202020202020202020202020207D3B0D0A202020202020202020200D0A2020202020202020202020202020746869732E5F6D61736B537461746553656C656374656441646428200D0A2020202020202020202020';
wwv_flow_api.g_varchar2_table(259) := '20202020206F626A65637454656D702C202F2F206F626A6563740D0A2020202020202020202020202020202066616C73652C2020202020202F2F2069732065787472612076616C75650D0A2020202020202020202020202020202066616C736520202020';
wwv_flow_api.g_varchar2_table(260) := '2020202F2F206973206E756C6C2076616C75650D0A2020202020202020202020202020293B0D0A0D0A20202020202020202020202020206E6F74456D707479203D20747275653B0D0A0D0A2020202020202020202020207D200D0A202020202020202020';
wwv_flow_api.g_varchar2_table(261) := '202020656C7365207B0D0A2020202020202020202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F5741524E494E472C20746869732E6C6F675072656669782C20277265696E6974272C202756616C756520697320';
wwv_flow_api.g_varchar2_table(262) := '6E6F742073657427293B0D0A2020202020202020202020202020746869732E5F656C656D656E7453657456616C75652820222220293B0D0A2020202020202020202020207D20202020202020202020200D0A202020202020202020207D0D0A0D0A202020';
wwv_flow_api.g_varchar2_table(263) := '2020202020202069662028206E6F74456D7074792029207B0D0A202020202020202020202020746869732E5F656C656D656E7453657456616C756528207056616C756520293B0D0A202020202020202020202020746869732E5F70726F6D70744170706C';
wwv_flow_api.g_varchar2_table(264) := '7956616C756573282066616C736520293B0D0A202020202020202020202020746869732E5F70726F6D707452656E6465725461677328293B0D0A202020202020202020207D0D0A20202020202020207D2C207468697320292C0D0A20202020202020202F';
wwv_flow_api.g_varchar2_table(265) := '2A0D0A202020202020202020202A0D0A202020202020202020202A20656E61626C650D0A202020202020202020202A0D0A20202020202020202A2F0D0A202020202020202022656E61626C65223A20242E70726F78792866756E6374696F6E2829207B0D';
wwv_flow_api.g_varchar2_table(266) := '0A20202020202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F44454255472C20746869732E6C6F675072656669782C20275F696E746567726174655769746841706578417069272C2027656E61626C65272C207B';
wwv_flow_api.g_varchar2_table(267) := '0D0A20202020202020202020202022617267756D656E7473223A20617267756D656E74732C0D0A202020202020202020202020226964223A20746869732E656C656D656E742E6765742830292E69640D0A202020202020202020207D293B0D0A0D0A2020';
wwv_flow_api.g_varchar2_table(268) := '2020202020202020746869732E5F656E61626C6528293B0D0A20202020202020207D2C2074686973292C0D0A20202020202020202F2A0D0A202020202020202020202A0D0A202020202020202020202A2064697361626C650D0A20202020202020202020';
wwv_flow_api.g_varchar2_table(269) := '2A0D0A20202020202020202A2F0D0A20202020202020202264697361626C65223A20242E70726F78792866756E6374696F6E2829207B0D0A20202020202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F44454255';
wwv_flow_api.g_varchar2_table(270) := '472C20746869732E6C6F675072656669782C20275F696E746567726174655769746841706578417069272C202764697361626C65272C207B0D0A20202020202020202020202022617267756D656E7473223A20617267756D656E74732C0D0A2020202020';
wwv_flow_api.g_varchar2_table(271) := '20202020202020226964223A20746869732E656C656D656E742E6765742830292E69640D0A202020202020202020207D293B0D0A0D0A20202020202020202020746869732E5F64697361626C6528293B0D0A20202020202020207D2C2074686973292C0D';
wwv_flow_api.g_varchar2_table(272) := '0A20202020202020202F2A0D0A202020202020202020202A0D0A202020202020202020202A2061667465724D6F646966790D0A202020202020202020202A0D0A20202020202020202A2F0D0A20202020202020202261667465724D6F64696679223A2024';
wwv_flow_api.g_varchar2_table(273) := '2E70726F78792866756E6374696F6E28297B0D0A20202020202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F44454255472C20746869732E6C6F675072656669782C20275F696E74656772617465576974684170';
wwv_flow_api.g_varchar2_table(274) := '6578417069272C202761667465724D6F64696679272C207B0D0A20202020202020202020202022617267756D656E7473223A20617267756D656E74732C0D0A202020202020202020202020226964223A20746869732E656C656D656E742E676574283029';
wwv_flow_api.g_varchar2_table(275) := '2E69642C0D0A2020202020202020202020202276616C7565223A20746869732E5F656C656D656E7447657456616C756528290D0A202020202020202020207D293B0D0A202020202020202020202F2F20636F646520746F20616C77617973206669726520';
wwv_flow_api.g_varchar2_table(276) := '616674657220746865206974656D20686173206265656E206D6F646966696564202876616C7565207365742C20656E61626C65642C206574632E290D0A202020202020202020202F2F2064657072656361746564206279204F7261636C650D0A20202020';
wwv_flow_api.g_varchar2_table(277) := '202020207D2C2074686973292C0D0A20202020202020202F2A0D0A202020202020202020202A0D0A202020202020202020202A206C6F6164696E67496E64696361746F720D0A202020202020202020202A0D0A20202020202020202A2F0D0A2020202020';
wwv_flow_api.g_varchar2_table(278) := '202020226C6F6164696E67496E64696361746F72223A20242E70726F78792866756E6374696F6E2820704C6F6164696E67496E64696361746F7220297B0D0A202020202020202020207661722072657475726E456C656D3B0D0A0D0A2020202020202020';
wwv_flow_api.g_varchar2_table(279) := '202072657475726E456C656D203D20704C6F6164696E67496E64696361746F723B0D0A0D0A20202020202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F44454255472C20746869732E6C6F675072656669782C20';
wwv_flow_api.g_varchar2_table(280) := '275F696E746567726174655769746841706578417069272C20276C6F6164696E67496E64696361746F72272C207B0D0A20202020202020202020202022617267756D656E7473223A20617267756D656E74732C0D0A20202020202020202020202022704C';
wwv_flow_api.g_varchar2_table(281) := '6F6164696E67496E64696361746F72223A20704C6F6164696E67496E64696361746F722C0D0A202020202020202020202020226964223A20746869732E656C656D656E742E6765742830292E69642C0D0A2020202020202020202020202272657475726E';
wwv_flow_api.g_varchar2_table(282) := '223A2072657475726E456C656D0D0A202020202020202020207D293B0D0A0D0A202020202020202020202F2F20636F646520746F2061646420746865206C6F6164696E6720696E64696361746F7220696E20746865206265737420706C61636520666F72';
wwv_flow_api.g_varchar2_table(283) := '20746865206974656D0D0A2020202020202020202072657475726E2072657475726E456C656D3B0D0A20202020202020207D2C2074686973292C0D0A20202020202020202F2A0D0A202020202020202020202A0D0A202020202020202020202A20736574';
wwv_flow_api.g_varchar2_table(284) := '466F637573546F0D0A202020202020202020202A0D0A20202020202020202A2F0D0A202020202020202022736574466F637573546F223A20242E70726F78792866756E6374696F6E28297B0D0A202020202020202020207661722072657475726E456C65';
wwv_flow_api.g_varchar2_table(285) := '6D3B0D0A2020202020202020202072657475726E456C656D203D20746869732E6D61736B2E706F707570427574746F6E3B0D0A0D0A20202020202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F44454255472C20';
wwv_flow_api.g_varchar2_table(286) := '746869732E6C6F675072656669782C20275F696E746567726174655769746841706578417069272C2027736574466F637573546F272C207B0D0A20202020202020202020202022617267756D656E7473223A20617267756D656E74732C0D0A2020202020';
wwv_flow_api.g_varchar2_table(287) := '20202020202020226964223A20746869732E656C656D656E742E6765742830292E69642C0D0A2020202020202020202020202272657475726E223A2072657475726E456C656D0D0A202020202020202020207D293B0D0A0D0A2020202020202020202072';
wwv_flow_api.g_varchar2_table(288) := '657475726E2072657475726E456C656D3B0D0A20202020202020207D2C2074686973292C0D0A20202020202020202F2A0D0A202020202020202020202A0D0A202020202020202020202A207365745374796C65546F0D0A202020202020202020202A0D0A';
wwv_flow_api.g_varchar2_table(289) := '20202020202020202A2F0D0A2020202020202020227365745374796C65546F223A20746869732E6D61736B2E636F6E7461696E65722C0D0A20202020202020202F2A0D0A202020202020202020202A0D0A202020202020202020202A20646973706C6179';
wwv_flow_api.g_varchar2_table(290) := '56616C7565466F720D0A202020202020202020202A0D0A20202020202020202A2F0D0A202020202020202022646973706C617956616C7565466F72223A20242E70726F7879282066756E6374696F6E28207056616C756520297B0D0A2020202020202020';
wwv_flow_api.g_varchar2_table(291) := '2020766172200D0A20202020202020202020202061727261794F66446973706C6179203D205B5D2C0D0A20202020202020202020202072657475726E56616C75653B0D0A0D0A20202020202020202020666F72202876617220693D303B2069203C207468';
wwv_flow_api.g_varchar2_table(292) := '69732E6D61736B2E73746174652E73656C65637465642E6C656E6774683B20692B2B29207B0D0A20202020202020202020202069662028207056616C75652E696E6465784F662820746869732E6D61736B2E73746174652E73656C65637465645B695D2E';
wwv_flow_api.g_varchar2_table(293) := '76616C75652029203E202D312029207B0D0A202020202020202020202020202061727261794F66446973706C61792E707573682820746869732E6D61736B2E73746174652E73656C65637465645B695D20293B0D0A2020202020202020202020207D0D0A';
wwv_flow_api.g_varchar2_table(294) := '202020202020202020207D0D0A0D0A2020202020202020202061727261794F66446973706C6179203D2061727261794F66446973706C61792E6D6170282066756E6374696F6E282070456C656D20297B0D0A20202020202020202020202072657475726E';
wwv_flow_api.g_varchar2_table(295) := '2070456C656D2E646973706C61790D0A202020202020202020207D20293B2020200D0A0D0A202020202020202020206966202861727261794F66446973706C61792E6C656E677468203D3D203029207B0D0A20202020202020202020202072657475726E';
wwv_flow_api.g_varchar2_table(296) := '56616C7565203D207056616C75653B0D0A202020202020202020207D0D0A20202020202020202020656C7365207B0D0A20202020202020202020202072657475726E56616C7565203D2061727261794F66446973706C61792E6A6F696E2820746869732E';
wwv_flow_api.g_varchar2_table(297) := '435F444953504C41595F534550415241544F5220293B20200D0A202020202020202020207D0D0A0D0A202020202020202020200D0A0D0A20202020202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4445425547';
wwv_flow_api.g_varchar2_table(298) := '2C20746869732E6C6F675072656669782C20275F696E746567726174655769746841706578417069272C2027646973706C617956616C7565466F72272C207B0D0A20202020202020202020202022617267756D656E7473223A20617267756D656E74732C';
wwv_flow_api.g_varchar2_table(299) := '0D0A202020202020202020202020227056616C7565223A207056616C75652C0D0A202020202020202020202020226964223A20746869732E656C656D656E742E6765742830292E69642C0D0A2020202020202020202020202272657475726E223A207265';
wwv_flow_api.g_varchar2_table(300) := '7475726E56616C75652C0D0A2020202020202020202020202261727261794F66446973706C6179223A2061727261794F66446973706C61792C0D0A2020202020202020202020202261727261794F66446973706C6179206C656E677468223A2061727261';
wwv_flow_api.g_varchar2_table(301) := '794F66446973706C61792E6C656E6774680D0A202020202020202020207D293B0D0A0D0A2020202020202020202072657475726E2072657475726E56616C75653B0D0A0D0A20202020202020207D2C2074686973292C0D0A20202020202020202F2A0D0A';
wwv_flow_api.g_varchar2_table(302) := '202020202020202020202A0D0A202020202020202020202A2067657456616C75650D0A202020202020202020202A0D0A20202020202020202A2F0D0A20202020202020202267657456616C7565223A20242E70726F78792866756E6374696F6E2829207B';
wwv_flow_api.g_varchar2_table(303) := '0D0A202020202020202020207661722072657475726E56616C7565203D20746869732E5F656C656D656E7447657456616C756528293B0D0A0D0A20202020202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4445';
wwv_flow_api.g_varchar2_table(304) := '4255472C20746869732E6C6F675072656669782C20275F696E746567726174655769746841706578417069272C202767657456616C7565272C207B0D0A20202020202020202020202022617267756D656E7473223A20617267756D656E74732C0D0A2020';
wwv_flow_api.g_varchar2_table(305) := '20202020202020202020226964223A20746869732E656C656D656E742E6765742830292E69642C0D0A2020202020202020202020202272657475726E223A2072657475726E56616C75650D0A202020202020202020207D293B0D0A202020202020202020';
wwv_flow_api.g_varchar2_table(306) := '200D0A202020202020202020200D0A2020202020202020202072657475726E2072657475726E56616C75653B0D0A20202020202020207D2C2074686973292C0D0A20202020202020202F2A0D0A202020202020202020202A0D0A20202020202020202020';
wwv_flow_api.g_varchar2_table(307) := '2A2073686F770D0A202020202020202020202A0D0A20202020202020202A2F20202020202020200D0A20202020202020202273686F77223A20242E70726F78792866756E6374696F6E2829207B0D0A20202020202020202020617065782E64656275672E';
wwv_flow_api.g_varchar2_table(308) := '6D65737361676528746869732E435F4C4F475F44454255472C20746869732E6C6F675072656669782C20275F696E746567726174655769746841706578417069272C202773686F77272C207B0D0A20202020202020202020202022617267756D656E7473';
wwv_flow_api.g_varchar2_table(309) := '223A20617267756D656E74732C0D0A202020202020202020202020226964223A20746869732E656C656D656E742E6765742830292E69640D0A202020202020202020207D293B0D0A202020202020202020202F2F20636F646520746861742073686F7773';
wwv_flow_api.g_varchar2_table(310) := '20746865206974656D20747970650D0A20202020202020207D2C2074686973292C0D0A20202020202020202F2A0D0A202020202020202020202A0D0A202020202020202020202A20686964650D0A202020202020202020202A0D0A20202020202020202A';
wwv_flow_api.g_varchar2_table(311) := '2F20202020202020200D0A20202020202020202268696465223A20242E70726F78792866756E6374696F6E2829207B0D0A20202020202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F44454255472C2074686973';
wwv_flow_api.g_varchar2_table(312) := '2E6C6F675072656669782C20275F696E746567726174655769746841706578417069272C202768696465272C207B0D0A20202020202020202020202022617267756D656E7473223A20617267756D656E74732C0D0A202020202020202020202020226964';
wwv_flow_api.g_varchar2_table(313) := '223A20746869732E656C656D656E742E6765742830292E69640D0A202020202020202020207D293B0D0A202020202020202020202F2F20636F6465207468617420686964657320746865206974656D20747970650D0A20202020202020207D2C20746869';
wwv_flow_api.g_varchar2_table(314) := '73292C0D0A20202020202020202F2A0D0A202020202020202020202A0D0A202020202020202020202A2061646456616C75650D0A202020202020202020202A0D0A20202020202020202A2F20202020202020200D0A20202020202020202261646456616C';
wwv_flow_api.g_varchar2_table(315) := '7565223A20242E70726F78792866756E6374696F6E28207056616C75652029207B0D0A20202020202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F44454255472C20746869732E6C6F675072656669782C20275F';
wwv_flow_api.g_varchar2_table(316) := '696E746567726174655769746841706578417069272C202761646456616C7565272C207B0D0A20202020202020202020202022617267756D656E7473223A20617267756D656E74732C0D0A202020202020202020202020227056616C7565223A20705661';
wwv_flow_api.g_varchar2_table(317) := '6C75652C0D0A202020202020202020202020226964223A20746869732E656C656D656E742E6765742830292E69640D0A202020202020202020207D293B0D0A202020202020202020202F2F20636F646520746861742061646473207056616C756520746F';
wwv_flow_api.g_varchar2_table(318) := '207468652076616C75657320616C726561647920696E20746865206974656D20747970650D0A20202020202020207D2C2074686973292C0D0A2020202020207D3B0D0A0D0A20202020617065782E7769646765742E696E6974506167654974656D282074';
wwv_flow_api.g_varchar2_table(319) := '6869732E656C656D656E742E617474722827696427292C20704F7074696F6E73293B202020200D0A20207D2C0D0A2F2F20200D0A2F2F205075626C696320706C7567696E206D6574686F64730D0A2F2F0D0A0D0A2F2F20200D0A2F2F2050726976617465';
wwv_flow_api.g_varchar2_table(320) := '20706C7567696E206D6574686F64730D0A2F2F0D0A20202F2A0D0A202020202A0D0A202020202A2066756E6374696F6E206E616D653A205F64697361626C650D0A202020202A206465736372697074696F6E20203A200D0A202020202A20706172616D73';
wwv_flow_api.g_varchar2_table(321) := '3A0D0A202020202A2020202D0D0A202020202A2020202D0D0A202020202A0D0A20202A2F0D0A20205F64697361626C653A2066756E6374696F6E28297B0D0A20202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556';
wwv_flow_api.g_varchar2_table(322) := '454C392C20746869732E6C6F675072656669782C20275F64697361626C65272C207B0D0A20202020202022617267756D656E7473223A20617267756D656E74730D0A202020207D293B0D0A0D0A20202020746869732E656C656D656E742E70726F702820';
wwv_flow_api.g_varchar2_table(323) := '2264697361626C6564222C207472756520293B0D0A20202020746869732E6D61736B2E73746174652E64697361626C6564203D20747275653B0D0A20202020746869732E6D61736B2E636F6E7461696E65722E616464436C617373282764697361626C65';
wwv_flow_api.g_varchar2_table(324) := '6427293B0D0A20202020746869732E6D61736B2E706F707570427574746F6E2E70726F70282764697361626C6564272C2074727565293B0D0A20207D2C0D0A20202F2A0D0A202020202A0D0A202020202A2066756E6374696F6E206E616D653A205F656E';
wwv_flow_api.g_varchar2_table(325) := '61626C650D0A202020202A206465736372697074696F6E20203A200D0A202020202A20706172616D733A0D0A202020202A2020202D0D0A202020202A2020202D0D0A202020202A0D0A20202A2F0D0A20205F656E61626C653A2066756E6374696F6E2829';
wwv_flow_api.g_varchar2_table(326) := '7B0D0A20202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F656E61626C65272C207B0D0A20202020202022617267756D656E7473223A20617267756D65';
wwv_flow_api.g_varchar2_table(327) := '6E74730D0A202020207D293B0D0A0D0A20202020746869732E656C656D656E742E70726F7028202264697361626C6564222C2066616C736520293B0D0A20202020746869732E6D61736B2E73746174652E64697361626C6564203D2066616C73653B0D0A';
wwv_flow_api.g_varchar2_table(328) := '20202020746869732E6D61736B2E636F6E7461696E65722E72656D6F7665436C617373282764697361626C656427293B0D0A20202020746869732E6D61736B2E706F707570427574746F6E2E70726F70282764697361626C6564272C2066616C7365293B';
wwv_flow_api.g_varchar2_table(329) := '0D0A20207D2C0D0A20202F2A0D0A202020202A0D0A202020202A2066756E6374696F6E206E616D653A205F6372656174654D61736B4465627567427574746F6E0D0A202020202A206465736372697074696F6E20203A200D0A202020202A20706172616D';
wwv_flow_api.g_varchar2_table(330) := '733A0D0A202020202A2020202D0D0A202020202A2020202D0D0A202020202A0D0A20202A2F0D0A20205F6372656174654D61736B4465627567427574746F6E3A2066756E6374696F6E28297B0D0A20202020617065782E64656275672E6D657373616765';
wwv_flow_api.g_varchar2_table(331) := '28746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F6372656174654D61736B4465627567427574746F6E272C207B0D0A20202020202022617267756D656E7473223A20617267756D656E74730D0A202020207D';
wwv_flow_api.g_varchar2_table(332) := '293B0D0A0D0A2020202076617220627574746F6E203D202428273C627574746F6E20636C6173733D2264656275674175746F636F6D706C65746520612D427574746F6E20612D427574746F6E2D2D706F7075704C4F56223E3C7370616E20636C6173733D';
wwv_flow_api.g_varchar2_table(333) := '2266612066612D696E666F223E3C2F7370616E3E3C2F627574746F6E3E27293B0D0A0D0A20202020627574746F6E2E636C69636B28242E70726F7879282066756E6374696F6E28704576656E74297B0D0A202020202020704576656E742E70726576656E';
wwv_flow_api.g_varchar2_table(334) := '7444656661756C7428293B0D0A0D0A202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C202764656275672070726F6D7074272C20746869732E6D61736B';
wwv_flow_api.g_varchar2_table(335) := '293B0D0A0D0A202020207D2C20746869732029293B0D0A0D0A20202020627574746F6E2E6174747228277469746C65272C202757726974657320746F20636F6E736F6C65206175746F636F6D706C65746520737461746527293B0D0A0D0A202020207468';
wwv_flow_api.g_varchar2_table(336) := '69732E6D61736B2E706F707570427574746F6E2E61667465722820627574746F6E20293B0D0A20207D2C0D0A20202F2A0D0A202020202A0D0A202020202A2066756E6374696F6E206E616D653A205F676574457874726156616C7565730D0A202020202A';
wwv_flow_api.g_varchar2_table(337) := '206465736372697074696F6E20203A200D0A202020202A20706172616D733A0D0A202020202A2020202D0D0A202020202A2020202D0D0A202020202A0D0A20202A2F0D0A20205F6765744974656D4C4F564E756C6C546578743A2066756E6374696F6E28';
wwv_flow_api.g_varchar2_table(338) := '297B0D0A202020207661722072657475726E56616C75653B0D0A0D0A202020206966202820746869732E6F7074696F6E732E6974656D2E6C6F765F6E756C6C5F74657874203D3D206E756C6C2029207B0D0A20202020202072657475726E56616C756520';
wwv_flow_api.g_varchar2_table(339) := '3D2022756E646566696E6564223B0D0A202020207D0D0A20202020656C7365206966202820746869732E6F7074696F6E732E6974656D2E6C6F765F6E756C6C5F74657874203D3D20756E646566696E65642029207B0D0A20202020202072657475726E56';
wwv_flow_api.g_varchar2_table(340) := '616C7565203D2022756E646566696E6564223B0D0A202020207D0D0A20202020656C7365207B0D0A20202020202072657475726E56616C7565203D20746869732E6F7074696F6E732E6974656D2E6C6F765F6E756C6C5F746578743B200D0A202020207D';
wwv_flow_api.g_varchar2_table(341) := '0D0A0D0A20202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F6765744974656D4C4F564E756C6C54657874272C207B0D0A20202020202022617267756D';
wwv_flow_api.g_varchar2_table(342) := '656E7473223A20617267756D656E74732C0D0A202020202020226C6F765F6E756C6C5F74657874223A20746869732E6F7074696F6E732E6974656D2E6C6F765F6E756C6C5F746578742C0D0A2020202020202272657475726E223A2072657475726E5661';
wwv_flow_api.g_varchar2_table(343) := '6C75650D0A202020207D293B0D0A0D0A2020202072657475726E2072657475726E56616C75653B0D0A0D0A20207D2C20200D0A20202F2A0D0A202020202A0D0A202020202A2066756E6374696F6E206E616D653A205F676574457874726156616C756573';
wwv_flow_api.g_varchar2_table(344) := '0D0A202020202A206465736372697074696F6E20203A200D0A202020202A20706172616D733A0D0A202020202A2020202D0D0A202020202A2020202D0D0A202020202A0D0A20202A2F0D0A20205F6765744974656D4C4F564E756C6C56616C75653A2066';
wwv_flow_api.g_varchar2_table(345) := '756E6374696F6E28297B0D0A202020207661722072657475726E56616C75653B0D0A0D0A202020206966202820746869732E6F7074696F6E732E6974656D2E6C6F765F6E756C6C5F76616C7565203D3D206E756C6C2029207B0D0A202020202020726574';
wwv_flow_api.g_varchar2_table(346) := '75726E56616C7565203D2022223B0D0A202020207D0D0A20202020656C7365206966202820746869732E6F7074696F6E732E6974656D2E6C6F765F6E756C6C5F76616C7565203D3D20756E646566696E65642029207B0D0A20202020202072657475726E';
wwv_flow_api.g_varchar2_table(347) := '56616C7565203D2022756E646566696E6564223B0D0A202020207D0D0A20202020656C7365207B0D0A20202020202072657475726E56616C7565203D20746869732E6F7074696F6E732E6974656D2E6C6F765F6E756C6C5F76616C75653B200D0A202020';
wwv_flow_api.g_varchar2_table(348) := '207D0D0A0D0A20202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F6765744974656D4C4F564E756C6C56616C7565272C207B0D0A202020202020226172';
wwv_flow_api.g_varchar2_table(349) := '67756D656E7473223A20617267756D656E74732C0D0A202020202020226C6F765F6E756C6C5F76616C7565223A20746869732E6F7074696F6E732E6974656D2E6C6F765F6E756C6C5F76616C75652C0D0A2020202020202272657475726E223A20726574';
wwv_flow_api.g_varchar2_table(350) := '75726E56616C75650D0A202020207D293B0D0A0D0A2020202072657475726E2072657475726E56616C75653B0D0A0D0A20207D2C0D0A20202F2A0D0A202020202A0D0A202020202A2066756E6374696F6E206E616D653A205F676574457874726156616C';
wwv_flow_api.g_varchar2_table(351) := '7565730D0A202020202A206465736372697074696F6E20203A200D0A202020202A20706172616D733A0D0A202020202A2020202D0D0A202020202A2020202D0D0A202020202A0D0A20202A2F0D0A20205F676574457874726156616C7565733A2066756E';
wwv_flow_api.g_varchar2_table(352) := '6374696F6E28207056616C75657353656E742C20704461746152657475726E656420297B0D0A20202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F6765';
wwv_flow_api.g_varchar2_table(353) := '74457874726156616C756573272C207B0D0A20202020202022617267756D656E7473223A20617267756D656E74732C0D0A202020202020227056616C75657353656E74223A207056616C75657353656E742C0D0A20202020202022704461746152657475';
wwv_flow_api.g_varchar2_table(354) := '726E6564223A20704461746152657475726E65642C0D0A20202020202022704461746152657475726E6564206C656E677468223A20704461746152657475726E65642E6C656E6774680D0A202020207D293B0D0A0D0A20202020766172200D0A20202020';
wwv_flow_api.g_varchar2_table(355) := '202064617461546F436865636B203D20242E657874656E64285B5D2C20704461746152657475726E6564292C0D0A202020202020657874726156616C756573203D20242E657874656E64285B5D2C207056616C75657353656E74292E66696C7465722866';
wwv_flow_api.g_varchar2_table(356) := '756E6374696F6E2028656C656D656E7429207B0D0A20202020202072657475726E20656C656D656E7420213D206E756C6C20262620656C656D656E742E6C656E677468203E20303B0D0A202020207D293B0D0A0D0A202020202F2F616464206E756C6C20';
wwv_flow_api.g_varchar2_table(357) := '76616C756520736F20697420776F6E277420626520747265617465642061732065787472612076616C75650D0A202020206966202820746869732E6F7074696F6E732E6974656D2E6C6F765F646973706C61795F6E756C6C2029207B0D0A202020202020';
wwv_flow_api.g_varchar2_table(358) := '64617461546F436865636B2E7075736828207B0D0A20202020202020202244223A20746869732E5F6765744974656D4C4F564E756C6C5465787428292C0D0A20202020202020202252223A20746869732E5F6765744974656D4C4F564E756C6C56616C75';
wwv_flow_api.g_varchar2_table(359) := '6528290D0A2020202020207D20293B0D0A202020207D0D0A20200D0A20202020666F7220282076617220693D303B2069203C2064617461546F436865636B2E6C656E6774683B20692B2B2029207B0D0A0D0A202020202020696E6465784F66203D206578';
wwv_flow_api.g_varchar2_table(360) := '74726156616C7565732E696E6465784F66282064617461546F436865636B5B695D2E522E746F537472696E67282920293B0D0A0D0A2020202020206966202820696E6465784F66203E202D312029207B0D0A2020202020202020657874726156616C7565';
wwv_flow_api.g_varchar2_table(361) := '732E73706C6963652820696E6465784F662C203120293B0D0A2020202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F676574457874726156616C';
wwv_flow_api.g_varchar2_table(362) := '756573272C202772656D6F76696E6720272B64617461546F436865636B5B695D2E522E746F537472696E6728292B272066726F6D20272C20657874726156616C756573293B0D0A2020202020207D0D0A202020202020656C7365207B0D0A202020202020';
wwv_flow_api.g_varchar2_table(363) := '2020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F676574457874726156616C756573272C20276C6F6F6B696E6720666F7220272B64617461546F43686563';
wwv_flow_api.g_varchar2_table(364) := '6B5B695D2E522E746F537472696E6728292B2720696E20272C20657874726156616C756573293B0D0A2020202020207D0D0A202020207D0D0A0D0A20202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C';
wwv_flow_api.g_varchar2_table(365) := '20746869732E6C6F675072656669782C20275F676574457874726156616C756573272C2027657874726156616C756573272C20657874726156616C756573293B0D0A0D0A2020202072657475726E20657874726156616C7565733B0D0A20207D2C0D0A20';
wwv_flow_api.g_varchar2_table(366) := '202F2A0D0A202020202A0D0A202020202A2066756E6374696F6E206E616D653A205F6D61736B506F707570427574746F6E486964650D0A202020202A206465736372697074696F6E20203A200D0A202020202A20706172616D733A0D0A202020202A2020';
wwv_flow_api.g_varchar2_table(367) := '202D0D0A202020202A2020202D0D0A202020202A0D0A20202A2F0D0A20205F6D61736B506F707570427574746F6E486964653A2066756E6374696F6E28297B0D0A20202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C';
wwv_flow_api.g_varchar2_table(368) := '4556454C392C20746869732E6C6F675072656669782C20275F6D61736B506F707570427574746F6E48696465272C207B0D0A20202020202022617267756D656E7473223A20617267756D656E74730D0A202020207D293B0D0A202020200D0A2020202074';
wwv_flow_api.g_varchar2_table(369) := '6869732E6D61736B2E706F707570427574746F6E2E6869646528293B0D0A20207D2C0D0A20202F2A0D0A202020202A0D0A202020202A2066756E6374696F6E206E616D653A205F6D61736B506F707570427574746F6E53686F770D0A202020202A206465';
wwv_flow_api.g_varchar2_table(370) := '736372697074696F6E20203A200D0A202020202A20706172616D733A0D0A202020202A2020202D0D0A202020202A2020202D0D0A202020202A0D0A20202A2F0D0A20205F6D61736B506F707570427574746F6E53686F773A2066756E6374696F6E28297B';
wwv_flow_api.g_varchar2_table(371) := '0D0A20202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F6D61736B506F707570427574746F6E53686F77272C207B0D0A20202020202022617267756D65';
wwv_flow_api.g_varchar2_table(372) := '6E7473223A20617267756D656E74730D0A202020207D293B0D0A202020200D0A20202020746869732E6D61736B2E706F707570427574746F6E2E73686F7728293B0D0A20207D2C0D0A20202F2A0D0A202020202A0D0A202020202A2066756E6374696F6E';
wwv_flow_api.g_varchar2_table(373) := '206E616D653A205F6D61736B416A61785374617465427574746F6E486964650D0A202020202A206465736372697074696F6E20203A200D0A202020202A20706172616D733A0D0A202020202A2020202D0D0A202020202A2020202D0D0A202020202A0D0A';
wwv_flow_api.g_varchar2_table(374) := '20202A2F20200D0A20205F6D61736B416A61785374617465427574746F6E486964653A2066756E6374696F6E28297B0D0A20202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F6750';
wwv_flow_api.g_varchar2_table(375) := '72656669782C20275F6D61736B416A61785374617465427574746F6E48696465272C207B0D0A20202020202022617267756D656E7473223A20617267756D656E74730D0A202020207D293B0D0A202020200D0A20202020746869732E5F6D61736B506F70';
wwv_flow_api.g_varchar2_table(376) := '7570427574746F6E53686F7728293B0D0A20202020746869732E6D61736B2E616A61785374617465427574746F6E2E627574746F6E2E6869646528293B0D0A20207D2C0D0A20202F2A0D0A202020202A0D0A202020202A2066756E6374696F6E206E616D';
wwv_flow_api.g_varchar2_table(377) := '653A205F6D61736B416A61785374617465427574746F6E5365744572726F720D0A202020202A206465736372697074696F6E20203A200D0A202020202A20706172616D733A0D0A202020202A2020202D0D0A202020202A2020202D0D0A202020202A0D0A';
wwv_flow_api.g_varchar2_table(378) := '20202A2F20200D0A20205F6D61736B416A61785374617465427574746F6E5365744572726F723A2066756E6374696F6E2820704F626A6563742C207053746F70506C7567696E20297B200D0A20202020617065782E64656275672E6D6573736167652874';
wwv_flow_api.g_varchar2_table(379) := '6869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F6D61736B416A61785374617465427574746F6E5365744572726F72272C207B0D0A20202020202022617267756D656E7473223A20617267756D656E74732C0D0A';
wwv_flow_api.g_varchar2_table(380) := '20202020202022704F626A656374223A20704F626A6563742C0D0A202020202020227053746F70506C7567696E223A207053746F70506C7567696E0D0A202020207D293B0D0A202020200D0A20202020242E657874656E6428746869732E6D61736B2E61';
wwv_flow_api.g_varchar2_table(381) := '6A61785374617465427574746F6E2C207B226572726F724F626A656374223A704F626A6563747D293B0D0A0D0A202020202F2F6572726F72206F6363757265642062757420646F6E2774206861766520746F2073746F7020706C7567696E207573616765';
wwv_flow_api.g_varchar2_table(382) := '0D0A20202020746869732E6D61736B2E73746174652E6572726F72203D20747275653B0D0A0D0A2020202069662028207053746F70506C7567696E202920207B0D0A202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F';
wwv_flow_api.g_varchar2_table(383) := '475F4C4556454C392C20746869732E6C6F675072656669782C20275F6D61736B416A61785374617465427574746F6E5365744572726F722073746F7020706C7567696E2127293B20200D0A202020202020746869732E706C7567696E53746F7070656420';
wwv_flow_api.g_varchar2_table(384) := '3D20747275653B20200D0A202020202020746869732E6D61736B2E73746174652E64697361626C6564203D20747275653B0D0A202020207D0D0A20207D2C0D0A20202F2A0D0A202020202A0D0A202020202A2066756E6374696F6E206E616D653A205F6D';
wwv_flow_api.g_varchar2_table(385) := '61736B416A61785374617465427574746F6E446973706C61794572726F720D0A202020202A206465736372697074696F6E20203A200D0A202020202A20706172616D733A0D0A202020202A2020202D0D0A202020202A2020202D0D0A202020202A0D0A20';
wwv_flow_api.g_varchar2_table(386) := '202A2F20200D0A20205F6D61736B416A61785374617465427574746F6E446973706C61794572726F723A2066756E6374696F6E28297B0D0A20202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C207468';
wwv_flow_api.g_varchar2_table(387) := '69732E6C6F675072656669782C20275F6D61736B416A61785374617465427574746F6E446973706C61794572726F72272C207B0D0A20202020202022617267756D656E7473223A20617267756D656E74730D0A202020207D293B0D0A0D0A202020207661';
wwv_flow_api.g_varchar2_table(388) := '72200D0A202020202020636F6E7461696E65722020203D202428273C64697620636C6173733D22636F6E7461696E6572223E3C2F6469763E27292C0D0A2020202020206469764572726F72202020203D202428273C64697620636C6173733D226572726F';
wwv_flow_api.g_varchar2_table(389) := '72223E3C2F6469763E27292C0D0A2020202020206469764D65737361676520203D202428273C64697620636C6173733D226D657373616765223E3C2F6469763E27292C0D0A20202020202064697654656368496E666F203D202428273C6469763E3C2F64';
wwv_flow_api.g_varchar2_table(390) := '69763E27292C0D0A202020202020707265203D202428273C7072653E3C2F7072653E27292C0D0A2020202020206F7074696F6E7320203D207B0D0A2020202020202020226469616C6F67436C617373222020203A2022707265746975732D2D656E68616E';
wwv_flow_api.g_varchar2_table(391) := '6365644C6F764974656D206572726F72222C0D0A2020202020202020226175746F4F70656E222020202020203A20747275652C0D0A202020202020202022617070656E64546F222020202020203A2027626F6479272C0D0A2020202020202020226D6F64';
wwv_flow_api.g_varchar2_table(392) := '616C222020202020202020203A20747275652C0D0A202020202020202022706F736974696F6E222020202020203A207B0D0A20202020202020202020226D79223A202263656E746572222C200D0A20202020202020202020226174223A202263656E7465';
wwv_flow_api.g_varchar2_table(393) := '72222C200D0A20202020202020202020226F66223A2077696E646F770D0A20202020202020207D2C0D0A2020202020202020227469746C65222020202020202020203A20746869732E706C7567696E53657474696E67732E706F7075702E7469746C652C';
wwv_flow_api.g_varchar2_table(394) := '0D0A2020202020202020227769647468222020202020202020203A203830302C0D0A2020202020202020226D696E5769647468222020202020203A203530302C0D0A2020202020202020226865696768742220202020202020203A203534312C0D0A2020';
wwv_flow_api.g_varchar2_table(395) := '202020202020226D696E4865696768742220202020203A203235352C0D0A202020202020202022726573697A61626C652220202020203A2066616C73652C0D0A202020202020202022647261676761626C65222020202020203A2066616C73652C0D0A20';
wwv_flow_api.g_varchar2_table(396) := '2020202020202022636C6F73654F6E45736361706520223A20747275652C0D0A2020202020202020226F70656E22202020202020202020203A20242E70726F7879282066756E6374696F6E28297B0D0A20202020202020202020242827626F647927292E';
wwv_flow_api.g_varchar2_table(397) := '616464436C6173732827617065782D6E6F2D7363726F6C6C27293B2020202020202020202020202020202020200D0A20202020202020207D2C207468697320292C0D0A2020202020202020226265666F7265436C6F7365222020203A20242E70726F7879';
wwv_flow_api.g_varchar2_table(398) := '282066756E6374696F6E28297B0D0A20202020202020202020242827626F647927292E72656D6F7665436C6173732827617065782D6E6F2D7363726F6C6C27293B2020202020202020202020202020202020200D0A20202020202020207D2C2074686973';
wwv_flow_api.g_varchar2_table(399) := '20290D0A2020202020207D3B2020202020200D0A0D0A202020206966202820746869732E706C7567696E53746F70706564203D3D2066616C73652029207B0D0A202020202020746869732E5F6D61736B506F707570427574746F6E53686F7728293B0D0A';
wwv_flow_api.g_varchar2_table(400) := '202020202020746869732E6D61736B2E616A61785374617465427574746F6E2E627574746F6E2E6869646528293B0D0A202020207D0D0A0D0A202020206966202820746869732E706C7567696E53657474696E67732E697344656275674F6E2029207B0D';
wwv_flow_api.g_varchar2_table(401) := '0A20202020202069662028200D0A2020202020202020746869732E6D61736B2E616A61785374617465427574746F6E2E6572726F724F626A6563742E74656368496E666F20213D20756E646566696E6564200D0A2020202020202020262620746869732E';
wwv_flow_api.g_varchar2_table(402) := '6D61736B2E616A61785374617465427574746F6E2E6572726F724F626A6563742E74656368496E666F20696E7374616E63656F662041727261790D0A20202020202029207B0D0A2020202020202020666F72202876617220693D303B2069203C20746869';
wwv_flow_api.g_varchar2_table(403) := '732E6D61736B2E616A61785374617465427574746F6E2E6572726F724F626A6563742E74656368496E666F2E6C656E6774683B20692B2B29207B0D0A202020202020202020207072652E617070656E642820746869732E6D61736B2E616A617853746174';
wwv_flow_api.g_varchar2_table(404) := '65427574746F6E2E6572726F724F626A6563742E74656368496E666F5B695D2E6E616D652B273A20272B746869732E6D61736B2E616A61785374617465427574746F6E2E6572726F724F626A6563742E74656368496E666F5B695D2E76616C756520293B';
wwv_flow_api.g_varchar2_table(405) := '0D0A202020202020202020207072652E617070656E6428225C6E22293B0D0A20202020202020207D0D0A2020202020207D0D0A202020202020656C7365206966202820746869732E6D61736B2E616A61785374617465427574746F6E2E6572726F724F62';
wwv_flow_api.g_varchar2_table(406) := '6A6563742E74656368496E666F20213D20756E646566696E656420297B0D0A20202020202020207072652E617070656E642820746869732E6D61736B2E616A61785374617465427574746F6E2E6572726F724F626A6563742E74656368496E666F20293B';
wwv_flow_api.g_varchar2_table(407) := '0D0A2020202020207D0D0A202020207D0D0A20202020656C7365207B0D0A2020202020207072652E617070656E6428746869732E435F4552524F525F44454255475F4F4646293B0D0A202020207D0D0A0D0A202020206469764D6573736167652E617070';
wwv_flow_api.g_varchar2_table(408) := '656E642820746869732E6D61736B2E616A61785374617465427574746F6E2E6572726F724F626A6563742E6572726F7220293B0D0A202020206469764572726F722E617070656E642820746869732E6D61736B2E616A61785374617465427574746F6E2E';
wwv_flow_api.g_varchar2_table(409) := '6572726F724F626A6563742E616464496E666F20293B0D0A0D0A2020202064697654656368496E666F2E617070656E6428707265293B0D0A0D0A20202020636F6E7461696E65720D0A2020202020202E617070656E64286469764D657373616765290D0A';
wwv_flow_api.g_varchar2_table(410) := '2020202020202E617070656E64286469764572726F72290D0A2020202020202E617070656E642864697654656368496E666F290D0A2020202020202E6469616C6F6728206F7074696F6E7320293B0D0A20207D2C0D0A20202F2A0D0A202020202A0D0A20';
wwv_flow_api.g_varchar2_table(411) := '2020202A2066756E6374696F6E206E616D653A205F6D61736B416A61785374617465427574746F6E4572726F720D0A202020202A206465736372697074696F6E20203A200D0A202020202A20706172616D733A0D0A202020202A2020202D0D0A20202020';
wwv_flow_api.g_varchar2_table(412) := '2A2020202D0D0A202020202A0D0A20202A2F20200D0A20205F6D61736B416A61785374617465427574746F6E4572726F723A2066756E6374696F6E2820297B0D0A20202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C';
wwv_flow_api.g_varchar2_table(413) := '4556454C392C20746869732E6C6F675072656669782C20275F6D61736B416A61785374617465427574746F6E4572726F72272C207B0D0A20202020202022617267756D656E7473223A20617267756D656E74732C0D0A20202020202022746869732E706C';
wwv_flow_api.g_varchar2_table(414) := '7567696E53746F70706564223A20746869732E706C7567696E53746F707065640D0A202020207D293B0D0A0D0A20202020746869732E5F6D61736B506F707570427574746F6E4869646528293B0D0A0D0A20202020746869732E6D61736B2E616A617853';
wwv_flow_api.g_varchar2_table(415) := '74617465427574746F6E2E627574746F6E2E66696E6428272E69636F6E27290D0A2020202020202E72656D6F7665436C61737328290D0A2020202020202E616464436C617373282769636F6E2066612066612D6578636C616D6174696F6E2D747269616E';
wwv_flow_api.g_varchar2_table(416) := '676C652066612D616E696D2D666C617368206572726F7227293B0D0A0D0A20202020746869732E6D61736B2E616A61785374617465427574746F6E2E627574746F6E2E73686F7728293B0D0A0D0A202020206966202820746869732E706C7567696E5374';
wwv_flow_api.g_varchar2_table(417) := '6F707065642029207B0D0A202020202020746869732E6D61736B2E616A61785374617465427574746F6E2E627574746F6E2E6F6E282027636C69636B272C20242E70726F78792820746869732E5F6D61736B416A61785374617465427574746F6E446973';
wwv_flow_api.g_varchar2_table(418) := '706C61794572726F722C2074686973202920293B0D0A202020207D0D0A20202020656C7365207B0D0A202020202020746869732E6D61736B2E616A61785374617465427574746F6E2E627574746F6E2E6F6E65282027636C69636B272C20242E70726F78';
wwv_flow_api.g_varchar2_table(419) := '792820746869732E5F6D61736B416A61785374617465427574746F6E446973706C61794572726F722C2074686973202920293B20200D0A202020207D0D0A202020200D0A20207D2C0D0A20202F2A0D0A202020202A0D0A202020202A2066756E6374696F';
wwv_flow_api.g_varchar2_table(420) := '6E206E616D653A205F6D61736B416A61785374617465427574746F6E52756E6E696E670D0A202020202A206465736372697074696F6E20203A200D0A202020202A20706172616D733A0D0A202020202A2020202D0D0A202020202A2020202D0D0A202020';
wwv_flow_api.g_varchar2_table(421) := '202A0D0A20202A2F20200D0A20205F6D61736B416A61785374617465427574746F6E52756E6E696E673A2066756E6374696F6E28297B0D0A20202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C207468';
wwv_flow_api.g_varchar2_table(422) := '69732E6C6F675072656669782C20275F6D61736B416A61785374617465427574746F6E52756E6E696E67272C207B0D0A20202020202022617267756D656E7473223A20617267756D656E74730D0A202020207D293B0D0A0D0A20202020746869732E5F6D';
wwv_flow_api.g_varchar2_table(423) := '61736B506F707570427574746F6E4869646528293B0D0A0D0A20202020746869732E6D61736B2E616A61785374617465427574746F6E2E627574746F6E2E66696E6428272E69636F6E27290D0A2020202020202E72656D6F7665417474722827636C6173';
wwv_flow_api.g_varchar2_table(424) := '7327290D0A2020202020202E616464436C617373282769636F6E2066612066612D726566726573682066612D616E696D2D7370696E27293B0D0A0D0A20202020746869732E6D61736B2E616A61785374617465427574746F6E2E627574746F6E2E73686F';
wwv_flow_api.g_varchar2_table(425) := '7728293B0D0A20207D2C0D0A20202F2A0D0A202020202A0D0A202020202A2066756E6374696F6E206E616D653A205F6D61736B416A61785374617465427574746F6E53686F770D0A202020202A206465736372697074696F6E20203A200D0A202020202A';
wwv_flow_api.g_varchar2_table(426) := '20706172616D733A0D0A202020202A2020202D0D0A202020202A2020202D0D0A202020202A0D0A20202A2F20200D0A20205F6D61736B416A61785374617465427574746F6E53686F773A2066756E6374696F6E28297B0D0A20202020617065782E646562';
wwv_flow_api.g_varchar2_table(427) := '75672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F6D61736B416A61785374617465427574746F6E53686F77272C207B0D0A20202020202022617267756D656E7473223A2061726775';
wwv_flow_api.g_varchar2_table(428) := '6D656E74730D0A202020207D293B0D0A0D0A20202020746869732E6D61736B2E616A61785374617465427574746F6E2E627574746F6E2E73686F7728293B0D0A20207D2C0D0A20202F2A0D0A202020202A0D0A202020202A2066756E6374696F6E206E61';
wwv_flow_api.g_varchar2_table(429) := '6D653A205F6765744F6E4C6F61644C6F765F5375636365737343616C6C6261636B0D0A202020202A206465736372697074696F6E20203A200D0A202020202A20706172616D733A0D0A202020202A2020202D0D0A202020202A2020202D0D0A202020202A';
wwv_flow_api.g_varchar2_table(430) := '0D0A20202A2F20200D0A20205F6765744F6E4C6F61644C6F765F5375636365737343616C6C6261636B3A2066756E6374696F6E2820704D6F64652C207056616C75657353656E742C2070446174612C2070546578745374617475732C20704A7158485220';
wwv_flow_api.g_varchar2_table(431) := '297B0D0A20202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F44454255472C20746869732E6C6F675072656669782C20275F6765744F6E4C6F61644C6F76272C202773756363657373272C207B0D0A2020202020202261';
wwv_flow_api.g_varchar2_table(432) := '7267756D656E7473222020203A20617267756D656E74732C0D0A20202020202022704D6F646522202020202020203A20704D6F64652C0D0A202020202020227056616C75657353656E7422203A207056616C75657353656E742C0D0A2020202020202270';
wwv_flow_api.g_varchar2_table(433) := '4461746122202020202020203A2070446174612C0D0A20202020202022705465787453746174757322203A2070546578745374617475732C0D0A20202020202022704A71584852222020202020203A20704A715848522020202020202C0D0A202020207D';
wwv_flow_api.g_varchar2_table(434) := '293B0D0A0D0A20202020766172200D0A2020202020206F626A65637454656D702C0D0A20202020202076616C75657345787472613B0D0A0D0A20202020746869732E5F70726F6D7074456D7074795461677328293B0D0A20202020746869732E5F70726F';
wwv_flow_api.g_varchar2_table(435) := '6D7074456D7074794D61736B537461746528293B0D0A0D0A202020202F2F70446174612E646174612E736F72742820746869732E5F736F72744A736F6E28202244222C202261736322202920293B0D0A202020202F2F746869732E6D61736B2E73746174';
wwv_flow_api.g_varchar2_table(436) := '652E736F72746564203D2022617363223B0D0A0D0A20202020696620282070446174612E6E756C6C56616C756553656C65637465642029207B0D0A0D0A2020202020206F626A65637454656D70203D207B0D0A20202020202020202276616C7565222020';
wwv_flow_api.g_varchar2_table(437) := '3A20746869732E5F6765744974656D4C4F564E756C6C56616C756528292C0D0A202020202020202022646973706C6179223A20746869732E5F6765744974656D4C4F564E756C6C5465787428290D0A2020202020207D3B0D0A0D0A202020202020617065';
wwv_flow_api.g_varchar2_table(438) := '782E64656275672E6D65737361676528746869732E435F4C4F475F44454255472C20746869732E6C6F675072656669782C20275F6765744F6E4C6F61644C6F76272C202773756363657373272C20274E554C4C2076616C75652073656C6563746564272C';
wwv_flow_api.g_varchar2_table(439) := '206F626A65637454656D70293B0D0A0D0A202020202020746869732E5F6D61736B537461746553656C656374656441646428200D0A20202020202020206F626A65637454656D702C2020202F2F206F626A6563740D0A202020202020202066616C73652C';
wwv_flow_api.g_varchar2_table(440) := '20202020202020202F2F2069732065787472612076616C75650D0A202020202020202074727565202020202020202020202F2F206973206E756C6C2076616C75650D0A202020202020293B0D0A202020207D0D0A0D0A202020202F2F6164642076616C75';
wwv_flow_api.g_varchar2_table(441) := '6573206F6E20776869636820746167732077696C6C2062652072656E64657265640D0A20202020666F7220282076617220693D303B2069203C2070446174612E646174612E6C656E6774683B20692B2B2029207B0D0A0D0A2020202020206F626A656374';
wwv_flow_api.g_varchar2_table(442) := '54656D70203D207B0D0A20202020202020202276616C75652220203A2070446174612E646174615B695D2E522E746F537472696E6728292C0D0A202020202020202022646973706C6179223A2070446174612E646174615B695D2E440D0A202020202020';
wwv_flow_api.g_varchar2_table(443) := '7D3B0D0A0D0A202020202020746869732E5F6D61736B537461746553656C656374656441646428200D0A20202020202020206F626A65637454656D702C2020202F2F206F626A6563740D0A202020202020202066616C73652C20202020202020202F2F20';
wwv_flow_api.g_varchar2_table(444) := '69732065787472612076616C75650D0A202020202020202066616C73652020202020202020202F2F206973206E756C6C2076616C75650D0A202020202020293B0D0A0D0A202020207D0D0A0D0A202020206966202820704D6F6465203D3D202747455453';
wwv_flow_api.g_varchar2_table(445) := '455353494F4E5354415445272029207B0D0A2020202020207056616C75657353656E74203D2070446174612E73657373696F6E3B0D0A202020207D0D0A0D0A202020202F2F68616E646C652065787472612076616C75657320286E6F7420646566696E65';
wwv_flow_api.g_varchar2_table(446) := '6420696E2064696374696F6E61727929200D0A2020202069662028200D0A202020202020746869732E706C7567696E53657474696E67732E646973706C61794578747261200D0A2020202020202626207056616C75657353656E7420213D20756E646566';
wwv_flow_api.g_varchar2_table(447) := '696E65640D0A2020202020202626207056616C75657353656E742E6C656E677468203E2030200D0A2020202029207B0D0A0D0A20202020202076616C7565734578747261203D20746869732E5F676574457874726156616C75657328207056616C756573';
wwv_flow_api.g_varchar2_table(448) := '53656E742E73706C697428746869732E435F56414C55455F534550415241544F52292C2070446174612E6461746120293B0D0A0D0A202020202020666F7220282076617220693D303B2069203C2076616C75657345787472612E6C656E6774683B20692B';
wwv_flow_api.g_varchar2_table(449) := '2B2029207B0D0A20202020202020206F626A65637454656D70203D207B0D0A202020202020202020202276616C75652220203A2076616C75657345787472615B695D2C0D0A2020202020202020202022646973706C6179223A2076616C75657345787472';
wwv_flow_api.g_varchar2_table(450) := '615B695D0D0A20202020202020207D3B0D0A0D0A2020202020202020746869732E5F6D61736B537461746553656C656374656441646428200D0A202020202020202020206F626A65637454656D702C202F2F206F626A656374200D0A2020202020202020';
wwv_flow_api.g_varchar2_table(451) := '2020747275652C202020202020202F2F2069732065787472612076616C75650D0A2020202020202020202066616C7365202020202020202F2F206973206E756C6C2076616C75650D0A2020202020202020293B0D0A2020202020207D0D0A202020207D0D';
wwv_flow_api.g_varchar2_table(452) := '0A0D0A20202020746869732E5F70726F6D70744170706C7956616C756573282066616C736520293B0D0A202020200D0A20202020746869732E5F70726F6D707452656E6465725461677328293B0D0A0D0A20202020746869732E5F6D61736B416A617853';
wwv_flow_api.g_varchar2_table(453) := '74617465427574746F6E4869646528293B0D0A0D0A202020202F2F7768656E2041504558206974656D20636F6E7461696E73206D756C7469706C652076616C756573206275740D0A202020202F2F697420697320636F6E6669677572656420746F20776F';
wwv_flow_api.g_varchar2_table(454) := '726B20776974682073696E67756C61722073656C656374696F6E0D0A2020202069662028200D0A202020202020746869732E706C7567696E53657474696E67732E69734D756C7469706C6553656C656374696F6E203D3D2066616C73650D0A2020202020';
wwv_flow_api.g_varchar2_table(455) := '20262620746869732E6D61736B2E73746174652E73656C65637465642E6C656E677468203E20310D0A2020202029207B0D0A202020202020746869732E5F6D61736B416A61785374617465427574746F6E5365744572726F72287B0D0A20202020202020';
wwv_flow_api.g_varchar2_table(456) := '20226572726F7222202020203A2027496E76616C696420696E7075742076616C7565206163636F7264696E6720746F2069747320636F6E66696775726174696F6E2E272C0D0A202020202020202022616464496E666F2220203A2027546865206974656D';
wwv_flow_api.g_varchar2_table(457) := '20697320646566696E656420746F20737570706F72742073696E67756C61722073656C656374696F6E206275742073657373696F6E20636F6E7461696E73206D756C7469706C652076616C7565732E272C0D0A20202020202020202274656368496E666F';
wwv_flow_api.g_varchar2_table(458) := '22203A2027436865636B2073657373696F6E2076616C756520666F722041504558206974656D2022272B746869732E656C656D656E742E617474722827696427292B272220616E6420696E73706563742070726F6365737365732068616E646C696E6720';
wwv_flow_api.g_varchar2_table(459) := '73657373696F6E2076616C7565206F66206974656D2E270D0A2020202020207D2C2066616C7365293B0D0A0D0A202020202020746869732E5F6D61736B416A61785374617465427574746F6E4572726F7228293B0D0A0D0A202020202020746869732E5F';
wwv_flow_api.g_varchar2_table(460) := '7468726F774572726F725465787428200D0A202020202020202027496E76616C696420696E7075742076616C7565206163636F7264696E6720746F2069747320636F6E66696775726174696F6E2E272B0D0A202020202020202027546865206974656D20';
wwv_flow_api.g_varchar2_table(461) := '697320646566696E656420746F20737570706F72742073696E67756C61722073656C656374696F6E206275742073657373696F6E20636F6E7461696E73206D756C7469706C652076616C7565732E272B0D0A202020202020202027436865636B20736573';
wwv_flow_api.g_varchar2_table(462) := '73696F6E2076616C756520666F722041504558206974656D2022272B746869732E656C656D656E742E617474722827696427292B272220616E6420696E73706563742070726F6365737365732068616E646C696E672073657373696F6E2076616C756520';
wwv_flow_api.g_varchar2_table(463) := '6F66206974656D2E270D0A202020202020293B0D0A202020207D0D0A20207D2C0D0A20202F2A0D0A202020202A0D0A202020202A2066756E6374696F6E206E616D653A205F6765744F6E4C6F61644C6F760D0A202020202A206465736372697074696F6E';
wwv_flow_api.g_varchar2_table(464) := '20203A200D0A202020202A20706172616D733A0D0A202020202A2020202D0D0A202020202A2020202D0D0A202020202A0D0A20202A2F20200D0A20205F6765744F6E4C6F61644C6F763A2066756E6374696F6E28207056616C756520297B0D0A20202020';
wwv_flow_api.g_varchar2_table(465) := '617065782E64656275672E6D65737361676528746869732E435F4C4F475F44454255472C20746869732E6C6F675072656669782C20275F6765744F6E4C6F61644C6F76272C207B0D0A20202020202022617267756D656E7473223A20617267756D656E74';
wwv_flow_api.g_varchar2_table(466) := '732C0D0A202020202020227056616C7565222020203A207056616C75652C0D0A20202020202022746172676574222020203A20746869732E656C656D656E742E6765742830290D0A202020207D293B0D0A0D0A202020207661720D0A2020202020206D6F';
wwv_flow_api.g_varchar2_table(467) := '646520202020203D207056616C7565203D3D206E756C6C207C7C207056616C7565203D3D20756E646566696E6564207C7C207056616C7565203D3D202222203F202747455453455353494F4E535441544527203A20274745544F4E4C5953454C45435445';
wwv_flow_api.g_varchar2_table(468) := '44272C0D0A20202020202076616C7565732020203D207056616C7565203D3D206E756C6C207C7C207056616C7565203D3D20756E646566696E6564207C7C207056616C7565203D3D202222203F205B5D203A207056616C75652E73706C69742874686973';
wwv_flow_api.g_varchar2_table(469) := '2E435F56414C55455F534550415241544F52292C0D0A202020202020616A617844617461203D207B0D0A202020202020202022783031223A206D6F64652C20202F2F747279620D0A202020202020202022663031223A2076616C7565732C202F2F73656C';
wwv_flow_api.g_varchar2_table(470) := '65637465642076616C7565730D0A202020202020202022706167654974656D73223A20746869732E5F616A6178476574506167654974656D7328290D0A2020202020207D2C0D0A202020202020616A61784F7074696F6E73203D207B0D0A202020202020';
wwv_flow_api.g_varchar2_table(471) := '2020227461726765742220202020203A20746869732E656C656D656E742E6765742830292C0D0A2020202020202020226265666F726553656E6422203A20242E70726F78792866756E6374696F6E2820704A715848522C207053657474696E677320297B';
wwv_flow_api.g_varchar2_table(472) := '0D0A0D0A20202020202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C362C20746869732E6C6F675072656669782C20275F6765744F6E4C6F61644C6F76272C20276265666F72652073656E64272C20';
wwv_flow_api.g_varchar2_table(473) := '7B0D0A20202020202020202020202022704A71584852223A20704A715848522C0D0A202020202020202020202020227053657474696E6773223A207053657474696E67730D0A202020202020202020207D293B0D0A0D0A202020202020202020202F2F74';
wwv_flow_api.g_varchar2_table(474) := '6869732E6D61736B2E73746174652E616A617852756E6E696E67203D20747275653B0D0A202020202020202020202F2F746869732E5F6D61736B416A61785374617465427574746F6E52756E6E696E6728293B0D0A0D0A20202020202020207D2C207468';
wwv_flow_api.g_varchar2_table(475) := '6973292C0D0A2020202020202020227375636365737322202020203A20242E70726F78792820746869732E5F6765744F6E4C6F61644C6F765F5375636365737343616C6C6261636B2C20746869732C206D6F64652C207056616C756520292C0D0A202020';
wwv_flow_api.g_varchar2_table(476) := '2020202020226572726F72222020202020203A20242E70726F78792866756E6374696F6E28704A715848522C2070546578745374617475732C20704572726F725468726F776E297B0D0A0D0A20202020202020202020617065782E64656275672E6D6573';
wwv_flow_api.g_varchar2_table(477) := '7361676528746869732E435F4C4F475F4552524F522C20746869732E6C6F675072656669782C20275F6765744F6E4C6F61644C6F76272C20276572726F72272C207B0D0A20202020202020202020202027704A715848522720202020202020203A20704A';
wwv_flow_api.g_varchar2_table(478) := '715848522C0D0A202020202020202020202020277054657874537461747573272020203A2070546578745374617475732C0D0A20202020202020202020202027704572726F725468726F776E2720203A20704572726F725468726F776E20202020202020';
wwv_flow_api.g_varchar2_table(479) := '20202020200D0A202020202020202020207D293B0D0A0D0A202020202020202020206966202820746869732E5F656C656D656E7447657456616C75654C656E6768742829203E20302029207B0D0A202020202020202020202020746869732E5F6D61736B';
wwv_flow_api.g_varchar2_table(480) := '447261775461677346726F6D496E76616C696456616C75657328293B0D0A202020202020202020207D0D0A0D0A20202020202020202020746869732E5F6D61736B416A61785374617465427574746F6E5365744572726F72287B0D0A2020202020202020';
wwv_flow_api.g_varchar2_table(481) := '2020202022616464496E666F2220203A20704A715848522E726573706F6E73654A534F4E2E616464496E666F2C0D0A202020202020202020202020226572726F7222202020203A20704A715848522E726573706F6E73654A534F4E2E6572726F722C0D0A';
wwv_flow_api.g_varchar2_table(482) := '2020202020202020202020202274656368496E666F22203A20704A715848522E726573706F6E73654A534F4E2E74656368496E666F0D0A202020202020202020207D293B0D0A0D0A20202020202020202020746869732E5F6D61736B416A617853746174';
wwv_flow_api.g_varchar2_table(483) := '65427574746F6E4572726F7228293B0D0A202020202020202020200D0A20202020202020202020746869732E5F7468726F774572726F72546578742820704572726F725468726F776E20293B0D0A0D0A20202020202020207D2C2074686973292C0D0A20';
wwv_flow_api.g_varchar2_table(484) := '2020202020202022636F6D706C657465222020203A20242E70726F78792866756E6374696F6E28297B0D0A202020202020202020202F2F746869732E6D61736B2E73746174652E616A617852756E6E696E67203D2066616C73653B0D0A20202020202020';
wwv_flow_api.g_varchar2_table(485) := '2020202F2F202020202020202020200D0A20202020202020207D2C2074686973290D0A2020202020207D3B202020200D0A0D0A0D0A20202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F44454255472C20746869732E6C';
wwv_flow_api.g_varchar2_table(486) := '6F675072656669782C20275F6765744F6E4C6F61644C6F76272C202776616C7565732073656E7420746F20726574726965766520646973706C61792076616C756573272C2076616C7565732C20616A61784F7074696F6E73293B0D0A2020202020200D0A';
wwv_flow_api.g_varchar2_table(487) := '20202020746869732E6D61736B2E73746174652E786872203D20617065782E7365727665722E706C7567696E202820746869732E6F7074696F6E732E706C7567696E2E616A61784964656E7469666965722C20616A6178446174612C20616A61784F7074';
wwv_flow_api.g_varchar2_table(488) := '696F6E7320293B20200D0A20207D2C0D0A20202F2A0D0A202020202A0D0A202020202A2066756E6374696F6E206E616D653A205F6D61736B447261775461677346726F6D496E76616C696456616C7565730D0A202020202A206465736372697074696F6E';
wwv_flow_api.g_varchar2_table(489) := '20203A200D0A202020202A20706172616D733A0D0A202020202A2020202D0D0A202020202A2020202D0D0A202020202A0D0A20202A2F0D0A20205F6D61736B447261775461677346726F6D496E76616C696456616C7565733A2066756E6374696F6E2829';
wwv_flow_api.g_varchar2_table(490) := '7B0D0A20202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C362C20746869732E6C6F675072656669782C20275F6D61736B447261775461677346726F6D496E76616C696456616C756573272C207B0D0A2020';
wwv_flow_api.g_varchar2_table(491) := '2020202022617267756D656E7473223A20617267756D656E74730D0A202020207D293B0D0A0D0A202020207661722076616C756573203D20746869732E5F656C656D656E7447657456616C756528292E73706C697428746869732E435F56414C55455F53';
wwv_flow_api.g_varchar2_table(492) := '4550415241544F52293B0D0A0D0A20202020696620282076616C7565732E6C656E677468203E20302029207B0D0A202020202020666F722028766172206920696E2076616C75657329207B0D0A20202020202020202F2F5F70726F6D7074546167734164';
wwv_flow_api.g_varchar2_table(493) := '644E65773A2066756E6374696F6E282070446973706C61792C207052657475726E2C20704973457874726156616C756520297B0D0A2020202020202020746869732E5F70726F6D7074546167734164644E6577282076616C7565735B695D2C2076616C75';
wwv_flow_api.g_varchar2_table(494) := '65735B695D2C207472756520293B0D0A2020202020207D0D0A0D0A202020202020746869732E5F70726F6D7074506C616365486F6C6465724869646528293B0D0A202020200D0A202020207D0D0A20207D2C0D0A20202F2A0D0A202020202A0D0A202020';
wwv_flow_api.g_varchar2_table(495) := '202A2066756E6374696F6E206E616D653A205F706F70757053656C656374656447657456616C75654172720D0A202020202A206465736372697074696F6E20203A200D0A202020202A20706172616D733A0D0A202020202A2020202D0D0A202020202A20';
wwv_flow_api.g_varchar2_table(496) := '20202D0D0A202020202A0D0A20202A2F20200D0A20205F706F70757053656C656374656447657456616C75654172723A2066756E6374696F6E28297B0D0A20202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C455645';
wwv_flow_api.g_varchar2_table(497) := '4C392C20746869732E6C6F675072656669782C20275F706F70757053656C656374656447657456616C7565417272272C207B0D0A20202020202022617267756D656E7473223A20617267756D656E74730D0A202020207D293B0D0A0D0A20202020766172';
wwv_flow_api.g_varchar2_table(498) := '20617272203D205B5D3B0D0A0D0A20202020666F7220282076617220693D303B2069203C20746869732E706F7075702E73746174652E73656C65637465642E6C656E6774683B20692B2B2029207B0D0A202020202020696620282021746869732E706F70';
wwv_flow_api.g_varchar2_table(499) := '75702E73746174652E73656C65637465645B695D2E6973415045584E756C6C56616C75652029207B0D0A20202020202020206172722E707573682820746869732E706F7075702E73746174652E73656C65637465645B695D2E76616C756520293B20200D';
wwv_flow_api.g_varchar2_table(500) := '0A2020202020207D0D0A2020202020200D0A202020207D0D0A0D0A20202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F706F70757053656C6563746564';
wwv_flow_api.g_varchar2_table(501) := '47657456616C7565417272272C20617272293B0D0A2020202072657475726E206172723B0D0A20207D2C0D0A20202F2A0D0A202020202A0D0A202020202A2066756E6374696F6E206E616D653A205F706F707570416A61784765744F6E6C7953656C6563';
wwv_flow_api.g_varchar2_table(502) := '7465640D0A202020202A206465736372697074696F6E20203A200D0A202020202A20706172616D733A0D0A202020202A2020202D0D0A202020202A2020202D0D0A202020202A0D0A20202A2F20200D0A20205F706F707570416A61784765744F6E6C7953';
wwv_flow_api.g_varchar2_table(503) := '656C65637465643A2066756E6374696F6E28297B0D0A20202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C362C20746869732E6C6F675072656669782C20275F706F707570416A61784765744F6E6C795365';
wwv_flow_api.g_varchar2_table(504) := '6C6563746564272C207B0D0A20202020202022617267756D656E7473223A20617267756D656E74732C0D0A20202020202022746172676574222020203A20746869732E656C656D656E742E6765742830290D0A202020207D293B0D0A0D0A202020207661';
wwv_flow_api.g_varchar2_table(505) := '720D0A202020202020616A617844617461203D207B0D0A202020202020202022783031223A20274745544F4E4C5953454C4543544544272C202020202020202020202020202020202F2F206D6F64650D0A202020202020202022663031223A2074686973';
wwv_flow_api.g_varchar2_table(506) := '2E5F706F70757053656C656374656447657456616C756541727228292C202F2F2073656C65637465642076616C7565730D0A202020202020202022706167654974656D73223A20746869732E5F616A6178476574506167654974656D732829202020202F';
wwv_flow_api.g_varchar2_table(507) := '2F206974656D7320746F2062652073656E740D0A2020202020207D2C0D0A202020202020616A61784F7074696F6E73203D207B0D0A2020202020202020227461726765742220202020203A20746869732E656C656D656E742E6765742830292C0D0A2020';
wwv_flow_api.g_varchar2_table(508) := '202020202020226265666F726553656E6422203A20242E70726F787928746869732E5F706F707570416A61784265666F726553656E642C2074686973292C0D0A2020202020202020227375636365737322202020203A20242E70726F787928746869732E';
wwv_flow_api.g_varchar2_table(509) := '5F706F707570416A6178537563636573732C2020202074686973292C0D0A2020202020202020226572726F72222020202020203A20242E70726F787928746869732E5F706F707570416A61784572726F722C20202020202074686973292C0D0A20202020';
wwv_flow_api.g_varchar2_table(510) := '2020202022636F6D706C657465222020203A20242E70726F787928746869732E5F706F707570416A6178436F6D706C6574652C20202074686973290D0A2020202020207D3B0D0A0D0A20202020746869732E706F7075702E73746174652E786872203D20';
wwv_flow_api.g_varchar2_table(511) := '617065782E7365727665722E706C7567696E202820746869732E6F7074696F6E732E706C7567696E2E616A61784964656E7469666965722C20616A6178446174612C20616A61784F7074696F6E7320293B0D0A20207D2C0D0A20202F2A0D0A202020202A';
wwv_flow_api.g_varchar2_table(512) := '0D0A202020202A2066756E6374696F6E206E616D653A205F706F707570416A6178506572666F726D0D0A202020202A206465736372697074696F6E20203A200D0A202020202A20706172616D733A0D0A202020202A2020202D0D0A202020202A2020202D';
wwv_flow_api.g_varchar2_table(513) := '0D0A202020202A0D0A20202A2F20200D0A20205F706F707570416A6178506572666F726D3A2066756E6374696F6E282070506167652C2070536F72744279436F6C756D6E4964782C2070446972656374696F6E2C2070536561726368537472696E672C20';
wwv_flow_api.g_varchar2_table(514) := '70536561726368436F6C756D6E20297B0D0A20202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F706F707570416A6178506572666F726D272C207B0D0A';
wwv_flow_api.g_varchar2_table(515) := '20202020202022617267756D656E7473223A20617267756D656E74732C0D0A202020202020227050616765223A2070506167652C0D0A2020202020202270536F72744279436F6C756D6E496478223A2070536F72744279436F6C756D6E4964782C0D0A20';
wwv_flow_api.g_varchar2_table(516) := '20202020202270446972656374696F6E223A2070446972656374696F6E2C0D0A2020202020202270536561726368537472696E67223A2070536561726368537472696E672C0D0A2020202020202270536561726368436F6C756D6E223A20705365617263';
wwv_flow_api.g_varchar2_table(517) := '68436F6C756D6E0D0A202020207D293B0D0A0D0A202020207661720D0A202020202020736561726368537472696E67203D2070536561726368537472696E672C0D0A202020202020616A617844617461203D207B0D0A2020202020202020227061676549';
wwv_flow_api.g_varchar2_table(518) := '74656D73223A20746869732E5F616A6178476574506167654974656D7328292C0D0A202020202020202022783031223A2027504F505550272C202020202020202020202020202020202020202020202020202F2F206D6F64650D0A202020202020202022';
wwv_flow_api.g_varchar2_table(519) := '783032223A20746869732E5F706F707570476574526F77735065725061676528292C20202020202F2F20726F77732070657220706167650D0A202020202020202022783033223A2070536561726368537472696E672C2020202020202020202020202020';
wwv_flow_api.g_varchar2_table(520) := '20202020202F2F2073656172636820737472696E670D0A202020202020202022783034223A207050616765203D3D20756E646566696E6564203F2031203A2070506167652C20202F2F20706167650D0A202020202020202022783035223A2070536F7274';
wwv_flow_api.g_varchar2_table(521) := '4279436F6C756D6E4964782C202020202020202020202020202020202F2F200D0A202020202020202022783036223A2070446972656374696F6E2C202020202020202020202020202020202020202020202F2F200D0A202020202020202022783037223A';
wwv_flow_api.g_varchar2_table(522) := '2070536561726368436F6C756D6E20202020202020202020202020202020202020202F2F200D0A2020202020207D2C0D0A0D0A202020202020616A61784F7074696F6E73203D207B0D0A2020202020202020227461726765742220202020203A20746869';
wwv_flow_api.g_varchar2_table(523) := '732E656C656D656E742E6765742830292C0D0A2020202020202020226265666F726553656E6422203A20242E70726F787928746869732E5F706F707570416A61784265666F726553656E642C2074686973292C0D0A202020202020202022737563636573';
wwv_flow_api.g_varchar2_table(524) := '7322202020203A20242E70726F787928746869732E5F706F707570416A6178537563636573732C2074686973292C0D0A2020202020202020226572726F72222020202020203A20242E70726F787928746869732E5F706F707570416A61784572726F722C';
wwv_flow_api.g_varchar2_table(525) := '2074686973292C0D0A202020202020202022636F6D706C657465222020203A20242E70726F787928746869732E5F706F707570416A6178436F6D706C6574652C2074686973290D0A2020202020207D3B0D0A0D0A202020206966202820746869732E706F';
wwv_flow_api.g_varchar2_table(526) := '7075702E73746174652E616A617852756E6E696E672029207B0D0A202020202020746869732E5F706F707570416A617841626F727428293B0D0A20202020202073657454696D656F75742820242E70726F78792820746869732E5F706F707570416A6178';
wwv_flow_api.g_varchar2_table(527) := '506572666F726D2C20746869732C2070506167652C2070536F72744279436F6C756D6E4964782C2070446972656374696F6E2C2070536561726368537472696E672C2070536561726368436F6C756D6E20292C2033303020293B0D0A2020202020207265';
wwv_flow_api.g_varchar2_table(528) := '7475726E20766F69642830293B0D0A202020207D0D0A0D0A202020202F2F69742077696C6C2062652073657420616761696E20616674657220616A61782077696C6C20737563636565640D0A20202020746869732E706F7075702E73746174652E736561';
wwv_flow_api.g_varchar2_table(529) := '726368537472696E67202020202020202020203D2070536561726368537472696E673B0D0A20202020746869732E706F7075702E73746174652E6C6173744665746368656450616765202020202020203D207050616765203D3D20756E646566696E6564';
wwv_flow_api.g_varchar2_table(530) := '203F2031203A2070506167653B0D0A20202020746869732E706F7075702E73746174652E736F72746564436F6C756D6E496478202020202020203D2070536F72744279436F6C756D6E4964783B0D0A20202020746869732E706F7075702E73746174652E';
wwv_flow_api.g_varchar2_table(531) := '736F72746564436F6C756D6E446972656374696F6E203D2070446972656374696F6E3B0D0A20202020746869732E706F7075702E73746174652E736561726368436F6C756D6E496478202020202020203D2070536561726368436F6C756D6E3B0D0A0D0A';
wwv_flow_api.g_varchar2_table(532) := '20202020746869732E706F7075702E73746174652E786872203D20617065782E7365727665722E706C7567696E202820746869732E6F7074696F6E732E706C7567696E2E616A61784964656E7469666965722C20616A6178446174612C20616A61784F70';
wwv_flow_api.g_varchar2_table(533) := '74696F6E7320293B0D0A20207D2C0D0A20202F2A0D0A202020202A0D0A202020202A2066756E6374696F6E206E616D653A205F706F707570416A61784265666F726553656E640D0A202020202A206465736372697074696F6E20203A200D0A202020202A';
wwv_flow_api.g_varchar2_table(534) := '20706172616D733A0D0A202020202A2020202D0D0A202020202A2020202D0D0A202020202A0D0A20202A2F20200D0A20205F706F707570416A61784265666F726553656E643A2066756E6374696F6E2820704A715848522C207053657474696E67732029';
wwv_flow_api.g_varchar2_table(535) := '207B0D0A20202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F706F707570416A61784265666F726553656E64272C207B0D0A2020202020202261726775';
wwv_flow_api.g_varchar2_table(536) := '6D656E7473223A20617267756D656E74732C0D0A20202020202022704A71584852223A20704A715848522C0D0A202020202020227053657474696E6773223A207053657474696E67730D0A202020207D293B0D0A0D0A20202020746869732E706F707570';
wwv_flow_api.g_varchar2_table(537) := '2E73746174652E616A617852756E6E696E67203D20747275653B0D0A20202020746869732E706F7075702E636F6E74656E745461626C65203D20756E646566696E65643B0D0A20202020746869732E706F7075702E626F64792E616464436C6173732827';
wwv_flow_api.g_varchar2_table(538) := '736561726368696E6727293B0D0A0D0A202020206966202820746869732E706F7075702E73746174652E697356697369626C6520262620746869732E706F7075702E686561646572416374696F6E436F6E7461696E657220213D20756E646566696E6564';
wwv_flow_api.g_varchar2_table(539) := '29207B0D0A202020202020746869732E5F706F7075705265706F72744865616465725769646765744869646528293B20200D0A202020207D0D0A0D0A20202020746869732E5F706F7075705265706F727452656E646572536561726368696E672830293B';
wwv_flow_api.g_varchar2_table(540) := '0D0A20207D2C0D0A20202F2A0D0A202020202A0D0A202020202A2066756E6374696F6E206E616D653A205F706F707570416A61784461746146696E64496E646578427952657475726E56616C75650D0A202020202A206465736372697074696F6E20203A';
wwv_flow_api.g_varchar2_table(541) := '200D0A202020202A20706172616D733A0D0A202020202A2020202D0D0A202020202A2020202D0D0A202020202A0D0A20202A2F20200D0A20205F706F707570416A61784461746146696E64496E646578427952657475726E56616C75653A2066756E6374';
wwv_flow_api.g_varchar2_table(542) := '696F6E282070446174612C207052657475726E56616C75652029207B0D0A20202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F706F707570416A617844';
wwv_flow_api.g_varchar2_table(543) := '61746146696E64496E646578427952657475726E56616C7565272C207B0D0A20202020202022617267756D656E7473223A20617267756D656E74732C0D0A202020202020227044617461223A2070446174612C0D0A202020202020227052657475726E56';
wwv_flow_api.g_varchar2_table(544) := '616C7565223A207052657475726E56616C75650D0A202020207D293B202020200D0A0D0A20202020666F7220282076617220693D303B2069203C2070446174612E646174612E6C656E6774683B20692B2B2029207B0D0A20202020202069662028207044';
wwv_flow_api.g_varchar2_table(545) := '6174612E646174615B695D2E52203D3D207052657475726E56616C75652029207B0D0A2020202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F70';
wwv_flow_api.g_varchar2_table(546) := '6F707570416A61784461746146696E64496E646578427952657475726E56616C7565272C20277052657475726E56616C756520666F756E6420617420696E64657820272B69293B0D0A202020202020202072657475726E20693B0D0A2020202020207D0D';
wwv_flow_api.g_varchar2_table(547) := '0A202020207D0D0A202020200D0A20202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F5741524E494E472C20746869732E6C6F675072656669782C20275F706F707570416A61784461746146696E64496E646578427952';
wwv_flow_api.g_varchar2_table(548) := '657475726E56616C7565272C20277052657475726E56616C7565206E6F7420666F756E6427293B0D0A2020202072657475726E202D313B0D0A20207D2C0D0A20202F2A0D0A202020202A0D0A202020202A2066756E6374696F6E206E616D653A205F706F';
wwv_flow_api.g_varchar2_table(549) := '707570457874656E6444617461576974684E756C6C56616C7565730D0A202020202A206465736372697074696F6E20203A200D0A202020202A20706172616D733A0D0A202020202A2020202D0D0A202020202A2020202D0D0A202020202A0D0A20202A2F';
wwv_flow_api.g_varchar2_table(550) := '20200D0A20205F706F707570457874656E6444617461576974684E756C6C56616C7565733A2066756E6374696F6E2820704461746120297B0D0A20202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20';
wwv_flow_api.g_varchar2_table(551) := '746869732E6C6F675072656669782C20275F706F707570457874656E6444617461576974684E756C6C56616C756573272C207B0D0A20202020202022617267756D656E7473223A20617267756D656E74732C0D0A202020202020227044617461223A2070';
wwv_flow_api.g_varchar2_table(552) := '446174610D0A202020207D293B0D0A0D0A202020207661720D0A202020202020697353656C6563746564203D2066616C73653B0D0A0D0A20202020666F72202876617220693D303B2069203C20746869732E706F7075702E73746174652E73656C656374';
wwv_flow_api.g_varchar2_table(553) := '65642E6C656E6774683B20692B2B297B0D0A2020202020206966202820746869732E706F7075702E73746174652E73656C65637465645B695D2E6973415045584E756C6C56616C75652029207B0D0A2020202020202020697353656C6563746564203D20';
wwv_flow_api.g_varchar2_table(554) := '747275653B0D0A2020202020202020627265616B3B0D0A2020202020207D0D0A202020207D0D0A0D0A2020202070446174612E646174612E756E7368696674287B0D0A2020202020202252223A20746869732E5F6765744974656D4C4F564E756C6C5661';
wwv_flow_api.g_varchar2_table(555) := '6C756528292C0D0A2020202020202244223A20746869732E5F6765744974656D4C4F564E756C6C5465787428292C0D0A202020202020226973415045584E756C6C56616C7565223A20747275652C0D0A2020202020202273656C6563746564223A206973';
wwv_flow_api.g_varchar2_table(556) := '53656C65637465640D0A202020207D293B0D0A0D0A2020202072657475726E2070446174613B0D0A20207D2C0D0A20202F2A0D0A202020202A0D0A202020202A2066756E6374696F6E206E616D653A205F706F707570457874656E644461746157697468';
wwv_flow_api.g_varchar2_table(557) := '457874726156616C7565730D0A202020202A206465736372697074696F6E20203A200D0A202020202A20706172616D733A0D0A202020202A2020202D0D0A202020202A2020202D0D0A202020202A0D0A20202A2F20200D0A20205F706F70757045787465';
wwv_flow_api.g_varchar2_table(558) := '6E644461746157697468457874726156616C7565733A2066756E6374696F6E282070446174612029207B0D0A20202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F67507265666978';
wwv_flow_api.g_varchar2_table(559) := '2C20275F706F707570457874656E644461746157697468457874726156616C756573272C207B0D0A20202020202022617267756D656E7473223A20617267756D656E74732C0D0A202020202020227044617461223A2070446174610D0A202020207D293B';
wwv_flow_api.g_varchar2_table(560) := '0D0A0D0A20202020766172200D0A2020202020206964782C0D0A2020202020206E65774172726179203D20242E657874656E6428205B5D2C2070446174612E6461746120292C0D0A2020202020206E6577526F774F626A6563743B0D0A0D0A2020202066';
wwv_flow_api.g_varchar2_table(561) := '6F7220282076617220693D303B2069203C20746869732E706F7075702E73746174652E73656C65637465642E6C656E6774683B20692B2B2029207B0D0A202020202020696478203D20746869732E5F706F707570416A61784461746146696E64496E6465';
wwv_flow_api.g_varchar2_table(562) := '78427952657475726E56616C7565282070446174612C20746869732E706F7075702E73746174652E73656C65637465645B695D2E76616C756520293B0D0A0D0A2020202020206966202820696478203D3D202D312029207B0D0A0D0A2020202020202020';
wwv_flow_api.g_varchar2_table(563) := '6E6577526F774F626A656374203D207B0D0A202020202020202020202252223A20746869732E706F7075702E73746174652E73656C65637465645B695D2E76616C75652C0D0A202020202020202020202244223A20746869732E706F7075702E73746174';
wwv_flow_api.g_varchar2_table(564) := '652E73656C65637465645B695D2E646973706C61792C0D0A202020202020202020202273656C6563746564223A20747275652C0D0A20202020202020202020226578747261223A20747275650D0A20202020202020207D3B0D0A0D0A2020202020202020';
wwv_flow_api.g_varchar2_table(565) := '69662028206E6577526F774F626A6563742E52203D3D20746869732E5F6765744974656D4C4F564E756C6C56616C756528292029207B0D0A202020202020202020202F2F6E756C6C2076616C75650D0A202020202020202020206E6577526F774F626A65';
wwv_flow_api.g_varchar2_table(566) := '63742E6578747261203D2066616C73653B0D0A202020202020202020206E6577526F774F626A6563742E6973415045584E756C6C56616C7565203D20747275653B0D0A20202020202020207D0D0A0D0A20202020202020206E657741727261792E756E73';
wwv_flow_api.g_varchar2_table(567) := '68696674286E6577526F774F626A656374290D0A2020202020207D0D0A202020207D0D0A0D0A2020202070446174612E64617461203D206E657741727261793B0D0A0D0A2020202072657475726E2070446174613B0D0A20207D2C0D0A20202F2A0D0A20';
wwv_flow_api.g_varchar2_table(568) := '2020202A0D0A202020202A2066756E6374696F6E206E616D653A205F706F7075705265706F727452656E646572536561726368696E670D0A202020202A206465736372697074696F6E20203A200D0A202020202A20706172616D733A0D0A202020202A20';
wwv_flow_api.g_varchar2_table(569) := '20202D0D0A202020202A2020202D0D0A202020202A0D0A20202A2F0D0A20205F706F7075705265706F727452656E646572536561726368696E673A2066756E6374696F6E28297B0D0A20202020617065782E64656275672E6D6573736167652874686973';
wwv_flow_api.g_varchar2_table(570) := '2E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F706F7075705265706F727452656E646572536561726368696E67272C207B0D0A20202020202022617267756D656E7473223A20617267756D656E74730D0A202020207D';
wwv_flow_api.g_varchar2_table(571) := '293B0D0A0D0A20202020766172200D0A2020202020207365617263685465726D203D20746869732E706F7075702E73746174652E736561726368537472696E672C0D0A202020202020736561726368696E6754657874203D20746869732E435F504F5055';
wwv_flow_api.g_varchar2_table(572) := '505F544558545F534541524348494E472E7265706C61636528272530272C207365617263685465726D292C0D0A2020202020206D61736B203D202428273C64697620636C6173733D22736561726368696E67466F72526573756C74734D61736B223E3C2F';
wwv_flow_api.g_varchar2_table(573) := '6469763E27292C0D0A202020202020636F6E7461696E6572203D20242827202020202020202020202020202020202020202020202020202020202020202020272B0D0A2020202020202020273C64697620636C6173733D22736561726368696E67466F72';
wwv_flow_api.g_varchar2_table(574) := '526573756C7473223E202020202020202020202020272B0D0A20202020202020202720203C64697620636C6173733D2269636F6E223E20202020202020202020202020202020202020202020202020272B0D0A202020202020202027202020203C737061';
wwv_flow_api.g_varchar2_table(575) := '6E20636C6173733D2266612066612D726566726573682066612D616E696D2D7370696E223E3C2F7370616E3E20272B0D0A20202020202020202720203C2F6469763E20202020202020202020202020202020202020202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(576) := '202020272B0D0A20202020202020202720203C64697620636C6173733D2274657874223E272B736561726368696E67546578742B273C2F6469763E272B0D0A2020202020202020273C2F6469763E20202020202020202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(577) := '2020202020202020202020202020202020272B0D0A202020202020202027270D0A202020202020293B0D0A0D0A202020202F2F746869732E706F7075702E626F64792E656D70747928292E617070656E6428636F6E7461696E6572293B0D0A2020202074';
wwv_flow_api.g_varchar2_table(578) := '6869732E706F7075702E626F64790D0A2020202020202E617070656E64286D61736B290D0A2020202020202E617070656E6428636F6E7461696E6572293B0D0A0D0A202020202F2F746869732E5F706F7075704865616465724869646528293B0D0A2020';
wwv_flow_api.g_varchar2_table(579) := '2020746869732E5F706F70757048656164657244697361626C6528293B0D0A202020202F2F746869732E5F706F707570466F6F7465724869646528293B0D0A20202020746869732E5F706F707570466F6F74657244697361626C6528293B0D0A20202020';
wwv_flow_api.g_varchar2_table(580) := '2F2F746869732E706F707570496E666F726D6174696F6E4869646528293B0D0A20202020746869732E5F706F70757041646A757374426F647948656967687428293B0D0A20207D2C0D0A20202F2A0D0A202020202A0D0A202020202A2066756E6374696F';
wwv_flow_api.g_varchar2_table(581) := '6E206E616D653A205F706F707570416A6178537563636573730D0A202020202A206465736372697074696F6E20203A200D0A202020202A20706172616D733A0D0A202020202A2020202D0D0A202020202A2020202D0D0A202020202A0D0A20202A2F0D0A';
wwv_flow_api.g_varchar2_table(582) := '20205F706F707570416A6178537563636573733A2066756E6374696F6E282070446174612C2070546578745374617475732C20704A71584852297B0D0A20202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C';
wwv_flow_api.g_varchar2_table(583) := '392C20746869732E6C6F675072656669782C20275F706F707570416A617853756363657373272C207B0D0A20202020202022617267756D656E7473223A20617267756D656E74732C0D0A202020202020227044617461223A2070446174612C0D0A202020';
wwv_flow_api.g_varchar2_table(584) := '202020227054657874537461747573223A2070546578745374617475732C0D0A20202020202022704A71584852223A20704A715848520D0A202020207D293B0D0A0D0A20202020766172206D657373616765203D20746869732E435F504F5055505F5445';
wwv_flow_api.g_varchar2_table(585) := '58545F46494C54455245445F494E464F0D0A202020202020202020202E7265706C61636528272530272C2070446174612E746F74616C436F756E74290D0A202020202020202020202E7265706C61636528272531272C2070446174612E73656172636853';
wwv_flow_api.g_varchar2_table(586) := '7472696E6729202B20746869732E435F504F5055505F544558545F434C4541525F46494C544552494E473B0D0A0D0A20202020746869732E706F707570496E666F726D6174696F6E4869646528293B0D0A0D0A20202020746869732E706F7075702E7374';
wwv_flow_api.g_varchar2_table(587) := '6174652E616A617853746174757320202020202020202020202020202020203D20746869732E435F414A41585F5354415455535F535543434553533B0D0A0D0A20202020746869732E706F7075702E73746174652E736F72746564436F6C756D6E446972';
wwv_flow_api.g_varchar2_table(588) := '656374696F6E2020202020203D2070446174612E736F72744279436F6C756D6E446972656374696F6E3B0D0A20202020746869732E706F7075702E73746174652E736F72746564436F6C756D6E4964782020202020202020202020203D2070446174612E';
wwv_flow_api.g_varchar2_table(589) := '736F72744279436F6C756D6E4964783B0D0A20202020746869732E706F7075702E73746174652E6C61737446657463686564506167652020202020202020202020203D2070446174612E726571756573746564506167653B0D0A20202020746869732E70';
wwv_flow_api.g_varchar2_table(590) := '6F7075702E73746174652E736561726368537472696E672020202020202020202020202020203D2070446174612E736561726368537472696E673B0D0A20202020746869732E706F7075702E73746174652E736561726368436F6C756D6E496478202020';
wwv_flow_api.g_varchar2_table(591) := '2020202020202020203D2070446174612E736561726368436F6C756D6E4964783B0D0A20202020746869732E706F7075702E73746174652E616A617844617461546F74616C436F756E742020202020202020203D2070446174612E746F74616C436F756E';
wwv_flow_api.g_varchar2_table(592) := '743B0D0A0D0A20202020746869732E706F7075702E73746174652E616A617843757272656E74506167654461746120202020202020203D20746869732E5F64617461457874656E6453656C656374656446726F6D41727261794F664F626A656374732870';
wwv_flow_api.g_varchar2_table(593) := '446174612C20746869732E706F7075702E73746174652E73656C6563746564292E646174613B0D0A20202020746869732E706F7075702E73746174652E616A617843757272656E7450616765526F776E756D5374617274203D2070446174612E726F776E';
wwv_flow_api.g_varchar2_table(594) := '756D53746172743B0D0A20202020746869732E706F7075702E73746174652E616A617843757272656E7450616765526F776E756D456E642020203D2070446174612E726F776E756D456E643B0D0A0D0A20202020696620282070446174612E7265717565';
wwv_flow_api.g_varchar2_table(595) := '7374203D3D20274745544F4E4C5953454C4543544544272029207B0D0A2020202020207044617461203D20746869732E5F706F707570457874656E644461746157697468457874726156616C7565732820704461746120293B2020202020200D0A202020';
wwv_flow_api.g_varchar2_table(596) := '202020746869732E706F7075702E73746174652E616A617853656C656374656444617461203D20746869732E706F7075702E73746174652E616A617843757272656E7450616765446174613B0D0A202020202020746869732E5F706F707570526F777350';
wwv_flow_api.g_varchar2_table(597) := '6572506167654869646528293B0D0A202020202020746869732E5F706F707570506167696E6174696F6E4869646528293B0D0A202020207D0D0A20202020656C736520696620282070446174612E72657175657374203D3D2027504F505550272029207B';
wwv_flow_api.g_varchar2_table(598) := '0D0A202020202020746869732E5F706F707570526F77735065725061676553686F7728293B0D0A202020202020746869732E5F706F707570506167696E6174696F6E53686F7728293B0D0A0D0A202020202020696620282070446174612E736561726368';
wwv_flow_api.g_varchar2_table(599) := '537472696E6720213D206E756C6C202626202070446174612E646174612E6C656E677468203E20302029207B0D0A2020202020202020746869732E5F706F707570496E666F726D6174696F6E417070656E6428206D6573736167652C20746869732E435F';
wwv_flow_api.g_varchar2_table(600) := '504F5055505F544558545F46494C54455245445F494E464F293B20200D0A2020202020207D0D0A0D0A2020202020202F2F68616E646C652041504558204C4F56206E756C6C2076616C75650D0A20202020202069662028200D0A20202020202020207468';
wwv_flow_api.g_varchar2_table(601) := '69732E706F7075702E73746174652E6C6173744665746368656450616765203D3D2031200D0A202020202020202026262070446174612E736561726368537472696E67203D3D206E756C6C0D0A2020202020202020262620746869732E6F7074696F6E73';
wwv_flow_api.g_varchar2_table(602) := '2E6974656D2E6C6F765F646973706C61795F6E756C6C0D0A20202020202029207B0D0A20202020202020207044617461203D20746869732E5F706F707570457874656E6444617461576974684E756C6C56616C7565732820704461746120293B0D0A2020';
wwv_flow_api.g_varchar2_table(603) := '202020207D0D0A202020207D0D0A0D0A20202020746869732E5F706F7075705265706F727452656E6465722820704461746120293B0D0A0D0A202020202F2F6966207468657265206973206E6F2073656172636820737472696E6720636C65617220676C';
wwv_flow_api.g_varchar2_table(604) := '6F62616C20736561726368206974656D0D0A20202020696620282021746869732E706F7075702E73746174652E736561726368537472696E672026262021746869732E706F7075702E73746174652E736561726368436F6C756D6E4964782029207B0D0A';
wwv_flow_api.g_varchar2_table(605) := '202020202020746869732E706F7075702E7365617263682E76616C286E756C6C293B0D0A202020207D0D0A0D0A20202020696620282070446174612E717565727920213D20756E646566696E65642029207B0D0A202020202020746869732E5F77726974';
wwv_flow_api.g_varchar2_table(606) := '655175657279546F436F6E736F6C65282070446174612E717565727920293B0D0A202020207D0D0A0D0A20202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20';
wwv_flow_api.g_varchar2_table(607) := '275F706F707570416A617853756363657373272C20277374617465272C20746869732E706F7075702E7374617465293B0D0A20207D2C0D0A20202F2A0D0A202020202A0D0A202020202A2066756E6374696F6E206E616D653A205F706F707570416A6178';
wwv_flow_api.g_varchar2_table(608) := '447261774572726F720D0A202020202A206465736372697074696F6E20203A200D0A202020202A20706172616D733A0D0A202020202A2020202D0D0A202020202A2020202D0D0A202020202A0D0A20202A2F0D0A20205F706F707570416A617844726177';
wwv_flow_api.g_varchar2_table(609) := '4572726F723A2066756E6374696F6E282070416A6178526573706F6E736520297B0D0A20202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F706F707570';
wwv_flow_api.g_varchar2_table(610) := '416A6178447261774572726F72272C207B0D0A20202020202022617267756D656E7473223A20617267756D656E74732C0D0A2020202020202270416A6178526573706F6E7365223A2070416A6178526573706F6E73650D0A202020207D293B0D0A0D0A20';
wwv_flow_api.g_varchar2_table(611) := '202020766172200D0A202020202020636F6E7461696E65722020203D202428273C64697620636C6173733D22616A61784572726F72223E3C2F6469763E27292C0D0A2020202020206469764572726F72202020203D202428273C64697620636C6173733D';
wwv_flow_api.g_varchar2_table(612) := '226572726F72223E3C2F6469763E27292C0D0A2020202020206469764D65737361676520203D202428273C64697620636C6173733D226D657373616765223E3C2F6469763E27292C0D0A20202020202064697654656368496E666F203D202428273C6469';
wwv_flow_api.g_varchar2_table(613) := '763E3C2F6469763E27292C0D0A202020202020707265203D202428273C7072653E3C2F7072653E27293B0D0A0D0A202020206966202820746869732E706C7567696E53657474696E67732E697344656275674F6E2029207B0D0A202020202020666F7220';
wwv_flow_api.g_varchar2_table(614) := '2876617220693D303B2069203C2070416A6178526573706F6E73652E74656368496E666F2E6C656E6774683B20692B2B29207B0D0A20202020202020207072652E617070656E64282070416A6178526573706F6E73652E74656368496E666F5B695D2E6E';
wwv_flow_api.g_varchar2_table(615) := '616D652B273A20272B70416A6178526573706F6E73652E74656368496E666F5B695D2E76616C756520293B0D0A20202020202020207072652E617070656E6428225C6E22293B0D0A2020202020207D0D0A202020207D0D0A20202020656C7365207B0D0A';
wwv_flow_api.g_varchar2_table(616) := '2020202020207072652E617070656E6428746869732E435F4552524F525F44454255475F4F4646293B0D0A202020207D0D0A0D0A202020206469764D6573736167652E617070656E64282070416A6178526573706F6E73652E6572726F7220293B0D0A20';
wwv_flow_api.g_varchar2_table(617) := '2020206469764572726F722E617070656E64282070416A6178526573706F6E73652E616464496E666F20293B0D0A0D0A2020202064697654656368496E666F2E617070656E6428707265293B0D0A0D0A20202020636F6E7461696E65720D0A2020202020';
wwv_flow_api.g_varchar2_table(618) := '202E617070656E64286469764D657373616765290D0A2020202020202E617070656E64286469764572726F72290D0A2020202020202E617070656E642864697654656368496E666F293B0D0A0D0A20202020746869732E706F7075702E626F64792E656D';
wwv_flow_api.g_varchar2_table(619) := '70747928292E617070656E6428636F6E7461696E6572293B0D0A20202020746869732E5F706F707570506167696E6174696F6E4869646528293B0D0A20202020746869732E5F706F707570526F7773506572506167654869646528293B0D0A20207D2C0D';
wwv_flow_api.g_varchar2_table(620) := '0A20202F2A0D0A202020202A0D0A202020202A2066756E6374696F6E206E616D653A205F706F707570416A61784572726F720D0A202020202A206465736372697074696F6E20203A200D0A202020202A20706172616D733A0D0A202020202A2020202D0D';
wwv_flow_api.g_varchar2_table(621) := '0A202020202A2020202D0D0A202020202A0D0A20202A2F20200D0A20205F706F707570416A61784572726F723A2066756E6374696F6E2820704A715848522C2070546578745374617475732C20704572726F725468726F776E20297B0D0A202020206170';
wwv_flow_api.g_varchar2_table(622) := '65782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F706F707570416A61784572726F72272C207B0D0A20202020202022617267756D656E7473223A20617267756D656E';
wwv_flow_api.g_varchar2_table(623) := '74732C0D0A20202020202022704A71584852223A20704A715848522C0D0A202020202020227054657874537461747573223A2070546578745374617475732C0D0A20202020202022704572726F725468726F776E223A20704572726F725468726F776E0D';
wwv_flow_api.g_varchar2_table(624) := '0A202020207D293B0D0A0D0A202020207661722061727261793B0D0A0D0A202020206966202820704A715848522E73746174757354657874203D3D202761626F7274272029207B0D0A202020202020617065782E64656275672E6D657373616765287468';
wwv_flow_api.g_varchar2_table(625) := '69732E435F4C4F475F5741524E494E472C20746869732E6C6F675072656669782C20275F706F707570416A61784572726F72272C2027414A41582063616C6C2061626F727465642127293B0D0A20202020202072657475726E20766F69642830293B0D0A';
wwv_flow_api.g_varchar2_table(626) := '202020207D0D0A0D0A20202020746869732E706F7075702E73746174652E616A617853746174757320202020202020202020203D20746869732E435F414A41585F5354415455535F4552524F523B0D0A20202020746869732E706F7075702E7374617465';
wwv_flow_api.g_varchar2_table(627) := '2E616A61784461746146657463686564436F756E74203D20756E646566696E65643B0D0A20202020746869732E706F7075702E73746174652E616A617844617461546F74616C436F756E742020203D20756E646566696E65643B0D0A0D0A202020207468';
wwv_flow_api.g_varchar2_table(628) := '69732E5F706F7075704865616465724869646528293B0D0A20202020746869732E5F706F707570466F6F7465724869646528293B0D0A0D0A202020206966202820704A715848522E726573706F6E73654A534F4E2E74656368496E666F20213D20756E64';
wwv_flow_api.g_varchar2_table(629) := '6566696E65642029207B0D0A2020202020200D0A202020202020746869732E5F706F707570416A6178447261774572726F722820704A715848522E726573706F6E73654A534F4E20293B0D0A0D0A202020202020666F72202876617220693D303B206920';
wwv_flow_api.g_varchar2_table(630) := '3C20704A715848522E726573706F6E73654A534F4E2E74656368496E666F2E6C656E6774683B20692B2B2029207B0D0A2020202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C';
wwv_flow_api.g_varchar2_table(631) := '6F675072656669782C2027504C2F53514C272C20704A715848522E726573706F6E73654A534F4E2E74656368496E666F5B695D2E6E616D652C20704A715848522E726573706F6E73654A534F4E2E74656368496E666F5B695D2E76616C7565293B0D0A0D';
wwv_flow_api.g_varchar2_table(632) := '0A20202020202020206966202820704A715848522E726573706F6E73654A534F4E2E74656368496E666F5B695D2E76616C75652E696E6465784F6628275C6E2729203E202D312029207B0D0A202020202020202020206172726179203D20704A71584852';
wwv_flow_api.g_varchar2_table(633) := '2E726573706F6E73654A534F4E2E74656368496E666F5B695D2E76616C75652E73706C697428275C6E27293B0D0A0D0A20202020202020202020666F722028207661722079203D20303B2079203C2061727261792E6C656E6774683B20792B2B2029207B';
wwv_flow_api.g_varchar2_table(634) := '0D0A202020202020202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C2027504C2F53514C272C20704A715848522E726573706F6E73654A534F4E2E7465';
wwv_flow_api.g_varchar2_table(635) := '6368496E666F5B695D2E6E616D652C2061727261795B795D293B2020202020202020202020200D0A202020202020202020207D0D0A20202020202020207D0D0A2020202020207D2020202020200D0A202020207D0D0A0D0A20202020746869732E5F706F';
wwv_flow_api.g_varchar2_table(636) := '707570416A6178436F6D706C65746528293B0D0A20202020746869732E5F747269676765724576656E7428277061656C695F706F7075705F6572726F72272C20746869732E5F706F7075704765744576656E74446174612829293B0D0A20202020746869';
wwv_flow_api.g_varchar2_table(637) := '732E5F7468726F774572726F722820704572726F725468726F776E20293B0D0A20207D2C0D0A20202F2A0D0A202020202A0D0A202020202A2066756E6374696F6E206E616D653A205F706F707570416A6178436F6D706C6574650D0A202020202A206465';
wwv_flow_api.g_varchar2_table(638) := '736372697074696F6E20203A200D0A202020202A20706172616D733A0D0A202020202A2020202D0D0A202020202A2020202D0D0A202020202A0D0A20202A2F20200D0A20205F706F707570416A6178436F6D706C6574653A2066756E6374696F6E28297B';
wwv_flow_api.g_varchar2_table(639) := '0D0A20202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F706F707570416A6178436F6D706C657465272C207B0D0A20202020202022617267756D656E74';
wwv_flow_api.g_varchar2_table(640) := '73223A20617267756D656E74730D0A202020207D293B0D0A0D0A20202020746869732E706F7075702E73746174652E616A617852756E6E696E67203D2066616C73653B0D0A0D0A20202020617065782E64656275672E6D65737361676528746869732E43';
wwv_flow_api.g_varchar2_table(641) := '5F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F706F707570416A6178436F6D706C657465272C2027706F707570207374617465272C20746869732E706F7075702E7374617465293B0D0A20207D2C0D0A20202F2A0D0A2020';
wwv_flow_api.g_varchar2_table(642) := '20202A0D0A202020202A2066756E6374696F6E206E616D653A205F706F707570416A617841626F72740D0A202020202A206465736372697074696F6E20203A200D0A202020202A20706172616D733A0D0A202020202A2020202D0D0A202020202A202020';
wwv_flow_api.g_varchar2_table(643) := '2D0D0A202020202A0D0A20202A2F20200D0A20205F706F707570416A617841626F72743A2066756E6374696F6E28297B0D0A20202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F67';
wwv_flow_api.g_varchar2_table(644) := '5072656669782C20275F706F707570416A617841626F7274272C207B0D0A20202020202022617267756D656E7473223A20617267756D656E74730D0A202020207D293B0D0A0D0A20202020746869732E706F7075702E73746174652E7868722E61626F72';
wwv_flow_api.g_varchar2_table(645) := '7428293B0D0A20202020746869732E706F7075702E73746174652E616A617852756E6E696E67203D2066616C73653B0D0A20207D2C0D0A20202F2A0D0A202020202A0D0A202020202A2066756E6374696F6E206E616D653A205F706F7075704765745365';
wwv_flow_api.g_varchar2_table(646) := '6C6563746564486173680D0A202020202A206465736372697074696F6E20203A200D0A202020202A20706172616D733A0D0A202020202A2020202D0D0A202020202A2020202D0D0A202020202A0D0A20202A2F0D0A20205F706F70757047657453656C65';
wwv_flow_api.g_varchar2_table(647) := '63746564486173683A2066756E6374696F6E28297B0D0A20202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F706F70757047657453656C656374656448';
wwv_flow_api.g_varchar2_table(648) := '617368272C207B0D0A20202020202022617267756D656E7473223A20617267756D656E74730D0A202020207D293B0D0A0D0A20202020766172200D0A2020202020206E65774172726179203D20746869732E706F7075702E73746174652E73656C656374';
wwv_flow_api.g_varchar2_table(649) := '65642E6D61702866756E6374696F6E287043757272656E7456616C75652C2070496E6465782C20704172726179297B0D0A202020202020202072657475726E207043757272656E7456616C75652E76616C75653B0D0A2020202020207D292C0D0A202020';
wwv_flow_api.g_varchar2_table(650) := '20202068617368436F6465203D20746869732E5F67657448617368436F646528206E657741727261792E6A6F696E28273A272920293B0D0A0D0A20202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20';
wwv_flow_api.g_varchar2_table(651) := '746869732E6C6F675072656669782C20275F706F70757047657453656C6563746564486173682072657475726E7320272C2068617368436F6465293B0D0A0D0A2020202072657475726E2068617368436F64653B0D0A20207D2C0D0A20202F2A0D0A2020';
wwv_flow_api.g_varchar2_table(652) := '20202A0D0A202020202A2066756E6374696F6E206E616D653A205F67657448617368436F64650D0A202020202A206465736372697074696F6E20203A20696D706C656D656E746174696F6E206F662068747470733A2F2F737461636B6F766572666C6F77';
wwv_flow_api.g_varchar2_table(653) := '2E636F6D2F7175657374696F6E732F373631363436312F67656E65726174652D612D686173682D66726F6D2D737472696E672D696E2D6A6176617363726970740D0A202020202A20706172616D733A0D0A202020202A2020202D0D0A202020202A202020';
wwv_flow_api.g_varchar2_table(654) := '2D0D0A202020202A0D0A20202A2F20200D0A20205F67657448617368436F64653A2066756E6374696F6E282070537472696E672029207B0D0A20202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C2074';
wwv_flow_api.g_varchar2_table(655) := '6869732E6C6F675072656669782C20275F67657448617368436F6465272C207B0D0A20202020202022617267756D656E7473223A20617267756D656E74732C0D0A2020202020202270537472696E67223A2070537472696E670D0A202020207D293B0D0A';
wwv_flow_api.g_varchar2_table(656) := '0D0A20202020766172200D0A20202020202068617368203D20302C200D0A202020202020692C200D0A2020202020206368723B0D0A0D0A202020206966202870537472696E672E6C656E677468203D3D3D203029207B0D0A20202020202072657475726E';
wwv_flow_api.g_varchar2_table(657) := '20686173683B0D0A202020207D0D0A0D0A20202020666F72202869203D20303B2069203C2070537472696E672E6C656E6774683B20692B2B29207B0D0A2020202020206368722020203D2070537472696E672E63686172436F646541742869293B0D0A20';
wwv_flow_api.g_varchar2_table(658) := '20202020206861736820203D20282868617368203C3C203529202D206861736829202B206368723B0D0A20202020202068617368207C3D20303B202F2F20436F6E7665727420746F20333262697420696E74656765720D0A202020207D0D0A0D0A202020';
wwv_flow_api.g_varchar2_table(659) := '20617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F67657448617368436F64652072657475726E73272C2068617368293B0D0A2020202072657475726E206861';
wwv_flow_api.g_varchar2_table(660) := '73683B0D0A20207D2C0D0A20202F2A0D0A202020202A0D0A202020202A2066756E6374696F6E206E616D653A205F706F7075704469616C6F674265666F7265436C6F736543616C6C6261636B0D0A202020202A206465736372697074696F6E20203A200D';
wwv_flow_api.g_varchar2_table(661) := '0A202020202A20706172616D733A0D0A202020202A2020202D0D0A202020202A2020202D0D0A202020202A0D0A20202A2F20200D0A20205F706F7075704469616C6F674265666F7265436C6F736543616C6C6261636B3A2066756E6374696F6E28207045';
wwv_flow_api.g_varchar2_table(662) := '76656E742C2070556920297B0D0A20202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C362C20746869732E6C6F675072656669782C20275F706F7075704469616C6F674265666F7265436C6F736543616C6C';
wwv_flow_api.g_varchar2_table(663) := '6261636B272C207B0D0A20202020202022617267756D656E7473223A20617267756D656E74732C0D0A20202020202022704576656E74223A20704576656E742C0D0A20202020202022705569223A207055690D0A202020207D293B0D0A0D0A2020202069';
wwv_flow_api.g_varchar2_table(664) := '66202820746869732E706F7075702E73746174652E73656C656374696E672029207B0D0A202020202020746869732E706F7075702E73746174652E73656C656374696E67203D2066616C73653B0D0A20202020202072657475726E20747275653B0D0A20';
wwv_flow_api.g_varchar2_table(665) := '2020207D0D0A0D0A202020206966202820746869732E706F7075702E73746174652E73656C65637465644861736820213D20746869732E5F706F70757047657453656C65637465644861736828292029207B0D0A20202020202072657475726E20636F6E';
wwv_flow_api.g_varchar2_table(666) := '6669726D2820746869732E435F504F5055505F544558545F554E53415645445F4348414E4745532E7265706C61636528272530272C20746869732E706F7075702E73746174652E73656C65637465642E6C656E6774682920293B0D0A202020207D0D0A20';
wwv_flow_api.g_varchar2_table(667) := '202020656C7365207B0D0A20202020202072657475726E20747275653B0D0A202020207D0D0A0D0A20207D2C0D0A20202F2A0D0A202020202A0D0A202020202A2066756E6374696F6E206E616D653A205F70726F6D7074506C616365486F6C6465725368';
wwv_flow_api.g_varchar2_table(668) := '6F770D0A202020202A206465736372697074696F6E20203A200D0A202020202A20706172616D733A0D0A202020202A2020202D0D0A202020202A2020202D0D0A202020202A0D0A20202A2F20200D0A20205F70726F6D7074506C616365486F6C64657253';
wwv_flow_api.g_varchar2_table(669) := '686F773A2066756E6374696F6E28297B0D0A20202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F44454255472C20746869732E6C6F675072656669782C20275F70726F6D7074506C616365486F6C64657253686F77272C';
wwv_flow_api.g_varchar2_table(670) := '207B0D0A20202020202022617267756D656E7473223A20617267756D656E74732C0D0A20202020202022706C616365686F6C646572223A20746869732E6D61736B2E706C616365686F6C6465720D0A202020207D293B0D0A0D0A20202020746869732E6D';
wwv_flow_api.g_varchar2_table(671) := '61736B2E706C616365686F6C6465722E73686F7728293B0D0A20202020746869732E6D61736B2E6974656D436F6E7461696E6572426F64792E6869646528293B0D0A20207D2C0D0A20202F2A0D0A202020202A0D0A202020202A2066756E6374696F6E20';
wwv_flow_api.g_varchar2_table(672) := '6E616D653A205F70726F6D7074506C616365486F6C646572486964650D0A202020202A206465736372697074696F6E20203A200D0A202020202A20706172616D733A0D0A202020202A2020202D0D0A202020202A2020202D0D0A202020202A0D0A20202A';
wwv_flow_api.g_varchar2_table(673) := '2F20200D0A20205F70726F6D7074506C616365486F6C646572486964653A2066756E6374696F6E28297B0D0A20202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F44454255472C20746869732E6C6F675072656669782C';
wwv_flow_api.g_varchar2_table(674) := '20275F70726F6D7074506C616365486F6C64657248696465272C207B0D0A20202020202022617267756D656E7473223A20617267756D656E74730D0A202020207D293B0D0A0D0A20202020746869732E6D61736B2E706C616365686F6C6465722E686964';
wwv_flow_api.g_varchar2_table(675) := '6528293B0D0A20202020746869732E6D61736B2E6974656D436F6E7461696E6572426F64792E73686F7728293B0D0A20207D2C0D0A20202F2A0D0A202020202A0D0A202020202A2066756E6374696F6E206E616D653A205F70726F6D7074456D70747954';
wwv_flow_api.g_varchar2_table(676) := '6167730D0A202020202A206465736372697074696F6E20203A200D0A202020202A20706172616D733A0D0A202020202A2020202D0D0A202020202A2020202D0D0A202020202A0D0A20202A2F20200D0A20205F70726F6D7074456D707479546167733A20';
wwv_flow_api.g_varchar2_table(677) := '66756E6374696F6E28297B0D0A20202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F70726F6D7074456D70747954616773272C207B0D0A202020202020';
wwv_flow_api.g_varchar2_table(678) := '22617267756D656E7473223A20617267756D656E74730D0A202020207D293B0D0A0D0A20202020746869732E6D61736B2E73746174652E74616773203D205B5D3B0D0A20202020746869732E6D61736B2E74616773436F6E7461696E65722E656D707479';
wwv_flow_api.g_varchar2_table(679) := '28293B0D0A202020200D0A20207D2C0D0A20202F2A0D0A202020202A0D0A202020202A2066756E6374696F6E206E616D653A205F70726F6D7074456D7074794D61736B53746174650D0A202020202A206465736372697074696F6E20203A200D0A202020';
wwv_flow_api.g_varchar2_table(680) := '202A20706172616D733A0D0A202020202A2020202D0D0A202020202A2020202D0D0A202020202A0D0A20202A2F20200D0A20205F70726F6D7074456D7074794D61736B53746174653A2066756E6374696F6E28297B0D0A20202020617065782E64656275';
wwv_flow_api.g_varchar2_table(681) := '672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F70726F6D7074456D7074794D61736B5374617465272C207B0D0A20202020202022617267756D656E7473223A20617267756D656E74';
wwv_flow_api.g_varchar2_table(682) := '730D0A202020207D293B0D0A0D0A20202020746869732E6D61736B2E73746174652E73656C6563746564203D205B5D3B0D0A20207D2C0D0A20202F2A0D0A202020202A0D0A202020202A2066756E6374696F6E206E616D653A205F656C656D656E744765';
wwv_flow_api.g_varchar2_table(683) := '7456616C75654C656E6768740D0A202020202A206465736372697074696F6E20203A200D0A202020202A20706172616D733A0D0A202020202A2020202D0D0A202020202A2020202D0D0A202020202A0D0A20202A2F20200D0A20205F656C656D656E7447';
wwv_flow_api.g_varchar2_table(684) := '657456616C75654C656E6768743A2066756E6374696F6E28297B0D0A20202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C362C20746869732E6C6F675072656669782C20275F656C656D656E744765745661';
wwv_flow_api.g_varchar2_table(685) := '6C75654C656E676874272C207B0D0A20202020202022617267756D656E7473223A20617267756D656E74730D0A202020207D293B0D0A0D0A202020207661722072657475726E56616C7565203D20746869732E656C656D656E742E76616C28292E6C656E';
wwv_flow_api.g_varchar2_table(686) := '6774683B0D0A0D0A20202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C362C20746869732E6C6F675072656669782C20275F656C656D656E7447657456616C75654C656E6768742072657475726E73202227';
wwv_flow_api.g_varchar2_table(687) := '2B72657475726E56616C75652B272227293B0D0A0D0A2020202072657475726E2072657475726E56616C75653B0D0A20207D2C0D0A20202F2A0D0A202020202A0D0A202020202A2066756E6374696F6E206E616D653A205F656C656D656E744765745661';
wwv_flow_api.g_varchar2_table(688) := '6C75650D0A202020202A206465736372697074696F6E20203A200D0A202020202A20706172616D733A0D0A202020202A2020202D0D0A202020202A2020202D0D0A202020202A0D0A20202A2F20200D0A20205F656C656D656E7447657456616C75653A20';
wwv_flow_api.g_varchar2_table(689) := '66756E6374696F6E28297B0D0A20202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C362C20746869732E6C6F675072656669782C20275F656C656D656E7447657456616C7565272C207B0D0A202020202020';
wwv_flow_api.g_varchar2_table(690) := '22617267756D656E7473223A20617267756D656E74730D0A202020207D293B0D0A0D0A202020207661722072657475726E56616C7565203D20746869732E656C656D656E742E76616C28293B0D0A0D0A20202020617065782E64656275672E6D65737361';
wwv_flow_api.g_varchar2_table(691) := '676528746869732E435F4C4F475F4C4556454C362C20746869732E6C6F675072656669782C20275F656C656D656E7447657456616C75652072657475726E732022272B72657475726E56616C75652B272227293B0D0A0D0A2020202072657475726E2072';
wwv_flow_api.g_varchar2_table(692) := '657475726E56616C75653B0D0A20207D2C0D0A20202F2A0D0A202020202A0D0A202020202A2066756E6374696F6E206E616D653A205F656C656D656E7453657456616C75650D0A202020202A206465736372697074696F6E20203A200D0A202020202A20';
wwv_flow_api.g_varchar2_table(693) := '706172616D733A0D0A202020202A2020202D0D0A202020202A2020202D0D0A202020202A0D0A20202A2F20200D0A20205F656C656D656E7453657456616C75653A2066756E6374696F6E28207056616C756520297B0D0A20202020617065782E64656275';
wwv_flow_api.g_varchar2_table(694) := '672E6D65737361676528746869732E435F4C4F475F44454255472C20746869732E6C6F675072656669782C20275F656C656D656E7453657456616C7565272C207B0D0A20202020202022617267756D656E7473223A20617267756D656E74732C0D0A2020';
wwv_flow_api.g_varchar2_table(695) := '20202020227056616C7565223A207056616C75650D0A202020207D293B0D0A0D0A20202020746869732E656C656D656E742E76616C28207056616C756520293B0D0A20207D2C0D0A20202F2A0D0A202020202A0D0A202020202A2066756E6374696F6E20';
wwv_flow_api.g_varchar2_table(696) := '6E616D653A205F706F70757053656C656374416E64436C6F73650D0A202020202A206465736372697074696F6E20203A200D0A202020202A20706172616D733A0D0A202020202A2020202D0D0A202020202A2020202D0D0A202020202A0D0A20202A2F20';
wwv_flow_api.g_varchar2_table(697) := '200D0A20205F706F70757053656C656374416E64436C6F73653A2066756E6374696F6E28297B0D0A20202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F44454255472C20746869732E6C6F675072656669782C20275F70';
wwv_flow_api.g_varchar2_table(698) := '6F70757053656C656374416E64436C6F7365272C207B0D0A20202020202022617267756D656E7473223A20617267756D656E74730D0A202020207D293B0D0A0D0A20202020746869732E5F70726F6D7074456D7074795461677328293B0D0A0D0A202020';
wwv_flow_api.g_varchar2_table(699) := '20746869732E5F70726F6D7074456D7074794D61736B537461746528293B0D0A0D0A20202020666F72202876617220693D303B2069203C20746869732E706F7075702E73746174652E73656C65637465642E6C656E6774683B20692B2B29207B0D0A2020';
wwv_flow_api.g_varchar2_table(700) := '20202020746869732E5F6D61736B537461746553656C656374656441646428200D0A20202020202020207B0D0A2020202020202020202022646973706C6179222020202020202020203A20746869732E706F7075702E73746174652E73656C6563746564';
wwv_flow_api.g_varchar2_table(701) := '5B695D2E646973706C61792C0D0A202020202020202020202276616C75652220202020202020202020203A20746869732E706F7075702E73746174652E73656C65637465645B695D2E76616C75652C0D0A20202020202020202020226973415045584E75';
wwv_flow_api.g_varchar2_table(702) := '6C6C56616C756522203A20746869732E706F7075702E73746174652E73656C65637465645B695D2E6973415045584E756C6C56616C75652C0D0A20202020202020207D2C2020202020202020202020202020202020202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(703) := '2020202020202020202020202F2F6F626A6563740D0A2020202020202020746869732E706F7075702E73746174652E73656C65637465645B695D2E6973457874726156616C75652C202020202F2F69732065787472612076616C75650D0A202020202020';
wwv_flow_api.g_varchar2_table(704) := '2020746869732E706F7075702E73746174652E73656C65637465645B695D2E6973415045584E756C6C56616C756520202F2F6973206E756C6C2076616C75650D0A202020202020293B0D0A202020207D0D0A0D0A20202020746869732E5F70726F6D7074';
wwv_flow_api.g_varchar2_table(705) := '4170706C7956616C75657328207472756520293B0D0A20202020746869732E5F70726F6D707452656E6465725461677328293B0D0A0D0A20202020746869732E706F7075702E73746174652E73656C656374696E67203D20747275653B0D0A0D0A202020';
wwv_flow_api.g_varchar2_table(706) := '20746869732E5F706F707570436C6F736528293B0D0A202020200D0A20207D2C0D0A20202F2A0D0A202020202A0D0A202020202A2066756E6374696F6E206E616D653A205F706F707570436C65617246696C746572696E670D0A202020202A2064657363';
wwv_flow_api.g_varchar2_table(707) := '72697074696F6E20203A200D0A202020202A20706172616D733A0D0A202020202A2020202D0D0A202020202A2020202D0D0A202020202A0D0A20202A2F20200D0A20205F706F707570436C65617246696C746572696E673A2066756E6374696F6E28297B';
wwv_flow_api.g_varchar2_table(708) := '0D0A20202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C362C20746869732E6C6F675072656669782C20275F706F707570436C65617246696C746572696E67272C207B0D0A20202020202022617267756D65';
wwv_flow_api.g_varchar2_table(709) := '6E7473223A20617267756D656E74730D0A202020207D293B0D0A0D0A202020206966202820746869732E706F7075702E73686F7753656C6563746564436865636B626F782E697328273A636865636B656427292029207B0D0A202020202020746869732E';
wwv_flow_api.g_varchar2_table(710) := '5F706F70757053686F7753656C6563746564436865636B626F784368616E676528293B0D0A202020207D0D0A20202020656C7365207B0D0A202020202020746869732E5F706F707570536561726368436C65617228207472756520293B0D0A202020207D';
wwv_flow_api.g_varchar2_table(711) := '0D0A20207D2C0D0A20202F2A0D0A202020202A0D0A202020202A2066756E6374696F6E206E616D653A205F706F707570536561726368436C6561720D0A202020202A206465736372697074696F6E20203A200D0A202020202A20706172616D733A0D0A20';
wwv_flow_api.g_varchar2_table(712) := '2020202A2020202D0D0A202020202A2020202D0D0A202020202A0D0A20202A2F20200D0A20205F706F707570536561726368436C6561723A2066756E6374696F6E282070506572666F726D416A617820297B0D0A20202020617065782E64656275672E6D';
wwv_flow_api.g_varchar2_table(713) := '65737361676528746869732E435F4C4F475F44454255472C20746869732E6C6F675072656669782C20275F706F707570536561726368436C656172272C207B0D0A20202020202022617267756D656E7473223A20617267756D656E74732C0D0A20202020';
wwv_flow_api.g_varchar2_table(714) := '20202270506572666F726D416A6178223A2070506572666F726D416A61780D0A202020207D293B0D0A0D0A20202020746869732E706F7075702E73746174652E736561726368537472696E67203D206E756C6C3B0D0A20202020746869732E706F707570';
wwv_flow_api.g_varchar2_table(715) := '2E7365617263682E76616C286E756C6C293B0D0A0D0A20202020696620282070506572666F726D416A61782029207B0D0A202020202020746869732E706F7075702E7365617263682E7472696767657228276B6579757027293B0D0A0D0A202020202020';
wwv_flow_api.g_varchar2_table(716) := '746869732E5F706F707570416A6178506572666F726D28312C20746869732E5F706F7075704F70656E47657444656661756C74536F7274436F6C756D6E49647828292C20746869732E5F706F7075704F70656E47657444656661756C74536F7274436F6C';
wwv_flow_api.g_varchar2_table(717) := '756D6E446972656374696F6E2829293B0D0A202020207D0D0A20207D2C0D0A20202F2A0D0A202020202A0D0A202020202A2066756E6374696F6E206E616D653A205F706F7075704E65774F7074696F6E0D0A202020202A206465736372697074696F6E20';
wwv_flow_api.g_varchar2_table(718) := '203A200D0A202020202A20706172616D733A0D0A202020202A2020202D0D0A202020202A2020202D0D0A202020202A0D0A20202A2F20200D0A20205F706F7075704E65774F7074696F6E3A2066756E6374696F6E28207056616C75652C20705465787429';
wwv_flow_api.g_varchar2_table(719) := '7B0D0A20202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F706F7075704E65774F7074696F6E272C207B0D0A20202020202022617267756D656E747322';
wwv_flow_api.g_varchar2_table(720) := '3A20617267756D656E74732C0D0A202020202020227056616C7565223A207056616C75652C0D0A202020202020227054657874223A2070546578740D0A202020207D293B0D0A0D0A2020202072657475726E202428273C6F7074696F6E2076616C75653D';
wwv_flow_api.g_varchar2_table(721) := '22272B7056616C75652B27223E272B70546578742B273C2F6F7074696F6E3E27293B0D0A20207D2C0D0A20202F2A0D0A202020202A0D0A202020202A2066756E6374696F6E206E616D653A205F706F707570446562756753746174654F626A6563740D0A';
wwv_flow_api.g_varchar2_table(722) := '202020202A206465736372697074696F6E20203A200D0A202020202A20706172616D733A0D0A202020202A2020202D0D0A202020202A2020202D0D0A202020202A0D0A20202A2F20200D0A20205F706F707570446562756753746174654F626A6563743A';
wwv_flow_api.g_varchar2_table(723) := '2066756E6374696F6E28297B0D0A20202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C362C20746869732E6C6F675072656669782C20275F706F707570446562756753746174654F626A656374272C207B0D';
wwv_flow_api.g_varchar2_table(724) := '0A20202020202022617267756D656E7473223A20617267756D656E74732C0D0A20202020202022746869732E706F7075702E7374617465223A20746869732E706F7075702E73746174650D0A202020207D293B0D0A0D0A20202020666F72202820766172';
wwv_flow_api.g_varchar2_table(725) := '206920696E20746869732E706F7075702E73746174652029207B0D0A0D0A2020202020206966202820746869732E706F7075702E73746174655B695D20696E7374616E63656F662041727261792029207B0D0A2020202020202020617065782E64656275';
wwv_flow_api.g_varchar2_table(726) := '672E6D65737361676528746869732E435F4C4F475F4C4556454C362C2020746869732E6C6F675072656669782C2027746869732E706F7075702E73746174652E272B692B272041525241592053544152542720293B20200D0A0D0A202020202020202066';
wwv_flow_api.g_varchar2_table(727) := '6F72202820766172207820696E20746869732E706F7075702E73746174655B695D2029207B0D0A20202020202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C362C2020746869732E6C6F6750726566';
wwv_flow_api.g_varchar2_table(728) := '69782C2027746869732E706F7075702E73746174652E272B692B275B272B782B275D272C20746869732E706F7075702E73746174655B695D5B785D20293B20200D0A20202020202020207D0D0A0D0A2020202020202020617065782E64656275672E6D65';
wwv_flow_api.g_varchar2_table(729) := '737361676528746869732E435F4C4F475F4C4556454C362C2020746869732E6C6F675072656669782C2027746869732E706F7075702E73746174652E272B692B2720415252415920454E442720293B20200D0A20202020202020200D0A2020202020207D';
wwv_flow_api.g_varchar2_table(730) := '0D0A202020202020656C7365207B0D0A2020202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C362C2020746869732E6C6F675072656669782C2027746869732E706F7075702E73746174652E272B69';
wwv_flow_api.g_varchar2_table(731) := '2B27203D2022272B746869732E706F7075702E73746174655B695D2B27222720293B20200D0A2020202020207D0D0A202020207D0D0A0D0A20207D2C0D0A20202F2A0D0A202020202A0D0A202020202A2066756E6374696F6E206E616D653A205F706F70';
wwv_flow_api.g_varchar2_table(732) := '7570436C6F73650D0A202020202A206465736372697074696F6E20203A200D0A202020202A20706172616D733A0D0A202020202A2020202D0D0A202020202A2020202D0D0A202020202A0D0A20202A2F20200D0A20205F706F707570436C6F73653A2066';
wwv_flow_api.g_varchar2_table(733) := '756E6374696F6E28297B0D0A20202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F44454255472C20746869732E6C6F675072656669782C20275F706F707570436C6F7365272C207B0D0A20202020202022617267756D65';
wwv_flow_api.g_varchar2_table(734) := '6E7473223A20617267756D656E74730D0A202020207D293B0D0A0D0A20202020746869732E706F7075702E636F6E7461696E65722E6469616C6F672827636C6F736527293B0D0A0D0A20202020746869732E5F747269676765724576656E742827706165';
wwv_flow_api.g_varchar2_table(735) := '6C695F706F7075705F68696464656E272C20746869732E5F706F7075704765744576656E74446174612829293B0D0A20207D2C0D0A20202F2A0D0A202020202A0D0A202020202A2066756E6374696F6E206E616D653A205F706F7075704765744576656E';
wwv_flow_api.g_varchar2_table(736) := '74446174610D0A202020202A206465736372697074696F6E20203A200D0A202020202A20706172616D733A0D0A202020202A2020202D0D0A202020202A2020202D0D0A202020202A0D0A20202A2F20200D0A20205F706F7075704765744576656E744461';
wwv_flow_api.g_varchar2_table(737) := '74613A2066756E6374696F6E28297B0D0A20202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C362C20746869732E6C6F675072656669782C20275F706F7075704765744576656E7444617461272C207B0D0A';
wwv_flow_api.g_varchar2_table(738) := '20202020202022617267756D656E7473223A20617267756D656E74730D0A202020207D293B0D0A0D0A202020207661722072657475726E4F626A656374203D207B0D0A2020202020202268656164657222202020202020203A20746869732E706F707570';
wwv_flow_api.g_varchar2_table(739) := '2E6865616465722C0D0A20202020202022636F6E7461696E657222202020203A20746869732E706F7075702E636F6E7461696E65722C0D0A20202020202022626F6479222020202020202020203A20746869732E706F7075702E626F64792C0D0A202020';
wwv_flow_api.g_varchar2_table(740) := '20202022666F6F74657222202020202020203A20746869732E706F7075702E666F6F7465722C0D0A20202020202022706167696E6174696F6E222020203A20746869732E706F7075702E706167696E6174696F6E2C0D0A20202020202022736561726368';
wwv_flow_api.g_varchar2_table(741) := '22202020202020203A20746869732E706F7075702E7365617263682C0D0A20202020202022726F7773506572506167652220203A20746869732E706F7075702E726F7773506572506167652C0D0A20202020202022636F6E74656E745461626C6522203A';
wwv_flow_api.g_varchar2_table(742) := '20746869732E706F7075702E636F6E74656E745461626C652C0D0A2020202020202273746174652220202020202020203A207B0D0A20202020202020202273656C65637465642220202020202020202020202020203A20746869732E706F7075702E7374';
wwv_flow_api.g_varchar2_table(743) := '6174652E73656C65637465642C0D0A202020202020202022736561726368537472696E6722202020202020202020203A20746869732E706F7075702E73746174652E736561726368537472696E672C0D0A202020202020202022736561726368436F6C75';
wwv_flow_api.g_varchar2_table(744) := '6D6E49647822202020202020203A20746869732E706F7075702E73746174652E736561726368436F6C756D6E4964782C0D0A202020202020202022736F72746564436F6C756D6E49647822202020202020203A20746869732E706F7075702E7374617465';
wwv_flow_api.g_varchar2_table(745) := '2E736F72746564436F6C756D6E4964782C0D0A202020202020202022736F72746564436F6C756D6E446972656374696F6E22203A20746869732E706F7075702E73746174652E736F72746564436F6C756D6E446972656374696F6E2C0D0A202020202020';
wwv_flow_api.g_varchar2_table(746) := '202022616A617852756E6E696E672220202020202020202020203A20746869732E706F7075702E73746174652E616A617852756E6E696E670D0A2020202020207D0D0A202020207D3B0D0A0D0A20202020617065782E64656275672E6D65737361676528';
wwv_flow_api.g_varchar2_table(747) := '746869732E435F4C4F475F4C4556454C362C20746869732E6C6F675072656669782C20275F706F7075704765744576656E74446174612072657475726E73272C2072657475726E4F626A656374293B0D0A0D0A2020202072657475726E2072657475726E';
wwv_flow_api.g_varchar2_table(748) := '4F626A6563743B0D0A20207D2C0D0A20202F2A0D0A202020202A0D0A202020202A2066756E6374696F6E206E616D653A205F706F7075704F70656E0D0A202020202A206465736372697074696F6E20203A200D0A202020202A20706172616D733A0D0A20';
wwv_flow_api.g_varchar2_table(749) := '2020202A2020202D0D0A202020202A2020202D0D0A202020202A0D0A20202A2F20200D0A20205F706F7075704F70656E3A2066756E6374696F6E28297B0D0A20202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F444542';
wwv_flow_api.g_varchar2_table(750) := '55472C20746869732E6C6F675072656669782C20275F706F7075704F70656E272C207B0D0A20202020202022617267756D656E7473223A20617267756D656E74730D0A202020207D293B0D0A0D0A20202020746869732E706F7075702E626F64792E656D';
wwv_flow_api.g_varchar2_table(751) := '70747928293B0D0A20202020746869732E706F7075702E636F6E7461696E65722E6469616C6F6728276F70656E27293B0D0A20207D2C0D0A20202F2A0D0A202020202A0D0A202020202A2066756E6374696F6E206E616D653A205F706F7075704F70656E';
wwv_flow_api.g_varchar2_table(752) := '4279427574746F6E0D0A202020202A206465736372697074696F6E20203A200D0A202020202A20706172616D733A0D0A202020202A2020202D0D0A202020202A2020202D0D0A202020202A0D0A20202A2F20200D0A20205F706F7075704F70656E427942';
wwv_flow_api.g_varchar2_table(753) := '7574746F6E3A2066756E6374696F6E2820704576656E7420297B0D0A20202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F44454255472C20746869732E6C6F675072656669782C20275F706F7075704F70656E42794275';
wwv_flow_api.g_varchar2_table(754) := '74746F6E272C207B0D0A20202020202022617267756D656E7473223A20617267756D656E74732C0D0A20202020202022704576656E74223A20704576656E740D0A202020207D293B0D0A0D0A20202020704576656E742E70726576656E7444656661756C';
wwv_flow_api.g_varchar2_table(755) := '7428293B0D0A0D0A202020206966202820746869732E6D61736B2E73746174652E64697361626C65642029207B0D0A202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F5741524E494E472C20746869732E6C6F67';
wwv_flow_api.g_varchar2_table(756) := '5072656669782C20275F706F7075704F70656E4279427574746F6E272C202741504558206974656D2069732064697361626C65642C20646F206E6F7468696E672E27293B0D0A20202020202072657475726E20766F69642830293B0D0A202020207D0D0A';
wwv_flow_api.g_varchar2_table(757) := '0D0A20202020746869732E5F706F7075704F70656E28293B0D0A20207D2C0D0A20202F2A0D0A202020202A0D0A202020202A2066756E6374696F6E206E616D653A205F706F707570437265617465506167696E6174696F6E436F6E7461696E65720D0A20';
wwv_flow_api.g_varchar2_table(758) := '2020202A206465736372697074696F6E20203A200D0A202020202A20706172616D733A0D0A202020202A2020202D0D0A202020202A2020202D0D0A202020202A0D0A20202A2F20200D0A20205F706F707570437265617465506167696E6174696F6E436F';
wwv_flow_api.g_varchar2_table(759) := '6E7461696E65723A2066756E6374696F6E28297B0D0A20202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F706F707570437265617465506167696E6174';
wwv_flow_api.g_varchar2_table(760) := '696F6E436F6E7461696E6572272C207B0D0A20202020202022617267756D656E7473223A20617267756D656E74730D0A202020207D293B0D0A0D0A202020207661720D0A202020202020706167696E6174696F6E436F6E7461696E65722020203D202428';
wwv_flow_api.g_varchar2_table(761) := '273C64697620636C6173733D22706167696E6174696F6E436F6E7461696E6572223E3C2F6469763E27292C0D0A202020202020706167696E6174696F6E50726576696F7573202020203D202428273C6120687265663D226A6176617363726970743A2076';
wwv_flow_api.g_varchar2_table(762) := '6F69642830292220636C6173733D2270726576223E3C7370616E20636C6173733D2266612066612D63617265742D6C656674223E3C2F7370616E3E20272B746869732E435F504F5055505F504147494E4154494F4E5F505245562B273C2F613E27292C0D';
wwv_flow_api.g_varchar2_table(763) := '0A202020202020706167696E6174696F6E43757272656E7420202020203D202428273C7370616E20636C6173733D2263757272656E74223E3F3C2F7370616E3E27292C0D0A202020202020706167696E6174696F6E4E65787420202020202020203D2024';
wwv_flow_api.g_varchar2_table(764) := '28273C6120687265663D226A6176617363726970743A20766F69642830292220636C6173733D226E657874223E272B746869732E435F504F5055505F504147494E4154494F4E5F4E4558542B27203C7370616E20636C6173733D2266612066612D636172';
wwv_flow_api.g_varchar2_table(765) := '65742D7269676874223E3C2F7370616E3E3C2F613E27293B0D0A0D0A202020202F2F706167696E6174650D0A20202020706167696E6174696F6E436F6E7461696E65720D0A2020202020202E617070656E642820706167696E6174696F6E50726576696F';
wwv_flow_api.g_varchar2_table(766) := '757320290D0A2020202020202E617070656E642820706167696E6174696F6E43757272656E7420290D0A2020202020202E617070656E642820706167696E6174696F6E4E65787420293B0D0A0D0A2020202072657475726E20706167696E6174696F6E43';
wwv_flow_api.g_varchar2_table(767) := '6F6E7461696E65723B0D0A0D0A20207D2C0D0A20202F2A0D0A202020202A0D0A202020202A2066756E6374696F6E206E616D653A205F706F7075704372656174654F626A6563740D0A202020202A206465736372697074696F6E20203A200D0A20202020';
wwv_flow_api.g_varchar2_table(768) := '2A20706172616D733A0D0A202020202A2020202D0D0A202020202A2020202D0D0A202020202A0D0A20202A2F0D0A20205F706F7075704372656174654F626A6563743A2066756E6374696F6E2829207B0D0A20202020617065782E64656275672E6D6573';
wwv_flow_api.g_varchar2_table(769) := '7361676528746869732E435F4C4F475F4C4556454C362C20746869732E6C6F675072656669782C20275F706F7075704372656174654F626A656374272C207B0D0A20202020202022617267756D656E7473223A20617267756D656E74730D0A202020207D';
wwv_flow_api.g_varchar2_table(770) := '293B0D0A0D0A20202020766172200D0A202020202020706F707570436F6C756D6E53657474696E67734A736F6E203D20756E646566696E65642C0D0A202020202020706F707570436F6E7461696E6572203D20756E646566696E65642C0D0A2020202020';
wwv_flow_api.g_varchar2_table(771) := '206F626A656374203D20756E646566696E65643B0D0A0D0A202020206966202820746869732E706C7567696E53657474696E67732E6973506F7075705265706F7274417661696C61626C65203D3D2066616C736529207B0D0A202020202020617065782E';
wwv_flow_api.g_varchar2_table(772) := '64656275672E6D65737361676528746869732E435F4C4F475F5741524E494E472C20746869732E6C6F675072656669782C20275F706F7075704372656174654F626A65637420706F707570206973206E6F7420617661696C61626C652E27293B0D0A2020';
wwv_flow_api.g_varchar2_table(773) := '2020202072657475726E20766F69642830293B0D0A202020207D0D0A0D0A202020206966202820746869732E706C7567696E53657474696E67732E706F7075702E69735265706F7274416476616E636564436F6E662029207B0D0A202020202020747279';
wwv_flow_api.g_varchar2_table(774) := '7B0D0A2020202020202020706F707570436F6C756D6E53657474696E67734A736F6E203D204A534F4E2E706172736528746869732E6F7074696F6E732E617474726962757465732E706F707570436F6C756D6E53657474696E6773293B0D0A2020202020';
wwv_flow_api.g_varchar2_table(775) := '207D206361746368286572726F7229207B0D0A2020202020202020746869732E5F6D61736B416A61785374617465427574746F6E5365744572726F72287B0D0A2020202020202020202022616464496E666F2220203A206572726F722E6E616D652B273A';
wwv_flow_api.g_varchar2_table(776) := '20272B6572726F722E6D6573736167652C0D0A20202020202020202020226572726F7222202020203A2027496E76616C696420706C7567696E2022272B746869732E6F7074696F6E732E706C7567696E2E6E616D652B272220636F6E6669677572617469';
wwv_flow_api.g_varchar2_table(777) := '6F6E2E272C0D0A202020202020202020202274656368496E666F22203A205B0D0A2020202020202020202020207B0D0A2020202020202020202020202020226E616D65223A2027526561736F6E272C0D0A20202020202020202020202020202276616C75';
wwv_flow_api.g_varchar2_table(778) := '65223A202750617273696E67204A534F4E206F626A65637420666F7220706F707570207265706F7274206661696C65643A20696E61766C6964204A534F4E206F626A6563742E270D0A2020202020202020202020207D2C0D0A2020202020202020202020';
wwv_flow_api.g_varchar2_table(779) := '207B0D0A2020202020202020202020202020226E616D65223A20274A534F4E206F626A65637420746F207061727365272C0D0A20202020202020202020202020202276616C7565223A20746869732E6F7074696F6E732E617474726962757465732E706F';
wwv_flow_api.g_varchar2_table(780) := '707570436F6C756D6E53657474696E67730D0A2020202020202020202020207D0D0A2020202020202020202020200D0A202020202020202020205D0D0A20202020202020207D2C2074727565293B0D0A0D0A2020202020202020746869732E5F6D61736B';
wwv_flow_api.g_varchar2_table(781) := '416A61785374617465427574746F6E4572726F722820293B0D0A2020202020207D0D0A202020207D0D0A0D0A20202020706F707570436F6E7461696E6572203D20746869732E5F706F7075704372656174654E657728293B0D0A0D0A202020206F626A65';
wwv_flow_api.g_varchar2_table(782) := '6374203D207B0D0A20202020202022636F6E7461696E6572223A20706F707570436F6E7461696E65722C0D0A2020202020202264656661756C745265706F727453657474696E6773223A207B0D0A20202020202020202F2F2268656164696E67223A2022';
wwv_flow_api.g_varchar2_table(783) := '222C0D0A2020202020202020227468416C69676E223A20226C656674222C0D0A2020202020202020227464416C69676E223A20226C656674222C0D0A20202020202020202276697369626C65223A20747275652C0D0A202020202020202022736F727422';
wwv_flow_api.g_varchar2_table(784) := '2020203A20747275652C0D0A20202020202020202266696C74657222203A20747275650D0A2020202020207D2C0D0A20202020202022686561646572732220203A20706F707570436F6C756D6E53657474696E67734A736F6E2C0D0A2020202020202268';
wwv_flow_api.g_varchar2_table(785) := '6561646572416374696F6E436F6E7461696E6572223A20756E646566696E65642C0D0A202020202020227374617465223A207B0D0A202020202020202022696E666F726D6174696F6E546578742220202020202020202020203A20756E646566696E6564';
wwv_flow_api.g_varchar2_table(786) := '2C0D0A202020202020202022696E666F726D6174696F6E54656D706C61746522202020202020203A20756E646566696E65642C0D0A20202020202020202273656C656374696E672220202020202020202020202020202020203A2066616C73652C202F2F';
wwv_flow_api.g_varchar2_table(787) := '746F207265636F676E697A65206D616E75616C2073656C65637420616E6420636C6F73650D0A2020202020202020227868722220202020202020202020202020202020202020202020203A20756E646566696E65642C0D0A202020202020202022697356';
wwv_flow_api.g_varchar2_table(788) := '697369626C652220202020202020202020202020202020203A2066616C73652C0D0A2020202020202020226C61737446657463686564506167652220202020202020202020203A206E756C6C2C0D0A202020202020202022736561726368537472696E67';
wwv_flow_api.g_varchar2_table(789) := '2220202020202020202020202020203A20756E646566696E65642C0D0A202020202020202022736561726368537472696E674F6E466F63757322202020202020203A20756E646566696E65642C0D0A202020202020202022736F72746564436F6C756D6E';
wwv_flow_api.g_varchar2_table(790) := '4964782220202020202020202020203A206E756C6C2C0D0A202020202020202022736F72746564436F6C756D6E446972656374696F6E2220202020203A2027617363272C0D0A202020202020202022616A617852756E6E696E6722202020202020202020';
wwv_flow_api.g_varchar2_table(791) := '2020202020203A2066616C73652C0D0A202020202020202022736561726368436F6C756D6E4964782220202020202020202020203A20756E646566696E65642C0D0A202020202020202022616A61784461746146657463686564436F756E742220202020';
wwv_flow_api.g_varchar2_table(792) := '20203A20302C0D0A202020202020202022616A617844617461546F74616C436F756E742220202020202020203A20756E646566696E65642C0D0A202020202020202022616A617853746174757322202020202020202020202020202020203A20756E6465';
wwv_flow_api.g_varchar2_table(793) := '66696E65642C0D0A202020202020202022616A617843757272656E74506167654461746122202020202020203A205B5D2C0D0A202020202020202022616A617853656C65637465644461746122202020202020202020203A205B5D2C0D0A202020202020';
wwv_flow_api.g_varchar2_table(794) := '202022616A617843757272656E7450616765526F776E756D5374617274223A20756E646566696E65642C0D0A202020202020202022616A617843757272656E7450616765526F776E756D456E642220203A20756E646566696E65642C0D0A202020202020';
wwv_flow_api.g_varchar2_table(795) := '2020226361636865222020202020202020202020202020202020202020203A205B5D2C202F2F20646F20646F706973616E6961206B69656479C59B200D0A20202020202020202273656C6563746564222020202020202020202020202020202020203A20';
wwv_flow_api.g_varchar2_table(796) := '5B5D2C0D0A20202020202020202273656C6563746564486173682220202020202020202020202020203A20300D0A2020202020207D2C20202020202020200D0A202020202020226469616C6F6748656164657222202020202020202020203A20706F7075';
wwv_flow_api.g_varchar2_table(797) := '70436F6E7461696E65722E706172656E7428292E66696E6428272E75692D6469616C6F672D7469746C6562617227292C0D0A2020202020202268656164657222202020202020202020202020202020203A20706F707570436F6E7461696E65722E66696E';
wwv_flow_api.g_varchar2_table(798) := '6428272E68656164657227292C0D0A20202020202022696E666F726D6174696F6E436F6E7461696E65722220203A20706F707570436F6E7461696E65722E66696E6428272E696E666F726D6174696F6E27292C0D0A20202020202022696E666F726D6174';
wwv_flow_api.g_varchar2_table(799) := '696F6E5465787422202020202020203A20706F707570436F6E7461696E65722E66696E6428272E696E666F726D6174696F6E202E7465787427292C0D0A20202020202022626F6479222020202020202020202020202020202020203A20706F707570436F';
wwv_flow_api.g_varchar2_table(800) := '6E7461696E65722E66696E6428272E626F647927292C0D0A20202020202022666F6F74657222202020202020202020202020202020203A20706F707570436F6E7461696E65722E66696E6428272E666F6F74657227292C0D0A2020202020202273686F77';
wwv_flow_api.g_varchar2_table(801) := '53656C6563746564436F6E7461696E657222203A20706F707570436F6E7461696E65722E66696E6428272E666F6F7465722D73686F7753656C656374656427292C0D0A20202020202022737469636B7948656164657273222020202020202020203A2075';
wwv_flow_api.g_varchar2_table(802) := '6E646566696E65642C0D0A2020202020202273656172636822202020202020202020202020202020203A20706F707570436F6E7461696E65722E66696E6428272E736561726368436F6E7461696E6572203A696E70757427292C0D0A2020202020202273';
wwv_flow_api.g_varchar2_table(803) := '656C656374416C6C436865636B626F782220202020203A20756E646566696E65642C0D0A2020202020202273686F7753656C6563746564436865636B626F782220203A20706F707570436F6E7461696E65722E66696E6428272E666F6F746572203A6368';
wwv_flow_api.g_varchar2_table(804) := '65636B626F7827292C0D0A2020202020202273686F7753656C65637465644C6162656C2220202020203A20706F707570436F6E7461696E65722E66696E6428272E666F6F746572206C6162656C27292C0D0A20202020202022636C656172222020202020';
wwv_flow_api.g_varchar2_table(805) := '2020202020202020202020203A20706F707570436F6E7461696E65722E66696E6428272E736561726368436F6E7461696E6572202E636C65617227292C0D0A2020202020202273656C65637422202020202020202020202020202020203A20706F707570';
wwv_flow_api.g_varchar2_table(806) := '436F6E7461696E65722E66696E6428272E73656C65637427292C0D0A20202020202022706167696E6174696F6E436F6E7461696E6572222020203A20706F707570436F6E7461696E65722E66696E6428272E706167696E6174696F6E436F6E7461696E65';
wwv_flow_api.g_varchar2_table(807) := '7227292C0D0A20202020202022706167696E6174696F6E507265765061676522202020203A20706F707570436F6E7461696E65722E66696E6428272E7072657627292C0D0A20202020202022706167696E6174696F6E4E6578745061676522202020203A';
wwv_flow_api.g_varchar2_table(808) := '20706F707570436F6E7461696E65722E66696E6428272E6E65787427292C0D0A20202020202022706167696E6174696F6E43757272656E742220202020203A20706F707570436F6E7461696E65722E66696E6428272E63757272656E7427292C0D0A2020';
wwv_flow_api.g_varchar2_table(809) := '2020202022726F7773506572506167652220202020202020202020203A20706F707570436F6E7461696E65722E66696E64282773656C65637427292C0D0A20202020202022636F6E74656E745461626C6522202020202020202020203A20756E64656669';
wwv_flow_api.g_varchar2_table(810) := '6E65642C0D0A20202020202022726F777350657250616765436F6E7461696E65722220203A20706F707570436F6E7461696E65722E66696E6428272E726F777350657250616765436F6E7461696E657227290D0A202020207D3B0D0A0D0A202020206F62';
wwv_flow_api.g_varchar2_table(811) := '6A6563742E626F64792E6F6E28277363726F6C6C272C20242E70726F78792820746869732E5F706F7075705363726F6C6C43616C6C6261636B2C2074686973202920293B2020200D0A202020206F626A6563742E636C6561722E6F6E2827636C69636B27';
wwv_flow_api.g_varchar2_table(812) := '2C20242E70726F78792820746869732E5F706F707570536561726368436C6561722C20746869732C2074727565202920293B0D0A202020200D0A202020206F626A6563742E706167696E6174696F6E50726576506167652E6F6E2827636C69636B272C20';
wwv_flow_api.g_varchar2_table(813) := '242E70726F78792820746869732E5F706F707570506167696E6174696F6E50726576506167652C20746869732029293B0D0A202020206F626A6563742E706167696E6174696F6E4E657874506167652E6F6E2827636C69636B272C20242E70726F787928';
wwv_flow_api.g_varchar2_table(814) := '20746869732E5F706F707570506167696E6174696F6E4E657874506167652C20746869732029293B0D0A202020206F626A6563742E726F7773506572506167652E6F6E28276368616E6765272C20242E70726F78792820746869732E5F706F7075704368';
wwv_flow_api.g_varchar2_table(815) := '616E6765526F7773506572506167652C2074686973202920290D0A0D0A202020206F626A6563742E73686F7753656C6563746564436865636B626F782E6F6E28276368616E6765272C20242E70726F78792820746869732E5F706F70757053686F775365';
wwv_flow_api.g_varchar2_table(816) := '6C6563746564436865636B626F784368616E67652C2074686973202920293B0D0A0D0A202020206966202820746869732E706C7567696E53657474696E67732E706F7075702E636C69636B4F6E526F7753656C6563747349742029207B0D0A2020202020';
wwv_flow_api.g_varchar2_table(817) := '206F626A6563742E636F6E7461696E65722E6F6E2827636C69636B272C20277464272C20242E70726F78792820746869732E5F706F707570436C69636B4F6E43656C6C2C20746869732920293B0D0A202020207D0D0A202020200D0A202020206F626A65';
wwv_flow_api.g_varchar2_table(818) := '63742E636F6E7461696E65720D0A2020202020202E6F6E2827636C69636B272C2020272E66616B65436865636B626F78272C202020202020202020202020242E70726F78792820746869732E5F706F70757046616B65436865636B626F78436C69636B2C';
wwv_flow_api.g_varchar2_table(819) := '20202020202020202020746869732920290D0A2020202020202E6F6E2827636C69636B272C202027627574746F6E2E73656C656374272C202020202020202020202020242E70726F78792820746869732E5F706F70757053656C656374416E64436C6F73';
wwv_flow_api.g_varchar2_table(820) := '652C20202020202020202020202020746869732920290D0A2020202020202E6F6E2827636C69636B272C202027612E73686F7753656C6563746564272C2020202020202020202020242E70726F78792820746869732E5F706F70757053686F7753656C65';
wwv_flow_api.g_varchar2_table(821) := '63746564436865636B626F784368616E67652C20746869732920290D0A2020202020202E6F6E2827636C69636B272C202027612E636C65617246696C746572696E67272C202020202020202020242E70726F78792820746869732E5F706F707570436C65';
wwv_flow_api.g_varchar2_table(822) := '617246696C746572696E672C20202020202020202020202020746869732920290D0A2020202020202E6F6E2827636C69636B272C2020272E66616B65526164696F272C202020202020202020202020202020242E70726F78792820746869732E5F706F70';
wwv_flow_api.g_varchar2_table(823) := '757046616B65526164696F436C69636B2C20202020202020202020202020746869732920290D0A2020202020202E6F6E28276368616E6765272C202774683A66697273742D6368696C64203A636865636B626F78272C20242E70726F7879282074686973';
wwv_flow_api.g_varchar2_table(824) := '2E5F706F7075705468436865636B626F784368616E67652C2020202020202020202020746869732920290D0A2020202020202E6F6E28276368616E6765272C202774643A66697273742D6368696C64203A636865636B626F78272C20242E70726F787928';
wwv_flow_api.g_varchar2_table(825) := '20746869732E5F706F7075705464436865636B626F784368616E67652C2020202020202020202020746869732920290D0A2020202020202E6F6E28276368616E6765272C202774643A66697273742D6368696C64203A726164696F272C20202020242E70';
wwv_flow_api.g_varchar2_table(826) := '726F78792820746869732E5F706F7075705464526164696F4368616E67652C2020202020202020202020202020746869732920293B0D0A0D0A202020206F626A6563742E7365617263680D0A2020202020202E6F6E28276B65797570272C20746869732E';
wwv_flow_api.g_varchar2_table(827) := '5F6465626F756E636528242E70726F78792820746869732E5F706F7075705365617263684B657955702C20746869732C206E756C6C2C206E756C6C292C20746869732E706C7567696E53657474696E67732E706F7075705365617263684465626F756E63';
wwv_flow_api.g_varchar2_table(828) := '6554696D6529290D0A2020202020202E6F6E28276B65797570272C20242E70726F78792820746869732E5F6D61736B4B657955704D616E61676549636F6E732C20746869732920290D0A2020202020202E6F6E2827666F637573272C20242E70726F7879';
wwv_flow_api.g_varchar2_table(829) := '2820746869732E5F706F707570536561726368466F6375732C2074686973202920293B202020200D0A0D0A20202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C362C20746869732E6C6F675072656669782C';
wwv_flow_api.g_varchar2_table(830) := '20275F706F7075704372656174654F626A656374272C207B0D0A20202020202022617267756D656E7473223A20617267756D656E74732C0D0A2020202020202272657475726E73223A206F626A6563740D0A202020207D293B0D0A0D0A20202020726574';
wwv_flow_api.g_varchar2_table(831) := '75726E206F626A6563743B0D0A20207D2C200D0A20202F2A0D0A202020202A0D0A202020202A2066756E6374696F6E206E616D653A205F706F7075704372656174654E65770D0A202020202A206465736372697074696F6E20203A200D0A202020202A20';
wwv_flow_api.g_varchar2_table(832) := '706172616D733A0D0A202020202A2020202D0D0A202020202A2020202D0D0A202020202A0D0A20202A2F20200D0A20205F706F7075704372656174654E65773A2066756E6374696F6E28297B0D0A20202020617065782E64656275672E6D657373616765';
wwv_flow_api.g_varchar2_table(833) := '28746869732E435F4C4F475F4C4556454C362C20746869732E6C6F675072656669782C20275F706F7075704372656174654E6577272C207B0D0A20202020202022617267756D656E7473223A20617267756D656E74730D0A202020207D293B0D0A0D0A20';
wwv_flow_api.g_varchar2_table(834) := '202020766172200D0A202020202020686561646572202020202020202020202020202020203D202428273C64697620636C6173733D22686561646572223E3C2F6469763E27292C0D0A202020202020696E666F726D6174696F6E20202020202020202020';
wwv_flow_api.g_varchar2_table(835) := '203D202428273C64697620636C6173733D22696E666F726D6174696F6E2068696464656E223E203C64697620636C6173733D2274657874223E3C2F6469763E203C2F6469763E27292C0D0A202020202020736561726368436F6E7461696E657220202020';
wwv_flow_api.g_varchar2_table(836) := '2020203D202428273C64697620636C6173733D22736561726368436F6E7461696E6572223E3C2F6469763E27292C0D0A202020202020726F777350657250616765436F6E7461696E657220203D202428273C64697620636C6173733D22726F7773506572';
wwv_flow_api.g_varchar2_table(837) := '50616765436F6E7461696E6572223E3C2F6469763E27292C0D0A202020202020726F77735065725061676553656C65637420202020203D202428273C73656C6563743E3C2F73656C65637427292C0D0A0D0A202020202020736561726368496E70757420';
wwv_flow_api.g_varchar2_table(838) := '202020202020202020203D202428273C696E70757420747970653D22746578742220706C616365686F6C6465723D22272B746869732E435F504F5055505F5345415243485F504C414345484F4C4445522B272220636C6173733D22656D707479223E2729';
wwv_flow_api.g_varchar2_table(839) := '2C0D0A20202020202073656172636849636F6E2020202020202020202020203D202428273C7370616E20636C6173733D2266612066612D73656172636820736561726368223E3C2F7370616E3E27292C0D0A202020202020736561726368436C65617249';
wwv_flow_api.g_varchar2_table(840) := '636F6E202020202020203D202428273C7370616E20636C6173733D2266612066612D74726173682D6F20636C656172223E3C2F7370616E3E27292C0D0A202020202020626F64792020202020202020202020202020202020203D202428273C6469762063';
wwv_flow_api.g_varchar2_table(841) := '6C6173733D22626F6479223E3C2F6469763E27292C0D0A202020202020666F6F746572202020202020202020202020202020203D202428273C64697620636C6173733D22666F6F746572223E3C2F6469763E27292C0D0A202020202020666F6F74657253';
wwv_flow_api.g_varchar2_table(842) := '686F7753656C6563746564202020203D202428273C64697620636C6173733D22666F6F7465722D73686F7753656C6563746564223E3C2F6469763E27292C0D0A202020202020666F6F746572427574746F6E732020202020202020203D202428273C6469';
wwv_flow_api.g_varchar2_table(843) := '7620636C6173733D22666F6F7465722D627574746F6E73223E3C2F6469763E27292C0D0A0D0A202020202020627574746F6E53656C656374202020202020202020203D202428273C627574746F6E20636C6173733D22742D427574746F6E20742D427574';
wwv_flow_api.g_varchar2_table(844) := '746F6E2D2D686F742073656C656374223E272B746869732E435F504F5055505F42544E5F53454C4543545F544558542B273C2F627574746F6E3E27292C0D0A202020202020627574746F6E446562756720202020202020202020203D202428273C627574';
wwv_flow_api.g_varchar2_table(845) := '746F6E20636C6173733D22742D427574746F6E206465627567223E3C7370616E20636C6173733D2266612066612D696E666F223E3C2F7370616E3E3C2F627574746F6E3E27292C0D0A0D0A20202020202073686F7753656C6563746564496E7075742020';
wwv_flow_api.g_varchar2_table(846) := '2020203D202428273C696E70757420747970653D22636865636B626F78223E3C7370616E20636C6173733D2266612066612D636865636B2D7371756172652D6F2066616B65436865636B626F78223E3C2F7370616E3E3C7370616E20636C6173733D2266';
wwv_flow_api.g_varchar2_table(847) := '612066612D7371756172652D6F2066616B65436865636B626F78223E3C2F7370616E3E27292C0D0A20202020202073686F7753656C65637465644C6162656C20202020203D202428273C6C6162656C3E272B746869732E435F504F5055505F53484F575F';
wwv_flow_api.g_varchar2_table(848) := '53454C45435445445F4C4142454C2B273C2F6C6162656C3E27292C0D0A202020202020636F6E7461696E6572202020202020202020202020203D202428273C64697620636C6173733D22636F6E7461696E65722220646174612D617065782D6974656D3D';
wwv_flow_api.g_varchar2_table(849) := '22272B746869732E656C656D656E742E6765742830292E69642B27223E3C2F6469763E27292C0D0A2020202020206578747261436C6173732020202020202020202020203D20746869732E706C7567696E53657474696E67732E706F7075702E636C6963';
wwv_flow_api.g_varchar2_table(850) := '6B4F6E526F7753656C656374734974203F202773656C656374566961526F777327203A2027272C0D0A2020202020206F7074696F6E732020202020202020202020202020203D207B0D0A2020202020202020226469616C6F67436C617373222020203A20';
wwv_flow_api.g_varchar2_table(851) := '22707265746975732D2D656E68616E6365644C6F764974656D20706F70757020222B6578747261436C6173732C0D0A2020202020202020226175746F4F70656E222020202020203A2066616C73652C0D0A202020202020202022617070656E64546F2220';
wwv_flow_api.g_varchar2_table(852) := '20202020203A2027626F6479272C0D0A2020202020202020226D6F64616C222020202020202020203A20747275652C0D0A2020202020202020227469746C65222020202020202020203A20746869732E706C7567696E53657474696E67732E706F707570';
wwv_flow_api.g_varchar2_table(853) := '2E7469746C652C0D0A2020202020202020227769647468222020202020202020203A20746869732E706C7567696E53657474696E67732E706F7075702E77696474682C0D0A2020202020202020226D696E5769647468222020202020203A203530302C0D';
wwv_flow_api.g_varchar2_table(854) := '0A2020202020202020226865696768742220202020202020203A20746869732E706C7567696E53657474696E67732E706F7075702E61646A757374486569676874546F526573756C7473203F20353030203A20746869732E706C7567696E53657474696E';
wwv_flow_api.g_varchar2_table(855) := '67732E706F7075702E6865696768742C0D0A2020202020202020226D696E4865696768742220202020203A203235352C0D0A202020202020202022726573697A61626C652220202020203A20746869732E706C7567696E53657474696E67732E706F7075';
wwv_flow_api.g_varchar2_table(856) := '702E726573697A61626C652C0D0A202020202020202022647261676761626C652220202020203A20746869732E706C7567696E53657474696E67732E706F7075702E647261676761626C652C0D0A202020202020202022636C6F73654F6E457363617065';
wwv_flow_api.g_varchar2_table(857) := '22203A20746869732E706C7567696E53657474696E67732E706F7075702E636C6F73654F6E4573636170652C0D0A202020202020202022726573697A6553746F7022202020203A20242E70726F78792820746869732E5F706F7075704469616C6F675265';
wwv_flow_api.g_varchar2_table(858) := '73697A6553746F7043616C6C6261636B2C207468697320292C0D0A2020202020202020226472616722202020202020202020203A20242E70726F78792820746869732E5F706F70757044726167506F736974696F6E46697843616C6C6261636B2C207468';
wwv_flow_api.g_varchar2_table(859) := '697320292C0D0A2020202020202020226472616753746172742220202020203A20242E70726F78792820746869732E5F706F7075704469616C6F6744726167537461727443616C6C6261636B2C207468697320292C0D0A20202020202020202264726167';
wwv_flow_api.g_varchar2_table(860) := '53746F70222020202020203A20242E70726F78792820746869732E5F706F7075704469616C6F674472616753746F7043616C6C6261636B2C207468697320292C0D0A2020202020202020226F70656E22202020202020202020203A20242E70726F787928';
wwv_flow_api.g_varchar2_table(861) := '20746869732E5F706F7075704469616C6F674F70656E43616C6C6261636B2C207468697320292C0D0A202020202020202022636C6F7365222020202020202020203A20242E70726F78792820746869732E5F706F7075704469616C6F67436C6F73654361';
wwv_flow_api.g_varchar2_table(862) := '6C6C6261636B2C207468697320292C0D0A2020202020202020226265666F7265436C6F7365222020203A20242E70726F78792820746869732E5F706F7075704469616C6F674265666F7265436C6F736543616C6C6261636B2C207468697320290D0A2020';
wwv_flow_api.g_varchar2_table(863) := '202020207D3B0D0A0D0A202020202F2F73656172636820696E20616C6C20636F6C756D6E730D0A202020206966202820746869732E706C7567696E53657474696E67732E706F7075702E736561726368496E416C6C436F6C756D6E732029207B0D0A2020';
wwv_flow_api.g_varchar2_table(864) := '20202020736561726368436F6E7461696E65720D0A20202020202020202E617070656E642820736561726368496E70757420290D0A20202020202020202E617070656E64282073656172636849636F6E20290D0A20202020202020202E617070656E6428';
wwv_flow_api.g_varchar2_table(865) := '20736561726368436C65617249636F6E20293B0D0A0D0A2020202020206865616465722E617070656E642820736561726368436F6E7461696E657220290D0A202020207D0D0A0D0A202020202F2F726F77732070657220706167650D0A20202020696620';
wwv_flow_api.g_varchar2_table(866) := '2820746869732E706C7567696E53657474696E67732E706F7075702E73686F77526F7773506572506167652029207B0D0A202020202020666F72202876617220693D313B20693C3D31303B20692B2B29207B0D0A2020202020202020726F777350657250';
wwv_flow_api.g_varchar2_table(867) := '61676553656C6563742E617070656E642820746869732E5F706F7075704E65774F7074696F6E28692A31302C692A31302920293B0D0A2020202020207D0D0A0D0A202020202020726F77735065725061676553656C6563742E76616C2820746869732E70';
wwv_flow_api.g_varchar2_table(868) := '6C7567696E53657474696E67732E706F7075702E726F77735065725061676520293B0D0A0D0A202020202020726F777350657250616765436F6E7461696E65722E617070656E642820726F77735065725061676553656C65637420293B0D0A2020202020';
wwv_flow_api.g_varchar2_table(869) := '206865616465722E617070656E642820726F777350657250616765436F6E7461696E657220290D0A202020207D0D0A0D0A2020202069662028200D0A20202020202021746869732E706C7567696E53657474696E67732E706F7075702E73656172636849';
wwv_flow_api.g_varchar2_table(870) := '6E416C6C436F6C756D6E730D0A20202020202026262021746869732E706C7567696E53657474696E67732E706F7075702E73686F77526F7773506572506167650D0A2020202029207B0D0A2020202020206865616465722E616464436C61737328277061';
wwv_flow_api.g_varchar2_table(871) := '67696E6174696F6E4F6E6C7927293B0D0A202020207D0D0A0D0A202020202F2F706167696E6174696F6E0D0A202020206865616465722E617070656E642820746869732E5F706F707570437265617465506167696E6174696F6E436F6E7461696E657228';
wwv_flow_api.g_varchar2_table(872) := '2920293B0D0A202020200D0A2020202073686F7753656C6563746564496E7075742E756E69717565496428293B0D0A2020202073686F7753656C65637465644C6162656C2E617474722827666F72272C2073686F7753656C6563746564496E7075742E61';
wwv_flow_api.g_varchar2_table(873) := '747472282769642729293B0D0A0D0A20202020666F6F74657253686F7753656C65637465640D0A2020202020202E617070656E64282073686F7753656C6563746564496E70757420290D0A2020202020202E617070656E64282073686F7753656C656374';
wwv_flow_api.g_varchar2_table(874) := '65644C6162656C20293B0D0A0D0A202020206966202820617065782E64656275672E6765744C6576656C2829203E3D20746869732E435F4C4F475F4C4556454C362029207B0D0A202020202020627574746F6E44656275672E636C69636B2820242E7072';
wwv_flow_api.g_varchar2_table(875) := '6F78792820746869732E5F706F707570446562756753746174654F626A6563742C2074686973202920293B0D0A202020202020666F6F746572427574746F6E732E617070656E642820627574746F6E446562756720293B0D0A202020207D0D0A0D0A2020';
wwv_flow_api.g_varchar2_table(876) := '2020666F6F746572427574746F6E732E617070656E642820627574746F6E53656C65637420293B0D0A0D0A20202020666F6F7465720D0A2020202020202E617070656E6428666F6F74657253686F7753656C6563746564292020202020200D0A20202020';
wwv_flow_api.g_varchar2_table(877) := '20202E617070656E6428666F6F746572427574746F6E73293B0D0A0D0A20202020636F6E7461696E65720D0A2020202020202E617070656E64282068656164657220290D0A2020202020202E617070656E642820696E666F726D6174696F6E20290D0A20';
wwv_flow_api.g_varchar2_table(878) := '20202020202E617070656E642820626F647920290D0A2020202020202E617070656E642820666F6F74657220293B0D0A0D0A202020202F2F6469616C6F6720636F6E7374727563746F7220617070656E6473206E65776C79206372656174656420636F6E';
wwv_flow_api.g_varchar2_table(879) := '7461696E657220746F2073706563696669656420656C656D656E742028626F6479290D0A20202020636F6E7461696E65722E6469616C6F6728206F7074696F6E7320293B0D0A20202020636F6E7461696E65722E61747472287B0D0A2020202020202774';
wwv_flow_api.g_varchar2_table(880) := '6162696E646578273A20302C0D0A20202020202027646174612D706F707570273A20746869732E776964676574556E6971756549640D0A202020207D293B0D0A0D0A20202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F';
wwv_flow_api.g_varchar2_table(881) := '4C4556454C362C20746869732E6C6F675072656669782C20275F706F7075704372656174654E6577272C202272657475726E73222C207B0D0A20202020202022636F6E7461696E6572223A20636F6E7461696E65720D0A202020207D293B0D0A0D0A2020';
wwv_flow_api.g_varchar2_table(882) := '202072657475726E20636F6E7461696E65723B0D0A20207D2C0D0A20202F2A0D0A202020202A0D0A202020202A2066756E6374696F6E206E616D653A205F706F707570536561726368496E53656C6563746564446174610D0A202020202A206465736372';
wwv_flow_api.g_varchar2_table(883) := '697074696F6E20203A200D0A202020202A20706172616D733A0D0A202020202A2020202D0D0A202020202A2020202D0D0A202020202A0D0A20202A2F20200D0A20205F706F707570536561726368496E53656C6563746564446174613A2066756E637469';
wwv_flow_api.g_varchar2_table(884) := '6F6E282070536561726368436F6C756D6E4E616D652C2070536561726368436F6C756D6E4964782C2070536561726368537472696E672C20704973536561726368476C6F62616C20297B0D0A20202020617065782E64656275672E6D6573736167652874';
wwv_flow_api.g_varchar2_table(885) := '6869732E435F4C4F475F4C4556454C362C20746869732E6C6F675072656669782C20275F706F707570536561726368496E53656C656374656444617461272C207B0D0A20202020202022617267756D656E7473223A20617267756D656E74732C0D0A2020';
wwv_flow_api.g_varchar2_table(886) := '202020202270536561726368436F6C756D6E4E616D65223A2070536561726368436F6C756D6E4E616D652C0D0A2020202020202270536561726368436F6C756D6E496478223A2070536561726368436F6C756D6E4964782C0D0A20202020202022705365';
wwv_flow_api.g_varchar2_table(887) := '61726368537472696E67223A2070536561726368537472696E672C0D0A20202020202022704973536561726368476C6F62616C223A20704973536561726368476C6F62616C2C0D0A20202020202022746869732E706F7075702E73746174652E616A6178';
wwv_flow_api.g_varchar2_table(888) := '43757272656E745061676544617461223A20746869732E706F7075702E73746174652E616A617843757272656E7450616765446174610D0A202020207D293B0D0A0D0A20202020766172200D0A2020202020206E6577446174612C0D0A2020202020206D';
wwv_flow_api.g_varchar2_table(889) := '6573736167653B0D0A0D0A202020206966202820704973536561726368476C6F62616C2029207B0D0A2020202020206E657744617461203D20746869732E706F7075702E73746174652E616A617853656C6563746564446174612E66696C746572282066';
wwv_flow_api.g_varchar2_table(890) := '756E6374696F6E282070526F7720297B0D0A0D0A2020202020202020666F72202820766172206920696E2070526F772029207B0D0A20202020202020202020696620282070526F775B695D2E746F537472696E6728292E746F5570706572436173652829';
wwv_flow_api.g_varchar2_table(891) := '2E696E6465784F66282070536561726368537472696E672E746F55707065724361736528292029203E202D312029207B0D0A20202020202020202020202072657475726E20747275653B0D0A202020202020202020207D0D0A20202020202020207D0D0A';
wwv_flow_api.g_varchar2_table(892) := '202020202020202072657475726E2066616C73653B0D0A2020202020207D20293B0D0A0D0A202020207D200D0A20202020656C7365207B0D0A2020202020206E657744617461203D20746869732E706F7075702E73746174652E616A617853656C656374';
wwv_flow_api.g_varchar2_table(893) := '6564446174612E66696C746572282066756E6374696F6E282070526F7720297B0D0A202020202020202072657475726E2070526F775B2070536561726368436F6C756D6E4E616D65205D2E746F55707065724361736528292E696E6465784F6628207053';
wwv_flow_api.g_varchar2_table(894) := '6561726368537472696E672E746F55707065724361736528292029203E202D310D0A2020202020207D20293B0D0A202020207D2020200D0A20200D0A20202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C36';
wwv_flow_api.g_varchar2_table(895) := '2C20746869732E6C6F675072656669782C20275F706F707570536561726368496E53656C656374656444617461272C202766696C7465726564272C206E657744617461293B0D0A0D0A20202020746869732E706F7075702E73746174652E736561726368';
wwv_flow_api.g_varchar2_table(896) := '537472696E67202020203D2070536561726368537472696E673B0D0A20202020746869732E706F7075702E73746174652E736561726368436F6C756D6E496478203D2070536561726368436F6C756D6E4964783B0D0A0D0A20202020746869732E706F70';
wwv_flow_api.g_varchar2_table(897) := '75702E73746174652E616A617843757272656E745061676544617461203D206E6577446174613B0D0A20202020746869732E5F706F7075705265706F727452656E64657228207B2264617461223A206E6577446174617D20293B0D0A202020200D0A2020';
wwv_flow_api.g_varchar2_table(898) := '20206D657373616765203D20746869732E435F504F5055505F544558545F53454143485F494E5F53454C45435445440D0A20202020202020202E7265706C61636528272530272C206E6577446174612E6C656E677468290D0A20202020202020202E7265';
wwv_flow_api.g_varchar2_table(899) := '706C61636528272531272C20746869732E706F7075702E73746174652E616A617853656C6563746564446174612E6C656E677468293B0D0A0D0A20202020746869732E5F706F707570496E666F726D6174696F6E417070656E6428206D6573736167652C';
wwv_flow_api.g_varchar2_table(900) := '20746869732E435F504F5055505F544558545F53454143485F494E5F53454C4543544544293B0D0A0D0A0D0A20207D2C0D0A20202F2A0D0A202020202A0D0A202020202A2066756E6374696F6E206E616D653A205F706F707570536561726368426C7572';
wwv_flow_api.g_varchar2_table(901) := '0D0A202020202A206465736372697074696F6E20203A200D0A202020202A20706172616D733A0D0A202020202A2020202D0D0A202020202A2020202D0D0A202020202A0D0A20202A2F20200D0A20205F706F707570536561726368426C75723A2066756E';
wwv_flow_api.g_varchar2_table(902) := '6374696F6E2820704576656E7420297B0D0A20202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C362C20746869732E6C6F675072656669782C20275F706F707570536561726368426C7572272C207B0D0A20';
wwv_flow_api.g_varchar2_table(903) := '202020202022617267756D656E7473223A20617267756D656E74732C0D0A20202020202022704576656E74223A20704576656E742C0D0A2020202020202263757272656E742076616C7565223A20746869732E706F7075702E7365617263682E76616C28';
wwv_flow_api.g_varchar2_table(904) := '292C0D0A20202020202022666F6375732076616C7565223A20746869732E706F7075702E73746174652E736561726368537472696E674F6E466F6375730D0A202020207D293B0D0A0D0A20202020766172206E65774576656E74203D20617065782E6A51';
wwv_flow_api.g_varchar2_table(905) := '756572792E4576656E742820276B65797570272C207B2077686963683A20242E75692E6B6579436F64652E454E5445522C206B6579436F64653A203133207D20293B0D0A0D0A202020206966202820746869732E706F7075702E7365617263682E76616C';
wwv_flow_api.g_varchar2_table(906) := '282920213D20746869732E706F7075702E73746174652E736561726368537472696E674F6E466F63757329207B200D0A202020202020746869732E706F7075702E7365617263682E74726967676572286E65774576656E74293B0D0A202020207D0D0A0D';
wwv_flow_api.g_varchar2_table(907) := '0A20207D2C0D0A20202F2A0D0A202020202A0D0A202020202A2066756E6374696F6E206E616D653A205F706F707570536561726368466F6375730D0A202020202A206465736372697074696F6E20203A200D0A202020202A20706172616D733A0D0A2020';
wwv_flow_api.g_varchar2_table(908) := '20202A2020202D0D0A202020202A2020202D0D0A202020202A0D0A20202A2F20200D0A20205F706F707570536561726368466F6375733A2066756E6374696F6E2820704576656E7420297B0D0A20202020617065782E64656275672E6D65737361676528';
wwv_flow_api.g_varchar2_table(909) := '746869732E435F4C4F475F4C4556454C362C20746869732E6C6F675072656669782C20275F706F707570536561726368466F637573272C207B0D0A20202020202022617267756D656E7473223A20617267756D656E74732C0D0A20202020202022704576';
wwv_flow_api.g_varchar2_table(910) := '656E74223A20704576656E740D0A202020207D293B0D0A0D0A20202020746869732E706F7075702E73746174652E736561726368537472696E674F6E466F637573203D20746869732E706F7075702E7365617263682E76616C28293B0D0A0D0A20202020';
wwv_flow_api.g_varchar2_table(911) := '617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C362C20746869732E6C6F675072656669782C20275F706F707570536561726368466F637573272C202763757272656E742073656172636820737472696E67206973';
wwv_flow_api.g_varchar2_table(912) := '2022272B746869732E706F7075702E73746174652E736561726368537472696E674F6E466F6375732B272227293B0D0A20207D2C0D0A20202F2A0D0A202020202A0D0A202020202A2066756E6374696F6E206E616D653A205F706F707570536561726368';
wwv_flow_api.g_varchar2_table(913) := '4B657955700D0A202020202A206465736372697074696F6E20203A200D0A202020202A20706172616D733A0D0A202020202A2020202D0D0A202020202A2020202D0D0A202020202A0D0A20202A2F20200D0A20205F706F7075705365617263684B657955';
wwv_flow_api.g_varchar2_table(914) := '703A2066756E6374696F6E282070536561726368436F6C756D6E4E616D652C2070536561726368436F6C756D6E4964782C20704576656E7420297B0D0A20202020766172200D0A2020202020207365617263684974656D20202020203D20242870457665';
wwv_flow_api.g_varchar2_table(915) := '6E742E63757272656E74546172676574292C0D0A202020202020736561726368537472696E672020203D207365617263684974656D2E76616C28292C0D0A2020202020206973536561726368476C6F62616C203D20704576656E742E63757272656E7454';
wwv_flow_api.g_varchar2_table(916) := '6172676574203D3D20746869732E706F7075702E7365617263682E6765742830293B0D0A0D0A202020202F2F7768656E206F74686572206B6579207468656E2022656E7465722220747269676765726564206B65797570206576656E740D0A2020202069';
wwv_flow_api.g_varchar2_table(917) := '66202820704576656E742E6B6579436F646520213D2031332029207B0D0A20202020202072657475726E20766F69642830293B0D0A202020207D0D0A0D0A20202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F44454255';
wwv_flow_api.g_varchar2_table(918) := '472C20746869732E6C6F675072656669782C20275F706F7075705365617263684B65795570272C207B0D0A20202020202022617267756D656E7473223A20617267756D656E74732C0D0A2020202020202270536561726368436F6C756D6E4E616D65223A';
wwv_flow_api.g_varchar2_table(919) := '2070536561726368436F6C756D6E4E616D652C0D0A2020202020202270536561726368436F6C756D6E496478223A2070536561726368436F6C756D6E4964782C0D0A20202020202022704576656E74223A20704576656E742C0D0A202020202020227045';
wwv_flow_api.g_varchar2_table(920) := '76656E742E6B6579436F6465223A20704576656E742E6B6579436F64650D0A202020207D293B0D0A0D0A202020202F2F7768656E206F6E6C792073656C65637465642076616C756573206172652063757272656E746C792070726573656E7465640D0A20';
wwv_flow_api.g_varchar2_table(921) := '2020206966202820746869732E706F7075702E73686F7753656C6563746564436865636B626F782E697328273A636865636B656427292029207B0D0A202020202020746869732E5F706F707570536561726368496E53656C656374656444617461282070';
wwv_flow_api.g_varchar2_table(922) := '536561726368436F6C756D6E4E616D652C2070536561726368436F6C756D6E4964782C20736561726368537472696E672C206973536561726368476C6F62616C20293B0D0A20202020202072657475726E20766F69642830293B0D0A202020207D0D0A0D';
wwv_flow_api.g_varchar2_table(923) := '0A202020202F2F776861742074797065206F6620736561726368206973206265696E6720706572666F726D65640D0A2020202069662028206973536561726368476C6F62616C2029207B0D0A2020202020202F2F736561726368207468726F7567682061';
wwv_flow_api.g_varchar2_table(924) := '6C6C20636F6C756D6E732020202020200D0A202020202020746869732E5F706F707570416A6178506572666F726D2820312C206E756C6C2C206E756C6C2C20736561726368537472696E6720293B20200D0A202020207D0D0A20202020656C7365207B0D';
wwv_flow_api.g_varchar2_table(925) := '0A2020202020202F2F736561726368206F6E6C7920696E2073656C656374656420636F6C756D6E0D0A202020202020746869732E5F706F707570416A6178506572666F726D28312C20746869732E706F7075702E73746174652E736F72746564436F6C75';
wwv_flow_api.g_varchar2_table(926) := '6D6E4964782C20746869732E706F7075702E73746174652E736F72746564436F6C756D6E446972656374696F6E2C20736561726368537472696E672C2070536561726368436F6C756D6E496478293B0D0A202020202020746869732E5F706F7075705365';
wwv_flow_api.g_varchar2_table(927) := '61726368436C6561722866616C7365293B0D0A202020202020746869732E5F6D61736B4B657955704D616E61676549636F6E7328293B0D0A202020207D0D0A20207D2C0D0A20202F2A0D0A202020202A0D0A202020202A2066756E6374696F6E206E616D';
wwv_flow_api.g_varchar2_table(928) := '653A205F706F7075704765744D61784469616C6F674865696768740D0A202020202A206465736372697074696F6E20203A200D0A202020202A20706172616D733A0D0A202020202A2020202D0D0A202020202A2020202D0D0A202020202A0D0A20202A2F';
wwv_flow_api.g_varchar2_table(929) := '20200D0A20205F706F7075704765744D61784469616C6F674865696768743A2066756E6374696F6E2820705265706F727448656967687420297B0D0A20202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C39';
wwv_flow_api.g_varchar2_table(930) := '2C20746869732E6C6F675072656669782C20275F706F7075704765744D61784469616C6F67486569676874272C207B0D0A20202020202022617267756D656E7473223A20617267756D656E74732C0D0A20202020202022705265706F7274486569676874';
wwv_flow_api.g_varchar2_table(931) := '223A20705265706F72744865696768740D0A202020207D293B0D0A0D0A202020207661720D0A202020202020706F707570486561646572203D20746869732E706F7075702E6469616C6F674865616465722E6F7574657248656967687428292C0D0A2020';
wwv_flow_api.g_varchar2_table(932) := '20202020746F74616C486569676874203D20303B0D0A0D0A20202020746F74616C486569676874202B3D20746869732E706F7075702E6469616C6F674865616465722E6F7574657248656967687428293B0D0A0D0A202020206966202820746869732E70';
wwv_flow_api.g_varchar2_table(933) := '6F7075702E696E666F726D6174696F6E436F6E7461696E65722E697328273A76697369626C6527292029207B0D0A202020202020746F74616C486569676874202B3D20746869732E706F7075702E696E666F726D6174696F6E436F6E7461696E65722E6F';
wwv_flow_api.g_varchar2_table(934) := '7574657248656967687428293B0D0A202020207D0D0A0D0A202020206966202820746869732E706F7075702E6865616465722E697328273A76697369626C6527292029207B0D0A202020202020746F74616C486569676874202B3D20746869732E706F70';
wwv_flow_api.g_varchar2_table(935) := '75702E6865616465722E6F7574657248656967687428293B0D0A202020207D0D0A0D0A202020206966202820746869732E706F7075702E666F6F7465722E697328273A76697369626C6527292029207B0D0A202020202020746F74616C48656967687420';
wwv_flow_api.g_varchar2_table(936) := '2B3D20746869732E706F7075702E666F6F7465722E6F7574657248656967687428293B0D0A202020207D0D0A0D0A20202020746F74616C486569676874202B3D20705265706F72744865696768743B0D0A0D0A202020206966202820746F74616C486569';
wwv_flow_api.g_varchar2_table(937) := '676874203E20242877696E646F77292E6F7574657248656967687428292029207B0D0A2020202020202F2F7265647563652062792070616464696E6720666F7220746F7020616E6420626F74746F6D0D0A202020202020746F74616C486569676874203D';
wwv_flow_api.g_varchar2_table(938) := '20242877696E646F77292E6F757465724865696768742829202D2034303B0D0A202020207D0D0A0D0A20202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C2027';
wwv_flow_api.g_varchar2_table(939) := '5F706F7075704765744D61784469616C6F67486569676874272C202772657475726E73272C20746F74616C486569676874293B0D0A2020202072657475726E20746F74616C4865696768743B0D0A20207D2C0D0A20202F2A0D0A202020202A0D0A202020';
wwv_flow_api.g_varchar2_table(940) := '202A2066756E6374696F6E206E616D653A205F706F7075704765744D61784865696768745265706F72740D0A202020202A206465736372697074696F6E20203A200D0A202020202A20706172616D733A0D0A202020202A2020202D0D0A202020202A2020';
wwv_flow_api.g_varchar2_table(941) := '202D0D0A202020202A0D0A20202A2F20200D0A20205F706F7075704765744D61784865696768745265706F72743A2066756E6374696F6E2820704469616C6F67546F74616C48656967687420297B0D0A20202020617065782E64656275672E6D65737361';
wwv_flow_api.g_varchar2_table(942) := '676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F706F7075704765744D61784865696768745265706F7274272C207B0D0A20202020202022617267756D656E7473223A20617267756D656E74732C0D0A';
wwv_flow_api.g_varchar2_table(943) := '20202020202022704469616C6F67546F74616C486569676874223A20704469616C6F67546F74616C4865696768740D0A202020207D293B0D0A0D0A202020207661720D0A2020202020207265706F72744D6178486569676874203D20704469616C6F6754';
wwv_flow_api.g_varchar2_table(944) := '6F74616C4865696768742C0D0A2020202020207461626C65576964746820203D20746869732E706F7075702E636F6E74656E745461626C6520213D20756E646566696E6564203F20746869732E706F7075702E636F6E74656E745461626C652E6F757465';
wwv_flow_api.g_varchar2_table(945) := '7257696474682829203A20303B0D0A0D0A202020207265706F72744D6178486569676874202D3D20746869732E706F7075702E6469616C6F674865616465722E6F7574657248656967687428293B0D0A0D0A202020206966202820746869732E706F7075';
wwv_flow_api.g_varchar2_table(946) := '702E696E666F726D6174696F6E436F6E7461696E65722E697328273A76697369626C6527292029207B0D0A2020202020207265706F72744D6178486569676874202D3D20746869732E706F7075702E696E666F726D6174696F6E436F6E7461696E65722E';
wwv_flow_api.g_varchar2_table(947) := '6F7574657248656967687428293B0D0A202020207D0D0A0D0A202020206966202820746869732E706F7075702E6865616465722E697328273A76697369626C6527292029207B0D0A2020202020207265706F72744D6178486569676874202D3D20746869';
wwv_flow_api.g_varchar2_table(948) := '732E706F7075702E6865616465722E6F7574657248656967687428293B0D0A202020207D0D0A0D0A202020206966202820746869732E706F7075702E666F6F7465722E697328273A76697369626C6527292029207B0D0A2020202020207265706F72744D';
wwv_flow_api.g_varchar2_table(949) := '6178486569676874202D3D20746869732E706F7075702E666F6F7465722E6F7574657248656967687428293B0D0A202020207D0D0A0D0A2020202069662028207461626C655769647468203E20746869732E706F7075702E626F64792E6F757465725769';
wwv_flow_api.g_varchar2_table(950) := '64746828292029207B0D0A2020202020202F2F7363726F6C6C6261720D0A2020202020207265706F72744D6178486569676874202B3D2031373B0D0A202020207D0D0A0D0A20202020617065782E64656275672E6D65737361676528746869732E435F4C';
wwv_flow_api.g_varchar2_table(951) := '4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F706F7075704765744D61784865696768745265706F7274272C202772657475726E73272C207265706F72744D6178486569676874293B0D0A2020202072657475726E207265706F';
wwv_flow_api.g_varchar2_table(952) := '72744D61784865696768743B0D0A20207D2C0D0A20202F2A0D0A202020202A0D0A202020202A2066756E6374696F6E206E616D653A205F706F70757041646A757374426F6479486569676874416E696D6174650D0A202020202A20646573637269707469';
wwv_flow_api.g_varchar2_table(953) := '6F6E20203A200D0A202020202A20706172616D733A0D0A202020202A2020202D0D0A202020202A2020202D0D0A202020202A0D0A20202A2F20200D0A20205F706F70757041646A757374426F6479486569676874416E696D6174653A2066756E6374696F';
wwv_flow_api.g_varchar2_table(954) := '6E2820704475726174696F6E20297B0D0A20202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F706F70757041646A757374426F6479486569676874416E';
wwv_flow_api.g_varchar2_table(955) := '696D617465272C207B0D0A20202020202022617267756D656E7473223A20617267756D656E74732C0D0A20202020202022704475726174696F6E223A20704475726174696F6E0D0A202020207D293B0D0A0D0A20202020766172207461626C6548656967';
wwv_flow_api.g_varchar2_table(956) := '6874203D20746869732E5F706F7075704765745461626C6548656967687428293B0D0A0D0A2020202069662028207461626C65486569676874203D3D20302029207B0D0A20202020202072657475726E20766F69642830293B0D0A202020207D0D0A0D0A';
wwv_flow_api.g_varchar2_table(957) := '20202020746869732E706F7075702E626F64792E73746F7028292E616E696D617465287B0D0A202020202020226D6178486569676874223A207461626C654865696768742C0D0A202020202020226D696E486569676874223A207461626C654865696768';
wwv_flow_api.g_varchar2_table(958) := '740D0A202020207D2C207B0D0A202020202020226475726174696F6E223A2021704475726174696F6E203F20704475726174696F6E203A203130302C0D0A2020202020202273746570223A20242E70726F78792866756E6374696F6E2820704E6F772C20';
wwv_flow_api.g_varchar2_table(959) := '7046782029207B0D0A2020202020202020766172200D0A20202020202020202020726573756C74506F707570486569676874203D20303B0D0A0D0A20202020202020202F2F63757272656E74207461626C65206865696768740D0A202020202020202072';
wwv_flow_api.g_varchar2_table(960) := '6573756C74506F707570486569676874202B3D20704E6F773B0D0A0D0A20202020202020202F2F696E666F726D6174696F6E206865696768740D0A20202020202020206966202820746869732E706F7075702E696E666F726D6174696F6E436F6E746169';
wwv_flow_api.g_varchar2_table(961) := '6E65722E697328273A76697369626C6527292029207B0D0A20202020202020202020726573756C74506F707570486569676874202B3D20746869732E706F7075702E696E666F726D6174696F6E436F6E7461696E65722E6F757465724865696768742829';
wwv_flow_api.g_varchar2_table(962) := '3B0D0A20202020202020207D0D0A0D0A20202020202020206966202820746869732E706F7075702E6865616465722E697328273A76697369626C6527292029207B0D0A20202020202020202020726573756C74506F707570486569676874202B3D207468';
wwv_flow_api.g_varchar2_table(963) := '69732E706F7075702E6865616465722E6F7574657248656967687428293B0D0A20202020202020207D0D0A0D0A20202020202020206966202820746869732E706F7075702E666F6F7465722E697328273A76697369626C6527292029207B0D0A20202020';
wwv_flow_api.g_varchar2_table(964) := '202020202020726573756C74506F707570486569676874202B3D20746869732E706F7075702E666F6F7465722E6F7574657248656967687428293B0D0A20202020202020207D0D0A20202020202020200D0A2020202020202020726573756C74506F7075';
wwv_flow_api.g_varchar2_table(965) := '70486569676874202B3D20746869732E706F7075702E6469616C6F674865616465722E6F7574657248656967687428293B0D0A0D0A2020202020202020746869732E706F7075702E636F6E7461696E65722E6469616C6F6728276F7074696F6E272C2768';
wwv_flow_api.g_varchar2_table(966) := '6569676874272C20726573756C74506F707570486569676874293B0D0A2020202020207D2C2074686973292C0D0A20202020202022636F6D706C657465223A20242E70726F78792866756E6374696F6E28297B0D0A2020202020202020617065782E6465';
wwv_flow_api.g_varchar2_table(967) := '6275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F706F70757041646A757374426F6479486569676874416E696D617465272C2027616E696D6174696F6E20636F6D706C65746564';
wwv_flow_api.g_varchar2_table(968) := '27293B0D0A2020202020207D2C2074686973290D0A202020207D293B0D0A20207D2C0D0A20202F2A0D0A202020202A0D0A202020202A2066756E6374696F6E206E616D653A205F706F7075704765745461626C654865696768740D0A202020202A206465';
wwv_flow_api.g_varchar2_table(969) := '736372697074696F6E20203A200D0A202020202A20706172616D733A0D0A202020202A2020202D0D0A202020202A2020202D0D0A202020202A0D0A20202A2F20200D0A20205F706F7075704765745461626C654865696768743A2066756E6374696F6E28';
wwv_flow_api.g_varchar2_table(970) := '297B0D0A20202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F706F7075704765745461626C65486569676874272C207B0D0A2020202020202261726775';
wwv_flow_api.g_varchar2_table(971) := '6D656E7473223A20617267756D656E74730D0A202020207D293B0D0A0D0A20202020766172200D0A2020202020207461626C65486569676874203D20303B0D0A0D0A202020206966202820746869732E706F7075702E636F6E74656E745461626C652021';
wwv_flow_api.g_varchar2_table(972) := '3D20756E646566696E65642029207B0D0A2020202020207461626C65486569676874203D20746869732E706F7075702E636F6E74656E745461626C652E6F7574657248656967687428293B0D0A202020202020617065782E64656275672E6D6573736167';
wwv_flow_api.g_varchar2_table(973) := '6528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F706F7075704765745461626C65486569676874272C20277461626C65486569676874272C207461626C65486569676874293B0D0A202020207D0D0A2020';
wwv_flow_api.g_varchar2_table(974) := '2020656C7365207B0D0A2020202020207461626C65486569676874203D20746869732E706F7075702E626F64792E6368696C6472656E28292E666972737428292E6F7574657248656967687428293B0D0A202020202020617065782E64656275672E6D65';
wwv_flow_api.g_varchar2_table(975) := '737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F706F7075704765745461626C65486569676874272C20277461626C65486569676874206F66206368696C6472656E272C207461626C65486569';
wwv_flow_api.g_varchar2_table(976) := '676874293B0D0A202020207D0D0A0D0A202020207461626C65486569676874203D20746869732E5F706F7075704765744D61784865696768745265706F72742820746869732E5F706F7075704765744D61784469616C6F6748656967687428207461626C';
wwv_flow_api.g_varchar2_table(977) := '65486569676874202920293B0D0A0D0A20202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F706F7075704765745461626C654865696768742072657475';
wwv_flow_api.g_varchar2_table(978) := '726E73272C207461626C65486569676874293B0D0A2020202072657475726E207461626C654865696768743B0D0A0D0A20207D2C0D0A20202F2A0D0A202020202A0D0A202020202A2066756E6374696F6E206E616D653A205F706F70757041646A757374';
wwv_flow_api.g_varchar2_table(979) := '426F64794865696768740D0A202020202A206465736372697074696F6E20203A200D0A202020202A20706172616D733A0D0A202020202A2020202D0D0A202020202A2020202D0D0A202020202A0D0A20202A2F20200D0A20205F706F70757041646A7573';
wwv_flow_api.g_varchar2_table(980) := '74426F64794865696768743A2066756E6374696F6E2820704475726174696F6E20297B0D0A20202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F706F70';
wwv_flow_api.g_varchar2_table(981) := '757041646A757374426F6479486569676874272C207B0D0A20202020202022617267756D656E7473223A20617267756D656E74732C0D0A20202020202022704475726174696F6E223A20704475726174696F6E0D0A202020207D293B0D0A0D0A20202020';
wwv_flow_api.g_varchar2_table(982) := '766172200D0A2020202020206865696768742C0D0A2020202020207461626C6557696474683B0D0A2020202020200D0A202020206966202820746869732E706C7567696E53657474696E67732E706F7075702E61646A757374486569676874546F526573';
wwv_flow_api.g_varchar2_table(983) := '756C74732029207B0D0A202020202020746869732E5F706F70757041646A757374426F6479486569676874416E696D6174652820704475726174696F6E20293B0D0A202020207D0D0A20202020656C7365207B0D0A0D0A20202020202068656967687420';
wwv_flow_api.g_varchar2_table(984) := '3D20746869732E706F7075702E636F6E7461696E65722E6F7574657248656967687428293B0D0A202020202020686569676874202D3D20746869732E706F7075702E696E666F726D6174696F6E436F6E7461696E65722E697328273A76697369626C6527';
wwv_flow_api.g_varchar2_table(985) := '29203F20746869732E706F7075702E696E666F726D6174696F6E436F6E7461696E65722E6F757465724865696768742829203A20303B0D0A202020202020686569676874202D3D20746869732E706F7075702E6865616465722E697328273A7669736962';
wwv_flow_api.g_varchar2_table(986) := '6C652729203F20746869732E706F7075702E6865616465722E6F757465724865696768742829203A20303B0D0A202020202020686569676874202D3D20746869732E706F7075702E666F6F7465722E697328273A76697369626C652729203F2074686973';
wwv_flow_api.g_varchar2_table(987) := '2E706F7075702E666F6F7465722E6F757465724865696768742829203A20303B0D0A0D0A202020202020746869732E706F7075702E626F64792E63737328276D6178486569676874272C20686569676874293B0D0A202020202020746869732E706F7075';
wwv_flow_api.g_varchar2_table(988) := '702E626F64792E63737328276D696E486569676874272C20686569676874293B0D0A202020207D0D0A20207D2C0D0A20202F2A0D0A202020202A0D0A202020202A2066756E6374696F6E206E616D653A205F706F707570486967686C6967687452657375';
wwv_flow_api.g_varchar2_table(989) := '6C74730D0A202020202A206465736372697074696F6E20203A200D0A202020202A20706172616D733A0D0A202020202A2020202D0D0A202020202A2020202D0D0A202020202A0D0A20202A2F20200D0A20205F706F707570486967686C69676874526573';
wwv_flow_api.g_varchar2_table(990) := '756C74733A2066756E6374696F6E282070526573756C74734A717565727920297B0D0A20202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C362C20746869732E6C6F675072656669782C20275F706F707570';
wwv_flow_api.g_varchar2_table(991) := '486967686C69676874526573756C7473272C207B0D0A20202020202022617267756D656E7473223A20617267756D656E74732C0D0A2020202020202270526573756C74734A7175657279223A2070526573756C74734A71756572790D0A202020207D293B';
wwv_flow_api.g_varchar2_table(992) := '0D0A0D0A20202020766172200D0A202020202020726573756C74546578742C0D0A202020202020736561726368537472696E67203D20746869732E706F7075702E73746174652E736561726368537472696E672C0D0A2020202020207365617263685374';
wwv_flow_api.g_varchar2_table(993) := '72696E67417272203D20736561726368537472696E6720213D206E756C6C203F20736561726368537472696E672E73706C69742827252729203A205B5D2C0D0A2020202020207464733B0D0A0D0A20202020617065782E64656275672E6D657373616765';
wwv_flow_api.g_varchar2_table(994) := '28746869732E435F4C4F475F4C4556454C362C20746869732E6C6F675072656669782C20275F706F707570486967686C69676874526573756C7473272C20736561726368537472696E67417272293B0D0A0D0A202020202F2F6966207468657265206973';
wwv_flow_api.g_varchar2_table(995) := '206E6F2073656172636820737472696E6720646F6E2774206869676C69686A7420726573756C74733B0D0A202020206966202820736561726368537472696E67203D3D20756E646566696E6564207C7C20736561726368537472696E672E6C656E677468';
wwv_flow_api.g_varchar2_table(996) := '203D3D20302029207B0D0A20202020202072657475726E2070526573756C74734A71756572793B0D0A202020207D0D0A0D0A202020202F2F6966207365617263682077617320706572666F726D6564206F6E20737065636966696320636F6C756D6E2070';
wwv_flow_api.g_varchar2_table(997) := '6572666F726D20736561726368206F6E6C7920696E203120636F6C756D6E0D0A202020206966202820746869732E706F7075702E73746174652E736561726368436F6C756D6E49647820213D20756E646566696E65642029207B0D0A2020202020207464';
wwv_flow_api.g_varchar2_table(998) := '73203D2070526573756C74734A71756572792E66696E64282774643A6E74682D6368696C6428272B28746869732E706F7075702E73746174652E736561726368436F6C756D6E4964782B31292B272927293B0D0A202020207D0D0A20202020656C736520';
wwv_flow_api.g_varchar2_table(999) := '7B0D0A202020202020746473203D2070526573756C74734A71756572792E66696E64282774643A6E6F74283A6E74682D6368696C642831292927293B0D0A202020207D0D0A0D0A202020202F2F666F7220656163682063656C6C20706572666F726D2073';
wwv_flow_api.g_varchar2_table(1000) := '656172636820696E2063656C6C20737472696E670D0A202020207464732E6561636828242E70726F78792866756E6374696F6E2870496E6465782C2070456C656D297B0D0A2020202020202F2F7462643A20646F20726563757273697665207365617263';
wwv_flow_api.g_varchar2_table(1001) := '682074686F75676820616C6C206368696C6472656E0D0A202020202020726573756C7454657874203D20242870456C656D292E7465787428293B0D0A2020202020200D0A202020202020666F72202820766172206920696E20736561726368537472696E';
wwv_flow_api.g_varchar2_table(1002) := '674172722029207B0D0A2020202020202020726573756C7454657874203D20746869732E5F686967686C69676874576F72642820726573756C74546578742C20736561726368537472696E674172725B695D20293B0D0A2020202020207D0D0A20202020';
wwv_flow_api.g_varchar2_table(1003) := '20200D0A0D0A202020202020242870456C656D292E68746D6C2820726573756C745465787420293B0D0A0D0A202020207D2C207468697329293B0D0A0D0A2020202072657475726E2070526573756C74734A71756572793B0D0A20207D2C0D0A20202F2A';
wwv_flow_api.g_varchar2_table(1004) := '0D0A202020202A0D0A202020202A2066756E6374696F6E206E616D653A205F706F70757053686F7753656C6563746564436865636B626F784368616E67650D0A202020202A206465736372697074696F6E20203A200D0A202020202A20706172616D733A';
wwv_flow_api.g_varchar2_table(1005) := '0D0A202020202A2020202D0D0A202020202A2020202D0D0A202020202A0D0A20202A2F20200D0A20205F706F70757053686F7753656C6563746564436865636B626F784368616E67653A2066756E6374696F6E28297B0D0A20202020617065782E646562';
wwv_flow_api.g_varchar2_table(1006) := '75672E6D65737361676528746869732E435F4C4F475F44454255472C20746869732E6C6F675072656669782C20275F706F70757053686F7753656C6563746564436865636B626F784368616E6765272C207B0D0A20202020202022617267756D656E7473';
wwv_flow_api.g_varchar2_table(1007) := '223A20617267756D656E74730D0A202020207D293B0D0A0D0A202020202F2F7768656E207468657265206973206E6F7468696E6720746F2073686F770D0A202020206966202820746869732E706F7075702E73746174652E73656C65637465642E6C656E';
wwv_flow_api.g_varchar2_table(1008) := '677468203D3D20302029207B0D0A202020202020746869732E706F7075702E73686F7753656C6563746564436865636B626F782E70726F702827636865636B6564272C2066616C7365293B0D0A20202020202072657475726E20766F69642830293B0D0A';
wwv_flow_api.g_varchar2_table(1009) := '202020207D0D0A0D0A202020206966202820746869732E706F7075702E73686F7753656C6563746564436865636B626F782E697328273A636865636B656427292029207B0D0A202020202020746869732E5F706F707570416A61784765744F6E6C795365';
wwv_flow_api.g_varchar2_table(1010) := '6C656374656428293B0D0A202020207D0D0A20202020656C7365207B0D0A202020202020746869732E5F706F707570416A6178506572666F726D280D0A2020202020202020312C202020202F2F6C61737446657463686564506167652C0D0A2020202020';
wwv_flow_api.g_varchar2_table(1011) := '202020312C202020202F2F736F72746564436F6C756D6E4964782C0D0A202020202020202027617363272C2F2F736F72746564436F6C756D6E446972656374696F6E2C0D0A20202020202020206E756C6C2C202F2F736561726368537472696E672C0D0A';
wwv_flow_api.g_varchar2_table(1012) := '20202020202020206E756C6C20202F2F736561726368436F6C756D6E4964780D0A202020202020293B0D0A0D0A202020207D0D0A20207D2C0D0A20202F2A0D0A202020202A0D0A202020202A2066756E6374696F6E206E616D653A20706F707570496E66';
wwv_flow_api.g_varchar2_table(1013) := '6F726D6174696F6E486964650D0A202020202A206465736372697074696F6E20203A200D0A202020202A20706172616D733A0D0A202020202A2020202D0D0A202020202A2020202D0D0A202020202A0D0A20202A2F20200D0A2020706F707570496E666F';
wwv_flow_api.g_varchar2_table(1014) := '726D6174696F6E486964653A2066756E6374696F6E28297B0D0A20202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C362C20746869732E6C6F675072656669782C2027706F707570496E666F726D6174696F';
wwv_flow_api.g_varchar2_table(1015) := '6E48696465272C207B0D0A20202020202022617267756D656E7473223A20617267756D656E74730D0A202020207D293B0D0A0D0A20202020746869732E706F7075702E73746174652E696E666F726D6174696F6E54656D706C617465203D20756E646566';
wwv_flow_api.g_varchar2_table(1016) := '696E65643B0D0A20202020746869732E706F7075702E73746174652E696E666F726D6174696F6E5465787420202020203D20756E646566696E65643B0D0A20202020746869732E706F7075702E696E666F726D6174696F6E436F6E7461696E65722E6164';
wwv_flow_api.g_varchar2_table(1017) := '64436C617373282768696464656E27293B0D0A20207D2C0D0A0D0A20202F2A0D0A202020202A0D0A202020202A2066756E6374696F6E206E616D653A20706F707570496E666F726D6174696F6E53686F770D0A202020202A206465736372697074696F6E';
wwv_flow_api.g_varchar2_table(1018) := '20203A200D0A202020202A20706172616D733A0D0A202020202A2020202D0D0A202020202A2020202D0D0A202020202A0D0A20202A2F0D0A2020706F707570496E666F726D6174696F6E53686F773A2066756E6374696F6E28297B0D0A20202020617065';
wwv_flow_api.g_varchar2_table(1019) := '782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C362C20746869732E6C6F675072656669782C2027706F707570496E666F726D6174696F6E53686F77272C207B0D0A20202020202022617267756D656E7473223A20617267';
wwv_flow_api.g_varchar2_table(1020) := '756D656E74730D0A202020207D293B0D0A0D0A20202020746869732E706F7075702E696E666F726D6174696F6E436F6E7461696E65722E72656D6F7665436C617373282768696464656E27293B0D0A20207D2C0D0A20202F2A0D0A202020202A0D0A2020';
wwv_flow_api.g_varchar2_table(1021) := '20202A2066756E6374696F6E206E616D653A205F706F707570496E666F726D6174696F6E417070656E640D0A202020202A206465736372697074696F6E20203A200D0A202020202A20706172616D733A0D0A202020202A2020202D0D0A202020202A2020';
wwv_flow_api.g_varchar2_table(1022) := '202D0D0A202020202A0D0A20202A2F20200D0A20205F706F707570496E666F726D6174696F6E417070656E643A2066756E6374696F6E2820704D6573736167652C20704D65737361676554656D706C61746520297B0D0A20202020617065782E64656275';
wwv_flow_api.g_varchar2_table(1023) := '672E6D65737361676528746869732E435F4C4F475F4C4556454C362C20746869732E6C6F675072656669782C20275F706F707570496E666F726D6174696F6E417070656E64272C207B0D0A20202020202022617267756D656E7473223A20617267756D65';
wwv_flow_api.g_varchar2_table(1024) := '6E74732C0D0A20202020202022704D657373616765223A20704D6573736167652C0D0A20202020202022704D65737361676554656D706C617465223A20704D65737361676554656D706C6174650D0A202020207D293B0D0A0D0A20202020746869732E70';
wwv_flow_api.g_varchar2_table(1025) := '6F7075702E696E666F726D6174696F6E546578742E656D70747928292E617070656E642820704D65737361676520293B0D0A20202020746869732E706F707570496E666F726D6174696F6E53686F7728293B0D0A0D0A20202020746869732E706F707570';
wwv_flow_api.g_varchar2_table(1026) := '2E73746174652E696E666F726D6174696F6E5465787420202020203D20704D6573736167653B0D0A20202020746869732E706F7075702E73746174652E696E666F726D6174696F6E54656D706C617465203D20704D65737361676554656D706C6174653B';
wwv_flow_api.g_varchar2_table(1027) := '0D0A20207D2C0D0A20202F2A0D0A202020202A0D0A202020202A2066756E6374696F6E206E616D653A205F706F7075705468436865636B626F784368616E67650D0A202020202A206465736372697074696F6E20203A200D0A202020202A20706172616D';
wwv_flow_api.g_varchar2_table(1028) := '733A0D0A202020202A2020202D0D0A202020202A2020202D0D0A202020202A0D0A20202A2F20200D0A20205F706F7075705468436865636B626F784368616E67653A2066756E6374696F6E2820704576656E7420297B0D0A20202020617065782E646562';
wwv_flow_api.g_varchar2_table(1029) := '75672E6D65737361676528746869732E435F4C4F475F4C4556454C362C20746869732E6C6F675072656669782C20275F706F7075705468436865636B626F784368616E6765272C207B0D0A20202020202022617267756D656E7473223A20617267756D65';
wwv_flow_api.g_varchar2_table(1030) := '6E74732C0D0A20202020202022704576656E74223A20704576656E740D0A202020207D293B0D0A0D0A20202020766172200D0A202020202020636865636B626F78657320203D20746869732E706F7075702E636F6E74656E745461626C652E66696E6428';
wwv_flow_api.g_varchar2_table(1031) := '2774722074643A66697273742D6368696C64203A636865636B626F7827292C0D0A20202020202073656C6563746564202020203D20636865636B626F7865732E66696C7465722866756E6374696F6E28297B2072657475726E20242874686973292E6973';
wwv_flow_api.g_varchar2_table(1032) := '28273A636865636B65642729207D292E746F417272617928292C0D0A2020202020206E6F7453656C6563746564203D20636865636B626F7865732E66696C7465722866756E6374696F6E28297B2072657475726E20242874686973292E697328273A6E6F';
wwv_flow_api.g_varchar2_table(1033) := '74283A636865636B6564292729207D292E746F417272617928292C0D0A2020202020206D65737361676520202020203D20746869732E435F504F5055505F544558545F524F57535F53454C45435445442E7265706C61636528272530272C20636865636B';
wwv_flow_api.g_varchar2_table(1034) := '626F7865732E6C656E677468293B0D0A0D0A20202020704576656E742E73746F70496D6D65646961746550726F7061676174696F6E28293B0D0A0D0A202020206966202820746869732E706F7075702E73656C656374416C6C436865636B626F782E6973';
wwv_flow_api.g_varchar2_table(1035) := '28273A636865636B656427292029207B0D0A0D0A202020202020666F72282076617220693D303B2069203C206E6F7453656C65637465642E6C656E6774683B20692B2B2029207B0D0A20202020202020202428206E6F7453656C65637465645B695D2029';
wwv_flow_api.g_varchar2_table(1036) := '2E70726F702827636865636B6564272C2074727565292E7472696767657228276368616E676527293B0D0A2020202020207D0D0A0D0A202020202020746869732E5F706F707570496E666F726D6174696F6E417070656E6428206D6573736167652C2074';
wwv_flow_api.g_varchar2_table(1037) := '6869732E435F504F5055505F544558545F524F57535F53454C454354454420293B0D0A202020207D0D0A20202020656C7365207B0D0A20202020202020200D0A2020202020206966202820746869732E706F7075702E73746174652E696E666F726D6174';
wwv_flow_api.g_varchar2_table(1038) := '696F6E54656D706C617465203D3D20746869732E435F504F5055505F544558545F524F57535F53454C45435445442029207B0D0A2020202020202020746869732E706F707570496E666F726D6174696F6E4869646528293B0D0A2020202020207D0D0A0D';
wwv_flow_api.g_varchar2_table(1039) := '0A202020202020666F72282076617220693D303B2069203C2073656C65637465642E6C656E6774683B20692B2B2029207B0D0A202020202020202024282073656C65637465645B695D20292E70726F702827636865636B6564272C2066616C7365292E74';
wwv_flow_api.g_varchar2_table(1040) := '72696767657228276368616E676527293B0D0A2020202020207D0D0A202020207D0D0A0D0A20202020746869732E5F706F70757041646A757374426F647948656967687428293B0D0A20207D2C0D0A20202F2A0D0A202020202A0D0A202020202A206675';
wwv_flow_api.g_varchar2_table(1041) := '6E6374696F6E206E616D653A205F706F707570546F67676C65526F7753746174650D0A202020202A206465736372697074696F6E20203A200D0A202020202A20706172616D733A0D0A202020202A2020202D0D0A202020202A2020202D0D0A202020202A';
wwv_flow_api.g_varchar2_table(1042) := '0D0A20202A2F20200D0A20205F706F707570546F67676C65526F7753746174653A2066756E6374696F6E282070496E70757420297B0D0A20202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C362C20746869';
wwv_flow_api.g_varchar2_table(1043) := '732E6C6F675072656669782C20275F706F707570546F67676C65526F775374617465272C207B0D0A20202020202022617267756D656E7473223A20617267756D656E74732C0D0A2020202020202270496E707574223A2070496E7075740D0A202020207D';
wwv_flow_api.g_varchar2_table(1044) := '293B0D0A0D0A20202020696620282070496E70757420696E7374616E63656F66206A5175657279203D3D2066616C73652029207B0D0A20202020202070496E707574203D2024282070496E70757420293B0D0A202020207D0D0A0D0A2020202069662028';
wwv_flow_api.g_varchar2_table(1045) := '2070496E7075742E697328273A636865636B656427292029207B0D0A20202020202070496E7075742E636C6F736573742827747227292E616464436C617373282773656C656374656427293B0D0A202020207D0D0A20202020656C7365207B0D0A202020';
wwv_flow_api.g_varchar2_table(1046) := '20202070496E7075742E636C6F736573742827747227292E72656D6F7665436C617373282773656C656374656427293B0D0A202020207D0D0A20207D2C0D0A20202F2A0D0A202020202A0D0A202020202A2066756E6374696F6E206E616D653A205F706F';
wwv_flow_api.g_varchar2_table(1047) := '7075705464436865636B626F784368616E67650D0A202020202A206465736372697074696F6E20203A200D0A202020202A20706172616D733A0D0A202020202A2020202D0D0A202020202A2020202D0D0A202020202A0D0A20202A2F20200D0A20205F70';
wwv_flow_api.g_varchar2_table(1048) := '6F7075705464436865636B626F784368616E67653A2066756E6374696F6E2820704576656E7420297B0D0A20202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C362C20746869732E6C6F675072656669782C';
wwv_flow_api.g_varchar2_table(1049) := '20275F706F7075705464436865636B626F784368616E6765272C207B0D0A20202020202022617267756D656E7473223A20617267756D656E74732C0D0A20202020202022704576656E74223A20704576656E742C0D0A20202020202022704576656E742E';
wwv_flow_api.g_varchar2_table(1050) := '63757272656E74546172676574223A20704576656E742E63757272656E745461726765740D0A202020207D293B0D0A0D0A20202020766172200D0A202020202020636865636B626F78203D202428704576656E742E63757272656E74546172676574292C';
wwv_flow_api.g_varchar2_table(1051) := '0D0A202020202020636865636B626F78657320203D20756E646566696E65642C0D0A20202020202073656C6563746564202020203D20756E646566696E65643B0D0A0D0A20202020704576656E742E73746F70496D6D65646961746550726F7061676174';
wwv_flow_api.g_varchar2_table(1052) := '696F6E28293B0D0A0D0A20202020636865636B626F78657320203D20746869732E706F7075702E636F6E74656E745461626C652E66696E64282774722074643A66697273742D6368696C64203A636865636B626F7827292C0D0A2020202073656C656374';
wwv_flow_api.g_varchar2_table(1053) := '6564202020203D20636865636B626F7865732E66696C7465722866756E6374696F6E28297B2072657475726E20242874686973292E697328273A636865636B65642729207D293B0D0A0D0A202020206966202820636865636B626F782E697328273A6368';
wwv_flow_api.g_varchar2_table(1054) := '65636B656427292029207B0D0A202020202020746869732E5F706F70757053656C65637456616C75652820636865636B626F78293B0D0A202020207D0D0A20202020656C7365207B0D0A202020202020746869732E5F706F707570556E73656C65637456';
wwv_flow_api.g_varchar2_table(1055) := '616C75652820636865636B626F782E76616C282920293B0D0A0D0A2020202020206966202820746869732E706F7075702E73686F7753656C6563746564436865636B626F782E697328273A636865636B656427292029207B0D0A20202020202020206368';
wwv_flow_api.g_varchar2_table(1056) := '65636B626F782E636C6F736573742827747227292E72656D6F766528293B0D0A2020202020207D0D0A202020207D0D0A0D0A20202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F67';
wwv_flow_api.g_varchar2_table(1057) := '5072656669782C20275F706F7075705464436865636B626F784368616E6765272C2027636865636B626F78657320636E74272C20636865636B626F7865732E6C656E677468293B0D0A20202020617065782E64656275672E6D6573736167652874686973';
wwv_flow_api.g_varchar2_table(1058) := '2E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F706F7075705464436865636B626F784368616E6765272C2027636865636B656420636865636B626F78657320636E74272C2073656C65637465642E6C656E677468293B';
wwv_flow_api.g_varchar2_table(1059) := '0D0A0D0A202020206966202820636865636B626F7865732E6C656E677468203D3D2073656C65637465642E6C656E6774682029207B0D0A2020202020200D0A202020202020696620282021746869732E706F7075702E73656C656374416C6C436865636B';
wwv_flow_api.g_varchar2_table(1060) := '626F782E697328273A636865636B656427292029207B0D0A2020202020202020746869732E706F7075702E73656C656374416C6C436865636B626F782E70726F702827636865636B6564272C2074727565293B0D0A2020202020207D0D0A0D0A20202020';
wwv_flow_api.g_varchar2_table(1061) := '7D200D0A20202020656C7365207B0D0A202020202020746869732E706F7075702E73656C656374416C6C436865636B626F782E70726F702827636865636B6564272C2066616C7365293B0D0A202020207D0D0A0D0A20202020746869732E5F706F707570';
wwv_flow_api.g_varchar2_table(1062) := '546F67676C65526F7753746174652820636865636B626F7820293B0D0A0D0A20207D2C0D0A0D0A20202F2A0D0A202020202A0D0A202020202A2066756E6374696F6E206E616D653A205F706F7075705464526164696F4368616E67650D0A202020202A20';
wwv_flow_api.g_varchar2_table(1063) := '6465736372697074696F6E20203A200D0A202020202A20706172616D733A0D0A202020202A2020202D0D0A202020202A2020202D0D0A202020202A0D0A20202A2F0D0A20205F706F7075705464526164696F4368616E67653A2066756E6374696F6E2820';
wwv_flow_api.g_varchar2_table(1064) := '704576656E7420297B0D0A20202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C362C20746869732E6C6F675072656669782C20275F706F7075705464526164696F4368616E6765272C207B0D0A2020202020';
wwv_flow_api.g_varchar2_table(1065) := '2022617267756D656E7473223A20617267756D656E74732C0D0A20202020202022704576656E74223A20704576656E740D0A202020207D293B0D0A0D0A2020202076617220726164696F203D202428704576656E742E63757272656E7454617267657429';
wwv_flow_api.g_varchar2_table(1066) := '3B0D0A0D0A20202020746869732E706F7075702E636F6E7461696E65722E66696E6428272E73656C656374656427292E72656D6F7665436C617373282773656C656374656427293B0D0A0D0A202020206966202820726164696F2E697328273A63686563';
wwv_flow_api.g_varchar2_table(1067) := '6B656427292029207B0D0A202020202020746869732E5F706F707570526573657456616C75657328293B0D0A202020202020746869732E5F706F70757053656C65637456616C75652820726164696F20293B0D0A202020207D0D0A20202020656C736520';
wwv_flow_api.g_varchar2_table(1068) := '7B0D0A202020202020746869732E5F706F707570556E73656C65637456616C75652820636865636B626F782E76616C282920293B0D0A0D0A2020202020206966202820746869732E706F7075702E73686F7753656C6563746564436865636B626F782E69';
wwv_flow_api.g_varchar2_table(1069) := '7328273A636865636B656427292029207B0D0A2020202020202020726164696F2E636C6F736573742827747227292E72656D6F766528293B0D0A2020202020207D0D0A202020207D0D0A0D0A20202020746869732E5F706F707570546F67676C65526F77';
wwv_flow_api.g_varchar2_table(1070) := '53746174652820726164696F20293B0D0A20207D2C0D0A20202F2A0D0A202020202A0D0A202020202A2066756E6374696F6E206E616D653A205F706F707570497356616C756553656C65637465640D0A202020202A206465736372697074696F6E20203A';
wwv_flow_api.g_varchar2_table(1071) := '200D0A202020202A20706172616D733A0D0A202020202A2020202D0D0A202020202A2020202D0D0A202020202A0D0A20202A2F20200D0A20205F706F707570497356616C756553656C65637465643A2066756E6374696F6E28207056616C756520297B0D';
wwv_flow_api.g_varchar2_table(1072) := '0A20202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F706F707570497356616C756553656C6563746564272C207B0D0A20202020202022617267756D65';
wwv_flow_api.g_varchar2_table(1073) := '6E7473223A20617267756D656E74732C0D0A202020202020227056616C7565223A207056616C75650D0A202020207D293B0D0A0D0A20202020666F7220282076617220693D303B2069203C20746869732E706F7075702E73746174652E73656C65637465';
wwv_flow_api.g_varchar2_table(1074) := '642E6C656E6774683B20692B2B2029207B0D0A2020202020206966202820746869732E706F7075702E73746174652E73656C65637465645B695D2E76616C7565203D3D207056616C75652029207B0D0A2020202020202020617065782E64656275672E6D';
wwv_flow_api.g_varchar2_table(1075) := '65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F706F707570497356616C756553656C6563746564272C207056616C75652C2074727565293B0D0A202020202020202072657475726E207472';
wwv_flow_api.g_varchar2_table(1076) := '75653B0D0A2020202020207D0D0A202020207D0D0A202020200D0A20202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F706F707570497356616C756553';
wwv_flow_api.g_varchar2_table(1077) := '656C6563746564272C207056616C75652C2066616C7365293B0D0A0D0A2020202072657475726E2066616C73653B0D0A20207D2C0D0A20202F2A0D0A202020202A0D0A202020202A2066756E6374696F6E206E616D653A205F706F70757056616C756553';
wwv_flow_api.g_varchar2_table(1078) := '656C6563746564496E6465780D0A202020202A206465736372697074696F6E20203A200D0A202020202A20706172616D733A0D0A202020202A2020202D0D0A202020202A2020202D0D0A202020202A0D0A20202A2F20200D0A20205F706F70757056616C';
wwv_flow_api.g_varchar2_table(1079) := '756553656C6563746564496E6465783A2066756E6374696F6E28207056616C756520297B0D0A20202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F706F';
wwv_flow_api.g_varchar2_table(1080) := '70757056616C756553656C6563746564496E646578272C207B0D0A20202020202022617267756D656E7473223A20617267756D656E74732C0D0A202020202020227056616C7565223A207056616C75650D0A202020207D293B0D0A0D0A20202020666F72';
wwv_flow_api.g_varchar2_table(1081) := '20282076617220693D303B2069203C20746869732E706F7075702E73746174652E73656C65637465642E6C656E6774683B20692B2B2029207B0D0A2020202020206966202820746869732E706F7075702E73746174652E73656C65637465645B695D2E76';
wwv_flow_api.g_varchar2_table(1082) := '616C7565203D3D207056616C75652029207B0D0A2020202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F706F70757056616C756553656C656374';
wwv_flow_api.g_varchar2_table(1083) := '6564496E646578272C207056616C75652C2069293B0D0A202020202020202072657475726E20693B0D0A2020202020207D0D0A202020207D0D0A202020200D0A20202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C45';
wwv_flow_api.g_varchar2_table(1084) := '56454C392C20746869732E6C6F675072656669782C20275F706F70757056616C756553656C6563746564496E646578272C207056616C75652C202D31293B0D0A0D0A2020202072657475726E202D313B0D0A20207D2C0D0A0D0A20202F2A0D0A20202020';
wwv_flow_api.g_varchar2_table(1085) := '2A0D0A202020202A2066756E6374696F6E206E616D653A205F706F707570556E73656C65637456616C75650D0A202020202A206465736372697074696F6E20203A200D0A202020202A20706172616D733A0D0A202020202A2020202D0D0A202020202A20';
wwv_flow_api.g_varchar2_table(1086) := '20202D0D0A202020202A0D0A20202A2F0D0A20205F706F707570556E73656C65637456616C75653A2066756E6374696F6E28207056616C756520297B0D0A20202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F44454255';
wwv_flow_api.g_varchar2_table(1087) := '472C20746869732E6C6F675072656669782C20275F706F707570556E73656C65637456616C7565272C207B0D0A20202020202022617267756D656E7473223A20617267756D656E74732C0D0A202020202020227056616C7565223A207056616C75650D0A';
wwv_flow_api.g_varchar2_table(1088) := '202020207D293B0D0A0D0A20202020766172200D0A202020202020696E6465784F66203D20746869732E5F706F70757056616C756553656C6563746564496E64657828207056616C756520290D0A20202020202072656D6F766564203D206E756C6C3B0D';
wwv_flow_api.g_varchar2_table(1089) := '0A0D0A202020206966202820696E6465784F66203C20302029207B0D0A202020202020746869732E5F7468726F774572726F725465787428272056616C75652022272B7056616C75652B2722206973206E6F742073656C65637465642127293B0D0A2020';
wwv_flow_api.g_varchar2_table(1090) := '20207D0D0A0D0A2020202072656D6F766564203D20746869732E706F7075702E73746174652E73656C65637465642E73706C6963652820696E6465784F662C203120293B0D0A0D0A20202020617065782E64656275672E6D65737361676528746869732E';
wwv_flow_api.g_varchar2_table(1091) := '435F4C4F475F44454255472C20746869732E6C6F675072656669782C20275F706F707570556E73656C65637456616C7565272C202772656D6F7665642076616C7565272C2072656D6F766564293B0D0A0D0A20202020746869732E5F706F70757053686F';
wwv_flow_api.g_varchar2_table(1092) := '7753656C656374656455706461746528207472756520293B0D0A20207D2C0D0A20202F2A0D0A202020202A0D0A202020202A2066756E6374696F6E206E616D653A205F706F707570526573657456616C7565730D0A202020202A20646573637269707469';
wwv_flow_api.g_varchar2_table(1093) := '6F6E20203A200D0A202020202A20706172616D733A0D0A202020202A2020202D0D0A202020202A2020202D0D0A202020202A0D0A20202A2F20200D0A20205F706F707570526573657456616C7565733A2066756E6374696F6E28297B0D0A202020206170';
wwv_flow_api.g_varchar2_table(1094) := '65782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C362C20746869732E6C6F675072656669782C20275F706F707570526573657456616C756573272C207B0D0A20202020202022617267756D656E7473223A20617267756D';
wwv_flow_api.g_varchar2_table(1095) := '656E74730D0A202020207D293B0D0A0D0A20202020746869732E706F7075702E73746174652E73656C6563746564203D205B5D3B0D0A20207D2C0D0A20202F2A0D0A202020202A0D0A202020202A2066756E6374696F6E206E616D653A205F706F707570';
wwv_flow_api.g_varchar2_table(1096) := '53656C65637456616C75650D0A202020202A206465736372697074696F6E20203A200D0A202020202A20706172616D733A0D0A202020202A2020202D0D0A202020202A2020202D0D0A202020202A0D0A20202A2F20200D0A20205F706F70757053656C65';
wwv_flow_api.g_varchar2_table(1097) := '637456616C75653A2066756E6374696F6E282070496E70757420297B0D0A20202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F44454255472C20746869732E6C6F675072656669782C20275F706F70757053656C656374';
wwv_flow_api.g_varchar2_table(1098) := '56616C7565272C207B0D0A20202020202022617267756D656E7473223A20617267756D656E74732C0D0A2020202020202270496E707574223A2070496E7075740D0A202020207D293B0D0A0D0A20202020766172200D0A2020202020206E657753656C65';
wwv_flow_api.g_varchar2_table(1099) := '6374696F6E4F626A203D207B0D0A202020202020202022646973706C6179223A2070496E7075742E617474722827617269612D646973706C61792D76616C756527292C0D0A20202020202020202276616C7565223A2070496E7075742E76616C28292C0D';
wwv_flow_api.g_varchar2_table(1100) := '0A2020202020202020226973457874726156616C7565223A2070496E7075742E617474722827617269612D65787472612D76616C756527292C0D0A2020202020202020226973415045584E756C6C56616C7565223A2070496E7075742E61747472282761';
wwv_flow_api.g_varchar2_table(1101) := '7269612D6E756C6C2D76616C756527290D0A2020202020207D3B0D0A0D0A20202020746869732E706F7075702E73746174652E73656C65637465642E7075736828206E657753656C656374696F6E4F626A20293B0D0A0D0A20202020746869732E5F706F';
wwv_flow_api.g_varchar2_table(1102) := '70757053686F7753656C6563746564557064617465282066616C736520293B0D0A20207D2C20200D0A20202F2A0D0A202020202A0D0A202020202A2066756E6374696F6E206E616D653A205F706F70757053686F7753656C65637465645570646174650D';
wwv_flow_api.g_varchar2_table(1103) := '0A202020202A206465736372697074696F6E20203A200D0A202020202A20706172616D733A0D0A202020202A2020202D0D0A202020202A2020202D0D0A202020202A0D0A20202A2F20200D0A20205F706F70757053686F7753656C656374656455706461';
wwv_flow_api.g_varchar2_table(1104) := '74653A2066756E6374696F6E282070506572666F726D416A61784F6E3053656C656374656420297B0D0A20202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20';
wwv_flow_api.g_varchar2_table(1105) := '275F706F70757053686F7753656C6563746564557064617465272C207B0D0A20202020202022617267756D656E7473223A20617267756D656E74732C0D0A2020202020202270506572666F726D416A61784F6E3053656C6563746564223A207050657266';
wwv_flow_api.g_varchar2_table(1106) := '6F726D416A61784F6E3053656C65637465640D0A202020207D293B0D0A202020200D0A202020207661722073656C65637465644C656E677468203D20746869732E706F7075702E73746174652E73656C65637465642E6C656E6774683B0D0A0D0A202020';
wwv_flow_api.g_varchar2_table(1107) := '20746869732E706F7075702E73686F7753656C65637465644C6162656C2E746578742820746869732E435F504F5055505F53484F575F53454C45435445445F4C4142454C202B272028272B73656C65637465644C656E6774682B27292720293B0D0A0D0A';
wwv_flow_api.g_varchar2_table(1108) := '20202020696620282073656C65637465644C656E677468203D3D20302029207B0D0A202020202020746869732E706F7075702E73686F7753656C6563746564436F6E7461696E65722E616464436C6173732827696E61637469766527293B0D0A0D0A2020';
wwv_flow_api.g_varchar2_table(1109) := '20202020696620282070506572666F726D416A61784F6E3053656C656374656420262620746869732E706F7075702E73686F7753656C6563746564436865636B626F782E697328273A636865636B6564272929207B0D0A2020202020202020746869732E';
wwv_flow_api.g_varchar2_table(1110) := '5F706F707570416A6178506572666F726D28312C20746869732E5F706F7075704F70656E47657444656661756C74536F7274436F6C756D6E49647828292C20746869732E5F706F7075704F70656E47657444656661756C74536F7274436F6C756D6E4469';
wwv_flow_api.g_varchar2_table(1111) := '72656374696F6E2829293B0D0A2020202020207D0D0A0D0A202020202020746869732E706F7075702E73686F7753656C6563746564436865636B626F782E70726F702827636865636B6564272C2066616C7365293B0D0A2020202020200D0A202020207D';
wwv_flow_api.g_varchar2_table(1112) := '0D0A20202020656C7365207B0D0A202020202020746869732E706F7075702E73686F7753656C6563746564436F6E7461696E65722E72656D6F7665436C6173732827696E61637469766527293B0D0A202020207D0D0A20207D2C0D0A0D0A20202F2A0D0A';
wwv_flow_api.g_varchar2_table(1113) := '202020202A0D0A202020202A2066756E6374696F6E206E616D653A205F706F707570436C69636B4F6E43656C6C0D0A202020202A206465736372697074696F6E20203A200D0A202020202A20706172616D733A0D0A202020202A2020202D0D0A20202020';
wwv_flow_api.g_varchar2_table(1114) := '2A2020202D0D0A202020202A0D0A20202A2F0D0A20205F706F707570436C69636B4F6E43656C6C3A2066756E6374696F6E2820704576656E7420297B0D0A20202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C455645';
wwv_flow_api.g_varchar2_table(1115) := '4C392C20746869732E6C6F675072656669782C20275F706F707570436C69636B4F6E43656C6C272C207B0D0A20202020202022617267756D656E7473223A20617267756D656E74732C0D0A20202020202022704576656E74223A20704576656E740D0A20';
wwv_flow_api.g_varchar2_table(1116) := '2020207D293B0D0A0D0A20202020766172200D0A2020202020207472203D202428704576656E742E746172676574292E636C6F736573742827747227292C0D0A202020202020696E707574203D2074722E66696E64282774643A66697273742D6368696C';
wwv_flow_api.g_varchar2_table(1117) := '64203A696E70757427293B0D0A0D0A202020206966202820696E7075742E697328273A636865636B626F78272920262620696E7075742E697328273A636865636B656427292029207B0D0A2020202020202F2F636865636B626F780D0A20202020202069';
wwv_flow_api.g_varchar2_table(1118) := '6E7075742E70726F702827636865636B6564272C2066616C7365292E7472696767657228276368616E676527293B0D0A202020207D0D0A20202020656C7365206966202820696E7075742E697328273A636865636B626F7827292026262021696E707574';
wwv_flow_api.g_varchar2_table(1119) := '2E697328273A636865636B656427292029207B0D0A202020202020696E7075742E70726F702827636865636B6564272C2074727565292E7472696767657228276368616E676527293B0D0A202020207D0D0A20202020656C7365207B0D0A202020202020';
wwv_flow_api.g_varchar2_table(1120) := '2F2F726164696F0D0A202020202020696E7075742E70726F702827636865636B6564272C207472756529203B0D0A202020202020696E7075742E7472696767657228276368616E676527293B0D0A202020207D202020200D0A20207D2C0D0A20202F2A0D';
wwv_flow_api.g_varchar2_table(1121) := '0A202020202A0D0A202020202A2066756E6374696F6E206E616D653A205F706F70757046616B65526164696F436C69636B0D0A202020202A206465736372697074696F6E20203A200D0A202020202A20706172616D733A0D0A202020202A2020202D0D0A';
wwv_flow_api.g_varchar2_table(1122) := '202020202A2020202D0D0A202020202A0D0A20202A2F20200D0A20205F706F70757046616B65526164696F436C69636B3A2066756E6374696F6E2820704576656E742029207B0D0A20202020617065782E64656275672E6D65737361676528746869732E';
wwv_flow_api.g_varchar2_table(1123) := '435F4C4F475F4C4556454C362C20746869732E6C6F675072656669782C20275F706F70757046616B65526164696F436C69636B272C207B0D0A20202020202022617267756D656E7473223A20617267756D656E74732C0D0A20202020202022704576656E';
wwv_flow_api.g_varchar2_table(1124) := '74223A20704576656E740D0A202020207D293B0D0A0D0A202020207661722074726967676572696E67456C656D656E74203D202428704576656E742E63757272656E74546172676574293B0D0A0D0A20202020704576656E742E73746F70496D6D656469';
wwv_flow_api.g_varchar2_table(1125) := '61746550726F7061676174696F6E28293B0D0A0D0A2020202074726967676572696E67456C656D656E742E706172656E7428292E66696E6428273A726164696F27292E747269676765722827636C69636B27293B0D0A0D0A20207D2C0D0A20202F2A0D0A';
wwv_flow_api.g_varchar2_table(1126) := '202020202A0D0A202020202A2066756E6374696F6E206E616D653A205F706F70757046616B65436865636B626F78436C69636B0D0A202020202A206465736372697074696F6E20203A200D0A202020202A20706172616D733A0D0A202020202A2020202D';
wwv_flow_api.g_varchar2_table(1127) := '0D0A202020202A2020202D0D0A202020202A0D0A20202A2F20200D0A20205F706F70757046616B65436865636B626F78436C69636B3A2066756E6374696F6E2820704576656E7420297B0D0A20202020617065782E64656275672E6D6573736167652874';
wwv_flow_api.g_varchar2_table(1128) := '6869732E435F4C4F475F4C4556454C362C20746869732E6C6F675072656669782C20275F706F70757046616B65436865636B626F78436C69636B272C207B0D0A20202020202022617267756D656E7473223A20617267756D656E74732C0D0A2020202020';
wwv_flow_api.g_varchar2_table(1129) := '2022704576656E74223A20704576656E740D0A202020207D293B0D0A0D0A20202020766172200D0A20202020202074726967676572696E67456C656D656E74203D202428704576656E742E63757272656E74546172676574292C0D0A2020202020206368';
wwv_flow_api.g_varchar2_table(1130) := '65636B626F78202020202020202020203D2074726967676572696E67456C656D656E742E706172656E7428292E66696E6428273A636865636B626F7827293B0D0A0D0A20202020704576656E742E73746F70496D6D65646961746550726F706167617469';
wwv_flow_api.g_varchar2_table(1131) := '6F6E28293B0D0A0D0A20202020636865636B626F782E70726F702827636865636B6564272C2021636865636B626F782E697328273A636865636B65642729292E7472696767657228276368616E676527293B0D0A0D0A20207D2C0D0A0D0A20202F2A0D0A';
wwv_flow_api.g_varchar2_table(1132) := '202020202A0D0A202020202A2066756E6374696F6E206E616D653A205F706F707570536F72745265706F72740D0A202020202A206465736372697074696F6E20203A200D0A202020202A20706172616D733A0D0A202020202A2020202D0D0A202020202A';
wwv_flow_api.g_varchar2_table(1133) := '2020202D0D0A202020202A0D0A20202A2F0D0A20205F706F707570536F72745265706F72743A2066756E6374696F6E282070436F6C756D6E4E616D652C2070436F6C756D6E4964782C2070536F7274446972656374696F6E20297B0D0A20202020617065';
wwv_flow_api.g_varchar2_table(1134) := '782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C362C20746869732E6C6F675072656669782C20275F706F707570536F72745265706F7274272C207B0D0A20202020202022617267756D656E7473223A20617267756D656E';
wwv_flow_api.g_varchar2_table(1135) := '74732C0D0A2020202020202270436F6C756D6E4E616D65223A2070436F6C756D6E4E616D652C0D0A2020202020202270436F6C756D6E496478223A2070436F6C756D6E4964782C0D0A2020202020202270536F7274446972656374696F6E223A2070536F';
wwv_flow_api.g_varchar2_table(1136) := '7274446972656374696F6E0D0A202020207D293B0D0A0D0A20202020766172200D0A202020202020736561726368537472696E67203D20746869732E706F7075702E73746174652E736561726368537472696E672C0D0A20202020202073656172636843';
wwv_flow_api.g_varchar2_table(1137) := '6F6C756D6E496478203D20746869732E706F7075702E73746174652E736561726368436F6C756D6E4964783B0D0A0D0A202020206966202820746869732E706F7075702E73686F7753656C6563746564436865636B626F782E697328273A636865636B65';
wwv_flow_api.g_varchar2_table(1138) := '6427292029207B0D0A202020202020746869732E706F7075702E73746174652E616A617843757272656E7450616765446174612E736F72742820746869732E5F736F72744A736F6E282070436F6C756D6E4E616D652C2070536F7274446972656374696F';
wwv_flow_api.g_varchar2_table(1139) := '6E202920293B0D0A0D0A2020202020202F2F6D757374206265207365742062656375617365206F662076697375616C697A6174696F6E20696E20636F6C756D6E206865616465720D0A202020202020746869732E706F7075702E73746174652E736F7274';
wwv_flow_api.g_varchar2_table(1140) := '6564436F6C756D6E446972656374696F6E203D2070536F7274446972656374696F6E3B0D0A202020202020746869732E706F7075702E73746174652E736F72746564436F6C756D6E496478202020202020203D2070436F6C756D6E4964783B0D0A0D0A20';
wwv_flow_api.g_varchar2_table(1141) := '2020202020746869732E5F706F7075705265706F727452656E64657228207B2264617461223A20746869732E706F7075702E73746174652E616A617843757272656E7450616765446174617D20293B0D0A0D0A202020207D0D0A20202020656C7365207B';
wwv_flow_api.g_varchar2_table(1142) := '0D0A202020202020746869732E5F706F707570416A6178506572666F726D28312C2070436F6C756D6E4964782C2070536F7274446972656374696F6E2C20736561726368537472696E672C20736561726368436F6C756D6E496478293B20200D0A202020';
wwv_flow_api.g_varchar2_table(1143) := '207D0D0A20207D2C0D0A0D0A20202F2A0D0A202020202A0D0A202020202A2066756E6374696F6E206E616D653A205F706F70757047657448656164696E67730D0A202020202A206465736372697074696F6E20203A200D0A202020202A20706172616D73';
wwv_flow_api.g_varchar2_table(1144) := '3A0D0A202020202A2020202D0D0A202020202A2020202D0D0A202020202A0D0A20202A2F0D0A20205F706F70757047657448656164696E67733A2066756E6374696F6E28297B0D0A20202020617065782E64656275672E6D65737361676528746869732E';
wwv_flow_api.g_varchar2_table(1145) := '435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F706F70757047657448656164696E6773272C207B0D0A20202020202022617267756D656E7473223A20617267756D656E74730D0A202020207D293B0D0A0D0A2020202076';
wwv_flow_api.g_varchar2_table(1146) := '6172200D0A2020202020207468656164203D202428273C74686561643E3C74723E3C2F74723E3C2F74686561643E27292C0D0A202020202020746853656C656374416C6C203D202428273C746820636C6173733D22742D5265706F72742D636F6C486561';
wwv_flow_api.g_varchar2_table(1147) := '64223E3C2F74683E27292C0D0A202020202020746853656C656374436865636B626F78203D202428273C696E70757420747970653D22636865636B626F78223E3C7370616E20636C6173733D2266612066612D636865636B2D7371756172652D6F206661';
wwv_flow_api.g_varchar2_table(1148) := '6B65436865636B626F78223E3C2F7370616E3E3C7370616E20636C6173733D2266612066612D7371756172652D6F2066616B65436865636B626F78223E3C2F7370616E3E27292C0D0A202020202020636F6C756D6E5F6E616D652C0D0A20202020202063';
wwv_flow_api.g_varchar2_table(1149) := '6F6C756D6E5F6964782C0D0A202020202020697355736564546F536F72742C0D0A202020202020697346696C74657265642C0D0A202020202020736F7274696E67446972656374696F6E2C0D0A2020202020207468416C69676E2C0D0A20202020202063';
wwv_flow_api.g_varchar2_table(1150) := '6F6C756D6E416C69617365733B0D0A0D0A202020206966202820746869732E706C7567696E53657474696E67732E69734D756C7469706C6553656C656374696F6E2029207B0D0A202020202020746853656C656374416C6C2E617070656E642820746853';
wwv_flow_api.g_varchar2_table(1151) := '656C656374436865636B626F7820293B0D0A202020207D0D0A0D0A2020202074686561642E66696E642827747227292E617070656E642820746853656C656374416C6C20293B0D0A0D0A20202020666F722028207661722069203D303B2069203C207468';
wwv_flow_api.g_varchar2_table(1152) := '69732E6F7074696F6E732E636F6C756D6E732E6C656E6774683B20692B2B2029207B0D0A202020202020636F6C756D6E5F6E616D6520203D20746869732E6F7074696F6E732E636F6C756D6E735B695D2E434F4C554D4E5F4E414D453B0D0A2020202020';
wwv_flow_api.g_varchar2_table(1153) := '20636F6C756D6E5F6964782020203D20746869732E6F7074696F6E732E636F6C756D6E735B695D2E4944583B0D0A202020202020636F6C756D6E5F616C696173203D20746869732E5F706F707570436F6C756D6E4973436F6E66696775726174696F6E41';
wwv_flow_api.g_varchar2_table(1154) := '7661696C61626C652820636F6C756D6E5F6E616D652C202768656164696E672720293B0D0A0D0A20202020202069662028200D0A2020202020202020746869732E706C7567696E53657474696E67732E706F7075702E69735265706F7274416476616E63';
wwv_flow_api.g_varchar2_table(1155) := '6564436F6E660D0A202020202020202026262021746869732E5F706F707570436F6C756D6E4973446566696E65642820636F6C756D6E5F6E616D652029200D0A20202020202029207B0D0A2020202020202020636F6E74696E75653B0D0A202020202020';
wwv_flow_api.g_varchar2_table(1156) := '7D0D0A0D0A202020202020696620282021746869732E5F706F707570436F6C756D6E4973436F6E66696775726174696F6E417661696C61626C652820636F6C756D6E5F6E616D652C202776697369626C652720292029207B0D0A20202020202020202F2F';
wwv_flow_api.g_varchar2_table(1157) := '646F6E742072656E64657220636F6C756D6E206265636175736520697420686173206E6F20636F6E666975726174696F6E0D0A2020202020202020636F6E74696E75653B0D0A2020202020207D0D0A0D0A20202020202069662028200D0A202020202020';
wwv_flow_api.g_varchar2_table(1158) := '2020202020746869732E706C7567696E53657474696E67732E706F7075702E69735265706F72744261736963436F6E660D0A2020202020202020262620746869732E706C7567696E53657474696E67732E706F7075702E697352657475726E436F6C756D';
wwv_flow_api.g_varchar2_table(1159) := '6E56697369626C65203D3D2066616C73650D0A2020202020202020262620636F6C756D6E5F6E616D65203D3D20275227200D0A20202020202029207B0D0A20202020202020202F2F646F6E742072656E6465722072657475726E20616E6420646973706C';
wwv_flow_api.g_varchar2_table(1160) := '617920636F6C756D6E0D0A2020202020202020636F6E74696E75653B0D0A2020202020207D0D0A0D0A20202020202069662028200D0A2020202020202020202020746869732E706C7567696E53657474696E67732E706F7075702E69735265706F727442';
wwv_flow_api.g_varchar2_table(1161) := '61736963436F6E660D0A2020202020202020262620746869732E706C7567696E53657474696E67732E706F7075702E6973446973706C6179436F6C756D6E56697369626C65203D3D2066616C73650D0A2020202020202020262620636F6C756D6E5F6E61';
wwv_flow_api.g_varchar2_table(1162) := '6D65203D3D20274427200D0A20202020202029207B0D0A20202020202020202F2F646F6E742072656E6465722072657475726E20616E6420646973706C617920636F6C756D6E0D0A2020202020202020636F6E74696E75653B0D0A2020202020207D0D0A';
wwv_flow_api.g_varchar2_table(1163) := '0D0A2020202020206966202820746869732E706F7075702E73746174652E736F72746564436F6C756D6E496478203D3D20636F6C756D6E5F6964782029207B0D0A20202020202020206966202820746869732E706F7075702E73746174652E736F727465';
wwv_flow_api.g_varchar2_table(1164) := '64436F6C756D6E446972656374696F6E203D3D2027617363272029207B0D0A20202020202020202020697355736564546F536F7274203D20273C7370616E20636C6173733D22752D5265706F72742D736F727449636F6E20612D49636F6E2069636F6E2D';
wwv_flow_api.g_varchar2_table(1165) := '7270742D736F72742D617363223E3C2F7370616E3E273B20200D0A20202020202020202020736F7274696E67446972656374696F6E203D202764657363273B0D0A20202020202020207D0D0A2020202020202020656C7365207B0D0A2020202020202020';
wwv_flow_api.g_varchar2_table(1166) := '2020697355736564546F536F7274203D20273C7370616E20636C6173733D22752D5265706F72742D736F727449636F6E20612D49636F6E2069636F6E2D7270742D736F72742D64657363223E3C2F7370616E3E273B0D0A20202020202020202020736F72';
wwv_flow_api.g_varchar2_table(1167) := '74696E67446972656374696F6E203D2027617363273B0D0A20202020202020207D0D0A2020202020207D0D0A202020202020656C7365207B0D0A2020202020202020697355736564546F536F7274203D2027273B0D0A2020202020202020736F7274696E';
wwv_flow_api.g_varchar2_table(1168) := '67446972656374696F6E203D2027617363273B0D0A2020202020207D0D0A0D0A2020202020206966202820746869732E706F7075702E73746174652E736561726368436F6C756D6E496478203D3D20636F6C756D6E5F6964782029207B0D0A2020202020';
wwv_flow_api.g_varchar2_table(1169) := '202020697346696C7465726564203D20273C7370616E20636C6173733D22752D5265706F72742D736F727449636F6E2066612066612D66696C746572223E3C2F7370616E3E273B0D0A2020202020207D0D0A202020202020656C7365207B0D0A20202020';
wwv_flow_api.g_varchar2_table(1170) := '20202020697346696C7465726564203D2027273B0D0A2020202020207D0D0A0D0A2020202020207468416C69676E203D20746869732E5F706F707570436F6C756D6E4973436F6E66696775726174696F6E417661696C61626C652820636F6C756D6E5F6E';
wwv_flow_api.g_varchar2_table(1171) := '616D652C20277468416C69676E2720293B0D0A0D0A2020202020207468203D2027272B0D0A2020202020202020273C746820636C6173733D22742D5265706F72742D636F6C486561642220616C69676E3D22272B7468416C69676E2B272220617269612D';
wwv_flow_api.g_varchar2_table(1172) := '636F6C756D6E2D6E616D653D22272B636F6C756D6E5F6E616D652B27223E272B0D0A20202020202020202720203C64697620636C6173733D22752D5265706F72742D736F7274223E272B0D0A202020202020202027202020203C7370616E20636C617373';
wwv_flow_api.g_varchar2_table(1173) := '3D22752D5265706F72742D736F727448656164696E67223E272B0D0A2020202020202020272020202020203C6120687265663D226A6176617363726970743A20766F6964283029223E272B636F6C756D6E5F616C6961732B273C2F613E272B0D0A202020';
wwv_flow_api.g_varchar2_table(1174) := '202020202027202020203C2F7370616E3E272B0D0A20202020202020202720202020272B697355736564546F536F72742B27272B0D0A20202020202020202720202020272B697346696C74657265642B27270D0A20202020202020202720203C2F646976';
wwv_flow_api.g_varchar2_table(1175) := '3E272B0D0A2020202020202020273C2F74683E272B0D0A202020202020202027273B0D0A0D0A2020202020207468203D2024287468293B0D0A0D0A202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C';
wwv_flow_api.g_varchar2_table(1176) := '392C20746869732E6C6F675072656669782C20275F706F70757047657448656164696E67732066696C746572696E67206F7220736F7274696E6720617661696C61626C652C2062696E6420636C69636B2063616C6C6261636B27293B0D0A0D0A20202020';
wwv_flow_api.g_varchar2_table(1177) := '202074682E62696E642827636C69636B272C20242E70726F787928746869732E5F706F7075705265706F7274486561646572436C69636B43616C6C6261636B2C20746869732C20746869732E6F7074696F6E732E636F6C756D6E735B695D2C20736F7274';
wwv_flow_api.g_varchar2_table(1178) := '696E67446972656374696F6E29293B0D0A0D0A20202020202074686561642E66696E642827747227292E617070656E642820746820293B0D0A202020207D0D0A0D0A2020202072657475726E2074686561643B0D0A0D0A20207D2C0D0A20202F2A0D0A20';
wwv_flow_api.g_varchar2_table(1179) := '2020202A0D0A202020202A2066756E6374696F6E206E616D653A205F706F7075705265706F7274486561646572436F6E7461696E65724372656174650D0A202020202A206465736372697074696F6E20203A200D0A202020202A20706172616D733A0D0A';
wwv_flow_api.g_varchar2_table(1180) := '202020202A2020202D0D0A202020202A2020202D0D0A202020202A0D0A20202A2F20200D0A20205F706F7075705265706F7274486561646572436F6E7461696E65724372656174653A2066756E6374696F6E28207043757272656E7454682C2070436F6C';
wwv_flow_api.g_varchar2_table(1181) := '756D6E4F626A65637420297B0D0A20202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F706F7075705265706F7274486561646572436F6E7461696E6572';
wwv_flow_api.g_varchar2_table(1182) := '437265617465272C207B0D0A20202020202022617267756D656E7473223A20617267756D656E74732C0D0A202020202020227043757272656E745468223A207043757272656E7454682C0D0A2020202020202270436F6C756D6E4F626A656374223A2070';
wwv_flow_api.g_varchar2_table(1183) := '436F6C756D6E4F626A6563740D0A202020207D293B0D0A0D0A20202020766172200D0A20202020202074657874203D207043757272656E7454682E7465787428292E7472696D28292C0D0A202020202020636F6E7461696E657220203D202428273C6469';
wwv_flow_api.g_varchar2_table(1184) := '7620636C6173733D22636F6C756D6E4F7065726174696F6E73223E3C64697620636C6173733D22736F7274696E67223E3C2F6469763E3C64697620636C6173733D2266696C746572696E67223E3C2F6469763E3C2F6469763E27292C0D0A202020202020';
wwv_flow_api.g_varchar2_table(1185) := '736F7274417363202020203D202428273C6120687265663D226A6176617363726970743A20766F696428302922207469746C653D22272B746869732E435F504F5055505F4845414445525F534F52545F4153435F5449544C452B27223E3C7370616E2063';
wwv_flow_api.g_varchar2_table(1186) := '6C6173733D22612D49636F6E2069636F6E2D6972722D736F72742D617363223E3C2F7370616E3E3C2F613E27292C0D0A202020202020736F727444657363202020203D202428273C6120687265663D226A6176617363726970743A20766F696428302922';
wwv_flow_api.g_varchar2_table(1187) := '207469746C653D22272B746869732E435F504F5055505F4845414445525F534F52545F444553435F5449544C452B27223E3C7370616E20636C6173733D22612D49636F6E2069636F6E2D6972722D736F72742D64657363223E3C2F7370616E3E3C2F613E';
wwv_flow_api.g_varchar2_table(1188) := '27292C0D0A20202020202073656172636849636F6E73203D202428273C6469763E3C7370616E20636C6173733D2266612066612D73656172636820736561726368223E3C2F7370616E3E3C7370616E20636C6173733D2266612066612D74726173682D6F';
wwv_flow_api.g_varchar2_table(1189) := '20636C656172223E3C2F7370616E3E3C2F6469763E27290D0A2020202020207365617263684974656D203D202428273C696E70757420747970653D22746578742220636C6173733D22656D707479223E27292C0D0A2020202020206462436F6C756D6E4E';
wwv_flow_api.g_varchar2_table(1190) := '616D65203D207043757272656E7454682E617474722827617269612D636F6C756D6E2D6E616D6527293B0D0A0D0A2020202073656172636849636F6E732E66696E6428272E636C65617227292E62696E642827636C69636B272C20242E70726F78792820';
wwv_flow_api.g_varchar2_table(1191) := '746869732E5F686561646572576964676574436C65617246696C746572696E672C207468697329293B0D0A0D0A202020206966202820746869732E5F706F707570436F6C756D6E4973436F6E66696775726174696F6E417661696C61626C65282070436F';
wwv_flow_api.g_varchar2_table(1192) := '6C756D6E4F626A6563742E434F4C554D4E5F4E414D452C2027736F72742720292029207B0D0A202020202020736F7274417363202E62696E642827636C69636B272C20242E70726F787928746869732E5F706F707570536F72745265706F72742C207468';
wwv_flow_api.g_varchar2_table(1193) := '69732C206462436F6C756D6E4E616D652C2070436F6C756D6E4F626A6563742E4944582C20276173632729293B0D0A202020202020736F7274446573632E62696E642827636C69636B272C20242E70726F787928746869732E5F706F707570536F727452';
wwv_flow_api.g_varchar2_table(1194) := '65706F72742C20746869732C206462436F6C756D6E4E616D652C2070436F6C756D6E4F626A6563742E4944582C2027646573632729293B0D0A0D0A202020202020636F6E7461696E65722E66696E6428272E736F7274696E6727292E617070656E642820';
wwv_flow_api.g_varchar2_table(1195) := '736F727441736320292E617070656E642820736F72744465736320293B2020202020200D0A202020207D0D0A0D0A202020206966202820746869732E5F706F707570436F6C756D6E4973436F6E66696775726174696F6E417661696C61626C6528207043';
wwv_flow_api.g_varchar2_table(1196) := '6F6C756D6E4F626A6563742E434F4C554D4E5F4E414D452C202766696C7465722720292029207B0D0A2020202020207365617263684974656D0D0A20202020202020202E6F6E28276B65797570272C20746869732E5F6465626F756E636528242E70726F';
wwv_flow_api.g_varchar2_table(1197) := '78792820746869732E5F706F7075705365617263684B657955702C20746869732C206462436F6C756D6E4E616D652C2070436F6C756D6E4F626A6563742E494458292C20746869732E706C7567696E53657474696E67732E706F70757053656172636844';
wwv_flow_api.g_varchar2_table(1198) := '65626F756E636554696D6529290D0A20202020202020202E6F6E28276B65797570272C20242E70726F78792820746869732E5F6865616465725769646765744B657955704D616E61676549636F6E732C20746869732920293B0D0A0D0A20202020202069';
wwv_flow_api.g_varchar2_table(1199) := '66202820746869732E706F7075702E73746174652E736561726368537472696E6720213D20756E646566696E65642026262070436F6C756D6E4F626A6563742E494458203D3D20746869732E706F7075702E73746174652E736561726368436F6C756D6E';
wwv_flow_api.g_varchar2_table(1200) := '49647829207B0D0A20202020202020207365617263684974656D2E76616C2820746869732E706F7075702E73746174652E736561726368537472696E6720293B0D0A20202020202020207365617263684974656D2E72656D6F7665436C6173732827656D';
wwv_flow_api.g_varchar2_table(1201) := '70747927293B0D0A2020202020207D0D0A0D0A202020202020636F6E7461696E65722E66696E6428272E66696C746572696E6727292E617070656E6428207365617263684974656D20292E617070656E64282073656172636849636F6E7320293B0D0A20';
wwv_flow_api.g_varchar2_table(1202) := '2020207D0D0A0D0A20202020636F6E7461696E65722E66696E6428272E68656164696E6727292E63737328276D61785769647468272C207043757272656E7454682E6F7574657257696474682829290D0A0D0A20202020636F6E7461696E65722E637373';
wwv_flow_api.g_varchar2_table(1203) := '287B0D0A202020202020226D696E5769647468223A207043757272656E7454682E6F75746572576964746828292C0D0A202020202020226C656674223A207043757272656E7454682E706F736974696F6E28292E6C6566742C0D0A20202020202022746F';
wwv_flow_api.g_varchar2_table(1204) := '70223A207043757272656E7454682E6F7574657248656967687428290D0A202020207D293B0D0A0D0A20202020636F6E7461696E65722E66696E6428272E68656164696E6727292E637373282770616464696E67272C207043757272656E7454682E6373';
wwv_flow_api.g_varchar2_table(1205) := '73282770616464696E672729290D0A0D0A2020202072657475726E20636F6E7461696E65723B0D0A0D0A20207D2C0D0A20202F2A0D0A202020202A0D0A202020202A2066756E6374696F6E206E616D653A205F706F7075705265706F7274486561646572';
wwv_flow_api.g_varchar2_table(1206) := '576964676574486964650D0A202020202A206465736372697074696F6E20203A200D0A202020202A20706172616D733A0D0A202020202A2020202D0D0A202020202A2020202D0D0A202020202A0D0A20202A2F20200D0A20205F706F7075705265706F72';
wwv_flow_api.g_varchar2_table(1207) := '74486561646572576964676574486964653A2066756E6374696F6E28297B0D0A20202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F706F707570526570';
wwv_flow_api.g_varchar2_table(1208) := '6F727448656164657257696467657448696465272C207B0D0A20202020202022617267756D656E7473223A20617267756D656E74730D0A202020207D293B0D0A0D0A20202020746869732E706F7075702E737469636B79486561646572732E66696E6428';
wwv_flow_api.g_varchar2_table(1209) := '27746827292E72656D6F7665436C617373282769732D61637469766527293B0D0A20202020746869732E706F7075702E686561646572416374696F6E436F6E7461696E65722E72656D6F766528293B0D0A20202020746869732E706F7075702E68656164';
wwv_flow_api.g_varchar2_table(1210) := '6572416374696F6E436F6E7461696E6572203D20756E646566696E65640D0A202020202428646F63756D656E74292E6F66662827636C69636B2E707265746975732D2D656E68616E6365644C6F764974656D27293B0D0A20207D2C0D0A0D0A20202F2A0D';
wwv_flow_api.g_varchar2_table(1211) := '0A202020202A0D0A202020202A2066756E6374696F6E206E616D653A205F706F7075705265706F727448656164657257696467657453686F770D0A202020202A206465736372697074696F6E20203A200D0A202020202A20706172616D733A0D0A202020';
wwv_flow_api.g_varchar2_table(1212) := '202A2020202D0D0A202020202A2020202D0D0A202020202A0D0A20202A2F0D0A20205F706F7075705265706F727448656164657257696467657453686F773A2066756E6374696F6E28207054682C2070576964676574297B0D0A20202020617065782E64';
wwv_flow_api.g_varchar2_table(1213) := '656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F706F7075705265706F727448656164657257696467657453686F77272C207B0D0A20202020202022617267756D656E747322';
wwv_flow_api.g_varchar2_table(1214) := '3A20617267756D656E74732C0D0A20202020202022705468223A207054682C0D0A2020202020202270576964676574223A20705769646765740D0A202020207D293B0D0A0D0A202020206966202820746869732E706F7075702E68656164657241637469';
wwv_flow_api.g_varchar2_table(1215) := '6F6E436F6E7461696E657220213D20756E646566696E6564202029207B0D0A202020202020746869732E5F706F7075705265706F72744865616465725769646765744869646528293B0D0A202020207D0D0A0D0A202020207054682E616464436C617373';
wwv_flow_api.g_varchar2_table(1216) := '282769732D61637469766527293B0D0A20202020746869732E706F7075702E686561646572416374696F6E436F6E7461696E6572203D20705769646765743B0D0A20202020746869732E706F7075702E626F64792E617070656E64282070576964676574';
wwv_flow_api.g_varchar2_table(1217) := '20293B0D0A0D0A20202020705769646765742E66696E6428273A696E70757427292E666F63757328293B0D0A20207D2C0D0A20202F2A0D0A202020202A0D0A202020202A2066756E6374696F6E206E616D653A205F706F7075705265706F727448656164';
wwv_flow_api.g_varchar2_table(1218) := '6572436C69636B43616C6C6261636B0D0A202020202A206465736372697074696F6E20203A200D0A202020202A20706172616D733A0D0A202020202A2020202D0D0A202020202A2020202D0D0A202020202A0D0A20202A2F20200D0A20205F706F707570';
wwv_flow_api.g_varchar2_table(1219) := '5265706F7274486561646572436C69636B43616C6C6261636B3A2066756E6374696F6E282070436F6C756D6E4F626A6563742C2070536F7274446972656374696F6E2C20704576656E7420297B0D0A20202020617065782E64656275672E6D6573736167';
wwv_flow_api.g_varchar2_table(1220) := '6528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F706F7075705265706F7274486561646572436C69636B43616C6C6261636B272C207B0D0A20202020202022617267756D656E7473223A20617267756D65';
wwv_flow_api.g_varchar2_table(1221) := '6E74732C0D0A2020202020202270436F6C756D6E4F626A656374223A2070436F6C756D6E4F626A6563742C0D0A2020202020202270536F7274446972656374696F6E223A2070536F7274446972656374696F6E2C0D0A20202020202022704576656E7422';
wwv_flow_api.g_varchar2_table(1222) := '3A20704576656E740D0A202020207D293B0D0A0D0A20202020704576656E742E73746F70496D6D65646961746550726F7061676174696F6E28293B0D0A0D0A20202020766172200D0A2020202020207468203D202428704576656E742E63757272656E74';
wwv_flow_api.g_varchar2_table(1223) := '546172676574292C0D0A202020202020636F6E7461696E6572203D20746869732E5F706F7075705265706F7274486561646572436F6E7461696E6572437265617465282074682C2070436F6C756D6E4F626A65637420293B0D0A0D0A2020202074686973';
wwv_flow_api.g_varchar2_table(1224) := '2E5F706F7075705265706F727448656164657257696467657453686F77282074682C20636F6E7461696E657220293B0D0A0D0A202020200D0A202020202428646F63756D656E74292E62696E642827636C69636B2E707265746975732D2D656E68616E63';
wwv_flow_api.g_varchar2_table(1225) := '65644C6F764974656D272C20242E70726F78792820746869732E5F706F7075705265706F7274486561646572436C69636B4F757473696465436865636B2C20746869732029293B0D0A20207D2C0D0A20202F2A0D0A202020202A0D0A202020202A206675';
wwv_flow_api.g_varchar2_table(1226) := '6E6374696F6E206E616D653A205F706F7075705265706F7274486561646572436C69636B4F757473696465436865636B0D0A202020202A206465736372697074696F6E20203A200D0A202020202A20706172616D733A0D0A202020202A2020202D0D0A20';
wwv_flow_api.g_varchar2_table(1227) := '2020202A2020202D0D0A202020202A0D0A20202A2F20200D0A20205F706F7075705265706F7274486561646572436C69636B4F757473696465436865636B3A2066756E6374696F6E2820704576656E7420297B0D0A20202020617065782E64656275672E';
wwv_flow_api.g_varchar2_table(1228) := '6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F706F7075705265706F7274486561646572436C69636B4F757473696465436865636B272C207B0D0A20202020202022617267756D656E74';
wwv_flow_api.g_varchar2_table(1229) := '73223A20617267756D656E74732C0D0A20202020202022704576656E74223A20704576656E740D0A202020207D293B0D0A0D0A2020202076617220746172676574203D202428704576656E742E746172676574293B0D0A0D0A2020202069662028202124';
wwv_flow_api.g_varchar2_table(1230) := '2E636F6E7461696E732820746869732E706F7075702E686561646572416374696F6E436F6E7461696E65722E6765742830292C207461726765742E67657428302920292029207B0D0A2020202020202F2F636C69636B206F75747369646520666F756E64';
wwv_flow_api.g_varchar2_table(1231) := '0D0A202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F706F7075705265706F7274486561646572436C69636B4F757473696465436865636B272C';
wwv_flow_api.g_varchar2_table(1232) := '2027636C69636B6564206F757473696465206865616465722077696467657427293B0D0A202020202020746869732E5F706F7075705265706F72744865616465725769646765744869646528293B0D0A202020207D0D0A20202020656C7365207B0D0A20';
wwv_flow_api.g_varchar2_table(1233) := '2020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F706F7075705265706F7274486561646572436C69636B4F757473696465436865636B272C202763';
wwv_flow_api.g_varchar2_table(1234) := '6C69636B656420696E73696465206865616465722077696467657427293B0D0A202020207D0D0A202020200D0A20207D2C0D0A20202F2A0D0A202020202A0D0A202020202A2066756E6374696F6E206E616D653A205F706F707570437265617465537469';
wwv_flow_api.g_varchar2_table(1235) := '636B79486561646572730D0A202020202A206465736372697074696F6E20203A200D0A202020202A20706172616D733A0D0A202020202A2020202D0D0A202020202A2020202D0D0A202020202A0D0A20202A2F20200D0A20205F706F7075704372656174';
wwv_flow_api.g_varchar2_table(1236) := '65537469636B79486561646572733A2066756E6374696F6E2829207B0D0A20202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F706F7075704372656174';
wwv_flow_api.g_varchar2_table(1237) := '65537469636B7948656164657273272C207B0D0A20202020202022617267756D656E7473223A20617267756D656E74730D0A202020207D293B0D0A0D0A202020207661720D0A2020202020207461626C65203D202428273C7461626C653E3C2F7461626C';
wwv_flow_api.g_varchar2_table(1238) := '653E27292C0D0A2020202020207468656164203D20746869732E706F7075702E626F64792E66696E6428272E7265706F727420746865616427292E636C6F6E6528747275652C2074727565292C0D0A202020202020746873203D20746869732E706F7075';
wwv_flow_api.g_varchar2_table(1239) := '702E626F64792E66696E6428277461626C6520746827292C0D0A202020202020737469636B794865616465723B0D0A0D0A202020206966202820746869732E706F7075702E737469636B794865616465727320213D20756E646566696E65642029207B0D';
wwv_flow_api.g_varchar2_table(1240) := '0A202020202020746869732E706F7075702E737469636B79486561646572732E72656D6F766528293B0D0A202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669';
wwv_flow_api.g_varchar2_table(1241) := '782C20275F706F707570437265617465537469636B7948656164657273272C202772656D6F76696E67206578697374696E6720737469636B794865616465727327293B0D0A202020207D0D0A0D0A2020202074686561642E66696E642827746827292E65';
wwv_flow_api.g_varchar2_table(1242) := '616368282066756E6374696F6E282070496E6465782C2070456C656D20297B0D0A202020202020242870456C656D292E637373287B0D0A2020202020202020276D696E5769647468273A207468732E65712870496E646578292E6F757465725769647468';
wwv_flow_api.g_varchar2_table(1243) := '28292C0D0A2020202020202020276D61785769647468273A207468732E65712870496E646578292E6F75746572576964746828292C0D0A2020202020202020277769647468272020203A207468732E65712870496E646578292E6F757465725769647468';
wwv_flow_api.g_varchar2_table(1244) := '28292C0D0A2020202020207D293B0D0A0D0A2020202020207468732E65712870496E646578292E637373287B0D0A2020202020202020276D696E5769647468273A207468732E65712870496E646578292E6F75746572576964746828292C0D0A20202020';
wwv_flow_api.g_varchar2_table(1245) := '20202020276D61785769647468273A207468732E65712870496E646578292E6F75746572576964746828292C0D0A2020202020202020277769647468272020203A207468732E65712870496E646578292E6F75746572576964746828292C0D0A20202020';
wwv_flow_api.g_varchar2_table(1246) := '20207D290D0A202020207D293B0D0A0D0A0D0A202020207461626C650D0A2020202020202E616464436C6173732822742D5265706F72742D7265706F727420737469636B794865616465727322292E61747472282273756D6D617279222C20746869732E';
wwv_flow_api.g_varchar2_table(1247) := '706C7567696E53657474696E67732E706F7075702E7469746C65290D0A2020202020202E6373732827746F70272C2030290D0A2020202020202E617070656E642820746865616420293B0D0A0D0A20202020746869732E706F7075702E737469636B7948';
wwv_flow_api.g_varchar2_table(1248) := '656164657273203D207461626C653B0D0A20202020746869732E706F7075702E73656C656374416C6C436865636B626F78203D20746869732E706F7075702E737469636B79486561646572732E66696E64282774683A66697273742D6368696C64203A63';
wwv_flow_api.g_varchar2_table(1249) := '6865636B626F7827293B0D0A0D0A20202020746869732E706F7075702E626F64792E617070656E6428207461626C6520293B0D0A20207D2C0D0A20202F2A0D0A202020202A0D0A202020202A2066756E6374696F6E206E616D653A205F706F7075705265';
wwv_flow_api.g_varchar2_table(1250) := '706F727452656E6465724E6F64617461466F756E640D0A202020202A206465736372697074696F6E20203A200D0A202020202A20706172616D733A0D0A202020202A2020202D0D0A202020202A2020202D0D0A202020202A0D0A20202A2F20200D0A2020';
wwv_flow_api.g_varchar2_table(1251) := '5F706F7075705265706F727452656E6465724E6F64617461466F756E643A2066756E6374696F6E28297B0D0A20202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C362C20746869732E6C6F67507265666978';
wwv_flow_api.g_varchar2_table(1252) := '2C20275F706F7075705265706F727452656E6465724E6F64617461466F756E64272C207B0D0A20202020202022617267756D656E7473223A20617267756D656E74730D0A202020207D293B0D0A0D0A20202020766172200D0A2020202020207365617263';
wwv_flow_api.g_varchar2_table(1253) := '685465726D203D20746869732E706F7075702E73746174652E736561726368537472696E672C0D0A2020202020206E6F44617461466F756E64546578742C0D0A202020202020636F6E7461696E6572203D20242827202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(1254) := '202020202020202020202020202020202020272B0D0A2020202020202020273C64697620636C6173733D226E6F64617461666F756E64436F6E7461696E6572223E2020202020202020202020272B0D0A20202020202020202720203C64697620636C6173';
wwv_flow_api.g_varchar2_table(1255) := '733D2269636F6E223E20202020202020202020202020202020202020202020202020272B0D0A202020202020202027202020203C7370616E20636C6173733D2266612066612D7461626C652D736561726368223E3C2F7370616E3E20272B0D0A20202020';
wwv_flow_api.g_varchar2_table(1256) := '202020202720203C2F6469763E20202020202020202020202020202020202020202020202020202020202020202020202020272B0D0A20202020202020202720203C64697620636C6173733D2274657874223E2354455854233C2F6469763E272B0D0A20';
wwv_flow_api.g_varchar2_table(1257) := '20202020202020273C2F6469763E202020202020202020202020202020202020202020202020202020202020202020202020202020272B0D0A202020202020202027270D0A202020202020293B0D0A0D0A2020202069662028207365617263685465726D';
wwv_flow_api.g_varchar2_table(1258) := '203D3D206E756C6C2029207B0D0A2020202020206E6F44617461466F756E6454657874203D20746869732E435F504F5055505F544558545F4E4F5F444154415F464F554E445F51554552593B0D0A202020207D0D0A20202020656C7365207B0D0A202020';
wwv_flow_api.g_varchar2_table(1259) := '2020206E6F44617461466F756E6454657874203D20746869732E435F504F5055505F544558545F4E4F5F444154415F464F554E445F5345415243482E7265706C61636528272530272C207365617263685465726D29202B20273C2F62723E272B74686973';
wwv_flow_api.g_varchar2_table(1260) := '2E435F504F5055505F544558545F434C4541525F46494C544552494E473B0D0A202020207D0D0A0D0A20202020636F6E7461696E65722E66696E6428272E7465787427292E68746D6C286E6F44617461466F756E6454657874293B0D0A0D0A2020202074';
wwv_flow_api.g_varchar2_table(1261) := '6869732E706F7075702E626F64792E656D70747928292E617070656E6428636F6E7461696E6572293B0D0A20202020746869732E5F706F707570506167696E6174696F6E4869646528293B0D0A20202020746869732E5F706F707570526F777350657250';
wwv_flow_api.g_varchar2_table(1262) := '6167654869646528293B0D0A20202020746869732E5F706F70757041646A757374426F647948656967687428293B0D0A20207D2C0D0A20202F2A0D0A202020202A0D0A202020202A2066756E6374696F6E206E616D653A205F706F7075705265706F7274';
wwv_flow_api.g_varchar2_table(1263) := '426F64794765740D0A202020202A206465736372697074696F6E20203A200D0A202020202A20706172616D733A0D0A202020202A2020202D0D0A202020202A2020202D0D0A202020202A0D0A20202A2F20200D0A20205F706F7075705265706F7274426F';
wwv_flow_api.g_varchar2_table(1264) := '64794765743A2066756E6374696F6E2820704461746120297B0D0A20202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F706F7075705265706F7274426F';
wwv_flow_api.g_varchar2_table(1265) := '6479476574272C207B0D0A20202020202022617267756D656E7473223A20617267756D656E74732C0D0A202020202020227044617461223A2070446174610D0A202020207D293B0D0A0D0A202020207661720D0A20202020202074626F647954656D706C';
wwv_flow_api.g_varchar2_table(1266) := '617465203D2027272B0D0A2020202020202020277B7B23646174617D7D272B0D0A2020202020202020273C7472272B0D0A202020202020202027207B7B2365787472617D7D636C6173733D22657874726156616C7565227B7B2F65787472617D7D272B0D';
wwv_flow_api.g_varchar2_table(1267) := '0A202020202020202027207B7B236973415045584E756C6C56616C75657D7D636C6173733D226E756C6C56616C7565227B7B2F6973415045584E756C6C56616C75657D7D3E272C0D0A202020202020636F6C756D6E5F6E616D652C0D0A20202020202069';
wwv_flow_api.g_varchar2_table(1268) := '6E70757453656C6563746F723B0D0A0D0A202020206966202820746869732E706C7567696E53657474696E67732E69734D756C7469706C6553656C656374696F6E2029207B0D0A202020202020696E70757453656C6563746F72203D2027272B0D0A2020';
wwv_flow_api.g_varchar2_table(1269) := '202020202020273C696E707574272B0D0A20202020202020202720747970653D22636865636B626F7822272B0D0A2020202020202020272076616C75653D227B7B7B527D7D7D22272B0D0A202020202020202027207B7B2373656C65637465647D7D6368';
wwv_flow_api.g_varchar2_table(1270) := '65636B65643D2274727565227B7B2F73656C65637465647D7D272B0D0A202020202020202027207B7B2365787472617D7D617269612D65787472612D76616C75653D2274727565227B7B2F65787472617D7D272B0D0A202020202020202027207B7B2369';
wwv_flow_api.g_varchar2_table(1271) := '73415045584E756C6C56616C75657D7D617269612D6E756C6C2D76616C75653D2274727565227B7B2F6973415045584E756C6C56616C75657D7D272B0D0A20202020202020202720617269612D646973706C61792D76616C75653D227B7B7B447D7D7D22';
wwv_flow_api.g_varchar2_table(1272) := '272B0D0A202020202020202027206E616D653D226D756C7469706C6522272B0D0A2020202020202020273E272B0D0A20202020202020202720203C7370616E20636C6173733D2266612066612D636865636B2D7371756172652D6F2066616B6543686563';
wwv_flow_api.g_varchar2_table(1273) := '6B626F78223E3C2F7370616E3E272B0D0A20202020202020202720203C7370616E20636C6173733D2266612066612D7371756172652D6F2066616B65436865636B626F78223E3C2F7370616E3E272B0D0A202020202020202027273B0D0A202020207D0D';
wwv_flow_api.g_varchar2_table(1274) := '0A20202020656C7365207B0D0A202020202020696E70757453656C6563746F72203D2027272B0D0A2020202020202020273C696E707574272B0D0A20202020202020202720747970653D22726164696F22272B0D0A2020202020202020272076616C7565';
wwv_flow_api.g_varchar2_table(1275) := '3D227B7B7B527D7D7D22272B0D0A202020202020202027207B7B2373656C65637465647D7D636865636B65643D2274727565227B7B2F73656C65637465647D7D272B0D0A20202020202020202720617269612D646973706C61792D76616C75653D227B7B';
wwv_flow_api.g_varchar2_table(1276) := '7B447D7D7D22272B0D0A202020202020202027207B7B2365787472617D7D617269612D65787472612D76616C75653D2274727565227B7B2F65787472617D7D272B0D0A202020202020202027207B7B236973415045584E756C6C56616C75657D7D617269';
wwv_flow_api.g_varchar2_table(1277) := '612D6E756C6C2D76616C75653D2274727565227B7B2F6973415045584E756C6C56616C75657D7D272B0D0A202020202020202027206E616D653D2273696E676C6522272B0D0A2020202020202020273E272B0D0A20202020202020202720203C7370616E';
wwv_flow_api.g_varchar2_table(1278) := '20636C6173733D2266612066612D646F742D636972636C652D6F2066616B65526164696F223E3C2F7370616E3E272B0D0A20202020202020202720203C7370616E20636C6173733D2266612066612D636972636C652D6F2066616B65526164696F223E3C';
wwv_flow_api.g_varchar2_table(1279) := '2F7370616E3E272B0D0A202020202020202027273B0D0A202020207D0D0A0D0A2020202074626F647954656D706C617465202B3D2027272B0D0A202020202020273C746420636C6173733D22742D5265706F72742D63656C6C223E272B0D0A2020202020';
wwv_flow_api.g_varchar2_table(1280) := '2027272B696E70757453656C6563746F722B27272B0D0A202020202020273C2F74643E273B0D0A0D0A20202020666F722028207661722069203D303B2069203C20746869732E6F7074696F6E732E636F6C756D6E732E6C656E6774683B20692B2B202920';
wwv_flow_api.g_varchar2_table(1281) := '7B0D0A202020202020636F6C756D6E5F6E616D65203D20746869732E6F7074696F6E732E636F6C756D6E735B695D2E434F4C554D4E5F4E414D453B0D0A0D0A20202020202069662028200D0A2020202020202020746869732E706C7567696E5365747469';
wwv_flow_api.g_varchar2_table(1282) := '6E67732E706F7075702E69735265706F7274416476616E636564436F6E660D0A202020202020202026262021746869732E5F706F707570436F6C756D6E4973446566696E65642820636F6C756D6E5F6E616D652029200D0A20202020202029207B0D0A20';
wwv_flow_api.g_varchar2_table(1283) := '20202020202020636F6E74696E75653B0D0A2020202020207D0D0A0D0A202020202020696620282021746869732E5F706F707570436F6C756D6E4973436F6E66696775726174696F6E417661696C61626C652820636F6C756D6E5F6E616D652C20277669';
wwv_flow_api.g_varchar2_table(1284) := '7369626C652720292029207B0D0A20202020202020202F2F636F6C756D6E207669736962696C697479206E6F7420646566696E65640D0A2020202020202020636F6E74696E75653B0D0A2020202020207D0D0A0D0A20202020202069662028200D0A2020';
wwv_flow_api.g_varchar2_table(1285) := '202020202020202020746869732E706C7567696E53657474696E67732E706F7075702E69735265706F72744261736963436F6E660D0A2020202020202020262620746869732E706C7567696E53657474696E67732E706F7075702E697352657475726E43';
wwv_flow_api.g_varchar2_table(1286) := '6F6C756D6E56697369626C65203D3D2066616C73650D0A2020202020202020262620636F6C756D6E5F6E616D65203D3D20275227200D0A20202020202029207B0D0A20202020202020202F2F646F6E742072656E6465722072657475726E20616E642064';
wwv_flow_api.g_varchar2_table(1287) := '6973706C617920636F6C756D6E0D0A2020202020202020636F6E74696E75653B0D0A2020202020207D0D0A0D0A20202020202069662028200D0A2020202020202020202020746869732E706C7567696E53657474696E67732E706F7075702E6973526570';
wwv_flow_api.g_varchar2_table(1288) := '6F72744261736963436F6E660D0A2020202020202020262620746869732E706C7567696E53657474696E67732E706F7075702E6973446973706C6179436F6C756D6E56697369626C65203D3D2066616C73650D0A2020202020202020262620636F6C756D';
wwv_flow_api.g_varchar2_table(1289) := '6E5F6E616D65203D3D20274427200D0A20202020202029207B0D0A20202020202020202F2F646F6E742072656E6465722072657475726E20616E6420646973706C617920636F6C756D6E0D0A2020202020202020636F6E74696E75653B0D0A2020202020';
wwv_flow_api.g_varchar2_table(1290) := '207D0D0A0D0A2020202020207464416C69676E203D20746869732E5F706F707570436F6C756D6E4973436F6E66696775726174696F6E417661696C61626C652820636F6C756D6E5F6E616D652C20277464416C69676E2720293B0D0A2020202020207462';
wwv_flow_api.g_varchar2_table(1291) := '6F647954656D706C617465202B3D20273C746420636C6173733D22742D5265706F72742D63656C6C2220616C69676E3D22272B7464416C69676E2B272220686561646572733D22272B636F6C756D6E5F6E616D652B27223E7B7B7B272B636F6C756D6E5F';
wwv_flow_api.g_varchar2_table(1292) := '6E616D652B277D7D7D3C2F74643E273B0D0A202020207D0D0A0D0A2020202074626F647954656D706C617465202B3D20273C2F74723E7B7B2F646174617D7D273B0D0A0D0A20202020747279207B0D0A20202020202072656E6465726564203D2024284D';
wwv_flow_api.g_varchar2_table(1293) := '757374616368652E72656E646572282074626F647954656D706C6174652C20704461746129293B0D0A202020207D20636174636828206572726F722029207B0D0A202020202020746869732E5F7468726F774572726F72286572726F72293B0D0A202020';
wwv_flow_api.g_varchar2_table(1294) := '207D0D0A0D0A202020202F2F686967686C6967687420726573756C74730D0A202020206966202820746869732E706F7075702E73746174652E736561726368537472696E672029207B0D0A20202020202072656E6465726564203D20746869732E5F706F';
wwv_flow_api.g_varchar2_table(1295) := '707570486967686C69676874526573756C74732872656E6465726564293B20200D0A202020207D0D0A0D0A2020202072656E6465726564203D20746869732E5F706F7075704D61726B4173457874726156616C7565282072656E646572656420293B0D0A';
wwv_flow_api.g_varchar2_table(1296) := '2020202072656E6465726564203D20746869732E5F706F7075704D61726B41734E756C6C56616C7565282072656E646572656420293B0D0A0D0A2020202072657475726E2072656E64657265643B0D0A20207D2C0D0A20202F2A0D0A202020202A0D0A20';
wwv_flow_api.g_varchar2_table(1297) := '2020202A2066756E6374696F6E206E616D653A205F706F7075704D61726B41734E756C6C56616C75650D0A202020202A206465736372697074696F6E20203A200D0A202020202A20706172616D733A0D0A202020202A2020202D0D0A202020202A202020';
wwv_flow_api.g_varchar2_table(1298) := '2D0D0A202020202A0D0A20202A2F20200D0A20205F706F7075704D61726B41734E756C6C56616C75653A2066756E6374696F6E28207052656E646572656420297B0D0A20202020617065782E64656275672E6D65737361676528746869732E435F4C4F47';
wwv_flow_api.g_varchar2_table(1299) := '5F4C4556454C392C20746869732E6C6F675072656669782C20275F706F7075704D61726B41734E756C6C56616C7565272C207B0D0A20202020202022617267756D656E7473223A20617267756D656E74732C0D0A202020202020227052656E6465726564';
wwv_flow_api.g_varchar2_table(1300) := '223A207052656E64657265640D0A202020207D293B0D0A0D0A202020207661720D0A2020202020207464436E74203D207052656E64657265642E66696E642827746427292E6C656E6774683B0D0A0D0A202020207052656E64657265642E656163682820';
wwv_flow_api.g_varchar2_table(1301) := '242E70726F78792866756E6374696F6E2820705464436E742C2070496E6465782C2070456C656D20297B0D0A202020202020766172200D0A202020202020202073656C66203D20242870456C656D292C0D0A20202020202020206E756C6C56616C756520';
wwv_flow_api.g_varchar2_table(1302) := '3D2073656C662E66696E6428273A696E70757427292E76616C28292C0D0A202020202020202074657874203D2073656C662E66696E6428273A696E70757427292E617474722827617269612D646973706C61792D76616C756527293B0D0A0D0A20202020';
wwv_flow_api.g_varchar2_table(1303) := '2020696620282073656C662E697328272E6E756C6C56616C756527292029207B0D0A202020202020202073656C662E66696E642827746427292E6E6F7428273A66697273742D6368696C6427292E72656D6F766528293B0D0A202020202020202073656C';
wwv_flow_api.g_varchar2_table(1304) := '662E617070656E6428273C746420636C6173733D22742D5265706F72742D63656C6C2220636F6C7370616E3D22272B28705464436E742D31292B27223E272B746578742B273C2F74643E27293B0D0A2020202020200D0A2020202020207D0D0A0D0A2020';
wwv_flow_api.g_varchar2_table(1305) := '20207D2C20746869732C207464436E742920293B0D0A0D0A2020202072657475726E207052656E64657265643B0D0A0D0A20207D2C0D0A20202F2A0D0A202020202A0D0A202020202A2066756E6374696F6E206E616D653A205F706F7075704D61726B41';
wwv_flow_api.g_varchar2_table(1306) := '73457874726156616C75650D0A202020202A206465736372697074696F6E20203A200D0A202020202A20706172616D733A0D0A202020202A2020202D0D0A202020202A2020202D0D0A202020202A0D0A20202A2F20200D0A20205F706F7075704D61726B';
wwv_flow_api.g_varchar2_table(1307) := '4173457874726156616C75653A2066756E6374696F6E28207052656E646572656420297B0D0A20202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F706F';
wwv_flow_api.g_varchar2_table(1308) := '7075704D61726B4173457874726156616C7565272C207B0D0A20202020202022617267756D656E7473223A20617267756D656E74732C0D0A202020202020227052656E6465726564223A207052656E64657265640D0A202020207D293B0D0A0D0A202020';
wwv_flow_api.g_varchar2_table(1309) := '20766172200D0A20202020202063656C6C54657874203D20746869732E435F504F5055505F544558545F45585452415F56414C55453B0D0A2020202020207464436E74203D207052656E64657265642E66696E642827746427292E6C656E6774683B0D0A';
wwv_flow_api.g_varchar2_table(1310) := '0D0A202020207052656E64657265642E656163682820242E70726F78792866756E6374696F6E2820705464436E742C2070546578742C2070496E6465782C2070456C656D20297B0D0A202020202020766172200D0A202020202020202073656C66203D20';
wwv_flow_api.g_varchar2_table(1311) := '242870456C656D292C0D0A2020202020202020657874726156616C7565203D2073656C662E66696E6428273A696E70757427292E76616C28292C0D0A202020202020202074657874203D2070546578742E7265706C61636528272530272C206578747261';
wwv_flow_api.g_varchar2_table(1312) := '56616C7565293B0D0A0D0A202020202020696620282073656C662E697328272E657874726156616C756527292029207B0D0A202020202020202073656C662E66696E642827746427292E6E6F7428273A66697273742D6368696C6427292E72656D6F7665';
wwv_flow_api.g_varchar2_table(1313) := '28293B0D0A202020202020202073656C662E617070656E6428273C746420636C6173733D22742D5265706F72742D63656C6C2220636F6C7370616E3D22272B28705464436E742D31292B27223E272B746578742B273C2F74643E27293B0D0A2020202020';
wwv_flow_api.g_varchar2_table(1314) := '200D0A2020202020207D0D0A0D0A202020207D2C20746869732C207464436E742C2063656C6C546578742920293B0D0A0D0A2020202072657475726E207052656E64657265643B0D0A20207D2C0D0A20202F2A0D0A202020202A0D0A202020202A206675';
wwv_flow_api.g_varchar2_table(1315) := '6E6374696F6E206E616D653A205F706F7075705265706F727452656E6465720D0A202020202A206465736372697074696F6E20203A200D0A202020202A20706172616D733A0D0A202020202A2020202D0D0A202020202A2020202D0D0A202020202A0D0A';
wwv_flow_api.g_varchar2_table(1316) := '20202A2F20200D0A20205F706F7075705265706F727452656E6465723A2066756E6374696F6E2820704461746120297B0D0A20202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C362C20746869732E6C6F67';
wwv_flow_api.g_varchar2_table(1317) := '5072656669782C20275F706F7075705265706F727452656E646572272C207B0D0A20202020202022617267756D656E7473223A20617267756D656E74732C0D0A202020202020227044617461223A2070446174610D0A202020207D293B0D0A0D0A202020';
wwv_flow_api.g_varchar2_table(1318) := '20766172200D0A2020202020207461626C65436F6E7461696E6572203D202428273C6469763E3C2F6469763E27292C0D0A2020202020207461626C65203D202428273C7461626C653E3C2F7461626C653E27292C0D0A20202020202074686561642C0D0A';
wwv_flow_api.g_varchar2_table(1319) := '20202020202074626F6479203D202428273C74626F64793E3C2F74626F64793E27292C0D0A20202020202073656C6563746564436E74203D20303B0D0A0D0A20202020696620282070446174612E646174612E6C656E677468203D3D20302029207B0D0A';
wwv_flow_api.g_varchar2_table(1320) := '202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C362C20746869732E6C6F675072656669782C20275F706F7075705265706F727452656E646572272C20276E6F20726F777320746F2072656E646572';
wwv_flow_api.g_varchar2_table(1321) := '2C20646973706C6179206E6F206461746120666F756E6427293B0D0A202020202020746869732E706F7075702E626F64792E616464436C61737328276E6F64617461666F756E6427293B0D0A202020202020746869732E5F706F7075705265706F727452';
wwv_flow_api.g_varchar2_table(1322) := '656E6465724E6F64617461466F756E6428293B0D0A20202020202072657475726E20766F69642830293B0D0A202020207D0D0A0D0A202020207468656164203D20746869732E5F706F70757047657448656164696E677328293B0D0A0D0A202020207461';
wwv_flow_api.g_varchar2_table(1323) := '626C650D0A2020202020202E616464436C6173732822742D5265706F72742D7265706F7274207265706F727422290D0A2020202020202E61747472282273756D6D617279222C20746869732E706C7567696E53657474696E67732E706F7075702E746974';
wwv_flow_api.g_varchar2_table(1324) := '6C65290D0A2020202020202E617070656E642820746865616420290D0A2020202020202E617070656E64282074626F64792E617070656E642820746869732E5F706F7075705265706F7274426F6479476574282070446174612029202920293B0D0A0D0A';
wwv_flow_api.g_varchar2_table(1325) := '202020207461626C65436F6E7461696E65720D0A2020202020202E616464436C6173732827742D5265706F727420742D5265706F72742D2D616C74526F777344656661756C7420742D5265706F72742D2D726F77486967686C6967687420742D5265706F';
wwv_flow_api.g_varchar2_table(1326) := '72742D2D7374726574636827290D0A2020202020202E617070656E6428207461626C6520293B0D0A202020200D0A20202020746869732E706F7075702E636F6E74656E745461626C65203D207461626C653B0D0A0D0A0D0A20202020746869732E706F70';
wwv_flow_api.g_varchar2_table(1327) := '75702E626F64790D0A2020202020202E72656D6F7665436C61737328276E6F64617461666F756E6427290D0A2020202020202E72656D6F7665436C6173732827736561726368696E6727290D0A2020202020202E656D70747928290D0A2020202020202E';
wwv_flow_api.g_varchar2_table(1328) := '617070656E6428207461626C65436F6E7461696E657220290D0A2020202020202E7363726F6C6C546F702830293B0D0A0D0A202020202F2F7570646174652073656C656374696F6E2073746174650D0A202020206966202820746869732E706C7567696E';
wwv_flow_api.g_varchar2_table(1329) := '53657474696E67732E69734D756C7469706C6553656C656374696F6E2029207B0D0A20202020202074626F64792E66696E64282774643A66697273742D6368696C64203A636865636B626F783A636865636B656427292E6561636828242E70726F787928';
wwv_flow_api.g_varchar2_table(1330) := '2066756E6374696F6E282070496E6465782C2070456C656D20297B0D0A202020202020202073656C6563746564436E742B2B3B0D0A2020202020202020746869732E5F706F707570546F67676C65526F775374617465282070456C656D20293B0D0A2020';
wwv_flow_api.g_varchar2_table(1331) := '202020207D2C20746869732029293B0D0A202020207D0D0A20202020656C7365207B0D0A20202020202074626F64792E66696E64282774643A66697273742D6368696C64203A726164696F3A636865636B656427292E6561636828242E70726F78792820';
wwv_flow_api.g_varchar2_table(1332) := '66756E6374696F6E282070496E6465782C2070456C656D20297B0D0A2020202020202020746869732E5F706F707570546F67676C65526F775374617465282070456C656D20293B0D0A2020202020207D2C20746869732029293B0D0A202020207D0D0A20';
wwv_flow_api.g_varchar2_table(1333) := '0D0A202020200D0A20202020746869732E5F706F707570506167696E6174696F6E55706461746528293B0D0A202020202F2F746869732E5F706F70757048656164657253686F7728293B0D0A20202020746869732E5F706F707570486561646572456E61';
wwv_flow_api.g_varchar2_table(1334) := '626C6528293B0D0A202020202F2F746869732E5F706F707570466F6F74657253686F7728293B0D0A20202020746869732E5F706F707570466F6F746572456E61626C6528293B0D0A202020200D0A20202020746869732E5F706F70757041646A75737442';
wwv_flow_api.g_varchar2_table(1335) := '6F647948656967687428293B0D0A20202020746869732E5F706F707570437265617465537469636B794865616465727328293B0D0A0D0A20202020746869732E706F7075702E7365617263682E666F63757328293B0D0A0D0A2020202069662028207468';
wwv_flow_api.g_varchar2_table(1336) := '69732E706C7567696E53657474696E67732E69734D756C7469706C6553656C656374696F6E2029207B0D0A202020202020696620282070446174612E646174612E6C656E677468203D3D2073656C6563746564436E742029207B0D0A2020202020202020';
wwv_flow_api.g_varchar2_table(1337) := '617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C362C20746869732E6C6F675072656669782C20275F706F7075705265706F727452656E64657220616A61782064617461206C656E677468206D617463682073656C';
wwv_flow_api.g_varchar2_table(1338) := '656374656420726F777327293B0D0A2020202020202020746869732E706F7075702E73656C656374416C6C436865636B626F782E70726F702827636865636B6564272C2074727565293B0D0A2020202020207D0D0A202020202020656C7365207B0D0A20';
wwv_flow_api.g_varchar2_table(1339) := '20202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C362C20746869732E6C6F675072656669782C20275F706F7075705265706F727452656E64657220616A61782064617461206C656E67746820646F';
wwv_flow_api.g_varchar2_table(1340) := '65736E5C2774206D617463682073656C656374656420726F7773272C2027616A61782064617461206C656E677468203D2022272B70446174612E646174612E6C656E6774682B2722272C202773656C656374656420726F7773203D2022272B73656C6563';
wwv_flow_api.g_varchar2_table(1341) := '746564436E742B272227293B0D0A2020202020207D0D0A0D0A202020207D0D0A0D0A20202020746869732E5F747269676765724576656E7428277061656C695F706F7075705F646174615F72656E6465726564272C20746869732E5F706F707570476574';
wwv_flow_api.g_varchar2_table(1342) := '4576656E74446174612829293B0D0A20207D2C0D0A0D0A20202F2A0D0A202020202A0D0A202020202A2066756E6374696F6E206E616D653A205F706F707570476574526F7773506572506167650D0A202020202A206465736372697074696F6E20203A20';
wwv_flow_api.g_varchar2_table(1343) := '0D0A202020202A20706172616D733A0D0A202020202A2020202D0D0A202020202A2020202D0D0A202020202A0D0A20202A2F0D0A20205F706F707570476574526F7773506572506167653A2066756E6374696F6E28297B0D0A20202020617065782E6465';
wwv_flow_api.g_varchar2_table(1344) := '6275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F706F707570476574526F777350657250616765272C207B0D0A20202020202022617267756D656E7473223A20617267756D656E';
wwv_flow_api.g_varchar2_table(1345) := '74730D0A202020207D293B0D0A0D0A202020207661722076616C7565203D20746869732E706F7075702E726F7773506572506167652E76616C28293B0D0A0D0A20202020696620282076616C7565203D3D202725272029207B0D0A202020202020726574';
wwv_flow_api.g_varchar2_table(1346) := '75726E20746869732E706C7567696E53657474696E67732E706F7075702E726F7773506572506167653B0D0A202020207D0D0A20202020656C736520696620282076616C7565203D3D20756E646566696E65642029207B0D0A2020202020207265747572';
wwv_flow_api.g_varchar2_table(1347) := '6E20746869732E706C7567696E53657474696E67732E706F7075702E726F7773506572506167653B0D0A202020207D0D0A20202020656C7365207B0D0A20202020202072657475726E2076616C75653B0D0A202020207D0D0A20207D2C0D0A20200D0A20';
wwv_flow_api.g_varchar2_table(1348) := '202F2A0D0A202020202A0D0A202020202A2066756E6374696F6E206E616D653A205F706F7075704368616E6765526F7773506572506167650D0A202020202A206465736372697074696F6E20203A200D0A202020202A20706172616D733A0D0A20202020';
wwv_flow_api.g_varchar2_table(1349) := '2A2020202D0D0A202020202A2020202D0D0A202020202A0D0A20202A2F20200D0A20205F706F7075704368616E6765526F7773506572506167653A2066756E6374696F6E28297B0D0A20202020617065782E64656275672E6D6573736167652874686973';
wwv_flow_api.g_varchar2_table(1350) := '2E435F4C4F475F44454255472C20746869732E6C6F675072656669782C20275F706F7075704368616E6765526F777350657250616765272C207B0D0A20202020202022617267756D656E7473223A20617267756D656E74730D0A202020207D293B0D0A0D';
wwv_flow_api.g_varchar2_table(1351) := '0A202020207661720D0A202020202020736561726368537472696E67203D20746869732E706F7075702E73746174652E736561726368537472696E672C0D0A202020202020736561726368436F6C756D6E496478203D20746869732E706F7075702E7374';
wwv_flow_api.g_varchar2_table(1352) := '6174652E736561726368436F6C756D6E4964783B0D0A0D0A20202020746869732E5F706F707570416A6178506572666F726D28312C20746869732E706F7075702E73746174652E736F72746564436F6C756D6E4964782C20746869732E706F7075702E73';
wwv_flow_api.g_varchar2_table(1353) := '746174652E736F72746564436F6C756D6E446972656374696F6E2C20736561726368537472696E672C20746869732E706F7075702E73746174652E736561726368436F6C756D6E496478293B0D0A20207D2C0D0A0D0A20202F2A0D0A202020202A0D0A20';
wwv_flow_api.g_varchar2_table(1354) := '2020202A2066756E6374696F6E206E616D653A205F706F70757048656164657244697361626C650D0A202020202A206465736372697074696F6E20203A200D0A202020202A20706172616D733A0D0A202020202A2020202D0D0A202020202A2020202D0D';
wwv_flow_api.g_varchar2_table(1355) := '0A202020202A0D0A20202A2F0D0A20205F706F70757048656164657244697361626C653A2066756E6374696F6E28297B0D0A20202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F67';
wwv_flow_api.g_varchar2_table(1356) := '5072656669782C20275F706F70757048656164657248696465272C207B0D0A20202020202022617267756D656E7473223A20617267756D656E74732C0D0A20202020202022686561646572223A20746869732E706F7075702E6865616465720D0A202020';
wwv_flow_api.g_varchar2_table(1357) := '207D293B0D0A0D0A20202020746869732E706F7075702E6865616465722E66696E6428273A696E70757427292E70726F70282764697361626C6564272C2074727565293B0D0A20207D2C0D0A20202F2A0D0A202020202A0D0A202020202A2066756E6374';
wwv_flow_api.g_varchar2_table(1358) := '696F6E206E616D653A205F706F707570486561646572456E61626C650D0A202020202A206465736372697074696F6E20203A200D0A202020202A20706172616D733A0D0A202020202A2020202D0D0A202020202A2020202D0D0A202020202A0D0A20202A';
wwv_flow_api.g_varchar2_table(1359) := '2F20200D0A20205F706F707570486561646572456E61626C653A2066756E6374696F6E28297B0D0A20202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F';
wwv_flow_api.g_varchar2_table(1360) := '706F707570486561646572456E61626C65272C207B0D0A20202020202022617267756D656E7473223A20617267756D656E74732C0D0A20202020202022686561646572223A20746869732E706F7075702E6865616465720D0A202020207D293B0D0A0D0A';
wwv_flow_api.g_varchar2_table(1361) := '20202020746869732E706F7075702E6865616465722E66696E6428273A696E70757427292E70726F70282764697361626C6564272C2066616C7365293B0D0A20207D2C0D0A20202F2A0D0A202020202A0D0A202020202A2066756E6374696F6E206E616D';
wwv_flow_api.g_varchar2_table(1362) := '653A205F706F707570486561646572486964650D0A202020202A206465736372697074696F6E20203A200D0A202020202A20706172616D733A0D0A202020202A2020202D0D0A202020202A2020202D0D0A202020202A0D0A20202A2F20200D0A20205F70';
wwv_flow_api.g_varchar2_table(1363) := '6F707570486561646572486964653A2066756E6374696F6E28297B0D0A20202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F706F707570486561646572';
wwv_flow_api.g_varchar2_table(1364) := '48696465272C207B0D0A20202020202022617267756D656E7473223A20617267756D656E74732C0D0A20202020202022686561646572223A20746869732E706F7075702E6865616465720D0A202020207D293B0D0A0D0A20202020746869732E706F7075';
wwv_flow_api.g_varchar2_table(1365) := '702E6865616465722E616464436C617373282768696464656E27293B0D0A20207D2C0D0A20202F2A0D0A202020202A0D0A202020202A2066756E6374696F6E206E616D653A205F706F70757048656164657253686F770D0A202020202A20646573637269';
wwv_flow_api.g_varchar2_table(1366) := '7074696F6E20203A200D0A202020202A20706172616D733A0D0A202020202A2020202D0D0A202020202A2020202D0D0A202020202A0D0A20202A2F20200D0A20205F706F70757048656164657253686F773A2066756E6374696F6E28297B0D0A20202020';
wwv_flow_api.g_varchar2_table(1367) := '617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F706F70757048656164657253686F77272C207B0D0A20202020202022617267756D656E7473223A2061726775';
wwv_flow_api.g_varchar2_table(1368) := '6D656E74730D0A202020207D293B0D0A0D0A20202020746869732E706F7075702E6865616465722E72656D6F7665436C617373282768696464656E27293B0D0A20207D2C0D0A20202F2A0D0A202020202A0D0A202020202A2066756E6374696F6E206E61';
wwv_flow_api.g_varchar2_table(1369) := '6D653A205F706F707570466F6F746572486964650D0A202020202A206465736372697074696F6E20203A200D0A202020202A20706172616D733A0D0A202020202A2020202D0D0A202020202A2020202D0D0A202020202A0D0A20202A2F20200D0A20205F';
wwv_flow_api.g_varchar2_table(1370) := '706F707570466F6F746572486964653A2066756E6374696F6E28297B0D0A20202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F706F707570466F6F7465';
wwv_flow_api.g_varchar2_table(1371) := '7248696465272C207B0D0A20202020202022617267756D656E7473223A20617267756D656E74730D0A202020207D293B0D0A0D0A20202020746869732E706F7075702E666F6F7465722E616464436C617373282768696464656E27293B202020200D0A20';
wwv_flow_api.g_varchar2_table(1372) := '207D2C0D0A20202F2A0D0A202020202A0D0A202020202A2066756E6374696F6E206E616D653A205F706F707570466F6F74657244697361626C650D0A202020202A206465736372697074696F6E20203A200D0A202020202A20706172616D733A0D0A2020';
wwv_flow_api.g_varchar2_table(1373) := '20202A2020202D0D0A202020202A2020202D0D0A202020202A0D0A20202A2F20200D0A20205F706F707570466F6F74657244697361626C653A2066756E6374696F6E28297B0D0A20202020617065782E64656275672E6D65737361676528746869732E43';
wwv_flow_api.g_varchar2_table(1374) := '5F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F706F707570466F6F74657244697361626C65272C207B0D0A20202020202022617267756D656E7473223A20617267756D656E74730D0A202020207D293B0D0A0D0A20202020';
wwv_flow_api.g_varchar2_table(1375) := '746869732E706F7075702E666F6F7465722E66696E642827627574746F6E27292E70726F70282764697361626C6564272C2074727565293B0D0A20207D2C0D0A20202F2A0D0A202020202A0D0A202020202A2066756E6374696F6E206E616D653A205F70';
wwv_flow_api.g_varchar2_table(1376) := '6F707570466F6F746572456E61626C650D0A202020202A206465736372697074696F6E20203A200D0A202020202A20706172616D733A0D0A202020202A2020202D0D0A202020202A2020202D0D0A202020202A0D0A20202A2F20200D0A20205F706F7075';
wwv_flow_api.g_varchar2_table(1377) := '70466F6F746572456E61626C653A2066756E6374696F6E28297B0D0A20202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F706F707570466F6F74657245';
wwv_flow_api.g_varchar2_table(1378) := '6E61626C65272C207B0D0A20202020202022617267756D656E7473223A20617267756D656E74730D0A202020207D293B0D0A0D0A20202020746869732E706F7075702E666F6F7465722E66696E642827627574746F6E27292E70726F7028276469736162';
wwv_flow_api.g_varchar2_table(1379) := '6C6564272C2066616C7365293B0D0A20207D2C0D0A20202F2A0D0A202020202A0D0A202020202A2066756E6374696F6E206E616D653A205F706F707570466F6F74657253686F770D0A202020202A206465736372697074696F6E20203A200D0A20202020';
wwv_flow_api.g_varchar2_table(1380) := '2A20706172616D733A0D0A202020202A2020202D0D0A202020202A2020202D0D0A202020202A0D0A20202A2F20200D0A20205F706F707570466F6F74657253686F773A2066756E6374696F6E28297B0D0A20202020617065782E64656275672E6D657373';
wwv_flow_api.g_varchar2_table(1381) := '61676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F706F707570466F6F74657253686F77272C207B0D0A20202020202022617267756D656E7473223A20617267756D656E74730D0A202020207D293B0D';
wwv_flow_api.g_varchar2_table(1382) := '0A0D0A20202020746869732E706F7075702E666F6F7465722E72656D6F7665436C617373282768696464656E27293B0D0A20207D2C0D0A20202F2A0D0A202020202A0D0A202020202A2066756E6374696F6E206E616D653A205F706F707570526F777350';
wwv_flow_api.g_varchar2_table(1383) := '657250616765486964650D0A202020202A206465736372697074696F6E20203A200D0A202020202A20706172616D733A0D0A202020202A2020202D0D0A202020202A2020202D0D0A202020202A0D0A20202A2F20200D0A20205F706F707570526F777350';
wwv_flow_api.g_varchar2_table(1384) := '657250616765486964653A2066756E6374696F6E28297B0D0A20202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F706F707570526F7773506572506167';
wwv_flow_api.g_varchar2_table(1385) := '6548696465272C207B0D0A20202020202022617267756D656E7473223A20617267756D656E74730D0A202020207D293B0D0A0D0A20202020746869732E706F7075702E726F777350657250616765436F6E7461696E65722E6869646528293B0D0A20207D';
wwv_flow_api.g_varchar2_table(1386) := '2C0D0A20202F2A0D0A202020202A0D0A202020202A2066756E6374696F6E206E616D653A205F706F707570526F77735065725061676553686F770D0A202020202A206465736372697074696F6E20203A200D0A202020202A20706172616D733A0D0A2020';
wwv_flow_api.g_varchar2_table(1387) := '20202A2020202D0D0A202020202A2020202D0D0A202020202A0D0A20202A2F20200D0A20205F706F707570526F77735065725061676553686F773A2066756E6374696F6E28297B0D0A20202020617065782E64656275672E6D6573736167652874686973';
wwv_flow_api.g_varchar2_table(1388) := '2E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F706F707570526F77735065725061676553686F77272C207B0D0A20202020202022617267756D656E7473223A20617267756D656E74730D0A202020207D293B0D0A0D0A';
wwv_flow_api.g_varchar2_table(1389) := '20202020746869732E706F7075702E726F777350657250616765436F6E7461696E65722E73686F7728293B0D0A20207D2C0D0A20202F2A0D0A202020202A0D0A202020202A2066756E6374696F6E206E616D653A205F706F707570506167696E6174696F';
wwv_flow_api.g_varchar2_table(1390) := '6E486964650D0A202020202A206465736372697074696F6E20203A200D0A202020202A20706172616D733A0D0A202020202A2020202D0D0A202020202A2020202D0D0A202020202A0D0A20202A2F20200D0A20205F706F707570506167696E6174696F6E';
wwv_flow_api.g_varchar2_table(1391) := '486964653A2066756E6374696F6E28297B0D0A20202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F706F707570506167696E6174696F6E48696465272C';
wwv_flow_api.g_varchar2_table(1392) := '207B0D0A20202020202022617267756D656E7473223A20617267756D656E74730D0A202020207D293B0D0A0D0A20202020746869732E706F7075702E706167696E6174696F6E436F6E7461696E65722E6869646528293B0D0A0D0A20207D2C0D0A20202F';
wwv_flow_api.g_varchar2_table(1393) := '2A0D0A202020202A0D0A202020202A2066756E6374696F6E206E616D653A205F706F707570506167696E6174696F6E53686F770D0A202020202A206465736372697074696F6E20203A200D0A202020202A20706172616D733A0D0A202020202A2020202D';
wwv_flow_api.g_varchar2_table(1394) := '0D0A202020202A2020202D0D0A202020202A0D0A20202A2F20200D0A20205F706F707570506167696E6174696F6E53686F773A2066756E6374696F6E28297B0D0A20202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C';
wwv_flow_api.g_varchar2_table(1395) := '4556454C392C20746869732E6C6F675072656669782C20275F706F707570506167696E6174696F6E53686F77272C207B0D0A20202020202022617267756D656E7473223A20617267756D656E74730D0A202020207D293B0D0A0D0A20202020746869732E';
wwv_flow_api.g_varchar2_table(1396) := '706F7075702E706167696E6174696F6E436F6E7461696E65722E73686F7728293B0D0A0D0A20207D2C0D0A20202F2A0D0A202020202A0D0A202020202A2066756E6374696F6E206E616D653A205F706F707570506167696E6174696F6E50726576506167';
wwv_flow_api.g_varchar2_table(1397) := '650D0A202020202A206465736372697074696F6E20203A200D0A202020202A20706172616D733A0D0A202020202A2020202D0D0A202020202A2020202D0D0A202020202A0D0A20202A2F20200D0A20205F706F707570506167696E6174696F6E50726576';
wwv_flow_api.g_varchar2_table(1398) := '506167653A2066756E6374696F6E28297B0D0A20202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F44454255472C20746869732E6C6F675072656669782C20275F706F707570506167696E6174696F6E50726576506167';
wwv_flow_api.g_varchar2_table(1399) := '65272C207B0D0A20202020202022617267756D656E7473223A20617267756D656E74730D0A202020207D293B0D0A0D0A20202020746869732E5F706F707570416A6178506572666F726D280D0A2020202020202D2D746869732E706F7075702E73746174';
wwv_flow_api.g_varchar2_table(1400) := '652E6C61737446657463686564506167652C0D0A202020202020746869732E706F7075702E73746174652E736F72746564436F6C756D6E4964782C0D0A202020202020746869732E706F7075702E73746174652E736F72746564436F6C756D6E44697265';
wwv_flow_api.g_varchar2_table(1401) := '6374696F6E2C0D0A202020202020746869732E706F7075702E73746174652E736561726368537472696E672C0D0A202020202020746869732E706F7075702E73746174652E736561726368436F6C756D6E4964780D0A20202020293B0D0A0D0A20207D2C';
wwv_flow_api.g_varchar2_table(1402) := '0D0A0D0A20202F2A0D0A202020202A0D0A202020202A2066756E6374696F6E206E616D653A205F706F707570506167696E6174696F6E4E657874506167650D0A202020202A206465736372697074696F6E20203A200D0A202020202A20706172616D733A';
wwv_flow_api.g_varchar2_table(1403) := '0D0A202020202A2020202D0D0A202020202A2020202D0D0A202020202A0D0A20202A2F0D0A20205F706F707570506167696E6174696F6E4E657874506167653A2066756E6374696F6E28297B0D0A20202020617065782E64656275672E6D657373616765';
wwv_flow_api.g_varchar2_table(1404) := '28746869732E435F4C4F475F44454255472C20746869732E6C6F675072656669782C20275F706F707570506167696E6174696F6E4E65787450616765272C207B0D0A20202020202022617267756D656E7473223A20617267756D656E74730D0A20202020';
wwv_flow_api.g_varchar2_table(1405) := '7D293B0D0A0D0A20202020746869732E5F706F707570416A6178506572666F726D280D0A2020202020202B2B746869732E706F7075702E73746174652E6C61737446657463686564506167652C0D0A202020202020746869732E706F7075702E73746174';
wwv_flow_api.g_varchar2_table(1406) := '652E736F72746564436F6C756D6E4964782C0D0A202020202020746869732E706F7075702E73746174652E736F72746564436F6C756D6E446972656374696F6E2C0D0A202020202020746869732E706F7075702E73746174652E73656172636853747269';
wwv_flow_api.g_varchar2_table(1407) := '6E672C0D0A202020202020746869732E706F7075702E73746174652E736561726368436F6C756D6E4964780D0A20202020293B0D0A20207D2C0D0A20202F2A0D0A202020202A0D0A202020202A2066756E6374696F6E206E616D653A205F706F70757050';
wwv_flow_api.g_varchar2_table(1408) := '6167696E6174696F6E5570646174650D0A202020202A206465736372697074696F6E20203A200D0A202020202A20706172616D733A0D0A202020202A2020202D0D0A202020202A2020202D0D0A202020202A0D0A20202A2F20200D0A20205F706F707570';
wwv_flow_api.g_varchar2_table(1409) := '506167696E6174696F6E5570646174653A2066756E6374696F6E28297B0D0A20202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F706F70757050616769';
wwv_flow_api.g_varchar2_table(1410) := '6E6174696F6E557064617465272C207B0D0A20202020202022617267756D656E7473223A20617267756D656E74730D0A202020207D293B0D0A0D0A20202020766172200D0A2020202020207374617274203D20746869732E706F7075702E73746174652E';
wwv_flow_api.g_varchar2_table(1411) := '616A617843757272656E7450616765526F776E756D53746172742C0D0A202020202020656E642020203D20746869732E706F7075702E73746174652E616A617843757272656E7450616765526F776E756D456E642C0D0A202020202020746F74616C203D';
wwv_flow_api.g_varchar2_table(1412) := '20746869732E706F7075702E73746174652E616A617844617461546F74616C436F756E742C0D0A2020202020206F66202020203D20746869732E435F504F5055505F504147494E4154494F4E5F4F463B0D0A0D0A0D0A20202020656E64203D20656E6420';
wwv_flow_api.g_varchar2_table(1413) := '3E20746F74616C203F20746F74616C203A20656E643B0D0A0D0A20202020746869732E706F7075702E706167696E6174696F6E43757272656E742E746578742873746172742B27202D20272B656E642B2720272B6F662B2720272B746F74616C293B0D0A';
wwv_flow_api.g_varchar2_table(1414) := '0D0A202020202F2F6D616E61676520707265762070616765206C696E6B207669736962696C6974790D0A202020206966202820746869732E706F7075702E73746174652E6C6173744665746368656450616765203D3D20312029207B0D0A202020202020';
wwv_flow_api.g_varchar2_table(1415) := '746869732E706F7075702E706167696E6174696F6E50726576506167652E6869646528293B0D0A202020207D0D0A20202020656C7365207B0D0A202020202020746869732E706F7075702E706167696E6174696F6E50726576506167652E73686F772829';
wwv_flow_api.g_varchar2_table(1416) := '3B200D0A202020207D0D0A0D0A202020206966202820656E64203D3D20746F74616C2029207B0D0A202020202020746869732E706F7075702E706167696E6174696F6E4E657874506167652E6869646528293B200D0A202020207D0D0A20202020656C73';
wwv_flow_api.g_varchar2_table(1417) := '65207B0D0A202020202020746869732E706F7075702E706167696E6174696F6E4E657874506167652E73686F7728293B20200D0A202020207D0D0A0D0A20207D2C0D0A20202F2A0D0A202020202A0D0A202020202A2066756E6374696F6E206E616D653A';
wwv_flow_api.g_varchar2_table(1418) := '205F706F707570497346696C74657265640D0A202020202A206465736372697074696F6E20203A200D0A202020202A20706172616D733A0D0A202020202A2020202D0D0A202020202A2020202D0D0A202020202A0D0A20202A2F20200D0A20205F706F70';
wwv_flow_api.g_varchar2_table(1419) := '7570497346696C74657265643A2066756E6374696F6E28297B0D0A20202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F706F707570497346696C746572';
wwv_flow_api.g_varchar2_table(1420) := '6564272C207B0D0A20202020202022617267756D656E7473223A20617267756D656E74730D0A202020207D293B0D0A0D0A202020206966202820746869732E706F7075702E73746174652E736561726368537472696E6720213D20756E646566696E6564';
wwv_flow_api.g_varchar2_table(1421) := '20262620746869732E706F7075702E73746174652E736561726368537472696E672E6C656E677468203E20302029207B0D0A20202020202072657475726E20747275653B0D0A202020207D0D0A0D0A2020202072657475726E2066616C73653B0D0A2020';
wwv_flow_api.g_varchar2_table(1422) := '7D2C0D0A20202F2A0D0A202020202A0D0A202020202A2066756E6374696F6E206E616D653A205F706F7075705363726F6C6C43616C6C6261636B0D0A202020202A206465736372697074696F6E20203A200D0A202020202A20706172616D733A0D0A2020';
wwv_flow_api.g_varchar2_table(1423) := '20202A2020202D0D0A202020202A2020202D0D0A202020202A0D0A20202A2F20200D0A20205F706F7075705363726F6C6C43616C6C6261636B3A2066756E6374696F6E2820704576656E7420297B0D0A20202020617065782E64656275672E6D65737361';
wwv_flow_api.g_varchar2_table(1424) := '676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F706F7075705363726F6C6C43616C6C6261636B272C207B0D0A20202020202022617267756D656E7473223A20617267756D656E74732C0D0A20202020';
wwv_flow_api.g_varchar2_table(1425) := '202022704576656E74223A20704576656E740D0A202020207D293B0D0A0D0A20202020766172200D0A20202020202070657263656E74203D20746869732E5F6765745363726F6C6C50657263656E7428202428704576656E742E63757272656E74546172';
wwv_flow_api.g_varchar2_table(1426) := '676574292C202428704576656E742E63757272656E74546172676574292E6F75746572486569676874282920292C0D0A202020202020736F72746564436F6C756D6E496478203D20746869732E706F7075702E73746174652E736F72746564436F6C756D';
wwv_flow_api.g_varchar2_table(1427) := '6E4964782C0D0A202020202020736F72746564436F6C756D6E446972656374696F6E203D20746869732E706F7075702E73746174652E736F72746564436F6C756D6E446972656374696F6E2C200D0A202020202020736561726368537472696E67203D20';
wwv_flow_api.g_varchar2_table(1428) := '746869732E706F7075702E73746174652E736561726368537472696E672C0D0A202020202020736561726368436F6C756D6E496478203D20746869732E706F7075702E73746174652E736561726368436F6C756D6E4964782C0D0A202020202020736372';
wwv_flow_api.g_varchar2_table(1429) := '6F6C6C546F70203D202428704576656E742E63757272656E74546172676574292E7363726F6C6C546F7028293B0D0A0D0A202020206966202820746869732E706F7075702E73746174652E616A6178537461747573203D3D20746869732E435F414A4158';
wwv_flow_api.g_varchar2_table(1430) := '5F5354415455535F4552524F522029207B0D0A20202020202072657475726E20766F69642830293B0D0A202020207D0D0A0D0A20202020746869732E706F7075702E737469636B79486561646572732E6373732827746F70272C207363726F6C6C546F70';
wwv_flow_api.g_varchar2_table(1431) := '293B0D0A0D0A202020206966202820746869732E706F7075702E686561646572416374696F6E436F6E7461696E657220213D20756E646566696E65642029207B0D0A202020202020746869732E706F7075702E686561646572416374696F6E436F6E7461';
wwv_flow_api.g_varchar2_table(1432) := '696E65722E6373732827746F70272C207363726F6C6C546F70202B20746869732E706F7075702E626F64792E66696E642827746827292E666972737428292E6F757465724865696768742829293B20200D0A202020207D0D0A20207D2C0D0A20202F2A0D';
wwv_flow_api.g_varchar2_table(1433) := '0A202020202A0D0A202020202A2066756E6374696F6E206E616D653A205F706F70757044726167506F736974696F6E46697843616C6C6261636B0D0A202020202A206465736372697074696F6E20203A200D0A202020202A20706172616D733A0D0A2020';
wwv_flow_api.g_varchar2_table(1434) := '20202A2020202D0D0A202020202A2020202D0D0A202020202A0D0A20202A2F20200D0A20205F706F70757044726167506F736974696F6E46697843616C6C6261636B3A2066756E6374696F6E2820704576656E742C2070556920297B0D0A202020206170';
wwv_flow_api.g_varchar2_table(1435) := '65782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F706F70757044726167506F736974696F6E46697843616C6C6261636B272C207B0D0A20202020202022617267756D';
wwv_flow_api.g_varchar2_table(1436) := '656E7473223A20617267756D656E74732C0D0A20202020202022704576656E74223A20704576656E742C200D0A20202020202022705569222020203A207055690D0A202020207D293B0D0A0D0A20202020766172200D0A202020202020646F63756D656E';
wwv_flow_api.g_varchar2_table(1437) := '745363726F6C6C546F70203D202428646F63756D656E74292E7363726F6C6C546F7028292C0D0A202020202020706F736974696F6E3B0D0A0D0A202020206966202820646F63756D656E745363726F6C6C546F70203E20302029207B0D0A202020202020';
wwv_flow_api.g_varchar2_table(1438) := '706F736974696F6E203D207055692E706F736974696F6E3B0D0A202020202020706F736974696F6E2E746F70203D20706F736974696F6E2E746F70202D20646F63756D656E745363726F6C6C546F703B0D0A0D0A202020202020746869732E706F707570';
wwv_flow_api.g_varchar2_table(1439) := '2E636F6E7461696E65722E706172656E7428292E636C6F7365737428222E75692D6469616C6F6722292E6373732822746F70222C20706F736974696F6E2E746F70202B2022707822293B202020200D0A202020207D2020202020200D0A0D0A20207D2C0D';
wwv_flow_api.g_varchar2_table(1440) := '0A20202F2A0D0A202020202A0D0A202020202A2066756E6374696F6E206E616D653A205F706F7075704469616C6F6744726167537461727443616C6C6261636B0D0A202020202A206465736372697074696F6E20203A200D0A202020202A20706172616D';
wwv_flow_api.g_varchar2_table(1441) := '733A0D0A202020202A2020202D0D0A202020202A2020202D0D0A202020202A0D0A20202A2F20200D0A20205F706F7075704469616C6F6744726167537461727443616C6C6261636B3A2066756E6374696F6E2820704576656E742C2070556920297B0D0A';
wwv_flow_api.g_varchar2_table(1442) := '20202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F706F7075704469616C6F6744726167537461727443616C6C6261636B272C207B0D0A202020202020';
wwv_flow_api.g_varchar2_table(1443) := '22617267756D656E7473223A20617267756D656E74732C0D0A20202020202022704576656E74223A20704576656E742C200D0A20202020202022705569222020203A207055690D0A202020207D293B0D0A0D0A202020206966202820746869732E706F70';
wwv_flow_api.g_varchar2_table(1444) := '75702E686561646572416374696F6E436F6E7461696E657220213D756E646566696E65642029207B0D0A202020202020746869732E706F7075702E686561646572416374696F6E436F6E7461696E65722E6869646528293B20200D0A202020207D0D0A0D';
wwv_flow_api.g_varchar2_table(1445) := '0A20207D2C0D0A0D0A20202F2A0D0A202020202A0D0A202020202A2066756E6374696F6E206E616D653A205F706F7075704469616C6F674472616753746F7043616C6C6261636B0D0A202020202A206465736372697074696F6E20203A200D0A20202020';
wwv_flow_api.g_varchar2_table(1446) := '2A20706172616D733A0D0A202020202A2020202D0D0A202020202A2020202D0D0A202020202A0D0A20202A2F0D0A20205F706F7075704469616C6F674472616753746F7043616C6C6261636B3A2066756E6374696F6E2820704576656E742C2070556920';
wwv_flow_api.g_varchar2_table(1447) := '297B0D0A20202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F706F7075704469616C6F674472616753746F7043616C6C6261636B272C207B0D0A202020';
wwv_flow_api.g_varchar2_table(1448) := '20202022617267756D656E7473223A20617267756D656E74732C0D0A20202020202022704576656E74223A20704576656E742C200D0A20202020202022705569222020203A207055690D0A202020207D293B0D0A0D0A202020206966202820746869732E';
wwv_flow_api.g_varchar2_table(1449) := '706F7075702E686561646572416374696F6E436F6E7461696E657220213D756E646566696E65642029207B0D0A202020202020746869732E706F7075702E686561646572416374696F6E436F6E7461696E65722E73686F7728293B20200D0A202020207D';
wwv_flow_api.g_varchar2_table(1450) := '0D0A0D0A20207D2C20200D0A20202F2A0D0A202020202A0D0A202020202A2066756E6374696F6E206E616D653A205F706F7075704469616C6F67526573697A6553746F7043616C6C6261636B0D0A202020202A206465736372697074696F6E20203A200D';
wwv_flow_api.g_varchar2_table(1451) := '0A202020202A20706172616D733A0D0A202020202A2020202D0D0A202020202A2020202D0D0A202020202A0D0A20202A2F20200D0A20205F706F7075704469616C6F67526573697A6553746F7043616C6C6261636B3A2066756E6374696F6E28297B0D0A';
wwv_flow_api.g_varchar2_table(1452) := '20202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F706F7075704469616C6F67526573697A6553746F7043616C6C6261636B272C207B0D0A2020202020';
wwv_flow_api.g_varchar2_table(1453) := '2022617267756D656E7473223A20617267756D656E747320202020200D0A202020207D293B0D0A0D0A20202020746869732E5F706F70757041646A757374426F647948656967687428293B0D0A20207D2C0D0A20202F2A0D0A202020202A0D0A20202020';
wwv_flow_api.g_varchar2_table(1454) := '2A2066756E6374696F6E206E616D653A205F706F707570436F6C756D6E4973446566696E65640D0A202020202A206465736372697074696F6E20203A200D0A202020202A20706172616D733A0D0A202020202A2020202D0D0A202020202A2020202D0D0A';
wwv_flow_api.g_varchar2_table(1455) := '202020202A0D0A20202A2F20200D0A20205F706F707570436F6C756D6E4973446566696E65643A2066756E6374696F6E282070436F6C756D6E4E616D6520297B0D0A20202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F';
wwv_flow_api.g_varchar2_table(1456) := '4C4556454C392C20746869732E6C6F675072656669782C20275F706F707570436F6C756D6E4973446566696E6564272C207B0D0A20202020202022617267756D656E7473223A20617267756D656E74732C0D0A2020202020202270436F6C756D6E4E616D';
wwv_flow_api.g_varchar2_table(1457) := '65223A2070436F6C756D6E4E616D650D0A202020207D293B0D0A0D0A202020207661722072657475726E56616C7565203D2066616C73653B0D0A0D0A20202020696620280D0A202020202020746869732E706F7075702E68656164657273202020202020';
wwv_flow_api.g_varchar2_table(1458) := '202020202020202020202020202020202020202020202020202020213D20756E646566696E65640D0A202020202020262620746869732E706F7075702E686561646572732E636F6C756D6E73202020202020202020202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(1459) := '20213D20756E646566696E65640D0A202020202020262620746869732E706F7075702E686561646572732E636F6C756D6E735B2070436F6C756D6E4E616D65205D20202020202020202020213D20756E646566696E65640D0A2020202029207B0D0A2020';
wwv_flow_api.g_varchar2_table(1460) := '20202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F706F707570436F6C756D6E4973446566696E6564272C2027436F6C756D6E2022272B70436F6C756D';
wwv_flow_api.g_varchar2_table(1461) := '6E4E616D652B272220697320646566696E65642E27293B0D0A20202020202072657475726E56616C7565203D20747275653B0D0A202020207D0D0A20202020656C7365207B0D0A202020202020617065782E64656275672E6D6573736167652874686973';
wwv_flow_api.g_varchar2_table(1462) := '2E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F706F707570436F6C756D6E4973446566696E6564272C2027436F6C756D6E2022272B70436F6C756D6E4E616D652B2722206973206E6F7420646566696E65642E27293B';
wwv_flow_api.g_varchar2_table(1463) := '0D0A20202020202072657475726E56616C7565203D2066616C73653B0D0A202020207D0D0A0D0A202020200D0A2020202072657475726E2072657475726E56616C75653B0D0A0D0A20207D2C0D0A20202F2A0D0A202020202A0D0A202020202A2066756E';
wwv_flow_api.g_varchar2_table(1464) := '6374696F6E206E616D653A205F706F707570436F6C756D6E4973436F6E66696775726174696F6E417661696C61626C650D0A202020202A206465736372697074696F6E20203A200D0A202020202A20706172616D733A0D0A202020202A2020202D0D0A20';
wwv_flow_api.g_varchar2_table(1465) := '2020202A2020202D0D0A202020202A0D0A20202A2F20200D0A20205F706F707570436F6C756D6E4973436F6E66696775726174696F6E417661696C61626C653A2066756E6374696F6E282070436F6C756D6E4E616D652C20704174747220297B0D0A2020';
wwv_flow_api.g_varchar2_table(1466) := '2020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F706F707570436F6C756D6E4973436F6E66696775726174696F6E417661696C61626C65272C207B0D0A20';
wwv_flow_api.g_varchar2_table(1467) := '202020202022617267756D656E7473223A20617267756D656E74732C0D0A2020202020202270436F6C756D6E4E616D6522203A2070436F6C756D6E4E616D652C0D0A20202020202022704174747222202020202020203A2070417474720D0A202020207D';
wwv_flow_api.g_varchar2_table(1468) := '293B0D0A0D0A202020207661722072657475726E56616C75653B0D0A0D0A20202020696620280D0A202020202020202020746869732E706C7567696E53657474696E67732E706F7075702E69735265706F7274416476616E636564436F6E662020202020';
wwv_flow_api.g_varchar2_table(1469) := '3D3D20747275650D0A202020202020262620746869732E706F7075702E68656164657273202020202020202020202020202020202020202020202020202020202020202020213D20756E646566696E65640D0A202020202020262620746869732E706F70';
wwv_flow_api.g_varchar2_table(1470) := '75702E686561646572732E636F6C756D6E7320202020202020202020202020202020202020202020202020213D20756E646566696E65640D0A202020202020262620746869732E706F7075702E686561646572732E636F6C756D6E735B2070436F6C756D';
wwv_flow_api.g_varchar2_table(1471) := '6E4E616D65205D20202020202020202020213D20756E646566696E65640D0A202020202020262620746869732E706F7075702E686561646572732E636F6C756D6E735B2070436F6C756D6E4E616D65205D5B207041747472205D20213D20756E64656669';
wwv_flow_api.g_varchar2_table(1472) := '6E65642020202020200D0A2020202029207B0D0A20202020202072657475726E56616C7565203D20746869732E706F7075702E686561646572732E636F6C756D6E735B2070436F6C756D6E4E616D65205D5B207041747472205D3B0D0A20202020202061';
wwv_flow_api.g_varchar2_table(1473) := '7065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F706F707570436F6C756D6E4973436F6E66696775726174696F6E417661696C61626C65272C2027436F6C756D6E';
wwv_flow_api.g_varchar2_table(1474) := '2022272B70436F6C756D6E4E616D652B27223A20617474722022272B70417474722B2722203D2022272B72657475726E56616C75652B272227293B0D0A20202020202072657475726E2072657475726E56616C75653B0D0A202020207D0D0A2020202065';
wwv_flow_api.g_varchar2_table(1475) := '6C7365207B0D0A20202020202069662028207041747472203D3D202768656164696E67272029207B0D0A202020202020202072657475726E56616C7565203D2070436F6C756D6E4E616D653B0D0A2020202020207D0D0A202020202020656C7365207B0D';
wwv_flow_api.g_varchar2_table(1476) := '0A202020202020202072657475726E56616C7565203D20746869732E706F7075702E64656661756C745265706F727453657474696E67735B207041747472205D3B0D0A2020202020207D0D0A0D0A202020202020617065782E64656275672E6D65737361';
wwv_flow_api.g_varchar2_table(1477) := '676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F706F707570436F6C756D6E4973436F6E66696775726174696F6E417661696C61626C65272C2027436F6C756D6E2022272B70436F6C756D6E4E616D65';
wwv_flow_api.g_varchar2_table(1478) := '2B27223A2064656661756C7420617474722022272B70417474722B2722203D2022272B72657475726E56616C75652B272227293B0D0A20202020202072657475726E2072657475726E56616C75653B0D0A202020207D0D0A20207D2C0D0A0D0A20200D0A';
wwv_flow_api.g_varchar2_table(1479) := '20202F2A0D0A202020202A0D0A202020202A2066756E6374696F6E206E616D653A205F706F7075704F70656E47657444656661756C74536F7274436F6C756D6E4964780D0A202020202A206465736372697074696F6E20203A200D0A202020202A207061';
wwv_flow_api.g_varchar2_table(1480) := '72616D733A0D0A202020202A2020202D0D0A202020202A2020202D0D0A202020202A0D0A20202A2F20200D0A20205F706F7075704F70656E47657444656661756C74536F7274436F6C756D6E4964783A2066756E6374696F6E28297B0D0A202020206170';
wwv_flow_api.g_varchar2_table(1481) := '65782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F706F7075704F70656E47657444656661756C74536F7274436F6C756D6E496478272C207B0D0A2020202020202261';
wwv_flow_api.g_varchar2_table(1482) := '7267756D656E7473223A20617267756D656E74730D0A202020207D293B0D0A0D0A202020207661720D0A20202020202072657475726E56616C7565203D20312C0D0A202020202020636F6C756D6E3B2020202020200D0A0D0A2020202069662028200D0A';
wwv_flow_api.g_varchar2_table(1483) := '202020202020202020746869732E706C7567696E53657474696E67732E706F7075702E69735265706F7274416476616E636564436F6E66200D0A202020202020262620746869732E706F7075702E68656164657273202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(1484) := '2020202020202020213D20756E646566696E65640D0A202020202020262620746869732E706F7075702E686561646572732E64656661756C74536F72742020202020202020202020213D20756E646566696E6564200D0A20202020202026262074686973';
wwv_flow_api.g_varchar2_table(1485) := '2E706F7075702E686561646572732E64656661756C74536F72742E636F6C756D6E20202020213D20756E646566696E65640D0A202020202020262620746869732E706F7075702E686561646572732E64656661756C74536F72742E646972656374696F6E';
wwv_flow_api.g_varchar2_table(1486) := '20213D20756E646566696E65640D0A2020202029207B0D0A202020202020636F6C756D6E203D20746869732E706F7075702E686561646572732E64656661756C74536F72742E636F6C756D6E3B0D0A202020202020617065782E64656275672E6D657373';
wwv_flow_api.g_varchar2_table(1487) := '61676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F706F7075704F70656E47657444656661756C74536F7274436F6C756D6E4964782064656661756C74536F727420627920636F6C756D6E2022272B63';
wwv_flow_api.g_varchar2_table(1488) := '6F6C756D6E2B272227293B0D0A20202020202072657475726E56616C7565203D20746869732E5F676574436F6C756D6E4964784279436F6C756D6E4E616D652820636F6C756D6E20293B0D0A202020207D0D0A20202020656C7365207B0D0A2020202020';
wwv_flow_api.g_varchar2_table(1489) := '20617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F706F7075704F70656E47657444656661756C74536F7274436F6C756D6E4964782064656661756C74536F72';
wwv_flow_api.g_varchar2_table(1490) := '7420636F6E66696775726174696F6E206973206E6F7420646566696E65642C20736F72742062792031737420636F6C756D6E2E27293B0D0A20202020202072657475726E56616C7565203D20313B2020202020200D0A202020207D0D0A0D0A2020202061';
wwv_flow_api.g_varchar2_table(1491) := '7065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F706F7075704F70656E47657444656661756C74536F7274436F6C756D6E4964782072657475726E2022272B7265';
wwv_flow_api.g_varchar2_table(1492) := '7475726E56616C75652B272227293B0D0A0D0A2020202072657475726E2072657475726E56616C75653B0D0A20207D2C0D0A20202F2A0D0A202020202A0D0A202020202A2066756E6374696F6E206E616D653A205F706F7075704F70656E476574446566';
wwv_flow_api.g_varchar2_table(1493) := '61756C74536F7274436F6C756D6E446972656374696F6E0D0A202020202A206465736372697074696F6E20203A200D0A202020202A20706172616D733A0D0A202020202A2020202D0D0A202020202A2020202D0D0A202020202A0D0A20202A2F20200D0A';
wwv_flow_api.g_varchar2_table(1494) := '20205F706F7075704F70656E47657444656661756C74536F7274436F6C756D6E446972656374696F6E3A2066756E6374696F6E28297B0D0A20202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C207468';
wwv_flow_api.g_varchar2_table(1495) := '69732E6C6F675072656669782C20275F706F7075704F70656E47657444656661756C74536F7274436F6C756D6E446972656374696F6E272C207B0D0A20202020202022617267756D656E7473223A20617267756D656E74730D0A202020207D293B0D0A0D';
wwv_flow_api.g_varchar2_table(1496) := '0A202020207661720D0A20202020202072657475726E56616C7565203D2022617363222C0D0A202020202020646972656374696F6E3B0D0A0D0A2020202069662028200D0A202020202020202020746869732E706C7567696E53657474696E67732E706F';
wwv_flow_api.g_varchar2_table(1497) := '7075702E69735265706F7274416476616E636564436F6E66200D0A202020202020262620746869732E706F7075702E686561646572732020202020202020202020202020202020202020202020213D20756E646566696E65640D0A202020202020262620';
wwv_flow_api.g_varchar2_table(1498) := '746869732E706F7075702E686561646572732E64656661756C74536F72742020202020202020202020213D20756E646566696E6564200D0A202020202020262620746869732E706F7075702E686561646572732E64656661756C74536F72742E636F6C75';
wwv_flow_api.g_varchar2_table(1499) := '6D6E20202020213D20756E646566696E65640D0A202020202020262620746869732E706F7075702E686561646572732E64656661756C74536F72742E646972656374696F6E20213D20756E646566696E65640D0A2020202029207B0D0A20202020202064';
wwv_flow_api.g_varchar2_table(1500) := '6972656374696F6E203D20746869732E706F7075702E686561646572732E64656661756C74536F72742E646972656374696F6E3B0D0A202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C207468';
null;
wwv_flow_api.component_end;
end;
/
begin
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>107
,p_default_id_offset=>0
,p_default_owner=>'MISO'
);
wwv_flow_api.g_varchar2_table(1501) := '69732E6C6F675072656669782C20275F706F7075704F70656E47657444656661756C74536F7274436F6C756D6E446972656374696F6E2064656661756C74536F727420646972656374696F6E20646566696E65642061732022272B646972656374696F6E';
wwv_flow_api.g_varchar2_table(1502) := '2B27222E27293B0D0A20202020202072657475726E56616C7565203D20746869732E706F7075702E686561646572732E64656661756C74536F72742E646972656374696F6E0D0A202020207D0D0A20202020656C7365207B0D0A20202020202061706578';
wwv_flow_api.g_varchar2_table(1503) := '2E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F706F7075704F70656E47657444656661756C74536F7274436F6C756D6E446972656374696F6E2064656661756C74536F';
wwv_flow_api.g_varchar2_table(1504) := '727420636F6E66696775726174696F6E206973206E6F7420646566696E65642C20736F727420646972656374696F6E206173632E27293B0D0A20202020202072657475726E56616C7565203D2022617363223B0D0A202020207D0D0A0D0A202020206170';
wwv_flow_api.g_varchar2_table(1505) := '65782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F706F7075704F70656E47657444656661756C74536F7274436F6C756D6E446972656374696F6E2072657475726E20';
wwv_flow_api.g_varchar2_table(1506) := '22272B72657475726E56616C75652B272227293B0D0A0D0A2020202072657475726E2072657475726E56616C75653B0D0A0D0A20207D2C0D0A20202F2A0D0A202020202A0D0A202020202A2066756E6374696F6E206E616D653A205F706F707570446961';
wwv_flow_api.g_varchar2_table(1507) := '6C6F674F70656E43616C6C6261636B0D0A202020202A206465736372697074696F6E20203A200D0A202020202A20706172616D733A0D0A202020202A2020202D0D0A202020202A2020202D0D0A202020202A0D0A20202A2F20200D0A20205F706F707570';
wwv_flow_api.g_varchar2_table(1508) := '4469616C6F674F70656E43616C6C6261636B3A2066756E6374696F6E28297B0D0A20202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F706F7075704469';
wwv_flow_api.g_varchar2_table(1509) := '616C6F674F70656E43616C6C6261636B272C207B0D0A20202020202022617267756D656E7473223A20617267756D656E74730D0A202020207D293B0D0A0D0A20202020746869732E706F7075702E73746174652E697356697369626C65203D2074727565';
wwv_flow_api.g_varchar2_table(1510) := '3B0D0A20202020746869732E706F7075702E73746174652E73656C6563746564203D205B5D3B0D0A0D0A20202020242827626F647927292E616464436C6173732827617065782D6E6F2D7363726F6C6C27293B0D0A0D0A20202020666F72202820766172';
wwv_flow_api.g_varchar2_table(1511) := '20693D303B2069203C20746869732E6D61736B2E73746174652E73656C65637465642E6C656E6774683B20692B2B2029207B0D0A202020202020746869732E706F7075702E73746174652E73656C65637465642E7075736828207B0D0A20202020202020';
wwv_flow_api.g_varchar2_table(1512) := '2022646973706C6179223A20746869732E6D61736B2E73746174652E73656C65637465645B695D2E646973706C61792C0D0A20202020202020202276616C7565223A20746869732E6D61736B2E73746174652E73656C65637465645B695D2E76616C7565';
wwv_flow_api.g_varchar2_table(1513) := '2C0D0A2020202020202020226973415045584E756C6C56616C7565223A20746869732E6D61736B2E73746174652E73656C65637465645B695D2E6973415045584E756C6C56616C75650D0A2020202020207D20293B0D0A202020207D0D0A0D0A20202020';
wwv_flow_api.g_varchar2_table(1514) := '746869732E706F7075702E73746174652E73656C656374656448617368203D20746869732E5F706F70757047657453656C65637465644861736828293B200D0A20202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C45';
wwv_flow_api.g_varchar2_table(1515) := '56454C392C20746869732E6C6F675072656669782C20275F706F7075704469616C6F674F70656E43616C6C6261636B20686173682022272B746869732E706F7075702E73746174652E73656C6563746564486173682B272227293B0D0A0D0A2020202069';
wwv_flow_api.g_varchar2_table(1516) := '66202820746869732E706F7075702E73686F7753656C6563746564436865636B626F782E697328273A636865636B656427292029207B0D0A202020202020746869732E5F706F707570416A61784765744F6E6C7953656C656374656428293B0D0A202020';
wwv_flow_api.g_varchar2_table(1517) := '207D0D0A20202020656C7365207B0D0A0D0A2020202020206966202820746869732E706F7075702E73746174652E6C6173744665746368656450616765203D3D206E756C6C2029207B0D0A2020202020202020746869732E5F706F707570416A61785065';
wwv_flow_api.g_varchar2_table(1518) := '72666F726D28312C20746869732E5F706F7075704F70656E47657444656661756C74536F7274436F6C756D6E49647828292C20746869732E5F706F7075704F70656E47657444656661756C74536F7274436F6C756D6E446972656374696F6E2829293B0D';
wwv_flow_api.g_varchar2_table(1519) := '0A2020202020207D0D0A202020202020656C7365207B0D0A2020202020202020746869732E5F706F707570416A6178506572666F726D2820746869732E706F7075702E73746174652E6C61737446657463686564506167652C20746869732E706F707570';
wwv_flow_api.g_varchar2_table(1520) := '2E73746174652E736F72746564436F6C756D6E4964782C20746869732E706F7075702E73746174652E736F72746564436F6C756D6E446972656374696F6E20293B0D0A2020202020207D202020200D0A202020207D0D0A0D0A20202020746869732E5F70';
wwv_flow_api.g_varchar2_table(1521) := '6F70757053686F7753656C6563746564557064617465282066616C736520293B0D0A0D0A20202020746869732E5F747269676765724576656E7428277061656C695F706F7075705F73686F776E272C20746869732E5F706F7075704765744576656E7444';
wwv_flow_api.g_varchar2_table(1522) := '6174612829293B0D0A20207D2C0D0A20202F2A0D0A202020202A0D0A202020202A2066756E6374696F6E206E616D653A205F706F7075704469616C6F67436C6F736543616C6C6261636B0D0A202020202A206465736372697074696F6E20203A200D0A20';
wwv_flow_api.g_varchar2_table(1523) := '2020202A20706172616D733A0D0A202020202A2020202D0D0A202020202A2020202D0D0A202020202A0D0A20202A2F20200D0A20205F706F7075704469616C6F67436C6F736543616C6C6261636B3A2066756E6374696F6E28297B0D0A20202020617065';
wwv_flow_api.g_varchar2_table(1524) := '782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C362C20746869732E6C6F675072656669782C20275F706F7075704469616C6F67436C6F736543616C6C6261636B272C207B0D0A20202020202022617267756D656E747322';
wwv_flow_api.g_varchar2_table(1525) := '3A20617267756D656E74730D0A202020207D293B0D0A0D0A20202020746869732E706F7075702E73746174652E697356697369626C65203D2066616C73653B0D0A20202020746869732E706F7075702E73686F7753656C6563746564436865636B626F78';
wwv_flow_api.g_varchar2_table(1526) := '2E70726F702827636865636B6564272C2066616C7365293B0D0A0D0A20202020242827626F647927292E72656D6F7665436C6173732827617065782D6E6F2D7363726F6C6C27293B0D0A202020200D0A20202020746869732E5F7265736574466F637573';
wwv_flow_api.g_varchar2_table(1527) := '28293B0D0A0D0A20207D2C0D0A20202F2A0D0A202020202A0D0A202020202A2066756E6374696F6E206E616D653A205F686561646572576964676574436C65617246696C746572696E670D0A202020202A206465736372697074696F6E20203A200D0A20';
wwv_flow_api.g_varchar2_table(1528) := '2020202A20706172616D733A0D0A202020202A2020202D0D0A202020202A2020202D0D0A202020202A0D0A20202A2F20200D0A20205F686561646572576964676574436C65617246696C746572696E673A2066756E6374696F6E2820704576656E742029';
wwv_flow_api.g_varchar2_table(1529) := '7B0D0A20202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F686561646572576964676574436C65617246696C746572696E67272C207B0D0A2020202020';
wwv_flow_api.g_varchar2_table(1530) := '2022617267756D656E7473223A20617267756D656E74732C0D0A20202020202022704576656E74223A20704576656E740D0A202020207D293B0D0A0D0A20202020746869732E706F7075702E73746174652E736561726368436F6C756D6E496478203D20';
wwv_flow_api.g_varchar2_table(1531) := '756E646566696E65643B0D0A0D0A202020206966202820746869732E706F7075702E73686F7753656C6563746564436865636B626F782E697328273A636865636B656427292029207B0D0A2020202020202F2F696620636865636B626F78202273686F77';
wwv_flow_api.g_varchar2_table(1532) := '2073656C65637465642220697320636865636B6564207468656E2073686F77207265706F7274206F662073656C65637465642076616C7565730D0A202020202020746869732E5F706F707570416A61784765744F6E6C7953656C656374656428293B0D0A';
wwv_flow_api.g_varchar2_table(1533) := '202020207D0D0A20202020656C7365207B0D0A0D0A2020202020206966202820746869732E706F7075702E73746174652E736F72746564436F6C756D6E49647820213D20756E646566696E65642029207B0D0A20202020202020202F2F69662073706563';
wwv_flow_api.g_varchar2_table(1534) := '6966696320636F6C756D6E20776173207573656420746F20736F727420726573756C7473207468656E20706572666F726D20616A617820696E636C7564696E6720736F7274696E670D0A2020202020202020746869732E5F706F707570416A6178506572';
wwv_flow_api.g_varchar2_table(1535) := '666F726D28312C20746869732E706F7075702E73746174652E736F72746564436F6C756D6E4964782C20746869732E706F7075702E73746174652E736F72746564436F6C756D6E446972656374696F6E2C206E756C6C2C206E756C6C293B0D0A20202020';
wwv_flow_api.g_varchar2_table(1536) := '20207D0D0A202020202020656C7365207B0D0A20202020202020202F2F6F746865727769736520666574636820616E6420646973706C6179206669727374207061676520776974682064656661756C7420736F7274696E670D0A20202020202020207468';
wwv_flow_api.g_varchar2_table(1537) := '69732E5F706F707570416A6178506572666F726D28312C20746869732E5F706F7075704F70656E47657444656661756C74536F7274436F6C756D6E49647828292C20746869732E5F706F7075704F70656E47657444656661756C74536F7274436F6C756D';
wwv_flow_api.g_varchar2_table(1538) := '6E446972656374696F6E2829293B0D0A2020202020207D0D0A202020207D0D0A0D0A20200D0A20207D2C0D0A20202F2A0D0A202020202A0D0A202020202A2066756E6374696F6E206E616D653A205F6865616465725769646765744B657955704D616E61';
wwv_flow_api.g_varchar2_table(1539) := '676549636F6E730D0A202020202A206465736372697074696F6E20203A200D0A202020202A20706172616D733A0D0A202020202A2020202D0D0A202020202A2020202D0D0A202020202A0D0A20202A2F20200D0A20205F6865616465725769646765744B';
wwv_flow_api.g_varchar2_table(1540) := '657955704D616E61676549636F6E733A2066756E6374696F6E2820704576656E7420297B0D0A20202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F6865';
wwv_flow_api.g_varchar2_table(1541) := '616465725769646765744B657955704D616E61676549636F6E73272C207B0D0A20202020202022617267756D656E7473223A20617267756D656E74732C0D0A20202020202022704576656E74223A20704576656E740D0A202020207D293B0D0A0D0A2020';
wwv_flow_api.g_varchar2_table(1542) := '2020766172206974656D203D202428704576656E742E63757272656E74546172676574293B0D0A0D0A2020202069662028206974656D2E76616C28292E6C656E677468203D3D20302029207B0D0A2020202020206974656D2E616464436C617373282765';
wwv_flow_api.g_varchar2_table(1543) := '6D70747927293B0D0A202020207D0D0A20202020656C7365207B0D0A2020202020206974656D2E72656D6F7665436C6173732827656D70747927293B0D0A202020207D0D0A20207D2C20200D0A20202F2A0D0A2020202050524F4D50540D0A20202A2F0D';
wwv_flow_api.g_varchar2_table(1544) := '0A20202F2A0D0A202020202A0D0A202020202A2066756E6374696F6E206E616D653A205F70726F6D70745265706F736974696F6E0D0A202020202A206465736372697074696F6E20203A200D0A202020202A20706172616D733A0D0A202020202A202020';
wwv_flow_api.g_varchar2_table(1545) := '2D0D0A202020202A2020202D0D0A202020202A0D0A20202A2F20200D0A20205F70726F6D70745265706F736974696F6E3A2066756E6374696F6E28297B0D0A20202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556';
wwv_flow_api.g_varchar2_table(1546) := '454C362C20746869732E6C6F675072656669782C20275F70726F6D70745265706F736974696F6E272C207B0D0A20202020202022617267756D656E7473223A20617267756D656E74730D0A202020207D293B0D0A0D0A20202020766172200D0A20202020';
wwv_flow_api.g_varchar2_table(1547) := '20206F6666736574203D20746869732E6D61736B2E636F6E7461696E65722E6F666673657428292C0D0A202020202020706F736974696F6E203D20746869732E6D61736B2E636F6E7461696E65722E706F736974696F6E28292C0D0A2020202020207769';
wwv_flow_api.g_varchar2_table(1548) := '6E646F775769647468203D20242877696E646F77292E6F75746572576964746828292C0D0A202020202020746F7020203D206F66667365742E746F70202B20746869732E6D61736B2E636F6E7461696E65722E6F757465724865696768742829202D312C';
wwv_flow_api.g_varchar2_table(1549) := '0D0A2020202020206C656674203D206F66667365742E6C6566742C0D0A20202020202070726F6D7074526573756C745769647468203D20303B0D0A0D0A20202020696620282021746869732E70726F6D70742E697356697369626C65202920207B0D0A20';
wwv_flow_api.g_varchar2_table(1550) := '2020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F5741524E494E472C20746869732E6C6F675072656669782C20275F70726F6D70745265706F736974696F6E2070726F6D7074206E6F742076697369626C652C2064';
wwv_flow_api.g_varchar2_table(1551) := '6F206E74682E27293B0D0A20202020202072657475726E20766F69642830293B0D0A202020207D0D0A0D0A20202020746869732E70726F6D70742E636F6E7461696E65722E637373287B0D0A20202020202022746F70223A20746F702C0D0A2020202020';
wwv_flow_api.g_varchar2_table(1552) := '20226C656674223A206C6566740D0A202020207D293B0D0A0D0A2020202070726F6D7074526573756C745769647468203D20746869732E70726F6D70742E636F6E7461696E65722E6F75746572576964746828293B0D0A0D0A2020202069662028207072';
wwv_flow_api.g_varchar2_table(1553) := '6F6D7074526573756C745769647468202B206C656674203E2077696E646F7757696474682029207B0D0A202020202020746869732E70726F6D70742E636F6E7461696E65722E637373287B0D0A2020202020202020226D696E5769647468223A2070726F';
wwv_flow_api.g_varchar2_table(1554) := '6D7074526573756C7457696474682C0D0A2020202020202020226C656674223A2022222C0D0A2020202020202020227269676874223A2077696E646F775769647468202D20746869732E6D61736B2E636F6E7461696E65722E6F75746572576964746828';
wwv_flow_api.g_varchar2_table(1555) := '292D6C6566740D0A2020202020207D293B0D0A0D0A202020202020746869732E70726F6D70742E666978426F726465722E637373287B0D0A2020202020202020227269676874223A20226175746F222C0D0A2020202020202020226C656674223A20300D';
wwv_flow_api.g_varchar2_table(1556) := '0A2020202020207D290D0A202020207D0D0A20207D2C0D0A20202F2A0D0A202020202A0D0A202020202A2066756E6374696F6E206E616D653A205F70726F6D70744765745A496E6465780D0A202020202A206465736372697074696F6E20203A200D0A20';
wwv_flow_api.g_varchar2_table(1557) := '2020202A20706172616D733A0D0A202020202A2020202D0D0A202020202A2020202D0D0A202020202A0D0A20202A2F20200D0A20205F70726F6D70744765745A496E6465783A2066756E6374696F6E282070456C656D20297B0D0A20202020617065782E';
wwv_flow_api.g_varchar2_table(1558) := '64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F70726F6D70744765745A496E646578272C207B0D0A20202020202022617267756D656E7473223A20617267756D656E7473';
wwv_flow_api.g_varchar2_table(1559) := '2C0D0A2020202020202770456C656D273A2070456C656D0D0A202020207D293B0D0A0D0A20202020766172207A496E646578203B0D0A0D0A20202020696620282070456C656D203D3D20756E646566696E65642029207B0D0A202020202020617065782E';
wwv_flow_api.g_varchar2_table(1560) := '64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F70726F6D70744765745A496E646578272C202770456C656D20697320756E646566696E656427293B0D0A20202020202072';
wwv_flow_api.g_varchar2_table(1561) := '657475726E204E614E3B0D0A202020207D0D0A20202020656C736520696620282070456C656D2E676574283029203D3D20242827626F647927292E6765742830292029207B0D0A202020202020617065782E64656275672E6D6573736167652874686973';
wwv_flow_api.g_varchar2_table(1562) := '2E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F70726F6D70744765745A496E646578272C202770456C656D20697320626F64792C206E6F207A2D696E6465782069732073657427293B0D0A2020202020207265747572';
wwv_flow_api.g_varchar2_table(1563) := '6E204E614E3B0D0A202020207D0D0A0D0A202020207A496E646578203D207061727365496E742870456C656D2E63737328277A496E6465782729293B20200D0A0D0A20202020696620282069734E614E287A496E646578292029207B0D0A202020202020';
wwv_flow_api.g_varchar2_table(1564) := '72657475726E20746869732E5F70726F6D70744765745A496E646578282070456C656D2E706172656E74282920293B0D0A202020207D0D0A20202020656C7365207B0D0A202020202020617065782E64656275672E6D65737361676528746869732E435F';
wwv_flow_api.g_varchar2_table(1565) := '4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F70726F6D70744765745A496E646578207A496E646578272C207A496E646578293B0D0A20202020202072657475726E207A496E6465783B0D0A202020207D0D0A202020200D0A';
wwv_flow_api.g_varchar2_table(1566) := '20207D2C0D0A20202F2A0D0A202020202A0D0A202020202A2066756E6374696F6E206E616D653A205F70726F6D70744372656174654E65770D0A202020202A206465736372697074696F6E20203A200D0A202020202A20706172616D733A0D0A20202020';
wwv_flow_api.g_varchar2_table(1567) := '2A2020202D0D0A202020202A2020202D0D0A202020202A0D0A20202A2F20200D0A20205F70726F6D70744372656174654E65773A2066756E6374696F6E28297B0D0A20202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F';
wwv_flow_api.g_varchar2_table(1568) := '4C4556454C362C20746869732E6C6F675072656669782C20275F70726F6D70744372656174654E6577272C207B0D0A20202020202022617267756D656E7473223A20617267756D656E74730D0A202020207D293B0D0A0D0A20202020766172200D0A2020';
wwv_flow_api.g_varchar2_table(1569) := '2020202072657475726E4F626A656374203D207B7D2C0D0A2020202020206174747269627574657320203D20746869732E656C656D656E742E6765742830292E617474726962757465732C0D0A2020202020202F2F616476616E636564437573746F6D64';
wwv_flow_api.g_varchar2_table(1570) := '41747472696275746573203D20746869732E6F7074696F6E732E6974656D2E61747472692C0D0A202020202020636C617373657320202020203D20617474726962757465732E636C61737320213D20756E646566696E6564203F20617474726962757465';
wwv_flow_api.g_varchar2_table(1571) := '732E636C6173732E76616C75652E73706C69742827202729203A205B5D2C0D0A202020202020666978426F726465722020203D202428273C64697620636C6173733D22666978426F72646572223E3C2F6469763E27292C0D0A202020202020636F6E7461';
wwv_flow_api.g_varchar2_table(1572) := '696E65722020203D202428273C6469763E3C2F6469763E27292C0D0A2020202020206865616465722020202020203D202428273C6469763E3C2F6469763E27292C0D0A2020202020206D656E7520202020202020203D202428273C64697620636C617373';
wwv_flow_api.g_varchar2_table(1573) := '3D226D656E75223E3C2F6469763E27292C0D0A2020202020206D656E75457870616E6420203D20242827272B0D0A2020202020202020273C6120687265663D226A6176617363726970743A20766F69642830292220636C6173733D22742D427574746F6E';
wwv_flow_api.g_varchar2_table(1574) := '20742D427574746F6E2D2D74696E7920742D427574746F6E2D2D6C696E6B20742D427574746F6E2D2D70696C6C207669657722207469746C653D22272B746869732E435F50524F4D50545F4D454E555F455850414E445F5449544C452B27223E272B0D0A';
wwv_flow_api.g_varchar2_table(1575) := '20202020202020202720203C7370616E20617269612D68696464656E3D22747275652220636C6173733D2266612066612D636F6D707265737320636F6C6C6170736564223E3C2F7370616E3E272B0D0A20202020202020202720203C7370616E20617269';
wwv_flow_api.g_varchar2_table(1576) := '612D68696464656E3D22747275652220636C6173733D2266612066612D657870616E6420657870616E646564223E3C2F7370616E3E272B0D0A2020202020202020273C2F613E27292C0D0A2020202020206D656E75536F7274202020203D20242827272B';
wwv_flow_api.g_varchar2_table(1577) := '0D0A2020202020202020273C6120687265663D226A6176617363726970743A20766F69642830292220636C6173733D22742D427574746F6E20742D427574746F6E2D2D74696E7920742D427574746F6E2D2D6C696E6B20742D427574746F6E2D2D70696C';
wwv_flow_api.g_varchar2_table(1578) := '6C20736F727422207469746C653D22272B746869732E435F50524F4D50545F4D454E555F534F52545F5449544C452B27223E272B0D0A20202020202020202720203C7370616E20617269612D68696464656E3D22747275652220636C6173733D22612D49';
wwv_flow_api.g_varchar2_table(1579) := '636F6E2069636F6E2D7270742D736F72742D61736320617363223E3C2F7370616E3E272B0D0A20202020202020202720203C7370616E20617269612D68696464656E3D22747275652220636C6173733D22612D49636F6E2069636F6E2D7270742D736F72';
wwv_flow_api.g_varchar2_table(1580) := '742D646573632064657363223E3C2F7370616E3E272B0D0A2020202020202020273C2F613E27292C0D0A2020202020206D656E75436C656172202020203D20242827272B0D0A2020202020202020273C6120687265663D226A6176617363726970743A20';
wwv_flow_api.g_varchar2_table(1581) := '766F69642830292220636C6173733D22742D427574746F6E20742D427574746F6E2D2D74696E7920742D427574746F6E2D2D6C696E6B20742D427574746F6E2D2D70696C6C22207469746C653D22272B746869732E435F50524F4D50545F4D454E555F43';
wwv_flow_api.g_varchar2_table(1582) := '4C4541525F5449544C452B27223E272B0D0A20202020202020202720203C7370616E20617269612D68696464656E3D22747275652220636C6173733D2266612066612D74726173682D6F20636C656172223E3C2F7370616E3E272B0D0A20202020202020';
wwv_flow_api.g_varchar2_table(1583) := '20273C2F613E27292C0D0A2020202020206D656E755061737465202020203D20242827272B0D0A2020202020202020273C6120687265663D226A6176617363726970743A20766F69642830292220636C6173733D22742D427574746F6E20742D42757474';
wwv_flow_api.g_varchar2_table(1584) := '6F6E2D2D74696E7920742D427574746F6E2D2D6C696E6B20742D427574746F6E2D2D70696C6C22207469746C653D22272B746869732E435F50524F4D50545F4D454E555F50415354455F5449544C452B27223E272B0D0A20202020202020202720203C73';
wwv_flow_api.g_varchar2_table(1585) := '70616E20617269612D68696464656E3D22747275652220636C6173733D2266612066612D7061737465207061737465223E3C2F7370616E3E272B0D0A2020202020202020273C2F613E27292C0D0A2020202020206D656E75506F707570202020203D2024';
wwv_flow_api.g_varchar2_table(1586) := '2827272B0D0A2020202020202020273C6120687265663D226A6176617363726970743A20766F69642830292220636C6173733D22742D427574746F6E20742D427574746F6E2D2D74696E7920742D427574746F6E2D2D6C696E6B20742D427574746F6E2D';
wwv_flow_api.g_varchar2_table(1587) := '2D70696C6C22207469746C653D22272B746869732E435F50524F4D50545F4D454E555F504F5055505F5449544C452B27223E272B0D0A20202020202020202720203C7370616E20617269612D68696464656E3D22747275652220636C6173733D22666120';
wwv_flow_api.g_varchar2_table(1588) := '66612D65787465726E616C2D6C696E6B2D73717561726520706F707570223E3C2F7370616E3E272B0D0A2020202020202020273C2F613E27292C0D0A0D0A0D0A202020202020696E707574536561726368203D202428273C696E70757420747970653D22';
wwv_flow_api.g_varchar2_table(1589) := '746578742220746162696E6465783D2230223E27292C0D0A20202020202069636F6E20202020202020203D202428273C7370616E20636C6173733D2266612066612D736561726368223E3C2F7370616E3E27292C0D0A202020202020626F647920202020';
wwv_flow_api.g_varchar2_table(1590) := '202020203D202428273C6469763E3C212D2D64656661756C7420626F64792D2D3E3C2F6469763E27292C0D0A2020202020206F66667365742020202020203D20746869732E6D61736B2E636F6E7461696E65722E6F666673657428293B0D0A0D0A202020';
wwv_flow_api.g_varchar2_table(1591) := '206966202820746869732E6D61736B2E636F6E7461696E65722E697328272E657870616E64656427292029207B0D0A2020202020206D656E75457870616E642E616464436C6173732827657870616E64656427290D0A202020207D0D0A0D0A2020202069';
wwv_flow_api.g_varchar2_table(1592) := '66202820746869732E6D61736B2E73746174652E736F72746564203D3D20756E646566696E65642029207B0D0A2020202020206D656E75536F72742E616464436C617373282761736327293B0D0A202020207D0D0A20202020656C736520696620282074';
wwv_flow_api.g_varchar2_table(1593) := '6869732E6D61736B2E73746174652E736F72746564203D3D2027617363272029207B0D0A2020202020206D656E75536F72742E616464436C617373282761736327293B200D0A202020207D0D0A20202020656C7365207B0D0A2020202020206D656E7553';
wwv_flow_api.g_varchar2_table(1594) := '6F72742E616464436C61737328276465736327293B0D0A202020207D0D0A0D0A202020206D656E750D0A2020202020202E617070656E6428206D656E75457870616E6420290D0A2020202020202E617070656E6428206D656E75536F727420290D0A2020';
wwv_flow_api.g_varchar2_table(1595) := '202020202E617070656E6428206D656E75436C65617220293B0D0A2020202020200D0A202020206966202820746869732E706C7567696E53657474696E67732E69734D756C7469706C6553656C656374696F6E2029207B0D0A2020202020206D656E752E';
wwv_flow_api.g_varchar2_table(1596) := '617070656E6428206D656E75506173746520293B0D0A202020207D0D0A0D0A202020206966202820746869732E706C7567696E53657474696E67732E6973506F7075705265706F7274417661696C61626C652029207B0D0A2020202020206D656E752E61';
wwv_flow_api.g_varchar2_table(1597) := '7070656E6428206D656E75506F70757020293B0D0A202020207D0D0A0D0A20202020636F6E7461696E65720D0A2020202020202E617474722827646174612D70726F6D7074272C20746869732E776964676574556E697175654964290D0A202020202020';
wwv_flow_api.g_varchar2_table(1598) := '2E616464436C6173732827707265746975732D2D656E68616E6365644C6F764974656D2070726F6D707427290D0A2020202020202E637373287B0D0A2020202020202020226D696E5769647468222020203A20746869732E6D61736B2E636F6E7461696E';
wwv_flow_api.g_varchar2_table(1599) := '65722E6F75746572576964746828292C0D0A20202020202020202F2F22626F72646572436F6C6F72223A20746869732E696E7075744373732E626F72646572436F6C6F722C0D0A202020202020202022666F6E7453697A65222020203A20746869732E69';
wwv_flow_api.g_varchar2_table(1600) := '6E7075744373732E666F6E7453697A652C0D0A2020202020202020226C696E6548656967687422203A20746869732E696E7075744373732E6C696E654865696768740D0A2020202020207D290D0A2020202020202E617070656E6428666978426F726465';
wwv_flow_api.g_varchar2_table(1601) := '722F2A2E6373732822626F72646572436F6C6F72222C20746869732E696E7075744373732E626F72646572436F6C6F72292A2F290D0A2020202020202E617474722822746162696E646578222C202D31290D0A202020203B0D0A202020200D0A0D0A2020';
wwv_flow_api.g_varchar2_table(1602) := '2020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F70726F6D70744372656174654E6577272C20276F6666736574272C206F6666736574293B0D0A0D0A2020';
wwv_flow_api.g_varchar2_table(1603) := '2020626F64790D0A2020202020202E616464436C6173732827626F647927290D0A2020202020202E637373287B0D0A2020202020202020276D6178486569676874273A20746869732E706C7567696E53657474696E67732E70726F6D70742E6D61784865';
wwv_flow_api.g_varchar2_table(1604) := '696768740D0A2020202020207D293B0D0A0D0A202020202F2F7462640D0A202020202F2F74686973206973206E6F74206E65656465642C2062656361757365206D61786C656E67746820686173206265656E207573656420746F0D0A202020202F2F746F';
wwv_flow_api.g_varchar2_table(1605) := '206C696D69742070617374696E672076616C7565730D0A202020206966202820617474726962757465732E6D61786C656E67746820213D20756E646566696E65642029207B0D0A202020202020696E7075745365617263682E6174747228276D61786C65';
wwv_flow_api.g_varchar2_table(1606) := '6E677468272C20617474726962757465732E6D61786C656E6774682E76616C7565293B20200D0A202020207D0D0A202020200D0A202020206966202820617474726962757465732E706C616365686F6C64657220213D20756E646566696E65642029207B';
wwv_flow_api.g_varchar2_table(1607) := '0D0A202020202020696E7075745365617263682E617474722827706C616365686F6C646572272C20617474726962757465732E706C616365686F6C6465722E76616C7565293B20200D0A202020207D0D0A0D0A20202020666F722028766172206920696E';
wwv_flow_api.g_varchar2_table(1608) := '20636C617373657329207B0D0A202020202020696E7075745365617263682E616464436C6173732820636C61737365735B695D2B272D696E7075742720293B20200D0A202020207D0D0A0D0A20202020696E7075745365617263682E6174747228276175';
wwv_flow_api.g_varchar2_table(1609) := '746F636F6D706C657465272C20276F666627293B0D0A0D0A202020206865616465720D0A2020202020202E616464436C617373282768656164657227290D0A2020202020202E617070656E642820696E70757453656172636820290D0A2020202020202E';
wwv_flow_api.g_varchar2_table(1610) := '617070656E64282069636F6E20293B0D0A0D0A202020206966202820746869732E706C7567696E53657474696E67732E70726F6D70742E68696465546F6F6C626172203D3D2066616C73652029207B0D0A202020202020636F6E7461696E65722E617070';
wwv_flow_api.g_varchar2_table(1611) := '656E64286D656E75293B0D0A202020207D0D0A0D0A20202020636F6E7461696E65720D0A2020202020202E617070656E6428686561646572290D0A2020202020202E617070656E6428626F6479290D0A2020202020202E6869646528293B0D0A20202020';
wwv_flow_api.g_varchar2_table(1612) := '0D0A0D0A2020202072657475726E4F626A656374203D207B0D0A20202020202022637573746F6D54656D706C61746546756E6374696F6E223A20746869732E5F70726F6D707450726570617465437573746F6D54656D706C61746546756E6374696F6E28';
wwv_flow_api.g_varchar2_table(1613) := '292C0D0A20202020202022636F6E7461696E657222203A20636F6E7461696E65722C0D0A2020202020202268656164657222202020203A206865616465722C0D0A20202020202022626F6479222020202020203A20626F64792C0D0A2020202020202269';
wwv_flow_api.g_varchar2_table(1614) := '6E7075742220202020203A20696E7075745365617263682C0D0A2020202020202269636F6E222020202020203A2069636F6E2C0D0A20202020202022666978426F7264657222203A20666978426F726465722C0D0A20202020202022697356697369626C';
wwv_flow_api.g_varchar2_table(1615) := '6522203A2066616C73652C0D0A202020202020226D656E75222020202020203A207B0D0A202020202020202022636F6E7461696E6572223A206D656E752C0D0A202020202020202022657870616E64222020203A206D656E75457870616E642C0D0A2020';
wwv_flow_api.g_varchar2_table(1616) := '20202020202022736F72742220202020203A206D656E75536F72742C0D0A202020202020202022636C65617222202020203A206D656E75436C6561722C0D0A202020202020202022706173746522202020203A206D656E7550617374652C0D0A20202020';
wwv_flow_api.g_varchar2_table(1617) := '2020202022706F70757022202020203A206D656E75506F7075700D0A2020202020207D0D0A202020207D3B0D0A0D0A2020202072657475726E4F626A6563742E626F64790D0A2020202020202E6F6E2827636C69636B272C20276C69272C20242E70726F';
wwv_flow_api.g_varchar2_table(1618) := '78792820746869732E5F70726F6D70744C69436C69636B48616E6C6465722C20746869732029290D0A2020202020202E6F6E28277363726F6C6C272C20746869732E5F6465626F756E636528242E70726F787928746869732E5F70726F6D70745363726F';
wwv_flow_api.g_varchar2_table(1619) := '6C6C43616C6C6261636B2C2074686973292C203130302920290D0A2020202020202E6F6E28276D6F757365656E746572272C20276C69272C242E70726F787928746869732E5F70726F6D7074556E686967686C696768744F746865722C20746869732929';
wwv_flow_api.g_varchar2_table(1620) := '0D0A0D0A2020202072657475726E4F626A6563742E696E7075740D0A2020202020202E6F6E2827626C7572272C20242E70726F787928746869732E5F70726F6D7074496E707574426C75722C7468697329290D0A2020202020202E6F6E2827666F637573';
wwv_flow_api.g_varchar2_table(1621) := '272C20242E70726F787928746869732E5F70726F6D7074496E707574466F6375732C7468697329290D0A2020202020202E6F6E28276B65797570272C20746869732E5F6465626F756E63652820242E70726F78792820746869732E5F6D61736B4B657955';
wwv_flow_api.g_varchar2_table(1622) := '702C2074686973292C20746869732E706C7567696E53657474696E67732E70726F6D70742E6465626F756E636554696D65202920290D0A2020202020202E6F6E28276B6579646F776E272C20746869732E5F6465626F756E636528200D0A202020202020';
wwv_flow_api.g_varchar2_table(1623) := '20202020242E70726F787928200D0A202020202020202020202020746869732E5F70726F6D7074496E7075744B6579446F776E48616E646C65722C20746869730D0A20202020202020202020292C200D0A20202020202020202020746869732E706C7567';
wwv_flow_api.g_varchar2_table(1624) := '696E53657474696E67732E70726F6D70742E6E617669676174696F6E4465626F756E636554696D650D0A202020202020202029200D0A202020202020293B0D0A0D0A2020202072657475726E4F626A6563742E6D656E752E657870616E642E6F6E282763';
wwv_flow_api.g_varchar2_table(1625) := '6C69636B272C20242E70726F78792820746869732E5F70726F6D70744D656E754368616E6765566965772C2074686973202920293B0D0A2020202072657475726E4F626A6563742E6D656E752E736F727420202E6F6E2827636C69636B272C20242E7072';
wwv_flow_api.g_varchar2_table(1626) := '6F78792820746869732E5F70726F6D70744D656E75536F7274546167732C2074686973202920293B0D0A2020202072657475726E4F626A6563742E6D656E752E636C656172202E6F6E2827636C69636B272C20242E70726F78792820746869732E5F7072';
wwv_flow_api.g_varchar2_table(1627) := '6F6D70744D656E75436C65617256616C7565732C2074686973202920293B0D0A2020202072657475726E4F626A6563742E6D656E752E7061737465202E6F6E2827636C69636B272C20242E70726F78792820746869732E5F70726F6D70744D656E755061';
wwv_flow_api.g_varchar2_table(1628) := '73746556616C7565734F70656E506F7075702C2074686973202920293B0D0A2020202072657475726E4F626A6563742E6D656E752E706F707570202E6F6E2827636C69636B272C20242E70726F78792820746869732E5F706F7075704F70656E2C207468';
wwv_flow_api.g_varchar2_table(1629) := '6973202920293B0D0A0D0A20202020746869732E70726F6D7074203D2072657475726E4F626A6563743B0D0A0D0A2020202072657475726E2072657475726E4F626A6563743B0D0A0D0A20207D2C0D0A20202F2A0D0A202020202A0D0A202020202A2066';
wwv_flow_api.g_varchar2_table(1630) := '756E6374696F6E206E616D653A205F70726F6D7074536574466F6375730D0A202020202A206465736372697074696F6E20203A200D0A202020202A20706172616D733A0D0A202020202A2020202D0D0A202020202A2020202D0D0A202020202A0D0A2020';
wwv_flow_api.g_varchar2_table(1631) := '2A2F20200D0A20205F70726F6D7074536574466F6375733A2066756E6374696F6E28297B0D0A20202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C362C20746869732E6C6F675072656669782C20275F7072';
wwv_flow_api.g_varchar2_table(1632) := '6F6D7074536574466F637573272C207B0D0A20202020202022617267756D656E7473223A20617267756D656E74730D0A202020207D293B0D0A0D0A20202020746869732E70726F6D70742E696E7075742E666F63757328293B0D0A20207D2C0D0A20202F';
wwv_flow_api.g_varchar2_table(1633) := '2A0D0A202020202A0D0A202020202A2066756E6374696F6E206E616D653A205F70726F6D707453686F770D0A202020202A206465736372697074696F6E20203A200D0A202020202A20706172616D733A0D0A202020202A2020202D0D0A202020202A2020';
wwv_flow_api.g_varchar2_table(1634) := '202D0D0A202020202A0D0A20202A2F20200D0A20205F70726F6D707453686F773A2066756E6374696F6E28297B0D0A20202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F44454255472C20746869732E6C6F6750726566';
wwv_flow_api.g_varchar2_table(1635) := '69782C20275F70726F6D707453686F77272C207B0D0A20202020202022617267756D656E7473223A20617267756D656E74732C0D0A20202020202022636F6E7461696E6572223A20746869732E70726F6D70742E636F6E7461696E65720D0A202020207D';
wwv_flow_api.g_varchar2_table(1636) := '293B0D0A0D0A20202020766172200D0A20202020202070726F6D70745A496E6465783B0D0A0D0A0D0A202020202428646F63756D656E74292E6F6E28276D6F757365646F776E2E70726F6D7074636865636B2D272B746869732E656C656D656E742E6765';
wwv_flow_api.g_varchar2_table(1637) := '742830292E69642C20242E70726F787928746869732E5F70726F6D7074436865636B436C69636B4F7574736964652C207468697329293B0D0A0D0A20202020746869732E70726F6D70742E636F6E7461696E65722E73686F7728293B0D0A0D0A20202020';
wwv_flow_api.g_varchar2_table(1638) := '746869732E6D61736B2E636F6E7461696E65722E616464436C6173732827666F637573656427293B0D0A0D0A20202020746869732E70726F6D70742E697356697369626C65203D20747275653B0D0A0D0A0D0A202020202F2F7365742070726F6D707420';
wwv_flow_api.g_varchar2_table(1639) := '7A496E64657820696E2063617365206F66206265696E6720757365642061732070617274206F6620696E6C696E65206469616C6F670D0A2020202070726F6D70745A496E646578203D20746869732E5F70726F6D70744765745A496E6465782820746869';
wwv_flow_api.g_varchar2_table(1640) := '732E6D61736B2E6974656D436F6E7461696E657220293B0D0A0D0A2020202069662028202169734E614E282070726F6D70745A496E64657820292029207B0D0A202020202020746869732E70726F6D70742E636F6E7461696E65722E63737328277A496E';
wwv_flow_api.g_varchar2_table(1641) := '646578272C2070726F6D70745A496E6465782B31293B0D0A202020207D0D0A202020200D0A20202020746869732E5F6D61736B506F707570427574746F6E4869646528293B0D0A20202020746869732E5F70726F6D70745265706F736974696F6E28293B';
wwv_flow_api.g_varchar2_table(1642) := '0D0A0D0A20202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F70726F6D707453686F77207A2D696E646578272C2070726F6D70745A496E646578293B0D';
wwv_flow_api.g_varchar2_table(1643) := '0A0D0A202020206966202820746869732E6D61736B2E73746174652E6572726F7220262620746869732E706C7567696E53746F70706564203D3D2066616C73652029207B0D0A202020202020746869732E6D61736B2E616A61785374617465427574746F';
wwv_flow_api.g_varchar2_table(1644) := '6E2E627574746F6E2E6869646528293B0D0A202020202020746869732E6D61736B2E73746174652E6572726F72203D2066616C73653B0D0A202020207D0D0A0D0A20202020746869732E5F747269676765724576656E7428277061656C695F70726F6D70';
wwv_flow_api.g_varchar2_table(1645) := '745F73686F776E272C20746869732E5F70726F6D70744765744576656E74446174612829293B0D0A0D0A20207D2C0D0A20202F2A0D0A202020202A0D0A202020202A2066756E6374696F6E206E616D653A205F70726F6D7074486964650D0A202020202A';
wwv_flow_api.g_varchar2_table(1646) := '206465736372697074696F6E20203A200D0A202020202A20706172616D733A0D0A202020202A2020202D0D0A202020202A2020202D0D0A202020202A0D0A20202A2F20200D0A20205F70726F6D7074486964653A2066756E6374696F6E282070466F6375';
wwv_flow_api.g_varchar2_table(1647) := '734F6E456C656D656E7420297B0D0A20202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F44454255472C20746869732E6C6F675072656669782C20275F70726F6D707448696465272C207B0D0A20202020202022617267';
wwv_flow_api.g_varchar2_table(1648) := '756D656E7473223A20617267756D656E74732C0D0A2020202020202270466F6375734F6E456C656D656E74223A2070466F6375734F6E456C656D656E740D0A202020207D293B0D0A0D0A20202020746869732E6D61736B2E636F6E7461696E65722E7265';
wwv_flow_api.g_varchar2_table(1649) := '6D6F7665436C6173732827666F637573656427293B0D0A20202020746869732E70726F6D70742E696E7075742E76616C286E756C6C293B0D0A20202020746869732E70726F6D70742E636F6E7461696E65722E6869646528293B0D0A0D0A202020202F2F';
wwv_flow_api.g_varchar2_table(1650) := '746869732E70726F6D70742E636F6E7461696E65722E72656D6F766528293B0D0A202020202F2F746869732E70726F6D70742E636F6E7461696E6572203D20756E646566696E65643B0D0A0D0A20202020746869732E70726F6D70742E69735669736962';
wwv_flow_api.g_varchar2_table(1651) := '6C65203D2066616C73653B0D0A0D0A20202020746869732E5F6D61736B506F707570427574746F6E53686F7728293B0D0A0D0A20202020696620282070466F6375734F6E456C656D656E7420213D20756E646566696E65642026262070466F6375734F6E';
wwv_flow_api.g_varchar2_table(1652) := '456C656D656E742E697328273A666F63757361626C6527292029207B0D0A20202020202070466F6375734F6E456C656D656E742E666F63757328293B20200D0A202020207D0D0A20202020656C7365207B0D0A202020202020746869732E5F6765744E65';
wwv_flow_api.g_varchar2_table(1653) := '7874466F63757341626C6528292E666F63757328293B0D0A202020207D0D0A202020200D0A20202020746869732E5F747269676765724576656E7428277061656C695F70726F6D70745F68696464656E272C20746869732E5F70726F6D70744765744576';
wwv_flow_api.g_varchar2_table(1654) := '656E74446174612829293B0D0A0D0A202020202428646F63756D656E74292E6F666628276D6F757365646F776E2E70726F6D7074636865636B2D272B746869732E656C656D656E742E6765742830292E6964293B202020200D0A20207D2C0D0A20202F2A';
wwv_flow_api.g_varchar2_table(1655) := '0D0A202020202A0D0A202020202A2066756E6374696F6E206E616D653A205F616A6178476574506167654974656D730D0A202020202A206465736372697074696F6E20203A200D0A202020202A20706172616D733A0D0A202020202A2020202D0D0A2020';
wwv_flow_api.g_varchar2_table(1656) := '20202A2020202D0D0A202020202A0D0A20202A2F202020200D0A20205F616A6178476574506167654974656D733A2066756E6374696F6E28297B0D0A20202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C36';
wwv_flow_api.g_varchar2_table(1657) := '2C20746869732E6C6F675072656669782C20275F616A6178476574506167654974656D73272C207B0D0A20202020202022617267756D656E7473223A20617267756D656E74730D0A202020207D293B0D0A0D0A20202020766172206974656D73203D205B';
wwv_flow_api.g_varchar2_table(1658) := '746869732E6F7074696F6E732E6974656D2E6C6F765F636173636164655F706172656E745F6974656D732C20746869732E6F7074696F6E732E6974656D2E616A61785F6974656D735F746F5F7375626D69745D0D0A2020202020202E66696C7465722866';
wwv_flow_api.g_varchar2_table(1659) := '756E6374696F6E202873656C6563746F7229207B0D0A202020202020202072657475726E202873656C6563746F72290D0A2020202020207D290D0A2020202020202E6A6F696E28272C27293B0D0A0D0A20202020617065782E64656275672E6D65737361';
wwv_flow_api.g_varchar2_table(1660) := '676528746869732E435F4C4F475F4C4556454C362C20746869732E6C6F675072656669782C20275F616A6178476574506167654974656D73272C207B0D0A2020202020202272657475726E223A206974656D730D0A202020207D293B0D0A0D0A20202020';
wwv_flow_api.g_varchar2_table(1661) := '72657475726E206974656D733B0D0A20207D2C0D0A20202F2A0D0A202020202A0D0A202020202A2066756E6374696F6E206E616D653A205F70726F6D7074416A6178506572666F726D0D0A202020202A206465736372697074696F6E20203A200D0A2020';
wwv_flow_api.g_varchar2_table(1662) := '20202A20706172616D733A0D0A202020202A2020202D0D0A202020202A2020202D0D0A202020202A0D0A20202A2F202020200D0A20205F70726F6D7074416A6178506572666F726D3A2066756E6374696F6E2820705061676520297B0D0A202020206170';
wwv_flow_api.g_varchar2_table(1663) := '65782E64656275672E6D65737361676528746869732E435F4C4F475F44454255472C20746869732E6C6F675072656669782C20275F70726F6D7074416A6178506572666F726D272C207B0D0A20202020202022617267756D656E7473223A20617267756D';
wwv_flow_api.g_varchar2_table(1664) := '656E74732C0D0A202020202020227050616765223A2070506167650D0A202020207D293B0D0A0D0A202020207661720D0A2020202020207265717565737450616765203D207050616765203D3D20756E646566696E6564203F2031203A2070506167652C';
wwv_flow_api.g_varchar2_table(1665) := '0D0A202020202020616A617844617461203D207B0D0A202020202020202022783031223A20274155544F434F4D504C455445272C20202020202020202020202020202020202020202020202020202F2F747279620D0A202020202020202022783032223A';
wwv_flow_api.g_varchar2_table(1666) := '20746869732E706C7567696E53657474696E67732E70726F6D70742E726F7773506572506167652C2020202F2F726F77732070657220706167650D0A202020202020202022783033223A20746869732E5F6D61736B47657456616C756528292C20202020';
wwv_flow_api.g_varchar2_table(1667) := '202020202020202020202020202020202F2F73656172636820737472696E670D0A202020202020202022783034223A2072657175657374506167652C20202020202020202020202F2F706167650D0A202020202020202022706167654974656D73223A20';
wwv_flow_api.g_varchar2_table(1668) := '746869732E5F616A6178476574506167654974656D7328290D0A2020202020207D2C0D0A202020202020616A61784F7074696F6E73203D207B0D0A2020202020202020226265666F726553656E6422203A20242E70726F787928746869732E5F70726F6D';
wwv_flow_api.g_varchar2_table(1669) := '7074416A61784265666F726553656E642C20746869732C207265717565737450616765292C0D0A2020202020202020227375636365737322202020203A20242E70726F787928746869732E5F70726F6D7074416A6178537563636573732C207468697329';
wwv_flow_api.g_varchar2_table(1670) := '2C0D0A2020202020202020226572726F72222020202020203A20242E70726F787928746869732E5F70726F6D7074416A61784572726F722C2074686973292C0D0A202020202020202022636F6D706C657465222020203A20242E70726F78792874686973';
wwv_flow_api.g_varchar2_table(1671) := '2E5F70726F6D7074416A6178436F6D706C6574652C2074686973292C0D0A2020202020202020227461726765742220202020203A20746869732E656C656D656E742E6765742830290D0A2020202020207D3B0D0A0D0A202020206966202820746869732E';
wwv_flow_api.g_varchar2_table(1672) := '6D61736B2E73746174652E616A617852756E6E696E672029207B0D0A202020202020746869732E6D61736B2E73746174652E7868722E61626F727428293B0D0A202020202020746869732E6D61736B2E73746174652E616A617852756E6E696E67203D20';
wwv_flow_api.g_varchar2_table(1673) := '66616C73653B0D0A202020202020746869732E70726F6D70742E69636F6E2E72656D6F7665417474722827636C61737327292E616464436C617373282766612066612D73656172636827293B0D0A202020207D0D0A0D0A20202020746869732E6D61736B';
wwv_flow_api.g_varchar2_table(1674) := '2E73746174652E786872203D20617065782E7365727665722E706C7567696E202820746869732E6F7074696F6E732E706C7567696E2E616A61784964656E7469666965722C20616A6178446174612C20616A61784F7074696F6E7320293B0D0A20202020';
wwv_flow_api.g_varchar2_table(1675) := '0D0A20207D2C0D0A20202F2A0D0A202020202A0D0A202020202A2066756E6374696F6E206E616D653A205F70726F6D7074416A61784265666F726553656E640D0A202020202A206465736372697074696F6E20203A200D0A202020202A20706172616D73';
wwv_flow_api.g_varchar2_table(1676) := '3A0D0A202020202A2020202D0D0A202020202A2020202D0D0A202020202A0D0A20202A2F202020200D0A20205F70726F6D7074416A61784265666F726553656E643A2066756E6374696F6E282070526571756573746564506167652C20704A715848522C';
wwv_flow_api.g_varchar2_table(1677) := '207053657474696E67732029207B0D0A20202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C362C20746869732E6C6F675072656669782C20275F70726F6D7074416A61784265666F726553656E64272C207B';
wwv_flow_api.g_varchar2_table(1678) := '0D0A20202020202022617267756D656E7473223A20617267756D656E74732C0D0A202020202020227052657175657374656450616765223A2070526571756573746564506167652C0D0A20202020202022704A71584852223A20704A715848522C0D0A20';
wwv_flow_api.g_varchar2_table(1679) := '2020202020227053657474696E6773223A207053657474696E67730D0A202020207D293B0D0A0D0A20202020766172200D0A2020202020206D65737361676520203D20746869732E435F50524F4D50545F544558545F534541524348494E472C0D0A2020';
wwv_flow_api.g_varchar2_table(1680) := '2020202074656D706C617465203D2027272B0D0A2020202020202020273C64697620636C6173733D22736561726368696E67223E272B0D0A20202020202020202720203C7370616E20636C6173733D2274657874223E272B6D6573736167652B273C2F73';
wwv_flow_api.g_varchar2_table(1681) := '70616E3E272B0D0A2020202020202020273C2F6469763E273B0D0A0D0A20202020746869732E6D61736B2E73746174652E616A617852756E6E696E67203D20747275653B0D0A20202020746869732E6D61736B2E73746174652E617265526573756C7473';
wwv_flow_api.g_varchar2_table(1682) := '417661696C61626C65203D2066616C73653B0D0A0D0A0D0A2020202069662028207052657175657374656450616765203D3D20312029207B0D0A202020202020746869732E70726F6D70742E626F64792E68746D6C282074656D706C61746520293B2020';
wwv_flow_api.g_varchar2_table(1683) := '0D0A202020207D0D0A0D0A20202020746869732E70726F6D70742E69636F6E2E72656D6F7665417474722827636C61737327292E616464436C617373282766612066612D616E696D2D7370696E2066612D7265667265736827293B0D0A20207D2C20200D';
wwv_flow_api.g_varchar2_table(1684) := '0A20202F2A0D0A202020202A0D0A202020202A2066756E6374696F6E206E616D653A205F70726F6D7074416674657252656E646572696E67446174610D0A202020202A206465736372697074696F6E20203A200D0A202020202A20706172616D733A0D0A';
wwv_flow_api.g_varchar2_table(1685) := '202020202A2020202D0D0A202020202A2020202D0D0A202020202A0D0A20202A2F202020200D0A20205F70726F6D7074416674657252656E646572696E67446174613A2066756E6374696F6E28297B0D0A20202020617065782E64656275672E6D657373';
wwv_flow_api.g_varchar2_table(1686) := '61676528746869732E435F4C4F475F4C4556454C362C20746869732E6C6F675072656669782C20275F70726F6D7074416674657252656E646572696E6744617461272C207B0D0A20202020202022617267756D656E7473223A20617267756D656E74730D';
wwv_flow_api.g_varchar2_table(1687) := '0A202020207D293B0D0A0D0A202020207661720D0A202020202020726573756C747352656E6465726564203D20746869732E70726F6D70742E626F64792E66696E6428276C6927292E6C656E6774682C0D0A2020202020206C6F61644D6F7265203D2024';
wwv_flow_api.g_varchar2_table(1688) := '28273C64697620636C6173733D226C6F61644D6F7265223E3C6120687265663D226A6176617363726970743A20766F6964283029223E272B746869732E435F50524F4D50545F544558545F4C4F41445F4D4F52452B273C2F613E3C2F6469763E27292C0D';
wwv_flow_api.g_varchar2_table(1689) := '0A20202020202069734C6F61724D6F7265203D20746869732E70726F6D70742E626F64792E66696E6428272E6C6F61644D6F726527292E6C656E677468203E20303B0D0A0D0A202020206C6F61644D6F72652E66696E6428276127292E6F6E2827636C69';
wwv_flow_api.g_varchar2_table(1690) := '636B272C20242E70726F78792866756E6374696F6E28297B0D0A202020202020746869732E5F70726F6D7074416A6178506572666F726D28202B2B746869732E6D61736B2E73746174652E6C617374466574636865645061676520293B0D0A202020207D';
wwv_flow_api.g_varchar2_table(1691) := '2C207468697329293B0D0A0D0A202020202F2F6C6F61644D6F72652E6373732827626F72646572436F6C6F72272C20746869732E696E7075744373732E626F72646572436F6C6F72290D0A202020200D0A0D0A2020202069662028200D0A202020202020';
wwv_flow_api.g_varchar2_table(1692) := '746869732E70726F6D70742E626F64792E6F757465724865696768742829203C20746869732E706C7567696E53657474696E67732E70726F6D70742E6D6178486569676874200D0A202020202020262620726573756C747352656E6465726564203C2074';
wwv_flow_api.g_varchar2_table(1693) := '6869732E6D61736B2E73746174652E746F74616C436F756E740D0A2020202029207B0D0A202020202020696620282069734C6F61724D6F7265203D3D2066616C73652029207B0D0A2020202020202020746869732E70726F6D70742E626F64792E617070';
wwv_flow_api.g_varchar2_table(1694) := '656E64286C6F61644D6F7265293B20200D0A2020202020207D0D0A2020202020200D0A202020207D0D0A20202020656C7365207B0D0A202020202020746869732E70726F6D70742E626F64792E66696E6428272E6C6F61644D6F726527292E72656D6F76';
wwv_flow_api.g_varchar2_table(1695) := '6528293B0D0A202020207D0D0A0D0A20207D2C0D0A20202F2A0D0A202020202A0D0A202020202A2066756E6374696F6E206E616D653A205F70726F6D7074416A6178537563636573730D0A202020202A206465736372697074696F6E20203A200D0A2020';
wwv_flow_api.g_varchar2_table(1696) := '20202A20706172616D733A0D0A202020202A2020202D0D0A202020202A2020202D0D0A202020202A0D0A20202A2F202020200D0A20205F70726F6D7074416A6178537563636573733A2066756E6374696F6E2870446174612C2070546578745374617475';
wwv_flow_api.g_varchar2_table(1697) := '732C20704A71584852297B0D0A20202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F44454255472C20746869732E6C6F675072656669782C20275F70726F6D7074416A617853756363657373272C207B0D0A2020202020';
wwv_flow_api.g_varchar2_table(1698) := '2022617267756D656E7473223A20617267756D656E74732C0D0A202020202020227044617461223A2070446174612C0D0A202020202020227054657874537461747573223A2070546578745374617475732C0D0A20202020202022704A71584852223A20';
wwv_flow_api.g_varchar2_table(1699) := '704A715848522020202020200D0A202020207D293B0D0A0D0A20202020746869732E6D61736B2E73746174652E746F74616C436F756E742020202020203D2070446174612E64617461566F6C756D655B305D2E434E543B0D0A20202020746869732E6D61';
wwv_flow_api.g_varchar2_table(1700) := '736B2E73746174652E6C6173744665746368656450616765203D2070446174612E726571756573746564506167653B0D0A20202020746869732E6D61736B2E73746174652E617265526573756C7473417661696C61626C65203D20747275653B0D0A0D0A';
wwv_flow_api.g_varchar2_table(1701) := '202020200D0A20202020746869732E70726F6D70742E69636F6E2E72656D6F7665417474722827636C61737327292E616464436C617373282766612066612D73656172636827293B0D0A0D0A202020202F2F616464206E756C6C2076616C756520696620';
wwv_flow_api.g_varchar2_table(1702) := '646566696E656420616E64206669727374207061676520746F20646973706C61790D0A2020202069662028200D0A202020202020746869732E6D61736B2E73746174652E6C6173744665746368656450616765203D3D2031200D0A202020202020262620';
wwv_flow_api.g_varchar2_table(1703) := '746869732E5F6D61736B47657456616C756528292E6C656E677468203D3D2030200D0A202020202020262620746869732E6F7074696F6E732E6974656D2E6C6F765F646973706C61795F6E756C6C200D0A2020202029207B0D0A20202020202070446174';
wwv_flow_api.g_varchar2_table(1704) := '612E646174612E756E7368696674287B0D0A20202020202020202252223A20746869732E5F6765744974656D4C4F564E756C6C56616C756528292C0D0A20202020202020202244223A20746869732E5F6765744974656D4C4F564E756C6C546578742829';
wwv_flow_api.g_varchar2_table(1705) := '2C0D0A2020202020202020226973415045584E756C6C56616C7565223A20747275650D0A2020202020207D293B0D0A202020207D0D0A0D0A202020207044617461203D20746869732E5F64617461457874656E6453656C656374656446726F6D41727261';
wwv_flow_api.g_varchar2_table(1706) := '794F664F626A65637473282070446174612C20746869732E6D61736B2E73746174652E73656C656374656420293B0D0A0D0A202020206966202820746869732E6D61736B2E73746174652E6C6173744665746368656450616765203D3D20312029207B0D';
wwv_flow_api.g_varchar2_table(1707) := '0A202020202020746869732E5F70726F6D707452656E646572446174612820704461746120293B0D0A202020207D0D0A20202020656C7365207B0D0A202020202020746869732E5F70726F6D7074417070656E64446174612820704461746120293B2020';
wwv_flow_api.g_varchar2_table(1708) := '202020200D0A202020207D0D0A0D0A20202020746869732E5F70726F6D7074416674657252656E646572696E674461746128293B0D0A0D0A20202020696620282070446174612E717565727920213D20756E646566696E65642029207B0D0A2020202020';
wwv_flow_api.g_varchar2_table(1709) := '20746869732E5F77726974655175657279546F436F6E736F6C65282070446174612E717565727920293B0D0A202020207D2020200D0A0D0A20207D2C0D0A20202F2A0D0A202020202A0D0A202020202A2066756E6374696F6E206E616D653A205F70726F';
wwv_flow_api.g_varchar2_table(1710) := '6D7074416A61784572726F720D0A202020202A206465736372697074696F6E20203A200D0A202020202A20706172616D733A0D0A202020202A2020202D0D0A202020202A2020202D0D0A202020202A0D0A20202A2F202020200D0A20205F70726F6D7074';
wwv_flow_api.g_varchar2_table(1711) := '416A61784572726F723A2066756E6374696F6E28704A715848522C2070546578745374617475732C20704572726F725468726F776E297B0D0A20202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4552524F522C207468';
wwv_flow_api.g_varchar2_table(1712) := '69732E6C6F675072656669782C20275F70726F6D7074416A61784572726F72272C207B0D0A20202020202022617267756D656E7473223A20617267756D656E74732C0D0A20202020202022704A71584852223A20704A715848522C2020202020200D0A20';
wwv_flow_api.g_varchar2_table(1713) := '2020202020227054657874537461747573223A2070546578745374617475732C0D0A20202020202022704572726F725468726F776E223A20704572726F725468726F776E0D0A202020207D293B0D0A0D0A202020206966202820704A715848522E737461';
wwv_flow_api.g_varchar2_table(1714) := '74757354657874203D3D202761626F7274272029207B0D0A202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F5741524E494E472C20746869732E6C6F675072656669782C20275F70726F6D7074416A6178457272';
wwv_flow_api.g_varchar2_table(1715) := '6F72272C2027414A41582063616C6C2061626F727465642127293B0D0A20202020202072657475726E20766F69642830293B0D0A202020207D0D0A20202020656C7365207B0D0A202020202020617065782E64656275672E6D6573736167652874686973';
wwv_flow_api.g_varchar2_table(1716) := '2E435F4C4F475F4552524F522C20746869732E6C6F675072656669782C20275F70726F6D7074416A61784572726F72272C207B0D0A202020202020202027704A71584852272020202020203A20704A715848522C0D0A2020202020202020277054657874';
wwv_flow_api.g_varchar2_table(1717) := '53746174757327203A2070546578745374617475732C0D0A202020202020202027704572726F725468726F776E273A20704572726F725468726F776E0D0A2020202020207D293B0D0A202020207D0D0A0D0A202020207661722061727261793B0D0A0D0A';
wwv_flow_api.g_varchar2_table(1718) := '20202020746869732E5F70726F6D7074486964652820746869732E6D61736B2E6974656D436F6E7461696E657220293B0D0A0D0A20202020746869732E5F6D61736B416A61785374617465427574746F6E5365744572726F72287B0D0A20202020202022';
wwv_flow_api.g_varchar2_table(1719) := '616464496E666F2220203A20704A715848522E726573706F6E73654A534F4E2E616464496E666F2C0D0A202020202020226572726F7222202020203A20704A715848522E726573706F6E73654A534F4E2E6572726F722C0D0A2020202020202274656368';
wwv_flow_api.g_varchar2_table(1720) := '496E666F22203A20704A715848522E726573706F6E73654A534F4E2E74656368496E666F0D0A202020207D293B0D0A0D0A20202020746869732E5F6D61736B416A61785374617465427574746F6E4572726F7228293B0D0A0D0A202020200D0A20202020';
wwv_flow_api.g_varchar2_table(1721) := '746869732E5F747269676765724576656E7428277061656C695F70726F6D70745F6572726F72272C20746869732E5F70726F6D70744765744576656E74446174612829293B0D0A20202020746869732E5F7468726F774572726F72546578742820704572';
wwv_flow_api.g_varchar2_table(1722) := '726F725468726F776E20293B0D0A0D0A20207D2C0D0A20202F2A0D0A202020202A0D0A202020202A2066756E6374696F6E206E616D653A205F70726F6D70744765744576656E74446174610D0A202020202A206465736372697074696F6E20203A200D0A';
wwv_flow_api.g_varchar2_table(1723) := '202020202A20706172616D733A0D0A202020202A2020202D0D0A202020202A2020202D0D0A202020202A0D0A20202A2F202020200D0A20205F70726F6D70744765744576656E74446174613A2066756E6374696F6E28297B0D0A20202020617065782E64';
wwv_flow_api.g_varchar2_table(1724) := '656275672E6D65737361676528746869732E435F4C4F475F4C4556454C362C20746869732E6C6F675072656669782C20275F70726F6D70744765744576656E7444617461272C207B0D0A20202020202022617267756D656E7473223A20617267756D656E';
wwv_flow_api.g_varchar2_table(1725) := '74730D0A202020207D293B0D0A0D0A202020207661722072657475726E4F626A656374203D207B0D0A2020202020202270726F6D7074223A207B0D0A202020202020202022636F6E7461696E6572223A20746869732E70726F6D70742E636F6E7461696E';
wwv_flow_api.g_varchar2_table(1726) := '65722C0D0A202020202020202022686561646572222020203A20746869732E70726F6D70742E6865616465722C0D0A202020202020202022626F64792220202020203A20746869732E70726F6D70742E626F64792C0D0A202020202020202022696E7075';
wwv_flow_api.g_varchar2_table(1727) := '7422202020203A20746869732E70726F6D70742E696E7075740D0A2020202020207D2C0D0A202020202020226D61736B223A207B0D0A20202020202020202273656C65637465642220202020203A20746869732E6D61736B2E73746174652E73656C6563';
wwv_flow_api.g_varchar2_table(1728) := '7465642C0D0A20202020202020202264617461417661696C61626C65223A20746869732E6D61736B2E73746174652E617265526573756C7473417661696C61626C650D0A2020202020207D0D0A0D0A202020207D3B0D0A0D0A20202020617065782E6465';
wwv_flow_api.g_varchar2_table(1729) := '6275672E6D65737361676528746869732E435F4C4F475F4C4556454C362C20746869732E6C6F675072656669782C20275F70726F6D70744765744576656E7444617461272C202772657475726E73272C2072657475726E4F626A656374293B0D0A0D0A20';
wwv_flow_api.g_varchar2_table(1730) := '20202072657475726E2072657475726E4F626A6563743B0D0A20207D2C0D0A20202F2A0D0A202020202A0D0A202020202A2066756E6374696F6E206E616D653A205F70726F6D7074416A6178436F6D706C6574650D0A202020202A206465736372697074';
wwv_flow_api.g_varchar2_table(1731) := '696F6E20203A200D0A202020202A20706172616D733A0D0A202020202A2020202D0D0A202020202A2020202D0D0A202020202A0D0A20202A2F202020200D0A20205F70726F6D7074416A6178436F6D706C6574653A2066756E6374696F6E28297B0D0A20';
wwv_flow_api.g_varchar2_table(1732) := '202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C362C20746869732E6C6F675072656669782C20275F70726F6D7074416A6178436F6D706C657465272C207B0D0A20202020202022617267756D656E747322';
wwv_flow_api.g_varchar2_table(1733) := '3A20617267756D656E74732020202020200D0A202020207D293B0D0A0D0A20202020746869732E6D61736B2E73746174652E616A617852756E6E696E67203D2066616C73653B0D0A20202020746869732E5F70726F6D7074436865636B57696474684469';
wwv_flow_api.g_varchar2_table(1734) := '66666572656E636528293B0D0A20207D2C0D0A20202F2A0D0A202020202A0D0A202020202A2066756E6374696F6E206E616D653A205F70726F6D7074436865636B5769647468446966666572656E63650D0A202020202A206465736372697074696F6E20';
wwv_flow_api.g_varchar2_table(1735) := '203A200D0A202020202A20706172616D733A0D0A202020202A2020202D0D0A202020202A2020202D0D0A202020202A0D0A20202A2F202020200D0A20205F70726F6D7074436865636B5769647468446966666572656E63653A2066756E6374696F6E2829';
wwv_flow_api.g_varchar2_table(1736) := '7B0D0A20202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F70726F6D7074436865636B5769647468446966666572656E6365272C207B0D0A2020202020';
wwv_flow_api.g_varchar2_table(1737) := '2022617267756D656E7473223A20617267756D656E74730D0A202020207D293B0D0A0D0A2020202076617220646966666572656E63653B0D0A0D0A20202020696620282021746869732E70726F6D70742E697356697369626C652029207B0D0A20202020';
wwv_flow_api.g_varchar2_table(1738) := '2020617065782E64656275672E6D65737361676528746869732E435F4C4F475F5741524E494E472C20746869732E6C6F675072656669782C20275F70726F6D7074436865636B5769647468446966666572656E63652070726F6D7074206E6F7420766973';
wwv_flow_api.g_varchar2_table(1739) := '69626C652C20646F206E746827293B0D0A20202020202072657475726E20766F69642830293B0D0A202020207D0D0A0D0A20202020646966666572656E6365203D20746869732E70726F6D70742E636F6E7461696E65722E6F7574657257696474682829';
wwv_flow_api.g_varchar2_table(1740) := '202D20746869732E6D61736B2E636F6E7461696E65722E6F75746572576964746828293B202020200D0A0D0A202020206966202820646966666572656E6365203E20302029207B0D0A202020202020746869732E70726F6D70742E666978426F72646572';
wwv_flow_api.g_varchar2_table(1741) := '2E63737328277769647468272C20646966666572656E63652B31293B0D0A202020202020746869732E70726F6D70742E666978426F726465722E73686F7728293B0D0A202020207D202020200D0A20202020656C7365207B0D0A20202020202074686973';
wwv_flow_api.g_varchar2_table(1742) := '2E70726F6D70742E666978426F726465722E6869646528293B0D0A202020207D0D0A0D0A20207D2C0D0A0D0A20202F2A0D0A202020202A0D0A202020202A2066756E6374696F6E206E616D653A205F70726F6D70744D656E75506173746556616C756573';
wwv_flow_api.g_varchar2_table(1743) := '4F70656E506F7075700D0A202020202A206465736372697074696F6E20203A200D0A202020202A20706172616D733A0D0A202020202A2020202D0D0A202020202A2020202D0D0A202020202A0D0A20202A2F202020200D0A20205F70726F6D70744D656E';
wwv_flow_api.g_varchar2_table(1744) := '75506173746556616C7565734F70656E506F7075703A2066756E6374696F6E28297B0D0A20202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F44454255472C20746869732E6C6F675072656669782C20275F70726F6D70';
wwv_flow_api.g_varchar2_table(1745) := '744D656E75506173746556616C7565734F70656E506F707570272C207B0D0A20202020202022617267756D656E7473223A20617267756D656E74730D0A202020207D293B0D0A0D0A20202020746869732E5F70726F6D70744869646528293B0D0A0D0A20';
wwv_flow_api.g_varchar2_table(1746) := '2020202F2F766172206E65775061737465506F707570203D20746869732E5F7061737465506F7075704372656174654E657728293B0D0A202020206966202820746869732E70617374652E706F7075702E636F6E7461696E6572203D3D20756E64656669';
wwv_flow_api.g_varchar2_table(1747) := '6E65642029207B0D0A202020202020746869732E70617374652E706F707570203D20746869732E5F7061737465506F7075704372656174654E657728293B20200D0A202020207D202020200D0A0D0A20202020746869732E70617374652E706F7075702E';
wwv_flow_api.g_varchar2_table(1748) := '636F6E7461696E65722E6469616C6F6728276F70656E27293B0D0A20202020746869732E5F7061737465506F7075705061737465466F726D28293B0D0A20207D2C0D0A20202F2A0D0A202020202A0D0A202020202A2066756E6374696F6E206E616D653A';
wwv_flow_api.g_varchar2_table(1749) := '205F7061737465506F7075705061737465466F726D0D0A202020202A206465736372697074696F6E20203A200D0A202020202A20706172616D733A0D0A202020202A2020202D0D0A202020202A2020202D0D0A202020202A0D0A20202A2F202020200D0A';
wwv_flow_api.g_varchar2_table(1750) := '20205F7061737465506F7075705061737465466F726D3A2066756E6374696F6E28297B0D0A20202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F44454255472C20746869732E6C6F675072656669782C20275F70617374';
wwv_flow_api.g_varchar2_table(1751) := '65506F7075705061737465466F726D272C207B0D0A20202020202022617267756D656E7473223A20617267756D656E74730D0A202020207D293B0D0A0D0A20202020746869732E70617374652E706F7075702E626F64790D0A2020202020202E656D7074';
wwv_flow_api.g_varchar2_table(1752) := '7928290D0A2020202020202E72656D6F7665417474722827636C61737327290D0A2020202020202E616464436C61737328746869732E70617374652E636C61737365732E626F6479290D0A2020202020202E616464436C6173732827666F726D27290D0A';
wwv_flow_api.g_varchar2_table(1753) := '0D0A20202020746869732E70617374652E706F7075702E74657874617265612E76616C286E756C6C292E617070656E64546F2820746869732E70617374652E706F7075702E626F647920292E666F63757328293B0D0A20202020746869732E7061737465';
wwv_flow_api.g_varchar2_table(1754) := '2E706F7075702E627574746F6E732E70617273652E73686F7728293B0D0A20202020746869732E70617374652E706F7075702E627574746F6E732E6261636B2E6869646528293B0D0A20202020746869732E70617374652E706F7075702E627574746F6E';
wwv_flow_api.g_varchar2_table(1755) := '732E636C6561722E6869646528293B0D0A20202020746869732E70617374652E706F7075702E627574746F6E732E6170706C792E6869646528293B0D0A0D0A20207D2C0D0A20202F2A0D0A202020202A0D0A202020202A2066756E6374696F6E206E616D';
wwv_flow_api.g_varchar2_table(1756) := '653A205F7061737465506F7075704F70656E43616C6C6261636B0D0A202020202A206465736372697074696F6E20203A200D0A202020202A20706172616D733A0D0A202020202A2020202D0D0A202020202A2020202D0D0A202020202A0D0A20202A2F20';
wwv_flow_api.g_varchar2_table(1757) := '2020200D0A20205F7061737465506F7075704F70656E43616C6C6261636B3A2066756E6374696F6E28297B0D0A20202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669';
wwv_flow_api.g_varchar2_table(1758) := '782C20275F7061737465506F7075704F70656E43616C6C6261636B272C207B0D0A20202020202022617267756D656E7473223A20617267756D656E747320202020200D0A202020207D293B0D0A20207D2C0D0A20202F2A0D0A202020202A0D0A20202020';
wwv_flow_api.g_varchar2_table(1759) := '2A2066756E6374696F6E206E616D653A205F7061737465506F707570436C6F736543616C6C6261636B0D0A202020202A206465736372697074696F6E20203A200D0A202020202A20706172616D733A0D0A202020202A2020202D0D0A202020202A202020';
wwv_flow_api.g_varchar2_table(1760) := '2D0D0A202020202A0D0A20202A2F202020200D0A20205F7061737465506F707570436C6F736543616C6C6261636B3A2066756E6374696F6E28297B0D0A20202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C';
wwv_flow_api.g_varchar2_table(1761) := '392C20746869732E6C6F675072656669782C20275F7061737465506F707570436C6F736543616C6C6261636B272C207B0D0A20202020202022617267756D656E7473223A20617267756D656E747320202020200D0A202020207D293B0D0A20207D2C0D0A';
wwv_flow_api.g_varchar2_table(1762) := '20202F2A0D0A202020202A0D0A202020202A2066756E6374696F6E206E616D653A205F7061737465506F7075704265666F7265436C6F736543616C6C6261636B0D0A202020202A206465736372697074696F6E20203A200D0A202020202A20706172616D';
wwv_flow_api.g_varchar2_table(1763) := '733A0D0A202020202A2020202D0D0A202020202A2020202D0D0A202020202A0D0A20202A2F202020200D0A20205F7061737465506F7075704265666F7265436C6F736543616C6C6261636B3A2066756E6374696F6E28297B0D0A20202020617065782E64';
wwv_flow_api.g_varchar2_table(1764) := '656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F7061737465506F7075704265666F7265436C6F736543616C6C6261636B272C207B0D0A20202020202022617267756D656E74';
wwv_flow_api.g_varchar2_table(1765) := '73223A20617267756D656E747320202020200D0A202020207D293B0D0A20207D2C0D0A20202F2A0D0A202020202A0D0A202020202A2066756E6374696F6E206E616D653A205F7061737465506F707570416374696F6E50617273650D0A202020202A2064';
wwv_flow_api.g_varchar2_table(1766) := '65736372697074696F6E20203A200D0A202020202A20706172616D733A0D0A202020202A2020202D0D0A202020202A2020202D0D0A202020202A0D0A20202A2F202020200D0A20205F7061737465506F707570416374696F6E50617273653A2066756E63';
wwv_flow_api.g_varchar2_table(1767) := '74696F6E28297B0D0A20202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F44454255472C2020746869732E6C6F675072656669782C20275F7061737465506F707570416374696F6E5061727365272C207B0D0A20202020';
wwv_flow_api.g_varchar2_table(1768) := '202022617267756D656E7473223A20617267756D656E747320202020200D0A202020207D293B0D0A0D0A20202020766172200D0A20202020202076616C75652020202020202020203D20746869732E70617374652E706F7075702E74657874617265612E';
wwv_flow_api.g_varchar2_table(1769) := '76616C28292E7472696D28292C0D0A20202020202076616C75657341727261792020203D2076616C75652E73706C697428225C6E22292C0D0A2020202020206C696D69742020202020202020203D20746869732E706C7567696E53657474696E67732E6D';
wwv_flow_api.g_varchar2_table(1770) := '61786C656E677468203F20746869732E706C7567696E53657474696E67732E6D61786C656E677468203A20302C0D0A20202020202076616C75654C656E6774682020203D20302C0D0A202020202020746F74616C4C656E6774682020203D20302C0D0A20';
wwv_flow_api.g_varchar2_table(1771) := '202020202070617273656441727261792020203D205B5D2C0D0A2020202020206F75744F664C696D69744172726179203D205B5D0D0A202020203B0D0A0D0A202020202F2F73746F726520696E666F726D6174696F6E2061626F75742070617374656420';
wwv_flow_api.g_varchar2_table(1772) := '76616C7565730D0A20202020746869732E70617374652E73746174652E706173746564203D20242E657874656E64285B5D2C2076616C7565734172726179293B0D0A0D0A20202020666F722028207661722069203D20303B2069203C2076616C75657341';
wwv_flow_api.g_varchar2_table(1773) := '727261792E6C656E6774683B20692B2B2029207B0D0A0D0A20202020202069662028206C696D6974203E20302029207B0D0A202020202020202076616C75654C656E677468203D2076616C75657341727261795B695D2E6C656E6774683B0D0A0D0A2020';
wwv_flow_api.g_varchar2_table(1774) := '202020202020696620282076616C75654C656E677468203E206C696D69742029207B0D0A202020202020202020202F2F76616C7565206C656E6774682069732067726561746572207468656E20746F74616C206C696D69740D0A20202020202020202020';
wwv_flow_api.g_varchar2_table(1775) := '6F75744F664C696D69744172726179203D2076616C75657341727261792E736C69636528692C2076616C75657341727261792E6C656E677468293B0D0A20202020202020202020627265616B3B0D0A20202020202020207D0D0A2020202020202020656C';
wwv_flow_api.g_varchar2_table(1776) := '7365207B0D0A0D0A2020202020202020202069662028200D0A202020202020202020202020202020282069203D3D20302026262076616C75654C656E677468203C3D206C696D697420290D0A2020202020202020202020207C7C20282069203E20302026';
wwv_flow_api.g_varchar2_table(1777) := '2620746F74616C4C656E677468202B2076616C75654C656E6774682B31203C3D206C696D697420290D0A2020202020202020202029207B0D0A2020202020202020202020202F2F73746F72652076616C75650D0A20202020202020202020202070617273';
wwv_flow_api.g_varchar2_table(1778) := '656441727261792E70757368282076616C75657341727261795B695D20293B0D0A202020202020202020202020746F74616C4C656E677468203D2070617273656441727261792E746F537472696E6728292E6C656E6774683B202020202020202020200D';
wwv_flow_api.g_varchar2_table(1779) := '0A202020202020202020207D0D0A20202020202020202020656C7365207B0D0A2020202020202020202020202F2F69203E203020616E64206E65787420696E646578657320776F6E2774206D61746368206C696D69740D0A202020202020202020202020';
wwv_flow_api.g_varchar2_table(1780) := '6F75744F664C696D69744172726179203D2076616C75657341727261792E736C69636528692C2076616C75657341727261792E6C656E677468293B0D0A202020202020202020202020627265616B3B0D0A202020202020202020207D0D0A202020202020';
wwv_flow_api.g_varchar2_table(1781) := '20207D0D0A2020202020207D0D0A202020202020656C7365207B0D0A20202020202020202F2F7468657265206973206E6F206C696D69746174696F6E0D0A202020202020202070617273656441727261792E70757368282076616C75657341727261795B';
wwv_flow_api.g_varchar2_table(1782) := '695D20293B0D0A2020202020207D0D0A202020207D0D0A0D0A20202020746869732E70617374652E73746174652E706172736564203D20242E657874656E64285B5D2C207061727365644172726179293B0D0A20202020746869732E70617374652E7374';
wwv_flow_api.g_varchar2_table(1783) := '6174652E6F75744F664C696D6974203D20242E657874656E64285B5D2C206F75744F664C696D69744172726179293B0D0A0D0A20202020746869732E5F7061737465506F70757053686F775061727365526573756C7428293B0D0A20207D2C0D0A20202F';
wwv_flow_api.g_varchar2_table(1784) := '2A0D0A202020202A0D0A202020202A2066756E6374696F6E206E616D653A205F7061737465506F70757053686F7756616C756573546F42654170706C6965640D0A202020202A206465736372697074696F6E20203A200D0A202020202A20706172616D73';
wwv_flow_api.g_varchar2_table(1785) := '3A0D0A202020202A2020202D0D0A202020202A2020202D0D0A202020202A0D0A20202A2F20200D0A20205F7061737465506F70757053686F7756616C756573546F42654170706C6965643A2066756E6374696F6E28297B0D0A20202020617065782E6465';
wwv_flow_api.g_varchar2_table(1786) := '6275672E6D65737361676528746869732E435F4C4F475F44454255472C2020746869732E6C6F675072656669782C20275F7061737465506F70757053686F7756616C756573546F42654170706C696564272C207B0D0A20202020202022617267756D656E';
wwv_flow_api.g_varchar2_table(1787) := '7473223A20617267756D656E747320202020200D0A202020207D293B0D0A0D0A20202020766172200D0A2020202020207461626C65436F6E7461696E6572203D202428273C6469763E3C2F6469763E27292E616464436C6173732827742D5265706F7274';
wwv_flow_api.g_varchar2_table(1788) := '20742D5265706F72742D2D7374726574636820742D5265706F72742D2D737461746963526F77436F6C6F727320742D5265706F72742D2D726F77486967686C696768744F666620742D5265706F72742D2D696E6C696E6527292C0D0A2020202020207461';
wwv_flow_api.g_varchar2_table(1789) := '626C65203D202428273C7461626C653E3C2F7461626C653E27292E616464436C6173732827742D5265706F72742D7265706F727427292C0D0A2020202020207472203D202428273C74723E3C2F74723E27292C0D0A2020202020207468203D202428273C';
wwv_flow_api.g_varchar2_table(1790) := '74683E3C2F74683E27292E616464436C6173732827742D5265706F72742D636F6C4865616427292E617474722827616C69676E272C20276C65667427292C0D0A20202020202074656D706C617465203D20277B7B2361727261797D7D3C74723E3C746420';
wwv_flow_api.g_varchar2_table(1791) := '636C6173733D22742D5265706F72742D63656C6C223E7B7B2E7D7D3C2F74643E3C2F74723E7B7B2F61727261797D7D272C0D0A20202020202072656E64657265643B0D0A0D0A20202020746869732E70617374652E706F7075702E74657874617265612E';
wwv_flow_api.g_varchar2_table(1792) := '64657461636828293B0D0A20202020746869732E70617374652E706F7075702E626F64790D0A2020202020202E656D70747928290D0A2020202020202E72656D6F7665417474722827636C61737327290D0A2020202020202E616464436C617373287468';
wwv_flow_api.g_varchar2_table(1793) := '69732E70617374652E636C61737365732E626F6479290D0A2020202020202E616464436C617373282776616C756573496E27293B0D0A0D0A20202020746869732E70617374652E706F7075702E627574746F6E732E70617273652E6869646528293B0D0A';
wwv_flow_api.g_varchar2_table(1794) := '20202020746869732E70617374652E706F7075702E627574746F6E732E6261636B2E73686F7728293B0D0A20202020746869732E70617374652E706F7075702E627574746F6E732E636C6561722E73686F7728293B0D0A20202020746869732E70617374';
wwv_flow_api.g_varchar2_table(1795) := '652E706F7075702E627574746F6E732E6170706C792E73686F7728293B0D0A0D0A2020202072656E6465726564203D2024284D757374616368652E72656E646572282074656D706C6174652C207B226172726179223A20746869732E70617374652E7374';
wwv_flow_api.g_varchar2_table(1796) := '6174652E7061727365647D29293B0D0A0D0A202020207461626C650D0A2020202020202E617070656E64282074722E636C6F6E6528290D0A20202020202020202E617070656E64282074682E636C6F6E6528292E68746D6C2820746869732E435F504F50';
wwv_flow_api.g_varchar2_table(1797) := '55505F50415354455F53554D4D4152595F54485F56414C5545535F494E20292029200D0A202020202020290D0A2020202020202E617070656E64282072656E646572656420290D0A2020202020202E617070656E64546F28207461626C65436F6E746169';
wwv_flow_api.g_varchar2_table(1798) := '6E657220290D0A202020203B0D0A0D0A20202020746869732E70617374652E706F7075702E626F64792E617070656E6428207461626C65436F6E7461696E657220290D0A0D0A20202020746869732E70617374652E706F7075702E627574746F6E732E62';
wwv_flow_api.g_varchar2_table(1799) := '61636B2E6F66662827636C69636B27292E6F6E2827636C69636B272C20242E70726F78792820746869732E5F7061737465506F70757053686F775061727365526573756C742C2074686973202920293B0D0A20207D2C0D0A20202F2A0D0A202020202A0D';
wwv_flow_api.g_varchar2_table(1800) := '0A202020202A2066756E6374696F6E206E616D653A205F7061737465506F70757053686F7756616C756573457863656564696E670D0A202020202A206465736372697074696F6E20203A200D0A202020202A20706172616D733A0D0A202020202A202020';
wwv_flow_api.g_varchar2_table(1801) := '2D0D0A202020202A2020202D0D0A202020202A0D0A20202A2F20200D0A20205F7061737465506F70757053686F7756616C756573457863656564696E673A2066756E6374696F6E28297B0D0A20202020617065782E64656275672E6D6573736167652874';
wwv_flow_api.g_varchar2_table(1802) := '6869732E435F4C4F475F44454255472C2020746869732E6C6F675072656669782C20275F7061737465506F70757053686F7756616C756573457863656564696E67272C207B0D0A20202020202022617267756D656E7473223A20617267756D656E74730D';
wwv_flow_api.g_varchar2_table(1803) := '0A202020207D293B0D0A0D0A20202020766172200D0A2020202020207461626C65436F6E7461696E6572203D202428273C6469763E3C2F6469763E27292E616464436C6173732827742D5265706F727420742D5265706F72742D2D737472657463682074';
wwv_flow_api.g_varchar2_table(1804) := '2D5265706F72742D2D737461746963526F77436F6C6F727320742D5265706F72742D2D726F77486967686C696768744F666620742D5265706F72742D2D696E6C696E6527292C0D0A2020202020207461626C65203D202428273C7461626C653E3C2F7461';
wwv_flow_api.g_varchar2_table(1805) := '626C653E27292E616464436C6173732827742D5265706F72742D7265706F727427292C0D0A2020202020207472203D202428273C74723E3C2F74723E27292C0D0A2020202020207468203D202428273C74683E3C2F74683E27292E616464436C61737328';
wwv_flow_api.g_varchar2_table(1806) := '27742D5265706F72742D636F6C4865616427292E617474722827616C69676E272C20276C65667427292C0D0A20202020202074656D706C617465203D20277B7B2361727261797D7D3C74723E3C746420636C6173733D22742D5265706F72742D63656C6C';
wwv_flow_api.g_varchar2_table(1807) := '223E7B7B2E7D7D3C2F74643E3C2F74723E7B7B2F61727261797D7D272C0D0A20202020202072656E64657265643B0D0A0D0A20202020746869732E70617374652E706F7075702E74657874617265612E64657461636828293B0D0A202020200D0A202020';
wwv_flow_api.g_varchar2_table(1808) := '20746869732E70617374652E706F7075702E627574746F6E732E70617273652E6869646528293B0D0A20202020746869732E70617374652E706F7075702E627574746F6E732E6261636B2E73686F7728293B0D0A20202020746869732E70617374652E70';
wwv_flow_api.g_varchar2_table(1809) := '6F7075702E627574746F6E732E636C6561722E73686F7728293B0D0A20202020746869732E70617374652E706F7075702E627574746F6E732E6170706C792E73686F7728293B0D0A0D0A20202020746869732E70617374652E706F7075702E626F64790D';
wwv_flow_api.g_varchar2_table(1810) := '0A2020202020202E656D70747928290D0A2020202020202E72656D6F7665417474722827636C61737327290D0A2020202020202E616464436C61737328746869732E70617374652E636C61737365732E626F6479290D0A2020202020202E616464436C61';
wwv_flow_api.g_varchar2_table(1811) := '7373282776616C7565734F757427293B0D0A0D0A0D0A2020202072656E6465726564203D2024284D757374616368652E72656E646572282074656D706C6174652C207B226172726179223A20746869732E70617374652E73746174652E6F75744F664C69';
wwv_flow_api.g_varchar2_table(1812) := '6D69747D29293B0D0A0D0A202020207461626C650D0A2020202020202E617070656E64282074722E636C6F6E6528290D0A20202020202020202E617070656E64282074682E636C6F6E6528292E68746D6C2820746869732E435F504F5055505F50415354';
wwv_flow_api.g_varchar2_table(1813) := '455F53554D4D4152595F54485F56414C5545535F4F555420292029200D0A202020202020290D0A2020202020202E617070656E64282072656E646572656420290D0A2020202020202E617070656E64546F28207461626C65436F6E7461696E657220290D';
wwv_flow_api.g_varchar2_table(1814) := '0A202020203B0D0A0D0A20202020746869732E70617374652E706F7075702E626F64792E617070656E6428207461626C65436F6E7461696E657220290D0A0D0A20202020746869732E70617374652E706F7075702E627574746F6E732E6261636B2E6F66';
wwv_flow_api.g_varchar2_table(1815) := '662827636C69636B27292E6F6E2827636C69636B272C20242E70726F78792820746869732E5F7061737465506F70757053686F775061727365526573756C742C2074686973202920293B202020200D0A20207D2C0D0A20202F2A0D0A202020202A0D0A20';
wwv_flow_api.g_varchar2_table(1816) := '2020202A2066756E6374696F6E206E616D653A205F7061737465506F70757053686F775061727365526573756C740D0A202020202A206465736372697074696F6E20203A200D0A202020202A20706172616D733A0D0A202020202A2020202D0D0A202020';
wwv_flow_api.g_varchar2_table(1817) := '202A2020202D0D0A202020202A0D0A20202A2F20200D0A20205F7061737465506F70757053686F775061727365526573756C743A2066756E6374696F6E28297B0D0A20202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F';
wwv_flow_api.g_varchar2_table(1818) := '44454255472C2020746869732E6C6F675072656669782C20275F7061737465506F70757053686F775061727365526573756C74272C207B0D0A20202020202022617267756D656E7473223A20617267756D656E74730D0A202020207D293B0D0A0D0A2020';
wwv_flow_api.g_varchar2_table(1819) := '2020766172200D0A20202020202073686F7756616C756573546F62654170706C696564203D20273C6120687265663D226A6176617363726970743A20766F69642830292220636C6173733D2273686F77546F42654170706C696564223E272B746869732E';
wwv_flow_api.g_varchar2_table(1820) := '435F504F5055505F50415354455F53554D4D4152595F53484F575F4C4953545F414E43484F522B273C2F613E272C0D0A20202020202073686F7756616C756573457863656564696E672020203D20273C6120687265663D226A6176617363726970743A20';
wwv_flow_api.g_varchar2_table(1821) := '766F69642830292220636C6173733D2273686F77457863656564696E67223E272B746869732E435F504F5055505F50415354455F53554D4D4152595F53484F575F4C4953545F414E43484F522B273C2F613E272C0D0A2020202020207461626C65436F6E';
wwv_flow_api.g_varchar2_table(1822) := '7461696E6572203D202428273C6469763E3C2F6469763E27292E616464436C6173732827742D5265706F727420742D5265706F72742D2D7374726574636820742D5265706F72742D2D737461746963526F77436F6C6F727320742D5265706F72742D2D72';
wwv_flow_api.g_varchar2_table(1823) := '6F77486967686C696768744F666620742D5265706F72742D2D696E6C696E6527292C0D0A2020202020207461626C65203D202428273C7461626C653E3C2F7461626C653E27292E616464436C6173732827742D5265706F72742D7265706F727427292C0D';
wwv_flow_api.g_varchar2_table(1824) := '0A2020202020207472203D202428273C74723E3C2F74723E27292C0D0A2020202020207468203D202428273C74683E3C2F74683E27292E616464436C6173732827742D5265706F72742D636F6C4865616427292E617474722827616C69676E272C20276C';
wwv_flow_api.g_varchar2_table(1825) := '65667427292C0D0A2020202020207464203D202428273C74643E3C2F74643E27292E616464436C6173732827742D5265706F72742D63656C6C27292E617474722827616C69676E272C20276C65667427292C0D0A20202020202074657874506173746564';
wwv_flow_api.g_varchar2_table(1826) := '56616C7565732C0D0A202020202020746578744F75744F664C696D697456616C7565732C0D0A2020202020206D61784C656E677468203D20746869732E706C7567696E53657474696E67732E6D61786C656E677468203D3D20756E646566696E6564203F';
wwv_flow_api.g_varchar2_table(1827) := '20746869732E435F504F5055505F50415354455F53554D4D4152595F4D41584C454E4754485F4E4F54534554203A20746869732E706C7567696E53657474696E67732E6D61786C656E6774683B0D0A0D0A20202020746869732E70617374652E706F7075';
wwv_flow_api.g_varchar2_table(1828) := '702E626F64790D0A2020202020202E656D70747928290D0A2020202020202E72656D6F7665417474722827636C61737327290D0A2020202020202E616464436C61737328746869732E70617374652E636C61737365732E626F6479290D0A202020202020';
wwv_flow_api.g_varchar2_table(1829) := '2E616464436C617373282773756D6D61727927293B0D0A0D0A0D0A20202020746869732E70617374652E706F7075702E627574746F6E732E70617273652E6869646528293B0D0A20202020746869732E70617374652E706F7075702E627574746F6E732E';
wwv_flow_api.g_varchar2_table(1830) := '6261636B2E6869646528293B0D0A20202020746869732E70617374652E706F7075702E627574746F6E732E636C6561722E73686F7728293B0D0A20202020746869732E70617374652E706F7075702E627574746F6E732E6170706C792E73686F7728293B';
wwv_flow_api.g_varchar2_table(1831) := '0D0A0D0A202020206966202820746869732E70617374652E73746174652E7061727365642E6C656E677468203E20302029207B0D0A2020202020207465787450617374656456616C756573203D20746869732E435F504F5055505F50415354455F53554D';
wwv_flow_api.g_varchar2_table(1832) := '4D4152595F56414C5545535F544F5F42455F4150504C4945442E7265706C61636528272530272C2073686F7756616C756573546F62654170706C696564293B0D0A202020207D0D0A20202020656C7365207B0D0A20202020202074657874506173746564';
wwv_flow_api.g_varchar2_table(1833) := '56616C756573203D20746869732E435F504F5055505F50415354455F53554D4D4152595F56414C5545535F544F5F42455F4150504C4945442E7265706C61636528272530272C202727293B0D0A202020207D0D0A0D0A202020206966202820746869732E';
wwv_flow_api.g_varchar2_table(1834) := '70617374652E73746174652E6F75744F664C696D69742E6C656E677468203E20302029207B0D0A202020202020746578744F75744F664C696D697456616C756573203D20746869732E435F504F5055505F50415354455F53554D4D4152595F56414C5545';
wwv_flow_api.g_varchar2_table(1835) := '535F455843454544494E475F4C494D49542E7265706C61636528272530272C2073686F7756616C756573457863656564696E67293B0D0A202020207D0D0A20202020656C7365207B0D0A202020202020746578744F75744F664C696D697456616C756573';
wwv_flow_api.g_varchar2_table(1836) := '203D20746869732E435F504F5055505F50415354455F53554D4D4152595F56414C5545535F455843454544494E475F4C494D49542E7265706C61636528272530272C202727293B0D0A202020207D0D0A0D0A202020207461626C650D0A2020202020202E';
wwv_flow_api.g_varchar2_table(1837) := '617070656E64282074722E636C6F6E652829200D0A20202020202020202E617070656E64282074682E636C6F6E6528292E746578742820746869732E435F504F5055505F50415354455F53554D4D4152595F54485F53554D4D41525920292E6174747228';
wwv_flow_api.g_varchar2_table(1838) := '27636F6C7370616E272C20322920290D0A202020202020290D0A2020202020202E617070656E64282074722E636C6F6E6528290D0A20202020202020202E617070656E64282074642E636C6F6E6528292E68746D6C2820746869732E435F504F5055505F';
wwv_flow_api.g_varchar2_table(1839) := '50415354455F53554D4D4152595F5041535445445F434F554E5420292029200D0A20202020202020202E617070656E64282074642E636C6F6E6528292E68746D6C2820746869732E70617374652E73746174652E7061737465642E6C656E677468202920';
wwv_flow_api.g_varchar2_table(1840) := '290D0A202020202020290D0A2020202020202E617070656E64282074722E636C6F6E6528290D0A20202020202020202E617070656E64282074642E636C6F6E6528292E68746D6C2820746869732E435F504F5055505F50415354455F53554D4D4152595F';
wwv_flow_api.g_varchar2_table(1841) := '5041535445445F4C454E47485420292029200D0A20202020202020202E617070656E64282074642E636C6F6E6528292E68746D6C2820746869732E70617374652E73746174652E7061737465642E6A6F696E28746869732E435F56414C55455F53455041';
wwv_flow_api.g_varchar2_table(1842) := '5241544F52292E6C656E67746820292029200D0A202020202020290D0A2020202020202E617070656E64282074722E636C6F6E6528290D0A20202020202020202E617070656E64282074642E636C6F6E6528292E68746D6C2820746869732E435F504F50';
wwv_flow_api.g_varchar2_table(1843) := '55505F50415354455F53554D4D4152595F4D41585F4C454E47544820292029200D0A20202020202020202E617070656E64282074642E636C6F6E6528292E68746D6C28206D61784C656E67746820292029200D0A202020202020290D0A2020202020202E';
wwv_flow_api.g_varchar2_table(1844) := '617070656E64282074722E636C6F6E6528290D0A20202020202020202E617070656E64282074642E636C6F6E6528292E68746D6C28207465787450617374656456616C75657320292029200D0A20202020202020202E617070656E64282074642E636C6F';
wwv_flow_api.g_varchar2_table(1845) := '6E6528292E68746D6C2820746869732E70617374652E73746174652E7061727365642E6C656E67746820292029200D0A202020202020290D0A2020202020202E617070656E64282074722E636C6F6E6528290D0A20202020202020202E617070656E6428';
wwv_flow_api.g_varchar2_table(1846) := '2074642E636C6F6E6528292E68746D6C2820746578744F75744F664C696D697456616C75657320292029200D0A20202020202020202E617070656E64282074642E636C6F6E6528292E68746D6C2820746869732E70617374652E73746174652E6F75744F';
wwv_flow_api.g_varchar2_table(1847) := '664C696D69742E6C656E67746820292029200D0A202020202020290D0A202020203B0D0A0D0A202020207461626C652E66696E6428272E73686F77546F42654170706C69656427292E6F6E2827636C69636B272C20242E70726F78792820746869732E5F';
wwv_flow_api.g_varchar2_table(1848) := '7061737465506F70757053686F7756616C756573546F42654170706C6965642C20746869732029293B0D0A202020207461626C652E66696E6428272E73686F77457863656564696E6727292E6F6E2827636C69636B272C20242E70726F78792820746869';
wwv_flow_api.g_varchar2_table(1849) := '732E5F7061737465506F70757053686F7756616C756573457863656564696E672C20746869732029293B0D0A0D0A202020207461626C65436F6E7461696E65722E617070656E6428207461626C6520293B0D0A20202020746869732E70617374652E706F';
wwv_flow_api.g_varchar2_table(1850) := '7075702E626F64792E617070656E6428207461626C65436F6E7461696E657220293B0D0A20207D2C0D0A20202F2A0D0A202020202A0D0A202020202A2066756E6374696F6E206E616D653A205F7061737465506F707570416374696F6E436C6561720D0A';
wwv_flow_api.g_varchar2_table(1851) := '202020202A206465736372697074696F6E20203A200D0A202020202A20706172616D733A0D0A202020202A2020202D0D0A202020202A2020202D0D0A202020202A0D0A20202A2F20200D0A20205F7061737465506F707570416374696F6E436C6561723A';
wwv_flow_api.g_varchar2_table(1852) := '2066756E6374696F6E28297B0D0A20202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F44454255472C2020746869732E6C6F675072656669782C20275F7061737465506F707570416374696F6E436C656172272C207B0D';
wwv_flow_api.g_varchar2_table(1853) := '0A20202020202022617267756D656E7473223A20617267756D656E74730D0A202020207D293B0D0A0D0A20202020746869732E5F7061737465506F7075705061737465466F726D28293B0D0A20207D2C0D0A20202F2A0D0A202020202A0D0A202020202A';
wwv_flow_api.g_varchar2_table(1854) := '2066756E6374696F6E206E616D653A205F7061737465506F707570416374696F6E4170706C790D0A202020202A206465736372697074696F6E20203A200D0A202020202A20706172616D733A0D0A202020202A2020202D0D0A202020202A2020202D0D0A';
wwv_flow_api.g_varchar2_table(1855) := '202020202A0D0A20202A2F20200D0A20205F7061737465506F707570416374696F6E4170706C793A2066756E6374696F6E28297B0D0A20202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F44454255472C202074686973';
wwv_flow_api.g_varchar2_table(1856) := '2E6C6F675072656669782C20275F7061737465506F707570416374696F6E4170706C79272C207B0D0A20202020202022617267756D656E7473223A20617267756D656E74730D0A202020207D293B0D0A0D0A202020202F2F746869732E5F656C656D656E';
wwv_flow_api.g_varchar2_table(1857) := '7453657456616C75652820746869732E70617374652E73746174652E7061727365642E6A6F696E2820746869732E435F56414C55455F534550415241544F52202920293B0D0A0D0A20202020746869732E5F70726F6D7074456D7074794D61736B537461';
wwv_flow_api.g_varchar2_table(1858) := '746528293B0D0A20202020746869732E5F70726F6D7074456D7074795461677328293B0D0A0D0A20202020666F72202876617220693D303B2069203C20746869732E70617374652E73746174652E7061727365642E6C656E6774683B20692B2B29207B0D';
wwv_flow_api.g_varchar2_table(1859) := '0A202020202020746869732E5F6D61736B537461746553656C656374656441646428200D0A20202020202020207B0D0A2020202020202020202022646973706C6179222020202020202020203A20746869732E70617374652E73746174652E7061727365';
wwv_flow_api.g_varchar2_table(1860) := '645B695D2C0D0A202020202020202020202276616C75652220202020202020202020203A20746869732E70617374652E73746174652E7061727365645B695D0D0A20202020202020207D2C202020202F2F6F626A6563740D0A2020202020202020747275';
wwv_flow_api.g_varchar2_table(1861) := '652C202F2F69732065787472612076616C75650D0A202020202020202066616C7365202F2F6973206E756C6C2076616C75650D0A202020202020293B0D0A202020207D202020200D0A0D0A20202020746869732E5F70726F6D70744170706C7956616C75';
wwv_flow_api.g_varchar2_table(1862) := '657328207472756520293B0D0A20202020746869732E5F70726F6D707452656E6465725461677328293B0D0A0D0A20202020746869732E5F6765744F6E4C6F61644C6F762820746869732E5F656C656D656E7447657456616C7565282920293B0D0A2020';
wwv_flow_api.g_varchar2_table(1863) := '20200D0A20202020746869732E70617374652E706F7075702E636F6E7461696E65722E6469616C6F672827636C6F736527293B0D0A20207D2C0D0A20202F2A0D0A202020202A0D0A202020202A2066756E6374696F6E206E616D653A205F706173746550';
wwv_flow_api.g_varchar2_table(1864) := '6F7075704372656174654E65770D0A202020202A206465736372697074696F6E20203A200D0A202020202A20706172616D733A0D0A202020202A2020202D0D0A202020202A2020202D0D0A202020202A0D0A20202A2F20200D0A20205F7061737465506F';
wwv_flow_api.g_varchar2_table(1865) := '7075704372656174654E65773A2066756E6374696F6E28297B0D0A20202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C362C20746869732E6C6F675072656669782C20275F7061737465506F707570437265';
wwv_flow_api.g_varchar2_table(1866) := '6174654E6577272C207B0D0A20202020202022617267756D656E7473223A20617267756D656E74730D0A202020207D293B0D0A0D0A20202020766172200D0A202020202020626F64792020202020202020203D202428273C64697620636C6173733D2262';
wwv_flow_api.g_varchar2_table(1867) := '6F6479223E3C2F6469763E27292C0D0A202020202020746578746172656120202020203D202428273C746578746172656120706C616365686F6C6465723D22272B746869732E435F504F5055505F50415354455F54455854415245415F504C414345484F';
wwv_flow_api.g_varchar2_table(1868) := '4C4445522B27223E3C2F746578746172656127292C0D0A202020202020666F6F746572202020202020203D202428273C64697620636C6173733D22666F6F746572223E3C2F6469763E27292C0D0A202020202020666F6F7465724C6566742020203D2024';
wwv_flow_api.g_varchar2_table(1869) := '28273C64697620636C6173733D226C656674223E3C2F6469763E27292C0D0A202020202020666F6F746572526967687420203D202428273C64697620636C6173733D227269676874223E3C2F6469763E27292C0D0A202020202020746162732020202020';
wwv_flow_api.g_varchar2_table(1870) := '202020203D202428273C756C3E3C6C693E5061737465643C2F6C693E3C2F756C3E27292C0D0A202020202020627574746F6E506172736520203D202428273C627574746F6E20636C6173733D22742D427574746F6E20742D427574746F6E2D2D686F7420';
wwv_flow_api.g_varchar2_table(1871) := '7061727365223E272B746869732E435F504F5055505F50415354455F42544E5F50415253455F544558542B273C2F627574746F6E3E27292C0D0A202020202020627574746F6E4170706C7920203D202428273C627574746F6E20636C6173733D22742D42';
wwv_flow_api.g_varchar2_table(1872) := '7574746F6E20742D427574746F6E2D2D686F74206170706C79223E272B746869732E435F504F5055505F50415354455F42544E5F53454C4543545F544558542B273C2F627574746F6E3E27292C0D0A202020202020627574746F6E446562756720203D20';
wwv_flow_api.g_varchar2_table(1873) := '2428273C627574746F6E20636C6173733D22742D427574746F6E206465627567223E3C7370616E20636C6173733D2266612066612D696E666F223E3C2F7370616E3E3C2F627574746F6E3E27292C0D0A202020202020627574746F6E4261636B2020203D';
wwv_flow_api.g_varchar2_table(1874) := '202428273C627574746F6E20636C6173733D22742D427574746F6E206261636B223E272B746869732E435F504F5055505F50415354455F42544E5F4241434B5F544558542B273C2F627574746F6E3E27292C0D0A202020202020627574746F6E436C6561';
wwv_flow_api.g_varchar2_table(1875) := '7220203D202428273C627574746F6E20636C6173733D22742D427574746F6E20636C656172223E272B746869732E435F504F5055505F50415354455F42544E5F434C4541525F544558542B273C2F627574746F6E3E27292C0D0A0D0A202020202020636F';
wwv_flow_api.g_varchar2_table(1876) := '6E7461696E6572202020203D202428273C64697620636C6173733D22636F6E7461696E65722220646174612D617065782D6974656D3D22272B746869732E656C656D656E742E6765742830292E69642B27223E3C2F6469763E27292C0D0A202020202020';
wwv_flow_api.g_varchar2_table(1877) := '6F7074696F6E732020202020203D207B0D0A2020202020202020226469616C6F67436C617373222020203A2022707265746975732D2D656E68616E6365644C6F764974656D207061737465222C0D0A2020202020202020226175746F4F70656E22202020';
wwv_flow_api.g_varchar2_table(1878) := '2020203A2066616C73652C0D0A202020202020202022617070656E64546F222020202020203A2027626F6479272C0D0A2020202020202020226D6F64616C222020202020202020203A20747275652C0D0A2020202020202020227469746C652220202020';
wwv_flow_api.g_varchar2_table(1879) := '20202020203A20746869732E706C7567696E53657474696E67732E706F7075702E7469746C652C0D0A2020202020202020227769647468222020202020202020203A203530302C0D0A2020202020202020226D696E5769647468222020202020203A2035';
wwv_flow_api.g_varchar2_table(1880) := '30302C0D0A2020202020202020226865696768742220202020202020203A20226175746F222C0D0A2020202020202020226D696E4865696768742220202020203A20226175746F222C0D0A202020202020202022726573697A61626C652220202020203A';
wwv_flow_api.g_varchar2_table(1881) := '2066616C73652C0D0A202020202020202022647261676761626C652220202020203A2066616C73652C0D0A202020202020202022636C6F73654F6E45736361706522203A20746869732E706C7567696E53657474696E67732E706F7075702E636C6F7365';
wwv_flow_api.g_varchar2_table(1882) := '4F6E4573636170652C0D0A2020202020202020226F70656E22202020202020202020203A20242E70726F78792820746869732E5F7061737465506F7075704F70656E43616C6C6261636B2C207468697320292C0D0A202020202020202022636C6F736522';
wwv_flow_api.g_varchar2_table(1883) := '2020202020202020203A20242E70726F78792820746869732E5F7061737465506F707570436C6F736543616C6C6261636B2C207468697320292C0D0A2020202020202020226265666F7265436C6F7365222020203A20242E70726F78792820746869732E';
wwv_flow_api.g_varchar2_table(1884) := '5F7061737465506F7075704265666F7265436C6F736543616C6C6261636B2C207468697320290D0A2020202020207D2C0D0A20202020202072657475726E4F626A6563743B0D0A0D0A20202020636F6E7461696E65722E6469616C6F6728206F7074696F';
wwv_flow_api.g_varchar2_table(1885) := '6E7320293B0D0A20202020636F6E7461696E65722E61747472287B0D0A20202020202027746162696E646578273A20302C0D0A20202020202027646174612D7061737465273A20746869732E776964676574556E6971756549640D0A202020207D293B0D';
wwv_flow_api.g_varchar2_table(1886) := '0A0D0A0D0A20202020626F64792E617070656E642820746578746172656120293B0D0A0D0A20202020627574746F6E50617273652E6F6E2827636C69636B272C20242E70726F78792820746869732E5F7061737465506F707570416374696F6E50617273';
wwv_flow_api.g_varchar2_table(1887) := '652C20746869732029293B0D0A20202020627574746F6E436C6561722E6F6E2827636C69636B272C20242E70726F78792820746869732E5F7061737465506F707570416374696F6E436C6561722C20746869732029293B0D0A20202020627574746F6E41';
wwv_flow_api.g_varchar2_table(1888) := '70706C792E6F6E2827636C69636B272C20242E70726F78792820746869732E5F7061737465506F707570416374696F6E4170706C792C20746869732029293B0D0A0D0A20202020666F6F7465724C6566740D0A2020202020202E617070656E6428206275';
wwv_flow_api.g_varchar2_table(1889) := '74746F6E4261636B20293B0D0A0D0A20202020666F6F74657252696768740D0A2020202020202E617070656E642820627574746F6E436C65617220290D0A2020202020202E617070656E642820627574746F6E506172736520290D0A2020202020202E61';
wwv_flow_api.g_varchar2_table(1890) := '7070656E642820627574746F6E4170706C7920293B0D0A0D0A20202020666F6F7465720D0A2020202020202E617070656E6428666F6F7465724C656674290D0A2020202020202E617070656E6428666F6F7465725269676874293B0D0A202020200D0A20';
wwv_flow_api.g_varchar2_table(1891) := '202020636F6E7461696E65720D0A2020202020202E617070656E642820626F647920290D0A2020202020202E617070656E642820666F6F74657220293B0D0A0D0A2020202072657475726E4F626A656374203D207B0D0A20202020202022636F6E746169';
wwv_flow_api.g_varchar2_table(1892) := '6E6572223A20636F6E7461696E65722C0D0A20202020202022626F64792220202020203A20626F64792C0D0A20202020202022666F6F746572222020203A20666F6F7465722C0D0A20202020202022627574746F6E73223A207B0D0A2020202020202020';
wwv_flow_api.g_varchar2_table(1893) := '227061727365223A20627574746F6E50617273652C0D0A202020202020202022636C656172223A20627574746F6E436C6561722C0D0A2020202020202020226170706C79223A20627574746F6E4170706C792C0D0A2020202020202020226261636B223A';
wwv_flow_api.g_varchar2_table(1894) := '20627574746F6E4261636B0D0A2020202020207D2C0D0A20202020202022746578746172656122203A2074657874617265610D0A202020207D3B0D0A0D0A2020202072657475726E2072657475726E4F626A6563740D0A20207D2C0D0A0D0A20202F2A0D';
wwv_flow_api.g_varchar2_table(1895) := '0A202020202A0D0A202020202A2066756E6374696F6E206E616D653A205F70726F6D70744D656E75536F7274546167730D0A202020202A206465736372697074696F6E20203A200D0A202020202A20706172616D733A0D0A202020202A2020202D0D0A20';
wwv_flow_api.g_varchar2_table(1896) := '2020202A2020202D0D0A202020202A0D0A20202A2F0D0A20205F70726F6D70744D656E75536F7274546167733A2066756E6374696F6E2820704576656E7420297B0D0A20202020617065782E64656275672E6D65737361676528746869732E435F4C4F47';
wwv_flow_api.g_varchar2_table(1897) := '5F44454255472C20746869732E6C6F675072656669782C20275F70726F6D70744D656E75536F727454616773272C207B0D0A20202020202022617267756D656E7473223A20617267756D656E74732C0D0A20202020202022704576656E74223A20704576';
wwv_flow_api.g_varchar2_table(1898) := '656E740D0A202020207D293B0D0A0D0A20202020766172200D0A202020202020746172676574203D202428704576656E742E746172676574292C0D0A202020202020646972656374696F6E203D20746869732E6D61736B2E73746174652E736F72746564';
wwv_flow_api.g_varchar2_table(1899) := '203D3D202761736327203F20276465736327203A2027617363273B202020200D0A0D0A20202020746869732E6D61736B2E73746174652E73656C65637465642E736F72742820746869732E5F736F72744A736F6E282022646973706C6179222C20646972';
wwv_flow_api.g_varchar2_table(1900) := '656374696F6E202920293B0D0A0D0A20202020746869732E5F70726F6D707452656E6465725461677328293B0D0A20202020746869732E5F70726F6D70744170706C7956616C7565732874727565293B0D0A0D0A202020202F2F73657420737461746520';
wwv_flow_api.g_varchar2_table(1901) := '6F66206D61736B0D0A20202020746869732E6D61736B2E73746174652E736F72746564203D20646972656374696F6E3B0D0A0D0A202020206966202820746869732E70726F6D70742E697356697369626C652029207B0D0A2020202020202F2F73657420';
wwv_flow_api.g_varchar2_table(1902) := '7374617465206F662070726F6D70740D0A202020202020746869732E70726F6D70742E6D656E752E736F72742E72656D6F7665436C6173732827617363206465736327292E616464436C6173732820646972656374696F6E20293B0D0A202020207D0D0A';
wwv_flow_api.g_varchar2_table(1903) := '0D0A20202020746869732E5F70726F6D7074536574466F63757328293B0D0A20207D2C0D0A20202F2A0D0A202020202A0D0A202020202A2066756E6374696F6E206E616D653A205F70726F6D70744D656E75436C65617256616C7565730D0A202020202A';
wwv_flow_api.g_varchar2_table(1904) := '206465736372697074696F6E20203A200D0A202020202A20706172616D733A0D0A202020202A2020202D0D0A202020202A2020202D0D0A202020202A0D0A20202A2F20200D0A20205F70726F6D70744D656E75436C65617256616C7565733A2066756E63';
wwv_flow_api.g_varchar2_table(1905) := '74696F6E28297B0D0A20202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F44454255472C20746869732E6C6F675072656669782C20275F70726F6D70744D656E75436C65617256616C756573272C207B0D0A2020202020';
wwv_flow_api.g_varchar2_table(1906) := '2022617267756D656E7473223A20617267756D656E74730D0A202020207D293B0D0A0D0A20202020746869732E5F70726F6D7074456D7074794D61736B537461746528293B0D0A20202020746869732E5F70726F6D7074456D7074795461677328293B0D';
wwv_flow_api.g_varchar2_table(1907) := '0A202020202F2F746869732E5F70726F6D70744869676C6967687452656D6F766543757272656E744C6928293B0D0A20202020746869732E5F70726F6D70744C6952656D6F766553656C656374696F6E28293B0D0A20202020746869732E5F70726F6D70';
wwv_flow_api.g_varchar2_table(1908) := '745265706F736974696F6E28293B0D0A20202020746869732E5F70726F6D707453656C6563744669727374526F7728293B0D0A20202020746869732E5F70726F6D70744170706C7956616C75657328207472756520293B0D0A0D0A20202020746869732E';
wwv_flow_api.g_varchar2_table(1909) := '5F70726F6D7074536574466F63757328293B0D0A20207D2C0D0A20202F2A0D0A202020202A0D0A202020202A2066756E6374696F6E206E616D653A205F70726F6D707452656E646572546167730D0A202020202A206465736372697074696F6E20203A20';
wwv_flow_api.g_varchar2_table(1910) := '0D0A202020202A20706172616D733A0D0A202020202A2020202D0D0A202020202A2020202D0D0A202020202A0D0A20202A2F20200D0A20205F70726F6D707452656E646572546167733A2066756E6374696F6E28297B0D0A20202020617065782E646562';
wwv_flow_api.g_varchar2_table(1911) := '75672E6D65737361676528746869732E435F4C4F475F4C4556454C362C20746869732E6C6F675072656669782C20275F70726F6D707452656E64657254616773272C207B0D0A20202020202022617267756D656E7473223A20617267756D656E74730D0A';
wwv_flow_api.g_varchar2_table(1912) := '202020207D293B0D0A0D0A202020207661722072656E6465726564203D20303B0D0A20202020766172206C696D697454616773203D20746869732E706C7567696E53657474696E67732E70726F6D70742E746167734E6F3B0D0A0D0A202020202F2F656D';
wwv_flow_api.g_varchar2_table(1913) := '707479206172726179206F66207461677320696E206D61736B0D0A20202020746869732E5F70726F6D7074456D7074795461677328293B0D0A0D0A202020202F2F7265637265617465206172726179206F6620746167732066726F6D2073656C65637465';
wwv_flow_api.g_varchar2_table(1914) := '642076616C7565730D0A20202020666F7220282076617220693D303B2069203C20746869732E6D61736B2E73746174652E73656C65637465642E6C656E6774683B20692B2B20297B0D0A0D0A2020202020206966202820746869732E706C7567696E5365';
wwv_flow_api.g_varchar2_table(1915) := '7474696E67732E70726F6D70742E617265546167734C696D697465642026262069203E3D206C696D6974546167732029207B0D0A20202020202020202F2F72656E6465722073756D6D617279207461670D0A2020202020202020746869732E5F70726F6D';
wwv_flow_api.g_varchar2_table(1916) := '70745461677353756D6D6172792820746869732E6D61736B2E73746174652E73656C65637465642E6C656E677468202D2072656E646572656420293B0D0A2020202020202020627265616B3B0D0A2020202020207D0D0A0D0A2020202020206966202820';
wwv_flow_api.g_varchar2_table(1917) := '746869732E706C7567696E53657474696E67732E646973706C6179457874726120262620746869732E6D61736B2E73746174652E73656C65637465645B695D2E6973457874726156616C75652029207B0D0A2020202020202020746869732E5F70726F6D';
wwv_flow_api.g_varchar2_table(1918) := '7074546167734164644E65772820746869732E6D61736B2E73746174652E73656C65637465645B695D2E646973706C61792C20746869732E6D61736B2E73746174652E73656C65637465645B695D2E76616C75652C20746869732E6D61736B2E73746174';
wwv_flow_api.g_varchar2_table(1919) := '652E73656C65637465645B695D2E6973457874726156616C756520293B0D0A202020202020202072656E64657265642B2B3B0D0A2020202020207D0D0A202020202020656C736520696620282021746869732E706C7567696E53657474696E67732E6469';
wwv_flow_api.g_varchar2_table(1920) := '73706C6179457874726120262620746869732E6D61736B2E73746174652E73656C65637465645B695D2E6973457874726156616C75652029207B0D0A2020202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C45';
wwv_flow_api.g_varchar2_table(1921) := '56454C362C20746869732E6C6F675072656669782C20275F70726F6D707452656E64657254616773272C202776616C75652022272B746869732E6D61736B2E73746174652E73656C65637465645B695D2E76616C75652B2722206973206E6F7420696E20';
wwv_flow_api.g_varchar2_table(1922) := '76616C75652066726F6D2073716C2071756572792E27293B0D0A2020202020207D0D0A202020202020656C7365207B0D0A2020202020202020746869732E5F70726F6D7074546167734164644E65772820746869732E6D61736B2E73746174652E73656C';
wwv_flow_api.g_varchar2_table(1923) := '65637465645B695D2E646973706C61792C20746869732E6D61736B2E73746174652E73656C65637465645B695D2E76616C75652C20746869732E6D61736B2E73746174652E73656C65637465645B695D2E6973457874726156616C756520293B0D0A2020';
wwv_flow_api.g_varchar2_table(1924) := '20202020202072656E64657265642B2B3B0D0A2020202020207D0D0A0D0A202020207D0D0A0D0A20202020696620282072656E6465726564203D3D20302026262021746869732E706C7567696E53657474696E67732E70726F6D70742E61726554616773';
wwv_flow_api.g_varchar2_table(1925) := '4C696D697465642029207B0D0A202020202020746869732E5F70726F6D7074506C616365486F6C64657253686F7728293B0D0A202020207D2020200D0A20202020656C7365207B0D0A202020202020746869732E5F70726F6D7074506C616365486F6C64';
wwv_flow_api.g_varchar2_table(1926) := '65724869646528293B0D0A202020207D0D0A20207D2C0D0A20202F2A0D0A202020202A0D0A202020202A2066756E6374696F6E206E616D653A205F70726F6D70744D656E754368616E6765566965770D0A202020202A206465736372697074696F6E2020';
wwv_flow_api.g_varchar2_table(1927) := '3A200D0A202020202A20706172616D733A0D0A202020202A2020202D0D0A202020202A2020202D0D0A202020202A0D0A20202A2F20200D0A20205F70726F6D70744D656E754368616E6765566965773A2066756E6374696F6E28297B0D0A202020206170';
wwv_flow_api.g_varchar2_table(1928) := '65782E64656275672E6D65737361676528746869732E435F4C4F475F44454255472C20746869732E6C6F675072656669782C20275F70726F6D70744D656E754368616E676556696577272C207B0D0A20202020202022617267756D656E7473223A206172';
wwv_flow_api.g_varchar2_table(1929) := '67756D656E74730D0A202020207D293B0D0A0D0A202020206966202820746869732E6D61736B2E636F6E7461696E65722E697328272E657870616E64656427292029207B0D0A202020202020746869732E6D61736B2E636F6E7461696E65722E72656D6F';
wwv_flow_api.g_varchar2_table(1930) := '7665436C6173732827657870616E64656427293B0D0A202020202020746869732E70726F6D70742E6D656E752E657870616E642E72656D6F7665436C6173732827657870616E64656427290D0A0D0A202020207D0D0A20202020656C7365207B0D0A2020';
wwv_flow_api.g_varchar2_table(1931) := '20202020746869732E6D61736B2E636F6E7461696E65722E616464436C6173732827657870616E64656427293B0D0A202020202020746869732E70726F6D70742E6D656E752E657870616E642E616464436C6173732827657870616E64656427290D0A20';
wwv_flow_api.g_varchar2_table(1932) := '2020207D0D0A0D0A20202020746869732E5F70726F6D70745265706F736974696F6E28293B0D0A0D0A20202020746869732E5F70726F6D7074536574466F63757328293B0D0A20207D2C0D0A20202F2A0D0A202020202A0D0A202020202A2066756E6374';
wwv_flow_api.g_varchar2_table(1933) := '696F6E206E616D653A205F70726F6D7074556E686967686C696768744F746865720D0A202020202A206465736372697074696F6E20203A200D0A202020202A20706172616D733A0D0A202020202A2020202D0D0A202020202A2020202D0D0A202020202A';
wwv_flow_api.g_varchar2_table(1934) := '0D0A20202A2F20200D0A20205F70726F6D7074556E686967686C696768744F746865723A2066756E6374696F6E2820704576656E7420297B0D0A20202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C362C20';
wwv_flow_api.g_varchar2_table(1935) := '746869732E6C6F675072656669782C20275F70726F6D7074556E686967686C696768744F74686572272C207B0D0A20202020202022617267756D656E7473223A20617267756D656E74732C0D0A20202020202022704576656E74223A20704576656E740D';
wwv_flow_api.g_varchar2_table(1936) := '0A202020207D293B0D0A0D0A20202020746869732E70726F6D70742E626F64792E66696E6428276C6927292E6E6F742820704576656E742E74617267657420292E72656D6F7665417474722827617269612D686967686C69676874656427293B0D0A2020';
wwv_flow_api.g_varchar2_table(1937) := '7D2C0D0A20202F2A0D0A202020202A0D0A202020202A2066756E6374696F6E206E616D653A205F70726F6D70745363726F6C6C43616C6C6261636B0D0A202020202A206465736372697074696F6E20203A200D0A202020202A20706172616D733A0D0A20';
wwv_flow_api.g_varchar2_table(1938) := '2020202A2020202D0D0A202020202A2020202D0D0A202020202A0D0A20202A2F20200D0A20205F70726F6D70745363726F6C6C43616C6C6261636B3A2066756E6374696F6E2820704576656E7429207B0D0A20202020617065782E64656275672E6D6573';
wwv_flow_api.g_varchar2_table(1939) := '7361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F70726F6D70745363726F6C6C43616C6C6261636B272C207B0D0A20202020202022617267756D656E7473223A20617267756D656E74732C0D0A20';
wwv_flow_api.g_varchar2_table(1940) := '202020202022704576656E74223A20704576656E742C200D0A202020202020227363726F6C6C546F70223A20746869732E70726F6D70742E626F64792E7363726F6C6C546F7028290D0A202020207D293B0D0A0D0A20202020766172200D0A2020202020';
wwv_flow_api.g_varchar2_table(1941) := '2070657263656E74203D20746869732E5F6765745363726F6C6C50657263656E742820746869732E70726F6D70742E626F64792C20746869732E706C7567696E53657474696E67732E70726F6D70742E6D617848656967687420293B0D0A0D0A20202020';
wwv_flow_api.g_varchar2_table(1942) := '696620282070657263656E74203E20393020262620746869732E6D61736B2E73746174652E616A617852756E6E696E67203D3D2066616C73652029207B0D0A202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C';
wwv_flow_api.g_varchar2_table(1943) := '4556454C392C20746869732E6C6F675072656669782C20275F70726F6D70745363726F6C6C43616C6C6261636B272C202752656163686564206F76657220393025206F6620636F6E7461696E6572207363726F6C6C2E20506572666F726D20414A415827';
wwv_flow_api.g_varchar2_table(1944) := '293B0D0A202020202020746869732E5F70726F6D7074416A6178506572666F726D28202B2B746869732E6D61736B2E73746174652E6C617374466574636865645061676520293B0D0A202020207D0D0A20202020656C736520696620282070657263656E';
wwv_flow_api.g_varchar2_table(1945) := '74203E20393020262620746869732E6D61736B2E73746174652E616A617852756E6E696E67203D3D20747275652029207B0D0A202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E';
wwv_flow_api.g_varchar2_table(1946) := '6C6F675072656669782C20275F70726F6D70745363726F6C6C43616C6C6261636B272C2027546865726520697320414A4158206177616974696E6720666F7220726573756C74732E20414A4158206E6F7420706572666F726D656427293B0D0A20202020';
wwv_flow_api.g_varchar2_table(1947) := '7D0D0A20202020656C7365207B0D0A202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F70726F6D70745363726F6C6C43616C6C6261636B272C20';
wwv_flow_api.g_varchar2_table(1948) := '274A757374207363726F6C6C2E20646F206E6F7468696E6727293B200D0A202020207D0D0A0D0A20207D2C0D0A20202F2A0D0A202020202A0D0A202020202A2066756E6374696F6E206E616D653A205F70726F6D7074496E707574426C75720D0A202020';
wwv_flow_api.g_varchar2_table(1949) := '202A206465736372697074696F6E20203A200D0A202020202A20706172616D733A0D0A202020202A2020202D0D0A202020202A2020202D0D0A202020202A0D0A20202A2F20200D0A20205F70726F6D7074496E707574426C75723A2066756E6374696F6E';
wwv_flow_api.g_varchar2_table(1950) := '28297B0D0A20202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F70726F6D7074496E707574426C7572272C207B0D0A20202020202022617267756D656E';
wwv_flow_api.g_varchar2_table(1951) := '7473223A20617267756D656E74730D0A202020207D293B0D0A20207D2C0D0A20202F2A0D0A202020202A0D0A202020202A2066756E6374696F6E206E616D653A205F70726F6D7074496E707574466F6375730D0A202020202A206465736372697074696F';
wwv_flow_api.g_varchar2_table(1952) := '6E20203A200D0A202020202A20706172616D733A0D0A202020202A2020202D0D0A202020202A2020202D0D0A202020202A0D0A20202A2F20200D0A20205F70726F6D7074496E707574466F6375733A2066756E6374696F6E28297B0D0A20202020617065';
wwv_flow_api.g_varchar2_table(1953) := '782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F70726F6D7074496E707574466F637573272C207B0D0A20202020202022617267756D656E7473223A20617267756D65';
wwv_flow_api.g_varchar2_table(1954) := '6E74730D0A202020207D293B0D0A20207D2C0D0A20202F2A0D0A202020202A0D0A202020202A2066756E6374696F6E206E616D653A205F70726F6D7074446973706C61794572726F720D0A202020202A206465736372697074696F6E20203A200D0A2020';
wwv_flow_api.g_varchar2_table(1955) := '20202A20706172616D733A0D0A202020202A2020202D0D0A202020202A2020202D0D0A202020202A0D0A20202A2F20200D0A20205F70726F6D7074446973706C61794572726F723A2066756E6374696F6E2820705465787420297B0D0A20202020617065';
wwv_flow_api.g_varchar2_table(1956) := '782E64656275672E6D65737361676528746869732E435F4C4F475F44454255472C20746869732E6C6F675072656669782C20275F70726F6D7074446973706C61794572726F72272C207B0D0A20202020202022617267756D656E7473223A20617267756D';
wwv_flow_api.g_varchar2_table(1957) := '656E74732C0D0A202020202020227054657874223A2070546578742C200D0A2020202020202270726F6D7074223A20746869732E70726F6D70740D0A202020207D293B0D0A0D0A20202020746869732E70726F6D70742E626F64792E68746D6C2820273C';
wwv_flow_api.g_varchar2_table(1958) := '64697620636C6173733D2270726F6D70744572726F72223E3C7370616E20636C6173733D2266612066612D6578636C616D6174696F6E2D747269616E676C65223E3C2F7370616E3E20272B70546578742B273C2F6469763E2720293B0D0A202020206170';
wwv_flow_api.g_varchar2_table(1959) := '65782E64656275672E6D65737361676528746869732E435F4C4F475F4552524F522C20746869732E6C6F675072656669782C20275F70726F6D7074446973706C61794572726F72272C207054657874293B0D0A20207D2C0D0A20202F2A0D0A202020202A';
wwv_flow_api.g_varchar2_table(1960) := '0D0A202020202A2066756E6374696F6E206E616D653A205F70726F6D70744C6952656D6F766553656C656374696F6E0D0A202020202A206465736372697074696F6E20203A200D0A202020202A20706172616D733A0D0A202020202A2020202D0D0A2020';
wwv_flow_api.g_varchar2_table(1961) := '20202A2020202D0D0A202020202A0D0A20202A2F20200D0A20205F70726F6D70744C6952656D6F766553656C656374696F6E3A2066756E6374696F6E28297B0D0A20202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C';
wwv_flow_api.g_varchar2_table(1962) := '4556454C362C20746869732E6C6F675072656669782C20275F70726F6D70744869676C6967687452656D6F7665416C6C272C207B0D0A20202020202022617267756D656E7473223A20617267756D656E74730D0A202020207D293B0D0A0D0A2020202074';
wwv_flow_api.g_varchar2_table(1963) := '6869732E70726F6D70742E626F64792E66696E6428275B617269612D73656C65637465643D747275655D27292E72656D6F7665417474722827617269612D73656C656374656427293B0D0A20207D2C0D0A20202F2A0D0A202020202A0D0A202020202A20';
wwv_flow_api.g_varchar2_table(1964) := '66756E6374696F6E206E616D653A205F70726F6D70744869676C6967687452656D6F766543757272656E744C690D0A202020202A206465736372697074696F6E20203A200D0A202020202A20706172616D733A0D0A202020202A2020202D0D0A20202020';
wwv_flow_api.g_varchar2_table(1965) := '2A2020202D0D0A202020202A0D0A20202A2F20200D0A20205F70726F6D70744869676C6967687452656D6F766543757272656E744C693A2066756E6374696F6E28297B0D0A20202020617065782E64656275672E6D65737361676528746869732E435F4C';
wwv_flow_api.g_varchar2_table(1966) := '4F475F4C4556454C362C20746869732E6C6F675072656669782C20275F70726F6D70744869676C6967687452656D6F766543757272656E744C69272C207B0D0A20202020202022617267756D656E7473223A20617267756D656E74730D0A202020207D29';
wwv_flow_api.g_varchar2_table(1967) := '3B0D0A0D0A20202020746869732E6D61736B2E73746174652E63757272656E7453656C656374696F6E2E72656D6F7665417474722827617269612D686967686C69676874656427293B0D0A20202020746869732E6D61736B2E73746174652E6375727265';
wwv_flow_api.g_varchar2_table(1968) := '6E7453656C656374696F6E203D20756E646566696E65643B0D0A20207D2C0D0A20202F2A0D0A202020202A0D0A202020202A2066756E6374696F6E206E616D653A205F70726F6D7074486967686C696768744C690D0A202020202A206465736372697074';
wwv_flow_api.g_varchar2_table(1969) := '696F6E20203A200D0A202020202A20706172616D733A0D0A202020202A2020202D0D0A202020202A2020202D0D0A202020202A0D0A20202A2F20200D0A20205F70726F6D7074486967686C696768744C693A2066756E6374696F6E2820704C69456C656D';
wwv_flow_api.g_varchar2_table(1970) := '656E7420297B0D0A20202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C362C20746869732E6C6F675072656669782C20275F70726F6D7074486967686C696768744C69272C207B0D0A202020202020226172';
wwv_flow_api.g_varchar2_table(1971) := '67756D656E7473223A20617267756D656E74732C0D0A20202020202022704C69456C656D656E74223A20704C69456C656D656E740D0A202020207D293B0D0A0D0A202020202F2F72656D6F76652073656C656374696F6E20696E20616C6C20736574206F';
wwv_flow_api.g_varchar2_table(1972) := '6620646174610D0A202020206966202820746869732E6D61736B2E73746174652E63757272656E7453656C656374696F6E20213D20756E646566696E65642029207B0D0A202020202020746869732E5F70726F6D70744869676C6967687452656D6F7665';
wwv_flow_api.g_varchar2_table(1973) := '43757272656E744C6928293B20200D0A202020207D202020200D0A0D0A20202020746869732E6D61736B2E73746174652E63757272656E7453656C656374696F6E203D20704C69456C656D656E743B0D0A0D0A20202020704C69456C656D656E742E6174';
wwv_flow_api.g_varchar2_table(1974) := '74722827617269612D686967686C696768746564272C2074727565293B0D0A20207D2C0D0A20202F2A0D0A202020202A0D0A202020202A2066756E6374696F6E206E616D653A205F70726F6D707453656C6563744669727374526F770D0A202020202A20';
wwv_flow_api.g_varchar2_table(1975) := '6465736372697074696F6E20203A200D0A202020202A20706172616D733A0D0A202020202A2020202D0D0A202020202A2020202D0D0A202020202A0D0A20202A2F20200D0A20205F70726F6D707453656C6563744669727374526F773A2066756E637469';
wwv_flow_api.g_varchar2_table(1976) := '6F6E28297B0D0A20202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C362C20746869732E6C6F675072656669782C20275F70726F6D707453656C6563744669727374526F77272C207B0D0A20202020202022';
wwv_flow_api.g_varchar2_table(1977) := '617267756D656E7473223A20617267756D656E74730D0A202020207D293B0D0A0D0A202020207661722066697273744C696E65203D20746869732E70726F6D70742E626F64792E66696E6428276C6927292E666972737428293B0D0A0D0A202020207468';
wwv_flow_api.g_varchar2_table(1978) := '69732E5F70726F6D7074486967686C696768744C69282066697273744C696E6520293B0D0A20207D2C0D0A20202F2A0D0A202020202A0D0A202020202A2066756E6374696F6E206E616D653A205F64617461457874656E6453656C656374656446726F6D';
wwv_flow_api.g_varchar2_table(1979) := '41727261794F664F626A656374730D0A202020202A206465736372697074696F6E20203A200D0A202020202A20706172616D733A0D0A202020202A2020202D0D0A202020202A2020202D0D0A202020202A0D0A20202A2F20200D0A20205F646174614578';
wwv_flow_api.g_varchar2_table(1980) := '74656E6453656C656374656446726F6D41727261794F664F626A656374733A2066756E6374696F6E282070446174612C207053656C656374656420297B0D0A20202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556';
wwv_flow_api.g_varchar2_table(1981) := '454C362C20746869732E6C6F675072656669782C20275F64617461457874656E6453656C656374656446726F6D41727261794F664F626A65637473272C207B0D0A20202020202022617267756D656E7473223A20617267756D656E74732C0D0A20202020';
wwv_flow_api.g_varchar2_table(1982) := '2020227044617461223A2070446174612C0D0A202020202020227053656C6563746564223A207053656C65637465640D0A202020207D293B0D0A0D0A20202020666F72202820766172206920696E2070446174612E646174612029207B0D0A2020202020';
wwv_flow_api.g_varchar2_table(1983) := '20666F7220282076617220793D303B2079203C207053656C65637465642E6C656E6774683B20792B2B2029207B0D0A202020202020202069662028207053656C65637465645B795D2E76616C75652E746F537472696E672829203D3D2070446174612E64';
wwv_flow_api.g_varchar2_table(1984) := '6174615B695D2E522E746F537472696E6728292029207B0D0A2020202020202020202070446174612E646174615B695D2E73656C6563746564203D20747275653B0D0A20202020202020202020636F6E74696E75653B0D0A20202020202020207D0D0A0D';
wwv_flow_api.g_varchar2_table(1985) := '0A2020202020207D0D0A202020207D0D0A0D0A20202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C362C20746869732E6C6F675072656669782C20275F64617461457874656E6453656C656374656446726F';
wwv_flow_api.g_varchar2_table(1986) := '6D41727261794F664F626A65637473272C202272657475726E6564207044617461222C207044617461293B0D0A0D0A2020202072657475726E2070446174613B0D0A20207D2C0D0A20202F2A0D0A202020202A0D0A202020202A2066756E6374696F6E20';
wwv_flow_api.g_varchar2_table(1987) := '6E616D653A205F70726F6D707454656D706C61746544656661756C740D0A202020202A206465736372697074696F6E20203A200D0A202020202A20706172616D733A0D0A202020202A2020202D0D0A202020202A2020202D0D0A202020202A0D0A20202A';
wwv_flow_api.g_varchar2_table(1988) := '2F20200D0A20205F70726F6D707454656D706C61746544656661756C743A2066756E6374696F6E28297B0D0A202020207661720D0A20202020202074656D706C617465203D2027272B0D0A2020202020202020277B7B23646174617D7D272B0D0A202020';
wwv_flow_api.g_varchar2_table(1989) := '2020202020273C6C69272B0D0A20202020202020202720617269612D72657475726E2D76616C75653D227B7B7B527D7D7D22272B0D0A20202020202020202720617269612D646973706C61792D76616C75653D227B7B7B447D7D7D22272B0D0A20202020';
wwv_flow_api.g_varchar2_table(1990) := '2020202027207B7B2373656C65637465647D7D617269612D73656C65637465643D2274727565227B7B2F73656C65637465647D7D272B0D0A202020202020202027207B7B236973415045584E756C6C56616C75657D7D617269612D6E756C6C2D76616C75';
wwv_flow_api.g_varchar2_table(1991) := '653D2274727565227B7B2F6973415045584E756C6C56616C75657D7D272B0D0A202020202020202027207469746C653D227B7B7B447D7D7D22272B0D0A20202020202020202720636C6173733D2264656661756C7422272B0D0A2020202020202020273E';
wwv_flow_api.g_varchar2_table(1992) := '272B0D0A202020202020202027207B7B7B447D7D7D272B0D0A2020202020202020273C2F6C693E272B0D0A2020202020202020277B7B2F646174617D7D273B0D0A0D0A20202020617065782E64656275672E6D65737361676528746869732E435F4C4F47';
wwv_flow_api.g_varchar2_table(1993) := '5F4C4556454C362C20746869732E6C6F675072656669782C20275F70726F6D707454656D706C61746544656661756C74272C207B0D0A20202020202022617267756D656E7473223A20617267756D656E74732C0D0A2020202020202272657475726E7322';
wwv_flow_api.g_varchar2_table(1994) := '3A2074656D706C6174650D0A202020207D293B0D0A0D0A2020202072657475726E2074656D706C6174653B0D0A20207D2C0D0A20202F2A0D0A202020202A0D0A202020202A2066756E6374696F6E206E616D653A205F70726F6D707452656E6465724461';
wwv_flow_api.g_varchar2_table(1995) := '7461496E437573746F6D54656D706C6174650D0A202020202A206465736372697074696F6E20203A200D0A202020202A20706172616D733A0D0A202020202A2020202D0D0A202020202A2020202D0D0A202020202A0D0A20202A2F20200D0A20205F7072';
wwv_flow_api.g_varchar2_table(1996) := '6F6D707452656E64657244617461496E437573746F6D54656D706C6174653A2066756E6374696F6E2820704461746120297B0D0A20202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C362C20746869732E6C';
wwv_flow_api.g_varchar2_table(1997) := '6F675072656669782C20275F70726F6D707452656E64657244617461496E437573746F6D54656D706C617465272C207B0D0A20202020202022617267756D656E7473223A20617267756D656E74732C0D0A202020202020227044617461223A2070446174';
wwv_flow_api.g_varchar2_table(1998) := '610D0A202020207D293B0D0A0D0A20202020766172200D0A20202020202072656E6465726564203D2027272C0D0A2020202020206C692C0D0A202020202020697353656C6563746564203D2066616C73652C0D0A202020202020726F7748746D6C3B0D0A';
wwv_flow_api.g_varchar2_table(1999) := '0D0A20202020666F7220282076617220693D303B2069203C2070446174612E646174612E6C656E6774683B20692B2B2029207B0D0A202020202020697353656C6563746564203D2070446174612E646174615B695D2E73656C6563746564203F20747275';
wwv_flow_api.g_varchar2_table(2000) := '65203A2066616C73653B0D0A202020202020726F7748746D6C203D20746869732E70726F6D70742E637573746F6D54656D706C61746546756E6374696F6E2E63616C6C28746869732C2070446174612E646174615B695D20293B0D0A2020202020206C69';
wwv_flow_api.g_varchar2_table(2001) := '203D2027272B0D0A2020202020202020273C6C692720202020202020202020202020202020202020202020202020202020202020202020202020202B0D0A202020202020202027207469746C653D22272B70446174612E646174615B695D2E442B272227';
wwv_flow_api.g_varchar2_table(2002) := '202020202020202020202020202B0D0A20202020202020202720636C6173733D22637573746F6D222720202020202020202020202020202020202020202020202020202B0D0A20202020202020202720617269612D72657475726E2D76616C75653D2227';
wwv_flow_api.g_varchar2_table(2003) := '2B70446174612E646174615B695D2E522B272227202B0D0A20202020202020202720617269612D646973706C61792D76616C75653D22272B70446174612E646174615B695D2E442B2722272B0D0A20202020202020202720617269612D73656C65637465';
wwv_flow_api.g_varchar2_table(2004) := '643D22272B697353656C65637465642B272227202020202020202020202B0D0A2020202020202020273E272B726F7748746D6C2B273C2F6C693E273B0D0A20202020202072656E6465726564202B3D206C693B0D0A202020207D0D0A0D0A202020207265';
wwv_flow_api.g_varchar2_table(2005) := '7475726E2072656E64657265643B0D0A0D0A20207D2C0D0A20202F2A0D0A202020202A0D0A202020202A2066756E6374696F6E206E616D653A205F70726F6D7074417070656E64446174610D0A202020202A206465736372697074696F6E20203A200D0A';
wwv_flow_api.g_varchar2_table(2006) := '202020202A20706172616D733A0D0A202020202A2020202D0D0A202020202A2020202D0D0A202020202A0D0A20202A2F20200D0A20205F70726F6D7074417070656E64446174613A2066756E6374696F6E2820704461746120297B0D0A20202020617065';
wwv_flow_api.g_varchar2_table(2007) := '782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C362C20746869732E6C6F675072656669782C20275F70726F6D7074417070656E6444617461272C207B0D0A20202020202022617267756D656E7473223A20617267756D65';
wwv_flow_api.g_varchar2_table(2008) := '6E74732C0D0A202020202020227044617461223A2070446174610D0A202020207D293B0D0A0D0A20202020766172200D0A20202020202072656E64657265642C0D0A20202020202074656D706C617465203D20746869732E5F70726F6D707454656D706C';
wwv_flow_api.g_varchar2_table(2009) := '61746544656661756C7428293B0D0A0D0A20202020696620282070446174612E646174612E6C656E677468203D3D20302029207B0D0A20202020202072657475726E20766F69642830293B0D0A202020207D0D0A0D0A202020206966202820746869732E';
wwv_flow_api.g_varchar2_table(2010) := '706C7567696E53657474696E67732E70726F6D70742E6973437573746F6D54656D706C617465203D3D2066616C73652029207B0D0A202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C362C20746869';
wwv_flow_api.g_varchar2_table(2011) := '732E6C6F675072656669782C20275F70726F6D7074417070656E6444617461272C202272656E646572206461746120696E2064656661756C742074656D706C61746522293B0D0A0D0A202020202020747279207B0D0A202020202020202072656E646572';
wwv_flow_api.g_varchar2_table(2012) := '6564203D2024284D757374616368652E72656E646572282074656D706C6174652C20704461746129293B0D0A2020202020207D20636174636828206572726F722029207B0D0A2020202020202020746869732E5F7468726F774572726F72286572726F72';
wwv_flow_api.g_varchar2_table(2013) := '293B0D0A2020202020207D0D0A202020207D0D0A20202020656C7365207B0D0A202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C362C20746869732E6C6F675072656669782C20275F70726F6D7074';
wwv_flow_api.g_varchar2_table(2014) := '417070656E6444617461272C202272656E646572206461746120696E20637573746F6D2074656D706C61746522293B0D0A0D0A20202020202072656E6465726564203D20746869732E5F70726F6D707452656E64657244617461496E437573746F6D5465';
wwv_flow_api.g_varchar2_table(2015) := '6D706C6174652820704461746120293B0D0A202020207D0D0A20200D0A20202020746869732E70726F6D70742E626F64792E66696E642827756C27292E617070656E64282072656E646572656420293B0D0A20202020746869732E5F70726F6D70745265';
wwv_flow_api.g_varchar2_table(2016) := '706F736974696F6E28293B0D0A0D0A20202020746869732E5F747269676765724576656E7428277061656C695F70726F6D70745F646174615F617070656E646564272C20746869732E5F70726F6D70744765744576656E74446174612829293B0D0A2020';
wwv_flow_api.g_varchar2_table(2017) := '7D2C0D0A20202F2A0D0A202020202A0D0A202020202A2066756E6374696F6E206E616D653A205F70726F6D7074447261774D696E696D616C496E7075744C656E6774680D0A202020202A206465736372697074696F6E20203A200D0A202020202A207061';
wwv_flow_api.g_varchar2_table(2018) := '72616D733A0D0A202020202A2020202D0D0A202020202A2020202D0D0A202020202A0D0A20202A2F20200D0A20205F70726F6D7074447261774D696E696D616C496E7075744C656E6774683A2066756E6374696F6E2820704D65737361676520297B0D0A';
wwv_flow_api.g_varchar2_table(2019) := '20202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C362C20746869732E6C6F675072656669782C20275F70726F6D7074447261774D696E696D616C496E7075744C656E677468272C207B0D0A202020202020';
wwv_flow_api.g_varchar2_table(2020) := '22617267756D656E7473223A20617267756D656E74732C0D0A20202020202022704D657373616765223A20704D6573736167650D0A202020207D293B0D0A0D0A20202020766172200D0A2020202020206D657373616765203D20704D6573736167652E72';
wwv_flow_api.g_varchar2_table(2021) := '65706C61636528272530272C20746869732E706C7567696E53657474696E67732E70726F6D70742E6D696E696D616C496E7075744C656E677468292C0D0A20202020202074656D706C617465203D2027272B0D0A2020202020202020273C64697620636C';
wwv_flow_api.g_varchar2_table(2022) := '6173733D226E6F64617461666F756E64223E272B0D0A20202020202020202720203C7370616E20636C6173733D2274657874223E272B6D6573736167652B273C2F7370616E3E272B0D0A2020202020202020273C2F6469763E273B0D0A0D0A2020202074';
wwv_flow_api.g_varchar2_table(2023) := '6869732E70726F6D70742E626F64792E68746D6C282074656D706C61746520293B0D0A20202020746869732E6D61736B2E73746174652E617265526573756C7473417661696C61626C65203D2066616C73653B0D0A0D0A20207D2C0D0A20202F2A0D0A20';
wwv_flow_api.g_varchar2_table(2024) := '2020202A0D0A202020202A2066756E6374696F6E206E616D653A205F70726F6D7074447261774E6F64617461466F756E640D0A202020202A206465736372697074696F6E20203A200D0A202020202A20706172616D733A0D0A202020202A2020202D0D0A';
wwv_flow_api.g_varchar2_table(2025) := '202020202A2020202D0D0A202020202A0D0A20202A2F20200D0A20205F70726F6D7074447261774E6F64617461466F756E643A2066756E6374696F6E28297B0D0A20202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F44';
wwv_flow_api.g_varchar2_table(2026) := '454255472C20746869732E6C6F675072656669782C20275F70726F6D7074447261774E6F64617461466F756E64272C207B0D0A20202020202022617267756D656E7473223A20617267756D656E74730D0A202020207D293B0D0A202020202F2F0D0A2020';
wwv_flow_api.g_varchar2_table(2027) := '2020766172200D0A2020202020206D657373616765203D20746869732E435F50524F4D50545F544558545F4E4F5F444154415F464F554E442C0D0A20202020202074656D706C617465203D2027272B0D0A2020202020202020273C64697620636C617373';
wwv_flow_api.g_varchar2_table(2028) := '3D226E6F64617461666F756E64223E272B0D0A20202020202020202720203C7370616E20636C6173733D2266612066612D7461626C652D7365617263682069636F6E223E3C2F7370616E3E272B0D0A20202020202020202720203C7370616E20636C6173';
wwv_flow_api.g_varchar2_table(2029) := '733D2274657874223E272B6D6573736167652B273C2F7370616E3E272B0D0A2020202020202020273C2F6469763E273B0D0A0D0A20202020746869732E70726F6D70742E626F64792E68746D6C282074656D706C61746520293B0D0A2020202074686973';
wwv_flow_api.g_varchar2_table(2030) := '2E6D61736B2E73746174652E617265526573756C7473417661696C61626C65203D2066616C73653B0D0A20207D2C0D0A20202F2A0D0A202020202A0D0A202020202A2066756E6374696F6E206E616D653A205F70726F6D707452656E646572446174610D';
wwv_flow_api.g_varchar2_table(2031) := '0A202020202A206465736372697074696F6E20203A200D0A202020202A20706172616D733A0D0A202020202A2020202D0D0A202020202A2020202D0D0A202020202A0D0A20202A2F20200D0A20205F70726F6D707452656E646572446174613A2066756E';
wwv_flow_api.g_varchar2_table(2032) := '6374696F6E2820704461746120297B0D0A20202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F44454255472C20746869732E6C6F675072656669782C20275F70726F6D707452656E64657244617461272C207B0D0A2020';
wwv_flow_api.g_varchar2_table(2033) := '2020202022617267756D656E7473223A20617267756D656E74732C0D0A202020202020227044617461223A2070446174610D0A202020207D293B0D0A0D0A20202020766172200D0A20202020202072656E64657265642C0D0A2020202020206465666175';
wwv_flow_api.g_varchar2_table(2034) := '6C7454656D706C617465203D20746869732E5F70726F6D707454656D706C61746544656661756C7428293B0D0A0D0A20202020696620282070446174612E646174612E6C656E677468203D3D20302029207B0D0A202020202020746869732E5F70726F6D';
wwv_flow_api.g_varchar2_table(2035) := '7074447261774E6F64617461466F756E6428293B0D0A20202020202072657475726E20766F69642830293B0D0A202020207D0D0A0D0A20202020696620282021746869732E5F636865636B496644617461436F6E7461696E73446973706C6179436F6C75';
wwv_flow_api.g_varchar2_table(2036) := '6D6E2820704461746120292026262021746869732E5F636865636B496644617461436F6E7461696E7352657475726E436F6C756D6E2820704461746120292029207B0D0A202020202020746869732E5F70726F6D7074446973706C61794572726F722827';
wwv_flow_api.g_varchar2_table(2037) := '496E76616C69642053514C20717565727927293B0D0A202020202020746869732E5F7468726F774572726F7254657874282753514C207175657279206C61636B7320646973706C617920616E642072657475726E20636F6C756D6E732E20416C69617365';
wwv_flow_api.g_varchar2_table(2038) := '732022642220616E6420227222206172652072657175697265642127293B0D0A202020207D0D0A0D0A202020206966202820746869732E706C7567696E53657474696E67732E70726F6D70742E6973437573746F6D54656D706C617465203D3D2066616C';
wwv_flow_api.g_varchar2_table(2039) := '73652029207B0D0A202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F44454255472C20746869732E6C6F675072656669782C20275F70726F6D707452656E64657244617461272C202272656E6465722064617461';
wwv_flow_api.g_varchar2_table(2040) := '20696E2064656661756C742074656D706C61746522293B0D0A0D0A20202020202064656661756C7454656D706C617465203D20273C756C3E272B64656661756C7454656D706C6174652B273C2F756C3E273B20200D0A0D0A202020202020747279207B0D';
wwv_flow_api.g_varchar2_table(2041) := '0A202020202020202072656E6465726564203D2024284D757374616368652E72656E646572282064656661756C7454656D706C6174652C20704461746129293B0D0A2020202020207D20636174636828206572726F722029207B0D0A2020202020202020';
wwv_flow_api.g_varchar2_table(2042) := '746869732E5F7468726F774572726F72286572726F72293B0D0A2020202020207D0D0A0D0A202020207D0D0A20202020656C7365207B0D0A202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F44454255472C2074';
wwv_flow_api.g_varchar2_table(2043) := '6869732E6C6F675072656669782C20275F70726F6D707452656E64657244617461272C202272656E646572206461746120696E20637573746F6D2074656D706C61746522293B0D0A0D0A20202020202072656E6465726564203D20746869732E5F70726F';
wwv_flow_api.g_varchar2_table(2044) := '6D707452656E64657244617461496E437573746F6D54656D706C6174652820704461746120293B0D0A20202020202072656E6465726564203D20273C756C3E272B72656E64657265642B273C2F756C3E273B0D0A202020207D0D0A0D0A20202020746869';
wwv_flow_api.g_varchar2_table(2045) := '732E70726F6D70742E626F64792E68746D6C282072656E646572656420293B0D0A20202020746869732E5F70726F6D70745265706F736974696F6E28293B0D0A20202020746869732E6D61736B2E73746174652E617265526573756C7473417661696C61';
wwv_flow_api.g_varchar2_table(2046) := '626C65203D20747275653B0D0A20202020746869732E5F70726F6D707453656C6563744669727374526F7728293B0D0A0D0A20202020746869732E5F747269676765724576656E7428277061656C695F70726F6D70745F646174615F72656E6465726564';
wwv_flow_api.g_varchar2_table(2047) := '272C20746869732E5F70726F6D70744765744576656E74446174612829293B0D0A20207D2C0D0A20202F2A0D0A202020202A0D0A202020202A2066756E6374696F6E206E616D653A205F7265736574466F6375730D0A202020202A206465736372697074';
wwv_flow_api.g_varchar2_table(2048) := '696F6E20203A200D0A202020202A20706172616D733A0D0A202020202A2020202D0D0A202020202A2020202D0D0A202020202A0D0A20202A2F0D0A20205F7265736574466F6375733A2066756E6374696F6E28297B0D0A20202020617065782E64656275';
wwv_flow_api.g_varchar2_table(2049) := '672E6D65737361676528746869732E435F4C4F475F44454255472C20746869732E6C6F675072656669782C20275F7265736574466F637573272C207B0D0A20202020202022617267756D656E7473223A20617267756D656E74730D0A202020207D293B0D';
wwv_flow_api.g_varchar2_table(2050) := '0A0D0A0D0A202020206966202820746869732E69672E6973456D6265646564496E477269642029207B0D0A202020202020766172200D0A2020202020202020776964676574203D20746869732C0D0A20202020202020207265636F72644964203D207468';
wwv_flow_api.g_varchar2_table(2051) := '69732E69672E677269642E6D6F64656C2E6765745265636F7264496428746869732E69672E677269642E76696577242E67726964282767657453656C65637465645265636F72647327295B305D292C0D0A2020202020202020636F6C756D6E203D207468';
wwv_flow_api.g_varchar2_table(2052) := '69732E69672E726567696F6E2E696E7465726163746976654772696428276F7074696F6E27292E636F6E6669672E636F6C756D6E732E66696C7465722866756E6374696F6E202870436F6C756D6E29207B0D0A202020202020202020200D0A2020202020';
wwv_flow_api.g_varchar2_table(2053) := '202020202072657475726E2070436F6C756D6E2E7374617469634964203D3D3D207769646765742E6F7074696F6E732E6974656D2E6E616D650D0A20202020202020207D295B305D3B0D0A20202020202020200D0A202020202020746869732E69672E67';
wwv_flow_api.g_varchar2_table(2054) := '7269642E76696577242E677269642827676F746F43656C6C272C207265636F726449642C20636F6C756D6E2E6E616D65290D0A2020202020202F2F746869732E69672E677269642E666F63757328293B0D0A202020202020746869732E69672E72656769';
wwv_flow_api.g_varchar2_table(2055) := '6F6E2E696E746572616374697665477269642827666F63757327293B0D0A202020207D0D0A20202020656C7365207B0D0A202020202020746869732E656C656D656E742E666F63757328293B0D0A202020207D0D0A0D0A20207D2C0D0A20202F2A0D0A20';
wwv_flow_api.g_varchar2_table(2056) := '2020202A0D0A202020202A2066756E6374696F6E206E616D653A205F70726F6D70744765744869676C6967687465640D0A202020202A206465736372697074696F6E20203A200D0A202020202A20706172616D733A0D0A202020202A2020202D0D0A2020';
wwv_flow_api.g_varchar2_table(2057) := '20202A2020202D0D0A202020202A0D0A20202A2F0D0A20205F70726F6D70744765744869676C6967687465643A2066756E6374696F6E28297B0D0A202020207661722072657475726E56616C7565203D20746869732E70726F6D70742E626F64792E6669';
wwv_flow_api.g_varchar2_table(2058) := '6E6428275B617269612D686967686C6967687465643D2274727565225D27293B0D0A0D0A20202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F70726F6D';
wwv_flow_api.g_varchar2_table(2059) := '70744765744869676C696768746564272C207B0D0A20202020202022617267756D656E7473223A20617267756D656E74732C0D0A2020202020202272657475726E73223A2072657475726E56616C75650D0A202020207D293B0D0A0D0A20202020726574';
wwv_flow_api.g_varchar2_table(2060) := '75726E2072657475726E56616C75653B0D0A20207D2C0D0A20202F2A0D0A202020202A0D0A202020202A2066756E6374696F6E206E616D653A205F6D61736B506F707570427574746F6E4B6579446F776E0D0A202020202A206465736372697074696F6E';
wwv_flow_api.g_varchar2_table(2061) := '20203A200D0A202020202A20706172616D733A0D0A202020202A2020202D0D0A202020202A2020202D0D0A202020202A0D0A20202A2F20200D0A20205F6D61736B506F707570427574746F6E4B6579446F776E3A2066756E6374696F6E2820704576656E';
wwv_flow_api.g_varchar2_table(2062) := '742029207B0D0A20202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F6D61736B506F707570427574746F6E4B6579446F776E272C207B0D0A2020202020';
wwv_flow_api.g_varchar2_table(2063) := '2022617267756D656E7473223A20617267756D656E74732C0D0A20202020202022704576656E74223A20704576656E740D0A202020207D293B0D0A0D0A202020207661720D0A2020202020206B6579436F6465203D20704576656E742E6B6579436F6465';
wwv_flow_api.g_varchar2_table(2064) := '3B0D0A0D0A202020206966202820746869732E5F69734E617669676174696F6E4B657928206B6579436F64652029203D3D2027444F574E272029207B0D0A202020202020746869732E5F70726F6D7074536561726368496E707574466F63757348616E64';
wwv_flow_api.g_varchar2_table(2065) := '6C657228293B0D0A202020207D0D0A0D0A20207D2C0D0A20202F2A0D0A202020202A0D0A202020202A2066756E6374696F6E206E616D653A205F6D61736B537461746553656C656374656452656D6F76650D0A202020202A206465736372697074696F6E';
wwv_flow_api.g_varchar2_table(2066) := '20203A200D0A202020202A20706172616D733A0D0A202020202A2020202D0D0A202020202A2020202D0D0A202020202A0D0A20202A2F20200D0A20205F6D61736B537461746553656C656374656452656D6F76653A2066756E6374696F6E282070496E64';
wwv_flow_api.g_varchar2_table(2067) := '65782029207B0D0A20202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C362C20746869732E6C6F675072656669782C20275F6D61736B537461746553656C656374656452656D6F7665272C207B0D0A202020';
wwv_flow_api.g_varchar2_table(2068) := '20202022617267756D656E7473223A20617267756D656E74732C0D0A2020202020202270496E646578223A2070496E6465780D0A202020207D293B0D0A0D0A202020207661722072656D6F7665643B0D0A0D0A2020202072656D6F766564203D20746869';
wwv_flow_api.g_varchar2_table(2069) := '732E6D61736B2E73746174652E73656C65637465642E73706C696365282070496E6465782C203120293B0D0A0D0A20202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C362C20746869732E6C6F6750726566';
wwv_flow_api.g_varchar2_table(2070) := '69782C20275F6D61736B537461746553656C656374656452656D6F7665272C202772656D6F766564206F626A656374272C2072656D6F766564293B0D0A20207D2C0D0A20202F2A0D0A202020202A0D0A202020202A2066756E6374696F6E206E616D653A';
wwv_flow_api.g_varchar2_table(2071) := '205F6D61736B537461746553656C65637465644164640D0A202020202A206465736372697074696F6E20203A200D0A202020202A20706172616D733A0D0A202020202A2020202D0D0A202020202A2020202D0D0A202020202A0D0A20202A2F20200D0A20';
wwv_flow_api.g_varchar2_table(2072) := '205F6D61736B537461746553656C65637465644164643A2066756E6374696F6E2820704F626A6563742C20704973457874726156616C75652C207049734E756C6C56616C756520297B0D0A20202020617065782E64656275672E6D657373616765287468';
wwv_flow_api.g_varchar2_table(2073) := '69732E435F4C4F475F4C4556454C362C20746869732E6C6F675072656669782C20275F6D61736B537461746553656C6563746564416464272C207B0D0A20202020202022617267756D656E7473223A20617267756D656E74732C0D0A2020202020202270';
wwv_flow_api.g_varchar2_table(2074) := '4F626A65637422202020202020202020202020203A20704F626A6563742C0D0A20202020202022704973457874726156616C756522202020202020203A20704973457874726156616C75652C0D0A202020202020227049734E756C6C56616C7565222020';
wwv_flow_api.g_varchar2_table(2075) := '2020202020203A207049734E756C6C56616C75650D0A202020207D293B0D0A0D0A202020206966202820704973457874726156616C75652029207B0D0A202020202020704F626A6563742E6973457874726156616C7565203D20747275653B2020202020';
wwv_flow_api.g_varchar2_table(2076) := '200D0A202020207D0D0A0D0A2020202069662028207049734E756C6C56616C75652029207B0D0A202020202020704F626A6563742E6973415045584E756C6C56616C7565203D20747275653B200D0A202020207D0D0A0D0A20202020746869732E6D6173';
wwv_flow_api.g_varchar2_table(2077) := '6B2E73746174652E73656C65637465642E707573682820704F626A65637420293B0D0A20207D2C0D0A0D0A20202F2A0D0A202020202A0D0A202020202A2066756E6374696F6E206E616D653A205F6D61736B537461746553656C6563746564476574496E';
wwv_flow_api.g_varchar2_table(2078) := '6465780D0A202020202A206465736372697074696F6E20203A200D0A202020202A20706172616D733A0D0A202020202A2020202D0D0A202020202A2020202D0D0A202020202A0D0A20202A2F0D0A20205F6D61736B537461746553656C65637465644765';
wwv_flow_api.g_varchar2_table(2079) := '74496E6465783A2066756E6374696F6E28207056616C756520297B0D0A20202020666F7220282076617220693D303B2069203C20746869732E6D61736B2E73746174652E73656C65637465642E6C656E6774683B20692B2B2029207B0D0A202020202020';
wwv_flow_api.g_varchar2_table(2080) := '6966202820746869732E6D61736B2E73746174652E73656C65637465645B695D2E76616C7565203D3D207056616C75652029207B0D0A2020202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C362C20';
wwv_flow_api.g_varchar2_table(2081) := '746869732E6C6F675072656669782C20275F6D61736B537461746553656C6563746564476574496E646578272C207B0D0A2020202020202020202022617267756D656E7473223A20617267756D656E74732C0D0A20202020202020202020227056616C75';
wwv_flow_api.g_varchar2_table(2082) := '65223A207056616C75652C0D0A202020202020202020202272657475726E223A20690D0A20202020202020207D293B20202020202020200D0A0D0A202020202020202072657475726E20693B0D0A2020202020207D0D0A202020207D0D0A0D0A20202020';
wwv_flow_api.g_varchar2_table(2083) := '617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C362C20746869732E6C6F675072656669782C20275F6D61736B537461746553656C6563746564476574496E646578272C207B0D0A20202020202022617267756D65';
wwv_flow_api.g_varchar2_table(2084) := '6E7473223A20617267756D656E74732C0D0A202020202020227056616C7565223A207056616C75652C0D0A2020202020202272657475726E223A202D310D0A202020207D293B20202020202020200D0A0D0A2020202072657475726E202D313B0D0A2020';
wwv_flow_api.g_varchar2_table(2085) := '7D2C0D0A20202F2A0D0A202020202A0D0A202020202A2066756E6374696F6E206E616D653A205F70726F6D7074497356616C756553656C65637465640D0A202020202A206465736372697074696F6E20203A200D0A202020202A20706172616D733A0D0A';
wwv_flow_api.g_varchar2_table(2086) := '202020202A2020202D0D0A202020202A2020202D0D0A202020202A0D0A20202A2F20200D0A20205F70726F6D7074497356616C756553656C65637465643A2066756E6374696F6E28207056616C756520297B0D0A20202020617065782E64656275672E6D';
wwv_flow_api.g_varchar2_table(2087) := '65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F70726F6D7074497356616C756553656C6563746564272C207B0D0A20202020202022617267756D656E7473223A20617267756D656E74732C';
wwv_flow_api.g_varchar2_table(2088) := '0D0A202020202020227056616C7565223A207056616C75650D0A202020207D293B0D0A0D0A202020207661722072657475726E56616C7565203D20746869732E6D61736B2E73746174652E73656C65637465642E696E6465784F6628207056616C756520';
wwv_flow_api.g_varchar2_table(2089) := '29203E202D313B0D0A0D0A20202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F70726F6D7074497356616C756553656C6563746564272C202272657475';
wwv_flow_api.g_varchar2_table(2090) := '726E73222C207B0D0A2020202020202272657475726E56616C7565223A2072657475726E56616C75650D0A202020207D293B0D0A0D0A2020202072657475726E2072657475726E56616C75653B0D0A20207D2C0D0A20202F2A0D0A202020202A0D0A2020';
wwv_flow_api.g_varchar2_table(2091) := '20202A2066756E6374696F6E206E616D653A205F70726F6D707452656D6F7665486967686C69676874656466726F6D416C6C4C690D0A202020202A206465736372697074696F6E20203A200D0A202020202A20706172616D733A0D0A202020202A202020';
wwv_flow_api.g_varchar2_table(2092) := '2D0D0A202020202A2020202D0D0A202020202A0D0A20202A2F20200D0A20205F70726F6D707452656D6F7665486967686C69676874656466726F6D416C6C4C693A2066756E6374696F6E28297B0D0A20202020617065782E64656275672E6D6573736167';
wwv_flow_api.g_varchar2_table(2093) := '6528746869732E435F4C4F475F4C4556454C362C20746869732E6C6F675072656669782C20275F70726F6D707452656D6F7665486967686C69676874656466726F6D416C6C4C69272C207B0D0A20202020202022617267756D656E7473223A2061726775';
wwv_flow_api.g_varchar2_table(2094) := '6D656E74730D0A202020207D293B0D0A0D0A20202020746869732E70726F6D70742E626F64792E66696E642820276C695B617269612D686967686C6967687465645D2720292E72656D6F7665417474722827617269612D686967686C6967687465642729';
wwv_flow_api.g_varchar2_table(2095) := '3B0D0A20207D2C0D0A20202F2A0D0A202020202A0D0A202020202A2066756E6374696F6E206E616D653A205F70726F6D707452656D6F7665486967686C69676874656446726F6D4C690D0A202020202A206465736372697074696F6E20203A200D0A2020';
wwv_flow_api.g_varchar2_table(2096) := '20202A20706172616D733A0D0A202020202A2020202D0D0A202020202A2020202D0D0A202020202A0D0A20202A2F20200D0A20205F70726F6D707452656D6F7665486967686C69676874656446726F6D4C693A2066756E6374696F6E2820704C6920297B';
wwv_flow_api.g_varchar2_table(2097) := '0D0A20202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C362C20746869732E6C6F675072656669782C20275F70726F6D707452656D6F7665486967686C69676874656446726F6D4C69272C207B0D0A202020';
wwv_flow_api.g_varchar2_table(2098) := '20202022617267756D656E7473223A20617267756D656E74732C0D0A20202020202027704C69273A20704C690D0A202020207D293B0D0A0D0A20202020704C692E72656D6F7665417474722827617269612D686967686C69676874656427293B0D0A2020';
wwv_flow_api.g_varchar2_table(2099) := '7D2C0D0A0D0A20202F2A0D0A202020202A0D0A202020202A2066756E6374696F6E206E616D653A205F70726F6D70744765744C6953656C65637465640D0A202020202A206465736372697074696F6E20203A200D0A202020202A20706172616D733A0D0A';
wwv_flow_api.g_varchar2_table(2100) := '202020202A2020202D0D0A202020202A2020202D0D0A202020202A0D0A20202A2F20200D0A20205F70726F6D70744765744C6953656C65637465643A2066756E6374696F6E28297B0D0A20202020617065782E64656275672E6D65737361676528746869';
wwv_flow_api.g_varchar2_table(2101) := '732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F70726F6D70744765744C6953656C6563746564272C207B0D0A20202020202022617267756D656E7473223A20617267756D656E74730D0A202020207D293B0D0A0D0A';
wwv_flow_api.g_varchar2_table(2102) := '2020202072657475726E20746869732E70726F6D70742E626F64792E66696E6428276C6927292E66696C746572282066756E6374696F6E282070496E6465782C2070456C656D20297B0D0A20202020202072657475726E20242870456C656D292E697328';
wwv_flow_api.g_varchar2_table(2103) := '275B617269612D73656C65637465643D747275655D27293B0D0A202020207D20293B0D0A20207D2C0D0A20202F2A0D0A202020202A0D0A202020202A2066756E6374696F6E206E616D653A205F70726F6D707453656C65637456616C75650D0A20202020';
wwv_flow_api.g_varchar2_table(2104) := '2A206465736372697074696F6E20203A200D0A202020202A20706172616D733A0D0A202020202A2020202D0D0A202020202A2020202D0D0A202020202A0D0A20202A2F20200D0A20205F70726F6D707453656C65637456616C75653A2066756E6374696F';
wwv_flow_api.g_varchar2_table(2105) := '6E2820704C6920297B0D0A202020207661720D0A20202020202076616C756552657475726E20203D20704C692E617474722827617269612D72657475726E2D76616C756527292C0D0A20202020202076616C7565446973706C6179203D20704C692E6174';
wwv_flow_api.g_varchar2_table(2106) := '74722827617269612D646973706C61792D76616C756527292C0D0A2020202020206973415045584E756C6C56616C7565203D20704C692E617474722827617269612D6E756C6C2D76616C756527292C0D0A20202020202063757272656E74203D20746869';
wwv_flow_api.g_varchar2_table(2107) := '732E5F70726F6D70744765744C6953656C656374656428292E666972737428293B0D0A2020202020202F2F6368616E67654576656E74203D20747275653B0D0A0D0A20202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F';
wwv_flow_api.g_varchar2_table(2108) := '44454255472C20746869732E6C6F675072656669782C20275F70726F6D707453656C65637456616C7565272C207B0D0A20202020202022617267756D656E7473223A20617267756D656E74732C0D0A20202020202022704C6922202020203A20704C692C';
wwv_flow_api.g_varchar2_table(2109) := '0D0A2020202020202276616C75652220203A2076616C756552657475726E2C0D0A20202020202022646973706C6179223A2076616C7565446973706C61792C0D0A202020202020226E756C6C222020203A206973415045584E756C6C56616C75650D0A20';
wwv_flow_api.g_varchar2_table(2110) := '2020207D293B0D0A0D0A202020206966202820746869732E6D61736B2E73746174652E617265526573756C7473417661696C61626C65203D3D2066616C736529207B0D0A202020202020617065782E64656275672E6D65737361676528746869732E435F';
wwv_flow_api.g_varchar2_table(2111) := '4C4F475F5741524E494E472C20746869732E6C6F675072656669782C20275F70726F6D707453656C65637456616C7565206E6F20726573756C747320746F2062652073656C65637465642127293B0D0A20202020202072657475726E20766F6964283029';
wwv_flow_api.g_varchar2_table(2112) := '3B0D0A202020207D0D0A0D0A2020202069662028200D0A202020202020746869732E706C7567696E53657474696E67732E69734D756C7469706C6553656C656374696F6E203D3D2066616C73650D0A202020202020262620746869732E6D61736B2E7374';
wwv_flow_api.g_varchar2_table(2113) := '6174652E73656C65637465642E6C656E677468203D3D20310D0A2020202029207B0D0A202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F5741524E494E472C20746869732E6C6F675072656669782C20275F7072';
wwv_flow_api.g_varchar2_table(2114) := '6F6D707453656C65637456616C756520646573656C65637420616E642073656C656374206E657720287465726D696E617465206368616E6765206576656E742927293B0D0A0D0A202020202020747279207B0D0A2020202020202020746869732E5F7072';
wwv_flow_api.g_varchar2_table(2115) := '6F6D7074556E73656C65637456616C7565282063757272656E742E617474722827617269612D72657475726E2D76616C756527292C2063757272656E742C2066616C736520293B0D0A2020202020207D20636174636828206572726F722029207B0D0A20';
wwv_flow_api.g_varchar2_table(2116) := '20202020202020746869732E5F70726F6D7074456D7074795461677328293B0D0A2020202020202020746869732E5F70726F6D7074456D7074794D61736B537461746528293B0D0A2020202020207D0D0A2020202020200D0A202020207D0D0A20202020';
wwv_flow_api.g_varchar2_table(2117) := '656C736520696620280D0A202020202020746869732E706C7567696E53657474696E67732E69734D756C7469706C6553656C656374696F6E203D3D2066616C73650D0A202020202020262620746869732E6D61736B2E73746174652E73656C6563746564';
wwv_flow_api.g_varchar2_table(2118) := '2E6C656E677468203E20310D0A2020202029207B0D0A202020202020746869732E5F70726F6D707452656D6F7665486967686C69676874656466726F6D416C6C4C6928293B0D0A202020202020746869732E5F70726F6D7074456D707479546167732829';
wwv_flow_api.g_varchar2_table(2119) := '3B0D0A202020202020746869732E5F70726F6D7074456D7074794D61736B537461746528293B0D0A202020207D0D0A0D0A20202020746869732E5F6D61736B537461746553656C6563746564416464280D0A2020202020207B0D0A202020202020202022';
wwv_flow_api.g_varchar2_table(2120) := '646973706C6179223A2076616C7565446973706C61792C0D0A20202020202020202276616C75652220203A2076616C756552657475726E0D0A2020202020207D2C20202020202020202020202020202020202020202020202020202F2F206F626A656374';
wwv_flow_api.g_varchar2_table(2121) := '0D0A20202020202066616C73652C202020202020202020202020202020202020202020202F2F2069732065787472612076616C75652C0D0A202020202020286973415045584E756C6C56616C7565203D3D2022747275652229202F2F206973206E756C6C';
wwv_flow_api.g_varchar2_table(2122) := '2076616C75650D0A20202020293B0D0A0D0A202020202F2F746869732E5F70726F6D70744170706C7956616C75657328206368616E67654576656E7420293B0D0A20202020746869732E5F70726F6D70744170706C7956616C7565732820747275652029';
wwv_flow_api.g_varchar2_table(2123) := '3B0D0A20202020746869732E5F70726F6D707452656E6465725461677328293B0D0A0D0A20202020704C692E617474722827617269612D73656C6563746564272C2074727565293B0D0A0D0A20202020746869732E5F70726F6D7074486967686C696768';
wwv_flow_api.g_varchar2_table(2124) := '744C6928704C69293B0D0A0D0A20202020746869732E6D61736B2E73746174652E63757272656E7453656C656374696F6E203D20704C693B0D0A0D0A202020206966202820746869732E70726F6D70742E697356697369626C652029207B0D0A20202020';
wwv_flow_api.g_varchar2_table(2125) := '2020746869732E5F70726F6D70745265706F736974696F6E28293B0D0A202020202020746869732E5F70726F6D7074536574466F63757328293B0D0A202020207D0D0A0D0A202020206966202820746869732E706C7567696E53657474696E67732E6973';
wwv_flow_api.g_varchar2_table(2126) := '4D756C7469706C6553656C656374696F6E2029207B0D0A2020202020202F2F6D756C7469706C652073656C656374696F6E0D0A2020202020206966202820746869732E706C7567696E53657474696E67732E70726F6D70742E6973526170696453656C65';
wwv_flow_api.g_varchar2_table(2127) := '6374696F6E2029207B0D0A0D0A20202020202020206966202820746869732E70726F6D70742E696E7075742E76616C28292E6C656E677468203E20302029207B0D0A202020202020202020202F2F656D707479206D61736B20696E7075740D0A20202020';
wwv_flow_api.g_varchar2_table(2128) := '2020202020202F2F74726967676572206B657920757020746F20706F70756C617465206E6577206175746F636F6D706C6574650D0A20202020202020202020746869732E70726F6D70742E696E7075742E76616C286E756C6C292E747269676765722827';
wwv_flow_api.g_varchar2_table(2129) := '6B6579757027293B0D0A20202020202020207D0D0A20202020202020200D0A2020202020207D0D0A202020202020656C7365207B0D0A20202020202020202F2F6C656E677468206F66206D61736B20696E70757420697320302C20646F206E6F7420666F';
wwv_flow_api.g_varchar2_table(2130) := '726365206E6577206175746F636F6D706C65746520726573756C740D0A2020202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F5741524E494E472C20746869732E6C6F675072656669782C20275F70726F6D7074';
wwv_flow_api.g_varchar2_table(2131) := '53656C65637456616C7565272C20276C656E677468206F66206D61736B20696E70757420697320302C20646F206E6F7420666F726365206E6577206175746F636F6D706C65746520726573756C742E27293B0D0A202020202020202072657475726E2076';
wwv_flow_api.g_varchar2_table(2132) := '6F69642830293B0D0A2020202020207D0D0A202020207D0D0A20202020656C7365207B0D0A2020202020202F2F73696E676C652073656C656374696F6E0D0A2020202020206966202820746869732E706C7567696E53657474696E67732E70726F6D7074';
wwv_flow_api.g_varchar2_table(2133) := '2E6973526170696453656C656374696F6E2029207B0D0A0D0A20202020202020206966202820746869732E70726F6D70742E696E7075742E76616C28292E6C656E677468203E20302029207B0D0A202020202020202020202F2F72617069642073656C65';
wwv_flow_api.g_varchar2_table(2134) := '6374696F6E206973206F6E0D0A20202020202020202020746869732E70726F6D70742E696E7075742E76616C286E756C6C292E7472696767657228276B6579757027293B0D0A20202020202020207D0D0A2020202020202020656C7365207B0D0A202020';
wwv_flow_api.g_varchar2_table(2135) := '202020202020202F2F6C656E677468206F66206D61736B20696E70757420697320302C20646F206E6F7420666F726365206E6577206175746F636F6D706C65746520726573756C740D0A20202020202020207D0D0A2020202020207D0D0A202020202020';
wwv_flow_api.g_varchar2_table(2136) := '656C7365207B0D0A2020202020202020746869732E5F70726F6D7074486964652820746869732E6D61736B2E6974656D436F6E7461696E657220293B20200D0A2020202020207D0D0A202020207D0D0A20207D2C0D0A20202F2A0D0A202020202A0D0A20';
wwv_flow_api.g_varchar2_table(2137) := '2020202A2066756E6374696F6E206E616D653A205F70726F6D7074556E73656C65637456616C75650D0A202020202A206465736372697074696F6E20203A200D0A202020202A20706172616D733A0D0A202020202A2020202D0D0A202020202A2020202D';
wwv_flow_api.g_varchar2_table(2138) := '0D0A202020202A0D0A20202A2F20200D0A20205F70726F6D7074556E73656C65637456616C75653A2066756E6374696F6E28207056616C75652C20704C692C2070547269676765724368616E67654576656E7420297B0D0A20202020617065782E646562';
wwv_flow_api.g_varchar2_table(2139) := '75672E6D65737361676528746869732E435F4C4F475F44454255472C20746869732E6C6F675072656669782C20275F70726F6D7074556E73656C65637456616C7565272C207B0D0A20202020202022617267756D656E7473223A20617267756D656E7473';
wwv_flow_api.g_varchar2_table(2140) := '2C0D0A202020202020227056616C7565223A207056616C75652C0D0A20202020202022704C69223A20704C690D0A202020207D293B0D0A0D0A20202020766172200D0A20202020202076616C7565203D207056616C75652C0D0A202020202020696E6465';
wwv_flow_api.g_varchar2_table(2141) := '784F66203D20746869732E5F6D61736B537461746553656C6563746564476574496E646578282076616C756520292C0D0A20202020202072656D6F766564203D206E756C6C3B0D0A0D0A202020206966202820696E6465784F66203C20302029207B0D0A';
wwv_flow_api.g_varchar2_table(2142) := '202020202020746869732E5F7468726F774572726F725465787428272056616C75652022272B7056616C75652B2722206973206E6F742073656C65637465642127293B0D0A202020207D0D0A0D0A202020206966202820704C6920213D20756E64656669';
wwv_flow_api.g_varchar2_table(2143) := '6E65642029207B0D0A202020202020704C692E72656D6F7665417474722827617269612D73656C656374656427290D0A202020207D0D0A202020200D0A20202020746869732E5F6D61736B537461746553656C656374656452656D6F76652820696E6465';
wwv_flow_api.g_varchar2_table(2144) := '784F6620293B0D0A0D0A20202020746869732E5F70726F6D70744170706C7956616C756573282070547269676765724368616E67654576656E7420293B0D0A20202020746869732E5F74616752656D6F7665546F426544656C65746564282076616C7565';
wwv_flow_api.g_varchar2_table(2145) := '20293B0D0A0D0A0D0A202020206966202820746869732E70726F6D70742E697356697369626C652029207B0D0A202020202020746869732E5F70726F6D70745265706F736974696F6E28293B20200D0A202020207D0D0A20207D2C20200D0A20202F2A0D';
wwv_flow_api.g_varchar2_table(2146) := '0A202020202A0D0A202020202A2066756E6374696F6E206E616D653A205F70726F6D70744170706C7956616C7565730D0A202020202A206465736372697074696F6E20203A200D0A202020202A20706172616D733A0D0A202020202A2020202D0D0A2020';
wwv_flow_api.g_varchar2_table(2147) := '20202A2020202D0D0A202020202A0D0A20202A2F20200D0A20205F70726F6D70744170706C7956616C7565733A2066756E6374696F6E282070547269676765724368616E676520297B0D0A20202020617065782E64656275672E6D657373616765287468';
wwv_flow_api.g_varchar2_table(2148) := '69732E435F4C4F475F44454255472C20746869732E6C6F675072656669782C20275F70726F6D70744170706C7956616C756573272C207B0D0A20202020202022617267756D656E7473223A20617267756D656E74732C0D0A202020202020227054726967';
wwv_flow_api.g_varchar2_table(2149) := '6765724368616E6765223A2070547269676765724368616E67652C0D0A2020202020202276616C756573206C656E67746822203A20746869732E6D61736B2E73746174652E73656C65637465642E6C656E6774682C0D0A2020202020202276616C756573';
wwv_flow_api.g_varchar2_table(2150) := '2220202020202020203A20242E657874656E64285B5D2C20746869732E6D61736B2E73746174652E73656C6563746564290D0A202020207D293B0D0A0D0A202020207661722061727261794F6656616C756573203D205B5D3B0D0A202020200D0A202020';
wwv_flow_api.g_varchar2_table(2151) := '206966202820746869732E6D61736B2E73746174652E73656C65637465642E6C656E677468203E20302029207B0D0A0D0A202020202020666F7220282076617220693D303B20693C20746869732E6D61736B2E73746174652E73656C65637465642E6C65';
wwv_flow_api.g_varchar2_table(2152) := '6E6774683B20692B2B2029207B0D0A202020202020202061727261794F6656616C7565732E707573682820746869732E6D61736B2E73746174652E73656C65637465645B695D2E76616C756520293B0D0A2020202020207D0D0A0D0A2020202020207468';
wwv_flow_api.g_varchar2_table(2153) := '69732E5F656C656D656E7453657456616C7565282061727261794F6656616C7565732E6A6F696E2820746869732E435F56414C55455F534550415241544F52202920293B0D0A2020202020200D0A2020202020202F2F746869732E6D61736B2E73746174';
wwv_flow_api.g_varchar2_table(2154) := '652E73656C65637465642E736F72742820746869732E5F736F72744A736F6E282022646973706C6179222C20746869732E6D61736B2E73746174652E736F72746564202920293B0D0A202020207D0D0A20202020656C7365207B0D0A2020202020207468';
wwv_flow_api.g_varchar2_table(2155) := '69732E5F656C656D656E7453657456616C756528206E756C6C20293B0D0A0D0A202020202020746869732E5F70726F6D7074506C616365486F6C64657253686F7728293B0D0A202020207D0D0A0D0A20202020696620282070547269676765724368616E';
wwv_flow_api.g_varchar2_table(2156) := '67652029207B0D0A202020202020746869732E5F747269676765724576656E7428276368616E6765272C20746869732E5F70726F6D70744765744576656E74446174612829293B0D0A2020202020202F2F617065782E6576656E742E7472696767657228';
wwv_flow_api.g_varchar2_table(2157) := '20746869732E656C656D656E742E6765742830292C20276368616E67652720293B0D0A202020207D0D0A20207D2C0D0A20202F2A0D0A202020202A0D0A202020202A2066756E6374696F6E206E616D653A205F70726F6D7074546167734765744F626A65';
wwv_flow_api.g_varchar2_table(2158) := '63740D0A202020202A206465736372697074696F6E20203A200D0A202020202A20706172616D733A0D0A202020202A2020202D0D0A202020202A2020202D0D0A202020202A0D0A20202A2F20200D0A20205F70726F6D7074546167734765744F626A6563';
wwv_flow_api.g_varchar2_table(2159) := '743A2066756E6374696F6E28207052657475726E20297B0D0A20202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F70726F6D7074546167734765744F62';
wwv_flow_api.g_varchar2_table(2160) := '6A656374272C207B0D0A20202020202022617267756D656E7473223A20617267756D656E74732C0D0A202020202020227052657475726E223A207052657475726E0D0A202020207D293B0D0A0D0A20202020666F7220282076617220693D303B2069203C';
wwv_flow_api.g_varchar2_table(2161) := '20746869732E6D61736B2E73746174652E746167732E6C656E6774683B20692B2B2029207B0D0A2020202020206966202820746869732E6D61736B2E73746174652E746167735B695D2E76616C7565203D3D207052657475726E2029207B0D0A20202020';
wwv_flow_api.g_varchar2_table(2162) := '20202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F70726F6D7074546167734765744F626A656374272C20277052657475726E2068617320696E646578';
wwv_flow_api.g_varchar2_table(2163) := '20272B69293B0D0A202020202020202072657475726E20746869732E6D61736B2E73746174652E746167735B695D3B0D0A2020202020207D0D0A202020207D0D0A0D0A20202020617065782E64656275672E6D65737361676528746869732E435F4C4F47';
wwv_flow_api.g_varchar2_table(2164) := '5F4C4556454C392C20746869732E6C6F675072656669782C20275F70726F6D7074546167734765744F626A656374272C20277052657475726E206973206E6F7420696E2074616773206C69737427293B0D0A0D0A2020202072657475726E20756E646566';
wwv_flow_api.g_varchar2_table(2165) := '696E65643B0D0A0D0A20207D2C0D0A20202F2A0D0A202020202A0D0A202020202A2066756E6374696F6E206E616D653A205F70726F6D707454616773476574496E6465780D0A202020202A206465736372697074696F6E20203A200D0A202020202A2070';
wwv_flow_api.g_varchar2_table(2166) := '6172616D733A0D0A202020202A2020202D0D0A202020202A2020202D0D0A202020202A0D0A20202A2F20200D0A20205F70726F6D707454616773476574496E6465783A2066756E6374696F6E28207052657475726E20297B0D0A20202020617065782E64';
wwv_flow_api.g_varchar2_table(2167) := '656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F70726F6D707454616773476574496E646578272C207B0D0A20202020202022617267756D656E7473223A20617267756D656E';
wwv_flow_api.g_varchar2_table(2168) := '74732C0D0A202020202020227052657475726E223A207052657475726E2C200D0A2020202020202274616773222020203A20746869732E6D61736B2E73746174652E746167730D0A202020207D293B0D0A0D0A20202020666F7220282076617220693D30';
wwv_flow_api.g_varchar2_table(2169) := '3B2069203C20746869732E6D61736B2E73746174652E746167732E6C656E6774683B20692B2B2029207B0D0A2020202020206966202820746869732E6D61736B2E73746174652E746167735B695D2E76616C7565203D3D207052657475726E2029207B0D';
wwv_flow_api.g_varchar2_table(2170) := '0A2020202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F70726F6D707454616773476574496E646578272C20277052657475726E206861732069';
wwv_flow_api.g_varchar2_table(2171) := '6E64657820272B69293B0D0A202020202020202072657475726E20693B0D0A2020202020207D0D0A202020207D0D0A0D0A20202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F6750';
wwv_flow_api.g_varchar2_table(2172) := '72656669782C20275F70726F6D707454616773476574496E646578272C20277052657475726E206973206E6F7420696E2074616773206C69737427293B0D0A0D0A2020202072657475726E202D313B0D0A20207D2C0D0A20202F2A0D0A202020202A0D0A';
wwv_flow_api.g_varchar2_table(2173) := '202020202A2066756E6374696F6E206E616D653A205F70726F6D70744765744C69427952657475726E56616C75650D0A202020202A206465736372697074696F6E20203A200D0A202020202A20706172616D733A0D0A202020202A2020202D0D0A202020';
wwv_flow_api.g_varchar2_table(2174) := '202A2020202D0D0A202020202A0D0A20202A2F20200D0A20205F70726F6D70744765744C69427952657475726E56616C75653A2066756E6374696F6E28207056616C756520297B0D0A20202020617065782E64656275672E6D6573736167652874686973';
wwv_flow_api.g_varchar2_table(2175) := '2E435F4C4F475F4C4556454C362C20746869732E6C6F675072656669782C20275F70726F6D70744765744C69427952657475726E56616C7565272C207B0D0A20202020202022617267756D656E7473223A20617267756D656E74732C0D0A202020202020';
wwv_flow_api.g_varchar2_table(2176) := '227056616C7565223A207056616C75650D0A202020207D293B0D0A0D0A20202020766172206C69203D20746869732E70726F6D70742E626F64792E66696E6428276C6927292E66696C746572282066756E6374696F6E282070496E6465782C2070456C65';
wwv_flow_api.g_varchar2_table(2177) := '6D20297B0D0A20202020202072657475726E20242870456C656D292E617474722827617269612D72657475726E2D76616C756527292E746F537472696E672829203D3D207056616C75652E746F537472696E6728293B0D0A202020207D20293B0D0A0D0A';
wwv_flow_api.g_varchar2_table(2178) := '2020202069662028206C692E6C656E677468203E20302029207B0D0A202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C362C20746869732E6C6F675072656669782C20275F70726F6D70744765744C';
wwv_flow_api.g_varchar2_table(2179) := '69427952657475726E56616C7565272C2027666F756E64206C6920656C656D656E74272C206C69293B0D0A202020207D0D0A20202020656C7365207B0D0A202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C45';
wwv_flow_api.g_varchar2_table(2180) := '56454C362C20746869732E6C6F675072656669782C20275F70726F6D70744765744C69427952657475726E56616C7565272C20277468657265206973206E6F206C6920656C656D656E7420776974682072657475726E2076616C7565272C207056616C75';
wwv_flow_api.g_varchar2_table(2181) := '65293B200D0A202020207D0D0A2020202072657475726E206C693B0D0A20207D2C0D0A20202F2A0D0A202020202A0D0A202020202A2066756E6374696F6E206E616D653A205F74616752656D6F766546726F6D4D61736B0D0A202020202A206465736372';
wwv_flow_api.g_varchar2_table(2182) := '697074696F6E20203A200D0A202020202A20706172616D733A0D0A202020202A2020202D0D0A202020202A2020202D0D0A202020202A0D0A20202A2F20200D0A20205F74616752656D6F766546726F6D4D61736B3A2066756E6374696F6E282070457665';
wwv_flow_api.g_varchar2_table(2183) := '6E7420297B0D0A20202020766172200D0A20202020202076616C7565203D202428704576656E742E746172676574292E636C6F73657374282764697627292E617474722827617269612D72657475726E2D76616C756527293B0D0A0D0A20202020617065';
wwv_flow_api.g_varchar2_table(2184) := '782E64656275672E6D65737361676528746869732E435F4C4F475F44454255472C20746869732E6C6F675072656669782C20275F74616752656D6F766546726F6D4D61736B272C207B0D0A20202020202022617267756D656E7473223A20617267756D65';
wwv_flow_api.g_varchar2_table(2185) := '6E74732C0D0A20202020202022704576656E74223A20704576656E742C0D0A2020202020202276616C7565223A2076616C75652020202020200D0A202020207D293B0D0A0D0A20202020704576656E742E73746F70496D6D65646961746550726F706167';
wwv_flow_api.g_varchar2_table(2186) := '6174696F6E28293B0D0A0D0A202020206966202820746869732E6D61736B2E73746174652E64697361626C65642029207B0D0A202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F5741524E494E472C2074686973';
wwv_flow_api.g_varchar2_table(2187) := '2E6C6F675072656669782C20275F74616752656D6F766546726F6D4D61736B272C202741504558206974656D2069732064697361626C65642C20646F206E6F7468696E672E27293B0D0A202020202020704576656E742E70726576656E7444656661756C';
wwv_flow_api.g_varchar2_table(2188) := '7428293B0D0A202020202020704576656E742E73746F70496D6D65646961746550726F7061676174696F6E28293B0D0A20202020202072657475726E20766F69642830293B0D0A202020207D0D0A0D0A20202020746869732E5F6D61736B537461746553';
wwv_flow_api.g_varchar2_table(2189) := '656C656374656452656D6F76652820746869732E5F6D61736B537461746553656C6563746564476574496E646578282076616C7565202920293B0D0A20202020746869732E5F74616752656D6F7665546F426544656C65746564282076616C756520293B';
wwv_flow_api.g_varchar2_table(2190) := '0D0A20202020746869732E5F70726F6D70744170706C7956616C75657328207472756520293B0D0A0D0A202020206966202820746869732E70726F6D70742E697356697369626C652029207B0D0A202020202020746869732E5F70726F6D70745265706F';
wwv_flow_api.g_varchar2_table(2191) := '736974696F6E28293B0D0A202020202020746869732E5F70726F6D70744765744C69427952657475726E56616C7565282076616C756520292E72656D6F7665417474722827617269612D73656C656374656427290D0A202020202020746869732E5F7072';
wwv_flow_api.g_varchar2_table(2192) := '6F6D7074536574466F63757328293B0D0A202020207D0D0A20207D2C0D0A0D0A20202F2A0D0A202020202A0D0A202020202A2066756E6374696F6E206E616D653A205F74616752656D6F7665546F426544656C657465640D0A202020202A206465736372';
wwv_flow_api.g_varchar2_table(2193) := '697074696F6E20203A200D0A202020202A20706172616D733A0D0A202020202A2020202D0D0A202020202A2020202D0D0A202020202A0D0A20202A2F0D0A20205F74616752656D6F7665546F426544656C657465643A2066756E6374696F6E2820705265';
wwv_flow_api.g_varchar2_table(2194) := '7475726E20297B0D0A20202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C362C20746869732E6C6F675072656669782C20275F74616752656D6F7665546F426544656C65746564272C207B0D0A2020202020';
wwv_flow_api.g_varchar2_table(2195) := '2022617267756D656E7473223A20617267756D656E74732C0D0A202020202020227052657475726E223A207052657475726E0D0A202020207D293B0D0A0D0A20202020766172200D0A202020202020696E6465784F66203D20746869732E5F70726F6D70';
wwv_flow_api.g_varchar2_table(2196) := '7454616773476574496E64657828207052657475726E20292C0D0A202020202020746167203D20756E646566696E65643B0D0A0D0A202020206966202820696E6465784F66203C20302029207B0D0A202020202020617065782E64656275672E6D657373';
wwv_flow_api.g_varchar2_table(2197) := '61676528746869732E435F4C4F475F4C4556454C362C20746869732E6C6F675072656669782C20275F74616752656D6F7665546F426544656C65746564272C2027546167206E6F7420666F756E6427293B2020202020200D0A2020202020207265747572';
wwv_flow_api.g_varchar2_table(2198) := '6E20766F69642830293B0D0A202020207D0D0A0D0A20202020746167203D20746869732E6D61736B2E73746174652E746167735B696E6465784F665D3B0D0A0D0A202020202F2F72656D6F7665207461672066726F6D20646F6D0D0A2020202061706578';
wwv_flow_api.g_varchar2_table(2199) := '2E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C362C20746869732E6C6F675072656669782C20275F74616752656D6F7665546F426544656C65746564272C202774616720746F2062652072656D6F7665642066726F6D2044';
wwv_flow_api.g_varchar2_table(2200) := '4F4D272C20746167293B0D0A202020207461672E636F6E7461696E65722E72656D6F766528293B0D0A0D0A202020202F2F72656D6F7665207461672066726F6D206C697374206F6620746167730D0A20202020746869732E6D61736B2E73746174652E74';
wwv_flow_api.g_varchar2_table(2201) := '6167732E73706C6963652820696E6465784F662C203120293B0D0A20207D2C0D0A0D0A20202F2A0D0A202020202A0D0A202020202A2066756E6374696F6E206E616D653A205F70726F6D7074546167734164644E65770D0A202020202A20646573637269';
wwv_flow_api.g_varchar2_table(2202) := '7074696F6E20203A200D0A202020202A20706172616D733A0D0A202020202A2020202D0D0A202020202A2020202D0D0A202020202A0D0A20202A2F0D0A20205F70726F6D7074546167734164644E65773A2066756E6374696F6E282070446973706C6179';
wwv_flow_api.g_varchar2_table(2203) := '2C207052657475726E2C20704973457874726156616C756520297B0D0A20202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C362C20746869732E6C6F675072656669782C20275F70726F6D70745461677341';
wwv_flow_api.g_varchar2_table(2204) := '64644E6577272C207B0D0A20202020202022617267756D656E7473223A20617267756D656E74732C0D0A2020202020202270446973706C6179222020202020203A2070446973706C61792C0D0A202020202020227052657475726E22202020202020203A';
wwv_flow_api.g_varchar2_table(2205) := '207052657475726E2C0D0A20202020202022704973457874726156616C756522203A20704973457874726156616C75650D0A202020207D293B0D0A0D0A20202020766172200D0A202020202020657874726156616C7565436C617373203D207049734578';
wwv_flow_api.g_varchar2_table(2206) := '74726156616C7565203F202720657874726127203A2027272C0D0A2020202020206E6577546167203D20242827272B0D0A2020202020202020273C64697620636C6173733D22746167272B657874726156616C7565436C6173732B272220617269612D72';
wwv_flow_api.g_varchar2_table(2207) := '657475726E2D76616C75653D22272B7052657475726E2B2722207469746C653D22272B70446973706C61792B27223E272B0D0A20202020202020202720203C7370616E20636C6173733D2276616C7565223E272B70446973706C61792B273C2F7370616E';
wwv_flow_api.g_varchar2_table(2208) := '3E272B0D0A20202020202020202720203C7370616E20636C6173733D2266612066612D74696D65732072656D6F7665223E3C2F7370616E3E272B0D0A2020202020202020273C2F6469763E272B0D0A20202020202020202727292C0D0A2020202020206E';
wwv_flow_api.g_varchar2_table(2209) := '65775461674F626A656374203D207B0D0A20202020202020202276616C7565223A207052657475726E2C0D0A202020202020202022646973706C6179223A2070446973706C61792C0D0A202020202020202022636F6E7461696E6572223A206E65775461';
wwv_flow_api.g_varchar2_table(2210) := '672C0D0A2020202020202020226973457874726156616C7565223A20704973457874726156616C7565203F2074727565203A2066616C73650D0A2020202020207D3B0D0A0D0A20202020746869732E6D61736B2E73746174652E746167732E7075736828';
wwv_flow_api.g_varchar2_table(2211) := '206E65775461674F626A65637420293B0D0A20202020746869732E6D61736B2E74616773436F6E7461696E65722E617070656E6428206E657754616720293B0D0A20207D2C0D0A20202F2A0D0A202020202A0D0A202020202A2066756E6374696F6E206E';
wwv_flow_api.g_varchar2_table(2212) := '616D653A205F70726F6D70745461677353756D6D6172794F70656E53656C65637465640D0A202020202A206465736372697074696F6E20203A200D0A202020202A20706172616D733A0D0A202020202A2020202D0D0A202020202A2020202D0D0A202020';
wwv_flow_api.g_varchar2_table(2213) := '202A0D0A20202A2F20200D0A20205F70726F6D70745461677353756D6D6172794F70656E53656C65637465643A2066756E6374696F6E28297B0D0A20202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F44454255472C20';
wwv_flow_api.g_varchar2_table(2214) := '746869732E6C6F675072656669782C20275F70726F6D70745461677353756D6D6172794F70656E53656C6563746564272C207B0D0A20202020202022617267756D656E7473223A20617267756D656E74732C0D0A202020207D293B0D0A0D0A2020202069';
wwv_flow_api.g_varchar2_table(2215) := '66202820746869732E706C7567696E53657474696E67732E6973506F7075705265706F7274417661696C61626C652029207B0D0A202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F44454255472C20746869732E';
wwv_flow_api.g_varchar2_table(2216) := '6C6F675072656669782C20275F70726F6D70745461677353756D6D6172794F70656E53656C65637465642C20706F707570206E6F7420617661696C61626C652C20646F206E746827293B0D0A0D0A202020202020746869732E706F7075702E73686F7753';
wwv_flow_api.g_varchar2_table(2217) := '656C6563746564436865636B626F782E70726F702827636865636B6564272C2074727565293B0D0A202020202020746869732E5F706F7075704F70656E28293B0D0A202020200D0A202020207D0D0A0D0A20207D2C0D0A20202F2A0D0A202020202A0D0A';
wwv_flow_api.g_varchar2_table(2218) := '202020202A2066756E6374696F6E206E616D653A205F70726F6D70745461677353756D6D6172790D0A202020202A206465736372697074696F6E20203A200D0A202020202A20706172616D733A0D0A202020202A2020202D0D0A202020202A2020202D0D';
wwv_flow_api.g_varchar2_table(2219) := '0A202020202A0D0A20202A2F20200D0A20205F70726F6D70745461677353756D6D6172793A2066756E6374696F6E2820704E6F7452656E6465726564436E7420297B0D0A20202020617065782E64656275672E6D65737361676528746869732E435F4C4F';
wwv_flow_api.g_varchar2_table(2220) := '475F4C4556454C362C20746869732E6C6F675072656669782C20275F70726F6D70745461677353756D6D617279272C207B0D0A20202020202022617267756D656E7473223A20617267756D656E74732C0D0A20202020202022704E6F7452656E64657265';
wwv_flow_api.g_varchar2_table(2221) := '64436E74223A20704E6F7452656E6465726564436E740D0A202020207D293B0D0A0D0A20202020766172200D0A202020202020746578743B0D0A20202020202073756D6D617279546167203D20242827272B0D0A2020202020202020273C64697620636C';
wwv_flow_api.g_varchar2_table(2222) := '6173733D227461672073756D6D617279223E64656661756C742073756D6D6172793C2F6469763E270D0A202020202020293B0D0A0D0A202020206966202820746869732E706C7567696E53657474696E67732E70726F6D70742E617265546167734C696D';
wwv_flow_api.g_varchar2_table(2223) := '6974656420262620746869732E706C7567696E53657474696E67732E70726F6D70742E746167734E6F203E20302029207B0D0A20202020202074657874203D20746869732E435F544147535F4C494D495445445F4F54484552532E7265706C6163652820';
wwv_flow_api.g_varchar2_table(2224) := '272530272C20704E6F7452656E6465726564436E7420293B0D0A202020207D0D0A20202020656C7365207B0D0A20202020202074657874203D20746869732E435F544147535F4C494D495445445F302E7265706C6163652820272530272C20704E6F7452';
wwv_flow_api.g_varchar2_table(2225) := '656E6465726564436E74293B0D0A202020207D0D0A0D0A2020202073756D6D6172795461672E7465787428207465787420293B0D0A0D0A2020202073756D6D6172795461672E6F6E2827636C69636B272C2066756E6374696F6E28704576656E74297B20';
wwv_flow_api.g_varchar2_table(2226) := '704576656E742E73746F70496D6D65646961746550726F7061676174696F6E28293B207D293B0D0A2020202073756D6D6172795461672E6F6E282764626C636C69636B272C20242E70726F787928746869732E5F70726F6D70745461677353756D6D6172';
wwv_flow_api.g_varchar2_table(2227) := '794F70656E53656C65637465642C207468697329293B0D0A0D0A20202020746869732E6D61736B2E74616773436F6E7461696E65722E617070656E64282073756D6D61727954616720293B0D0A20207D2C0D0A20202F2A0D0A202020202A0D0A20202020';
wwv_flow_api.g_varchar2_table(2228) := '2A2066756E6374696F6E206E616D653A205F70726F6D7074436865636B436C69636B4F7574736964650D0A202020202A206465736372697074696F6E20203A200D0A202020202A20706172616D733A0D0A202020202A2020202D0D0A202020202A202020';
wwv_flow_api.g_varchar2_table(2229) := '2D0D0A202020202A0D0A20202A2F20200D0A20205F70726F6D7074436865636B436C69636B4F7574736964653A2066756E6374696F6E2820704576656E7420297B0D0A20202020617065782E64656275672E6D65737361676528746869732E435F4C4F47';
wwv_flow_api.g_varchar2_table(2230) := '5F4C4556454C362C20746869732E6C6F675072656669782C20275F70726F6D7074436865636B436C69636B4F757473696465272C207B0D0A20202020202022617267756D656E7473223A20617267756D656E74732C0D0A20202020202022704576656E74';
wwv_flow_api.g_varchar2_table(2231) := '222020202020202020202020202020203A20704576656E742C0D0A20202020202022704576656E742E63757272656E7454617267657422203A20704576656E742E63757272656E745461726765742C0D0A20202020202022704576656E742E7461726765';
wwv_flow_api.g_varchar2_table(2232) := '742220202020202020203A20704576656E742E7461726765740D0A202020207D293B0D0A0D0A2020202069662028200D0A202020202020242E636F6E7461696E732820746869732E70726F6D70742E636F6E7461696E65722E6765742830292C20704576';
wwv_flow_api.g_varchar2_table(2233) := '656E742E7461726765742029200D0A2020202020207C7C20242E636F6E7461696E732820746869732E6D61736B2E636F6E7461696E65722E6765742830292C20704576656E742E74617267657420290D0A2020202020207C7C202428704576656E742E74';
wwv_flow_api.g_varchar2_table(2234) := '6172676574292E697328272E72656D6F766527290D0A2020202020207C7C2077696E646F772E67657453656C656374696F6E28292E746F537472696E6728292E6C656E677468203E20300D0A2020202029207B0D0A20202020202072657475726E20766F';
wwv_flow_api.g_varchar2_table(2235) := '69642830293B0D0A202020207D0D0A20202020656C7365207B0D0A2020202020202F2F646F6E277420666F63757320616E7920656C656D656E742C20656E642D7573657220636C69636B6564206F75747369646520706C7567696E20646F6D206E6F6465';
wwv_flow_api.g_varchar2_table(2236) := '730D0A202020202020746869732E5F70726F6D7074486964652820756E646566696E656420293B0D0A202020207D0D0A0D0A20207D2C20200D0A20202F2A0D0A202020202A0D0A202020202A2066756E6374696F6E206E616D653A205F6765744E657874';
wwv_flow_api.g_varchar2_table(2237) := '466F63757341626C650D0A202020202A206465736372697074696F6E20203A200D0A202020202A20706172616D733A0D0A202020202A2020202D0D0A202020202A2020202D0D0A202020202A0D0A20202A2F20200D0A20205F6765744E657874466F6375';
wwv_flow_api.g_varchar2_table(2238) := '7341626C653A2066756E6374696F6E28297B0D0A20202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C362C20746869732E6C6F675072656669782C20275F6765744E657874466F63757341626C65272C207B';
wwv_flow_api.g_varchar2_table(2239) := '0D0A20202020202022617267756D656E7473223A20617267756D656E74730D0A202020207D293B0D0A0D0A20202020766172207461626261626C654172722C20696E6465784F662C206E6578743B0D0A0D0A20202020746869732E656C656D656E742E73';
wwv_flow_api.g_varchar2_table(2240) := '686F7728293B0D0A202020200D0A202020207461626261626C65417272203D202428273A7461626261626C6527292E746F417272617928293B0D0A20202020696E6465784F66203D207461626261626C654172722E696E6465784F662820746869732E65';
wwv_flow_api.g_varchar2_table(2241) := '6C656D656E742E67657428302920293B0D0A202020206E657874203D207461626261626C654172725B20696E6465784F662B31205D3B0D0A0D0A20202020746869732E656C656D656E742E6869646528293B0D0A0D0A2020202072657475726E2024286E';
wwv_flow_api.g_varchar2_table(2242) := '657874293B0D0A0D0A20207D2C0D0A0D0A20202F2A0D0A202020202A0D0A202020202A2066756E6374696F6E206E616D653A205F70726F6D70744E617669676174654172726F77730D0A202020202A206465736372697074696F6E20203A200D0A202020';
wwv_flow_api.g_varchar2_table(2243) := '202A20706172616D733A0D0A202020202A2020202D0D0A202020202A2020202D0D0A202020202A0D0A20202A2F0D0A20205F70726F6D70744E617669676174654172726F77733A2066756E6374696F6E282070446972656374696F6E20297B0D0A202020';
wwv_flow_api.g_varchar2_table(2244) := '20617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F70726F6D70744E617669676174654172726F7773272C207B0D0A20202020202022617267756D656E747322';
wwv_flow_api.g_varchar2_table(2245) := '3A20617267756D656E74732C0D0A2020202020202270446972656374696F6E223A2070446972656374696F6E0D0A202020207D293B0D0A0D0A20202020766172200D0A202020202020726573756C747352656E6465726564203D20746869732E70726F6D';
wwv_flow_api.g_varchar2_table(2246) := '70742E626F64792E66696E6428276C6927292E6C656E6774682C0D0A202020202020616C6C50726576203D20746869732E6D61736B2E73746174652E63757272656E7453656C656374696F6E2E70726576416C6C28292E6C656E6774682C0D0A20202020';
wwv_flow_api.g_varchar2_table(2247) := '2020616C6C4E657874203D20746869732E6D61736B2E73746174652E63757272656E7453656C656374696F6E2E6E657874416C6C28292E6C656E6774682C0D0A2020202020207363726F6C6C746F70203D20746869732E70726F6D70742E626F64792E73';
wwv_flow_api.g_varchar2_table(2248) := '63726F6C6C546F7028292C0D0A202020202020686569676874546F546F70426F726465722C0D0A2020202020206E6578742C0D0A202020202020706F736974696F6E2C0D0A2020202020207363726F6C6C56616C75653B0D0A0D0A202020206966202820';
wwv_flow_api.g_varchar2_table(2249) := '70446972656374696F6E203D3D2027444F574E272029207B0D0A2020202020206E657874203D20746869732E6D61736B2E73746174652E63757272656E7453656C656374696F6E2E6E65787428293B0D0A202020207D0D0A20202020656C736520696620';
wwv_flow_api.g_varchar2_table(2250) := '282070446972656374696F6E203D3D202755502720297B0D0A2020202020206E657874203D20746869732E6D61736B2E73746174652E63757272656E7453656C656374696F6E2E7072657628293B0D0A202020207D0D0A20202020656C7365207B0D0A20';
wwv_flow_api.g_varchar2_table(2251) := '202020202072657475726E20766F69642830293B0D0A2020202020202F2F0D0A202020207D0D0A0D0A20202020706F736974696F6E203D206E6578742E706F736974696F6E28293B0D0A0D0A2020202069662028206E6578742E6C656E677468203E2030';
wwv_flow_api.g_varchar2_table(2252) := '2029207B0D0A202020202020746869732E5F70726F6D7074486967686C696768744C6928206E65787420293B20200D0A0D0A202020202020686569676874546F546F70426F72646572203D20706F736974696F6E2E746F702D7363726F6C6C746F703B0D';
wwv_flow_api.g_varchar2_table(2253) := '0A0D0A2020202020206966202820686569676874546F546F70426F72646572203E3D203020262620686569676874546F546F70426F72646572203C3D20746869732E706C7567696E53657474696E67732E70726F6D70742E6D61784865696768742D6E65';
wwv_flow_api.g_varchar2_table(2254) := '78742E6F7574657248656967687428292029207B0D0A20202020202020202F2F646F206E6F7468696E672C206C6920656C656D656E742069732066756C6C792076697369626C650D0A2020202020207D0D0A202020202020656C7365207B0D0A20202020';
wwv_flow_api.g_varchar2_table(2255) := '20202020696620282070446972656374696F6E203D3D2027444F574E272029207B0D0A202020202020202020207363726F6C6C56616C7565203D2028207363726F6C6C746F70202B2028686569676874546F546F70426F726465722B6E6578742E6F7574';
wwv_flow_api.g_varchar2_table(2256) := '65724865696768742829202D20746869732E706C7567696E53657474696E67732E70726F6D70742E6D617848656967687429202920200D0A20202020202020207D0D0A2020202020202020656C7365207B0D0A202020202020202020207363726F6C6C56';
wwv_flow_api.g_varchar2_table(2257) := '616C7565203D207363726F6C6C746F70202B20686569676874546F546F70426F726465723B0D0A20202020202020207D0D0A0D0A2020202020202020746869732E70726F6D70742E626F64792E7363726F6C6C546F7028207363726F6C6C56616C756520';
wwv_flow_api.g_varchar2_table(2258) := '293B20200D0A2020202020207D0D0A202020207D0D0A20202020656C7365207B0D0A2020202020206966202820726573756C747352656E6465726564203C20746869732E6D61736B2E73746174652E746F74616C436F756E742029207B0D0A2020202020';
wwv_flow_api.g_varchar2_table(2259) := '202020746869732E5F70726F6D7074416A6178506572666F726D28202B2B746869732E6D61736B2E73746174652E6C617374466574636865645061676520293B0D0A2020202020207D0D0A0D0A202020207D0D0A202020200D0A20207D2C0D0A20202F2A';
wwv_flow_api.g_varchar2_table(2260) := '0D0A202020202A0D0A202020202A2066756E6374696F6E206E616D653A205F70726F6D70744C69436C69636B48616E6C6465720D0A202020202A206465736372697074696F6E20203A200D0A202020202A20706172616D733A0D0A202020202A2020202D';
wwv_flow_api.g_varchar2_table(2261) := '0D0A202020202A2020202D0D0A202020202A0D0A20202A2F20200D0A20205F70726F6D70744C69436C69636B48616E6C6465723A2066756E6374696F6E2820704576656E7420297B0D0A20202020617065782E64656275672E6D65737361676528746869';
wwv_flow_api.g_varchar2_table(2262) := '732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F70726F6D70744C69436C69636B48616E6C646572272C207B0D0A20202020202022617267756D656E7473223A20617267756D656E74732C0D0A202020202020227045';
wwv_flow_api.g_varchar2_table(2263) := '76656E74223A20704576656E740D0A202020207D293B0D0A0D0A20202020766172200D0A202020202020746172676574203D202428704576656E742E746172676574292E697328276C692729203F202428704576656E742E74617267657429203A202428';
wwv_flow_api.g_varchar2_table(2264) := '704576656E742E746172676574292E636C6F7365737428276C6927293B0D0A0D0A2020202069662028207461726765742E697328275B617269612D73656C65637465643D2274727565225D27292029207B0D0A202020202020746869732E5F70726F6D70';
wwv_flow_api.g_varchar2_table(2265) := '74556E73656C65637456616C756528207461726765742E617474722827617269612D72657475726E2D76616C756527292C207461726765742C207472756520293B0D0A202020207D0D0A20202020656C7365207B0D0A202020202020617065782E646562';
wwv_flow_api.g_varchar2_table(2266) := '75672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F70726F6D70744C69436C69636B48616E6C6465722063757272656E746C792073656C6563746564206974656D733A20272C207468';
wwv_flow_api.g_varchar2_table(2267) := '69732E6D61736B2E73746174652E73656C65637465642E6C656E6774682C20746869732E6D61736B2E73746174652E73656C6563746564293B0D0A0D0A202020202020746869732E5F70726F6D707453656C65637456616C756528207461726765742029';
wwv_flow_api.g_varchar2_table(2268) := '3B0D0A202020207D0D0A202020200D0A0D0A20207D2C0D0A0D0A20202F2A0D0A202020202A0D0A202020202A2066756E6374696F6E206E616D653A205F6D61736B48616E646C65466F6375730D0A202020202A206465736372697074696F6E20203A200D';
wwv_flow_api.g_varchar2_table(2269) := '0A202020202A20706172616D733A0D0A202020202A2020202D0D0A202020202A2020202D0D0A202020202A0D0A20202A2F0D0A20205F6D61736B48616E646C65466F6375733A2066756E6374696F6E2820704576656E7420297B0D0A2020202061706578';
wwv_flow_api.g_varchar2_table(2270) := '2E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F6D61736B48616E646C65466F637573272C207B0D0A20202020202022617267756D656E7473223A20617267756D656E74';
wwv_flow_api.g_varchar2_table(2271) := '732C0D0A20202020202022704576656E74223A20704576656E740D0A202020207D293B0D0A0D0A20207D2C0D0A20202F2A0D0A202020202A0D0A202020202A2066756E6374696F6E206E616D653A205F6D61736B48616E646C65426C75720D0A20202020';
wwv_flow_api.g_varchar2_table(2272) := '2A206465736372697074696F6E20203A200D0A202020202A20706172616D733A0D0A202020202A2020202D0D0A202020202A2020202D0D0A202020202A0D0A20202A2F20200D0A20205F6D61736B48616E646C65426C75723A2066756E6374696F6E2820';
wwv_flow_api.g_varchar2_table(2273) := '704576656E7420297B0D0A20202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F6D61736B48616E646C65426C7572272C207B0D0A202020202020226172';
wwv_flow_api.g_varchar2_table(2274) := '67756D656E7473223A20617267756D656E74732C0D0A20202020202022704576656E74223A20704576656E740D0A202020207D293B0D0A0D0A20207D2C0D0A20202F2A0D0A202020202A0D0A202020202A2066756E6374696F6E206E616D653A205F6D61';
wwv_flow_api.g_varchar2_table(2275) := '736B48616E646C654B6579446F776E0D0A202020202A206465736372697074696F6E20203A200D0A202020202A20706172616D733A0D0A202020202A2020202D0D0A202020202A2020202D0D0A202020202A0D0A20202A2F20200D0A20205F6D61736B48';
wwv_flow_api.g_varchar2_table(2276) := '616E646C654B6579446F776E3A2066756E6374696F6E2820704576656E7420297B0D0A20202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F44454255472C20746869732E6C6F675072656669782C20275F6D61736B4861';
wwv_flow_api.g_varchar2_table(2277) := '6E646C654B6579446F776E272C207B0D0A20202020202022617267756D656E7473223A20617267756D656E74732C0D0A20202020202022704576656E74223A20704576656E740D0A202020207D293B0D0A0D0A202020207661720D0A2020202020206B65';
wwv_flow_api.g_varchar2_table(2278) := '79436F6465203D20704576656E742E6B6579436F64652C0D0A20202020202069734E617669676174696F6E446972656374696F6E203D20746869732E5F69734E617669676174696F6E4B657928206B6579436F646520293B0D0A0D0A2020202069662028';
wwv_flow_api.g_varchar2_table(2279) := '2069734E617669676174696F6E446972656374696F6E203D3D2027444F574E272029207B0D0A202020202020746869732E5F70726F6D7074536561726368496E707574466F63757348616E646C657228293B0D0A202020207D0D0A0D0A20207D2C0D0A20';
wwv_flow_api.g_varchar2_table(2280) := '202F2A0D0A202020202A0D0A202020202A2066756E6374696F6E206E616D653A205F6D61736B48616E646C654B657950726573730D0A202020202A206465736372697074696F6E20203A200D0A202020202A20706172616D733A0D0A202020202A202020';
wwv_flow_api.g_varchar2_table(2281) := '2D0D0A202020202A2020202D0D0A202020202A0D0A20202A2F20200D0A20205F6D61736B48616E646C654B657950726573733A2066756E6374696F6E2820704576656E7420297B0D0A20202020617065782E64656275672E6D6573736167652874686973';
wwv_flow_api.g_varchar2_table(2282) := '2E435F4C4F475F44454255472C20746869732E6C6F675072656669782C20275F6D61736B48616E646C654B65795072657373272C207B0D0A20202020202022617267756D656E7473223A20617267756D656E74732C0D0A20202020202022704576656E74';
wwv_flow_api.g_varchar2_table(2283) := '223A20704576656E740D0A202020207D293B0D0A0D0A20202020696620282021746869732E706C7567696E53657474696E67732E69734175746F636F6D706C657465417661696C61626C652029207B0D0A202020202020617065782E64656275672E6D65';
wwv_flow_api.g_varchar2_table(2284) := '737361676528746869732E435F4C4F475F5741524E494E472C20746869732E6C6F675072656669782C20275F6D61736B48616E646C654B65795072657373272C20274175746F636F6D706C657465206973206E6F7420617661696C61626C6527293B0D0A';
wwv_flow_api.g_varchar2_table(2285) := '20202020202072657475726E20766F69642830293B0D0A202020207D0D0A0D0A202020206966202820704576656E742E6B6579436F646520213D2031332029207B0D0A202020202020746869732E70726F6D70742E696E7075742E76616C282070457665';
wwv_flow_api.g_varchar2_table(2286) := '6E742E6B657920290D0A202020207D0D0A0D0A20202020746869732E70726F6D70742E696E7075742E7472696767657228276B6579757027293B0D0A0D0A20202020746869732E5F70726F6D707453686F7728293B0D0A0D0A202020202F2F7462642074';
wwv_flow_api.g_varchar2_table(2287) := '696D656F75740D0A2020202073657454696D656F75742820242E70726F7879282066756E6374696F6E28297B0D0A202020202020746869732E5F70726F6D7074536574466F63757328293B0D0A202020207D2C207468697320292C2031303020293B0D0A';
wwv_flow_api.g_varchar2_table(2288) := '20207D2C0D0A20202F2A0D0A202020202A0D0A202020202A2066756E6374696F6E206E616D653A205F70726F6D7074536561726368496E707574466F63757348616E646C65720D0A202020202A206465736372697074696F6E20203A200D0A202020202A';
wwv_flow_api.g_varchar2_table(2289) := '20706172616D733A0D0A202020202A2020202D0D0A202020202A2020202D0D0A202020202A0D0A20202A2F20200D0A20205F70726F6D7074536561726368496E707574466F63757348616E646C65723A2066756E6374696F6E2820704576656E7420297B';
wwv_flow_api.g_varchar2_table(2290) := '0D0A20202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F44454255472C20746869732E6C6F675072656669782C20275F70726F6D7074536561726368496E707574466F63757348616E646C6572272C207B0D0A20202020';
wwv_flow_api.g_varchar2_table(2291) := '202022617267756D656E7473223A20617267756D656E74732C0D0A20202020202022704576656E74223A20704576656E740D0A202020207D293B0D0A0D0A202020206966202820746869732E6D61736B2E73746174652E64697361626C65642029207B0D';
wwv_flow_api.g_varchar2_table(2292) := '0A202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F5741524E494E472C20746869732E6C6F675072656669782C20275F70726F6D7074536561726368496E707574466F63757348616E646C6572272C2027415045';
wwv_flow_api.g_varchar2_table(2293) := '58206974656D2069732064697361626C65642C20646F206E6F7468696E672E27293B0D0A20202020202072657475726E20766F69642830293B0D0A202020207D0D0A0D0A20202020696620282021746869732E706C7567696E53657474696E67732E6973';
wwv_flow_api.g_varchar2_table(2294) := '4175746F636F6D706C657465417661696C61626C652029207B0D0A202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F5741524E494E472C20746869732E6C6F675072656669782C20275F70726F6D707453656172';
wwv_flow_api.g_varchar2_table(2295) := '6368496E707574466F63757348616E646C6572272C20274175746F636F6D706C657465206973206E6F7420617661696C61626C6527293B0D0A20202020202072657475726E20766F69642830293B0D0A202020207D0D0A0D0A2020202069662028202174';
wwv_flow_api.g_varchar2_table(2296) := '6869732E70726F6D70742E697356697369626C652029207B0D0A202020202020746869732E5F70726F6D707453686F7728293B0D0A0D0A202020202020696620280D0A2020202020202020746869732E706C7567696E53657474696E67732E70726F6D70';
wwv_flow_api.g_varchar2_table(2297) := '742E69734D696E696D616C496E7075744C656E6774680D0A2020202020202020262620746869732E706C7567696E53657474696E67732E70726F6D70742E6D696E696D616C496E7075744C656E677468203D3D20300D0A202020202020297B0D0A202020';
wwv_flow_api.g_varchar2_table(2298) := '2020202020746869732E5F70726F6D7074447261774D696E696D616C496E7075744C656E6774682820746869732E435F50524F4D50545F544558545F4D494E494D414C5F494E5055545F4C454E4754485F3020293B0D0A2020202020207D0D0A20202020';
wwv_flow_api.g_varchar2_table(2299) := '2020656C73652069662028200D0A2020202020202020746869732E706C7567696E53657474696E67732E70726F6D70742E69734D696E696D616C496E7075744C656E677468200D0A2020202020202020262620746869732E5F70726F6D707449734D696E';
wwv_flow_api.g_varchar2_table(2300) := '696D616C496E7075744C656E6774684D61746368656428290D0A20202020202029207B0D0A2020202020202020746869732E5F70726F6D7074447261774D696E696D616C496E7075744C656E6774682820746869732E435F50524F4D50545F544558545F';
wwv_flow_api.g_varchar2_table(2301) := '4D494E494D414C5F494E5055545F4C454E4754485F5820293B0D0A2020202020207D0D0A202020202020656C7365207B0D0A2020202020202020746869732E5F70726F6D7074416A6178506572666F726D28293B0D0A2020202020207D0D0A202020207D';
wwv_flow_api.g_varchar2_table(2302) := '0D0A20202020656C7365207B0D0A202020202020746869732E5F70726F6D70745265706F736974696F6E28293B0D0A202020207D0D0A20200D0A20202020746869732E5F70726F6D7074536574466F63757328293B0D0A20207D2C0D0A20202F2A0D0A20';
wwv_flow_api.g_varchar2_table(2303) := '2020202A0D0A202020202A2066756E6374696F6E206E616D653A205F70726F6D707449734D696E696D616C496E7075744C656E6774684D6174636865640D0A202020202A206465736372697074696F6E20203A200D0A202020202A20706172616D733A0D';
wwv_flow_api.g_varchar2_table(2304) := '0A202020202A2020202D0D0A202020202A2020202D0D0A202020202A0D0A20202A2F20200D0A20205F70726F6D707449734D696E696D616C496E7075744C656E6774684D6174636865643A2066756E6374696F6E28297B0D0A20202020617065782E6465';
wwv_flow_api.g_varchar2_table(2305) := '6275672E6D65737361676528746869732E435F4C4F475F4C4556454C362C20746869732E6C6F675072656669782C20275F70726F6D707449734D696E696D616C496E7075744C656E6774684D617463686564272C207B0D0A20202020202022617267756D';
wwv_flow_api.g_varchar2_table(2306) := '656E7473223A20617267756D656E74730D0A202020207D293B0D0A0D0A202020207661722072657475726E56616C7565203D20746869732E706C7567696E53657474696E67732E70726F6D70742E6D696E696D616C496E7075744C656E677468203E2074';
wwv_flow_api.g_varchar2_table(2307) := '6869732E70726F6D70742E696E7075742E76616C28292E6C656E6774683B0D0A0D0A20202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C362C20746869732E6C6F675072656669782C20275F70726F6D7074';
wwv_flow_api.g_varchar2_table(2308) := '49734D696E696D616C496E7075744C656E6774684D6174636865642072657475726E73272C2072657475726E56616C7565293B0D0A2020202072657475726E2072657475726E56616C75653B0D0A20207D2C0D0A20202F2A0D0A202020202A0D0A202020';
wwv_flow_api.g_varchar2_table(2309) := '202A2066756E6374696F6E206E616D653A205F736F72744A736F6E0D0A202020202A206465736372697074696F6E0D0A202020202A20706172616D733A0D0A202020202A2020202D0D0A202020202A2020202D0D0A202020202A0D0A20202A2F20200D0A';
wwv_flow_api.g_varchar2_table(2310) := '20205F736F72744A736F6E3A2066756E6374696F6E28207050726F70657274792C2070446972656374696F6E20297B0D0A20202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F6750';
wwv_flow_api.g_varchar2_table(2311) := '72656669782C20275F736F72744A736F6E272C207B0D0A20202020202022617267756D656E7473223A20617267756D656E74732C0D0A202020202020227050726F7065727479223A207050726F70657274792C0D0A202020202020227044697265637469';
wwv_flow_api.g_varchar2_table(2312) := '6F6E223A2070446972656374696F6E0D0A202020207D293B0D0A0D0A2020202076617220736F72744F726465723B0D0A0D0A20202020696620282070446972656374696F6E203D3D2027617363272029207B0D0A202020202020736F72744F7264657220';
wwv_flow_api.g_varchar2_table(2313) := '3D20313B0D0A202020207D0D0A20202020656C7365207B0D0A202020202020736F72744F72646572203D202D313B0D0A202020207D0D0A0D0A2020202072657475726E2066756E6374696F6E2028612C6229207B0D0A2020202020202020766172207265';
wwv_flow_api.g_varchar2_table(2314) := '73756C74203D2028615B7050726F70657274795D203C20625B7050726F70657274795D29203F202D31203A2028615B7050726F70657274795D203E20625B7050726F70657274795D29203F2031203A20303B0D0A202020202020202072657475726E2072';
wwv_flow_api.g_varchar2_table(2315) := '6573756C74202A20736F72744F726465723B0D0A202020207D0D0A0D0A20207D2C0D0A20202F2A0D0A202020202A0D0A202020202A2066756E6374696F6E206E616D653A205F686967686C69676874576F72640D0A202020202A20646573637269707469';
wwv_flow_api.g_varchar2_table(2316) := '6F6E0D0A202020202A20706172616D733A0D0A202020202A2020202D0D0A202020202A2020202D0D0A202020202A0D0A20202A2F20200D0A20205F686967686C69676874576F72643A2066756E6374696F6E282070546578742C20705365617263685374';
wwv_flow_api.g_varchar2_table(2317) := '72696E6720297B0D0A20202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F686967686C69676874576F7264272C207B0D0A20202020202022617267756D';
wwv_flow_api.g_varchar2_table(2318) := '656E747322203A20617267756D656E74732C0D0A202020202020227054657874222020202020202020203A2070546578742C0D0A2020202020202270536561726368537472696E6722203A2070536561726368537472696E670D0A202020207D293B0D0A';
wwv_flow_api.g_varchar2_table(2319) := '0D0A20202020766172200D0A20202020202074657874203D2070546578742C0D0A202020202020736561726368537472696E67203D2070536561726368537472696E672C0D0A202020202020726573756C74546578742C0D0A202020202020706F736974';
wwv_flow_api.g_varchar2_table(2320) := '696F6E203D20746578742E746F55707065724361736528292E696E6465784F662820736561726368537472696E672E746F557070657243617365282920292C0D0A20202020202073746172742C0D0A2020202020206D6964646C652C0D0A202020202020';
wwv_flow_api.g_varchar2_table(2321) := '656E643B0D0A0D0A0D0A202020206966202820706F736974696F6E203E202D312029207B0D0A20202020202073746172742020203D20746578742E73756273747228302C20706F736974696F6E20293B0D0A2020202020206D6964646C6520203D207465';
wwv_flow_api.g_varchar2_table(2322) := '78742E7375627374722873746172742E6C656E6774682C20736561726368537472696E672E6C656E677468293B0D0A202020202020656E6420202020203D20746578742E73756273747228706F736974696F6E2B6D6964646C652E6C656E6774682C2074';
wwv_flow_api.g_varchar2_table(2323) := '6578742E6C656E677468293B0D0A20202020202072657475726E2073746172742B273C7370616E20636C6173733D22686967686C69676874223E272B6D6964646C652B273C2F7370616E3E272B656E643B0D0A202020207D0D0A20202020656C7365207B';
wwv_flow_api.g_varchar2_table(2324) := '0D0A20202020202072657475726E2070546578743B0D0A202020207D0D0A20207D2C0D0A20202F2A0D0A202020202A0D0A202020202A2066756E6374696F6E206E616D653A205F6765744974656D436F6E7461696E65720D0A202020202A206465736372';
wwv_flow_api.g_varchar2_table(2325) := '697074696F6E0D0A202020202A20706172616D733A0D0A202020202A2020202D0D0A202020202A2020202D0D0A202020202A0D0A20202A2F20200D0A20205F6765744974656D436F6E7461696E65723A2066756E6374696F6E28297B0D0A202020207661';
wwv_flow_api.g_varchar2_table(2326) := '722072657475726E4F626A656374203D20746869732E6D61736B2E636F6E7461696E65722E66696E6428272E6974656D436F6E7461696E657227293B0D0A0D0A20202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C45';
wwv_flow_api.g_varchar2_table(2327) := '56454C392C20746869732E6C6F675072656669782C20275F6765744974656D436F6E7461696E6572272C207B0D0A20202020202022617267756D656E7473223A20617267756D656E74732C0D0A2020202020202272657475726E223A2072657475726E4F';
wwv_flow_api.g_varchar2_table(2328) := '626A6563740D0A202020207D293B0D0A0D0A2020202072657475726E2072657475726E4F626A6563740D0A20207D2C0D0A0D0A20202F2A0D0A202020202A0D0A202020202A2066756E6374696F6E206E616D653A205F69734E617669676174696F6E4B65';
wwv_flow_api.g_varchar2_table(2329) := '790D0A202020202A206465736372697074696F6E0D0A202020202A20706172616D733A0D0A202020202A2020202D0D0A202020202A2020202D0D0A202020202A0D0A20202A2F20200D0A20205F69734E617669676174696F6E4B65793A2066756E637469';
wwv_flow_api.g_varchar2_table(2330) := '6F6E2820704B6579436F64652029207B0D0A20202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F69734E617669676174696F6E4B6579272C207B0D0A20';
wwv_flow_api.g_varchar2_table(2331) := '202020202022617267756D656E7473223A20617267756D656E74732C0D0A20202020202022704B6579436F6465223A20704B6579436F64650D0A202020207D293B0D0A0D0A202020207661722072657475726E56616C7565203D2066616C73653B0D0A0D';
wwv_flow_api.g_varchar2_table(2332) := '0A202020206966202820704B6579436F6465203D3D2034302029207B0D0A20202020202072657475726E56616C7565203D2027444F574E273B0D0A202020207D0D0A20202020656C7365206966202820704B6579436F6465203D3D2033382029207B0D0A';
wwv_flow_api.g_varchar2_table(2333) := '20202020202072657475726E56616C7565203D20275550273B0D0A202020207D0D0A20202020656C7365206966202820704B6579436F6465203D3D2033372029207B0D0A20202020202072657475726E56616C7565203D20274C454654273B0D0A202020';
wwv_flow_api.g_varchar2_table(2334) := '207D0D0A20202020656C7365206966202820704B6579436F6465203D3D2033392029207B0D0A20202020202072657475726E56616C7565203D20275249474854273B0D0A202020207D0D0A0D0A20202020656C7365207B0D0A2020202020207265747572';
wwv_flow_api.g_varchar2_table(2335) := '6E56616C7565203D2066616C73653B0D0A202020207D0D0A20202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F69734E617669676174696F6E4B657927';
wwv_flow_api.g_varchar2_table(2336) := '2C202272657475726E73222C2072657475726E56616C7565293B0D0A0D0A2020202072657475726E2072657475726E56616C75653B0D0A20207D2C0D0A20202F2A0D0A202020202A0D0A202020202A2066756E6374696F6E206E616D653A205F6D61736B';
wwv_flow_api.g_varchar2_table(2337) := '47657456616C75650D0A202020202A206465736372697074696F6E0D0A202020202A20706172616D733A0D0A202020202A2020202D0D0A202020202A2020202D0D0A202020202A0D0A20202A2F20200D0A20205F6D61736B47657456616C75653A206675';
wwv_flow_api.g_varchar2_table(2338) := '6E6374696F6E28297B0D0A202020207661722072657475726E56616C7565203D20746869732E70726F6D70742E696E7075742E76616C28293B0D0A0D0A20202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C';
wwv_flow_api.g_varchar2_table(2339) := '362C20746869732E6C6F675072656669782C20275F6D61736B47657456616C7565272C207B0D0A20202020202022617267756D656E7473223A20617267756D656E74732C0D0A2020202020202272657475726E223A2072657475726E56616C75650D0A20';
wwv_flow_api.g_varchar2_table(2340) := '2020207D293B0D0A0D0A2020202072657475726E2072657475726E56616C75653B0D0A20207D2C0D0A20202F2A0D0A202020202A0D0A202020202A2066756E6374696F6E206E616D653A205F6D61736B4B657955704D616E61676549636F6E730D0A2020';
wwv_flow_api.g_varchar2_table(2341) := '20202A206465736372697074696F6E0D0A202020202A20706172616D733A0D0A202020202A2020202D0D0A202020202A2020202D0D0A202020202A0D0A20202A2F20200D0A20205F6D61736B4B657955704D616E61676549636F6E733A2066756E637469';
wwv_flow_api.g_varchar2_table(2342) := '6F6E28297B0D0A20202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F6D61736B4B657955704D616E61676549636F6E73272C207B0D0A20202020202022';
wwv_flow_api.g_varchar2_table(2343) := '617267756D656E7473223A20617267756D656E74730D0A202020207D293B0D0A0D0A202020206966202820746869732E706F7075702E7365617263682E76616C28292E6C656E677468203D3D20302029207B0D0A202020202020746869732E706F707570';
wwv_flow_api.g_varchar2_table(2344) := '2E7365617263682E616464436C6173732827656D70747927293B0D0A202020207D0D0A20202020656C7365207B0D0A202020202020746869732E706F7075702E7365617263682E72656D6F7665436C6173732827656D70747927293B0D0A202020207D0D';
wwv_flow_api.g_varchar2_table(2345) := '0A20207D2C0D0A20202F2A0D0A202020202A0D0A202020202A2066756E6374696F6E206E616D653A205F70726F6D7074496E7075744B6579446F776E48616E646C65720D0A202020202A206465736372697074696F6E0D0A202020202A20706172616D73';
wwv_flow_api.g_varchar2_table(2346) := '3A0D0A202020202A2020202D0D0A202020202A2020202D0D0A202020202A0D0A20202A2F20200D0A20205F70726F6D7074496E7075744B6579446F776E48616E646C65723A2066756E6374696F6E2820704576656E7420297B0D0A20202020617065782E';
wwv_flow_api.g_varchar2_table(2347) := '64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F70726F6D7074496E7075744B6579446F776E48616E646C6572272C207B0D0A20202020202022617267756D656E7473223A';
wwv_flow_api.g_varchar2_table(2348) := '20617267756D656E74732C0D0A20202020202022704576656E74223A20704576656E740D0A202020207D293B0D0A0D0A20202020766172200D0A2020202020206B6579436F6465203D20704576656E742E6B6579436F64652C0D0A20202020202069734E';
wwv_flow_api.g_varchar2_table(2349) := '617669676174696F6E446972656374696F6E203D20746869732E5F69734E617669676174696F6E4B657928206B6579436F646520293B0D0A0D0A202020206966202820704576656E742E73686966744B65792029207B0D0A20202020202072657475726E';
wwv_flow_api.g_varchar2_table(2350) := '2066616C73653B0D0A202020207D0D0A0D0A2020202069662028206B6579436F6465203D3D20392029207B0D0A202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F67507265';
wwv_flow_api.g_varchar2_table(2351) := '6669782C20275F70726F6D7074496E7075744B6579446F776E48616E646C6572272C2027544142206B657920707265737365642E27293B0D0A202020202020746869732E5F70726F6D7074486964652820746869732E6D61736B2E706F70757042757474';
wwv_flow_api.g_varchar2_table(2352) := '6F6E20293B0D0A202020207D2020202020200D0A20202020656C73652069662028206B6579436F6465203D3D20323729207B0D0A2020202020202F2F7768656E20657363617065206F722074616220707265737365640D0A202020202020617065782E64';
wwv_flow_api.g_varchar2_table(2353) := '656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F70726F6D7074496E7075744B6579446F776E48616E646C6572272C2027455343415045206B657920707265737365642E2729';
wwv_flow_api.g_varchar2_table(2354) := '3B0D0A202020202020746869732E5F70726F6D7074486964652820746869732E6D61736B2E6974656D436F6E7461696E657220293B0D0A2020202020200D0A20202020202072657475726E2066616C73653B0D0A202020207D0D0A20202020656C736520';
wwv_flow_api.g_varchar2_table(2355) := '696620282069734E617669676174696F6E446972656374696F6E2029207B0D0A0D0A2020202020206966202820746869732E6D61736B2E73746174652E617265526573756C7473417661696C61626C652029207B0D0A2020202020202020704576656E74';
wwv_flow_api.g_varchar2_table(2356) := '2E70726576656E7444656661756C7428293B0D0A2020202020202020704576656E742E73746F70496D6D65646961746550726F7061676174696F6E28293B0D0A0D0A2020202020202020746869732E5F70726F6D70744E617669676174654172726F7773';
wwv_flow_api.g_varchar2_table(2357) := '282069734E617669676174696F6E446972656374696F6E20293B20200D0A2020202020207D0D0A202020202020656C7365207B0D0A2020202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C2074';
wwv_flow_api.g_varchar2_table(2358) := '6869732E6C6F675072656669782C20275F70726F6D7074496E7075744B6579446F776E48616E646C6572272C20276E6F20726573756C747320617661696C61626C6527293B20202020202020200D0A2020202020207D0D0A202020207D0D0A20207D2C20';
wwv_flow_api.g_varchar2_table(2359) := '200D0A20202F2A0D0A202020202A0D0A202020202A2066756E6374696F6E206E616D653A205F6D61736B4B657955700D0A202020202A206465736372697074696F6E0D0A202020202A20706172616D733A0D0A202020202A2020202D0D0A202020202A20';
wwv_flow_api.g_varchar2_table(2360) := '20202D0D0A202020202A0D0A20202A2F20200D0A20205F6D61736B4B657955703A2066756E6374696F6E2820704576656E7420297B0D0A20202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869';
wwv_flow_api.g_varchar2_table(2361) := '732E6C6F675072656669782C20275F6D61736B4B65795570272C207B0D0A20202020202022617267756D656E7473223A20617267756D656E74732C0D0A20202020202022704576656E74223A20704576656E740D0A202020207D293B0D0A0D0A20202020';
wwv_flow_api.g_varchar2_table(2362) := '766172200D0A2020202020206B6579436F6465203D20704576656E742E6B6579436F64652C0D0A20202020202069734E617669676174696F6E446972656374696F6E203D20746869732E5F69734E617669676174696F6E4B657928206B6579436F646520';
wwv_flow_api.g_varchar2_table(2363) := '292C0D0A202020202020686967686C696768746564203D20746869732E5F70726F6D70744765744869676C69676874656428293B0D0A0D0A2020202069662028206B6579436F6465203D3D20392029207B0D0A202020202020617065782E64656275672E';
wwv_flow_api.g_varchar2_table(2364) := '6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F6D61736B4B65795570272C2027544142206B65792072656C65617365642E20446F206E6F7420706572666F726D206175746F636F6D706C';
wwv_flow_api.g_varchar2_table(2365) := '65746520626563617573652069742077617320616C726561647927293B0D0A20202020202072657475726E2066616C73653B200D0A202020207D0D0A0D0A2020202069662028206B6579436F6465203D3D2031362029207B0D0A20202020202061706578';
wwv_flow_api.g_varchar2_table(2366) := '2E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F6D61736B4B65795570272C20275348494654206B65792072656C65617365642E20446F206E6F7420706572666F726D20';
wwv_flow_api.g_varchar2_table(2367) := '6175746F636F6D706C65746527293B0D0A20202020202072657475726E2066616C73653B200D0A202020207D0D0A0D0A20202020696620282069734E617669676174696F6E446972656374696F6E2029207B0D0A20202020202072657475726E2066616C';
wwv_flow_api.g_varchar2_table(2368) := '73653B0D0A202020207D0D0A20202020656C73652069662028206B6579436F6465203D3D2031332029207B0D0A202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F67507265';
wwv_flow_api.g_varchar2_table(2369) := '6669782C20275F6D61736B4B65795570272C2027656E746572207072657373656427293B0D0A0D0A2020202020206966202820746869732E6D61736B2E73746174652E617265526573756C7473417661696C61626C65203D3D2066616C73652029207B0D';
wwv_flow_api.g_varchar2_table(2370) := '0A2020202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F6D61736B4B65795570272C2027726573756C747320617265206E6F7420796574206176';
wwv_flow_api.g_varchar2_table(2371) := '61696C61626C6527293B20202020202020200D0A202020202020202072657475726E2066616C73653B0D0A2020202020207D0D0A0D0A2020202020206966202820686967686C6967687465642E697328275B617269612D73656C65637465643D22747275';
wwv_flow_api.g_varchar2_table(2372) := '65225D27292029207B0D0A2020202020202020746869732E5F70726F6D7074556E73656C65637456616C75652820686967686C6967687465642E617474722827617269612D72657475726E2D76616C756527292C20686967686C6967687465642C207472';
wwv_flow_api.g_varchar2_table(2373) := '756520293B0D0A2020202020207D0D0A202020202020656C7365207B0D0A2020202020202020746869732E5F70726F6D707453656C65637456616C75652820686967686C69676874656420293B0D0A2020202020207D0D0A2020202020200D0A20202020';
wwv_flow_api.g_varchar2_table(2374) := '202072657475726E2066616C73653B0D0A202020207D0D0A0D0A20202020696620280D0A202020202020746869732E706C7567696E53657474696E67732E70726F6D70742E69734D696E696D616C496E7075744C656E6774680D0A202020202020262620';
wwv_flow_api.g_varchar2_table(2375) := '746869732E706C7567696E53657474696E67732E70726F6D70742E6D696E696D616C496E7075744C656E677468203D3D20300D0A202020202020262620746869732E70726F6D70742E696E7075742E76616C28292E6C656E677468203D3D20300D0A2020';
wwv_flow_api.g_varchar2_table(2376) := '2020297B0D0A202020202020746869732E5F70726F6D7074447261774D696E696D616C496E7075744C656E6774682820746869732E435F50524F4D50545F544558545F4D494E494D414C5F494E5055545F4C454E4754485F3020293B0D0A202020207D0D';
wwv_flow_api.g_varchar2_table(2377) := '0A20202020656C73652069662028200D0A202020202020746869732E706C7567696E53657474696E67732E70726F6D70742E69734D696E696D616C496E7075744C656E677468200D0A202020202020262620746869732E5F70726F6D707449734D696E69';
wwv_flow_api.g_varchar2_table(2378) := '6D616C496E7075744C656E6774684D61746368656428290D0A2020202029207B0D0A202020202020746869732E5F70726F6D7074447261774D696E696D616C496E7075744C656E6774682820746869732E435F50524F4D50545F544558545F4D494E494D';
wwv_flow_api.g_varchar2_table(2379) := '414C5F494E5055545F4C454E4754485F5820293B0D0A202020207D0D0A20202020656C7365207B0D0A202020202020746869732E5F70726F6D7074416A6178506572666F726D28293B20200D0A202020207D0D0A202020200D0A202020200D0A20207D2C';
wwv_flow_api.g_varchar2_table(2380) := '0D0A20202F2A0D0A202020202A0D0A202020202A2066756E6374696F6E206E616D653A205F636865636B496644617461436F6E7461696E73446973706C6179436F6C756D6E0D0A202020202A206465736372697074696F6E0D0A202020202A2070617261';
wwv_flow_api.g_varchar2_table(2381) := '6D733A0D0A202020202A2020202D0D0A202020202A2020202D0D0A202020202A0D0A20202A2F20200D0A20205F636865636B496644617461436F6E7461696E73446973706C6179436F6C756D6E3A2066756E6374696F6E282070446174612029207B0D0A';
wwv_flow_api.g_varchar2_table(2382) := '20202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F636865636B496644617461436F6E7461696E73446973706C6179436F6C756D6E272C207B0D0A2020';
wwv_flow_api.g_varchar2_table(2383) := '2020202022617267756D656E7473223A20617267756D656E74732C0D0A202020202020227044617461223A2070446174610D0A202020207D293B0D0A0D0A2020202076617220657869737473203D2066616C73653B0D0A0D0A20202020666F7220282076';
wwv_flow_api.g_varchar2_table(2384) := '6172206920696E2070446174612E646174612029207B0D0A2020202020206966202870446174612E646174615B695D2E4420213D20756E646566696E656429207B0D0A2020202020202020657869737473203D20747275653B0D0A202020202020202062';
wwv_flow_api.g_varchar2_table(2385) := '7265616B3B0D0A2020202020207D0D0A202020207D0D0A0D0A2020202072657475726E206578697374733B0D0A20207D2C0D0A20202F2A0D0A202020202A0D0A202020202A2066756E6374696F6E206E616D653A205F636865636B496644617461436F6E';
wwv_flow_api.g_varchar2_table(2386) := '7461696E7352657475726E436F6C756D6E0D0A202020202A206465736372697074696F6E0D0A202020202A20706172616D733A0D0A202020202A2020202D0D0A202020202A2020202D0D0A202020202A0D0A20202A2F20200D0A20205F636865636B4966';
wwv_flow_api.g_varchar2_table(2387) := '44617461436F6E7461696E7352657475726E436F6C756D6E3A2066756E6374696F6E282070446174612029207B0D0A20202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F67507265';
wwv_flow_api.g_varchar2_table(2388) := '6669782C20275F636865636B496644617461436F6E7461696E7352657475726E436F6C756D6E272C207B0D0A20202020202022617267756D656E7473223A20617267756D656E74732C0D0A202020202020227044617461223A2070446174610D0A202020';
wwv_flow_api.g_varchar2_table(2389) := '207D293B0D0A0D0A2020202076617220657869737473203D2066616C73653B0D0A0D0A20202020666F72202820766172206920696E2070446174612E646174612029207B0D0A2020202020206966202870446174612E646174615B695D2E5220213D2075';
wwv_flow_api.g_varchar2_table(2390) := '6E646566696E656429207B0D0A2020202020202020657869737473203D20747275653B0D0A2020202020202020627265616B3B0D0A2020202020207D0D0A202020207D0D0A0D0A2020202072657475726E206578697374733B0D0A20207D2C0D0A20202F';
wwv_flow_api.g_varchar2_table(2391) := '2A0D0A202020202A0D0A202020202A2066756E6374696F6E206E616D653A205F6765745363726F6C6C50657263656E740D0A202020202A206465736372697074696F6E0D0A202020202A20706172616D733A0D0A202020202A2020202D0D0A202020202A';
wwv_flow_api.g_varchar2_table(2392) := '2020202D0D0A202020202A0D0A20202A2F20200D0A20205F6765745363726F6C6C50657263656E743A2066756E6374696F6E282070456C656D656E742C20704D617848656967687420297B0D0A20202020617065782E64656275672E6D65737361676528';
wwv_flow_api.g_varchar2_table(2393) := '746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F6765745363726F6C6C50657263656E74272C207B0D0A20202020202022617267756D656E7473223A20617267756D656E74732C0D0A2020202020202270456C';
wwv_flow_api.g_varchar2_table(2394) := '656D656E742220203A2070456C656D656E742C0D0A20202020202022704D6178486569676874223A20704D61784865696768740D0A202020207D293B0D0A0D0A20202020766172200D0A2020202020207363726F6C6C6564203D2070456C656D656E742E';
wwv_flow_api.g_varchar2_table(2395) := '7363726F6C6C546F7028292C0D0A2020202020207265616C486569676874203D2070456C656D656E742E6368696C6472656E28292E6F757465724865696768742829202D20704D61784865696768742C0D0A20202020202070657263656E74203B0D0A0D';
wwv_flow_api.g_varchar2_table(2396) := '0A2020202070657263656E74203D207363726F6C6C6564202A20313030202F207265616C4865696768743B0D0A2020202070657263656E74203D2070657263656E74203E20313030203F20313030203A2070657263656E743B0D0A0D0A20202020617065';
wwv_flow_api.g_varchar2_table(2397) := '782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F6765745363726F6C6C50657263656E74272C207B0D0A20202020202027726573756C74273A2070657263656E740D0A';
wwv_flow_api.g_varchar2_table(2398) := '202020207D293B0D0A0D0A2020202072657475726E2070657263656E743B0D0A20207D2C0D0A0D0A20202F2A0D0A202020202A0D0A202020202A2066756E6374696F6E206E616D653A205F6372656174654974656D506F707570427574746F6E0D0A2020';
wwv_flow_api.g_varchar2_table(2399) := '20202A206465736372697074696F6E0D0A202020202A20706172616D733A0D0A202020202A2020202D0D0A202020202A2020202D0D0A202020202A0D0A20202A2F0D0A20205F6372656174654974656D506F707570427574746F6E3A2066756E6374696F';
wwv_flow_api.g_varchar2_table(2400) := '6E28297B0D0A20202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F6372656174654974656D506F707570427574746F6E272C207B0D0A20202020202022';
wwv_flow_api.g_varchar2_table(2401) := '617267756D656E7473223A20617267756D656E74730D0A202020207D293B0D0A0D0A202020202F2F0D0A20202020766172200D0A202020202020627574746F6E203D202428273C627574746F6E3E3C2F627574746F6E3E27292C0D0A2020202020206963';
wwv_flow_api.g_varchar2_table(2402) := '6F6E203D202428273C7370616E3E3C2F7370616E3E27293B0D0A0D0A2020202069636F6E2E616464436C617373282027666120272B746869732E6F7074696F6E732E6974656D2E69636F6E20293B0D0A0D0A20202020627574746F6E2E616464436C6173';
wwv_flow_api.g_varchar2_table(2403) := '732827612D427574746F6E20612D427574746F6E2D2D706F7075704C4F5627293B0D0A20202020627574746F6E2E6174747228276964272C20746869732E6F7074696F6E732E6974656D2E6E616D652B275F425554544F4E2720293B0D0A202020206275';
wwv_flow_api.g_varchar2_table(2404) := '74746F6E2E6174747228276F6E636C69636B272C20276A6176617363726970743A2072657475726E2066616C73653B27290D0A20202020627574746F6E2E617070656E64282069636F6E20293B0D0A0D0A2020202072657475726E20627574746F6E3B0D';
wwv_flow_api.g_varchar2_table(2405) := '0A20207D2C0D0A20202F2A0D0A202020202A0D0A202020202A2066756E6374696F6E206E616D653A205F6372656174654974656D416A6178427574746F6E0D0A202020202A206465736372697074696F6E0D0A202020202A20706172616D733A0D0A2020';
wwv_flow_api.g_varchar2_table(2406) := '20202A2020202D0D0A202020202A2020202D0D0A202020202A0D0A20202A2F20200D0A20205F6372656174654974656D416A6178427574746F6E3A2066756E6374696F6E28297B0D0A20202020617065782E64656275672E6D6573736167652874686973';
wwv_flow_api.g_varchar2_table(2407) := '2E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F6372656174654974656D416A6178427574746F6E272C207B0D0A20202020202022617267756D656E7473223A20617267756D656E74730D0A202020207D293B0D0A2020';
wwv_flow_api.g_varchar2_table(2408) := '20200D0A20202020766172200D0A202020202020627574746F6E203D202428273C627574746F6E3E3C2F627574746F6E3E27292C0D0A20202020202069636F6E203D202428273C7370616E3E3C2F7370616E3E27293B0D0A0D0A2020202069636F6E2E61';
wwv_flow_api.g_varchar2_table(2409) := '6464436C61737328202766612066612D7365617263682069636F6E2720293B0D0A0D0A20202020627574746F6E2E616464436C6173732827612D427574746F6E20612D427574746F6E2D2D616A6178496E64696361746F7220612D427574746F6E2D2D70';
wwv_flow_api.g_varchar2_table(2410) := '6F7075704C4F5627293B0D0A20202020627574746F6E2E6174747228276964272C20746869732E6F7074696F6E732E6974656D2E6E616D652B275F425554544F4E5F414A41582720293B0D0A20202020627574746F6E2E6174747228276F6E636C69636B';
wwv_flow_api.g_varchar2_table(2411) := '272C20276A6176617363726970743A2072657475726E2066616C73653B27290D0A20202020627574746F6E2E617070656E64282069636F6E20293B0D0A0D0A2020202072657475726E20627574746F6E3B0D0A20207D2C20200D0A20202F2A0D0A202020';
wwv_flow_api.g_varchar2_table(2412) := '202A0D0A202020202A2066756E6374696F6E206E616D653A205F6D61736B4765744D696E57696474680D0A202020202A206465736372697074696F6E0D0A202020202A20706172616D733A0D0A202020202A2020202D0D0A202020202A2020202D0D0A20';
wwv_flow_api.g_varchar2_table(2413) := '2020202A0D0A20202A2F20200D0A20205F6D61736B4765744D696E57696474683A2066756E6374696F6E28297B0D0A20202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F67507265';
wwv_flow_api.g_varchar2_table(2414) := '6669782C20275F6D61736B4765744D696E5769647468272C207B0D0A20202020202022617267756D656E7473223A20617267756D656E74732C0D0A20202020202027656C656D656E74273A20746869732E656C656D656E742E6765742830290D0A202020';
wwv_flow_api.g_varchar2_table(2415) := '207D293B0D0A0D0A20202020766172200D0A20202020202072657475726E56616C75652C0D0A202020202020636C6F6E6564203D20746869732E656C656D656E742E636C6F6E652866616C7365293B0D0A0D0A202020206966202820746869732E656C65';
wwv_flow_api.g_varchar2_table(2416) := '6D656E742E697328273A76697369626C6527292029207B0D0A20202020202072657475726E56616C7565203D20746869732E656C656D656E742E6F75746572576964746828293B0D0A202020202020617065782E64656275672E6D657373616765287468';
wwv_flow_api.g_varchar2_table(2417) := '69732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F6D61736B4765744D696E5769647468272C20276974656D2069732076697369626C652C206D696E2D776964746820736574206261736564206F6E206F7574657220';
wwv_flow_api.g_varchar2_table(2418) := '7769647468206F662076697369626C65206974656D2E27293B0D0A202020207D0D0A20202020656C7365207B0D0A202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F5741524E494E472C20746869732E6C6F6750';
wwv_flow_api.g_varchar2_table(2419) := '72656669782C20275F6D61736B4765744D696E5769647468272C20276F6E2070616765206C6F6164206974656D2069732068696464656E2E2044657465726D696E6520697473206D696E2D7769647468206261736564206F6E20636C6F6E656420656C65';
wwv_flow_api.g_varchar2_table(2420) := '6D656E7420617070656E64656420746F20626F64792E27293B0D0A202020202020242827626F647927292E617070656E6428636C6F6E6564293B0D0A20202020202072657475726E56616C7565203D20636C6F6E65642E6F75746572576964746828293B';
wwv_flow_api.g_varchar2_table(2421) := '0D0A202020202020636C6F6E65642E72656D6F766528293B0D0A202020207D0D0A0D0A20202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20746869732E6C6F675072656669782C20275F6D61736B47';
wwv_flow_api.g_varchar2_table(2422) := '65744D696E5769647468272C207B0D0A20202020202022617267756D656E7473223A20617267756D656E74732C0D0A20202020202027656C656D656E74273A20746869732E656C656D656E742E6765742830292C0D0A2020202020202272657475726E56';
wwv_flow_api.g_varchar2_table(2423) := '616C7565223A2072657475726E56616C75650D0A202020207D293B0D0A0D0A2020202072657475726E2072657475726E56616C75653B0D0A20207D2C0D0A20202F2A0D0A202020202A0D0A202020202A2066756E6374696F6E206E616D653A205F6D6173';
wwv_flow_api.g_varchar2_table(2424) := '6B4372656174654E65770D0A202020202A206465736372697074696F6E0D0A202020202A20706172616D733A0D0A202020202A2020202D0D0A202020202A2020202D0D0A202020202A0D0A20202A2F20200D0A20205F6D61736B4372656174654E65773A';
wwv_flow_api.g_varchar2_table(2425) := '2066756E6374696F6E28297B0D0A20202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C362C20746869732E6C6F675072656669782C20275F6D61736B4372656174654E6577272C207B0D0A20202020202022';
wwv_flow_api.g_varchar2_table(2426) := '617267756D656E7473223A20617267756D656E74732C0D0A20202020202027656C656D656E74273A20746869732E656C656D656E742E6765742830290D0A202020207D293B0D0A202020200D0A20202020766172200D0A2020202020206D696E57696474';
wwv_flow_api.g_varchar2_table(2427) := '68202020203D20302C0D0A202020202020636C6F6E65642C0D0A202020202020636C617373657320202020203D20746869732E656C656D656E742E6765742830292E617474726962757465732E636C61737320213D20756E646566696E6564203F207468';
wwv_flow_api.g_varchar2_table(2428) := '69732E656C656D656E742E6765742830292E617474726962757465732E636C6173732E76616C75652E73706C69742827202729203A205B5D2C0D0A2020202020206D61736B4C617965722020203D202428273C64697620636C6173733D226D61736B696E';
wwv_flow_api.g_varchar2_table(2429) := '67223E3C2F6469763E27292C0D0A202020202020706F707570427574746F6E203D20746869732E5F6372656174654974656D506F707570427574746F6E28292C0D0A202020202020616A61785374617465427574746F6E203D20746869732E5F63726561';
wwv_flow_api.g_varchar2_table(2430) := '74654974656D416A6178427574746F6E28292C0D0A20202020202070616C6365686F6C64657254657874203D20746869732E656C656D656E742E617474722827706C616365686F6C6465722729203D3D20756E646566696E6564203F202222203A207468';
wwv_flow_api.g_varchar2_table(2431) := '69732E656C656D656E742E617474722827706C616365686F6C64657227292C0D0A202020202020706C616365686F6C646572203D202428273C64697620636C6173733D22706C616365686F6C646572223E272B70616C6365686F6C646572546578742B27';
wwv_flow_api.g_varchar2_table(2432) := '3C2F6469763E27292C0D0A202020202020636F6E7461696E6572203D202428273C6469763E3C2F6469763E27292C0D0A2020202020206974656D436F6E7461696E6572203D202428273C6469763E3C2F6469763E27292C0D0A2020202020206974656D43';
wwv_flow_api.g_varchar2_table(2433) := '6F6E7461696E6572426F6479203D202428273C6469763E3C2F6469763E27292C0D0A20202020202074616773436F6E7465696E6572203D202428273C6469763E3C2F6469763E27292C0D0A20202020202072657475726E4F626A6563743B0D0A0D0A2020';
wwv_flow_api.g_varchar2_table(2434) := '2020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C362C20746869732E6C6F675072656669782C20275F6D61736B4372656174654E6577272C2027636C6173736573272C20636C6173736573293B0D0A0D0A2020';
wwv_flow_api.g_varchar2_table(2435) := '2020636F6E7461696E65720D0A2020202020202E616464436C6173732827707265746975732D2D656E68616E6365644C6F764974656D206D61736B27293B0D0A0D0A20202020666F722028766172206920696E20636C617373657329207B0D0A20202020';
wwv_flow_api.g_varchar2_table(2436) := '2020636F6E7461696E65722E616464436C6173732820636C61737365735B695D2B272D6D61736B2720293B20200D0A202020207D0D0A2020202020200D0A202020206974656D436F6E7461696E65720D0A2020202020202E616464436C61737328276974';
wwv_flow_api.g_varchar2_table(2437) := '656D436F6E7461696E657227290D0A2020202020202F2F2E6373732827626F72646572436F6C6F72272C20746869732E696E7075744373732E626F72646572436F6C6F72293B0D0A0D0A202020202F2F6966202820746869732E706C7567696E53657474';
wwv_flow_api.g_varchar2_table(2438) := '696E67732E69734175746F636F6D706C657465417661696C61626C65203D3D20747275652029207B0D0A2020202020202F2F696E2063617365206F6620706F707570207265706F7274206973206E6F7420617661696C61626C652C206D616B65206D6173';
wwv_flow_api.g_varchar2_table(2439) := '6B20666F63757361626C650D0A2020202020202F2F736F2074686520656E642D757365722063616E206E6176696761746520746F206669656C64207573696E6720746162206B65790D0A2020202020206974656D436F6E7461696E65722E61747472287B';
wwv_flow_api.g_varchar2_table(2440) := '0D0A202020202020202027746162696E646578273A20302C0D0A202020202020202027646174612D6D61736B273A20746869732E776964676574556E6971756549640D0A2020202020207D293B0D0A202020202F2F7D0D0A0D0A202020206974656D436F';
wwv_flow_api.g_varchar2_table(2441) := '6E7461696E6572426F64790D0A2020202020202E616464436C61737328276974656D436F6E7461696E6572426F647927290D0A2020202020202E617070656E64282074616773436F6E7465696E65722E616464436C617373282774616773272920290D0A';
wwv_flow_api.g_varchar2_table(2442) := '2020202020202E617070656E6428206D61736B4C6179657220290D0A2020202020202E617070656E64546F28206974656D436F6E7461696E657220293B0D0A0D0A202020206974656D436F6E7461696E65722E617070656E642820706C616365686F6C64';
wwv_flow_api.g_varchar2_table(2443) := '657220293B0D0A0D0A202020206974656D436F6E7461696E65722E617070656E64546F2820636F6E7461696E657220293B0D0A0D0A202020206966202820746869732E706C7567696E53657474696E67732E6973506F7075705265706F7274417661696C';
wwv_flow_api.g_varchar2_table(2444) := '61626C652029207B0D0A202020202020706F707570427574746F6E2E6F6E2827636C69636B272C20242E70726F787928746869732E5F706F7075704F70656E4279427574746F6E2C207468697329293B0D0A2020202020206974656D436F6E7461696E65';
wwv_flow_api.g_varchar2_table(2445) := '722E61667465722820706F707570427574746F6E20293B0D0A202020207D0D0A20200D0A202020206974656D436F6E7461696E65722E61667465722820616A61785374617465427574746F6E2E68696465282920293B0D0A0D0A202020202F2F7472616E';
wwv_flow_api.g_varchar2_table(2446) := '7366657220726573756C74207769647468206F662041504558206974656D2061667465722072656E646572696E672074686520656C656D656E740D0A20202020636F6E7461696E65722E637373287B0D0A202020202020226D696E576964746822203A20';
wwv_flow_api.g_varchar2_table(2447) := '746869732E5F6D61736B4765744D696E576964746828292C0D0A202020202020226D696E486569676874223A20746869732E656C656D656E742E6F7574657248656967687428290D0A202020207D293B2020202020200D0A0D0A2020202072657475726E';
wwv_flow_api.g_varchar2_table(2448) := '4F626A656374203D207B0D0A20202020202022636F6E7461696E6572222020202020202020203A20636F6E7461696E65722C0D0A202020202020226974656D436F6E7461696E65722220202020203A206974656D436F6E7461696E65722C0D0A20202020';
wwv_flow_api.g_varchar2_table(2449) := '2020226974656D436F6E7461696E6572426F647922203A206974656D436F6E7461696E6572426F64792C0D0A2020202020202274616773436F6E7461696E65722220202020203A2074616773436F6E7465696E65722C0D0A20202020202022706C616365';
wwv_flow_api.g_varchar2_table(2450) := '686F6C64657222202020202020203A20706C616365686F6C6465722C0D0A20202020202022706F707570427574746F6E22202020202020203A20706F707570427574746F6E2C0D0A20202020202022616A61785374617465427574746F6E222020203A20';
wwv_flow_api.g_varchar2_table(2451) := '7B0D0A202020202020202022627574746F6E223A20616A61785374617465427574746F6E2C0D0A2020202020202020226572726F724D657373616765223A20756E646566696E65642C0D0A20202020202020202269734572726F72223A2066616C73650D';
wwv_flow_api.g_varchar2_table(2452) := '0A2020202020207D2C0D0A2020202020202F2F0D0A202020202020226669656C64436F6E7461696E65722220202020202020203A2024282723272B746869732E6F7074696F6E732E6974656D2E6E616D652B275F434F4E5441494E455227292C0D0A2020';
wwv_flow_api.g_varchar2_table(2453) := '20202020226C6162656C2220202020202020202020202020202020203A202428275B666F723D272B746869732E6F7074696F6E732E6974656D2E6E616D652B275D27292C0D0A202020202020226C6162656C576964746822202020202020202020202020';
wwv_flow_api.g_varchar2_table(2454) := '3A202428275B666F723D272B746869732E6F7074696F6E732E6974656D2E6E616D652B275D27292E6F75746572576964746828292C0D0A202020202020227374617465223A207B0D0A202020202020202022786872222020202020202020202020202020';
wwv_flow_api.g_varchar2_table(2455) := '2020203A20756E646566696E65642C0D0A202020202020202022697356697369626C652220202020202020202020203A2066616C73652C0D0A20202020202020202263757272656E7453656172636854657874222020203A2027272C0D0A202020202020';
wwv_flow_api.g_varchar2_table(2456) := '2020226C61737446657463686564506167652220202020203A206E756C6C2C0D0A202020202020202022746F74616C436F756E7422202020202020202020203A20302C0D0A202020202020202022616A617852756E6E696E67222020202020202020203A';
wwv_flow_api.g_varchar2_table(2457) := '2066616C73652C0D0A20202020202020202263757272656E7453656C656374696F6E22202020203A20756E646566696E65642C0D0A202020202020202022617265526573756C7473417661696C61626C6522203A2066616C73652C0D0A20202020202020';
wwv_flow_api.g_varchar2_table(2458) := '202273656C6563746564222020202020202020202020203A205B5D2C0D0A2020202020202020227461677322202020202020202020202020202020203A205B5D2C0D0A202020202020202022736F727465642220202020202020202020202020203A2075';
wwv_flow_api.g_varchar2_table(2459) := '6E646566696E65642C0D0A20202020202020202264697361626C6564222020202020202020202020203A2066616C73652C0D0A202020202020202022657874726156616C756573222020202020202020203A205B5D2C0D0A202020202020202022657272';
wwv_flow_api.g_varchar2_table(2460) := '6F72222020202020202020202020202020203A2066616C73650D0A2020202020207D0D0A202020207D3B0D0A0D0A20202020696620282072657475726E4F626A6563742E6669656C64436F6E7461696E65722E697328272E742D466F726D2D6669656C64';
wwv_flow_api.g_varchar2_table(2461) := '436F6E7461696E65722D2D666C6F6174696E674C6162656C27292029207B0D0A20202020202072657475726E4F626A6563742E6669656C64436F6E7461696E65722E616464436C617373282769732D61637469766527293B0D0A202020207D0D0A0D0A20';
wwv_flow_api.g_varchar2_table(2462) := '20202072657475726E4F626A6563742E6974656D436F6E7461696E65720D0A2020202020202E6F6E2827636C69636B272C20202020242E70726F78792820746869732E5F70726F6D7074536561726368496E707574466F63757348616E646C65722C2074';
wwv_flow_api.g_varchar2_table(2463) := '686973202920290D0A2020202020202E6F6E2827666F637573272C20202020242E70726F78792820746869732E5F6D61736B48616E646C65466F6375732C2074686973202920290D0A2020202020202E6F6E2827626C7572272C2020202020242E70726F';
wwv_flow_api.g_varchar2_table(2464) := '78792820746869732E5F6D61736B48616E646C65426C75722C2074686973202920290D0A2020202020202E6F6E28276B65797072657373272C20242E70726F78792820746869732E5F6D61736B48616E646C654B657950726573732C2074686973202920';
wwv_flow_api.g_varchar2_table(2465) := '290D0A2020202020202E6F6E28276B6579646F776E272C2020242E70726F78792820746869732E5F6D61736B48616E646C654B6579446F776E2C2074686973202920293B0D0A0D0A202020202F2F6C697374656E20746F206576656E7420636C69636B20';
wwv_flow_api.g_varchar2_table(2466) := '6F6E202278222069636F6E20696E207461670D0A2020202072657475726E4F626A6563742E74616773436F6E7461696E65722E6F6E2827636C69636B272C20272E72656D6F7665272C20242E70726F78792820746869732E5F74616752656D6F76654672';
wwv_flow_api.g_varchar2_table(2467) := '6F6D4D61736B2C2074686973202920293B0D0A0D0A2020202072657475726E4F626A6563742E706F707570427574746F6E2E6F6E28276B6579646F776E272C20242E70726F78792820746869732E5F6D61736B506F707570427574746F6E4B6579446F77';
wwv_flow_api.g_varchar2_table(2468) := '6E2C2074686973202920293B0D0A0D0A2020202072657475726E2072657475726E4F626A6563743B0D0A20207D2C0D0A20202F2A0D0A202020202A0D0A202020202A2066756E6374696F6E206E616D653A205F77726974655175657279546F436F6E736F';
wwv_flow_api.g_varchar2_table(2469) := '6C650D0A202020202A206465736372697074696F6E0D0A202020202A20706172616D733A0D0A202020202A2020202D0D0A202020202A2020202D0D0A202020202A0D0A20202A2F0D0A20205F77726974655175657279546F436F6E736F6C653A2066756E';
wwv_flow_api.g_varchar2_table(2470) := '6374696F6E28207051756572792029207B0D0A20202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C362C20746869732E6C6F675072656669782C20275F77726974655175657279546F436F6E736F6C65272C';
wwv_flow_api.g_varchar2_table(2471) := '207B0D0A20202020202022617267756D656E7473223A20617267756D656E74730D0A202020207D293B200D0A0D0A20202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C362C20746869732E6C6F6750726566';
wwv_flow_api.g_varchar2_table(2472) := '69782C20275F77726974655175657279546F436F6E736F6C65272C2027737461727427293B200D0A0D0A20202020766172206172726179203D207051756572792E73706C697428225C6E22293B0D0A0D0A20202020666F7220282076617220693D303B20';
wwv_flow_api.g_varchar2_table(2473) := '69203C2061727261792E6C656E6774683B20692B2B2029207B0D0A202020202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C362C20272320272C2061727261795B695D293B202020202020200D0A20202020';
wwv_flow_api.g_varchar2_table(2474) := '7D0D0A0D0A20202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C362C20746869732E6C6F675072656669782C20275F77726974655175657279546F436F6E736F6C65272C2027656E6427293B200D0A20207D';
wwv_flow_api.g_varchar2_table(2475) := '2C0D0A20202F2A0D0A202020202A0D0A202020202A2066756E6374696F6E206E616D653A205F7468726F774572726F72546578740D0A202020202A206465736372697074696F6E0D0A202020202A20706172616D733A0D0A202020202A2020202D0D0A20';
wwv_flow_api.g_varchar2_table(2476) := '2020202A2020202D0D0A202020202A0D0A20202A2F20200D0A20205F7468726F774572726F72546578743A2066756E6374696F6E2820705465787420297B0D0A20202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C45';
wwv_flow_api.g_varchar2_table(2477) := '56454C392C20746869732E6C6F675072656669782C20275F7468726F774572726F7254657874272C207B0D0A20202020202022617267756D656E7473223A20617267756D656E74732C0D0A202020202020227054657874223A2070546578742020202020';
wwv_flow_api.g_varchar2_table(2478) := '200D0A202020207D293B200D0A202020207468726F772070546578743B0D0A0D0A20207D2C0D0A0D0A20202F2A0D0A202020202A0D0A202020202A2066756E6374696F6E206E616D653A205F6465626F756E63650D0A202020202A206465736372697074';
wwv_flow_api.g_varchar2_table(2479) := '696F6E0D0A202020202A20706172616D733A0D0A202020202A2020202D0D0A202020202A2020202D0D0A202020202A0D0A20202A2F0D0A20205F6465626F756E63653A2066756E6374696F6E2866756E632C20776169742C20696D6D6564696174652920';
wwv_flow_api.g_varchar2_table(2480) := '7B0D0A202020202F2F617065782E64656275672E6D65737361676528746869732E435F4C4F475F4C4556454C392C20276465626F756E6365272C202766756E63272C2066756E632C202777616974272C20776169742C2027696D6D656469617465272C20';
wwv_flow_api.g_varchar2_table(2481) := '696D6D656469617465293B0D0A0D0A202020207661722074696D656F75743B0D0A2020202072657475726E2066756E6374696F6E2829207B0D0A20202020202076617220636F6E74657874203D20746869732C2061726773203D20617267756D656E7473';
wwv_flow_api.g_varchar2_table(2482) := '3B0D0A202020202020766172206C61746572203D2066756E6374696F6E2829207B0D0A202020202020202074696D656F7574203D206E756C6C3B0D0A20202020202020206966202821696D6D656469617465292066756E632E6170706C7928636F6E7465';
wwv_flow_api.g_varchar2_table(2483) := '78742C2061726773293B0D0A2020202020207D3B0D0A2020202020207661722063616C6C4E6F77203D20696D6D656469617465202626202174696D656F75743B0D0A202020202020636C65617254696D656F75742874696D656F7574293B0D0A20202020';
wwv_flow_api.g_varchar2_table(2484) := '202074696D656F7574203D2073657454696D656F7574286C617465722C2077616974293B0D0A2020202020206966202863616C6C4E6F77292066756E632E6170706C7928636F6E746578742C2061726773293B0D0A202020207D3B0D0A20207D2C0D0A20';
wwv_flow_api.g_varchar2_table(2485) := '202F2A0D0A202020202A0D0A202020202A2066756E6374696F6E206E616D653A205F7468726F774572726F720D0A202020202A206465736372697074696F6E0D0A202020202A20706172616D733A0D0A202020202A2020202D0D0A202020202A2020202D';
wwv_flow_api.g_varchar2_table(2486) := '0D0A202020202A0D0A20202A2F20200D0A20205F7468726F774572726F723A2066756E6374696F6E2820704572726F725468726F776E2029207B0D0A20202020617065782E64656275672E6D65737361676528746869732E435F4C4F475F4552524F522C';
wwv_flow_api.g_varchar2_table(2487) := '20746869732E6C6F675072656669782C20275F7468726F774572726F72272C207B0D0A20202020202022617267756D656E7473223A20617267756D656E74732C0D0A20202020202022704572726F725468726F776E223A20704572726F725468726F776E';
wwv_flow_api.g_varchar2_table(2488) := '0D0A202020207D293B200D0A0D0A202020207468726F7720704572726F725468726F776E3B0D0A20207D0D0A0D0A7D293B';
null;
wwv_flow_api.component_end;
end;
/
begin
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>107
,p_default_id_offset=>0
,p_default_owner=>'MISO'
);
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(518834499309253426)
,p_plugin_id=>wwv_flow_api.id(511429967211344646)
,p_file_name=>'enhancedLovItem.js'
,p_mime_type=>'application/javascript'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
wwv_flow_api.component_end;
end;
/
begin
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>107
,p_default_id_offset=>0
,p_default_owner=>'MISO'
);
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2E707265746975732D2D656E68616E6365644C6F764974656D2E6D61736B203E206469762E6974656D436F6E7461696E6572207E20627574746F6E207B0D0A20206F726465723A20343B0D0A7D0D0A0D0A2E707265746975732D2D656E68616E6365644C';
wwv_flow_api.g_varchar2_table(2) := '6F764974656D202E64656275672C0D0A2E6974656D436F6E7461696E6572207E202E64656275674175746F636F6D706C657465207B0D0A20206F7061636974793A20302E353B0D0A7D0D0A0D0A2F2A206974656D206D61736B202A2F0D0A2E7072657469';
wwv_flow_api.g_varchar2_table(3) := '75732D2D656E68616E6365644C6F764974656D2E6D61736B207B0D0A20206D61782D77696474683A20313030253B0D0A2020646973706C61793A20666C65783B0D0A20206261636B67726F756E642D636F6C6F723A20236639663966393B0D0A20206F72';
wwv_flow_api.g_varchar2_table(4) := '6465723A20333B0D0A7D0D0A0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E6D61736B3A686F7665722C0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E6D61736B2E666F6375736564207B0D0A2020626163';
wwv_flow_api.g_varchar2_table(5) := '6B67726F756E642D636F6C6F723A20236666663B0D0A7D0D0A0D0A0D0A2F2A204974656D2064697361626C6564202A2F0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E6D61736B2E64697361626C6564203E206469762E6974656D';
wwv_flow_api.g_varchar2_table(6) := '436F6E7461696E6572207B0D0A2020637572736F723A2064656661756C743B0D0A7D0D0A0D0A2F2A204974656D20436F6E7461696E6572202A2F0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E6D61736B203E206469762E697465';
wwv_flow_api.g_varchar2_table(7) := '6D436F6E7461696E6572207B0D0A2020626F726465723A2031707820736F6C6964207267626128302C302C302C2E313235293B0D0A20206D696E2D77696474683A203070783B0D0A2020666C65782D67726F773A20313B0D0A2020637572736F723A2074';
wwv_flow_api.g_varchar2_table(8) := '6578743B0D0A2020706F736974696F6E3A2072656C61746976653B0D0A20206F766572666C6F773A2068696464656E3B0D0A7D0D0A0D0A20202F2A204974656D20436F6E7461696E657220426F6479202A2F0D0A20202E707265746975732D2D656E6861';
wwv_flow_api.g_varchar2_table(9) := '6E6365644C6F764974656D2E6D61736B203E206469762E6974656D436F6E7461696E6572203E206469762E6974656D436F6E7461696E6572426F6479207B0D0A202020206865696768743A20313030253B0D0A20207D0D0A0D0A202020202F2A206D6173';
wwv_flow_api.g_varchar2_table(10) := '6B696E6720646976202A2F0D0A202020202E707265746975732D2D656E68616E6365644C6F764974656D2E6D61736B203E206469762E6974656D436F6E7461696E6572203E206469762E6974656D436F6E7461696E6572426F6479202E6D61736B696E67';
wwv_flow_api.g_varchar2_table(11) := '207B0D0A2020202020206261636B67726F756E643A2072676261283235352C3235352C3235352C30293B0D0A2020202020206261636B67726F756E643A202D6D6F7A2D6C696E6561722D6772616469656E74286C6566742C2072676261283235352C3235';
wwv_flow_api.g_varchar2_table(12) := '352C3235352C30292030252C2072676261283235352C3235352C3235352C31292031303025293B0D0A2020202020206261636B67726F756E643A202D7765626B69742D6772616469656E74286C65667420746F702C20726967687420746F702C20636F6C';
wwv_flow_api.g_varchar2_table(13) := '6F722D73746F702830252C2072676261283235352C3235352C3235352C3029292C20636F6C6F722D73746F7028313030252C2072676261283235352C3235352C3235352C312929293B0D0A2020202020206261636B67726F756E643A202D7765626B6974';
wwv_flow_api.g_varchar2_table(14) := '2D6C696E6561722D6772616469656E74286C6566742C2072676261283235352C3235352C3235352C30292030252C2072676261283235352C3235352C3235352C31292031303025293B0D0A2020202020206261636B67726F756E643A202D6F2D6C696E65';
wwv_flow_api.g_varchar2_table(15) := '61722D6772616469656E74286C6566742C2072676261283235352C3235352C3235352C30292030252C2072676261283235352C3235352C3235352C31292031303025293B0D0A2020202020206261636B67726F756E643A202D6D732D6C696E6561722D67';
wwv_flow_api.g_varchar2_table(16) := '72616469656E74286C6566742C2072676261283235352C3235352C3235352C30292030252C2072676261283235352C3235352C3235352C31292031303025293B0D0A2020202020206261636B67726F756E643A206C696E6561722D6772616469656E7428';
wwv_flow_api.g_varchar2_table(17) := '746F2072696768742C2072676261283235352C3235352C3235352C30292030252C2072676261283235352C3235352C3235352C31292031303025293B0D0A20202020202066696C7465723A2070726F6769643A4458496D6167655472616E73666F726D2E';
wwv_flow_api.g_varchar2_table(18) := '4D6963726F736F66742E6772616469656E7428207374617274436F6C6F727374723D2723666666666666272C20656E64436F6C6F727374723D2723666666666666272C204772616469656E74547970653D3120293B0D0A202020202020706F736974696F';
wwv_flow_api.g_varchar2_table(19) := '6E3A206162736F6C7574653B0D0A202020202020746F703A203070783B0D0A20202020202072696768743A203070783B0D0A20202020202077696474683A20313070783B0D0A2020202020206865696768743A20313030253B0D0A202020207D0D0A0D0A';
wwv_flow_api.g_varchar2_table(20) := '20200D0A20202F2A20706C616365686F6C646572202A2F0D0A20202E707265746975732D2D656E68616E6365644C6F764974656D2E6D61736B203E206469762E6974656D436F6E7461696E6572203E206469762E706C616365686F6C646572207B0D0A20';
wwv_flow_api.g_varchar2_table(21) := '2020206F7061636974793A20302E353B0D0A2020202077686974652D73706163653A206E6F777261703B0D0A20202020746578742D6F766572666C6F773A20656C6C69707369733B0D0A202020206F766572666C6F773A2068696464656E3B20200D0A20';
wwv_flow_api.g_varchar2_table(22) := '207D0D0A0D0A2F2A20737472656368206974656D2A2F0D0A2E742D466F726D2D2D73747265746368496E70757473202020202020202020202020202020202E707265746975732D2D656E68616E6365644C6F764974656D2E6D61736B2C0D0A2E742D466F';
wwv_flow_api.g_varchar2_table(23) := '726D2D6669656C64436F6E7461696E65722D2D73747265746368496E70757473202E707265746975732D2D656E68616E6365644C6F764974656D2E6D61736B207B0D0A2020666C65783A20313B20200D0A7D0D0A0D0A2F2A2064697361626C6564202A2F';
wwv_flow_api.g_varchar2_table(24) := '0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E6D61736B2E64697361626C6564207B0D0A20206F7061636974793A20302E353B20200D0A7D0D0A0D0A0D0A2F2A20636F6D6D6F6E202A2F0D0A2E707265746975732D2D656E68616E';
wwv_flow_api.g_varchar2_table(25) := '6365644C6F764974656D203E206469762E6974656D436F6E7461696E65722C0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D70742C0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D7074';
wwv_flow_api.g_varchar2_table(26) := '203E206469762E666978426F726465722C0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D7074203E206469762E626F6479203E206469762E6C6F61644D6F7265207B0D0A2020626F726465722D636F6C6F723A20726762';
wwv_flow_api.g_varchar2_table(27) := '283232332C203232332C20323233293B0D0A7D0D0A0D0A2F2A0D0A202070617374650D0A2A2F0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E7061737465202E626F6479207B0D0A20206F766572666C6F773A206175746F3B0D0A';
wwv_flow_api.g_varchar2_table(28) := '2020706F736974696F6E3A2072656C61746976653B0D0A202070616464696E673A203070783B0D0A20206D696E2D6865696768743A2032303670783B0D0A20206865696768743A2032303670783B0D0A20206D61782D6865696768743A2032303670783B';
wwv_flow_api.g_varchar2_table(29) := '0D0A7D0D0A0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E7061737465207465787461726561207B0D0A202070616464696E673A20313070783B0D0A2020726573697A653A206E6F6E653B0D0A202077696474683A20313030253B';
wwv_flow_api.g_varchar2_table(30) := '0D0A20206865696768743A2032303670783B0D0A2020766572746963616C2D616C69676E3A20746F703B0D0A2020626F726465723A206E6F6E653B0D0A7D0D0A0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E7061737465202E62';
wwv_flow_api.g_varchar2_table(31) := '6F64792E73756D6D617279207461626C652074643A6C6173742D6368696C64207B0D0A2020666F6E742D7765696768743A20626F6C643B0D0A2020746578742D616C69676E3A2072696768743B0D0A7D0D0A0D0A2E707265746975732D2D656E68616E63';
wwv_flow_api.g_varchar2_table(32) := '65644C6F764974656D2E7061737465202E626F6479207461626C652074723A6C6173742D6368696C64207464207B0D0A2020626F726465722D626F74746F6D3A206E6F6E652021696D706F7274616E743B0D0A7D0D0A0D0A2E75692D6469616C6F672E70';
wwv_flow_api.g_varchar2_table(33) := '7265746975732D2D656E68616E6365644C6F764974656D2E7061737465202E666F6F746572207B0D0A2020626F726465722D746F703A2031707820736F6C6964207267626128302C302C302C302E3035293B0D0A2020646973706C61793A20666C65783B';
wwv_flow_api.g_varchar2_table(34) := '0D0A2020666C65782D646972656374696F6E3A20726F773B0D0A202070616464696E673A203130707820313570783B0D0A7D0D0A0D0A2E75692D6469616C6F672E707265746975732D2D656E68616E6365644C6F764974656D2E7061737465202E666F6F';
wwv_flow_api.g_varchar2_table(35) := '746572202E6C6566742C0D0A2E75692D6469616C6F672E707265746975732D2D656E68616E6365644C6F764974656D2E7061737465202E666F6F746572202E7269676874207B0D0A2020666C65782D67726F773A20313B0D0A2020646973706C61793A20';
wwv_flow_api.g_varchar2_table(36) := '666C65783B0D0A7D0D0A0D0A2E75692D6469616C6F672E707265746975732D2D656E68616E6365644C6F764974656D2E7061737465202E666F6F746572202E6C656674207B0D0A20206A7573746966792D636F6E74656E743A20666C65782D7374617274';
wwv_flow_api.g_varchar2_table(37) := '3B0D0A7D0D0A0D0A2E75692D6469616C6F672E707265746975732D2D656E68616E6365644C6F764974656D2E7061737465202E666F6F746572202E7269676874207B0D0A20206A7573746966792D636F6E74656E743A20666C65782D656E643B0D0A7D0D';
wwv_flow_api.g_varchar2_table(38) := '0A0D0A2F2A20666C6F6174696E672074656D706C61746520737570706F7274202A2F0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D666C6F6174696E674C6162656C2E69732D616374697665202E707265746975732D2D656E68616E63';
wwv_flow_api.g_varchar2_table(39) := '65644C6F764974656D2E6D61736B202E746167732C0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D666C6F6174696E674C6162656C20202020202020202020202E707265746975732D2D656E68616E6365644C6F764974656D2E6D6173';
wwv_flow_api.g_varchar2_table(40) := '6B202E746167732C0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D666C6F6174696E674C6162656C20202020202020202020202E706C616365686F6C646572207B0D0A20206D617267696E2D746F703A20323470783B0D0A7D0D0A0D0A';
wwv_flow_api.g_varchar2_table(41) := '2E742D466F726D2D6669656C64436F6E7461696E65722D2D666C6F6174696E674C6162656C2E742D466F726D2D6669656C64436F6E7461696E65722D2D6C617267652E69732D61637469766520202E707265746975732D2D656E68616E6365644C6F7649';
wwv_flow_api.g_varchar2_table(42) := '74656D2E6D61736B202E746167732C0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D666C6F6174696E674C6162656C2E742D466F726D2D6669656C64436F6E7461696E65722D2D786C617267652E69732D616374697665202E70726574';
wwv_flow_api.g_varchar2_table(43) := '6975732D2D656E68616E6365644C6F764974656D2E6D61736B202E746167732C0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D666C6F6174696E674C6162656C2E742D466F726D2D6669656C64436F6E7461696E65722D2D6C61726765';
wwv_flow_api.g_varchar2_table(44) := '2020202020202020202020202E707265746975732D2D656E68616E6365644C6F764974656D2E6D61736B202E746167732C0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D666C6F6174696E674C6162656C2E742D466F726D2D6669656C';
wwv_flow_api.g_varchar2_table(45) := '64436F6E7461696E65722D2D786C6172676520202020202020202020202E707265746975732D2D656E68616E6365644C6F764974656D2E6D61736B202E746167732C0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D666C6F6174696E67';
wwv_flow_api.g_varchar2_table(46) := '4C6162656C20202020202020202020202E706C616365686F6C646572207B0D0A20206D617267696E2D746F703A20323470783B0D0A7D0D0A0D0A2E742D466F726D2D6669656C64436F6E7461696E65722E742D466F726D2D6669656C64436F6E7461696E';
wwv_flow_api.g_varchar2_table(47) := '65722D2D666C6F6174696E674C6162656C2E742D466F726D2D6669656C64436F6E7461696E65722D2D6C61726765202E742D466F726D2D6C6162656C436F6E7461696E6572206C6162656C207B0D0A202070616464696E672D746F703A203670783B0D0A';
wwv_flow_api.g_varchar2_table(48) := '7D0D0A0D0A2E742D466F726D2D6669656C64436F6E7461696E65722E742D466F726D2D6669656C64436F6E7461696E65722D2D666C6F6174696E674C6162656C202E6974656D436F6E7461696E6572207B0D0A202070616464696E672D6C6566743A2038';
wwv_flow_api.g_varchar2_table(49) := '70783B0D0A7D0D0A0D0A2E742D466F726D2D6669656C64436F6E7461696E65722E742D466F726D2D6669656C64436F6E7461696E65722D2D666C6F6174696E674C6162656C2E742D466F726D2D6669656C64436F6E7461696E65722D2D6C617267652020';
wwv_flow_api.g_varchar2_table(50) := '2E6974656D436F6E7461696E65722C0D0A2E742D466F726D2D6669656C64436F6E7461696E65722E742D466F726D2D6669656C64436F6E7461696E65722D2D666C6F6174696E674C6162656C2E742D466F726D2D6669656C64436F6E7461696E65722D2D';
wwv_flow_api.g_varchar2_table(51) := '786C61726765202E6974656D436F6E7461696E6572207B0D0A202070616464696E672D6C6566743A20313270783B0D0A7D0D0A0D0A2F2A0D0A20206572726F7220706F7075700D0A2A2F0D0A0D0A2E66612E6572726F72207B0D0A2020636F6C6F723A20';
wwv_flow_api.g_varchar2_table(52) := '7265643B0D0A7D0D0A0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F67202E616A61784572726F722C0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E6572726F72202E636F6E7461696E';
wwv_flow_api.g_varchar2_table(53) := '6572207B0D0A202070616464696E673A20313570783B0D0A20206F766572666C6F773A206175746F3B0D0A7D0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F67202E616A61784572726F72202E6572726F7220';
wwv_flow_api.g_varchar2_table(54) := '7B0D0A202077686974652D73706163653A207072653B20200D0A7D0D0A0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F67202E616A61784572726F72207072652C0D0A2E707265746975732D2D656E68616E63';
wwv_flow_api.g_varchar2_table(55) := '65644C6F764974656D2E6572726F72207072657B0D0A202070616464696E673A20313570783B0D0A2020626F726465723A2031707820736F6C6964207267626128302C302C302C302E33293B0D0A20206261636B67726F756E643A207267626128302C30';
wwv_flow_api.g_varchar2_table(56) := '2C302C302E3038293B3B0D0A2020626F726465722D7261646975733A203570783B0D0A20206F766572666C6F772D783A206175746F3B0D0A7D0D0A0D0A0D0A2F2A202A2F0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E6D61736B';
wwv_flow_api.g_varchar2_table(57) := '203E206469762E6974656D436F6E7461696E6572203E206469762E6974656D436F6E7461696E6572426F6479203E206469762E74616773203E206469762E746167203E207370616E2E72656D6F7665207B0D0A2020666F6E742D73697A653A203172656D';
wwv_flow_api.g_varchar2_table(58) := '3B0D0A202070616464696E672D6C6566743A20302E3272656D3B0D0A7D0D0A0D0A2F2A2053697A6573202F2064656661756C74202F20436F6E7461696E6572202A2F0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E6D61736B203E';
wwv_flow_api.g_varchar2_table(59) := '206469762E6974656D436F6E7461696E6572207B0D0A202070616464696E673A203020302E3272656D20302E3272656D20302E3272656D3B0D0A7D0D0A0D0A2F2A2053697A6573202F2064656661756C74202F20746167206D617267696E2A2F0D0A2E70';
wwv_flow_api.g_varchar2_table(60) := '7265746975732D2D656E68616E6365644C6F764974656D2E6D61736B202E6974656D436F6E7461696E6572203E202E6974656D436F6E7461696E6572426F6479203E206469762E74616773203E206469762E7461673A6E6F74283A6C6173742D6368696C';
wwv_flow_api.g_varchar2_table(61) := '6429207B0D0A20206D617267696E2D72696768743A20302E3272656D3B0D0A7D0D0A0D0A2F2A2053697A6573202F2064656661756C74202F20746167202A2F0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E6D61736B203E206469';
wwv_flow_api.g_varchar2_table(62) := '762E6974656D436F6E7461696E6572203E206469762E6974656D436F6E7461696E6572426F6479203E206469762E74616773203E206469762E746167207B0D0A202070616464696E673A203020302E3572656D203020302E3572656D3B0D0A20206D6172';
wwv_flow_api.g_varchar2_table(63) := '67696E2D746F703A20302E3272656D3B0D0A7D0D0A0D0A2F2A2053697A6573202F2064656661756C74202F20746167202F2076616C75652C20706C616365686F6C646572202A2F0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E6D';
wwv_flow_api.g_varchar2_table(64) := '61736B203E206469762E6974656D436F6E7461696E6572203E206469762E706C616365686F6C6465722C0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E6D61736B203E206469762E6974656D436F6E7461696E6572203E20646976';
wwv_flow_api.g_varchar2_table(65) := '2E6974656D436F6E7461696E6572426F6479203E206469762E74616773203E206469762E746167203E207370616E2E76616C7565207B0D0A2020666F6E742D73697A653A20312E3272656D3B0D0A7D0D0A0D0A2F2A2053697A6573202F2064656661756C';
wwv_flow_api.g_varchar2_table(66) := '74202F20746167202F2076616C75652C2072656D6F7665202A2F0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E6D61736B203E206469762E6974656D436F6E7461696E6572203E206469762E6974656D436F6E7461696E6572426F';
wwv_flow_api.g_varchar2_table(67) := '6479203E206469762E74616773203E206469762E746167203E207370616E2E76616C75652C0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E6D61736B203E206469762E6974656D436F6E7461696E6572203E206469762E6974656D';
wwv_flow_api.g_varchar2_table(68) := '436F6E7461696E6572426F6479203E206469762E74616773203E206469762E746167203E207370616E2E72656D6F7665207B0D0A20206C696E652D6865696768743A20312E3672656D3B0D0A7D0D0A0D0A0D0A2F2A2053697A6573202F206C6172676520';
wwv_flow_api.g_varchar2_table(69) := '2F20746167206D617267696E2A2F0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D6C61726765202E707265746975732D2D656E68616E6365644C6F764974656D2E6D61736B202E6974656D436F6E7461696E6572203E202E6974656D43';
wwv_flow_api.g_varchar2_table(70) := '6F6E7461696E6572426F6479203E206469762E74616773203E206469762E7461673A6E6F74283A6C6173742D6368696C6429207B0D0A20206D617267696E2D72696768743A20302E3272656D3B0D0A7D0D0A0D0A2F2A2053697A6573202F206C61726765';
wwv_flow_api.g_varchar2_table(71) := '202F20436F6E7461696E6572202A2F0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D6C61726765202E707265746975732D2D656E68616E6365644C6F764974656D2E6D61736B203E206469762E6974656D436F6E7461696E6572207B0D';
wwv_flow_api.g_varchar2_table(72) := '0A202070616464696E673A203020302E3272656D20302E3272656D20302E3272656D3B0D0A7D0D0A0D0A2F2A2053697A6573202F206C61726765202F20746167202A2F0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D6C61726765202E';
wwv_flow_api.g_varchar2_table(73) := '707265746975732D2D656E68616E6365644C6F764974656D2E6D61736B203E206469762E6974656D436F6E7461696E6572203E206469762E6974656D436F6E7461696E6572426F6479203E206469762E74616773203E206469762E746167207B0D0A2020';
wwv_flow_api.g_varchar2_table(74) := '70616464696E673A203020302E3572656D203020302E3572656D3B0D0A20206D617267696E2D746F703A20302E3272656D3B0D0A7D0D0A0D0A2F2A2053697A6573202F206C61726765202F20746167202F2076616C75652C20706C616365686F6C646572';
wwv_flow_api.g_varchar2_table(75) := '202A2F0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D6C61726765202E707265746975732D2D656E68616E6365644C6F764974656D2E6D61736B203E206469762E6974656D436F6E7461696E6572203E206469762E706C616365686F6C';
wwv_flow_api.g_varchar2_table(76) := '646572207B0D0A202070616464696E673A20302E3672656D2030203020302E3472656D3B0D0A7D0D0A0D0A2F2A2053697A6573202F206C61726765202F20746167202F2076616C75652C20706C616365686F6C646572202A2F0D0A2E742D466F726D2D66';
wwv_flow_api.g_varchar2_table(77) := '69656C64436F6E7461696E65722D2D6C61726765202E707265746975732D2D656E68616E6365644C6F764974656D2E6D61736B203E206469762E6974656D436F6E7461696E6572203E206469762E706C616365686F6C6465722C0D0A2E742D466F726D2D';
wwv_flow_api.g_varchar2_table(78) := '6669656C64436F6E7461696E65722D2D6C61726765202E707265746975732D2D656E68616E6365644C6F764974656D2E6D61736B203E206469762E6974656D436F6E7461696E6572203E206469762E6974656D436F6E7461696E6572426F6479203E2064';
wwv_flow_api.g_varchar2_table(79) := '69762E74616773203E206469762E746167203E207370616E2E76616C7565207B0D0A2020666F6E742D73697A653A20312E3472656D3B0D0A7D0D0A0D0A2F2A2053697A6573202F206C61726765202F20746167202F2076616C75652C2072656D6F766520';
wwv_flow_api.g_varchar2_table(80) := '2A2F0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D6C61726765202E707265746975732D2D656E68616E6365644C6F764974656D2E6D61736B203E206469762E6974656D436F6E7461696E6572203E206469762E6974656D436F6E7461';
wwv_flow_api.g_varchar2_table(81) := '696E6572426F6479203E206469762E74616773203E206469762E746167203E207370616E2E76616C75652C0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D6C61726765202E707265746975732D2D656E68616E6365644C6F764974656D';
wwv_flow_api.g_varchar2_table(82) := '2E6D61736B203E206469762E6974656D436F6E7461696E6572203E206469762E6974656D436F6E7461696E6572426F6479203E206469762E74616773203E206469762E746167203E207370616E2E72656D6F7665207B0D0A20206C696E652D6865696768';
wwv_flow_api.g_varchar2_table(83) := '743A20322E3472656D3B0D0A7D0D0A0D0A2F2A2053697A6573202F206C61726765202F20746167206D617267696E2A2F0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D786C61726765202E707265746975732D2D656E68616E6365644C';
wwv_flow_api.g_varchar2_table(84) := '6F764974656D2E6D61736B202E6974656D436F6E7461696E6572203E202E6974656D436F6E7461696E6572426F6479203E206469762E74616773203E206469762E7461673A6E6F74283A6C6173742D6368696C6429207B0D0A20206D617267696E2D7269';
wwv_flow_api.g_varchar2_table(85) := '6768743A20302E3472656D3B0D0A7D0D0A0D0A2F2A2053697A6573202F20786C61726765202F20436F6E7461696E6572202A2F0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D786C61726765202E707265746975732D2D656E68616E63';
wwv_flow_api.g_varchar2_table(86) := '65644C6F764974656D2E6D61736B203E206469762E6974656D436F6E7461696E6572207B0D0A202070616464696E673A203020302E3472656D20302E3472656D20302E3472656D3B0D0A7D0D0A0D0A2F2A2053697A6573202F20786C61726765202F2074';
wwv_flow_api.g_varchar2_table(87) := '6167202A2F0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D786C61726765202E707265746975732D2D656E68616E6365644C6F764974656D2E6D61736B203E206469762E6974656D436F6E7461696E6572203E206469762E6974656D43';
wwv_flow_api.g_varchar2_table(88) := '6F6E7461696E6572426F6479203E206469762E74616773203E206469762E746167207B0D0A202070616464696E673A203020302E3572656D203020302E3572656D3B0D0A20206D617267696E2D746F703A20302E3472656D3B0D0A7D0D0A0D0A2F2A2053';
wwv_flow_api.g_varchar2_table(89) := '697A6573202F20786C61726765202F20746167202F2076616C75652C20706C616365686F6C646572202A2F0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D786C61726765202E707265746975732D2D656E68616E6365644C6F76497465';
wwv_flow_api.g_varchar2_table(90) := '6D2E6D61736B203E206469762E6974656D436F6E7461696E6572203E206469762E706C616365686F6C646572207B0D0A202070616464696E673A20302E3872656D2030203020302E3672656D3B0D0A7D0D0A0D0A2E742D466F726D2D6669656C64436F6E';
wwv_flow_api.g_varchar2_table(91) := '7461696E65722D2D786C61726765202E707265746975732D2D656E68616E6365644C6F764974656D2E6D61736B203E206469762E6974656D436F6E7461696E6572203E206469762E706C616365686F6C6465722C0D0A2E742D466F726D2D6669656C6443';
wwv_flow_api.g_varchar2_table(92) := '6F6E7461696E65722D2D786C61726765202E707265746975732D2D656E68616E6365644C6F764974656D2E6D61736B203E206469762E6974656D436F6E7461696E6572203E206469762E6974656D436F6E7461696E6572426F6479203E206469762E7461';
wwv_flow_api.g_varchar2_table(93) := '6773203E206469762E746167203E207370616E2E76616C7565207B0D0A2020666F6E742D73697A653A20312E3672656D3B0D0A7D0D0A0D0A2F2A2053697A6573202F20786C61726765202F20746167202F2076616C75652C2072656D6F7665202A2F0D0A';
wwv_flow_api.g_varchar2_table(94) := '2E742D466F726D2D6669656C64436F6E7461696E65722D2D786C61726765202E707265746975732D2D656E68616E6365644C6F764974656D2E6D61736B203E206469762E6974656D436F6E7461696E6572203E206469762E6974656D436F6E7461696E65';
wwv_flow_api.g_varchar2_table(95) := '72426F6479203E206469762E74616773203E206469762E746167203E207370616E2E76616C75652C0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D786C61726765202E707265746975732D2D656E68616E6365644C6F764974656D2E6D';
wwv_flow_api.g_varchar2_table(96) := '61736B203E206469762E6974656D436F6E7461696E6572203E206469762E6974656D436F6E7461696E6572426F6479203E206469762E74616773203E206469762E746167203E207370616E2E72656D6F7665207B0D0A20206C696E652D6865696768743A';
wwv_flow_api.g_varchar2_table(97) := '20322E3772656D3B0D0A7D0D0A0D0A0D0A2F2A0D0A2020456C656D656E743A2070726F6D70740D0A2A2F0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D7074207B0D0A2020626F726465722D636F6C6F723A2072676261';
wwv_flow_api.g_varchar2_table(98) := '28302C302C302C302E313235293B0D0A2020706F736974696F6E3A206162736F6C7574653B0D0A20206261636B67726F756E643A20236666663B0D0A20207A2D696E6465783A203430303B0D0A7D0D0A0D0A0D0A2E707265746975732D2D656E68616E63';
wwv_flow_api.g_varchar2_table(99) := '65644C6F764974656D2E70726F6D70742E68696464656E207B0D0A2020646973706C61793A206E6F6E653B0D0A7D0D0A0D0A0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D7074203E202E6D656E75202E6661207B0D0A';
wwv_flow_api.g_varchar2_table(100) := '2020666F6E742D73697A653A20313270783B0D0A20206C696E652D6865696768743A20313270783B0D0A7D0D0A0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D7074203E202E6865616465722C0D0A2E70726574697573';
wwv_flow_api.g_varchar2_table(101) := '2D2D656E68616E6365644C6F764974656D2E70726F6D7074203E202E6D656E752C0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D7074203E202E626F6479207B0D0A2020626F726465722D636F6C6F723A20696E686572';
wwv_flow_api.g_varchar2_table(102) := '69743B0D0A2020626F726465722D77696474683A203170783B0D0A2020626F726465722D7374796C653A20736F6C69643B0D0A7D0D0A0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D7074203E202E6865616465722C0D';
wwv_flow_api.g_varchar2_table(103) := '0A2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D7074203E202E6D656E75207B0D0A202070616464696E673A20302E3472656D3B0D0A7D0D0A0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D';
wwv_flow_api.g_varchar2_table(104) := '7074203E202E6D656E752C0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D7074203E202E6865616465722C0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D7074203E202E626F6479207B';
wwv_flow_api.g_varchar2_table(105) := '0D0A2020626F726465722D746F703A206E6F6E653B0D0A7D0D0A0D0A0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D7074203E202E686561646572207B0D0A2020706F736974696F6E3A2072656C61746976653B0D0A20';
wwv_flow_api.g_varchar2_table(106) := '20646973706C61793A20666C65783B0D0A0D0A7D0D0A0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D7074203E202E686561646572203E202E6661207B0D0A2020616C69676E2D73656C663A2063656E7465723B0D0A20';
wwv_flow_api.g_varchar2_table(107) := '20666F6E742D73697A653A20312E3372656D3B0D0A2020666C65782D736872696E6B3A20303B0D0A2020666C65782D67726F773A20303B0D0A7D0D0A0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D7074203E202E6865';
wwv_flow_api.g_varchar2_table(108) := '61646572203E20696E707574207B0D0A2020626F726465723A206E6F6E653B0D0A20206F75746C696E653A206E6F6E653B0D0A20206D617267696E2D72696768743A20302E3472656D3B0D0A2020666C65782D67726F773A20313B0D0A2020666C65782D';
wwv_flow_api.g_varchar2_table(109) := '736872696E6B3A20303B0D0A7D0D0A0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D7074203E202E626F6479207B0D0A20206F766572666C6F773A206175746F3B0D0A7D0D0A0D0A2E707265746975732D2D656E68616E';
wwv_flow_api.g_varchar2_table(110) := '6365644C6F764974656D2E70726F6D7074202E666978426F72646572207B0D0A2020646973706C61793A206E6F6E653B0D0A2020626F726465722D746F702D77696474683A203170783B0D0A2020626F726465722D746F702D7374796C653A20736F6C69';
wwv_flow_api.g_varchar2_table(111) := '643B0D0A2020626F726465722D636F6C6F723A207267626128302C302C302C2E313235293B0D0A20206865696768743A203070783B0D0A202077696474683A20353070783B0D0A2020706F736974696F6E3A206162736F6C7574653B0D0A2020746F703A';
wwv_flow_api.g_varchar2_table(112) := '203070783B0D0A202072696768743A203070783B0D0A7D0D0A0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D7074202E736561726368696E672C0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E70';
wwv_flow_api.g_varchar2_table(113) := '726F6D7074202E6E6F64617461666F756E64207B0D0A2020746578742D616C69676E3A2063656E7465723B0D0A202070616464696E673A203670783B0D0A7D0D0A0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D707420';
wwv_flow_api.g_varchar2_table(114) := '2E736561726368696E67202E69636F6E2C0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D7074202E736561726368696E67202E746578742C0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F';
wwv_flow_api.g_varchar2_table(115) := '6D7074202E6E6F64617461666F756E64202E69636F6E2C0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D7074202E6E6F64617461666F756E64202E74657874207B0D0A2020646973706C61793A20626C6F636B3B0D0A7D';
wwv_flow_api.g_varchar2_table(116) := '0D0A0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D707420756C207B0D0A20206C6973742D7374796C653A206E6F6E653B0D0A20206D617267696E3A20303B0D0A2020706F736974696F6E3A2072656C61746976653B0D';
wwv_flow_api.g_varchar2_table(117) := '0A7D0D0A0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D707420756C206C692E637573746F6D207B0D0A202070616464696E673A203072656D3B0D0A2020637572736F723A20706F696E7465723B0D0A7D0D0A0D0A2E70';
wwv_flow_api.g_varchar2_table(118) := '7265746975732D2D656E68616E6365644C6F764974656D2E70726F6D707420756C206C692E64656661756C74207B0D0A202070616464696E673A20302E3372656D3B0D0A20206F766572666C6F773A2068696464656E3B0D0A2020746578742D6F766572';
wwv_flow_api.g_varchar2_table(119) := '666C6F773A20656C6C69707369733B0D0A2020637572736F723A20706F696E7465723B0D0A7D0D0A0D0A0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D707420756C206C692E637573746F6D3A686F7665722C0D0A2E70';
wwv_flow_api.g_varchar2_table(120) := '7265746975732D2D656E68616E6365644C6F764974656D2E70726F6D707420756C206C692E637573746F6D5B617269612D73656C65637465643D2274727565225D3A686F7665722C0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E';
wwv_flow_api.g_varchar2_table(121) := '70726F6D707420756C206C692E637573746F6D5B617269612D73656C65637465643D2274727565225D5B617269612D686967686C6967687465643D2274727565225D3A686F7665722C0D0A2E707265746975732D2D656E68616E6365644C6F764974656D';
wwv_flow_api.g_varchar2_table(122) := '2E70726F6D707420756C206C692E637573746F6D5B617269612D73656C65637465643D2274727565225D5B617269612D686967686C6967687465643D2274727565225D2C0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D';
wwv_flow_api.g_varchar2_table(123) := '707420756C206C692E637573746F6D5B617269612D686967686C6967687465643D2274727565225D2C0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D707420756C206C692E64656661756C743A686F7665722C0D0A2E70';
wwv_flow_api.g_varchar2_table(124) := '7265746975732D2D656E68616E6365644C6F764974656D2E70726F6D707420756C206C692E64656661756C745B617269612D73656C65637465643D2274727565225D3A686F7665722C0D0A2E707265746975732D2D656E68616E6365644C6F764974656D';
wwv_flow_api.g_varchar2_table(125) := '2E70726F6D707420756C206C692E64656661756C745B617269612D73656C65637465643D2274727565225D5B617269612D686967686C6967687465643D2274727565225D3A686F7665722C0D0A2E707265746975732D2D656E68616E6365644C6F764974';
wwv_flow_api.g_varchar2_table(126) := '656D2E70726F6D707420756C206C692E64656661756C745B617269612D73656C65637465643D2274727565225D5B617269612D686967686C6967687465643D2274727565225D2C0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E70';
wwv_flow_api.g_varchar2_table(127) := '726F6D707420756C206C692E64656661756C745B617269612D686967686C6967687465643D2274727565225D207B0D0A20206261636B67726F756E643A20236535653565353B0D0A7D0D0A0D0A2E707265746975732D2D656E68616E6365644C6F764974';
wwv_flow_api.g_varchar2_table(128) := '656D2E70726F6D707420756C206C693A6C6173742D6368696C642E637573746F6D3A686F7665722C0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D707420756C206C693A6C6173742D6368696C642E637573746F6D5B61';
wwv_flow_api.g_varchar2_table(129) := '7269612D73656C65637465643D2274727565225D3A686F7665722C0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D707420756C206C693A6C6173742D6368696C642E637573746F6D5B617269612D73656C65637465643D';
wwv_flow_api.g_varchar2_table(130) := '2274727565225D5B617269612D686967686C6967687465643D2274727565225D3A686F7665722C0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D707420756C206C693A6C6173742D6368696C642E637573746F6D5B6172';
wwv_flow_api.g_varchar2_table(131) := '69612D73656C65637465643D2274727565225D5B617269612D686967686C6967687465643D2274727565225D2C0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D707420756C206C693A6C6173742D6368696C642E637573';
wwv_flow_api.g_varchar2_table(132) := '746F6D5B617269612D686967686C6967687465643D2274727565225D2C0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D707420756C206C693A6C6173742D6368696C642E64656661756C743A686F7665722C0D0A2E7072';
wwv_flow_api.g_varchar2_table(133) := '65746975732D2D656E68616E6365644C6F764974656D2E70726F6D707420756C206C693A6C6173742D6368696C642E64656661756C745B617269612D73656C65637465643D2274727565225D3A686F7665722C0D0A2E707265746975732D2D656E68616E';
wwv_flow_api.g_varchar2_table(134) := '6365644C6F764974656D2E70726F6D707420756C206C693A6C6173742D6368696C642E64656661756C745B617269612D73656C65637465643D2274727565225D5B617269612D686967686C6967687465643D2274727565225D3A686F7665722C0D0A2E70';
wwv_flow_api.g_varchar2_table(135) := '7265746975732D2D656E68616E6365644C6F764974656D2E70726F6D707420756C206C693A6C6173742D6368696C642E64656661756C745B617269612D73656C65637465643D2274727565225D5B617269612D686967686C6967687465643D2274727565';
wwv_flow_api.g_varchar2_table(136) := '225D2C0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D707420756C206C693A6C6173742D6368696C642E64656661756C745B617269612D686967686C6967687465643D2274727565225D207B0D0A20202D7765626B6974';
wwv_flow_api.g_varchar2_table(137) := '2D626F782D736861646F773A20696E73657420307078202D313970782031357078202D31357078207267626128302C302C302C302E31293B0D0A20202D6D6F7A2D626F782D736861646F773A20696E73657420307078202D313970782031357078202D31';
wwv_flow_api.g_varchar2_table(138) := '357078207267626128302C302C302C302E31293B0D0A2020626F782D736861646F773A20696E73657420307078202D313970782031357078202D31357078207267626128302C302C302C302E31293B0D0A7D0D0A0D0A2E707265746975732D2D656E6861';
wwv_flow_api.g_varchar2_table(139) := '6E6365644C6F764974656D2E70726F6D707420756C206C692E637573746F6D5B617269612D73656C65637465643D2274727565225D2C0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D707420756C206C692E6465666175';
wwv_flow_api.g_varchar2_table(140) := '6C745B617269612D73656C65637465643D2274727565225D207B0D0A20202F2A746578742D736861646F773A2030203020302E3030317078207267626128302C302C302C20302E35293B2A2F0D0A20202F2A626F726465722D72696768743A2031707820';
wwv_flow_api.g_varchar2_table(141) := '736F6C696420236563663366663B2A2F0D0A20206261636B67726F756E643A20236632663266323B0D0A7D0D0A0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D7074202E6D656E75207B0D0A0D0A7D0D0A0D0A2E707265';
wwv_flow_api.g_varchar2_table(142) := '746975732D2D656E68616E6365644C6F764974656D2E70726F6D7074202E6D656E75202E76696577202E636F6C6C6170736564207B0D0A2020646973706C61793A206E6F6E653B0D0A7D0D0A0D0A2E707265746975732D2D656E68616E6365644C6F7649';
wwv_flow_api.g_varchar2_table(143) := '74656D2E70726F6D7074202E6D656E75202E76696577202E657870616E646564207B0D0A2020646973706C61793A20626C6F636B3B0D0A7D0D0A0D0A0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D7074202E6D656E75';
wwv_flow_api.g_varchar2_table(144) := '202E766965772E657870616E646564202E636F6C6C6170736564207B0D0A2020646973706C61793A20626C6F636B3B0D0A7D0D0A0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D7074202E6D656E75202E766965772E65';
wwv_flow_api.g_varchar2_table(145) := '7870616E646564202E657870616E646564207B0D0A2020646973706C61793A206E6F6E653B0D0A7D0D0A0D0A2F2A2064656661756C7420736F7274207374617465202A2F0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D';
wwv_flow_api.g_varchar2_table(146) := '7074202E6D656E75202E736F7274202E64657363207B0D0A2020646973706C61793A20626C6F636B3B0D0A7D0D0A0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D7074202E6D656E75202E736F7274202E617363207B0D';
wwv_flow_api.g_varchar2_table(147) := '0A2020646973706C61793A206E6F6E653B0D0A7D0D0A0D0A2F2A20736F72746564207374617465202A2F0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D7074202E6D656E75202E736F72742E64657363202E646573632C';
wwv_flow_api.g_varchar2_table(148) := '0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D7074202E6D656E75202E736F72742E617363202E617363207B0D0A2020646973706C61793A206E6F6E653B0D0A7D0D0A0D0A2E707265746975732D2D656E68616E636564';
wwv_flow_api.g_varchar2_table(149) := '4C6F764974656D2E70726F6D7074202E6D656E75202E736F72742E64657363202E6173632C0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D7074202E6D656E75202E736F72742E617363202E64657363207B0D0A202064';
wwv_flow_api.g_varchar2_table(150) := '6973706C61793A20626C6F636B3B0D0A7D0D0A0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D7074202E6C6F61644D6F7265207B0D0A202070616464696E673A203270783B0D0A2020746578742D7472616E73666F726D';
wwv_flow_api.g_varchar2_table(151) := '3A207570706572636173653B0D0A2020746578742D616C69676E3A2063656E7465723B0D0A2020666F6E742D73697A653A203730253B0D0A20206C65747465722D73706163696E673A203170783B0D0A2020626F726465722D746F702D77696474683A20';
wwv_flow_api.g_varchar2_table(152) := '3170783B0D0A2020626F726465722D746F702D7374796C653A20736F6C69643B0D0A2020626F726465722D746F702D636F6C6F723A20696E68657269743B0D0A20206261636B67726F756E643A207267626128302C302C302C302E3034293B20200D0A7D';
wwv_flow_api.g_varchar2_table(153) := '0D0A0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D7074202E6C6F61644D6F72652061207B0D0A2020636F6C6F723A207267626128302C302C302C302E37293B0D0A2020746578742D736861646F773A202D317078202D';
wwv_flow_api.g_varchar2_table(154) := '3170782030707820726762283235352C203235352C203235352C20302E35293B0D0A7D0D0A0D0A0D0A2F2A0D0A2020456C656D656E743A2070726F6D70740D0A20206465736372697074696F6E3A2066697820666F72206974656D20656D626564656420';
wwv_flow_api.g_varchar2_table(155) := '696E20696E6C696E65206469616C6F670D0A2A2F0D0A0D0A2E742D4469616C6F67526567696F6E2D626F6479202E707265746975732D2D656E68616E6365644C6F764974656D2E70726F6D7074207B0D0A2020706F736974696F6E3A2066697865643B0D';
wwv_flow_api.g_varchar2_table(156) := '0A7D0D0A0D0A0D0A2F2A0D0A2020456C656D656E743A20706F7075700D0A20206465736372697074696F6E3A2066697820666F72206974656D20656D626564656420696E20696E6C696E65206469616C6F670D0A2A2F0D0A0D0A2F2A20706F707570202F';
wwv_flow_api.g_varchar2_table(157) := '20626F6479202A2F0D0A0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E626F6479207B0D0A20206F766572666C6F773A206175746F3B0D0A2020706F736974696F6E3A2072656C617469';
wwv_flow_api.g_varchar2_table(158) := '76653B0D0A7D0D0A0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E626F6479202E736561726368696E67466F72526573756C74734D61736B207B0D0A2020706F736974696F6E3A206162';
wwv_flow_api.g_varchar2_table(159) := '736F6C7574653B0D0A202077696474683A20313030253B0D0A20206865696768743A20313030253B0D0A20206261636B67726F756E643A20236666663B0D0A20206F7061636974793A20302E363B0D0A7D0D0A0D0A2E707265746975732D2D656E68616E';
wwv_flow_api.g_varchar2_table(160) := '6365644C6F764974656D2E75692D6469616C6F672E706F707570202E626F6479202E736561726368696E67466F72526573756C7473207B0D0A2020706F736974696F6E3A206162736F6C7574653B0D0A7D0D0A0D0A2E707265746975732D2D656E68616E';
wwv_flow_api.g_varchar2_table(161) := '6365644C6F764974656D2E75692D6469616C6F672E706F707570202E626F6479202E6E6F64617461666F756E64436F6E7461696E65722C0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E';
wwv_flow_api.g_varchar2_table(162) := '626F6479202E736561726368696E67466F72526573756C7473207B0D0A202070616464696E673A203230707820303B0D0A7D0D0A0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E626F64';
wwv_flow_api.g_varchar2_table(163) := '792E736561726368696E672C0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E626F64792E6E6F64617461666F756E64207B0D0A2020646973706C61793A20666C65783B0D0A20206A7573';
wwv_flow_api.g_varchar2_table(164) := '746966792D636F6E74656E743A2063656E7465723B0D0A202070616464696E673A203070783B0D0A7D0D0A0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E626F6479202E736561726368';
wwv_flow_api.g_varchar2_table(165) := '696E67466F72526573756C74732C0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E626F6479202E6E6F64617461666F756E64436F6E7461696E6572207B0D0A2020616C69676E2D73656C';
wwv_flow_api.g_varchar2_table(166) := '663A2063656E7465723B0D0A2020746578742D616C69676E3A2063656E7465723B0D0A7D0D0A0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E626F6479202E736561726368696E67466F';
wwv_flow_api.g_varchar2_table(167) := '72526573756C747320202E69636F6E203E202E6661202C0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E626F6479202E6E6F64617461666F756E64436F6E7461696E6572202E69636F6E';
wwv_flow_api.g_varchar2_table(168) := '203E202E6661207B0D0A2020666F6E742D73697A653A2031303070783B0D0A7D0D0A0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E626F6479202E736561726368696E67466F72526573';
wwv_flow_api.g_varchar2_table(169) := '756C7473202E746578742C0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E626F6479202E6E6F64617461666F756E64436F6E7461696E6572202E74657874207B0D0A202070616464696E';
wwv_flow_api.g_varchar2_table(170) := '672D746F703A20313070783B0D0A2020666F6E742D73697A653A20313470783B0D0A20206C696E652D6865696768743A20323070783B0D0A7D0D0A0D0A2F2A20706F707570202F20666F6F746572202A2F0D0A2E707265746975732D2D656E68616E6365';
wwv_flow_api.g_varchar2_table(171) := '644C6F764974656D2E75692D6469616C6F672E706F707570202E666F6F746572202E666F6F7465722D73686F7753656C65637465642E696E616374697665207B0D0A20206F7061636974793A20302E353B0D0A7D0D0A0D0A2E707265746975732D2D656E';
wwv_flow_api.g_varchar2_table(172) := '68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E666F6F746572202E666F6F7465722D73686F7753656C65637465642C0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F70';
wwv_flow_api.g_varchar2_table(173) := '7570202E666F6F746572202E666F6F7465722D627574746F6E73207B0D0A2020666C65782D736872696E6B3A20313B0D0A2020666C65782D67726F773A20313B0D0A7D0D0A0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D';
wwv_flow_api.g_varchar2_table(174) := '6469616C6F672E706F707570202E666F6F746572207B0D0A2020626F726465722D746F703A2031707820736F6C6964207267626128302C302C302C302E3035293B0D0A2020646973706C61793A20666C65783B0D0A7D0D0A0D0A2E707265746975732D2D';
wwv_flow_api.g_varchar2_table(175) := '656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E666F6F746572206C6162656C207B0D0A20206D617267696E2D6C6566743A20313070783B0D0A2020637572736F723A20706F696E7465723B0D0A7D0D0A0D0A2E707265';
wwv_flow_api.g_varchar2_table(176) := '746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E666F6F746572206C6162656C207B0D0A20206C696E652D6865696768743A20333270783B0D0A2020666F6E742D73697A653A20313270783B0D0A7D0D0A';
wwv_flow_api.g_varchar2_table(177) := '0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E666F6F746572202E66616B65436865636B626F78207B0D0A20206C696E652D6865696768743A20333270783B0D0A7D0D0A0D0A0D0A2E70';
wwv_flow_api.g_varchar2_table(178) := '7265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E666F6F746572202E666F6F7465722D627574746F6E73207B0D0A2020746578742D616C69676E3A2072696768743B0D0A7D0D0A0D0A2F2A20706F70';
wwv_flow_api.g_varchar2_table(179) := '7570202F20686561646572202A2F0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E6865616465722E706167696E6174696F6E4F6E6C79202E706167696E6174696F6E436F6E7461696E65';
wwv_flow_api.g_varchar2_table(180) := '72207B0D0A2020746578742D616C69676E3A2063656E7465723B0D0A7D0D0A0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E686561646572202E706167696E6174696F6E436F6E746169';
wwv_flow_api.g_varchar2_table(181) := '6E6572202E66612C0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E686561646572202E706167696E6174696F6E436F6E7461696E6572207B0D0A2020746578742D616C69676E3A207269';
wwv_flow_api.g_varchar2_table(182) := '6768743B0D0A2020666F6E742D73697A653A20313270783B0D0A20206C696E652D6865696768743A20333070783B0D0A7D0D0A0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E68656164';
wwv_flow_api.g_varchar2_table(183) := '6572202E706167696E6174696F6E436F6E7461696E6572202E70726576207B0D0A20206D617267696E2D72696768743A203570783B0D0A7D0D0A0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F7075';
wwv_flow_api.g_varchar2_table(184) := '70202E686561646572202E706167696E6174696F6E436F6E7461696E6572202E6E657874207B0D0A20206D617267696E2D6C6566743A203570783B200D0A7D0D0A0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C';
wwv_flow_api.g_varchar2_table(185) := '6F672E706F707570202E686561646572207B0D0A2020626F726465722D626F74746F6D3A2031707820736F6C6964207267626128302C302C302C302E3035293B0D0A2020646973706C61793A20666C65783B0D0A7D0D0A0D0A0D0A0D0A2E707265746975';
wwv_flow_api.g_varchar2_table(186) := '732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E686561646572203E20646976207B0D0A2020666C65782D736872696E6B3A20313B0D0A2020666C65782D67726F773A20313B0D0A7D0D0A0D0A0D0A2E70726574';
wwv_flow_api.g_varchar2_table(187) := '6975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E686561646572202E736561726368436F6E7461696E6572207B0D0A2020706F736974696F6E3A2072656C61746976653B0D0A2020746578742D616C69676E';
wwv_flow_api.g_varchar2_table(188) := '3A206C6566743B0D0A7D0D0A0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E686561646572202E736561726368436F6E7461696E657220696E707574207B0D0A202070616464696E673A';
wwv_flow_api.g_varchar2_table(189) := '203570783B0D0A20206C696E652D6865696768743A20313670783B0D0A202077696474683A20313030253B0D0A20206865696768743A20333270783B0D0A7D0D0A0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C';
wwv_flow_api.g_varchar2_table(190) := '6F672E706F707570202E686561646572202E726F777350657250616765436F6E7461696E65722073656C656374207B0D0A202070616464696E673A203570783B0D0A20206C696E652D6865696768743A20313670783B0D0A2020626F726465722D6C6566';
wwv_flow_api.g_varchar2_table(191) := '743A206E6F6E653B0D0A20206865696768743A20333270783B0D0A7D0D0A0D0A0D0A0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E686561646572202E736561726368436F6E7461696E';
wwv_flow_api.g_varchar2_table(192) := '65722E6D756C7469706C6520696E707574207B0D0A202077696474683A20313030253B0D0A7D0D0A0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E686561646572202E73656172636843';
wwv_flow_api.g_varchar2_table(193) := '6F6E7461696E6572202E6661207B0D0A2020746F703A203070783B0D0A20206C696E652D6865696768743A20333070783B0D0A2020706F736974696F6E3A206162736F6C7574653B0D0A202072696768743A20313570783B0D0A20206F7061636974793A';
wwv_flow_api.g_varchar2_table(194) := '20302E353B0D0A2020666F6E742D73697A653A20313470783B0D0A7D0D0A0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E68656164657220696E707574207E202E7365617263682C0D0A';
wwv_flow_api.g_varchar2_table(195) := '2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E68656164657220696E7075742E656D707479207E202E636C656172207B0D0A2020646973706C61793A206E6F6E653B0D0A7D0D0A0D0A2E7072';
wwv_flow_api.g_varchar2_table(196) := '65746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E68656164657220696E7075742E656D707479207E202E7365617263682C0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D';
wwv_flow_api.g_varchar2_table(197) := '6469616C6F672E706F707570202E68656164657220696E707574207E202E636C656172207B0D0A2020646973706C61793A20626C6F636B3B0D0A7D0D0A0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E70';
wwv_flow_api.g_varchar2_table(198) := '6F707570202E68656164657220696E707574207E20646976207B0D0A2020746F703A203070783B0D0A20206C696E652D6865696768743A20333470783B0D0A2020706F736974696F6E3A206162736F6C7574653B0D0A202072696768743A203070783B0D';
wwv_flow_api.g_varchar2_table(199) := '0A20200D0A7D0D0A0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E68656164657220696E707574207E20646976203E202E7365617263682C0D0A2E707265746975732D2D656E68616E63';
wwv_flow_api.g_varchar2_table(200) := '65644C6F764974656D2E75692D6469616C6F672E706F707570202E68656164657220696E7075742E656D707479207E20646976203E202E636C656172207B0D0A2020646973706C61793A206E6F6E653B0D0A7D0D0A0D0A2E707265746975732D2D656E68';
wwv_flow_api.g_varchar2_table(201) := '616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E68656164657220696E7075742E656D707479207E20646976203E202E7365617263682C0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C';
wwv_flow_api.g_varchar2_table(202) := '6F672E706F707570202E68656164657220696E707574207E20646976203E202E636C656172207B0D0A20206F7061636974793A20302E353B0D0A2020646973706C61793A20626C6F636B3B0D0A7D0D0A0D0A2E707265746975732D2D656E68616E636564';
wwv_flow_api.g_varchar2_table(203) := '4C6F764974656D2E75692D6469616C6F672E706F707570202E686561646572202E636C656172207B0D0A2020637572736F723A20706F696E7465723B0D0A7D0D0A0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C';
wwv_flow_api.g_varchar2_table(204) := '6F672E706F707570202E686561646572202E636C6561723A686F766572207B0D0A20206F7061636974793A20313B0D0A7D0D0A0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E68656164';
wwv_flow_api.g_varchar2_table(205) := '65722C0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E666F6F746572207B0D0A202070616464696E673A203130707820313570783B0D0A7D0D0A0D0A2E707265746975732D2D656E6861';
wwv_flow_api.g_varchar2_table(206) := '6E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E6865616465722E68696464656E2C0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E666F6F7465722E6869646465';
wwv_flow_api.g_varchar2_table(207) := '6E207B0D0A2020646973706C61793A206E6F6E653B0D0A7D0D0A0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E752D5265706F72742D736F7274207B0D0A202077686974652D73706163';
wwv_flow_api.g_varchar2_table(208) := '653A206E6F777261703B0D0A7D0D0A0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F7075702074683A66697273742D6368696C642C0D0A2E707265746975732D2D656E68616E6365644C6F76497465';
wwv_flow_api.g_varchar2_table(209) := '6D2E75692D6469616C6F672E706F707570207461626C652E737469636B79486561646572732074683A66697273742D6368696C642C0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F7075702074642E';
wwv_flow_api.g_varchar2_table(210) := '742D5265706F72742D63656C6C3A66697273742D6368696C64207B0D0A202077696474683A20343270783B0D0A20206D696E2D77696474683A20343270783B0D0A20206D61782D77696474683A20343270783B0D0A7D0D0A0D0A2E707265746975732D2D';
wwv_flow_api.g_varchar2_table(211) := '656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570207468207B0D0A2020626F726465722D746F703A6E6F6E653B0D0A7D0D0A0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E70';
wwv_flow_api.g_varchar2_table(212) := '6F707570207461626C652E737469636B794865616465727320207B0D0A2020706F736974696F6E3A206162736F6C7574653B0D0A2020746F703A203070783B0D0A202077696474683A20313030253B0D0A7D0D0A0D0A2E707265746975732D2D656E6861';
wwv_flow_api.g_varchar2_table(213) := '6E6365644C6F764974656D2E75692D6469616C6F672E706F707570207461626C652E737469636B7948656164657273207468207B0D0A20206261636B67726F756E643A20236666663B0D0A2020706F736974696F6E3A2072656C61746976653B0D0A7D0D';
wwv_flow_api.g_varchar2_table(214) := '0A0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F7075702074722E68696464656E447565546F46696C746572207B0D0A2020646973706C61793A206E6F6E653B0D0A7D0D0A0D0A2E686967686C6967';
wwv_flow_api.g_varchar2_table(215) := '6874207B0D0A20206261636B67726F756E643A2079656C6C6F773B0D0A7D0D0A0D0A0D0A2F2A20696E666F726D6174696F6E20726567696F6E202A2F0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F';
wwv_flow_api.g_varchar2_table(216) := '707570202E696E666F726D6174696F6E2E68696464656E207B0D0A2020646973706C61793A206E6F6E653B0D0A7D0D0A0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E696E666F726D61';
wwv_flow_api.g_varchar2_table(217) := '74696F6E207B0D0A20206261636B67726F756E643A20236633663366333B0D0A2020706F736974696F6E3A2072656C61746976653B0D0A20206D696E2D6865696768743A20333070783B0D0A2020746578742D616C69676E3A2063656E7465723B0D0A20';
wwv_flow_api.g_varchar2_table(218) := '20626F726465722D626F74746F6D3A2031707820736F6C6964207267626128302C302C302C302E3035293B0D0A7D0D0A0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E696E666F726D61';
wwv_flow_api.g_varchar2_table(219) := '74696F6E202E74657874207B0D0A202070616464696E672D746F703A203570783B0D0A202070616464696E672D626F74746F6D3A203570783B0D0A20206C696E652D6865696768743A20323070783B0D0A2020666F6E742D73697A653A20313270783B0D';
wwv_flow_api.g_varchar2_table(220) := '0A7D0D0A0D0A2F2A20636F6C756D6E2066696C746572696E6720616E6420736F7274696E67202A2F0D0A0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570207461626C652E737469636B794865';
wwv_flow_api.g_varchar2_table(221) := '61646572732074682E69732D616374697665202E612D49636F6E2C200D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570207461626C652E737469636B79486561646572732074682E69732D6163';
wwv_flow_api.g_varchar2_table(222) := '74697665202E6661207B0D0A2020636F6C6F723A20236666663B0D0A7D0D0A0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570207461626C652E737469636B79486561646572732074682E6973';
wwv_flow_api.g_varchar2_table(223) := '2D6163746976652C0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E636F6C756D6E4F7065726174696F6E73207B0D0A20206261636B67726F756E642D636F6C6F723A2023346534653465';
wwv_flow_api.g_varchar2_table(224) := '3B0D0A2020626F726465722D636F6C6F723A20233465346534653B0D0A7D0D0A0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570207461626C652E737469636B79486561646572732074682E69';
wwv_flow_api.g_varchar2_table(225) := '732D6163746976652061207B0D0A2020636F6C6F723A20236666663B0D0A7D0D0A0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E636F6C756D6E4F7065726174696F6E73207B0D0A2020';
wwv_flow_api.g_varchar2_table(226) := '706F736974696F6E3A206162736F6C7574653B0D0A2020746F703A203070783B0D0A7D0D0A0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E636F6C756D6E4F7065726174696F6E73202E';
wwv_flow_api.g_varchar2_table(227) := '612D49636F6E207B0D0A2020636F6C6F723A20236666663B0D0A7D0D0A0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E736F7274696E672C0D0A2E707265746975732D2D656E68616E63';
wwv_flow_api.g_varchar2_table(228) := '65644C6F764974656D2E75692D6469616C6F672E706F707570202E66696C746572696E67207B0D0A2020706F736974696F6E3A2072656C61746976653B0D0A7D0D0A0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D646961';
wwv_flow_api.g_varchar2_table(229) := '6C6F672E706F707570202E66696C746572696E67202E6661207B0D0A2020706F736974696F6E3A206162736F6C7574653B0D0A202072696768743A203770783B0D0A2020746F703A203770783B0D0A2020636F6C6F723A20236666663B0D0A20206F7061';
wwv_flow_api.g_varchar2_table(230) := '636974793A20302E353B0D0A7D0D0A0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E736F7274696E672061207B0D0A2020646973706C61793A20696E6C696E652D626C6F636B3B0D0A20';
wwv_flow_api.g_varchar2_table(231) := '2077696474683A206175746F3B0D0A202070616464696E673A2035707820313070783B0D0A7D0D0A0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E736F7274696E67207B0D0A2020626F';
wwv_flow_api.g_varchar2_table(232) := '726465722D6C6566743A2031707820736F6C69643B0D0A2020626F726465722D72696768743A2031707820736F6C69643B0D0A2020626F726465722D746F703A2031707820736F6C69643B0D0A0D0A7D0D0A0D0A2E707265746975732D2D656E68616E63';
wwv_flow_api.g_varchar2_table(233) := '65644C6F764974656D2E75692D6469616C6F672E706F707570202E66696C746572696E67207B0D0A2020626F726465723A2031707820736F6C69643B20200D0A20206261636B67726F756E643A20233631363136313B0D0A7D0D0A0D0A2E707265746975';
wwv_flow_api.g_varchar2_table(234) := '732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E66696C746572696E6720696E707574207B0D0A2020626F726465723A206E6F6E653B0D0A20206261636B67726F756E643A207472616E73706172656E743B0D0A';
wwv_flow_api.g_varchar2_table(235) := '202070616464696E673A203570783B0D0A202077696474683A20313030253B0D0A2020636F6C6F723A20236666663B0D0A7D0D0A0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E66616B';
wwv_flow_api.g_varchar2_table(236) := '65526164696F2C0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F707570202E66616B65436865636B626F78207B0D0A2020637572736F723A20706F696E7465723B0D0A7D0D0A0D0A2E707265746975';
wwv_flow_api.g_varchar2_table(237) := '732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F70757020696E7075745B747970653D726164696F5D3A6E6F74283A636865636B656429207E202E66612D636972636C652D6F2C0D0A2E707265746975732D2D656E68616E63';
wwv_flow_api.g_varchar2_table(238) := '65644C6F764974656D2E75692D6469616C6F672E706F70757020696E7075745B747970653D726164696F5D3A636865636B6564207E202E66612D646F742D636972636C652D6F207B0D0A2020646973706C61793A20696E6C696E652D626C6F636B3B0D0A';
wwv_flow_api.g_varchar2_table(239) := '7D0D0A0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F70757020696E7075745B747970653D726164696F5D2C0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C';
wwv_flow_api.g_varchar2_table(240) := '6F672E706F70757020696E7075745B747970653D726164696F5D3A636865636B6564207E202E66612D636972636C652D6F2C0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F70757020696E7075745B';
wwv_flow_api.g_varchar2_table(241) := '747970653D726164696F5D3A6E6F74283A636865636B656429207E202E66612D646F742D636972636C652D6F207B0D0A2020646973706C61793A206E6F6E653B0D0A7D0D0A0D0A0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75';
wwv_flow_api.g_varchar2_table(242) := '692D6469616C6F672E706F70757020696E7075745B747970653D636865636B626F785D3A6E6F74283A636865636B656429207E202E66612D7371756172652D6F2C0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C';
wwv_flow_api.g_varchar2_table(243) := '6F672E706F70757020696E7075745B747970653D636865636B626F785D3A636865636B6564207E202E66612D636865636B2D7371756172652D6F207B0D0A2020646973706C61793A20696E6C696E652D626C6F636B3B0D0A7D0D0A0D0A2F2A206861636B';
wwv_flow_api.g_varchar2_table(244) := '20746F206D616B65206C6162656C20616E6420636865636B626F7820776F726B2C20627574206E6F7420746F2073686F7720636865636B626F7820697473656C662A2F0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469';
wwv_flow_api.g_varchar2_table(245) := '616C6F672E706F707570202E666F6F74657220696E7075745B747970653D636865636B626F785D207B0D0A2020706F736974696F6E3A2066697865643B0D0A20206F7061636974793A20303B0D0A2020746F703A202D313070783B0D0A20206C6566743A';
wwv_flow_api.g_varchar2_table(246) := '202D313070783B0D0A7D0D0A0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F70757020746820696E7075745B747970653D636865636B626F785D2C0D0A2E707265746975732D2D656E68616E636564';
wwv_flow_api.g_varchar2_table(247) := '4C6F764974656D2E75692D6469616C6F672E706F70757020746420696E7075745B747970653D636865636B626F785D2C0D0A0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F70757020696E7075745B';
wwv_flow_api.g_varchar2_table(248) := '747970653D636865636B626F785D3A636865636B6564207E202E66612D7371756172652D6F2C0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F70757020696E7075745B747970653D636865636B626F';
wwv_flow_api.g_varchar2_table(249) := '785D3A6E6F74283A636865636B656429207E202E66612D636865636B2D7371756172652D6F207B0D0A2020646973706C61793A206E6F6E653B0D0A7D0D0A0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E';
wwv_flow_api.g_varchar2_table(250) := '706F7075702074723A6E74682D6368696C64286576656E292E657874726156616C75652074642E742D5265706F72742D63656C6C2C0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F7075702074723A';
wwv_flow_api.g_varchar2_table(251) := '6E74682D6368696C64286576656E292E657874726156616C75652E73656C65637465642074642E742D5265706F72742D63656C6C2C0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F7075702074723A';
wwv_flow_api.g_varchar2_table(252) := '6E74682D6368696C64286F6464292E657874726156616C75652074642E742D5265706F72742D63656C6C2C0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F7075702074723A6E74682D6368696C6428';
wwv_flow_api.g_varchar2_table(253) := '6F6464292E657874726156616C75652E73656C65637465642074642E742D5265706F72742D63656C6C207B0D0A20206261636B67726F756E643A20236666646664663B0D0A7D0D0A0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E';
wwv_flow_api.g_varchar2_table(254) := '75692D6469616C6F672E706F7075702074722074642E742D5265706F72742D63656C6C207B0D0A202077686974652D73706163653A206E6F777261703B20200D0A7D0D0A0D0A0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E7569';
wwv_flow_api.g_varchar2_table(255) := '2D6469616C6F672E706F7075702074723A6E74682D6368696C64286F6464292E73656C65637465642074642E742D5265706F72742D63656C6C2C0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F7075';
wwv_flow_api.g_varchar2_table(256) := '702074722E73656C65637465642074642E742D5265706F72742D63656C6C207B0D0A20206261636B67726F756E643A2072676261283235352C203234392C20302C20302E3035293B0D0A2020746578742D736861646F773A2030203020302E3030317078';
wwv_flow_api.g_varchar2_table(257) := '207267626128302C302C302C20302E35293B0D0A0D0A7D0D0A0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F7075702074722E73656C65637465643A686F766572202E742D5265706F72742D63656C';
wwv_flow_api.g_varchar2_table(258) := '6C2C200D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F7075702074722E73656C65637465643A6E74682D6368696C64286F6464293A686F766572202E742D5265706F72742D63656C6C207B0D0A2020';
wwv_flow_api.g_varchar2_table(259) := '6261636B67726F756E643A2072676261283235352C203234392C20302C20302E31292021696D706F7274616E743B200D0A7D0D0A0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469616C6F672E706F7075702074722E73';
wwv_flow_api.g_varchar2_table(260) := '656C65637465642074642E742D5265706F72742D63656C6C202E66616B65436865636B626F78207B0D0A2020746578742D736861646F773A206E6F6E653B0D0A7D0D0A0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E75692D6469';
wwv_flow_api.g_varchar2_table(261) := '616C6F672E706F7075702E73656C656374566961526F7773207464207B0D0A2020637572736F723A20706F696E7465723B0D0A7D0D0A0D0A2F2A20494720737570706F7274202A2F0D0A2E612D47562D636F6C756D6E4974656D202E707265746975732D';
wwv_flow_api.g_varchar2_table(262) := '2D656E68616E6365644C6F764974656D2E6D61736B207B0D0A202077696474683A20313030253B0D0A20206865696768743A20313030253B0D0A20206D696E2D77696474683A206175746F21696D706F7274616E743B0D0A20206D696E2D686569676874';
wwv_flow_api.g_varchar2_table(263) := '3A206175746F21696D706F7274616E743B0D0A7D0D0A0D0A2E612D47562D636F6C756D6E4974656D202E707265746975732D2D656E68616E6365644C6F764974656D2E6D61736B202E6974656D436F6E7461696E6572207B0D0A2020626F726465722D63';
wwv_flow_api.g_varchar2_table(264) := '6F6C6F723A207472616E73706172656E742021696D706F7274616E743B0D0A7D0D0A0D0A2E612D47562D636F6C756D6E4974656D202E707265746975732D2D656E68616E6365644C6F764974656D2E6D61736B2E666F6375736564202E6974656D436F6E';
wwv_flow_api.g_varchar2_table(265) := '7461696E6572207B0D0A2020626F726465722D636F6C6F723A20726762283232332C203232332C20323233292021696D706F7274616E743B0D0A7D0D0A0D0A2F2A2074616773202A2F0D0A2E707265746975732D2D656E68616E6365644C6F764974656D';
wwv_flow_api.g_varchar2_table(266) := '2E6D61736B202E6974656D436F6E7461696E6572203E202E6974656D436F6E7461696E6572426F6479203E206469762E74616773207B0D0A2020646973706C61793A20666C65783B0D0A2020666C65782D777261703A206E6F777261703B0D0A20206F76';
wwv_flow_api.g_varchar2_table(267) := '6572666C6F773A2068696464656E3B0D0A7D0D0A0D0A2F2A206D61736B20657870616E646564202A2F0D0A2E707265746975732D2D656E68616E6365644C6F764974656D2E6D61736B2E657870616E646564202E6974656D436F6E7461696E6572203E20';
wwv_flow_api.g_varchar2_table(268) := '2E6974656D436F6E7461696E6572426F6479203E206469762E74616773207B0D0A2020666C65782D777261703A20777261703B200D0A20206F766572666C6F773A2076697369626C653B0D0A7D0D0A0D0A20202E707265746975732D2D656E68616E6365';
wwv_flow_api.g_varchar2_table(269) := '644C6F764974656D2E6D61736B202E6974656D436F6E7461696E6572203E202E6974656D436F6E7461696E6572426F6479203E200D0A20206469762E74616773203E206469762E746167207B0D0A202020202F2A646973706C61793A20696E6C696E652D';
wwv_flow_api.g_varchar2_table(270) := '626C6F636B3B2A2F0D0A20202020646973706C61793A20666C65783B0D0A202020206D61782D77696474683A20313030253B0D0A20202020626F726465723A2031707820736F6C69642072676261283231342C3231342C323134293B0D0A20202020706F';
wwv_flow_api.g_varchar2_table(271) := '736974696F6E3A2072656C61746976653B0D0A20202020626F726465722D7261646975733A203670783B0D0A202020206261636B67726F756E643A2072676261283231342C3231342C3231342C20302E35293B0D0A20202020666C65782D736872696E6B';
wwv_flow_api.g_varchar2_table(272) := '3A20303B0D0A20202020636F6C6F723A207267626128302C302C302C302E35293B0D0A202020202D7765626B69742D746F7563682D63616C6C6F75743A206E6F6E653B202F2A20694F5320536166617269202A2F0D0A2020202020202D7765626B69742D';
wwv_flow_api.g_varchar2_table(273) := '757365722D73656C6563743A206E6F6E653B202F2A20536166617269202A2F0D0A202020202020202D6B68746D6C2D757365722D73656C6563743A206E6F6E653B202F2A204B6F6E717565726F722048544D4C202A2F0D0A2020202020202020202D6D6F';
wwv_flow_api.g_varchar2_table(274) := '7A2D757365722D73656C6563743A206E6F6E653B202F2A2046697265666F78202A2F0D0A202020202020202020202D6D732D757365722D73656C6563743A206E6F6E653B202F2A20496E7465726E6574204578706C6F7265722F45646765202A2F0D0A20';
wwv_flow_api.g_varchar2_table(275) := '20202020202020202020202020757365722D73656C6563743A206E6F6E653B202F2A204E6F6E2D70726566697865642076657273696F6E2C2063757272656E746C790D0A2020202020202020202020202020202020202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(276) := '20202020737570706F72746564206279204368726F6D6520616E64204F70657261202A2F20200D0A20207D0D0A0D0A202020202E707265746975732D2D656E68616E6365644C6F764974656D2E6D61736B202E6974656D436F6E7461696E6572203E202E';
wwv_flow_api.g_varchar2_table(277) := '6974656D436F6E7461696E6572426F6479203E200D0A202020206469762E74616773203E206469762E7461673A686F766572207B0D0A202020202020626F726465722D636F6C6F723A20236231623162313B0D0A202020207D0D0A0D0A202020202F2A20';
wwv_flow_api.g_varchar2_table(278) := '6D61736B2064697361626C6564202A2F0D0A202020202E707265746975732D2D656E68616E6365644C6F764974656D2E6D61736B2E64697361626C6564202E6974656D436F6E7461696E6572203E202E6974656D436F6E7461696E6572426F6479203E20';
wwv_flow_api.g_varchar2_table(279) := '0D0A202020206469762E74616773203E206469762E7461673A686F766572207B0D0A202020202020626F726465722D636F6C6F723A2072676261283231342C3231342C323134293B0D0A2020202020206261636B67726F756E643A207267626128323134';
wwv_flow_api.g_varchar2_table(280) := '2C3231342C3231342C20302E35293B20200D0A202020207D0D0A0D0A0D0A202020202E707265746975732D2D656E68616E6365644C6F764974656D2E6D61736B2E6974656D436F6E7461696E6572203E202E6974656D436F6E7461696E6572426F647920';
wwv_flow_api.g_varchar2_table(281) := '3E200D0A202020206469762E74616773203E206469762E7461672E73756D6D617279207B0D0A202020202020637572736F723A20706F696E7465723B0D0A202020207D0D0A0D0A202020202E707265746975732D2D656E68616E6365644C6F764974656D';
wwv_flow_api.g_varchar2_table(282) := '2E6D61736B202E6974656D436F6E7461696E6572203E202E6974656D436F6E7461696E6572426F6479203E200D0A202020206469762E74616773203E206469762E7461672E6578747261207B0D0A2020202020206261636B67726F756E643A2023666664';
wwv_flow_api.g_varchar2_table(283) := '6664663B0D0A202020207D0D0A0D0A2020202020202E707265746975732D2D656E68616E6365644C6F764974656D2E6D61736B202E6974656D436F6E7461696E6572203E202E6974656D436F6E7461696E6572426F6479203E200D0A2020202020206469';
wwv_flow_api.g_varchar2_table(284) := '762E74616773203E206469762E746167203E207370616E2E76616C7565207B0D0A2020202020202020666C65782D736872696E6B3A20313B0D0A2020202020202020666C65782D67726F773A20313B0D0A2020202020202020746578742D6F766572666C';
wwv_flow_api.g_varchar2_table(285) := '6F773A20656C6C69707369733B0D0A20202020202020206F766572666C6F773A2068696464656E3B0D0A2020202020207D0D0A0D0A2020202020202E707265746975732D2D656E68616E6365644C6F764974656D2E6D61736B202E6974656D436F6E7461';
wwv_flow_api.g_varchar2_table(286) := '696E6572203E202E6974656D436F6E7461696E6572426F6479203E200D0A2020202020206469762E74616773203E206469762E746167203E207370616E2E72656D6F7665207B0D0A2020202020202020666C65782D736872696E6B3A20303B0D0A202020';
wwv_flow_api.g_varchar2_table(287) := '2020202020666C65782D67726F773A20303B20200D0A2020202020202020637572736F723A20706F696E7465723B0D0A2020202020202020636F6C6F723A207267626128302C302C302C31293B0D0A2020202020202020616C69676E2D73656C663A2063';
wwv_flow_api.g_varchar2_table(288) := '656E7465723B0D0A2020202020207D0D0A0D0A2020202020202F2A206D61736B2064697361626C6564202A2F0D0A2020202020202E707265746975732D2D656E68616E6365644C6F764974656D2E6D61736B2E64697361626C6564202E6974656D436F6E';
wwv_flow_api.g_varchar2_table(289) := '7461696E6572203E202E6974656D436F6E7461696E6572426F6479203E200D0A2020202020206469762E74616773203E206469762E746167203E207370616E2E72656D6F7665207B0D0A2020202020202020637572736F723A2064656661756C743B0D0A';
wwv_flow_api.g_varchar2_table(290) := '2020202020207D2020202020200D0A0D0A';
null;
wwv_flow_api.component_end;
end;
/
begin
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>107
,p_default_id_offset=>0
,p_default_owner=>'MISO'
);
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(518834757931253428)
,p_plugin_id=>wwv_flow_api.id(511429967211344646)
,p_file_name=>'enhancedLovItem.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
wwv_flow_api.component_end;
end;
/
