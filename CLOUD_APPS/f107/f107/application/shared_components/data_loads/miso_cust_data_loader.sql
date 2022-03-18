prompt --application/shared_components/data_loads/miso_cust_data_loader
begin
--   Manifest
--     DATA LOAD: MISO_CUST_DATA_LOADER
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>107
,p_default_id_offset=>0
,p_default_owner=>'MISO'
);
wwv_flow_api.create_data_profile(
 p_id=>wwv_flow_api.id(72215071148474372)
,p_name=>'MISO_CUST_DATA_LOADER'
,p_format=>'CSV'
,p_encoding=>'utf-8'
,p_csv_enclosed=>'"'
,p_has_header_row=>true
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(72215389709474407)
,p_data_profile_id=>wwv_flow_api.id(72215071148474372)
,p_name=>'EMAIL_TEMPLATE'
,p_sequence=>1
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_selector_type=>'NAME'
,p_selector=>'EMAIL_TEMPLATE'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(72215681455474408)
,p_data_profile_id=>wwv_flow_api.id(72215071148474372)
,p_name=>'USER_NAME'
,p_sequence=>2
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_selector_type=>'NAME'
,p_selector=>'USER_NAME'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(72215972226474408)
,p_data_profile_id=>wwv_flow_api.id(72215071148474372)
,p_name=>'PASSWORD'
,p_sequence=>3
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_selector_type=>'NAME'
,p_selector=>'PASSWORD'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(72216230824474408)
,p_data_profile_id=>wwv_flow_api.id(72215071148474372)
,p_name=>'EMAIL_ADDRESS'
,p_sequence=>4
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_selector_type=>'NAME'
,p_selector=>'EMAIL_ADDRESS'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(72216599385474408)
,p_data_profile_id=>wwv_flow_api.id(72215071148474372)
,p_name=>'SALES_CONTACT'
,p_sequence=>5
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_selector_type=>'NAME'
,p_selector=>'SALES_CONTACT'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(72216859014474408)
,p_data_profile_id=>wwv_flow_api.id(72215071148474372)
,p_name=>'INTERNAL_CONTACT'
,p_sequence=>6
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_selector_type=>'NAME'
,p_selector=>'INTERNAL_CONTACT'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(72217150126474409)
,p_data_profile_id=>wwv_flow_api.id(72215071148474372)
,p_name=>'BRAND'
,p_sequence=>7
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_selector_type=>'NAME'
,p_selector=>'BRAND'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(72217441067474409)
,p_data_profile_id=>wwv_flow_api.id(72215071148474372)
,p_name=>'CUST_L0_EXEC'
,p_sequence=>8
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_selector_type=>'NAME'
,p_selector=>'CUST_L0_EXEC'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(72217731947474409)
,p_data_profile_id=>wwv_flow_api.id(72215071148474372)
,p_name=>'REGION_L1'
,p_sequence=>9
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_selector_type=>'NAME'
,p_selector=>'REGION_L1'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(72218018609474409)
,p_data_profile_id=>wwv_flow_api.id(72215071148474372)
,p_name=>'FRANCHISE_L2'
,p_sequence=>10
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_selector_type=>'NAME'
,p_selector=>'FRANCHISE_L2'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(72218380376474409)
,p_data_profile_id=>wwv_flow_api.id(72215071148474372)
,p_name=>'STORE_L3'
,p_sequence=>11
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_selector_type=>'NAME'
,p_selector=>'STORE_L3'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(72218690404474409)
,p_data_profile_id=>wwv_flow_api.id(72215071148474372)
,p_name=>'POSITION__L4'
,p_sequence=>12
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_selector_type=>'NAME'
,p_selector=>'POSITION__L4'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(72218937758474410)
,p_data_profile_id=>wwv_flow_api.id(72215071148474372)
,p_name=>'USER_STORY'
,p_sequence=>13
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_selector_type=>'NAME'
,p_selector=>'USER_STORY'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(72219224115474410)
,p_data_profile_id=>wwv_flow_api.id(72215071148474372)
,p_name=>'EMAIL_TEMPLATE_ID'
,p_sequence=>14
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_selector_type=>'NAME'
,p_selector=>'EMAIL_TEMPLATE_ID'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(72219538427474410)
,p_data_profile_id=>wwv_flow_api.id(72215071148474372)
,p_name=>'USER_NAME_ID'
,p_sequence=>15
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_selector_type=>'NAME'
,p_selector=>'USER_NAME_ID'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(72219801531474410)
,p_data_profile_id=>wwv_flow_api.id(72215071148474372)
,p_name=>'PASSWORD_ID'
,p_sequence=>16
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_selector_type=>'NAME'
,p_selector=>'PASSWORD_ID'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(72220130286474410)
,p_data_profile_id=>wwv_flow_api.id(72215071148474372)
,p_name=>'EMAIL_ADDRESS_ID'
,p_sequence=>17
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_selector_type=>'NAME'
,p_selector=>'EMAIL_ADDRESS_ID'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(72220447340474410)
,p_data_profile_id=>wwv_flow_api.id(72215071148474372)
,p_name=>'SALES_CONTACT_ID'
,p_sequence=>18
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_selector_type=>'NAME'
,p_selector=>'SALES_CONTACT_ID'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(72220720599474411)
,p_data_profile_id=>wwv_flow_api.id(72215071148474372)
,p_name=>'INTERNAL_CONTACT_ID'
,p_sequence=>19
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_selector_type=>'NAME'
,p_selector=>'INTERNAL_CONTACT_ID'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(72221041531474411)
,p_data_profile_id=>wwv_flow_api.id(72215071148474372)
,p_name=>'BRAND_ID'
,p_sequence=>20
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_selector_type=>'NAME'
,p_selector=>'BRAND_ID'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(72221383906474411)
,p_data_profile_id=>wwv_flow_api.id(72215071148474372)
,p_name=>'CUST_L0_EXEC_ID'
,p_sequence=>21
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_selector_type=>'NAME'
,p_selector=>'CUST_L0_EXEC_ID'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(72221606946474411)
,p_data_profile_id=>wwv_flow_api.id(72215071148474372)
,p_name=>'REGION_L1_ID'
,p_sequence=>22
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_selector_type=>'NAME'
,p_selector=>'REGION_L1_ID'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(72221913982474411)
,p_data_profile_id=>wwv_flow_api.id(72215071148474372)
,p_name=>'FRANCHISE_L2_ID'
,p_sequence=>23
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_selector_type=>'NAME'
,p_selector=>'FRANCHISE_L2_ID'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(72222284152474411)
,p_data_profile_id=>wwv_flow_api.id(72215071148474372)
,p_name=>'STORE_L3_ID'
,p_sequence=>24
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_selector_type=>'NAME'
,p_selector=>'STORE_L3_ID'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(72222590614474412)
,p_data_profile_id=>wwv_flow_api.id(72215071148474372)
,p_name=>'POSITION__L4_ID'
,p_sequence=>25
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_selector_type=>'NAME'
,p_selector=>'POSITION__L4_ID'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(72222865024474412)
,p_data_profile_id=>wwv_flow_api.id(72215071148474372)
,p_name=>'USER_STORY_ID'
,p_sequence=>26
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_selector_type=>'NAME'
,p_selector=>'USER_STORY_ID'
);
wwv_flow_api.create_load_table(
 p_id=>wwv_flow_api.id(72223008720474412)
,p_name=>'MISO_CUST_DATA_LOADER'
,p_static_id=>'MISO_CUST_DATA_LOADER'
,p_target_type=>'TABLE'
,p_table_name=>'MISO_CUST_DATA_LOADER'
,p_data_profile_id=>wwv_flow_api.id(72215071148474372)
,p_loading_method=>'APPEND'
,p_commit_interval=>200
,p_error_handling=>'ABORT'
,p_skip_validation=>'N'
);
wwv_flow_api.component_end;
end;
/
