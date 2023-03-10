SET SERVEROUTPUT ON;
SET VERIFY OFF;

CREATE OR REPLACE PACKAGE PKGX AS

    PROCEDURE IPHONE(P_ID IN NUMBER, OS1 IN VARCHAR2, MODEL1 IN VARCHAR2, PROCESSOR1 IN VARCHAR2, RAM1 IN NUMBER, ROM1 NUMBER, CAMERA1 IN NUMBER, PRICE1 IN NUMBER, BRAND1 IN VARCHAR2, DISPLAY1 IN VARCHAR2, BATTERY1 IN VARCHAR2,COLOR1 IN VARCHAR2, SIM1 IN VARCHAR2);

    
END PKGX;
/

CREATE OR REPLACE PACKAGE BODY PKGX AS

PROCEDURE IPHONE(P_ID IN NUMBER, OS1 IN VARCHAR2, MODEL1 IN VARCHAR2, PROCESSOR1 IN VARCHAR2, RAM1 IN NUMBER, ROM1 NUMBER, CAMERA1 IN NUMBER, PRICE1 IN NUMBER, BRAND1 IN VARCHAR2, DISPLAY1 IN VARCHAR2, BATTERY1 IN VARCHAR2,COLOR1 IN VARCHAR2, SIM1 IN VARCHAR2)
IS
BEGIN
    IF OS1='IOS' THEN
        INSERT INTO IPHONE_CORE_MOBILE1 VALUES (P_ID, OS1, MODEL1, PROCESSOR1, RAM1, ROM1, CAMERA1, PRICE1, BRAND1);

       -- INSERT INTO iphone_fency_mobile2@site_friend VALUES(P_ID, DISPLAY1, BATTERY1, COLOR1, SIM1);
    ELSE 
        --INSERT INTO android_core_mobile3@site_friend VALUES (P_ID, OS1, MODEL1, PROCESSOR1, RAM1, ROM1, CAMERA1, PRICE1, BRAND1);

        INSERT INTO Android_Fency_Mobile4 VALUES(P_ID, DISPLAY1, BATTERY1, COLOR1, SIM1);

    END IF;


END IPHONE;


END PKGX;
/

ACCEPT A number PROMPT "ENTER PHONE ID = "
ACCEPT B CHAR PROMPT "ENTER OS = "
ACCEPT C CHAR PROMPT "ENTER  MODEL = "
ACCEPT D CHAR PROMPT "ENTER  PROCESSOR = "
ACCEPT E NUMBER PROMPT "ENTER  RAM = "
ACCEPT F NUMBER PROMPT "ENTER  ROM = "
ACCEPT G NUMBER PROMPT "ENTER  CAMERA = "
ACCEPT H NUMBER PROMPT "ENTER  PRICE = "
ACCEPT I CHAR PROMPT "ENTER  BRAND = "

ACCEPT J CHAR PROMPT "ENTER  DISPLAY SIZE = "
ACCEPT K CHAR PROMPT "ENTER  BATTERY = "
ACCEPT L CHAR PROMPT "ENTER  COLOR = "
ACCEPT M CHAR PROMPT "ENTER  SIM CARD NUMBER = "


DECLARE


  PHONE_ID2 NUMBER := &A;
  OS2 VARCHAR2(20) :='&B';
  MODEL2 VARCHAR2(20) :='&C';
  PROCESSOR2 VARCHAR2(20) :='&D';
  RAM2 NUMBER := &E; 
  ROM2 NUMBER := &F;
  CAMERA2 NUMBER := &G;
  PRICE2  NUMBER := &H;
  BRAND2 VARCHAR2(20) :='&I';

  DISPLAY_SIZE2 VARCHAR2(20) :='&J';
  BATTERY2 VARCHAR2(20) :='&K';
  COLOR2 VARCHAR2(20):='&L';
  SIM2 VARCHAR2(20) :='&M';

BEGIN
  PKGX.IPHONE(PHONE_ID2,OS2,MODEL2,PROCESSOR2,RAM2, ROM2, CAMERA2, PRICE2, BRAND2, DISPLAY_SIZE2,BATTERY2,COLOR2, SIM2);

END;
/

commit;
