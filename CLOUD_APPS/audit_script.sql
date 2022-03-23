set serveroutput on size unlimited

create sequence change_log_seq      minvalue 1 maxvalue 9999999999999999999999999999 increment by 1 start with 1 cache 20 noorder nocycle;
create sequence change_log_data_seq minvalue 1 maxvalue 9999999999999999999999999999 increment by 1 start with 1 cache 20 noorder nocycle;

CREATE TABLE change_log
(id_change_log number,
 table_name    varchar2(30),
 table_key     varchar2(255),
 ind_action    varchar2(1),
 user_cre      varchar2(255),
 date_cre      date,
 apex_app_cre  number,
 apex_pag_cre  number,
 user_upd      varchar2(255),
 date_upd      date,
 apex_app_upd  number,
 apex_pag_upd  number,
 constraint change_log_pk primary key (id_change_log));

CREATE TABLE change_log_data
(id_change_log    number,
 field_name       varchar2(30),
 log_data_old     clob,
 log_data_new     clob,
 user_cre         varchar2(255),
 date_cre         date,
 apex_app_cre     number,
 apex_pag_cre     number,
 user_upd         varchar2(255),
 date_upd         date,
 apex_app_upd     number,
 apex_pag_upd     number,
 id_change_log_fk number,
 constraint change_log_data_pk  primary key (id_change_log),
 constraint change_log_data_fk1 foreign key (id_change_log_fk) references change_log (id_change_log) on delete cascade);

CREATE OR REPLACE PACKAGE audit_pkg IS
   p_pck_name varchar2(50) := 'AUDIT_PKG.';

-- check_val for old and new varchar2 values
   PROCEDURE check_val (p_key    IN     varchar2,
                        l_tname  IN     varchar2,
                        l_cname  IN     varchar2,
                        l_new    IN     varchar2,
                        l_old    IN     varchar2,
                        p_id     IN OUT CHANGE_LOG.id_change_log%TYPE,
                        p_action IN     varchar2 default NULL);

-- check_val for old and new date values
   PROCEDURE check_val (p_key    IN     varchar2,
                        l_tname  IN     varchar2,
                        l_cname  IN     varchar2,
                        l_new    IN     date,
                        l_old    IN     date,
                        p_id     IN OUT CHANGE_LOG.id_change_log%TYPE,
                        p_action IN     varchar2 default NULL);

-- check_val for old and new timestamp values
   PROCEDURE check_val (p_key    IN     varchar2,
                        l_tname  IN     varchar2,
                        l_cname  IN     varchar2,
                        l_new    IN     timestamp,
                        l_old    IN     timestamp,
                        p_id     IN OUT CHANGE_LOG.id_change_log%TYPE,
                        p_action IN     varchar2 default NULL);

-- check_val for old and new number values
   PROCEDURE check_val (p_key    IN     varchar2,
                        l_tname  IN     varchar2,
                        l_cname  IN     varchar2,
                        l_new    IN     number,
                        l_old    IN     number,
                        p_id     IN OUT CHANGE_LOG.id_change_log%TYPE,
                        p_action IN     varchar2 default NULL);

-- check_val for old and new clob values
   PROCEDURE check_val (p_key    IN     varchar2,
                        l_tname  IN     varchar2,
                        l_cname  IN     varchar2,
                        l_new    IN     clob,
                        l_old    IN     clob,
                        p_id     IN OUT CHANGE_LOG.id_change_log%TYPE,
                        p_action IN     varchar2 default NULL);

-- insert change logs
   PROCEDURE insert_change_logs (p_tname     IN     varchar2,
                                 p_cname     IN     varchar2,
                                 p_key       IN     varchar2,
                                 p_new_value IN     clob,
                                 p_old_value IN     clob,
                                 p_id        IN OUT CHANGE_LOG.id_change_log%TYPE,
                                 p_action    IN     varchar2 default NULL);

-- insert change logs header
   PROCEDURE insert_change_logs_header (p_tname  IN     varchar2,
                                        p_key    IN     varchar2,
                                        p_id     IN OUT CHANGE_LOG.id_change_log%TYPE,
                                        p_action IN     varchar2 default NULL);

-- fu_generate_trigger_b
   FUNCTION fu_generate_trigger_b (p_table_name        USER_TABLES.table_name%TYPE,
                                   p_msg_return IN OUT varchar2)
                                   RETURN boolean;
END audit_pkg;
/

CREATE OR REPLACE PACKAGE BODY audit_pkg IS
-- check_val
   PROCEDURE check_val (p_key    IN     varchar2,
                        l_tname  IN     varchar2,
                        l_cname  IN     varchar2,
                        l_new    IN     varchar2,
                        l_old    IN     varchar2,
                        p_id     IN OUT CHANGE_LOG.id_change_log%TYPE,
                        p_action IN     varchar2 default NULL) IS
      p_prc_name varchar2(1000) := p_pck_name || 'check_val VARCHAR2 (' || p_key || ')';

   BEGIN

         if (l_new <> l_old or (l_new is NULL and l_old is not NULL) or (l_new is not NULL and l_old is NULL)) then
            AUDIT_PKG.insert_change_logs (l_tname, l_cname, p_key, l_new, l_old, p_id, p_action);
         end if;
   

   EXCEPTION
      when others then
         raise_application_error (-20000, 'Error ' || p_prc_name || to_char (sqlcode) || ' - ' || sqlerrm);
   END check_val;

-- check_val
   PROCEDURE check_val (p_key    IN     varchar2,
                        l_tname  IN     varchar2,
                        l_cname  IN     varchar2,
                        l_new    IN     date,
                        l_old    IN     date,
                        p_id     IN OUT CHANGE_LOG.id_change_log%TYPE,
                        p_action IN     varchar2 default NULL) IS
      p_prc_name varchar2(1000) := p_pck_name || 'check_val DATE (' || p_key || ')';

   BEGIN
  
         if (l_new <> l_old or (l_new is NULL and l_old is not NULL) or (l_new is not NULL and l_old is NULL)) then
            AUDIT_PKG.insert_change_logs (l_tname, l_cname, p_key, to_clob (l_new), to_clob (l_old), p_id, p_action);
         end if;
   

   EXCEPTION
      when others then
         raise_application_error (-20000, 'Error ' || p_prc_name || to_char (sqlcode) || ' - ' || sqlerrm);
   END check_val;

-- check_val
   PROCEDURE check_val (p_key    IN     varchar2,
                        l_tname  IN     varchar2,
                        l_cname  IN     varchar2,
                        l_new    IN     timestamp,
                        l_old    IN     timestamp,
                        p_id     IN OUT CHANGE_LOG.id_change_log%TYPE,
                        p_action IN     varchar2 default NULL) IS
      p_prc_name varchar2(1000) := p_pck_name || 'check_val TIMESTAMP (' || p_key || ')';

   BEGIN
    
         if (l_new <> l_old or (l_new is NULL and l_old is not NULL) or (l_new is not NULL and l_old is NULL)) then
            AUDIT_PKG.insert_change_logs (l_tname, l_cname, p_key, to_clob (l_new), to_clob(l_old), p_id, p_action);
    
      end if;

   EXCEPTION
      when others then
         raise_application_error (-20000, 'Error ' || p_prc_name || to_char (sqlcode) || ' - ' || sqlerrm);
   END check_val;

-- check_val
   PROCEDURE check_val (p_key    IN     varchar2,
                        l_tname  IN     varchar2,
                        l_cname  IN     varchar2,
                        l_new    IN     number,
                        l_old    IN     number,
                        p_id     IN OUT CHANGE_LOG.id_change_log%TYPE,
                        p_action IN     varchar2 default NULL) IS
      p_prc_name varchar2(1000) := p_pck_name || 'check_val NUMBER (' || p_key || ')';

   BEGIN
  
         if (l_new <> l_old or (l_new is NULL and l_old is not NULL) or (l_new is not NULL and l_old is NULL)) then
            AUDIT_PKG.insert_change_logs (l_tname, l_cname, p_key, to_clob (l_new), to_clob (l_old), p_id, p_action);
         end if;
   

   EXCEPTION
      when others then
         raise_application_error (-20000, 'Error ' || p_prc_name || to_char (sqlcode) || ' - ' || sqlerrm);
   END check_val;

-- check_val
   PROCEDURE check_val (p_key    IN     varchar2,
                        l_tname  IN     varchar2,
                        l_cname  IN     varchar2,
                        l_new    IN     clob,
                        l_old    IN     clob,
                        p_id     IN OUT CHANGE_LOG.id_change_log%TYPE,
                        p_action IN     varchar2 default NULL) IS
      p_prc_name varchar2(1000) := p_pck_name || 'check_val CLOB (' || p_key || ')';

   BEGIN
    
         if (l_new <> l_old or (l_new is NULL and l_old is not NULL) or (l_new is not NULL and l_old is NULL)) then
            AUDIT_PKG.insert_change_logs (l_tname, l_cname, p_key, l_new, l_old, p_id, p_action);
         end if;


   EXCEPTION
      when others then
         raise_application_error (-20000, 'Error ' || p_prc_name || to_char (sqlcode) || ' - ' || sqlerrm);
   END check_val;

-- insert_change_logs_header
   PROCEDURE insert_change_logs_header (p_tname  IN     varchar2,
                                        p_key    IN     varchar2,
                                        p_id     IN OUT CHANGE_LOG.id_change_log%TYPE,
                                        p_action IN     varchar2 default NULL) IS
      l_id_change_log CHANGE_LOG.id_change_log%TYPE;
      p_prc_name      varchar2(1000) := p_pck_name || 'insert_change_logs_header (' || p_tname || ', ' || p_key || ', ' || p_action || '): ';

   BEGIN
    
         insert into change_log (table_name,
                                    table_key,
                                    ind_action)
                            values (p_tname,
                                    p_key,
                                    p_action)
                          returning id_change_log
                               into p_id;


   EXCEPTION
      when others then
         raise_application_error (-20000, 'Error ' || p_prc_name || to_char (sqlcode) || ' - ' || sqlerrm);
   END insert_change_logs_header;

-- insert_change_logs
   PROCEDURE insert_change_logs (p_tname     IN     varchar2,
                                 p_cname     IN     varchar2,
                                 p_key       IN     varchar2,
                                 p_new_value IN     clob,
                                 p_old_value IN     clob,
                                 p_id        IN OUT CHANGE_LOG.id_change_log%TYPE,
                                 p_action    IN     varchar2 default NULL) IS
      p_prc_name varchar2(1000) := p_pck_name || 'insert_change_logs (' || p_tname || ', ' || p_cname || ', ' || p_key || '): ';

   BEGIN
      if p_id is NULL then
         AUDIT_PKG.insert_change_logs_header (p_tname,   -- p_tname  IN     varchar2
                                              p_key,     -- p_key    IN     varchar2
                                              p_id,      -- p_id     IN OUT CHANGE_LOG.id_change_log%TYPE
                                              p_action); -- p_action IN     varchar2 default NULL
      end if;

      BEGIN
         insert into change_log_data (field_name,
                                      log_data_old,
                                      log_data_new,
                                      id_change_log_fk)
                              values (p_cname,
                                      p_old_value,
                                      p_new_value,
                                      p_id);

      EXCEPTION
         when others then
            raise_application_error (-20001, 'Error INSERT RCLD (' || p_cname || ') at ' || p_prc_name || to_char (sqlcode) || ' - ' || sqlerrm);
      END;

   EXCEPTION
      when others then
         raise_application_error (-20000, 'Error ' || p_prc_name || to_char (sqlcode) || ' - ' || sqlerrm);
   END insert_change_logs;

-- fu_generate_trigger_b
   FUNCTION fu_generate_trigger_b (p_table_name        USER_TABLES.table_name%TYPE,
                                   p_msg_return IN OUT varchar2)
                                   RETURN boolean IS
      cursor c_table_columns (p_table_name USER_TABLES.table_name%TYPE) is
         select atc.column_name
           from USER_TABLES      ata,
                all_tab_columns atc
          where ata.table_name  = trim (upper (p_table_name))
            and ata.table_name  = atc.table_name
            and atc.data_type  != 'BLOB' -- BLOB columns will not be audited
          order by atc.column_name;

      r_table_columns c_table_columns%ROWTYPE;
      p_column_name   user_CONS_COLUMNS.column_name%TYPE := NULL;
      p_data_type     user_TAB_COLUMNS.data_type%TYPE    := NULL;
      p_trigger_text  clob          := NULL;
      p_exists        integer       := NULL;
      p_field_length  integer       := 37;
      p_newline       varchar2(5)   := chr(13) || chr(10);
      p_suffix        varchar2(10)  := 'TRG_AUD_';
      p_trigger_name  varchar2(30)  := substr (p_suffix || p_table_name, 1, 30);
      p_prc_name      varchar2(200) := p_pck_name || 'fu_generate_trigger_b ('|| p_table_name || '): ';

   BEGIN
      if trim (p_table_name) is NULL then
         p_msg_return := 'Error ' || p_prc_name || 'please inform a table name.';
         return FALSE;
      else
         BEGIN
            select 1
              into p_exists
              from USER_TABLES ata
             where ata.table_name = trim (upper (p_table_name));

         EXCEPTION
            when no_data_found then
               p_msg_return := 'Error ' || p_prc_name || ' table does not exist.';
               return FALSE;
            when others then
               p_msg_return := 'Error SELECT 1 ATA at ' || p_prc_name || to_char (sqlcode) || ' - ' || sqlerrm;
               return FALSE;
         END;

         BEGIN
            select lower (acc.column_name) as column_name,
                   atc.data_type
              into p_column_name,
                   p_data_type
              from user_constraints  ac,
                   user_cons_columns acc,
                   user_tab_columns  atc
             where ac.table_name       = trim (upper (p_table_name))
               and ac.constraint_type  = 'P' -- Retrieved column is primary key
               and atc.data_type       in ('INTEGER', 'NUMBER', 'VARCHAR2')
               and acc.table_name      = ac.table_name
               and acc.constraint_name = ac.constraint_name
               and atc.table_name      = acc.table_name
               and atc.column_name     = acc.column_name;

         EXCEPTION
            when no_data_found then
               p_msg_return := 'Table "' || p_table_name || '" does not have a primary key, or it is not INTEGER/NUMBER/VARCHAR2.';
               return FALSE;
            when too_many_rows then
               p_msg_return := 'Table "'|| p_table_name || '" has more than one column as primary key.';
               return FALSE;
            when others then
               p_msg_return := 'Error SELECT AC/ACC/ATC at ' || p_prc_name || to_char (sqlcode) || ' - ' || sqlerrm;
               return FALSE;
         END;

-- MAX COLUMN LENGTH for indenting purposes
         BEGIN
            select max (length (atc.column_name)) as column_max_length
              into p_field_length
              from USER_TABLES      ata,
                   user_tab_columns atc
             where ata.table_name  = trim (upper (p_table_name))
               and ata.table_name  = atc.table_name;

         EXCEPTION
            when others then
               p_msg_return := 'Error SELECT MAX ATA/ATC at ' || p_prc_name || to_char (sqlcode) || ' - ' || sqlerrm;
               return FALSE;
         END;

         DBMS_LOB.createtemporary (p_trigger_text, TRUE);

         DBMS_LOB.append (p_trigger_text, 'CREATE OR REPLACE TRIGGER ' || lower (p_trigger_name) || p_newline);
         DBMS_LOB.append (p_trigger_text, 'AFTER INSERT OR UPDATE OR DELETE ON ' || lower (p_table_name) || p_newline);
         DBMS_LOB.append (p_trigger_text, 'FOR EACH ROW' || p_newline);
         DBMS_LOB.append (p_trigger_text, 'DECLARE' || p_newline);
         DBMS_LOB.append (p_trigger_text, '   lv_id      CHANGE_LOG.id_change_log%TYPE;' || p_newline);
         DBMS_LOB.append (p_trigger_text, '   l_action   CHANGE_LOG.ind_action%TYPE;' || p_newline);
         DBMS_LOB.append (p_trigger_text, '   p_prc_name varchar2(50)  := ''' || p_trigger_name || ': '';' || p_newline);
         DBMS_LOB.append (p_trigger_text, '   v_user     varchar2(200) := NULL;' || p_newline);
         DBMS_LOB.append (p_trigger_text, p_newline);
         DBMS_LOB.append (p_trigger_text, 'BEGIN' || p_newline);
         DBMS_LOB.append (p_trigger_text, '   v_user := nvl (v(''APP_USER''), user);' || p_newline);
         DBMS_LOB.append (p_trigger_text, p_newline);
         DBMS_LOB.append (p_trigger_text, '   if inserting then' || p_newline);
         DBMS_LOB.append (p_trigger_text, '      l_action := ''I'';' || p_newline);
         DBMS_LOB.append (p_trigger_text, '   end if;' || p_newline);
         DBMS_LOB.append (p_trigger_text, p_newline);
         DBMS_LOB.append (p_trigger_text, '   if updating then' || p_newline);
         DBMS_LOB.append (p_trigger_text, '      l_action := ''U'';' || p_newline);
         DBMS_LOB.append (p_trigger_text, '   end if;' || p_newline);
         DBMS_LOB.append (p_trigger_text, p_newline);
         DBMS_LOB.append (p_trigger_text, '   if deleting then' || p_newline);
         DBMS_LOB.append (p_trigger_text, '      l_action := ''D'';' || p_newline);
         DBMS_LOB.append (p_trigger_text, p_newline);

         for r_table_columns in c_table_columns (p_table_name) loop
            if r_table_columns.column_name in ('CRT_DT', 'CRT_ID', 'UPD_DT', 'UPD_ID') then
               DBMS_LOB.append (p_trigger_text, '--');
            else
               DBMS_LOB.append (p_trigger_text, '  ');
            end if;

            DBMS_LOB.append (p_trigger_text, '    AUDIT_PKG.check_val (to_char (:OLD.' || p_column_name || '), ''' ||
                                             p_table_name || ''', ''' ||
                                             r_table_columns.column_name || ''', ' ||
                                             rpad (' ', p_field_length - length (r_table_columns.column_name), ' ') ||
                                             'NULL, ' || rpad (' ', p_field_length + 1, ' ') ||
                                             rpad (':OLD.' || lower (r_table_columns.column_name) || ', ', p_field_length + 7, ' ') ||
                                             'lv_id, l_action);' || p_newline);
         end loop;

         DBMS_LOB.append (p_trigger_text, '   else' || p_newline);

         for r_table_columns in c_table_columns (p_table_name) loop
            if r_table_columns.column_name in ('CRT_DT', 'CRT_ID', 'UPD_DT', 'UPD_ID') then
               DBMS_LOB.append (p_trigger_text, '--');
            else
               DBMS_LOB.append (p_trigger_text, '  ');
            end if;

            DBMS_LOB.append (p_trigger_text, '    AUDIT_PKG.check_val (to_char (:NEW.' || p_column_name || '), ''' ||
                                             p_table_name || ''', ''' ||
                                             r_table_columns.column_name || ''', ' ||
                                             rpad (' ', p_field_length - length (r_table_columns.column_name), ' ') ||
                                             rpad (':NEW.' || lower (r_table_columns.column_name) || ', ', p_field_length + 7, ' ') ||
                                             rpad (':OLD.' || lower (r_table_columns.column_name) || ', ', p_field_length + 7, ' ') ||
                                             'lv_id, l_action);' || p_newline);
         end loop;

         DBMS_LOB.append (p_trigger_text, '   end if;' || p_newline);
         DBMS_LOB.append (p_trigger_text, p_newline);
         DBMS_LOB.append (p_trigger_text, 'EXCEPTION' || p_newline);
         DBMS_LOB.append (p_trigger_text, '   when others then' || p_newline);
         DBMS_LOB.append (p_trigger_text, '      raise_application_error (-20000, ''Error '' || p_prc_name || to_char (sqlcode) || '' - '' ||' ||
                                             ' sqlerrm);' || p_newline);
         DBMS_LOB.append (p_trigger_text, 'END ' || lower (p_trigger_name) || ';' || p_newline);
      end if;

--    BEGIN
--       DBMS_OUTPUT.put_line ('-- ' || p_trigger_name);
--       DBMS_OUTPUT.put_line (p_trigger_text || '/' || p_newline);
--
--    EXCEPTION
--       when others then
--          DBMS_OUTPUT.put_line ('-- Could not display trigger text.');
--          DBMS_OUTPUT.put_line (p_newline);
--    END;

      execute immediate p_trigger_text;

      DBMS_LOB.freetemporary (p_trigger_text);

      return TRUE;

   EXCEPTION
      when others then
         p_msg_return := 'Error ' || p_prc_name || to_char (sqlcode) || ' - ' || sqlerrm;
         return FALSE;
   END fu_generate_trigger_b;
END audit_pkg;
/

CREATE OR REPLACE TRIGGER change_log_biud_trg
BEFORE INSERT OR UPDATE OR DELETE ON change_log
FOR EACH ROW
DECLARE
   p_prc_name varchar2(50) := 'CHANGE_LOG_BIUD_TRG: ';

BEGIN
   if inserting or updating or deleting then
      if    inserting then
         :NEW.id_change_log := change_log_seq.NEXTVAL;
         :NEW.user_cre      := nvl (v('APP_USER'), user);
         :NEW.date_cre      := sysdate;
         :NEW.apex_app_cre  := nvl (nv('APP_ID'),      0);
         :NEW.apex_pag_cre  := nvl (nv('APP_PAGE_ID'), 0);
      elsif updating then
         :NEW.user_upd      := nvl (v('APP_USER'), user);
         :NEW.date_upd      := sysdate;
         :NEW.apex_app_upd  := nvl (nv('APP_ID'),      0);
         :NEW.apex_pag_upd  := nvl (nv('APP_PAGE_ID'), 0);
      elsif deleting then
         raise_application_error (-20001, 'Error ' || p_prc_name || 'deleting not allowed on this log table.');
      end if;

      :NEW.table_name := trim (upper (:NEW.table_name));
      :NEW.table_key  := trim (upper (:NEW.table_key));
      :NEW.ind_action := trim (upper (:NEW.ind_action));

      if :NEW.table_name is NULL then
         raise_application_error (-20002, 'Error ' || p_prc_name || 'table name must be specified.');
      end if;

      if :NEW.table_key is NULL then
         raise_application_error (-20003, 'Error ' || p_prc_name || 'table key must be specified.');
      end if;

      if    :NEW.ind_action is NULL then
         raise_application_error (-20004, 'Error ' || p_prc_name || 'action must be specified.');
      elsif :NEW.ind_action not in ('D', 'I', 'U') then -- Delete, Insert, Update
         raise_application_error (-20005, 'Error ' || p_prc_name || 'action must be (D)elete, (I)Insert or (U)pdate.');
      end if;
   end if;

EXCEPTION
   when others then
      raise_application_error (-20000, 'Error ' || p_prc_name || to_char (sqlcode) || ' - ' || sqlerrm);
END change_log_biud_trg;
/

CREATE OR REPLACE TRIGGER change_log_data_biud_trg
BEFORE INSERT OR UPDATE OR DELETE ON change_log_data
FOR EACH ROW
DECLARE
   p_prc_name varchar2(50) := 'CHANGE_LOG_DATA_BIUD_TRG: ';

BEGIN
   if inserting or updating or deleting then
       if    inserting then
         :NEW.id_change_log := change_log_data_seq.NEXTVAL;
         :NEW.user_cre      := nvl (v('APP_USER'), user);
         :NEW.date_cre      := sysdate;
         :NEW.apex_app_cre  := nvl (nv('APP_ID'),      0);
         :NEW.apex_pag_cre  := nvl (nv('APP_PAGE_ID'), 0);
      elsif updating then
         :NEW.user_upd      := nvl (v('APP_USER'), user);
         :NEW.date_upd      := sysdate;
         :NEW.apex_app_upd  := nvl (nv('APP_ID'),      0);
         :NEW.apex_pag_upd  := nvl (nv('APP_PAGE_ID'), 0);
      elsif deleting then
         raise_application_error (-20001, 'Error ' || p_prc_name || 'deleting not allowed on this log table.');
      end if;

      :NEW.field_name := trim (upper (:NEW.field_name));

      if :NEW.field_name is NULL then
         raise_application_error (-20002, 'Error ' || p_prc_name || 'field name must be specified.');
      end if;
  end if;

EXCEPTION
   when others then
      raise_application_error (-20000, 'Error ' || p_prc_name || to_char (sqlcode) || ' - ' || sqlerrm);
END change_log_data_biud_trg;
/

/*
set serveroutput on size unlimited

DECLARE
   p_owner      USER_TABLES.owner%TYPE      := user;
   p_table_name USER_TABLES.table_name%TYPE := 'COUNTRIES';
   p_return     boolean        := NULL;
   p_msg_return varchar2(4000) := NULL;

BEGIN
   p_return := AUDIT_PKG.fu_generate_trigger_b (p_table_name, p_msg_return);

   if p_return != TRUE then
      DBMS_OUTPUT.put_line ('Error P_RETURN: ' || p_msg_return);
   end if;

EXCEPTION
   when others then
      DBMS_OUTPUT.put_line ('Error: ' || to_char (sqlcode) || ' - ' || sqlerrm);
END;
/
*/
