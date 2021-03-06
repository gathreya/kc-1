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

DECLARE 
  num NUMBER;
BEGIN
  SELECT COUNT(*) INTO num FROM KREN_CHNL_PRODCR_T WHERE CHNL_ID = (SELECT CHNL_ID FROM KREN_CHNL_T WHERE NM = 'KC Notification Channel') AND PRODCR_ID = (SELECT PRODCR_ID FROM KREN_PRODCR_T WHERE NM = 'Notification System');
  IF (num = 0)
  THEN
    INSERT INTO KREN_CHNL_PRODCR_T (CHNL_ID, PRODCR_ID)
      VALUES ((SELECT CHNL_ID FROM KREN_CHNL_T WHERE NM = 'KC Notification Channel'), (SELECT PRODCR_ID FROM KREN_PRODCR_T WHERE NM = 'Notification System'));
  END IF;
end;
/
