CREATE TABLE GUEST (
    SABUN NUMBER(5) PRIMARY KEY,
    NAME VARCHAR2(30),
    NALJA DATE,
    PAY NUMBER(20)
);

INSERT INTO GUEST VALUES (1111, 'USER1', SYSDATE-2, 1000);
INSERT INTO GUEST VALUES (2222, 'USER2', SYSDATE-1, 2000);
COMMIT;
-----------------------------------------
SELECT ROWNUM AS RN, SABUN, NAME, NALJA, PAY
    FROM GUEST
    ORDER BY SABUN
;
--------------------------------------
SELECT COUNT(*) AS CNT FROM GUEST;
-----------------------------------
SELECT NVL(MAX(SABUN),0) + 1111 AS SABUN FROM GUEST;