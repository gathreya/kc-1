update PROPOSAL_PERSONS set CONTACT_ROLE_CODE = 'MPI' where CONTACT_ROLE_CODE = 'COI' and MULTIPLE_PI = 'Y'
/

alter table PROPOSAL_PERSONS drop column MULTIPLE_PI
/
