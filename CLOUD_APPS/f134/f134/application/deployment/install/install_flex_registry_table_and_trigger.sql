prompt --application/deployment/install/install_flex_registry_table_and_trigger
begin
--   Manifest
--     INSTALL: INSTALL-Flex Registry Table and Trigger
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>134
,p_default_id_offset=>172493832712964115
,p_default_owner=>'MISO'
);
wwv_flow_api.create_install_script(
 p_id=>wwv_flow_api.id(6243873100890719098)
,p_install_id=>wwv_flow_api.id(9012014618759672631)
,p_name=>'Flex Registry Table and Trigger'
,p_sequence=>650
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'create table eba_proj_flex_registry (',
'    id                  number primary key,',
'    row_version_number  integer,',
'    flexible_table      varchar2(128) not null,',
'    flexible_column     varchar2(128) not null,',
'    friendly_name       varchar2(128) ,',
'    assigned_yn         varchar2(1)   not null,',
'    active_yn           varchar2(1)   not null,',
'    --',
'    report_css_class   varchar2(128) not null,',
'    table_prefix        varchar2(30)  not null,',
'    display_name_sing   varchar2(128) not null,',
'    display_name_plrl   varchar2(128) not null,',
'    --',
'    form_label_text     varchar2(255) not null,',
'    report_label_text   varchar2(255),',
'    is_required_yn      varchar2(1)   not null,',
'    is_displayed_on_ir  varchar2(1)   not null,',
'    label_template_id   number        not null,',
'    label_template_name varchar2(255),',
'    display_as          varchar2(255) not null,',
'                           constraint eba_proj_flex_chk_dsply_as_val',
'                           check (display_as in (''SELECT_LIST'',''TEXT'',''TEXTAREA'',''DATE'',''NUMBER'')),',
'    width              number        not null,',
'    max_width          number        not null,',
'    height             number        not null,',
'    format_mask        varchar2(30),',
'    label_alignment    varchar2(30),',
'    help_text          varchar2(4000),',
'    lov_type           varchar2(30),',
'    lov_sql_query      clob,',
'    lov_display_col    varchar2(30),',
'    lov_return_col     varchar2(30),',
'    default_value      varchar2(4000),',
'    rpt_hdr_alignment  varchar2(30),',
'    condition_type     varchar2(255),',
'    condition1         varchar2(4000),',
'    condition2         varchar2(4000),',
'    --',
'    created_by         varchar2(255),',
'    created            timestamp with local time zone,',
'    updated_by         varchar2(255),',
'    updated            timestamp with local time zone',
');',
'',
'create or replace trigger eba_proj_flex_registry_biu',
'    before insert or update on eba_proj_flex_registry',
'    for each row',
'begin',
'    if inserting then',
'        if :new.id is null then',
'            :new.id := to_number(sys_guid(),''XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'');',
'        end if;',
'        :new.row_version_number := 1;',
'        :new.created_by := nvl(wwv_flow.g_user,user);',
'        :new.created := localtimestamp;',
'    elsif updating then',
'        :new.row_version_number := nvl(:old.row_version_number,1) + 1;',
'    end if;',
'    :new.updated_by := nvl(wwv_flow.g_user,user);',
'    :new.updated := localtimestamp;',
'end eba_proj_flex_registry_biu;',
'/',
'show errors',
'',
'alter trigger eba_proj_flex_registry_biu enable;',
''))
);
wwv_flow_api.component_end;
end;
/
