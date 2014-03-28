INSERT INTO KRIM_PERM_T (PERM_ID,PERM_TMPL_ID,NMSPC_CD,NM,DESC_TXT,ACTV_IND,OBJ_ID,VER_NBR)
    VALUES (KRIM_PERM_ID_BS_S.NEXTVAL,(SELECT PERM_TMPL_ID FROM KRIM_PERM_TMPL_T WHERE NMSPC_CD = 'KR-SYS' AND NM = 'Initiate Document'),'KC-SYS','Create PersonMassChangeDocument','Authorizes the initiation of Person Mass Change Documents','Y',SYS_GUID(),1)
/
INSERT INTO KRIM_PERM_ATTR_DATA_T (ATTR_DATA_ID,PERM_ID,KIM_TYP_ID,KIM_ATTR_DEFN_ID,ATTR_VAL,OBJ_ID,VER_NBR)
    VALUES (KRIM_ATTR_DATA_ID_BS_S.NEXTVAL,KRIM_PERM_ID_BS_S.CURRVAL,(SELECT KIM_TYP_ID FROM KRIM_TYP_T WHERE NMSPC_CD = 'KR-SYS' AND NM = 'Document Type (Permission)'),(SELECT KIM_ATTR_DEFN_ID FROM KRIM_ATTR_DEFN_T WHERE NMSPC_CD = 'KR-WKFLW' AND NM = 'documentTypeName'),'PersonMassChangeDocument',SYS_GUID(),1)
/

INSERT INTO KRIM_ROLE_PERM_T (ROLE_PERM_ID,ROLE_ID,PERM_ID,ACTV_IND,OBJ_ID,VER_NBR)
    VALUES (KRIM_ROLE_PERM_ID_BS_S.NEXTVAL,(SELECT ROLE_ID FROM KRIM_ROLE_T WHERE NMSPC_CD = 'KC-SYS' AND ROLE_NM = 'Application Administrator'),(SELECT PERM_ID FROM KRIM_PERM_T WHERE NMSPC_CD = 'KC-SYS' AND NM = 'Create PersonMassChangeDocument'),'Y',SYS_GUID(),1)
/
INSERT INTO KRIM_ROLE_PERM_T (ROLE_PERM_ID,ROLE_ID,PERM_ID,ACTV_IND,OBJ_ID,VER_NBR)
    VALUES (KRIM_ROLE_PERM_ID_BS_S.NEXTVAL,(SELECT ROLE_ID FROM KRIM_ROLE_T WHERE NMSPC_CD = 'KC-SYS' AND ROLE_NM = 'Manager'),(SELECT PERM_ID FROM KRIM_PERM_T WHERE NMSPC_CD = 'KC-SYS' AND NM = 'Create PersonMassChangeDocument'),'Y',SYS_GUID(),1)
/