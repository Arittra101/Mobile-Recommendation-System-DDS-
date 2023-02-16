set verify off;
set serveroutput on;
accept X char prompt "Enter the Operating System = ";




create or replace procedure all_android
is 
begin
  dbms_output.put_line('PhoneId' ||' ' || 'Ram' ||  'Rom' || ' ' || 'PROCESSOR'  || ' ' || 'display_size' || ' ' || 'battery');
  for R in (select * from android_core_mobile3) loop

      for N in (select * from android_fency_mobile4@site_friend) loop
       if N.phone_id = R.phone_id then
          dbms_output.put_line(R.phone_id ||' ' || R.RAM || ' '||  R.ROM || ' ' || R.PROCESSOR  || ' ' || N.display_size || ' ' || N.battery);
      end if;

    end loop;   
  

  end loop;
end all_android;
/

create or replace procedure  all_iphone
is 
begin
  dbms_output.put_line('PhoneId' ||' ' || 'Ram' ||  'Rom' || ' ' || 'PROCESSOR'  || ' ' || 'display_size' || ' ' || 'battery');
  for R in (select * from iphone_core_mobile1@site_friend) loop

      for N in (select * from iphone_fency_mobile2) loop
       if N.phone_id = R.phone_id then
          dbms_output.put_line(R.phone_id ||' ' || R.RAM || ' '||  R.ROM || ' ' || R.PROCESSOR  || ' ' || N.display_size || ' ' || N.battery ||' ' ||R.price);
      end if;

    end loop;   

  end loop;
end all_iphone;
/


declare

  os_input  varchar2(30);

  an_check number; 



begin
  
  -- check whether is it android or iphone
 os_input:='&x';
 an_check:=instr(os_input,'android');

 if an_check = 1 then
      all_android;
  else
     all_iphone;
 end if;  
end;
/