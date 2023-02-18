set verify off;
set serveroutput on;
DECLARE
  x NUMBER := 10;
  y NUMBER := 20;
BEGIN
  IF x > y THEN
    DBMS_OUTPUT.PUT_LINE('x is greater than y');
  ELSE
    IF x < y THEN
      DBMS_OUTPUT.PUT_LINE('x is less than y');
    ELSE
      DBMS_OUTPUT.PUT_LINE('x is equal to y');
    END IF;
  END IF;
END;
/