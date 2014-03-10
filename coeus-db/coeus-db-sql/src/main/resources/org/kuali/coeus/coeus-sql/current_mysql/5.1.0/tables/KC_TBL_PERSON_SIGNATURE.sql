DELIMITER /
CREATE TABLE PERSON_SIGNATURE ( 
    PERSON_SIGNATURE_ID DECIMAL(12,0) NOT NULL, 
    PERSON_ID VARCHAR(40) NOT NULL,
    PERSON_AUTOGRAPH BLOB,
    DEFAULT_ADMIN_SIGNATURE	VARCHAR(1) NOT NULL,
    FILE_NAME VARCHAR(255) NOT NULL,
    CONTENT_TYPE VARCHAR(150) NOT NULL,
    SIGNATURE_ACTIVE	VARCHAR(1) NOT NULL,
    UPDATE_TIMESTAMP DATE NOT NULL, 
    UPDATE_USER VARCHAR(60) NOT NULL, 
    VER_NBR DECIMAL(8,0) DEFAULT 1 NOT NULL, 
    OBJ_ID VARCHAR(36) NOT NULL) 
/


ALTER TABLE PERSON_SIGNATURE 
ADD CONSTRAINT PK_PERSON_SIGNATURE 
PRIMARY KEY (PERSON_SIGNATURE_ID) 
/


DELIMITER ;