DELIMITER /
INSERT INTO PROTOCOL_ACTION_TYPE (PROTOCOL_ACTION_TYPE_CODE,DESCRIPTION,TRIGGER_SUBMISSION,TRIGGER_CORRESPONDENCE,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR,FINAL_ACTION_FOR_BATCH_CORRESP,OBJ_ID)
       VALUES(131,'Withdraw Submission Request','N','N',SYSDATE(),'admin',1,'N',UUID())
/

INSERT INTO NOTIFICATION_TYPE (NOTIFICATION_TYPE_ID, MODULE_CODE, ACTION_CODE, DESCRIPTION, SUBJECT, MESSAGE, PROMPT_USER, SEND_NOTIFICATION, UPDATE_USER, UPDATE_TIMESTAMP, VER_NBR, OBJ_ID)
             VALUES(SEQ_NOTIFICATION_TYPE_ID.NEXTVAL,7,'131','Withdraw Submission Event','Protocol {PROTOCOL_NUMBER} Withdraw Submission Request','Protocol <a title="" target="_self" href="{DOCUMENT_PREFIX}/kew/DocHandler.do?command=displayDocSearchView&amp;docId={DOCUMENT_NUMBER}">{PROTOCOL_NUMBER}</a> has had the action Withdraw Submission Request performed on it. Additional information and further actions can be accessed through the Kuali Coeus system.','Y','Y','admin',SYSDATE(),1,UUID())
/
INSERT INTO NOTIFICATION_TYPE_RECIPIENT (NOTIFICATION_TYPE_RECIPIENT_ID, NOTIFICATION_TYPE_ID, ROLE_NAME, UPDATE_USER, UPDATE_TIMESTAMP, OBJ_ID)
             VALUES (SEQ_NOTIFICATION_TYPE_ID.NEXTVAL, (SELECT NOTIFICATION_TYPE_ID FROM NOTIFICATION_TYPE WHERE MODULE_CODE=7 AND ACTION_CODE=131), 'KC-UNT:IRB Administrator', 'admin', SYSDATE(), UUID())
/
 
INSERT INTO IACUC_PROTOCOL_ACTION_TYPE (PROTOCOL_ACTION_TYPE_CODE,DESCRIPTION,TRIGGER_SUBMISSION,TRIGGER_CORRESPONDENCE,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR,FINAL_ACTION_FOR_BATCH_CORRESP,OBJ_ID)
       VALUES(131,'Withdraw Submission Request','N','N',SYSDATE(),'admin',1,'N',UUID())
/

INSERT INTO NOTIFICATION_TYPE (NOTIFICATION_TYPE_ID, MODULE_CODE, ACTION_CODE, DESCRIPTION, SUBJECT, MESSAGE, PROMPT_USER, SEND_NOTIFICATION, UPDATE_USER, UPDATE_TIMESTAMP, VER_NBR, OBJ_ID)
             VALUES(SEQ_NOTIFICATION_TYPE_ID.NEXTVAL,9,'131','Withdraw Submission Event','Protocol {PROTOCOL_NUMBER} Withdraw Submission Request','Protocol <a title="" target="_self" href="{DOCUMENT_PREFIX}/kew/DocHandler.do?command=displayDocSearchView&amp;docId={DOCUMENT_NUMBER}">{PROTOCOL_NUMBER}</a> has had the action Withdraw Submission Request performed on it. Additional information and further actions can be accessed through the Kuali Coeus system.','Y','Y','admin',SYSDATE(),1,UUID())
/
INSERT INTO NOTIFICATION_TYPE_RECIPIENT (NOTIFICATION_TYPE_RECIPIENT_ID, NOTIFICATION_TYPE_ID, ROLE_NAME, UPDATE_USER, UPDATE_TIMESTAMP, OBJ_ID)
             VALUES (SEQ_NOTIFICATION_TYPE_ID.NEXTVAL, (SELECT NOTIFICATION_TYPE_ID FROM NOTIFICATION_TYPE WHERE MODULE_CODE=9 AND ACTION_CODE=131), 'KC-UNT:IACUC Administrator', 'admin', SYSDATE(), UUID())
/

DELIMITER ;