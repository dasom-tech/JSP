CREATE TABLE MEMBER (
    IDX NUMBER(5) PRIMARY KEY,
    ID VARCHAR2(10),
    PWD VARCHAR2(10),
    NAME VARCHAR2(30),
    AGE NUMBER(3),
    ADDRESS VARCHAR2(150),
    REG DATE
);

CREATE SEQUENCE MEMBER_SEQ;
INSERT INTO MEMBER
        (IDX, ID, PWD, NAME, AGE, ADDRESS, REG)
VALUES (MEMBER_SEQ.NEXTVAL, 'admin', 'admin', '������', null, null, SYSDATE);

INSERT INTO MEMBER
        (IDX, ID, PWD, NAME, AGE, ADDRESS, REG)
VALUES (MEMBER_SEQ.NEXTVAL, 'test1', 'test1', 'ȫ�浿', 27, '����', SYSDATE);
COMMIT;

SELECT * FROM MEMBER;
-----------------------------------------------------
SELECT IDX, ID, PWD, NAME, AGE, NVL(ADDRESS, '�ּҾ���') AS ADDRESS, REG, TO_CHAR(REG, 'YYYY/MM/DD') REG2 
FROM MEMBER
ORDER BY IDX;
----------------------------------------------------------