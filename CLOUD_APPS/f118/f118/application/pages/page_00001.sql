prompt --application/pages/page_00001
begin
--   Manifest
--     PAGE: 00001
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>118
,p_default_id_offset=>0
,p_default_owner=>'MISO'
);
wwv_flow_api.create_page(
 p_id=>1
,p_user_interface_id=>wwv_flow_api.id(71961679766536925)
,p_name=>'Home'
,p_alias=>'HOME'
,p_step_title=>'HR_SKILLS_SAMPLE_APP'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'MISO'
,p_last_upd_yyyymmddhh24miss=>'20211218004715'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(71978135841537026)
,p_plug_name=>'HR_SKILLS_SAMPLE_APP'
,p_icon_css_classes=>'app-icon'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(71862217128536840)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(72202665248538508)
,p_plug_name=>'Page Navigation'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:u-colors:t-Cards--featured t-Cards--block force-fa-lg:t-Cards--displayIcons:t-Cards--4cols:t-Cards--hideBody:t-Cards--animColorFill'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(71841025018536828)
,p_plug_display_sequence=>30
,p_plug_display_point=>'BODY'
,p_list_id=>wwv_flow_api.id(72199989055538506)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(71912976311536873)
,p_plug_query_num_rows=>15
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(73207840200617847)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(71872044837536845)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<pre>',
'ND_BUSINESS_SKILLS',
'  ID	        NUMBER	',
'  EMPLOYEE_ID	NUMBER	',
'  SKILL	      VARCHAR2(10)',
'  PROFICIENCY	NUMBER	',
'',
'ND_DEPARTMENT',
'  DEPARTMENT_ID	NUMBER	',
'  DEPARTMENT   	VARCHAR2(4000)	',
'',
'ND_EMPLOYEES',
'  ID	          NUMBER	',
'  LAST_NAME	    VARCHAR2(100)	',
'  FIRST_NAME	  VARCHAR2(100)	',
'  FULL_NAME	    VARCHAR2(255)	',
'  MANAGER	      VARCHAR2(50)	',
'  WORK_EMAIL	  VARCHAR2(255)	',
'  ORG_LEVEL	    NUMBER	',
'  PHONE	        VARCHAR2(50)	',
'  TITLE_ID	    NUMBER	',
'  DEPARTMENT_ID	NUMBER	',
'  FULL_NAME_CMA	VARCHAR2(400)	',
'  IS_MANAGER	  VARCHAR2(100)	',
'',
'ND_LOCATION',
'  LOCATION_ID	NUMBER	',
'  LOCATION	VARCHAR2(4000)	',
'',
'ND_PRODUCTS',
'  ID	NUMBER	',
'  NAME	VARCHAR2(255)	',
'  LOCATION_ID	NUMBER',
'',
'ND_BUSINESS_SKILLS',
'  ID	        NUMBER	',
'  EMPLOYEE_ID	NUMBER	',
'  SKILL	      VARCHAR2(10)',
'  PROFICIENCY	NUMBER	',
'',
'ND_HARDWARE_SKILLS',
'  ID	          NUMBER	',
'  EMPLOYEE_ID	  NUMBER	',
'  SKILL	        VARCHAR2(10)	',
'  PROFICIENCY	  NUMBER',
'',
'ND_MANAGEMENT_SKILLS',
'  ID	NUMBER	',
'  EMPLOYEE_ID	NUMBER	',
'  SKILL	VARCHAR2(9)	',
'  PROFICIENCY	NUMBER	',
'',
'ND_SOFTWARE_SKILLS',
'  ID	NUMBER	 ',
'  EMPLOYEE_ID	NUMBER	                                  ',
'  SKILL	VARCHAR2(10)	                                  ',
'  PROFICIENCY	NUMBER	                                  ',
'',
'ND_TITLE',
'  TITLE_ID	NUMBER	 ',
'  TITLE	VARCHAR2(4000)	 ',
'',
'          skill      vc255 /values C++, Java, APEX, JSON, Javascript, Python, CSS',
'          proficiency num  /check 1, 2, 3, 4, 5 [with 1 being a novice and 5 being a guru]',
'',
'</Pre>',
''))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.component_end;
end;
/
