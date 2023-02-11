set verify off;
set serveroutput on;
accept X char prompt "Enter the Operating System = ";
accept Y number prompt "Enter Price of your phone = ";
accept Z char prompt "Enter Processor of your phone = ";
accept K number prompt "Enter of your phon Ram = ";
accept A number prompt "Enter of your phone Rom = ";
accept B number prompt "Enter of your phone Camera = ";



create or replace procedure  android(price in number,money_flt in number,ram in number,ram_flt in number,processor in varchar2,rom in number,rom_flt in number,camera in number)
is 
begin

  for R in (select * from android_core_mobile3) loop

      if  R.price>=price-2000 and R.price <= money_flt OR R.RAM>=ram and R.RAM<=ram_flt OR R.RAM>=rom and R.RAM<=ram_flt then 
          

      for N in (select * from android_fency_mobile4@site_friend) loop
       if N.phone_id = R.phone_id then
          dbms_output.put_line(R.Price || ' '||N.PHONE_ID || ' ' || N.display_size || ' ' || N.battery);
      end if;

    end loop;   
    end if;

  end loop;
end android;
/


declare

  os_input  varchar2(30);

  an_check number; 
  iph_check number;
  price number;
  ram number;
  rom number;
  camera number;
  processor varchar2(30);
  
  money_flt number;
  ram_flt number;
  rom_flt number;
 
begin
  
  -- check whether is it android or iphone
 os_input:='&x';
 an_check:=instr(os_input,'android');
 iph_check:=instr(os_input,'android');

  -- if android work from here
 if an_check = 1 then
     price:=&Y;
     ram:=&k;
     processor:='&Z';
     rom:=&A;
     camera:=&B;
     

      select AVG(PRICE) into money_flt from android_core_mobile3;
      select AVG(TO_NUMBER(RAM)) into ram_flt from android_core_mobile3;
      select AVG(TO_NUMBER(ROM)) into rom_flt from android_core_mobile3;
    


      dbms_output.put_line(money_flt || ' ' || ram_flt||' '||rom_flt);
    

     android(price,money_flt,ram,ram_flt,processor,rom,rom_flt,camera);
     --dbms_output.put_line('wow its android');
 -- else iphone

  
 end if;
  -- if android work from here

    
end;
/