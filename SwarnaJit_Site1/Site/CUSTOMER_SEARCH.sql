SET SERVEROUTPUT ON;
SET VERIFY OFF;

ACCEPT A CHAR PROMPT "CUSTOMER NAME = ";
ACCEPT B CHAR PROMPT "CUSTOMER CITY = ";

DECLARE 
  NAME1 VARCHAR2(20) := '&A';
  CITY VARCHAR2(10) := '&B';
  X NUMBER :=0;
BEGIN
  IF CITY = 'DHAKA' THEN
     FOR R IN (SELECT Customer1.CUSTOMER_ID AS CID, Customer1.C_NAME AS NAME2 FROM Customer1) LOOP
         IF R.NAME2 = NAME1 THEN 
            DBMS_OUTPUT.PUT_LINE('CUSTOMER FOUND IN DHAKA');
         ELSE 
            DBMS_OUTPUT.PUT_LINE('CUSTOMER NOT FOUND IN DHAKA');
         END IF;
     END LOOP;
  ELSE 
  
    FOR P IN (SELECT CUSTOMER_ID AS CID, C_NAME AS NAME3 FROM Customer2@site_friend) LOOP
         IF P.NAME3 = NAME1 THEN 
            DBMS_OUTPUT.PUT_LINE('CUSTOMER FOUND IN CHATTAGONG');
         ELSE 
            DBMS_OUTPUT.PUT_LINE('CUSTOMER NOT FOUND IN CHATTAGONG');
         END IF;
    END LOOP;
   END IF;
   
END;
/