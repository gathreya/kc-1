CREATE OR REPLACE VIEW OSP$COMM_RESEARCH_AREAS AS SELECT
  COMMITTEE.COMMITTEE_ID,
  COMM_RESEARCH_AREAS.RESEARCH_AREA_CODE,
  COMM_RESEARCH_AREAS.UPDATE_TIMESTAMP,
  COMM_RESEARCH_AREAS.UPDATE_USER
FROM COMM_RESEARCH_AREAS, COMMITTEE
WHERE COMM_RESEARCH_AREAS.COMMITTEE_ID_FK = COMMITTEE.ID;  

