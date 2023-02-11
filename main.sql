set verify off;
set serveroutput on;



    

declare 
    d number;
 create or replace function nam_prin(p_num in  number) return number is
 begin
       -- d:=&Y;
        dbms_output.put_line('hello');
        return d;
 end;
/
accept X number prompt "Enter the Amount of Money = ";
accept Y number prompt "enter me = ";
declare
  a number;
  c number;
 -- d  number:
begin
   
    a:=&X;
    --c:=&Y;


   dbms_output.put_line('d');
   dbms_output.put_line(nam_prin(a));

    dbms_output.put_line('from another');
    @@ "C:\Users\avish\Desktop\DDS project\main2.sql";
end;
/

