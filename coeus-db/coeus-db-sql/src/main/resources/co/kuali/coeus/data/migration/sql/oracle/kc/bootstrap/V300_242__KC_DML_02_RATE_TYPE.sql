--
-- Kuali Coeus, a comprehensive research administration system for higher education.
-- 
-- Copyright 2005-2015 Kuali, Inc.
-- 
-- This program is free software: you can redistribute it and/or modify
-- it under the terms of the GNU Affero General Public License as
-- published by the Free Software Foundation, either version 3 of the
-- License, or (at your option) any later version.
-- 
-- This program is distributed in the hope that it will be useful,
-- but WITHOUT ANY WARRANTY; without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-- GNU Affero General Public License for more details.
-- 
-- You should have received a copy of the GNU Affero General Public License
-- along with this program.  If not, see <http://www.gnu.org/licenses/>.
--

TRUNCATE TABLE RATE_TYPE DROP STORAGE;
INSERT INTO RATE_TYPE (RATE_TYPE_CODE,RATE_CLASS_CODE,DESCRIPTION,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('1',(SELECT RATE_CLASS_CODE FROM RATE_CLASS WHERE DESCRIPTION = 'MTDC'),'MTDC','admin',SYSDATE,SYS_GUID(),1);
INSERT INTO RATE_TYPE (RATE_TYPE_CODE,RATE_CLASS_CODE,DESCRIPTION,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('1',(SELECT RATE_CLASS_CODE FROM RATE_CLASS WHERE DESCRIPTION = 'TDC'),'TDC','admin',SYSDATE,SYS_GUID(),1);
INSERT INTO RATE_TYPE (RATE_TYPE_CODE,RATE_CLASS_CODE,DESCRIPTION,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('1',(SELECT RATE_CLASS_CODE FROM RATE_CLASS WHERE DESCRIPTION = 'S&W'),'S&W','admin',SYSDATE,SYS_GUID(),1);
INSERT INTO RATE_TYPE (RATE_TYPE_CODE,RATE_CLASS_CODE,DESCRIPTION,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('1',(SELECT RATE_CLASS_CODE FROM RATE_CLASS WHERE DESCRIPTION = 'Fund with Transaction Fee (FUNSN)'),'Salaries','admin',SYSDATE,SYS_GUID(),1);
INSERT INTO RATE_TYPE (RATE_TYPE_CODE,RATE_CLASS_CODE,DESCRIPTION,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('1',(SELECT RATE_CLASS_CODE FROM RATE_CLASS WHERE DESCRIPTION = 'Employee Benefits'),'Research Rate','admin',SYSDATE,SYS_GUID(),1);
INSERT INTO RATE_TYPE (RATE_TYPE_CODE,RATE_CLASS_CODE,DESCRIPTION,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('1',(SELECT RATE_CLASS_CODE FROM RATE_CLASS WHERE DESCRIPTION = 'Inflation'),'Faculty Salaries (6/1)','admin',SYSDATE,SYS_GUID(),1);
INSERT INTO RATE_TYPE (RATE_TYPE_CODE,RATE_CLASS_CODE,DESCRIPTION,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('1',(SELECT RATE_CLASS_CODE FROM RATE_CLASS WHERE DESCRIPTION = 'Vacation'),'Vacation ','admin',SYSDATE,SYS_GUID(),1);
INSERT INTO RATE_TYPE (RATE_TYPE_CODE,RATE_CLASS_CODE,DESCRIPTION,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('1',(SELECT RATE_CLASS_CODE FROM RATE_CLASS WHERE DESCRIPTION = 'Other'),'Other','admin',SYSDATE,SYS_GUID(),1);
INSERT INTO RATE_TYPE (RATE_TYPE_CODE,RATE_CLASS_CODE,DESCRIPTION,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('1',(SELECT RATE_CLASS_CODE FROM RATE_CLASS WHERE DESCRIPTION = 'Lab Allocation - Salaries'),'Lab Allocation - Salaries','admin',SYSDATE,SYS_GUID(),1);
INSERT INTO RATE_TYPE (RATE_TYPE_CODE,RATE_CLASS_CODE,DESCRIPTION,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('1',(SELECT RATE_CLASS_CODE FROM RATE_CLASS WHERE DESCRIPTION = 'Lab Allocation - M&S'),'Lab Allocation - M&S','admin',SYSDATE,SYS_GUID(),1);
INSERT INTO RATE_TYPE (RATE_TYPE_CODE,RATE_CLASS_CODE,DESCRIPTION,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('1',(SELECT RATE_CLASS_CODE FROM RATE_CLASS WHERE DESCRIPTION = 'Lab Allocation - Utilities'),'Lab Allocation - Utilities','admin',SYSDATE,SYS_GUID(),1);
INSERT INTO RATE_TYPE (RATE_TYPE_CODE,RATE_CLASS_CODE,DESCRIPTION,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('2',(SELECT RATE_CLASS_CODE FROM RATE_CLASS WHERE DESCRIPTION = 'Fund with Transaction Fee (FUNSN)'),'Materials and Services','admin',SYSDATE,SYS_GUID(),1);
INSERT INTO RATE_TYPE (RATE_TYPE_CODE,RATE_CLASS_CODE,DESCRIPTION,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('2',(SELECT RATE_CLASS_CODE FROM RATE_CLASS WHERE DESCRIPTION = 'Employee Benefits'),'UROP Rate','admin',SYSDATE,SYS_GUID(),1);
INSERT INTO RATE_TYPE (RATE_TYPE_CODE,RATE_CLASS_CODE,DESCRIPTION,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('2',(SELECT RATE_CLASS_CODE FROM RATE_CLASS WHERE DESCRIPTION = 'Inflation'),'Administrative Salaries (7/1)','admin',SYSDATE,SYS_GUID(),1);
INSERT INTO RATE_TYPE (RATE_TYPE_CODE,RATE_CLASS_CODE,DESCRIPTION,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('2',(SELECT RATE_CLASS_CODE FROM RATE_CLASS WHERE DESCRIPTION = 'Vacation'),'Vacation on LA','admin',SYSDATE,SYS_GUID(),1);
INSERT INTO RATE_TYPE (RATE_TYPE_CODE,RATE_CLASS_CODE,DESCRIPTION,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('3',(SELECT RATE_CLASS_CODE FROM RATE_CLASS WHERE DESCRIPTION = 'Employee Benefits'),'EB on LA','admin',SYSDATE,SYS_GUID(),1);
INSERT INTO RATE_TYPE (RATE_TYPE_CODE,RATE_CLASS_CODE,DESCRIPTION,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('3',(SELECT RATE_CLASS_CODE FROM RATE_CLASS WHERE DESCRIPTION = 'Inflation'),'Support Staff Salaries (4/1)','admin',SYSDATE,SYS_GUID(),1);
INSERT INTO RATE_TYPE (RATE_TYPE_CODE,RATE_CLASS_CODE,DESCRIPTION,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('4',(SELECT RATE_CLASS_CODE FROM RATE_CLASS WHERE DESCRIPTION = 'Employee Benefits'),'another EB rate','admin',SYSDATE,SYS_GUID(),1);
INSERT INTO RATE_TYPE (RATE_TYPE_CODE,RATE_CLASS_CODE,DESCRIPTION,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('4',(SELECT RATE_CLASS_CODE FROM RATE_CLASS WHERE DESCRIPTION = 'Inflation'),'Materials and Services','admin',SYSDATE,SYS_GUID(),1);
INSERT INTO RATE_TYPE (RATE_TYPE_CODE,RATE_CLASS_CODE,DESCRIPTION,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('5',(SELECT RATE_CLASS_CODE FROM RATE_CLASS WHERE DESCRIPTION = 'Employee Benefits'),'eb added in pb','admin',SYSDATE,SYS_GUID(),1);
INSERT INTO RATE_TYPE (RATE_TYPE_CODE,RATE_CLASS_CODE,DESCRIPTION,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('5',(SELECT RATE_CLASS_CODE FROM RATE_CLASS WHERE DESCRIPTION = 'Inflation'),'Research Staff (1/1)','admin',SYSDATE,SYS_GUID(),1);
INSERT INTO RATE_TYPE (RATE_TYPE_CODE,RATE_CLASS_CODE,DESCRIPTION,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('6',(SELECT RATE_CLASS_CODE FROM RATE_CLASS WHERE DESCRIPTION = 'Employee Benefits'),'Award Special EB Rate','admin',SYSDATE,SYS_GUID(),1);
INSERT INTO RATE_TYPE (RATE_TYPE_CODE,RATE_CLASS_CODE,DESCRIPTION,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('6',(SELECT RATE_CLASS_CODE FROM RATE_CLASS WHERE DESCRIPTION = 'Inflation'),'Students (6/1)','admin',SYSDATE,SYS_GUID(),1);
