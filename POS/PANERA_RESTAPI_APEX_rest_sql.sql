CREATE TABLE MISO.CR_PANERA_FILES 
(	ID                     NUMBER(*,0) GENERATED ALWAYS AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999999999999999 
                           INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE , 
	FILE_NAME              VARCHAR2(256 BYTE)      COLLATE "USING_NLS_COMP", 
	CONTENT_TYPE           VARCHAR2(256 BYTE)      COLLATE "USING_NLS_COMP", 
	CONTENT                BLOB,                   
	SOURCE_DESC            VARCHAR2(4000 BYTE)     COLLATE "USING_NLS_COMP", 
  CR_COFFEE_text_FLD1    VARCHAR2(4000 BYTE),
  CR_COFFEE_text_FLD2    VARCHAR2(4000 BYTE),
  CR_COFFEE_text_FLD3    VARCHAR2(4000 BYTE),
  CR_COFFEE_text_FLD4    VARCHAR2(4000 BYTE),
  CR_COFFEE_text_FLD5    VARCHAR2(4000 BYTE),
  CR_COFFEE_text_desc_1  VARCHAR2(4000 BYTE),
  CR_COFFEE_text_desc_2  VARCHAR2(4000 BYTE),
  CR_COFFEE_text_desc_3  VARCHAR2(4000 BYTE),
  CR_COFFEE_text_desc_4  VARCHAR2(4000 BYTE),
  CR_COFFEE_text_desc_5  VARCHAR2(4000 BYTE),
  CONTENT_CLOB           CLOB,                   
 -- CONTENT_JSON           JSON,                   
	MIME_TYPE              VARCHAR2(4000 BYTE)     COLLATE "USING_NLS_COMP", 
	UPLOAD_DATE            DATE,                   
	PROCESS_FLAG           VARCHAR2(10 BYTE)       COLLATE "USING_NLS_COMP", 
	ERROR_DESC             VARCHAR2(4000 BYTE)     COLLATE "USING_NLS_COMP"
 );

CREATE UNIQUE INDEX "MISO"."CR_PANERA_FILES_PK" ON "MISO"."CR_PANERA_FILES" ("ID");

ALTER TABLE "MISO"."CR_PANERA_FILES" MODIFY ("FILE_NAME"    NOT NULL ENABLE);
ALTER TABLE "MISO"."CR_PANERA_FILES" MODIFY ("CONTENT_TYPE" NOT NULL ENABLE);
ALTER TABLE "MISO"."CR_PANERA_FILES" MODIFY ("CONTENT"      NOT NULL ENABLE);
ALTER TABLE "MISO"."CR_PANERA_FILES" ADD CONSTRAINT "CR_PANERA_FILES_PK" PRIMARY KEY ("ID")  USING INDEX  ENABLE;
ALTER TABLE "MISO"."CR_PANERA_FILES" MODIFY ("ID" NOT NULL ENABLE);

ALTER TABLE miso.cr_panera_files
  ADD ( content_json CLOB 
         CONSTRAINT content_json_panera_files CHECK ( content_json IS JSON ) );
         


BEGIN
  ORDS.ENABLE_SCHEMA(
      p_enabled             => TRUE,
      p_schema              => 'MISO',
      p_url_mapping_type    => 'BASE_PATH',
      p_url_mapping_pattern => 'miso',
      p_auto_rest_auth      => TRUE);
    
  ORDS.DEFINE_MODULE(
      p_module_name    => 'panera',
      p_base_path      => '/panera_fileup/',
      p_items_per_page => 25,
      p_status         => 'PUBLISHED',
      p_comments       => NULL);

  ORDS.DEFINE_TEMPLATE(
      p_module_name    => 'panera',
      p_pattern        => 'CR_PANERA_FILES/',
      p_priority       => 0,
      p_etag_type      => 'HASH',
      p_etag_query     => NULL,
      p_comments       => NULL);

  ORDS.DEFINE_HANDLER(
      p_module_name    => 'panera',
      p_pattern        => 'CR_PANERA_FILES/',
      p_method         => 'POST',
      p_source_type    => 'plsql/block',
      p_items_per_page => 0,
      p_mimes_allowed  => NULL,
      p_comments       => NULL,
      p_source         => 
'declare 
 image_id integer; 
begin
 insert into CR_PANERA_FILES (file_name, content_type, content, source_Desc,
  CR_COFFEE_text_FLD1  , CR_COFFEE_text_FLD2   ,CR_COFFEE_text_FLD3,   CR_COFFEE_text_FLD4,   CR_COFFEE_text_FLD5,
  CR_COFFEE_text_desc_1, CR_COFFEE_text_desc_2, CR_COFFEE_text_desc_3, CR_COFFEE_text_desc_4, CR_COFFEE_text_desc_5 
               ) 
             values  (:file_name,:file_type,:body,''panera_UP_1'',
                       :CR_COFFEE_text_FLD1  , :CR_COFFEE_text_FLD2   ,:CR_COFFEE_text_FLD3,   :CR_COFFEE_text_FLD4,   :CR_COFFEE_text_FLD5,
                       :CR_COFFEE_text_desc_1, :CR_COFFEE_text_desc_2, :CR_COFFEE_text_desc_3, :CR_COFFEE_text_desc_4, :CR_COFFEE_text_desc_5 
              ) /*-- :body is defined by ORDS */
             returning id into image_id;
 :status := 201;                                                       /*-- http status code */
 :location := ''./'' || image_id;                                     /*-- included in the response to access the new record */
end;');

  ORDS.DEFINE_PARAMETER(
      p_module_name        => 'panera',
      p_pattern            => 'CR_PANERA_FILES/',
      p_method             => 'POST',
      p_name               => 'X-ORDS-STATUS-CODE',
      p_bind_variable_name => 'status',
      p_source_type        => 'HEADER',
      p_param_type         => 'INT',
      p_access_method      => 'OUT',
      p_comments           => NULL);

  ORDS.DEFINE_PARAMETER(
      p_module_name        => 'panera',
      p_pattern            => 'CR_PANERA_FILES/',
      p_method             => 'POST',
      p_name               => 'file_name',
      p_bind_variable_name => 'file_name',
      p_source_type        => 'HEADER',
      p_param_type         => 'STRING',
      p_access_method      => 'IN',
      p_comments           => NULL);

  ORDS.DEFINE_PARAMETER(
      p_module_name        => 'panera',
      p_pattern            => 'CR_PANERA_FILES/',
      p_method             => 'POST',
      p_name               => 'file_type',
      p_bind_variable_name => 'file_type',
      p_source_type        => 'HEADER',
      p_param_type         => 'STRING',
      p_access_method      => 'IN',
      p_comments           => NULL);

  ORDS.DEFINE_PARAMETER(
      p_module_name        => 'panera',
      p_pattern            => 'CR_PANERA_FILES/',
      p_method             => 'POST',
      p_name               => 'CR_COFFEE_text_FLD1',
      p_bind_variable_name => 'CR_COFFEE_text_FLD1',
      p_source_type        => 'HEADER',
      p_param_type         => 'STRING',
      p_access_method      => 'IN',
      p_comments           => NULL);

  ORDS.DEFINE_PARAMETER(
      p_module_name        => 'panera',
      p_pattern            => 'CR_PANERA_FILES/',
      p_method             => 'POST',
      p_name               => 'CR_COFFEE_text_FLD2',
      p_bind_variable_name => 'CR_COFFEE_text_FLD2',
      p_source_type        => 'HEADER',
      p_param_type         => 'STRING',
      p_access_method      => 'IN',
      p_comments           => NULL);

  ORDS.DEFINE_PARAMETER(
      p_module_name        => 'panera',
      p_pattern            => 'CR_PANERA_FILES/',
      p_method             => 'POST',
      p_name               => 'CR_COFFEE_text_FLD3',
      p_bind_variable_name => 'CR_COFFEE_text_FLD3',
      p_source_type        => 'HEADER',
      p_param_type         => 'STRING',
      p_access_method      => 'IN',
      p_comments           => NULL);

  ORDS.DEFINE_PARAMETER(
      p_module_name        => 'panera',
      p_pattern            => 'CR_PANERA_FILES/',
      p_method             => 'POST',
      p_name               => 'CR_COFFEE_text_FLD4',
      p_bind_variable_name => 'CR_COFFEE_text_FLD4',
      p_source_type        => 'HEADER',
      p_param_type         => 'STRING',
      p_access_method      => 'IN',
      p_comments           => NULL);

  ORDS.DEFINE_PARAMETER(
      p_module_name        => 'panera',
      p_pattern            => 'CR_PANERA_FILES/',
      p_method             => 'POST',
      p_name               => 'CR_COFFEE_text_FLD5',
      p_bind_variable_name => 'CR_COFFEE_text_FLD5',
      p_source_type        => 'HEADER',
      p_param_type         => 'STRING',
      p_access_method      => 'IN',
      p_comments           => NULL);

  ORDS.DEFINE_PARAMETER(
      p_module_name        => 'panera',
      p_pattern            => 'CR_PANERA_FILES/',
      p_method             => 'POST',
      p_name               => 'CR_COFFEE_text_desc_1',
      p_bind_variable_name => 'CR_COFFEE_text_desc_1',
      p_source_type        => 'HEADER',
      p_param_type         => 'STRING',
      p_access_method      => 'IN',
      p_comments           => NULL);

  ORDS.DEFINE_PARAMETER(
      p_module_name        => 'panera',
      p_pattern            => 'CR_PANERA_FILES/',
      p_method             => 'POST',
      p_name               => 'CR_COFFEE_text_desc_2',
      p_bind_variable_name => 'CR_COFFEE_text_desc_2',
      p_source_type        => 'HEADER',
      p_param_type         => 'STRING',
      p_access_method      => 'IN',
      p_comments           => NULL);

  ORDS.DEFINE_PARAMETER(
      p_module_name        => 'panera',
      p_pattern            => 'CR_PANERA_FILES/',
      p_method             => 'POST',
      p_name               => 'CR_COFFEE_text_desc_3',
      p_bind_variable_name => 'CR_COFFEE_text_desc_3',
      p_source_type        => 'HEADER',
      p_param_type         => 'STRING',
      p_access_method      => 'IN',
      p_comments           => NULL);

  ORDS.DEFINE_PARAMETER(
      p_module_name        => 'panera',
      p_pattern            => 'CR_PANERA_FILES/',
      p_method             => 'POST',
      p_name               => 'CR_COFFEE_text_desc_4',
      p_bind_variable_name => 'CR_COFFEE_text_desc_4',
      p_source_type        => 'HEADER',
      p_param_type         => 'STRING',
      p_access_method      => 'IN',
      p_comments           => NULL);

  ORDS.DEFINE_PARAMETER(
      p_module_name        => 'panera',
      p_pattern            => 'CR_PANERA_FILES/',
      p_method             => 'POST',
      p_name               => 'CR_COFFEE_text_desc_5',
      p_bind_variable_name => 'CR_COFFEE_text_desc_5',
      p_source_type        => 'HEADER',
      p_param_type         => 'STRING',
      p_access_method      => 'IN',
      p_comments           => NULL);


  ORDS.DEFINE_PARAMETER(
      p_module_name        => 'panera',
      p_pattern            => 'CR_PANERA_FILES/',
      p_method             => 'POST',
      p_name               => 'location',
      p_bind_variable_name => 'location',
      p_source_type        => 'HEADER',
      p_param_type         => 'STRING',
      p_access_method      => 'OUT',
      p_comments           => NULL);

  ORDS.DEFINE_HANDLER(
      p_module_name    => 'panera',
      p_pattern        => 'CR_PANERA_FILES/',
      p_method         => 'GET',
      p_source_type    => 'json/collection',
      p_items_per_page => 0,
      p_mimes_allowed  => NULL,
      p_comments       => NULL,
      p_source         => 
'select ID ,
FILE_NAME ,
CONTENT_TYPE,
''./'' || id "$record"  /*-- the $ tells ORDS to render this as a LINK */
from CR_PANERA_FILES
order by id asc');

  ORDS.DEFINE_TEMPLATE(
      p_module_name    => 'panera',
      p_pattern        => 'CR_PANERA_FILES/:id',
      p_priority       => 0,
      p_etag_type      => 'HASH',
      p_etag_query     => NULL,
      p_comments       => NULL);

  ORDS.DEFINE_HANDLER(
      p_module_name    => 'panera',
      p_pattern        => 'CR_PANERA_FILES/:id',
      p_method         => 'GET',
      p_source_type    => 'json/item',
      p_items_per_page => 25,
      p_mimes_allowed  => NULL,
      p_comments       => NULL,
      p_source         => 
'select FILE_NAME,
      CONTENT_TYPE,
      ID || ''/content'' "$file"
 from CR_PANERA_FILES
where ID = :id');

  ORDS.DEFINE_TEMPLATE(
      p_module_name    => 'panera',
      p_pattern        => 'CR_PANERA_FILES/:id/content',
      p_priority       => 0,
      p_etag_type      => 'HASH',
      p_etag_query     => NULL,
      p_comments       => NULL);

  ORDS.DEFINE_HANDLER(
      p_module_name    => 'panera',
      p_pattern        => 'CR_PANERA_FILES/:id/content',
      p_method         => 'GET',
      p_source_type    => 'resource/lob',
      p_items_per_page => 25,
      p_mimes_allowed  => NULL,
      p_comments       => NULL,
      p_source         => 
'select CONTENT_TYPE,
       CONTENT
  from CR_PANERA_FILES
 where ID = :id');

    
        
COMMIT;

END;

=======================================================================================================================================
cURL for the template - CR_PANERA_FILES/

curl --location \
'https://gd49ef7d5e3cd2d-db202110212330.adb.us-phoenix-1.oraclecloudapps.com/ords/miso/panera_fileup/CR_PANERA_FILES/' 


curl --location --request POST \
'https://gd49ef7d5e3cd2d-db202110212330.adb.us-phoenix-1.oraclecloudapps.com/ords/miso/panera_fileup/CR_PANERA_FILES/' \
--header 'Content-Type: application/json' \
--data-binary '{
          "file_name": "<VALUE>",
          "file_type": "<VALUE>",
  "CR_COFFEE_text_FLD1": "<VALUE>",
  "CR_COFFEE_text_FLD2": "<VALUE>",
  "CR_COFFEE_text_FLD3": "<VALUE>",
  "CR_COFFEE_text_FLD4": "<VALUE>",
  "CR_COFFEE_text_FLD5": "<VALUE>",
  "CR_COFFEE_text_desc_1": "<VALUE>",
  "CR_COFFEE_text_desc_2": "<VALUE>",
  "CR_COFFEE_text_desc_3": "<VALUE>",
  "CR_COFFEE_text_desc_4": "<VALUE>",
  "CR_COFFEE_text_desc_5": "<VALUE>",
  "status": "<VALUE>",
  "location": "<VALUE>" 
}'

===================================================================================================================================

cURL for the template - CR_PANERA_FILES/:id    get 
curl --location \
'https://gd49ef7d5e3cd2d-db202110212330.adb.us-phoenix-1.oraclecloudapps.com/ords/miso/panera_fileup/CR_PANERA_FILES/<VALUE>' 

===================================================================================================================================

cURL for the template - CR_PANERA_FILES/:id/content

curl --location \
'https://gd49ef7d5e3cd2d-db202110212330.adb.us-phoenix-1.oraclecloudapps.com/ords/miso/panera_fileup/CR_PANERA_FILES/<VALUE>/content' 

===================================================================================================================================
curl --ssl-no-revoke  "POST"  "https://gd49ef7d5e3cd2d-db202110212330.adb.us-phoenix-1.oraclecloudapps.com/ords/miso/panera_fileup/CR_PANERA_FILES/" ^
  -H "accept: application/json" -H "file_name: notification-no-temperature-sensor.json"  -H "file_type: text" -H "Content-Type: application/json" ^
  -H "CR_COFFEE_text_FLD1: text_fld_1" ^
  -H "CR_COFFEE_text_desc_1: text_desc_  fld_1" ^
  --data-binary  "@c:\cook_right_coffee\notification-no-temperature-sensor.json"  -v
  
===================================================================================================================================
C:\Cook_Right_COFFEE>curl --ssl-no-revoke  "POST"  "https://gd49ef7d5e3cd2d-db202110212330.adb.us-phoenix-1.oraclecloudapps.com/ords/miso/panera_fileup/CR_PANERA_FILES/" ^
 -H "accept: application/json" -H "file_type: text" -H "Content-Type: application/json"  -H "CR_COFFEE_text_FLD1: text_fld_1" -H "CR_COFFEE_text_desc_1: text_desc_  fld_1" ^
 -H                        "file_name: notification-weight-out-of-limit.json" ^
 --data-binary  "@c:\cook_right_coffee\notification-weight-out-of-limit.json"  -v

create or replace function dw_wc_15_pipe_clob (
  p_clob          in clob,
  p_max_lengthb   in integer default 4000,
  p_rec_delim     in varchar2 default '
'
) return sys.odcivarchar2list pipelined authid current_user as
/*
Break CLOB into VARCHAR2 sized bites.
Reduce p_max_lengthb if you need to expand the VARCHAR2
in later processing.
Last record delimiter in each bite is not returned,
but if it is a newline and the output is spooled
the newline will come back in the spooled output.
Note: this cannot work if the CLOB contains more than
<p_max_lengthb> consecutive bytes without a record delimiter.
*/
  l_amount integer;
  l_offset integer;
  l_buffer varchar2(32767 BYTE);
  l_out varchar2(32767 BYTE);
  l_buff_lengthb integer;
  l_occurence integer;
  l_rec_delim_length integer := length(p_rec_delim);
begin
  if p_max_lengthb > 4000 then
    raise_application_error(-20001, 'Maximum record length (p_max_lengthb) cannot be greater than 4000.');
  elsif p_max_lengthb < 10 then
    raise_application_error(-20002, 'Maximum record length (p_max_lengthb) cannot be less than 10.');
  end if;
  if p_rec_delim is null then
    raise_application_error(-20003, 'Record delimiter (p_rec_delim) cannot be null.');
  end if;
  /* This version is limited to 4000 byte output, so I can afford to ask for 4001
      in case the record is exactly 4000 bytes long.
  */
  l_amount := p_max_lengthb + l_rec_delim_length;
  l_offset := 1;
  while l_amount = p_max_lengthb + l_rec_delim_length loop
    begin
      DBMS_LOB.READ (
       p_clob,
       l_amount,
       l_offset,
       l_buffer
      );
    exception when no_data_found then
      l_amount := 0;
    end;
    if l_amount = 0 then
      exit;
    elsif lengthb(l_buffer) <= p_max_lengthb then pipe row(rtrim(l_buffer, p_rec_delim)); exit; end if; l_buff_lengthb := p_max_lengthb + l_rec_delim_length; l_occurence := 0; while l_buff_lengthb > p_max_lengthb loop
      l_occurence := l_occurence + 1;
      l_buff_lengthb := instrb(l_buffer,p_rec_delim, -1, l_occurence) - 1;
    end loop;
    if l_buff_lengthb < 0 then
      if l_amount = p_max_lengthb + l_rec_delim_length then
        raise_application_error(
          -20004, 
          'Input clob at offset '||l_offset||' for lengthb '||p_max_lengthb||' has no record delimiter'
        );
      end if;
    end if;
    l_out := substrb(l_buffer, 1, l_buff_lengthb);
    pipe row(l_out);
    l_offset := l_offset + nvl(length(l_out),0) + l_rec_delim_length;
    l_amount := p_max_lengthb + l_rec_delim_length;
  end loop;
  return;
end;


CREATE OR REPLACE FORCE VIEW "DW_WC_PARSE_15_MIN_FILES" ("ID", "FILE_NAME", "COLUMN_VALUE", "RECORDTYPE", "STARTTIME", "ENDTIME", "BUSINESSDATE", "AREACODE", "STORE", "TRANSACTIONS", "SHOULDBESALES", "NETSALES", "LABORMINUTES", "SOSTRANSACTIONS", "SOSTIME", "CLTTRANSACTIONS", "ROWOF") AS 
  with 
abc as ( select a.id,  jeff_clobfromblob(a.content ) as clob_of , file_name from dw_media_up_down_files a where file_name like '%.hou'),
xyz as 
( select abc.id, 
         abc.file_name,
           b.* from abc,
                    dw_wc_15_pipe_clob (p_clob=>abc.clob_of , p_max_lengthb=>74, p_rec_delim=> chr(13)||chr(10) )  b
) 
select xyz.id, 
       xyz.file_name,
       xyz.COLUMN_VALUE , 
substr(xyz.COLUMN_VALUE,  1,  2) as RecordType,
SUBSTR(xyz.COLUMN_VALUE,  3,  6) as StartTime,      /* -- This is minutes add this to business date midnight --  */
SUBSTR(xyz.COLUMN_VALUE, 10,  5) as EndTime,        /* -- This is minutes add this to business date midnight --  */
SUBSTR(xyz.COLUMN_VALUE, 15,  5) as BusinessDate,   /* -- 22005 22 is year, 005 is julian date --                */
SUBSTR(xyz.COLUMN_VALUE, 20,  1) as AreaCode,
SUBSTR(xyz.COLUMN_VALUE, 21,  6) as Store,
to_number( replace(SUBSTR(xyz.COLUMN_VALUE, 27,  6) , '+',''))  as Transactions,
to_number( replace(SUBSTR(xyz.COLUMN_VALUE, 33,  9) , '+',''))  as ShouldBeSales,
to_number( replace(SUBSTR(xyz.COLUMN_VALUE, 42,  9) , '+',''))  as NetSales,
to_number( replace(SUBSTR(xyz.COLUMN_VALUE, 51,  6) , '+',''))  as LaborMinutes,
to_number( replace(SUBSTR(xyz.COLUMN_VALUE, 57,  6) , '+',''))  as SOSTransactions,
to_number( replace(SUBSTR(xyz.COLUMN_VALUE, 63,  6) , '+',''))  as SOSTime,
to_number( replace(SUBSTR(xyz.COLUMN_VALUE, 69,  6) , '+',''))  as CLTTransactions,
       rownum 
  as rowof 
 from xyz
/


https://gd49ef7d5e3cd2d-db202110212330.adb.us-phoenix-1.oraclecloudapps.com/ords/r/miso/cr-coffee-json-file-upload
username=cr_coffee
password=k77Z5u6xW8ZeP8R

After a first pass, I will get with Steven and continue building out the GUI, 
its fully mobile now, so we just have to get thru a few iterations internally.

C:\Cook_Right_COFFEE>curl --ssl-no-revoke  "POST"  "https://gd49ef7d5e3cd2d-db202110212330.adb.us-phoenix-1.oraclecloudapps.com/ords/miso/panera_fileup/CR_PANERA_FILES/" ^
More?   -H "accept: application/json" -H "file_name: notification-no-temperature-sensor.json"  -H "file_type: text" -H "Content-Type: application/json" ^
   -H "CR_COFFEE_text_FLD1: text_fld_1" ^
   -H "CR_COFFEE_text_desc_1: text_desc_  fld_1" ^
   --data-binary  "@c:\cook_right_coffee\notification-no-temperature-sensor.json"  -v

   







Prior to additional discussion the CookRight Coffee POC for file Ingestion has been built.  
It will consume the json data that Steven created tonight. 
Since we are starting with requirements gathering, here is the portal for discussions  

https://gd49ef7d5e3cd2d-db202110212330.adb.us-phoenix-1.oraclecloudapps.com/ords/r/miso/cr-coffee-json-file-upload
username=cr_coffee
password=k77Z5u6xW8ZeP8R  

After a first pass, I will get with Steven and continue building out the GUI, 
its fully mobile now, so we just have to get thru a few iterations internally.

C:\Cook_Right_COFFEE>curl --ssl-no-revoke  "POST"  "https://gd49ef7d5e3cd2d-db202110212330.adb.us-phoenix-1.oraclecloudapps.com/ords/miso/panera_fileup/CR_PANERA_FILES/" ^
   -H "accept: application/json" -H "file_name: notification-no-temperature-sensor.json"  -H "file_type: text" -H "Content-Type: application/json" ^
   -H "CR_COFFEE_text_FLD1: text_fld_1" ^
   --data-binary  "@c:\cook_right_coffee\notification-no-temperature-sensor.json"  -v   
   -H "CR_COFFEE_text_desc_1: text_desc_  fld_1" ^
   