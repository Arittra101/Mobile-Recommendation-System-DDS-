SET SERVEROUTPUT ON;
SET VERIFY OFF;

ACCEPT X NUMBER PROMPT "CUSTOMER ID = "
ACCEPT A CHAR PROMPT "CUSTOMER NAME = "
ACCEPT B CHAR PROMPT "CUSTOMER CITY = "

DECLARE 
  NAME1 VARCHAR2(20) := '&A';
  CITY VARCHAR2(10) := '&B';
  ID NUMBER := &X;
  T NUMBER :=0;
BEGIN
  IF CITY = 'DHAKA' THEN
     INSERT INTO Customer1 VALUES(ID,NAME1,CITY);
  ELSE 
     INSERT INTO Customer2@site_friend VALUES(ID,NAME1,CITY);
  END IF;

END;
/

commit;