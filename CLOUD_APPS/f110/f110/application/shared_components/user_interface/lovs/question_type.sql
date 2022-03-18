prompt --application/shared_components/user_interface/lovs/question_type
begin
--   Manifest
--     QUESTION TYPE
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>110
,p_default_id_offset=>101599614921830918
,p_default_owner=>'MISO'
);
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(13957552504559171117)
,p_lov_name=>'QUESTION TYPE'
,p_lov_query=>'.'||wwv_flow_api.id(13957552504559171117)||'.'
,p_location=>'STATIC'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(13957552701190171128)
,p_lov_disp_sequence=>10
,p_lov_disp_value=>'Pick One'
,p_lov_return_value=>'RADIO_GROUP'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(13957553009364171137)
,p_lov_disp_sequence=>10
,p_lov_disp_value=>'Pick Many'
,p_lov_return_value=>'CHECKBOX'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(13958795390350547486)
,p_lov_disp_sequence=>10
,p_lov_disp_value=>'Range: 1 = Lowest to 5 = Highest'
,p_lov_return_value=>'RANGE_LOW_TO_HIGH'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(13958795686899549074)
,p_lov_disp_sequence=>10
,p_lov_disp_value=>'Free form text'
,p_lov_return_value=>'TEXTAREA'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(13958796008884554058)
,p_lov_disp_sequence=>10
,p_lov_disp_value=>'Range: 1 = Disagree to 5 = Fully Agree'
,p_lov_return_value=>'RANGE_AGREE_DISAGREE'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(13958796303493556543)
,p_lov_disp_sequence=>10
,p_lov_disp_value=>'Range: 1 = Least Likely to 5 = Most Likely'
,p_lov_return_value=>'RANGE_LIKELIHOOD'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(13958796595729560201)
,p_lov_disp_sequence=>10
,p_lov_disp_value=>'Yes / No'
,p_lov_return_value=>'YES_NO'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(13958798300893572998)
,p_lov_disp_sequence=>10
,p_lov_disp_value=>'Range: 1 = Poor to 5 = Excellent'
,p_lov_return_value=>'RANGE_POOR_TO_EXCELLENT'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(13958799182346581615)
,p_lov_disp_sequence=>10
,p_lov_disp_value=>'Pick Two Values'
,p_lov_return_value=>'PICK_TWO'
,p_lov_disp_cond_type=>'NEVER'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(13958799597645589633)
,p_lov_disp_sequence=>10
,p_lov_disp_value=>'Range: 1 = Hate it to 5 = Love it'
,p_lov_return_value=>'RANGE_LOVE_HATE'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(13958799884059595991)
,p_lov_disp_sequence=>10
,p_lov_disp_value=>'Range: 1 = Never to 5 = All of the time'
,p_lov_return_value=>'RANGE_FREQUENCY'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(13958800486203610190)
,p_lov_disp_sequence=>10
,p_lov_disp_value=>'Range: 1 = Would not recommend to 5 = Would highly recommend'
,p_lov_return_value=>'RANGE_RECOMMENDATION'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(13958802590048654002)
,p_lov_disp_sequence=>10
,p_lov_disp_value=>'Range: 1 = Would not consider using to 5 = Will consider using'
,p_lov_return_value=>'RANGE_CONSIDERATION'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(13958802903838662815)
,p_lov_disp_sequence=>10
,p_lov_disp_value=>'Range: 1 = Would not endorse to 5 = Would fully endorse'
,p_lov_return_value=>'RANGE_ENDORSE'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(13958803283997671993)
,p_lov_disp_sequence=>10
,p_lov_disp_value=>'Range: 1 = Hard to 5 = Easy'
,p_lov_return_value=>'RANGE_HARD_TO_EASY'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(13958803604257677801)
,p_lov_disp_sequence=>10
,p_lov_disp_value=>'Range: 1 = Complex to 5 = Simple'
,p_lov_return_value=>'RANGE_SIMPLE_TO_COMPLEX'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(13958803899943679812)
,p_lov_disp_sequence=>10
,p_lov_disp_value=>'Range: 1 = Obtuse to 5 = Elegant'
,p_lov_return_value=>'RANGE_ELEGANCE'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(13958804579874704314)
,p_lov_disp_sequence=>10
,p_lov_disp_value=>'Range: 1 = Will not use to 5 = Will immediately use'
,p_lov_return_value=>'RANGE_TIMEFRAME'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(13958804983743717688)
,p_lov_disp_sequence=>10
,p_lov_disp_value=>'Range: 1 = Not Applicable to 5 = Broadly Applicable'
,p_lov_return_value=>'RANGE_APPLICABILITY'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(13958805678555735260)
,p_lov_disp_sequence=>10
,p_lov_disp_value=>'Range: 1 = Megabytes or less to 5 = Petabytes or more'
,p_lov_return_value=>'RANGE_STORAGE'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(13958806001618739749)
,p_lov_disp_sequence=>10
,p_lov_disp_value=>'Range: 1 = Least valuable to 5 = Most Valuable'
,p_lov_return_value=>'RANGE_VALUE'
);
wwv_flow_api.component_end;
end;
/
