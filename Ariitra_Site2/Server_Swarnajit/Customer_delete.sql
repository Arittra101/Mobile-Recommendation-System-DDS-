SET SERVEROUTPUT ON;
SET VERIFY OFF;

ACCEPT X NUMBER PROMPT "CUSTOMER ID = "
--ACCEPT A CHAR PROMPT "CUSTOMER NAME = "
ACCEPT B CHAR PROMPT "CUSTOMER CITY = "

DECLARE 
--  NAME1 VARCHAR2(20) := '&A';
  CITY VARCHAR2(10) := '&B';
  ID NUMBER := &X;
  T NUMBER :=0;
BEGIN
  IF CITY = 'DHAKA' THEN
     DELETE from Customer1@site_friend where CUSTOMER_ID = ID;
  ELSE 
     DELETE from Customer2 where CUSTOMER_ID = ID;
  END IF;

END;
/

commit;