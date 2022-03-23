https://livesql.oracle.com/apex/livesql/file/content_JSCKP4KHK8OIW92C5RGA5Q9RJ.html
http://stevenfeuersteinonplsql.blogspot.com/2020/03/an-application-alerting-utility.html
REM   Script: Application Alerts Utility
REM   A working prototype for an application alerts utility: specify a triggering event (based on a query or a PL/SQL expression) and then take the specified actions when it is triggered.

Note: DBMS_SCHEDULER and APEX_UTIL are used in this utility and are not available from LiveSQL. so you will want to download this script to install and try it out in your own database.

CREATE TABLE alert_config 
( 
   job_wakeup_minutes   INTEGER, 
   keep_checking        VARCHAR2 (1), 
   send_email_proc_name VARCHAR2 (300), 
   apex_workspace_name  VARCHAR2(100) 
) ;

BEGIN 
   INSERT INTO alert_config 
        VALUES (5, 'Y', 'alert_email_mgr.send_email', 'MIKE'); 
 
   COMMIT; 
END; 
/

CREATE TABLE alerts ( 
   id                     NUMBER NOT NULL CONSTRAINT alerts_id_pk PRIMARY KEY, 
   alert_name             VARCHAR2 (100) CONSTRAINT alerts_alert_name_unq UNIQUE, 
   description            VARCHAR2 (4000), 
   trigger_code           VARCHAR2 (4000), 
   trigger_type           VARCHAR2 (100), 
   check_frequency        VARCHAR2 (1000), 
   recurrence_frequency   VARCHAR2 (1000), 
   ignore_failures        VARCHAR2 (1), 
   is_active              VARCHAR2 (1), 
   last_run_id            NUMBER, 
   created                DATE NOT NULL, 
   created_by             VARCHAR2 (255) NOT NULL, 
   updated                DATE NOT NULL, 
   updated_by             VARCHAR2 (255) NOT NULL, 
   CONSTRAINT trigger_type_choices CHECK 
      (trigger_type IN ('ONEROW', 
                        'NOROWS', 
                        'MULTROWS', 
                        'RETURNTRUE', 
                        'RETURNFALSE')), 
   CONSTRAINT ignore_failures_yn CHECK (ignore_failures IN ('Y', 'N')), 
   CONSTRAINT active_yn CHECK (is_active IN ('Y', 'N')) 
) ;

COMMENT ON COLUMN alerts.trigger_code IS 
   'Code executed to determine if an alert should be triggered' ;

COMMENT ON COLUMN alerts.trigger_type IS 
   'Type of code executed to determine if an alert should be triggered. See trigger_type_choices constraint.' ;

COMMENT ON COLUMN alerts.check_frequency IS 
   'How often to check to see if alert is triggered. H for hourly, D for daily, # for number of minutes since last triggering.' ;

COMMENT ON COLUMN alerts.recurrence_frequency IS 
   'How often to trigger an alert since last triggering. H for hourly, D for daily, # for number of minutes since last triggering.' ;

COMMENT ON COLUMN alerts.ignore_failures IS 
   'If Y then failure of last triggered action does not count for recurrence frequency.' ;

COMMENT ON COLUMN alerts.is_active IS 
   'If Y then include in alert checking, otherwise ignore.' ;

COMMENT ON COLUMN alerts.last_run_id IS 
   'Primary key of row in alert_runs table which is the last run for this alert.' ;

CREATE TABLE alert_actions ( 
   id                NUMBER NOT NULL CONSTRAINT alert_actions_id_pk PRIMARY KEY, 
   alert_id          NUMBER 
                        CONSTRAINT alert_actions_alert_id_fk 
                            REFERENCES alerts ON DELETE CASCADE, 
   action_sequence   INTEGER, 
   action_type       VARCHAR2 (100) NOT NULL, 
   action_code       VARCHAR2 (4000), 
   send_email_to     VARCHAR2 (4000), 
   email_subject     VARCHAR2 (4000), 
   email_body        CLOB, 
   email_query       VARCHAR2 (4000), 
   created           DATE NOT NULL, 
   created_by        VARCHAR2 (255) NOT NULL, 
   updated           DATE NOT NULL, 
   updated_by        VARCHAR2 (255) NOT NULL, 
   CONSTRAINT action_type_choices CHECK 
      (action_type IN ('EMAIL', 
                       'SMS', 
                       'PROC', 
                       'REST')) 
) ;

COMMENT ON COLUMN alert_actions.action_type IS 
   'The type of action taken. See action_type_choices for options.' ;

COMMENT ON COLUMN alert_actions.action_code IS 'Code used to execute action.' ;

COMMENT ON COLUMN alert_actions.send_email_to IS 
   'Comma-delimited list of email addresses if action is to send an email' ;

COMMENT ON COLUMN alert_actions.email_query IS 
   'SELECT subject, body - used to send multiple emails' ;

CREATE TABLE alert_runs ( 
   id                       NUMBER NOT NULL CONSTRAINT alert_runs_id_pk PRIMARY KEY, 
   alert_id                 NUMBER 
                               CONSTRAINT alert_runs_alert_id_fk 
                                   REFERENCES alerts ON DELETE CASCADE, 
   started_at               DATE, 
   completed_at             DATE, 
   completed_successfully   VARCHAR2 (1), 
   results                  VARCHAR2 (4000), 
   errors                   VARCHAR2 (4000), 
   created                  DATE NOT NULL, 
   created_by               VARCHAR2 (255) NOT NULL, 
   updated                  DATE NOT NULL, 
   updated_by               VARCHAR2 (255) NOT NULL, 
   CONSTRAINT success_yn CHECK (completed_successfully IN ('Y', 'N')) 
) ;

CREATE TABLE alert_log ( 
   id           NUMBER NOT NULL CONSTRAINT alert_log_id_pk PRIMARY KEY, 
   info         VARCHAR2 (4000), 
   created      DATE NOT NULL, 
   created_by   VARCHAR2 (255) NOT NULL, 
   updated      DATE NOT NULL, 
   updated_by   VARCHAR2 (255) NOT NULL 
) ;

CREATE OR REPLACE TRIGGER alerts_biu 
   BEFORE INSERT OR UPDATE 
   ON alerts 
   FOR EACH ROW 
BEGIN 
   IF :new.id IS NULL 
   THEN 
      :new.id := TO_NUMBER (SYS_GUID (), 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'); 
   END IF; 
 
   IF INSERTING 
   THEN 
      :new.created := SYSDATE; 
      :new.created_by := NVL (SYS_CONTEXT ('APEX$SESSION', 'APP_USER'), USER); 
   END IF; 
 
   :new.updated := SYSDATE; 
   :new.updated_by := NVL (SYS_CONTEXT ('APEX$SESSION', 'APP_USER'), USER); 
   :new.alert_name := UPPER (:new.alert_name); 
   :new.trigger_type := UPPER (:new.trigger_type); 
END alerts_biu; 
/

CREATE OR REPLACE TRIGGER alert_actions_biu 
   BEFORE INSERT OR UPDATE 
   ON alert_actions 
   FOR EACH ROW 
BEGIN 
   IF :new.id IS NULL 
   THEN 
      :new.id := TO_NUMBER (SYS_GUID (), 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'); 
   END IF; 
 
   IF INSERTING 
   THEN 
      :new.created := SYSDATE; 
      :new.created_by := NVL (SYS_CONTEXT ('APEX$SESSION', 'APP_USER'), USER); 
   END IF; 
 
   :new.updated := SYSDATE; 
   :new.updated_by := NVL (SYS_CONTEXT ('APEX$SESSION', 'APP_USER'), USER); 
   :new.action_type := UPPER (:new.action_type); 
END; 
/

CREATE OR REPLACE TRIGGER alert_runs_biu 
   BEFORE INSERT OR UPDATE 
   ON alert_runs 
   FOR EACH ROW 
BEGIN 
   IF :new.id IS NULL 
   THEN 
      :new.id := TO_NUMBER (SYS_GUID (), 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'); 
   END IF; 
 
   IF INSERTING 
   THEN 
      :new.created := SYSDATE; 
      :new.created_by := NVL (SYS_CONTEXT ('APEX$SESSION', 'APP_USER'), USER); 
   END IF; 
 
   :new.updated := SYSDATE; 
   :new.updated_by := NVL (SYS_CONTEXT ('APEX$SESSION', 'APP_USER'), USER); 
END alert_runs_biu; 
/

CREATE OR REPLACE TRIGGER alert_log_biu 
   BEFORE INSERT OR UPDATE 
   ON alert_log 
   FOR EACH ROW 
BEGIN 
   IF :new.id IS NULL 
   THEN 
      :new.id := TO_NUMBER (SYS_GUID (), 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'); 
   END IF; 
 
   IF INSERTING 
   THEN 
      :new.created := SYSDATE; 
      :new.created_by := NVL (SYS_CONTEXT ('APEX$SESSION', 'APP_USER'), USER); 
   END IF; 
 
   :new.updated := SYSDATE; 
   :new.updated_by := NVL (SYS_CONTEXT ('APEX$SESSION', 'APP_USER'), USER); 
END alert_log_biu; 
/

CREATE INDEX alert_runs_i1 
   ON alert_runs (alert_id) ;

CREATE OR REPLACE PACKAGE alert_mgr 
   AUTHID DEFINER 
/* 
Prototype utility to enable triggering of actions based 
on a change in data that is defined by an alert. 
*/ 
IS 
   c_job_name                        CONSTANT VARCHAR2 (100) := 'CHECK_ALERTS_JOB'; 
 
   /* Queries that return 1 or more rows return a value that can be converted to a string */ 
   c_trigger_type_select_one_row     CONSTANT VARCHAR2 (100) := 'ONEROW'; 
   c_trigger_type_select_no_rows     CONSTANT VARCHAR2 (100) := 'NOROWS'; 
   c_trigger_type_select_mult_rows   CONSTANT VARCHAR2 (100) := 'MULTROWS'; 
   c_trigger_type_return_true        CONSTANT VARCHAR2 (100) := 'RETURNTRUE'; 
   c_trigger_type_return_false       CONSTANT VARCHAR2 (100) := 'RETURNFALSE'; 
 
   c_action_type_email               CONSTANT VARCHAR2 (100) := 'EMAIL'; 
   c_action_type_sms                 CONSTANT VARCHAR2 (100) := 'SMS'; 
   c_action_type_proc                CONSTANT VARCHAR2 (100) := 'PROC'; 
   c_action_type_rest                CONSTANT VARCHAR2 (100) := 'REST'; 
 
   c_freq_hourly                     CONSTANT VARCHAR2 (1) := 'H'; 
   c_freq_daily                      CONSTANT VARCHAR2 (1) := 'D'; 
   c_freq_never                      CONSTANT VARCHAR2 (1) := 'N'; 
 
   TYPE action_rt IS RECORD 
   ( 
      action_sequence   alert_actions.action_sequence%TYPE, 
      action_type       alert_actions.action_type%TYPE, 
      action_code       alert_actions.action_code%TYPE, 
      send_email_to     alert_actions.send_email_to%TYPE, 
      email_subject     alert_actions.email_subject%TYPE, 
      email_body        alert_actions.email_body%TYPE, 
      email_query       alert_actions.email_query%TYPE 
   ); 
 
   TYPE actions_t IS TABLE OF action_rt 
      INDEX BY PLS_INTEGER; 
 
   /* utilities */ 
 
   PROCEDURE settrc (on_in IN BOOLEAN, send_to_in IN VARCHAR2 DEFAULT 'SCREEN'); 
 
   PROCEDURE trc (val IN VARCHAR2); 
 
   PROCEDURE trc (val IN BOOLEAN); 
 
   PROCEDURE trc (str IN VARCHAR2, val IN BOOLEAN); 
 
   PROCEDURE LOG (info_in IN VARCHAR2); 
 
   PROCEDURE pl (val IN VARCHAR2); 
 
   PROCEDURE bpl (val IN BOOLEAN); 
 
   PROCEDURE bpl (str IN VARCHAR2, val IN BOOLEAN); 
 
   /* job management */ 
 
   /* Run once to create the job and get it going */ 
   PROCEDURE start_check_alerts_job (every_n_minutes_in IN NUMBER DEFAULT 5); 
 
   /* Change the frequencey with which alerts are checke */ 
   PROCEDURE change_check_frequency (every_n_minutes_in IN NUMBER); 
    
   /* Register email procedure to avoid any external dependencies*/ 
   PROCEDURE register_email_proc (proc_name_in        IN VARCHAR2, 
                                  workspace_name_in   IN VARCHAR2 DEFAULT NULL); 
 
   /* Job is still running, but it doesn't check anything */ 
   PROCEDURE stop_checking; 
 
   PROCEDURE resume_checking; 
 
   FUNCTION checking_for_alerts 
      RETURN BOOLEAN; 
 
   /* Not yet implemented 
   FUNCTION check_alerts_job_running 
      RETURN BOOLEAN; 
 
   FUNCTION check_alerts_job_running_yn 
      RETURN VARCHAR2; 
 
   PROCEDURE check_alerts_job_status; 
   */ 
 
   /* Specify frequency as: 
      # - number of minutes after which to check 
      H - Once an hour = #60 
      D - Once a day = #60X24  
      N - Never  
    
      NOTE: all register_alert procedures perform an upsert - 
            if an alert already exists with this name, the 
            alert is updated with these characteristics, and 
            existing actions are deleted and replaced with 
            those provided here.  
   */ 
 
   PROCEDURE register_alert ( 
      alert_name_in             IN     VARCHAR2, 
      description_in            IN     VARCHAR2 DEFAULT NULL, 
      trigger_code_in           IN     VARCHAR2, 
      trigger_type_in           IN     VARCHAR2, 
      check_frequency_in        IN     VARCHAR2, 
      recurrence_frequency_in   IN     VARCHAR2, 
      ignore_failures_in        IN     VARCHAR2, 
      action_type_in            IN     VARCHAR2 DEFAULT NULL, 
      action_code_in            IN     VARCHAR2 DEFAULT NULL, 
      send_email_to_in          IN     VARCHAR2 DEFAULT NULL, 
      email_subject_in          IN     VARCHAR2 DEFAULT NULL, 
      email_body_in             IN     CLOB DEFAULT NULL, 
      email_query_in             IN     VARCHAR2 DEFAULT NULL, 
      is_active_in              IN     VARCHAR2 DEFAULT 'N', 
      alert_id_out                 OUT NUMBER); 
 
   PROCEDURE register_alert ( 
      alert_name_in             IN     VARCHAR2, 
      description_in            IN     VARCHAR2 DEFAULT NULL, 
      trigger_code_in           IN     VARCHAR2, 
      trigger_type_in           IN     VARCHAR2, 
      check_frequency_in        IN     VARCHAR2, 
      recurrence_frequency_in   IN     VARCHAR2, 
      ignore_failures_in        IN     VARCHAR2, 
      actions_in                IN     actions_t, 
      is_active_in              IN     VARCHAR2 DEFAULT 'N', 
      alert_id_out                 OUT NUMBER); 
 
   PROCEDURE register_alert ( 
      alert_name_in             IN VARCHAR2, 
      description_in            IN VARCHAR2 DEFAULT NULL, 
      trigger_code_in           IN VARCHAR2, 
      trigger_type_in           IN VARCHAR2, 
      check_frequency_in        IN VARCHAR2, 
      recurrence_frequency_in   IN VARCHAR2, 
      ignore_failures_in        IN VARCHAR2, 
      action_type_in            IN VARCHAR2 DEFAULT NULL, 
      action_code_in            IN VARCHAR2 DEFAULT NULL, 
      send_email_to_in          IN VARCHAR2 DEFAULT NULL, 
      email_subject_in          IN VARCHAR2 DEFAULT NULL, 
      email_body_in             IN CLOB DEFAULT NULL, 
      email_query_in             IN     VARCHAR2 DEFAULT NULL, 
      is_active_in              IN VARCHAR2 DEFAULT 'N'); 
 
   PROCEDURE register_alert (alert_name_in             IN VARCHAR2, 
                             description_in            IN VARCHAR2 DEFAULT NULL, 
                             trigger_code_in           IN VARCHAR2, 
                             trigger_type_in           IN VARCHAR2, 
                             check_frequency_in        IN VARCHAR2, 
                             recurrence_frequency_in   IN VARCHAR2, 
                             ignore_failures_in        IN VARCHAR2, 
                             actions_in                IN actions_t, 
                             is_active_in              IN VARCHAR2 DEFAULT 'N'); 
 
   /* Activate an alert for checking */ 
   PROCEDURE activate_alert (id_in IN NUMBER); 
 
   /* Ignore this alert when checking */ 
   PROCEDURE deactivate_alert (id_in IN NUMBER); 
 
   /* Run by job at specified frequency to see if any 
    alerts have been triggered */ 
   PROCEDURE check_alerts; 
 
   FUNCTION time_to_trigger_alert (check_frequency_in          IN VARCHAR2, 
                                   recurring_frequency_in      IN VARCHAR2, 
                                   completed_at_in             IN DATE, 
                                   completed_successfully_in   IN VARCHAR2, 
                                   ignore_failures_in          IN VARCHAR2) 
      RETURN BOOLEAN; 
 
   PROCEDURE execute_alert_actions (alert_id_in IN NUMBER); 
 
   /* Add to the alert runs tables and also update the alert row with 
      the last run id */ 
   PROCEDURE record_result ( 
      alert_id_in                 IN NUMBER, 
      completed_at_in             IN DATE DEFAULT SYSDATE, 
      completed_successfully_in   IN VARCHAR2 DEFAULT 'Y', 
      results_in                  IN VARCHAR2 DEFAULT NULL, 
      errors_in                   IN VARCHAR2 DEFAULT NULL); 
 
   FUNCTION one_alert (id_in IN NUMBER) 
      RETURN alerts%ROWTYPE; 
 
   FUNCTION last_run_for (alert_id_in IN NUMBER) 
      RETURN alert_runs%ROWTYPE;      
END; 
/

CREATE OR REPLACE PACKAGE BODY alert_mgr 
IS 
   g_trc      BOOLEAN := FALSE; 
   g_trc_to   VARCHAR2 (10) := 'SCREEN'; 
 
   PROCEDURE settrc (on_in IN BOOLEAN, send_to_in IN VARCHAR2 DEFAULT 'SCREEN') 
   IS 
   BEGIN 
      g_trc := on_in; 
      g_trc_to := send_to_in; 
   END; 
 
   PROCEDURE trc (val IN VARCHAR2) 
   IS 
   BEGIN 
      IF g_trc 
      THEN 
         IF g_trc_to = 'SCREEN' 
         THEN 
            DBMS_OUTPUT.put_line (val); 
         ELSE 
            LOG (val); 
         END IF; 
      END IF; 
   END; 
 
   PROCEDURE trc (val IN BOOLEAN) 
   IS 
   BEGIN 
      trc ( 
         CASE val WHEN TRUE THEN 'TRUE' WHEN FALSE THEN 'FALSE' ELSE 'NULL' END); 
   END; 
 
   PROCEDURE trc (str IN VARCHAR2, val IN BOOLEAN) 
   IS 
   BEGIN 
      trc ( 
            str 
         || ' - ' 
         || CASE val 
               WHEN TRUE THEN 'TRUE' 
               WHEN FALSE THEN 'FALSE' 
               ELSE 'NULL' 
            END); 
   END; 
 
   PROCEDURE pl (val IN VARCHAR2) 
   IS 
   BEGIN 
      DBMS_OUTPUT.put_line (val); 
   END; 
 
   PROCEDURE bpl (val IN BOOLEAN) 
   IS 
   BEGIN 
      pl ( 
         CASE val WHEN TRUE THEN 'TRUE' WHEN FALSE THEN 'FALSE' ELSE 'NULL' END); 
   END; 
 
   PROCEDURE bpl (str IN VARCHAR2, val IN BOOLEAN) 
   IS 
   BEGIN 
      pl ( 
            str 
         || ' - ' 
         || CASE val 
               WHEN TRUE THEN 'TRUE' 
               WHEN FALSE THEN 'FALSE' 
               ELSE 'NULL' 
            END); 
   END; 
 
   PROCEDURE LOG (info_in IN VARCHAR2) 
   IS 
      PRAGMA AUTONOMOUS_TRANSACTION; 
   BEGIN 
      INSERT INTO alert_log (info) 
           VALUES (info_in); 
 
      COMMIT; 
   END; 
 
   /* Job management */ 
 
   PROCEDURE start_check_alerts_job (every_n_minutes_in IN NUMBER DEFAULT 5) 
   IS 
   BEGIN 
      DBMS_SCHEDULER.create_job ( 
         job_name          => c_job_name, 
         job_type          => 'PLSQL_BLOCK', 
         job_action        => 'BEGIN alert_mgr.check_alerts; END;', 
         start_date        => SYSDATE, 
         repeat_interval   =>    'FREQ=MINUTELY;INTERVAL=' 
                              || every_n_minutes_in 
                              || ';', 
         enabled           => FALSE); 
 
      DBMS_SCHEDULER.set_attribute (name        => c_job_name, 
                                    attribute   => 'logging_level', 
                                    VALUE       => DBMS_SCHEDULER.logging_full); 
 
      DBMS_SCHEDULER.enable (c_job_name); 
 
      UPDATE alert_config 
         SET job_wakeup_minutes = every_n_minutes_in; 
 
      resume_checking; 
   END; 
 
   PROCEDURE change_check_frequency (every_n_minutes_in IN NUMBER) 
   IS 
   BEGIN 
      DBMS_SCHEDULER.set_attribute ( 
         name        => c_job_name, 
         attribute   => 'repeat_interval', 
         VALUE       => 'FREQ=MINUTELY;INTERVAL=' || every_n_minutes_in || ';'); 
 
      UPDATE alert_config 
         SET job_wakeup_minutes = every_n_minutes_in; 
   END; 
 
   PROCEDURE stop_checking 
   IS 
   BEGIN 
      UPDATE alert_config 
         SET keep_checking = 'N'; 
   END; 
 
   PROCEDURE resume_checking 
   IS 
   BEGIN 
      UPDATE alert_config 
         SET keep_checking = 'Y'; 
   END; 
 
   FUNCTION checking_for_alerts 
      RETURN BOOLEAN 
   IS 
      l_keep_checking   alert_config.keep_checking%TYPE; 
   BEGIN 
      SELECT keep_checking INTO l_keep_checking FROM alert_config; 
 
      RETURN CASE l_keep_checking WHEN 'Y' THEN TRUE ELSE FALSE END; 
   END; 
 
   PROCEDURE stop_check_alerts_job 
   IS 
   BEGIN 
      DBMS_SCHEDULER.disable (c_job_name); 
   END; 
 
   FUNCTION check_alerts_job_running 
      RETURN BOOLEAN 
   IS 
   BEGIN 
      RETURN TRUE; 
   END; 
 
   FUNCTION check_alerts_job_running_yn 
      RETURN VARCHAR2 
   IS 
   BEGIN 
      RETURN 'Y'; 
   END; 
 
   PROCEDURE check_alerts_job_status 
   IS 
   BEGIN 
      NULL; 
   END; 
 
   PROCEDURE register_email_proc (proc_name_in        IN VARCHAR2, 
                                  workspace_name_in   IN VARCHAR2 DEFAULT NULL) 
   IS 
   BEGIN 
      UPDATE alert_config 
         SET send_email_proc_name = proc_name_in, 
             apex_workspace_name = workspace_name_in; 
   END; 
 
   PROCEDURE register_alert ( 
      alert_name_in             IN     VARCHAR2, 
      description_in            IN     VARCHAR2 DEFAULT NULL, 
      trigger_code_in           IN     VARCHAR2, 
      trigger_type_in           IN     VARCHAR2, 
      check_frequency_in        IN     VARCHAR2, 
      recurrence_frequency_in   IN     VARCHAR2, 
      ignore_failures_in        IN     VARCHAR2, 
      action_type_in            IN     VARCHAR2 DEFAULT NULL, 
      action_code_in            IN     VARCHAR2 DEFAULT NULL, 
      send_email_to_in          IN     VARCHAR2 DEFAULT NULL, 
      email_subject_in          IN     VARCHAR2 DEFAULT NULL, 
      email_body_in             IN     CLOB DEFAULT NULL, 
      email_query_in            IN     VARCHAR2 DEFAULT NULL, 
      is_active_in              IN     VARCHAR2 DEFAULT 'N', 
      alert_id_out                 OUT NUMBER) 
   IS 
      PROCEDURE replace_actions (id_in IN INTEGER) 
      IS 
      BEGIN 
         IF action_type_in IS NOT NULL 
         THEN 
            DELETE FROM alert_actions 
                  WHERE alert_id = id_in; 
 
            INSERT INTO alert_actions (alert_id, 
                                       action_type, 
                                       action_code, 
                                       send_email_to, 
                                       email_subject, 
                                       email_body, 
                                       email_query) 
                 VALUES (id_in, 
                         action_type_in, 
                         action_code_in, 
                         send_email_to_in, 
                         email_subject_in, 
                         email_body_in, 
                         email_query_in); 
         END IF; 
      END; 
   BEGIN 
      INSERT INTO alerts (alert_name, 
                          description, 
                          trigger_code, 
                          trigger_type, 
                          check_frequency, 
                          recurrence_frequency, 
                          ignore_failures, 
                          is_active) 
           VALUES (alert_name_in, 
                   description_in, 
                   trigger_code_in, 
                   trigger_type_in, 
                   check_frequency_in, 
                   recurrence_frequency_in, 
                   ignore_failures_in, 
                   is_active_in) 
        RETURNING id 
             INTO alert_id_out; 
 
      replace_actions (alert_id_out); 
   EXCEPTION 
      WHEN DUP_VAL_ON_INDEX 
      THEN 
            UPDATE alerts 
               SET description = description_in, 
                   trigger_code = trigger_code_in, 
                   trigger_type = trigger_type_in, 
                   check_frequency = check_frequency_in, 
                   recurrence_frequency = recurrence_frequency_in, 
                   ignore_failures = ignore_failures_in, 
                   is_active = is_active_in 
             WHERE alert_name = UPPER (alert_name_in) 
         RETURNING id 
              INTO alert_id_out; 
 
         replace_actions (alert_id_out); 
   END; 
 
   PROCEDURE register_alert ( 
      alert_name_in             IN VARCHAR2, 
      description_in            IN VARCHAR2 DEFAULT NULL, 
      trigger_code_in           IN VARCHAR2, 
      trigger_type_in           IN VARCHAR2, 
      check_frequency_in        IN VARCHAR2, 
      recurrence_frequency_in   IN VARCHAR2, 
      ignore_failures_in        IN VARCHAR2, 
      action_type_in            IN VARCHAR2 DEFAULT NULL, 
      action_code_in            IN VARCHAR2 DEFAULT NULL, 
      send_email_to_in          IN VARCHAR2 DEFAULT NULL, 
      email_subject_in          IN VARCHAR2 DEFAULT NULL, 
      email_body_in             IN CLOB DEFAULT NULL, 
      email_query_in            IN VARCHAR2 DEFAULT NULL, 
      is_active_in              IN VARCHAR2 DEFAULT 'N') 
   IS 
      alert_id_out   NUMBER; 
   BEGIN 
      register_alert (alert_name_in             => alert_name_in, 
                      description_in            => description_in, 
                      trigger_code_in           => trigger_code_in, 
                      trigger_type_in           => trigger_type_in, 
                      check_frequency_in        => check_frequency_in, 
                      recurrence_frequency_in   => recurrence_frequency_in, 
                      ignore_failures_in        => ignore_failures_in, 
                      action_type_in            => action_type_in, 
                      action_code_in            => action_code_in, 
                      send_email_to_in          => send_email_to_in, 
                      email_subject_in          => email_subject_in, 
                      email_body_in             => email_body_in, 
                      email_query_in            => email_query_in, 
                      is_active_in              => is_active_in, 
                      alert_id_out              => alert_id_out); 
   END; 
 
   PROCEDURE register_alert ( 
      alert_name_in             IN     VARCHAR2, 
      description_in            IN     VARCHAR2 DEFAULT NULL, 
      trigger_code_in           IN     VARCHAR2, 
      trigger_type_in           IN     VARCHAR2, 
      check_frequency_in        IN     VARCHAR2, 
      recurrence_frequency_in   IN     VARCHAR2, 
      ignore_failures_in        IN     VARCHAR2, 
      actions_in                IN     actions_t, 
      is_active_in              IN     VARCHAR2 DEFAULT 'N', 
      alert_id_out                 OUT NUMBER) 
   IS 
   BEGIN 
      register_alert (alert_name_in             => alert_name_in, 
                      description_in            => description_in, 
                      trigger_code_in           => trigger_code_in, 
                      trigger_type_in           => trigger_type_in, 
                      check_frequency_in        => check_frequency_in, 
                      recurrence_frequency_in   => recurrence_frequency_in, 
                      ignore_failures_in        => ignore_failures_in, 
                      is_active_in              => is_active_in, 
                      alert_id_out              => alert_id_out); 
 
      DELETE FROM alert_actions 
            WHERE alert_id = alert_id_out; 
 
      FORALL indx IN actions_in.FIRST .. actions_in.LAST 
         INSERT INTO alert_actions (alert_id, 
                                    action_type, 
                                    action_code, 
                                    send_email_to, 
                                    email_subject, 
                                    email_body, 
                                    email_query) 
              VALUES (alert_id_out, 
                      actions_in (indx).action_type, 
                      actions_in (indx).action_code, 
                      actions_in (indx).send_email_to, 
                      actions_in (indx).email_subject, 
                      actions_in (indx).email_body, 
                      actions_in (indx).email_query); 
   END; 
 
   PROCEDURE register_alert (alert_name_in             IN VARCHAR2, 
                             description_in            IN VARCHAR2 DEFAULT NULL, 
                             trigger_code_in           IN VARCHAR2, 
                             trigger_type_in           IN VARCHAR2, 
                             check_frequency_in        IN VARCHAR2, 
                             recurrence_frequency_in   IN VARCHAR2, 
                             ignore_failures_in        IN VARCHAR2, 
                             actions_in                IN actions_t, 
                             is_active_in              IN VARCHAR2 DEFAULT 'N') 
   IS 
      alert_id_out   NUMBER; 
   BEGIN 
      register_alert (alert_name_in             => alert_name_in, 
                      description_in            => description_in, 
                      trigger_code_in           => trigger_code_in, 
                      trigger_type_in           => trigger_type_in, 
                      check_frequency_in        => check_frequency_in, 
                      recurrence_frequency_in   => recurrence_frequency_in, 
                      ignore_failures_in        => ignore_failures_in, 
                      actions_in                => actions_in, 
                      is_active_in              => is_active_in, 
                      alert_id_out              => alert_id_out); 
   END; 
 
   PROCEDURE activate_alert (id_in IN NUMBER) 
   IS 
   BEGIN 
      UPDATE alerts 
         SET is_active = 'Y' 
       WHERE id = id_in; 
   END; 
 
   PROCEDURE deactivate_alert (id_in IN NUMBER) 
   IS 
   BEGIN 
      UPDATE alerts 
         SET is_active = 'N' 
       WHERE id = id_in; 
   END; 
 
   FUNCTION time_to_trigger_alert (check_frequency_in          IN VARCHAR2, 
                                   recurring_frequency_in      IN VARCHAR2, 
                                   completed_at_in             IN DATE, 
                                   completed_successfully_in   IN VARCHAR2, 
                                   ignore_failures_in          IN VARCHAR2) 
      RETURN BOOLEAN 
   IS 
      l_overdue       BOOLEAN := FALSE; 
      l_check_again   BOOLEAN := FALSE; 
      l_check         BOOLEAN := FALSE; 
 
      FUNCTION is_overdue (freq_in IN VARCHAR2) 
         RETURN BOOLEAN 
      IS 
      BEGIN 
         RETURN CASE freq_in 
                   WHEN c_freq_never THEN FALSE 
                   WHEN c_freq_hourly THEN SYSDATE - completed_at_in >= 1 / 24 
                   WHEN c_freq_daily THEN SYSDATE - completed_at_in >= 1 
                   ELSE SYSDATE < (completed_at_in + TO_NUMBER (freq_in)) 
                END; 
      END; 
   BEGIN 
      IF completed_at_in IS NULL 
      THEN 
         /* Never been run before, so do it the first time. */ 
         l_check := TRUE; 
      ELSE 
         /* Might check say every 10 minutes, but you don't want to recur any more frequently than daily. */ 
         /* If did not complete successfully last time and ignore failures, then see if it should be run again */ 
         l_overdue := is_overdue (check_frequency_in); 
         trc ('check', l_overdue); 
         trc ('recur', is_overdue (recurring_frequency_in)); 
 
         l_check_again := 
                is_overdue (recurring_frequency_in) 
            AND (   completed_successfully_in = 'Y' 
                 OR (    completed_successfully_in = 'N' 
                     AND ignore_failures_in = 'Y')); 
 
         l_check := l_overdue AND l_check_again; 
      END IF; 
 
      RETURN l_check; 
   END; 
 
   PROCEDURE execute_alert_actions (alert_id_in IN NUMBER) 
   IS 
      c_start   CONSTANT DATE := SYSDATE; 
      l_alert            alerts%ROWTYPE := one_alert (alert_id_in); 
      l_success          BOOLEAN := FALSE; 
      l_values           DBMS_SQL.varchar2_table; 
      l_code             VARCHAR2 (32767) := l_alert.trigger_code; 
 
      PROCEDURE take_action (alert_action_in IN alert_actions%ROWTYPE) 
      IS 
         l_send_email_proc_name   alert_config.send_email_proc_name%TYPE; 
         l_subject                alert_actions.email_subject%TYPE; 
         l_body                   alert_actions.email_body%TYPE; 
         l_cursor                 SYS_REFCURSOR; 
      BEGIN 
         alert_mgr.LOG ('Take action ' || alert_action_in.action_type); 
 
         CASE alert_action_in.action_type 
            WHEN c_action_type_email 
            THEN 
               SELECT send_email_proc_name 
                 INTO l_send_email_proc_name 
                 FROM alert_config ac; 
 
               /* IF there is no email query, then send one. Else.... */ 
               IF alert_action_in.email_query IS NULL 
               THEN 
                  EXECUTE IMMEDIATE 
                        'BEGIN ' 
                     || l_send_email_proc_name 
                     || '(to_in => :to, subject_in => :sub, body_in => :bod); END;' 
                     USING alert_action_in.send_email_to, 
                           alert_action_in.email_subject, 
                           alert_action_in.email_body; 
               ELSE 
                  OPEN l_cursor FOR alert_action_in.email_query; 
 
                  LOOP 
                     FETCH l_cursor INTO l_subject, l_body; 
 
                     EXIT WHEN l_cursor%NOTFOUND; 
 
                     EXECUTE IMMEDIATE 
                           'BEGIN ' 
                        || l_send_email_proc_name 
                        || '(to_in => :to, subject_in => :sub, body_in => :bod); END;' 
                        USING alert_action_in.send_email_to, l_subject, l_body; 
                  END LOOP; 
 
                  CLOSE l_cursor; 
               END IF; 
            WHEN c_action_type_proc 
            THEN 
               EXECUTE IMMEDIATE 
                     'BEGIN ' 
                  || RTRIM (alert_action_in.action_code, ';') 
                  || '; end;'; 
         END CASE; 
      END; 
   BEGIN 
      BEGIN 
         CASE 
            WHEN l_alert.trigger_type IN (c_trigger_type_select_one_row, 
                                          c_trigger_type_select_no_rows, 
                                          c_trigger_type_select_mult_rows) 
            THEN 
               EXECUTE IMMEDIATE l_alert.trigger_code 
                  BULK COLLECT INTO l_values; 
 
               l_success := 
                  CASE 
                     WHEN l_alert.trigger_type IN (c_trigger_type_select_one_row, 
                                                   c_trigger_type_select_mult_rows) 
                     THEN 
                           l_values.COUNT = 1 
                        OR (    l_alert.trigger_type = 
                                   c_trigger_type_select_mult_rows 
                            AND l_values.COUNT > 1) 
                     WHEN l_alert.trigger_type = c_trigger_type_select_no_rows 
                     THEN 
                        l_values.COUNT = 0 
                  END; 
            WHEN l_alert.trigger_type = c_trigger_type_return_true 
            THEN 
               l_code := 
                     'begin :b := ' 
                  || RTRIM (l_alert.trigger_code, ';') 
                  || '; end;'; 
 
               EXECUTE IMMEDIATE l_code USING OUT l_success; 
            WHEN l_alert.trigger_type = c_trigger_type_return_false 
            THEN 
               l_code := 
                     'begin :b := ' 
                  || RTRIM (l_alert.trigger_code, ';') 
                  || '; end;'; 
 
               EXECUTE IMMEDIATE l_code USING OUT l_success; 
 
               l_success := NOT l_success; 
         END CASE; 
      EXCEPTION 
         WHEN OTHERS 
         THEN 
            record_result ( 
               alert_id_in                 => alert_id_in, 
               completed_at_in             => SYSDATE, 
               completed_successfully_in   => 'N', 
               results_in                  =>    'Error executing trigger code: ' 
                                              || DBMS_UTILITY.format_error_stack 
                                              || ' Backtrace: ' 
                                              || DBMS_UTILITY.format_error_backtrace); 
            RETURN; 
      END; 
 
      IF l_success 
      THEN 
         FOR this_action IN (  SELECT * 
                                 FROM alert_actions 
                                WHERE alert_id = alert_id_in 
                             ORDER BY action_sequence) 
         LOOP 
            take_action (this_action); 
         END LOOP; 
      END IF; 
 
      record_result ( 
         alert_id_in                 => alert_id_in, 
         completed_at_in             => SYSDATE, 
         completed_successfully_in   => 'Y', 
         results_in                  => 'Trigger code executed: ' || l_code, 
         errors_in                   => NULL); 
   EXCEPTION 
      WHEN OTHERS 
      THEN 
         record_result ( 
            alert_id_in                 => alert_id_in, 
            completed_at_in             => SYSDATE, 
            completed_successfully_in   => 'N', 
            results_in                  => 'Trigger code ailed: ' || l_code); 
   END; 
 
   PROCEDURE check_alerts 
   IS 
   BEGIN 
      IF checking_for_alerts 
      THEN 
         FOR rec IN (SELECT a.*, ar.completed_at, ar.completed_successfully 
                       FROM alerts a, alert_runs ar 
                      WHERE a.is_active = 'Y' AND a.last_run_id = ar.id(+)) 
         LOOP 
            /* Is the last run more recent than the recurring frequency? 
               If so, do nothing. */ 
            IF time_to_trigger_alert (rec.check_frequency, 
                                      rec.recurrence_frequency, 
                                      rec.completed_at, 
                                      rec.completed_successfully, 
                                      rec.ignore_failures) 
            THEN 
               execute_alert_actions (rec.id); 
            END IF; 
         END LOOP; 
      END IF; 
   END; 
 
   /* Add to the alert runs tables and also update the alert row with 
      the last run id */ 
   PROCEDURE record_result ( 
      alert_id_in                 IN NUMBER, 
      completed_at_in             IN DATE DEFAULT SYSDATE, 
      completed_successfully_in   IN VARCHAR2 DEFAULT 'Y', 
      results_in                  IN VARCHAR2 DEFAULT NULL, 
      errors_in                   IN VARCHAR2 DEFAULT NULL) 
   IS 
      l_id   NUMBER; 
   BEGIN 
      INSERT INTO alert_runs (alert_id, 
                              completed_at, 
                              completed_successfully, 
                              results, 
                              errors) 
              VALUES ( 
                        alert_id_in, 
                        completed_at_in, 
                        completed_successfully_in, 
                        results_in, 
                        CASE 
                           WHEN completed_successfully_in = 'Y' 
                           THEN 
                              NULL 
                           ELSE 
                              NVL ( 
                                 errors_in, 
                                    'Error: ' 
                                 || DBMS_UTILITY.format_error_stack 
                                 || ' Backtrace: ' 
                                 || DBMS_UTILITY.format_error_backtrace) 
                        END) 
        RETURNING id 
             INTO l_id; 
 
      UPDATE alerts 
         SET last_run_id = l_id 
       WHERE id = alert_id_in; 
   END; 
 
   FUNCTION last_run_for (alert_id_in IN NUMBER) 
      RETURN alert_runs%ROWTYPE 
   IS 
      l_return   alert_runs%ROWTYPE; 
   BEGIN 
      SELECT ar.* 
        INTO l_return 
        FROM alert_runs ar, alerts a 
       WHERE a.id = alert_id_in AND a.last_run_id = ar.id; 
 
      RETURN l_return; 
   EXCEPTION 
      WHEN NO_DATA_FOUND 
      THEN 
         RETURN NULL; 
   END; 
 
   FUNCTION one_alert (id_in IN NUMBER) 
      RETURN alerts%ROWTYPE 
   IS 
      l_alert   alerts%ROWTYPE; 
   BEGIN 
      SELECT * 
        INTO l_alert 
        FROM alerts 
       WHERE id = id_in; 
 
      RETURN l_alert; 
   END; 
END; 
/

CREATE OR REPLACE PACKAGE alert_email_mgr 
   AUTHID DEFINER 
/*  
   This package demonstrates how to implement a callout to 
   a procedure to send emails when an alert is triggered. 
    
   The default implementation uses APEX_MAIL.SEND, but if you 
   do not want any APEX dependencies you can change that. 
*/    
IS 
   PROCEDURE send_email (to_in             IN VARCHAR2, 
                         subject_in        IN VARCHAR2, 
                         body_in           IN CLOB); 
END; 
/

CREATE OR REPLACE PACKAGE BODY alert_email_mgr 
IS 
   PROCEDURE send_email (to_in        IN VARCHAR2, 
                         subject_in   IN VARCHAR2, 
                         body_in      IN CLOB) 
   IS 
      l_vc_text   VARCHAR2(32767) := 'Ignore this plain text.'; 
      l_vc_html   VARCHAR2(32767) := body_in; 
 
      PROCEDURE prepare_apex 
      IS 
         l_app_id           NUMBER; 
         l_workspace_name   alert_config.apex_workspace_name%TYPE; 
         c_page    CONSTANT PLS_INTEGER := 1; 
         l_cgivar_name      OWA.vc_arr; 
         l_cgivar_val       OWA.vc_arr; 
      BEGIN 
         SELECT apex_workspace_name 
           INTO l_workspace_name 
           FROM alert_config ac; 
 
         APEX_UTIL.set_workspace (l_workspace_name); 
      END; 
   BEGIN 
      prepare_apex; 
 
      apex_mail.send (p_to          => to_in, 
                      p_from        => 'noreply@oracle.com', 
                      p_subj        => subject_in, 
                      p_body        => l_vc_html, 
                      p_body_html   => l_vc_html); 
 
      alert_mgr.LOG ( 
         'Email sent to ' || to_in || ' with subject ' || subject_in || ' and body '||l_vc_html); 
   EXCEPTION 
      WHEN OTHERS 
      THEN 
         alert_mgr.LOG ( 
               'Unable to send email to ' 
            || to_in 
            || ' with error ' 
            || DBMS_UTILITY.format_error_stack); 
   END; 
END; 
/

