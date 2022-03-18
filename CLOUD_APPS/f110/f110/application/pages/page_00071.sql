prompt --application/pages/page_00071
begin
--   Manifest
--     PAGE: 00071
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>110
,p_default_id_offset=>101599614921830918
,p_default_owner=>'MISO'
);
wwv_flow_api.create_page(
 p_id=>71
,p_user_interface_id=>wwv_flow_api.id(14434115216807266717)
,p_name=>'Community'
,p_alias=>'COMMUNITY'
,p_page_mode=>'MODAL'
,p_step_title=>'Community'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(14033558290501184673)
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.uReportList {',
'    margin: 0;',
'    list-style: none;',
'}',
'.uReportList li {',
'    margin: 0 0 4px 0;',
'}',
'.check_icon {',
'    display: inline-block;',
'    width: 16px;',
'    height: 16px;',
'    line-height: 16px;',
'    background: #69B86B;',
'    color: #FFF;',
'    text-align: center;',
'    border-radius: 4px;',
'    font-size: 15px;',
'    border: 1px solid green;',
'    text-shadow: 0 -1px 0 rgba(0,0,0,.15);',
'    vertical-align: top;',
'    margin-right: 4px;',
'}',
'.valid_user {',
'    display: inline-block;',
'    padding: 4px 8px 4px 4px;',
'    border: 1px solid #D0D0D0;',
'    border-radius: 3px;',
'    line-height: 20px;',
'    background-color: #F8F8F8;',
'    color: #404040;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(250464227793234829)
,p_protection_level=>'C'
,p_help_text=>'<p>Verify the Community information below, including any "Additional Email Addresses" you may have provided on the previous page. If everything looks correct, press the <strong>Add Community / Members</strong> button to create your new community.</p>'
,p_last_updated_by=>'ALLAN'
,p_last_upd_yyyymmddhh24miss=>'20210518154223'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(349284065189878138)
,p_plug_name=>'Email addresses to be added to this Community'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:is-expanded:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(14690167327773251146)
,p_plug_display_sequence=>90
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select lower(c001) ename',
'  from apex_collections',
' where collection_name = ''EBA_QPOLL_RESPONDENT_VALID''',
'order by 1'))
,p_plug_source_type=>'NATIVE_JQM_LIST_VIEW'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'ADVANCED_FORMATTING'
,p_attribute_05=>'<span class="valid_user"><span class="check_icon">&#10004;</span>&ENAME.</span>'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(14022198482482438130)
,p_plug_name=>'Create Community'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(14690161967644251135)
,p_plug_display_sequence=>30
,p_plug_new_grid_column=>false
,p_plug_display_point=>'BODY'
,p_plug_footer=>'<br><br>'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(14022904207666834257)
,p_plug_name=>'footer'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(14690162135548251137)
,p_plug_display_sequence=>100
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(14022904997539850186)
,p_plug_name=>'Wizard Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(14690166820479251144)
,p_plug_display_sequence=>120
,p_plug_display_point=>'REGION_POSITION_02'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(14022910108115966825)
,p_plug_name=>'Hidden Items'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(14690161967644251135)
,p_plug_display_sequence=>10
,p_plug_new_grid_column=>false
,p_plug_display_point=>'BODY'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(14022912581974997076)
,p_plug_name=>'Valid Count'
,p_region_css_classes=>'infoTextRegion'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-WizardSteps--displayCurrentLabelOnly'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(14690161967644251135)
,p_plug_display_sequence=>40
,p_plug_new_grid_column=>false
,p_plug_display_point=>'BODY'
,p_plug_source=>'select :P71_VALID_COUNT valid_count from dual'
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.TRANSLATED_MESSAGE'
,p_list_template_id=>wwv_flow_api.id(14690189656385251207)
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'from apex_collections',
'where collection_name = ''EBA_QPOLL_RESPONDENT_VALID''',
'  and :P71_INVALID_COUNT = 0'))
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'ABOUT_TO_CREATE_RESP_COMM'
,p_attribute_02=>'VALID_COUNT'
,p_attribute_12=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(14022912995742020011)
,p_plug_name=>'Invalid Count'
,p_region_css_classes=>'infoTextRegion'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-WizardSteps--displayCurrentLabelOnly'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(14690161967644251135)
,p_plug_display_sequence=>50
,p_plug_new_grid_column=>false
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    :P71_VALID_COUNT valid_count,',
'    :P71_INVALID_COUNT invalid_count',
'from',
'    dual'))
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.TRANSLATED_MESSAGE'
,p_list_template_id=>wwv_flow_api.id(14690189656385251207)
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'from apex_collections',
'where collection_name = ''EBA_QPOLL_RESPONDENT_VALID''',
'    and :P71_INVALID_COUNT > 0'))
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'ABOUT_TO_CREATE_RESP_COMM_INVLD'
,p_attribute_02=>'VALID_COUNT'
,p_attribute_03=>'INVALID_COUNT'
,p_attribute_12=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(14022913994881057567)
,p_plug_name=>'No Valid Emails Exist - Page Info'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-WizardSteps--displayCurrentLabelOnly'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(14690161967644251135)
,p_plug_display_sequence=>60
,p_plug_new_grid_column=>false
,p_plug_display_point=>'BODY'
,p_plug_source=>'<p>The list of respondent email addresses provided on the previous page found no valid email addresses and &P71_INVALID_COUNT. invalid email addresses.</p>'
,p_list_template_id=>wwv_flow_api.id(14690189656385251207)
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'NOT_EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from apex_collections',
' where collection_name = ''EBA_QPOLL_RESPONDENT_VALID'''))
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(14022916491727103973)
,p_name=>'Exceptions'
,p_template=>wwv_flow_api.id(14690167327773251146)
,p_display_sequence=>100
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:is-expanded:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select c001 username, c002 reason',
'  from apex_collections',
' where collection_name = ''EBA_QPOLL_RESPONDENT_INVALID''',
'order by 1'))
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(14690179856222251179)
,p_query_num_rows=>100000
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'0'
,p_query_no_data_found=>'No invalid email addresses found.'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>100000
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
 p_id=>wwv_flow_api.id(14022916805048103974)
,p_query_column_id=>1
,p_column_alias=>'USERNAME'
,p_column_display_sequence=>1
,p_column_heading=>'Email Address / Text'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14022916898676103974)
,p_query_column_id=>2
,p_column_alias=>'REASON'
,p_column_display_sequence=>2
,p_column_heading=>'Reason'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(14022198896801438131)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(14022904207666834257)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(14690191414518251222)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:&LAST_VIEW.:&SESSION.::&DEBUG.:70,71::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(14022198980044438131)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(14022904207666834257)
,p_button_name=>'FINISH'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(14690191414518251222)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Community / Members'
,p_button_position=>'REGION_TEMPLATE_CREATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(14022199093503438131)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(14022904207666834257)
,p_button_name=>'PREVIOUS'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(14690190887630251216)
,p_button_image_alt=>'Previous'
,p_button_position=>'REGION_TEMPLATE_PREVIOUS'
,p_button_execute_validations=>'N'
,p_icon_css_classes=>'fa-angle-left'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(14022199598941438131)
,p_branch_action=>'f?p=&APP_ID.:70:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_VALIDATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(14022199093503438131)
,p_branch_sequence=>20
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14022907584540882376)
,p_name=>'P71_COMMUNITY_NAME'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(14022198482482438130)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Community Name'
,p_source=>':P70_COMMUNITY_NAME'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_display_when=>'P70_COMMUNITY_ACTION'
,p_display_when2=>'-2:0'
,p_display_when_type=>'VALUE_OF_ITEM_IN_CONDITION_IN_COLON_DELIMITED_LIST'
,p_field_template=>wwv_flow_api.id(14690190497303251212)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14022910879290976015)
,p_name=>'P71_INVALID_COUNT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(14022910108115966825)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select count(*)',
'  from apex_collections',
' where collection_name = ''EBA_QPOLL_RESPONDENT_INVALID'''))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14022911104078979675)
,p_name=>'P71_VALID_COUNT'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(14022910108115966825)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select count(*)',
'  from apex_collections',
' where collection_name = ''EBA_QPOLL_RESPONDENT_VALID'''))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14023004680180127211)
,p_name=>'P71_COMMUNITY_FROM'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(14022198482482438130)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Copy Respondents From'
,p_source=>'select name from EBA_QPOLL_RESP_COMMUNITIES where id = :P70_COMMUNITY_ID'
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>64
,p_cMaxlength=>4000
,p_display_when=>'P70_COMMUNITY_ACTION'
,p_display_when2=>'-1:0'
,p_display_when_type=>'VALUE_OF_ITEM_IN_CONDITION_IN_COLON_DELIMITED_LIST'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(14690190497303251212)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14023355595976849190)
,p_name=>'P71_COMMUNITY_TO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(14022198482482438130)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Copy Respondents To'
,p_source=>'select name from EBA_QPOLL_RESP_COMMUNITIES where id = :P70_COMMUNITY_ID_TO'
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>64
,p_cMaxlength=>4000
,p_display_when=>'P70_COMMUNITY_ACTION'
,p_display_when2=>'-1:0'
,p_display_when_type=>'VALUE_OF_ITEM_IN_CONDITION_IN_COLON_DELIMITED_LIST'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(14690190497303251212)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(14022962089414079520)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Add Respondents'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_to_community_id    number;',
'    l_from_community_id  number;',
'    l_respondent_id      number;',
'    l_in_community       varchar2(1);',
'begin',
'    if :P70_COMMUNITY_ACTION in (''-2'',''0'') and :P70_COMMUNITY_NAME is not null then',
'        -- Creating New Community',
'        insert into EBA_QPOLL_RESP_COMMUNITIES',
'        (name)',
'        values',
'        (:P70_COMMUNITY_NAME) returning id into l_to_community_id;',
'    end if;',
'',
'    if :P70_COMMUNITY_ACTION = ''-1'' and :P70_COMMUNITY_ID_TO is not null then',
'        -- Copying Community to another community',
'        l_from_community_id := :P70_COMMUNITY_ID;',
'        l_to_community_id   := :P70_COMMUNITY_ID_TO;',
'    else',
'        -- Copying Community to a new community',
'        l_from_community_id := :P70_COMMUNITY_ID;',
'    end if;',
'',
'    if :P70_COMMUNITY_ACTION in (''-1'',''0'') then',
'        -- Copy Respondents',
'        insert into eba_qpoll_resp_comm_ref (respondent_id, community_id)',
'        select',
'            rsp.id             as respondent_id,',
'            l_to_community_id  as community_id',
'        from',
'            eba_qpoll_resp_comm_ref rcl,',
'            eba_qpoll_respondents rsp,',
'            EBA_QPOLL_RESP_COMMUNITIES rc',
'        where',
'            rsp.id = rcl.respondent_id',
'        and',
'            rc.id = rcl.community_id',
'        and',
'            rcl.community_id = l_from_community_id;',
'    end if;',
'',
'    if :P70_COMMUNITY_ACTION = -3 then',
'        -- Add Respondent',
'        insert into eba_qpoll_resp_comm_ref',
'        (respondent_id, community_id)',
'        values',
'        (:P70_RESPONDENT_ID, :P70_COMMUNITY_ID_TO);',
'    end if;',
'',
'    -- Dont do this for adding a single respondent to an existing community',
'    if :P70_COMMUNITY_ACTION != -3 then',
'        -- Handle Additional Respondents for entire communities',
'        for c in',
'        (',
'            select',
'                lower(c001) as respondent',
'            from',
'                apex_collections',
'            where',
'                collection_name = ''EBA_QPOLL_RESPONDENT_VALID''',
'        )',
'        loop',
'            begin',
'                select decode(r.id, null, ''N'', ''Y'')',
'                  into l_in_community',
'                  from eba_qpoll_respondents r,',
'                       eba_qpoll_resp_comm_ref ref',
'                 where upper(r.email) = upper(c.respondent)',
'                   and r.id = ref.respondent_id',
'                   and ref.community_id = l_to_community_id;',
'            exception',
'                when no_data_found then',
'                    l_in_community := ''N'';',
'            end;',
'',
'            begin',
'                select r.id',
'                  into l_respondent_id',
'                  from eba_qpoll_respondents r',
'                 where lower(r.email) = lower(c.respondent);',
'            exception',
'                when no_data_found then',
'                    l_respondent_id := null;',
'            end;',
'',
'            if l_respondent_id is null then',
'                insert into eba_qpoll_respondents',
'                (email)',
'                values',
'                (lower(c.respondent)) returning id into l_respondent_id;',
'            end if;',
'',
'            if l_in_community = ''N'' and :P70_COMMUNITY_ACTION != -5 then',
'                insert into eba_qpoll_resp_comm_ref',
'                (respondent_id, community_id)',
'                values',
'                (l_respondent_id, nvl(l_to_community_id,:P70_COMMUNITY_ID_TO));',
'            end if;',
'        end loop;',
'    end if;',
'',
'    ---------------------',
'    -- delete collections',
'    --',
'    wwv_flow_collection.DELETE_COLLECTION(''EBA_QPOLL_RESPONDENT_INVALID'');',
'    wwv_flow_collection.DELETE_COLLECTION(''EBA_QPOLL_RESPONDENT_VALID'');',
'    wwv_flow_collection.DELETE_COLLECTION(''EBA_QPOLL_RESPONDENT_CREATE'');',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'#SQLERRM#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(14022198980044438131)
,p_process_success_message=>'Community information stored successfully.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(4635726108588686821)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(14022198980044438131)
);
wwv_flow_api.component_end;
end;
/
