ALTER TABLE AWARD
ADD CONSTRAINT FK_AWARD 
FOREIGN KEY (DOCUMENT_NUMBER) 
REFERENCES AWARD_DOCUMENT (DOCUMENT_NUMBER);

ALTER TABLE AWARD_AMOUNT_INFO 
ADD CONSTRAINT FK_AWARD_AMOUNT_INFO 
FOREIGN KEY (AWARD_ID) 
REFERENCES AWARD (AWARD_ID);

ALTER TABLE AWARD_APPROVED_EQUIPMENT 
ADD CONSTRAINT FK_AWARD_AWARD_APPROVED_EQUIP 
FOREIGN KEY (AWARD_ID) 
REFERENCES AWARD(AWARD_ID);

ALTER TABLE AWARD_APPROVED_FOREIGN_TRAVEL 
ADD CONSTRAINT FK_AWARD_APP_FT_AWARD 
FOREIGN KEY (AWARD_ID) 
REFERENCES AWARD(AWARD_ID);

alter table AWARD_COMMENT 
ADD CONSTRAINT FK_AWARD_COMMENT_COMMENT_TYPE 
FOREIGN KEY(COMMENT_TYPE_CODE)
REFERENCES COMMENT_TYPE(COMMENT_TYPE_CODE) ENABLE;

alter table AWARD_COMMENT 
ADD CONSTRAINT FK_AWARD_COMMENT_AWARD_ID 
FOREIGN KEY (AWARD_ID) 
REFERENCES AWARD(AWARD_ID) ENABLE;

alter table AWARD_COST_SHARE 
ADD CONSTRAINT FK_AWARD_COST_SHARE_TYPE 
FOREIGN KEY(COST_SHARE_TYPE_CODE)
REFERENCES COST_SHARE_TYPE(COST_SHARE_TYPE_CODE) ENABLE;

alter table AWARD_COST_SHARE 
ADD CONSTRAINT FK_AWARD_COST_SHARE_AWARD_ID 
FOREIGN KEY (AWARD_ID) 
REFERENCES AWARD(AWARD_ID) ENABLE;

ALTER TABLE AWARD_EXEMPT_NUMBER 
ADD CONSTRAINT FK_AWARD_SPECIAL_REVIEW_ID 
FOREIGN KEY (AWARD_SPECIAL_REVIEW_ID) 
REFERENCES AWARD_SPECIAL_REVIEW (AWARD_SPECIAL_REVIEW_ID);

ALTER TABLE AWARD_EXEMPT_NUMBER 
ADD CONSTRAINT FK_EXEMPTION_TYPE_CODE 
FOREIGN KEY (EXEMPTION_TYPE_CODE) 
REFERENCES EXEMPTION_TYPE (EXEMPTION_TYPE_CODE);

ALTER TABLE AWARD_IDC_RATE
ADD CONSTRAINT FK_AWARD_IDC_RATE 
FOREIGN KEY (AWARD_ID) 
REFERENCES AWARD (AWARD_ID);

ALTER TABLE AWARD_PAYMENT_SCHEDULE 
ADD CONSTRAINT FK_AWARD_PAYMENT_SCHEDULE 
FOREIGN KEY (AWARD_ID) 
REFERENCES AWARD (AWARD_ID);

ALTER TABLE AWARD_REP_TERMS_RECNT 
ADD CONSTRAINT FK1_AWARD_REP_TERMS_RECNT
FOREIGN KEY (AWARD_REPORT_TERMS_ID) 
REFERENCES AWARD_REPORT_TERMS (AWARD_REPORT_TERMS_ID);

ALTER TABLE AWARD_REP_TERMS_RECNT 
ADD CONSTRAINT FK3_AWARD_REP_TERMS_RECNT
FOREIGN KEY (ROLODEX_ID) 
REFERENCES ROLODEX (ROLODEX_ID);

ALTER TABLE AWARD_REPORT_TERMS 
ADD CONSTRAINT FK2_AWARD_REPORT_TERMS 
FOREIGN KEY (CONTACT_TYPE_CODE) 
REFERENCES CONTACT_TYPE (CONTACT_TYPE_CODE);

ALTER TABLE AWARD_REPORT_TERMS 
ADD CONSTRAINT FK3_AWARD_REPORT_TERMS 
FOREIGN KEY (OSP_DISTRIBUTION_CODE) 
REFERENCES DISTRIBUTION (OSP_DISTRIBUTION_CODE);

ALTER TABLE AWARD_REPORT_TERMS 
ADD CONSTRAINT FK10_AWARD_REPORT_TERMS 
FOREIGN KEY (FREQUENCY_CODE) 
REFERENCES FREQUENCY (FREQUENCY_CODE);

ALTER TABLE AWARD_REPORT_TERMS 
ADD CONSTRAINT FK11_AWARD_REPORT_TERMS 
FOREIGN KEY (FREQUENCY_BASE_CODE) 
REFERENCES FREQUENCY_BASE (FREQUENCY_BASE_CODE);

ALTER TABLE AWARD_REPORT_TERMS 
ADD CONSTRAINT FK9_AWARD_REPORT_TERMS 
FOREIGN KEY (REPORT_CODE) 
REFERENCES REPORT (REPORT_CODE);

ALTER TABLE AWARD_REPORT_TERMS 
ADD CONSTRAINT FK8_AWARD_REPORT_TERMS 
FOREIGN KEY (REPORT_CLASS_CODE) 
REFERENCES REPORT_CLASS (REPORT_CLASS_CODE);

ALTER TABLE AWARD_REPORT_TERMS 
ADD CONSTRAINT FK_AWARD_REPORT_TERMS 
FOREIGN KEY (AWARD_ID) 
REFERENCES AWARD (AWARD_ID);

ALTER TABLE AWARD_SCIENCE_KEYWORD 
ADD CONSTRAINT FK_AWARD_SCIENCE_KEYWORD 
FOREIGN KEY (AWARD_ID) 
REFERENCES AWARD (AWARD_ID);

ALTER TABLE AWARD_SCIENCE_KEYWORD 
ADD CONSTRAINT FK_AWARD_SCIENCE_KEYWORD2 
FOREIGN KEY (SCIENCE_KEYWORD_CODE) 
REFERENCES SCIENCE_KEYWORD (SCIENCE_KEYWORD_CODE);

ALTER TABLE AWARD_SPECIAL_REVIEW 
ADD CONSTRAINT FK_AWARD_SPECIAL_REVIEW 
FOREIGN KEY (AWARD_ID) 
REFERENCES AWARD (AWARD_ID);

ALTER TABLE AWARD_SPONSOR_TERM 
ADD CONSTRAINT FK_AWARD_SPONSOR_TERM 
FOREIGN KEY (SPONSOR_TERM_ID) 
REFERENCES SPONSOR_TERM (SPONSOR_TERM_ID);

ALTER TABLE AWARD_TEMPLATE 
ADD CONSTRAINT FK_AWARD_TEMPLATE_SPONSOR 
FOREIGN KEY (PRIME_SPONSOR_CODE) 
REFERENCES SPONSOR (SPONSOR_CODE);

ALTER TABLE AWARD_TEMPLATE 
ADD CONSTRAINT FK_AWARD_TEMPLATE_STATUS_CODE 
FOREIGN KEY (STATUS_CODE) 
REFERENCES AWARD_STATUS (STATUS_CODE);

ALTER TABLE AWARD_TEMPLATE_CONTACT 
ADD CONSTRAINT FK_AWD_TEMPL_CONTACT_TYPE_CODE 
FOREIGN KEY (CONTACT_TYPE_CODE) 
REFERENCES CONTACT_TYPE (CONTACT_TYPE_CODE);

ALTER TABLE AWARD_TEMPLATE_CONTACT 
ADD CONSTRAINT FK_AWD_TEMPL_CONT_ROLODEX_ID 
FOREIGN KEY (ROLODEX_ID) 
REFERENCES ROLODEX (ROLODEX_ID);

ALTER TABLE AWARD_TEMPLATE_CONTACT 
ADD CONSTRAINT FK_AWARD_TEMPLATE_CONTACT 
FOREIGN KEY (AWARD_TEMPLATE_CODE) 
REFERENCES AWARD_TEMPLATE (AWARD_TEMPLATE_CODE);

ALTER TABLE AWARD_TEMPLATE_COMMENTS 
ADD CONSTRAINT FK_TEMPL_COMMENT_TYPE_CODE 
FOREIGN KEY (COMMENT_TYPE_CODE) 
REFERENCES COMMENT_TYPE (COMMENT_TYPE_CODE);

ALTER TABLE AWARD_TEMPLATE_COMMENTS 
ADD CONSTRAINT FK_TEMPLATE_CODE 
FOREIGN KEY (TEMPLATE_CODE) 
REFERENCES AWARD_TEMPLATE (AWARD_TEMPLATE_CODE);

ALTER TABLE AWARD_TEMPL_REP_TERMS_RECNT 
ADD CONSTRAINT FK2_AWD_TEMPL_REP_TERMS_RECNT 
FOREIGN KEY (CONTACT_TYPE_CODE) 
REFERENCES CONTACT_TYPE (CONTACT_TYPE_CODE);

ALTER TABLE AWARD_TEMPLATE_REPORT_TERMS 
ADD CONSTRAINT FK2_AWD_TEMPLATE_REPORT_TERMS 
FOREIGN KEY (OSP_DISTRIBUTION_CODE) 
REFERENCES DISTRIBUTION (OSP_DISTRIBUTION_CODE); 

ALTER TABLE AWARD_TEMPLATE_REPORT_TERMS 
ADD CONSTRAINT FK10_AWD_TEMPLATE_REPORT_TERMS 
FOREIGN KEY (FREQUENCY_CODE) 
REFERENCES FREQUENCY (FREQUENCY_CODE) ;

ALTER TABLE AWARD_TEMPLATE_REPORT_TERMS 
ADD CONSTRAINT FK11_AWD_TEMPLATE_REPORT_TERMS 
FOREIGN KEY (FREQUENCY_BASE_CODE) 
REFERENCES FREQUENCY_BASE (FREQUENCY_BASE_CODE); 

ALTER TABLE AWARD_TEMPLATE_REPORT_TERMS 
ADD CONSTRAINT FK9_AWD_TEMPLATE_REPORT_TERMS 
FOREIGN KEY (REPORT_CODE) 
REFERENCES REPORT (REPORT_CODE); 

ALTER TABLE AWARD_TEMPLATE_REPORT_TERMS 
ADD CONSTRAINT FK8_AWD_TEMPLATE_REPORT_TERMS 
FOREIGN KEY (REPORT_CLASS_CODE) 
REFERENCES REPORT_CLASS (REPORT_CLASS_CODE); 

ALTER TABLE AWARD_TEMPL_REP_TERMS_RECNT 
ADD CONSTRAINT FK1_AWD_TEMPL_REP_TERMS_RECNT 
FOREIGN KEY (ROLODEX_ID) 
REFERENCES ROLODEX (ROLODEX_ID); 

ALTER TABLE AWARD_TEMPLATE_REPORT_TERMS 
ADD CONSTRAINT FK7_AWD_TEMPLATE_REPORT_TERMS 
FOREIGN KEY (AWARD_TEMPLATE_CODE) 
REFERENCES AWARD_TEMPLATE (AWARD_TEMPLATE_CODE); 

ALTER TABLE AWARD_TEMPLATE_TERMS 
ADD CONSTRAINT FK1_AWARD_TEMPLATE_TERMS 
FOREIGN KEY (AWARD_TEMPLATE_CODE) 
REFERENCES AWARD_TEMPLATE (AWARD_TEMPLATE_CODE) ;

ALTER TABLE AWARD_TEMPLATE_TERMS 
ADD CONSTRAINT FK2_AWARD_TEMPLATE_TERMS 
FOREIGN KEY (SPONSOR_TERM_ID) 
REFERENCES SPONSOR_TERM (SPONSOR_TERM_ID) ;

ALTER TABLE AWARD_TRANSFERRING_SPONSOR 
ADD CONSTRAINT FK2_AWARD_TRANSFERRING_SPONSOR 
FOREIGN KEY (SPONSOR_CODE) 
REFERENCES SPONSOR (SPONSOR_CODE);

ALTER TABLE AWARD_TRANSFERRING_SPONSOR 
ADD CONSTRAINT FK_AWARD_TRANSFERRING_SPONSOR 
FOREIGN KEY (AWARD_ID) 
REFERENCES AWARD (AWARD_ID);

ALTER TABLE COMM_MEMBERSHIPS 
ADD CONSTRAINT FK_COMM_MEMBERSHIPS 
FOREIGN KEY (ID) 
REFERENCES COMMITTEE (ID);

ALTER TABLE COMM_MEMBERSHIPS 
ADD CONSTRAINT FK_COMM_MEMBERSHIPS_2 
FOREIGN KEY (MEMBERSHIP_TYPE_CODE) 
REFERENCES COMM_MEMBERSHIP_TYPE (MEMBERSHIP_TYPE_CODE);

ALTER TABLE COMM_MEMBER_EXPERTISE 
ADD CONSTRAINT FK_COMM_MEMBER_EXPERTISE 
FOREIGN KEY (COMM_MEMBERSHIP_ID) 
REFERENCES COMM_MEMBERSHIPS (COMM_MEMBERSHIP_ID);

ALTER TABLE COMM_MEMBER_EXPERTISE 
ADD CONSTRAINT FK_COMM_MEMBER_EXPERTISE_2 
FOREIGN KEY (RESEARCH_AREA_CODE) 
REFERENCES RESEARCH_AREAS (RESEARCH_AREA_CODE); 

ALTER TABLE COMM_MEMBER_ROLES 
ADD CONSTRAINT FK_COMM_MEMBER_ROLES 
FOREIGN KEY (COMM_MEMBERSHIPS_ID) 
REFERENCES COMM_MEMBERSHIPS (COMM_MEMBERSHIP_ID); 

ALTER TABLE COMM_MEMBER_ROLES 
ADD CONSTRAINT FK_COMM_MEMBER_ROLES_2 
FOREIGN KEY (MEMBERSHIP_ROLE_CODE) 
REFERENCES MEMBERSHIP_ROLE (MEMBERSHIP_ROLE_CODE); 

ALTER TABLE COMM_RESEARCH_AREAS 
ADD CONSTRAINT FK_COMM_RESEARCH_AREAS1
FOREIGN KEY (COMMITTEE_ID_FK) 
REFERENCES COMMITTEE (ID);

ALTER TABLE COMM_RESEARCH_AREAS 
ADD CONSTRAINT FK_COMM_RESEARCH_AREAS2
FOREIGN KEY (RESEARCH_AREA_CODE) 
REFERENCES RESEARCH_AREAS (RESEARCH_AREA_CODE);

ALTER TABLE COMMITTEE 
ADD CONSTRAINT FK_COMMITTEE_1
FOREIGN KEY (COMMITTEE_TYPE_CODE) 
REFERENCES COMMITTEE_TYPE (COMMITTEE_TYPE_CODE);

ALTER TABLE COMMITTEE 
ADD CONSTRAINT FK_COMMITTEE_2
FOREIGN KEY (HOME_UNIT_NUMBER) 
REFERENCES UNIT (UNIT_NUMBER);

ALTER TABLE COMMITTEE 
ADD CONSTRAINT FK_COMMITTEE_3
FOREIGN KEY (DEFAULT_REVIEW_TYPE_CODE)
REFERENCES PROTOCOL_REVIEW_TYPE (PROTOCOL_REVIEW_TYPE_CODE);

ALTER TABLE COMMITTEE 
ADD CONSTRAINT FK_COMMITTEE_4
FOREIGN KEY (APPLICABLE_REVIEW_TYPE_CODE) 
REFERENCES PROTOCOL_REVIEW_TYPE (PROTOCOL_REVIEW_TYPE_CODE);

ALTER TABLE COMMITTEE
ADD CONSTRAINT FK_COMMITTEE_DOCUMENT 
FOREIGN KEY (DOCUMENT_NUMBER) 
REFERENCES COMMITTEE_DOCUMENT (DOCUMENT_NUMBER);

alter table comm_schedule
  add constraint fk_committee_id
  foreign key (committee_id)
  references committee(id);
  
alter table comm_schedule
  add constraint fk_schedule_status_code
  foreign key (schedule_status_code)
  references schedule_status(schedule_status_code);  
  
ALTER TABLE PROTOCOL
ADD CONSTRAINT FK_PROTOCOL_DOCUMENT 
FOREIGN KEY (DOCUMENT_NUMBER) 
REFERENCES PROTOCOL_DOCUMENT (DOCUMENT_NUMBER);

ALTER TABLE PROTOCOL 
ADD CONSTRAINT FK_PROTOCOL_2 
FOREIGN KEY (PROTOCOL_STATUS_CODE) 
REFERENCES PROTOCOL_STATUS (PROTOCOL_STATUS_CODE);

ALTER TABLE PROTOCOL 
ADD CONSTRAINT FK_PROTOCOL 
FOREIGN KEY (PROTOCOL_TYPE_CODE) 
REFERENCES PROTOCOL_TYPE (PROTOCOL_TYPE_CODE);

ALTER TABLE PROTOCOL_ATTACHMENT_PERSONNEL
    ADD CONSTRAINT FK_PA_PERSONNEL_FILE 
    FOREIGN KEY (FILE_ID) 
    REFERENCES PROTOCOL_ATTACHMENT_FILE (PA_FILE_ID);

ALTER TABLE PROTOCOL_ATTACHMENT_PROTOCOL
    ADD CONSTRAINT FK_PA_PROTOCOL_FILE 
    FOREIGN KEY (FILE_ID) 
    REFERENCES PROTOCOL_ATTACHMENT_FILE (PA_FILE_ID);

ALTER TABLE PROTOCOL_ATTACHMENT_PROTOCOL
    ADD CONSTRAINT FK_PROTOCOL_ATTACHMENT_TYPE 
    FOREIGN KEY (TYPE_CD) 
    REFERENCES PROTOCOL_ATTACHMENT_TYPE (TYPE_CD);

ALTER TABLE PROTOCOL_ATTACHMENT_PROTOCOL
    ADD CONSTRAINT FK_PROTOCOL_ATTACH_STATUS 
    FOREIGN KEY (STATUS_CD) 
    REFERENCES PROTOCOL_ATTACHMENT_STATUS (STATUS_CD);

ALTER TABLE PROTOCOL_ATTACHMENT_TYPE_GROUP
    ADD CONSTRAINT FK_PROTOCOL_ATTACH_TG_TYPE 
    FOREIGN KEY (TYPE_CD) 
    REFERENCES PROTOCOL_ATTACHMENT_TYPE (TYPE_CD);

ALTER TABLE PROTOCOL_ATTACHMENT_TYPE_GROUP
    ADD CONSTRAINT FK_PROTOCOL_ATTACH_TG_GROUP 
    FOREIGN KEY (GROUP_CD) 
    REFERENCES PROTOCOL_ATTACHMENT_GROUP (GROUP_CD);

ALTER TABLE PROTOCOL_EXEMPT_NUMBER 
ADD CONSTRAINT FK_PROTOCOL_SPECIAL_REVIEW_ID 
FOREIGN KEY (PROTOCOL_SPECIAL_REVIEW_ID) 
REFERENCES PROTOCOL_SPECIAL_REVIEW (PROTOCOL_SPECIAL_REVIEW_ID);

ALTER TABLE PROTOCOL_EXEMPT_NUMBER 
ADD CONSTRAINT FK_PROT_EXEMPTION_TYPE_CODE 
FOREIGN KEY (EXEMPTION_TYPE_CODE) 
REFERENCES EXEMPTION_TYPE (EXEMPTION_TYPE_CODE);

ALTER TABLE PROTOCOL_FUNDING_SOURCE 
ADD CONSTRAINT FK_PROTOCOL_FUNDING_SOURCE 
FOREIGN KEY (PROTOCOL_ID) 
REFERENCES PROTOCOL (PROTOCOL_ID);

ALTER TABLE PROTOCOL_FUNDING_SOURCE 
ADD CONSTRAINT FK_PROTOCOL_FUNDING_SOURCE2 
FOREIGN KEY (FUNDING_SOURCE_TYPE_CODE) 
REFERENCES FUNDING_SOURCE_TYPE (FUNDING_SOURCE_TYPE_CODE);

ALTER TABLE PROTOCOL_LOCATION 
ADD CONSTRAINT FK_PROTOCOL_LOCATION 
FOREIGN KEY (PROTOCOL_ID) 
REFERENCES PROTOCOL (PROTOCOL_ID);

ALTER TABLE PROTOCOL_LOCATION 
ADD CONSTRAINT FK_PROTOCOL_LOCATION_2 
FOREIGN KEY (ORGANIZATION_ID) 
REFERENCES ORGANIZATION (ORGANIZATION_ID);

ALTER TABLE PROTOCOL_LOCATION 
ADD CONSTRAINT FK_PROTOCOL_LOCATION_3 
FOREIGN KEY (PROTOCOL_ORG_TYPE_CODE) 
REFERENCES PROTOCOL_ORG_TYPE (PROTOCOL_ORG_TYPE_CODE);

ALTER TABLE PROTOCOL_INVESTIGATORS 
ADD CONSTRAINT FK_PROTOCOL_INVESTIGATORS 
FOREIGN KEY (PROTOCOL_ID) 
REFERENCES PROTOCOL (PROTOCOL_ID);

ALTER TABLE PROTOCOL_INVESTIGATORS 
ADD CONSTRAINT FK_PROTOCOL_INVESTIGATORS2 
FOREIGN KEY (AFFILIATION_TYPE_CODE) 
REFERENCES AFFILIATION_TYPE (AFFILIATION_TYPE_CODE);

ALTER TABLE PROTOCOL_KEY_PERSONS 
ADD CONSTRAINT FK_PROTOCOL_KEY_PERSONS 
FOREIGN KEY (PROTOCOL_ID) 
REFERENCES PROTOCOL (PROTOCOL_ID);

ALTER TABLE PROTOCOL_KEY_PERSONS 
ADD CONSTRAINT FK_PROTOCOL_KEY_PERSONS2 
FOREIGN KEY (AFFILIATION_TYPE_CODE) 
REFERENCES AFFILIATION_TYPE (AFFILIATION_TYPE_CODE);

ALTER TABLE PROTOCOL_PERSONS 
ADD CONSTRAINT FK_PROTOCOL_PERSONS_PROTOCOL 
FOREIGN KEY (PROTOCOL_ID) 
REFERENCES PROTOCOL (PROTOCOL_ID);

ALTER TABLE PROTOCOL_PERSONS 
ADD CONSTRAINT FK_PROTOCOL_PERS_AFFILIATION 
FOREIGN KEY (AFFILIATION_TYPE_CODE) 
REFERENCES AFFILIATION_TYPE (AFFILIATION_TYPE_CODE);

ALTER TABLE PROTOCOL_PERSONS 
ADD CONSTRAINT FK_PROTOCOL_PERSONS_ROLE 
FOREIGN KEY (PROTOCOL_PERSON_ROLE_ID) 
REFERENCES PROTOCOL_PERSON_ROLES (PROTOCOL_PERSON_ROLE_ID);

ALTER TABLE PROTOCOL_PERSON_ROLE_MAPPING 
ADD CONSTRAINT FK_PERSON_SOURCE_ROLE 
FOREIGN KEY (SOURCE_ROLE_ID) 
REFERENCES PROTOCOL_PERSON_ROLES (PROTOCOL_PERSON_ROLE_ID); 


ALTER TABLE PROTOCOL_PERSON_ROLE_MAPPING 
ADD CONSTRAINT FK_PERSON_TARGET_ROLE 
FOREIGN KEY (TARGET_ROLE_ID) 
REFERENCES PROTOCOL_PERSON_ROLES (PROTOCOL_PERSON_ROLE_ID); 

alter table protocol_references
  add constraint fk_protocol_ref_type_code
  foreign key (protocol_reference_type_code)
  references protocol_reference_type(protocol_reference_type_code);

alter table protocol_references
  add constraint fk_protocol_id
  foreign key (protocol_id)
  references protocol(protocol_id);
  
ALTER TABLE PROTOCOL_RESEARCH_AREAS 
ADD CONSTRAINT FK_PROTOCOL_RESEARCH_AREAS 
FOREIGN KEY (PROTOCOL_ID) 
REFERENCES PROTOCOL (PROTOCOL_ID);

ALTER TABLE PROTOCOL_RESEARCH_AREAS 
ADD CONSTRAINT FK_PROTOCOL_RESEARCH_AREAS2
FOREIGN KEY (RESEARCH_AREA_CODE) 
REFERENCES RESEARCH_AREAS (RESEARCH_AREA_CODE);

ALTER TABLE PROTOCOL_RISK_LEVELS 
ADD CONSTRAINT FK_PROTOCOL_RISK_LEVELS 
FOREIGN KEY (PROTOCOL_ID) 
REFERENCES PROTOCOL (PROTOCOL_ID);

ALTER TABLE PROTOCOL_RISK_LEVELS 
ADD CONSTRAINT FK_PROTOCOL_RISK_LEVELS2 
FOREIGN KEY (RISK_LEVEL_CODE) 
REFERENCES RISK_LEVEL (RISK_LEVEL_CODE);

ALTER TABLE PROTOCOL_SPECIAL_REVIEW 
ADD CONSTRAINT FK_PROTOCOL_SPECIAL_REVIEW 
FOREIGN KEY (PROTOCOL_ID) 
REFERENCES PROTOCOL (PROTOCOL_ID);

ALTER TABLE PROTOCOL_UNITS 
ADD CONSTRAINT FK_PROTOCOL_UNITS 
FOREIGN KEY (PROTOCOL_INVESTIGATORS_ID) 
REFERENCES PROTOCOL_INVESTIGATORS (PROTOCOL_INVESTIGATORS_ID) 
ON DELETE CASCADE;

ALTER TABLE PROTOCOL_UNITS 
ADD CONSTRAINT FK_PROTOCOL_UNITS_2 
FOREIGN KEY (UNIT_NUMBER) 
REFERENCES UNIT (UNIT_NUMBER);

ALTER TABLE PROTOCOL_VULNERABLE_SUB 
ADD CONSTRAINT FK_PROTOCOL_VULNERABLE_SUB 
FOREIGN KEY (PROTOCOL_ID) 
REFERENCES PROTOCOL (PROTOCOL_ID);

ALTER TABLE PROTOCOL_VULNERABLE_SUB 
ADD CONSTRAINT FK_PROTOCOL_VULNERABLE_SUB2 
FOREIGN KEY (VULNERABLE_SUBJECT_TYPE_CODE) 
REFERENCES VULNERABLE_SUBJECT_TYPE (VULNERABLE_SUBJECT_TYPE_CODE);

ALTER TABLE SPONSOR_TERM 
ADD CONSTRAINT FK1_SPONSOR_TERM 
FOREIGN KEY (SPONSOR_TERM_TYPE_CODE) 
REFERENCES SPONSOR_TERM_TYPE (SPONSOR_TERM_TYPE_CODE);

ALTER TABLE VALID_CLASS_REPORT_FREQ 
ADD CONSTRAINT FK_VALID_CLASS_REPORT_FREQ 
FOREIGN KEY (FREQUENCY_CODE) 
REFERENCES FREQUENCY (FREQUENCY_CODE);

ALTER TABLE VALID_CLASS_REPORT_FREQ 
ADD CONSTRAINT FK2_VALID_CLASS_REPORT_FREQ 
FOREIGN KEY (REPORT_CODE) 
REFERENCES REPORT (REPORT_CODE);

ALTER TABLE VALID_CLASS_REPORT_FREQ 
ADD CONSTRAINT FK3_VALID_CLASS_REPORT_FREQ 
FOREIGN KEY (REPORT_CLASS_CODE) 
REFERENCES REPORT_CLASS (REPORT_CLASS_CODE);

ALTER TABLE VALID_FREQUENCY_BASE 
ADD CONSTRAINT FK2_VALID_FREQUENCY_BASE 
FOREIGN KEY (FREQUENCY_CODE) 
REFERENCES FREQUENCY (FREQUENCY_CODE);

ALTER TABLE VALID_FREQUENCY_BASE 
ADD CONSTRAINT FK_VALID_FREQUENCY_BASE 
FOREIGN KEY (FREQUENCY_BASE_CODE) 
REFERENCES FREQUENCY_BASE (FREQUENCY_BASE_CODE);

